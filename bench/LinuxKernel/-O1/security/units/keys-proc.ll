; ModuleID = 'security/keys/proc.c'
source_filename = "security/keys/proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init..kmod_proc__278_58_key_proc_init\22, \22a\22\09\09"
module asm "__initcall__kmod_proc__278_58_key_proc_init6:\09\09\09"
module asm ".long\09__initstub__kmod_proc__278_58_key_proc_init6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.rb_root = type { ptr }
%struct.user_namespace = type opaque
%struct.key = type { %struct.refcount_struct, i32, %union.anon.14, %struct.rw_semaphore, ptr, ptr, %union.anon.15, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.16, %union.anon.20, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.14 = type { %struct.rb_node }
%struct.rb_node = type { i64, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%union.anon.15 = type { i64 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.16 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.17, ptr, ptr, ptr }
%union.anon.17 = type { i64 }
%union.anon.20 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }
%struct.keyring_search_context = type { %struct.keyring_index_key, ptr, %struct.key_match_data, i32, ptr, i32, i8, ptr, i64 }
%struct.key_match_data = type { ptr, ptr, ptr, i32 }
%struct.seq_file = type { ptr, i64, i64, i64, i64, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.file = type { %union.anon.22, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.22 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.23, %struct.qspinlock }
%union.anon.23 = type { %struct.atomic_t }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.path = type { ptr, ptr }
%struct.anon.19 = type { i64, i64, ptr, ptr, ptr }
%struct.key_type = type { ptr, i64, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.lock_class_key }
%struct.lock_class_key = type {}
%struct.key_user = type { %struct.rb_node, %struct.mutex, %struct.spinlock, %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.kuid_t, i32, i32 }

@__UNIQUE_ID___addressable___initstub__kmod_proc__278_58_key_proc_init6279 = internal global ptr @__initstub__kmod_proc__278_58_key_proc_init6, section ".discard.addressable", align 8, !dbg !0
@.str = private unnamed_addr constant [5 x i8] c"keys\00", align 1, !dbg !3662
@proc_keys_ops = internal constant %struct.seq_operations { ptr @proc_keys_start, ptr @proc_keys_stop, ptr @proc_keys_next, ptr @proc_keys_show }, align 8, !dbg !3682
@.str.1 = private unnamed_addr constant [26 x i8] c"Cannot create /proc/keys\0A\00", align 1, !dbg !3667
@.str.2 = private unnamed_addr constant [10 x i8] c"key-users\00", align 1, !dbg !3672
@proc_key_users_ops = internal constant %struct.seq_operations { ptr @proc_key_users_start, ptr @proc_key_users_stop, ptr @proc_key_users_next, ptr @proc_key_users_show }, align 8, !dbg !3703
@.str.3 = private unnamed_addr constant [31 x i8] c"Cannot create /proc/key-users\0A\00", align 1, !dbg !3677
@key_serial_lock = external dso_local global %struct.spinlock, align 4
@key_serial_tree = external dso_local global %struct.rb_root, align 8
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"perm\00", align 1, !dbg !3684
@.str.5 = private unnamed_addr constant [5 x i8] c"expd\00", align 1, !dbg !3686
@.str.6 = private unnamed_addr constant [6 x i8] c"%llus\00", align 1, !dbg !3688
@.str.7 = private unnamed_addr constant [6 x i8] c"%llum\00", align 1, !dbg !3690
@.str.8 = private unnamed_addr constant [6 x i8] c"%lluh\00", align 1, !dbg !3692
@.str.9 = private unnamed_addr constant [6 x i8] c"%llud\00", align 1, !dbg !3694
@.str.10 = private unnamed_addr constant [6 x i8] c"%lluw\00", align 1, !dbg !3696
@.str.11 = private unnamed_addr constant [49 x i8] c"%08x %c%c%c%c%c%c%c %5d %4s %08x %5d %5d %-9.9s \00", align 1, !dbg !3698
@overflowuid = external dso_local global i32, align 4
@overflowgid = external dso_local global i32, align 4
@key_user_lock = external dso_local global %struct.spinlock, align 4
@key_user_tree = external dso_local global %struct.rb_root, align 8
@key_quota_root_maxkeys = external dso_local global i32, align 4
@key_quota_maxkeys = external dso_local global i32, align 4
@key_quota_root_maxbytes = external dso_local global i32, align 4
@key_quota_maxbytes = external dso_local global i32, align 4
@.str.12 = private unnamed_addr constant [28 x i8] c"%5u: %5d %d/%d %d/%d %d/%d\0A\00", align 1, !dbg !3705
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable___initstub__kmod_proc__278_58_key_proc_init6279], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_proc__278_58_key_proc_init6() #0 section ".init.text" align 16 !dbg !3719 {
entry:
  %call = call i32 @key_proc_init() #10, !dbg !3722
  ret i32 %call, !dbg !3722
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @key_proc_init() #0 section ".init.text" align 16 !dbg !3723 {
entry:
  %p = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #11, !dbg !3729
  call void @llvm.dbg.declare(metadata ptr %p, metadata !3725, metadata !DIExpression()), !dbg !3730
  %call = call ptr @proc_create_seq_private(ptr noundef @.str, i16 noundef zeroext 0, ptr noundef null, ptr noundef @proc_keys_ops, i32 noundef 0, ptr noundef null) #12, !dbg !3731
  store ptr %call, ptr %p, align 8, !dbg !3732
  %0 = load ptr, ptr %p, align 8, !dbg !3733
  %tobool = icmp ne ptr %0, null, !dbg !3733
  br i1 %tobool, label %if.end, label %if.then, !dbg !3735

if.then:                                          ; preds = %entry
  call void (ptr, ...) @panic(ptr noundef @.str.1) #13, !dbg !3736
  unreachable, !dbg !3736

if.end:                                           ; preds = %entry
  %call1 = call ptr @proc_create_seq_private(ptr noundef @.str.2, i16 noundef zeroext 0, ptr noundef null, ptr noundef @proc_key_users_ops, i32 noundef 0, ptr noundef null) #12, !dbg !3737
  store ptr %call1, ptr %p, align 8, !dbg !3738
  %1 = load ptr, ptr %p, align 8, !dbg !3739
  %tobool2 = icmp ne ptr %1, null, !dbg !3739
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !3741

if.then3:                                         ; preds = %if.end
  call void (ptr, ...) @panic(ptr noundef @.str.3) #13, !dbg !3742
  unreachable, !dbg !3742

if.end4:                                          ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #11, !dbg !3743
  ret i32 0, !dbg !3744
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3745 dso_local ptr @proc_create_seq_private(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: cold noredzone noreturn null_pointer_is_valid
declare !dbg !3748 dso_local void @panic(ptr noundef, ...) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @proc_keys_start(ptr noundef %p, ptr noundef %_pos) #5 align 16 !dbg !3752 {
entry:
  %retval = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %_pos.addr = alloca ptr, align 8
  %pos = alloca i32, align 4
  %key = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3754, metadata !DIExpression()), !dbg !3758
  store ptr %_pos, ptr %_pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_pos.addr, metadata !3755, metadata !DIExpression()), !dbg !3759
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos) #11, !dbg !3760
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !3756, metadata !DIExpression()), !dbg !3761
  %0 = load ptr, ptr %_pos.addr, align 8, !dbg !3762
  %1 = load i64, ptr %0, align 8, !dbg !3763
  %conv = trunc i64 %1 to i32, !dbg !3763
  store i32 %conv, ptr %pos, align 4, !dbg !3761
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #11, !dbg !3764
  call void @llvm.dbg.declare(metadata ptr %key, metadata !3757, metadata !DIExpression()), !dbg !3765
  call void @spin_lock(ptr noundef @key_serial_lock) #12, !dbg !3766
  %2 = load ptr, ptr %_pos.addr, align 8, !dbg !3767
  %3 = load i64, ptr %2, align 8, !dbg !3769
  %cmp = icmp sgt i64 %3, 2147483647, !dbg !3770
  br i1 %cmp, label %if.then, label %if.end, !dbg !3771

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !3772
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3772

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %p.addr, align 8, !dbg !3773
  %5 = load i32, ptr %pos, align 4, !dbg !3774
  %call = call ptr @find_ge_key(ptr noundef %4, i32 noundef %5) #12, !dbg !3775
  store ptr %call, ptr %key, align 8, !dbg !3776
  %6 = load ptr, ptr %key, align 8, !dbg !3777
  %tobool = icmp ne ptr %6, null, !dbg !3777
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !3779

if.then2:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !3780
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3780

if.end3:                                          ; preds = %if.end
  %7 = load ptr, ptr %key, align 8, !dbg !3781
  %serial = getelementptr inbounds %struct.key, ptr %7, i32 0, i32 1, !dbg !3782
  %8 = load i32, ptr %serial, align 4, !dbg !3782
  %conv4 = sext i32 %8 to i64, !dbg !3781
  %9 = load ptr, ptr %_pos.addr, align 8, !dbg !3783
  store i64 %conv4, ptr %9, align 8, !dbg !3784
  %10 = load ptr, ptr %key, align 8, !dbg !3785
  %11 = getelementptr inbounds %struct.key, ptr %10, i32 0, i32 2, !dbg !3786
  store ptr %11, ptr %retval, align 8, !dbg !3787
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3787

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #11, !dbg !3788
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos) #11, !dbg !3788
  %12 = load ptr, ptr %retval, align 8, !dbg !3788
  ret ptr %12, !dbg !3788
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @proc_keys_stop(ptr noundef %p, ptr noundef %v) #5 align 16 !dbg !3789 {
entry:
  %p.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3791, metadata !DIExpression()), !dbg !3793
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3792, metadata !DIExpression()), !dbg !3794
  call void @spin_unlock(ptr noundef @key_serial_lock) #12, !dbg !3795
  ret void, !dbg !3796
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @proc_keys_next(ptr noundef %p, ptr noundef %v, ptr noundef %_pos) #5 align 16 !dbg !3797 {
entry:
  %p.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %_pos.addr = alloca ptr, align 8
  %n = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3799, metadata !DIExpression()), !dbg !3803
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3800, metadata !DIExpression()), !dbg !3804
  store ptr %_pos, ptr %_pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_pos.addr, metadata !3801, metadata !DIExpression()), !dbg !3805
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #11, !dbg !3806
  call void @llvm.dbg.declare(metadata ptr %n, metadata !3802, metadata !DIExpression()), !dbg !3807
  %0 = load ptr, ptr %p.addr, align 8, !dbg !3808
  %1 = load ptr, ptr %v.addr, align 8, !dbg !3809
  %call = call ptr @key_serial_next(ptr noundef %0, ptr noundef %1) #12, !dbg !3810
  store ptr %call, ptr %n, align 8, !dbg !3811
  %2 = load ptr, ptr %n, align 8, !dbg !3812
  %tobool = icmp ne ptr %2, null, !dbg !3812
  br i1 %tobool, label %if.then, label %if.else, !dbg !3814

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %n, align 8, !dbg !3815
  %call1 = call i32 @key_node_serial(ptr noundef %3) #12, !dbg !3816
  %conv = sext i32 %call1 to i64, !dbg !3816
  %4 = load ptr, ptr %_pos.addr, align 8, !dbg !3817
  store i64 %conv, ptr %4, align 8, !dbg !3818
  br label %if.end, !dbg !3819

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %_pos.addr, align 8, !dbg !3820
  %6 = load i64, ptr %5, align 8, !dbg !3821
  %inc = add i64 %6, 1, !dbg !3821
  store i64 %inc, ptr %5, align 8, !dbg !3821
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load ptr, ptr %n, align 8, !dbg !3822
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #11, !dbg !3823
  ret ptr %7, !dbg !3824
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @proc_keys_show(ptr noundef %m, ptr noundef %v) #5 align 16 !dbg !3825 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %_p = alloca ptr, align 8
  %key = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %flags = alloca i64, align 8
  %key_ref = alloca ptr, align 8
  %skey_ref = alloca ptr, align 8
  %now = alloca i64, align 8
  %expiry = alloca i64, align 8
  %xbuf = alloca [16 x i8], align 16
  %state = alloca i16, align 2
  %timo = alloca i64, align 8
  %rc = alloca i32, align 4
  %ctx = alloca %struct.keyring_search_context, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp14 = alloca i64, align 8
  %tmp57 = alloca i64, align 8
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !3827, metadata !DIExpression()), !dbg !3857
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !3828, metadata !DIExpression()), !dbg !3858
  call void @llvm.lifetime.start.p0(i64 8, ptr %_p) #11, !dbg !3859
  call void @llvm.dbg.declare(metadata ptr %_p, metadata !3829, metadata !DIExpression()), !dbg !3860
  %0 = load ptr, ptr %v.addr, align 8, !dbg !3861
  store ptr %0, ptr %_p, align 8, !dbg !3860
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #11, !dbg !3862
  call void @llvm.dbg.declare(metadata ptr %key, metadata !3830, metadata !DIExpression()), !dbg !3863
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !3864
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3831, metadata !DIExpression()), !dbg !3864
  %1 = load ptr, ptr %_p, align 8, !dbg !3864
  store ptr %1, ptr %__mptr, align 8, !dbg !3864
  %2 = load ptr, ptr %__mptr, align 8, !dbg !3864
  %add.ptr = getelementptr i8, ptr %2, i64 -8, !dbg !3864
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3864
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !3865
  %3 = load ptr, ptr %tmp, align 8, !dbg !3864
  store ptr %3, ptr %key, align 8, !dbg !3863
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #11, !dbg !3866
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !3833, metadata !DIExpression()), !dbg !3867
  call void @llvm.lifetime.start.p0(i64 8, ptr %key_ref) #11, !dbg !3868
  call void @llvm.dbg.declare(metadata ptr %key_ref, metadata !3834, metadata !DIExpression()), !dbg !3869
  call void @llvm.lifetime.start.p0(i64 8, ptr %skey_ref) #11, !dbg !3868
  call void @llvm.dbg.declare(metadata ptr %skey_ref, metadata !3835, metadata !DIExpression()), !dbg !3870
  call void @llvm.lifetime.start.p0(i64 8, ptr %now) #11, !dbg !3871
  call void @llvm.dbg.declare(metadata ptr %now, metadata !3836, metadata !DIExpression()), !dbg !3872
  call void @llvm.lifetime.start.p0(i64 8, ptr %expiry) #11, !dbg !3871
  call void @llvm.dbg.declare(metadata ptr %expiry, metadata !3837, metadata !DIExpression()), !dbg !3873
  call void @llvm.lifetime.start.p0(i64 16, ptr %xbuf) #11, !dbg !3874
  call void @llvm.dbg.declare(metadata ptr %xbuf, metadata !3838, metadata !DIExpression()), !dbg !3875
  call void @llvm.lifetime.start.p0(i64 2, ptr %state) #11, !dbg !3876
  call void @llvm.dbg.declare(metadata ptr %state, metadata !3839, metadata !DIExpression()), !dbg !3877
  call void @llvm.lifetime.start.p0(i64 8, ptr %timo) #11, !dbg !3878
  call void @llvm.dbg.declare(metadata ptr %timo, metadata !3840, metadata !DIExpression()), !dbg !3879
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #11, !dbg !3880
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !3841, metadata !DIExpression()), !dbg !3881
  call void @llvm.lifetime.start.p0(i64 120, ptr %ctx) #11, !dbg !3882
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !3842, metadata !DIExpression()), !dbg !3883
  %index_key = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 0, !dbg !3884
  %4 = load ptr, ptr %key, align 8, !dbg !3885
  %5 = getelementptr inbounds %struct.key, ptr %4, i32 0, i32 15, !dbg !3886
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %index_key, ptr align 8 %5, i64 40, i1 false), !dbg !3886
  %cred = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 1, !dbg !3884
  %6 = load ptr, ptr %m.addr, align 8, !dbg !3887
  %file = getelementptr inbounds %struct.seq_file, ptr %6, i32 0, i32 10, !dbg !3888
  %7 = load ptr, ptr %file, align 8, !dbg !3888
  %f_cred = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 8, !dbg !3889
  %8 = load ptr, ptr %f_cred, align 8, !dbg !3889
  store ptr %8, ptr %cred, align 8, !dbg !3884
  %match_data = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 2, !dbg !3884
  %cmp = getelementptr inbounds %struct.key_match_data, ptr %match_data, i32 0, i32 0, !dbg !3890
  store ptr @lookup_user_key_possessed, ptr %cmp, align 8, !dbg !3890
  %raw_data = getelementptr inbounds %struct.key_match_data, ptr %match_data, i32 0, i32 1, !dbg !3890
  %9 = load ptr, ptr %key, align 8, !dbg !3891
  store ptr %9, ptr %raw_data, align 8, !dbg !3890
  %preparsed = getelementptr inbounds %struct.key_match_data, ptr %match_data, i32 0, i32 2, !dbg !3890
  store ptr null, ptr %preparsed, align 8, !dbg !3890
  %lookup_type = getelementptr inbounds %struct.key_match_data, ptr %match_data, i32 0, i32 3, !dbg !3890
  store i32 0, ptr %lookup_type, align 8, !dbg !3890
  %flags1 = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 3, !dbg !3884
  store i32 65, ptr %flags1, align 8, !dbg !3884
  %iterator = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 4, !dbg !3884
  store ptr null, ptr %iterator, align 8, !dbg !3884
  %skipped_ret = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 5, !dbg !3884
  store i32 0, ptr %skipped_ret, align 8, !dbg !3884
  %possessed = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 6, !dbg !3884
  store i8 0, ptr %possessed, align 4, !dbg !3884
  %result = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 7, !dbg !3884
  store ptr null, ptr %result, align 8, !dbg !3884
  %now2 = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 8, !dbg !3884
  store i64 0, ptr %now2, align 8, !dbg !3884
  %10 = load ptr, ptr %key, align 8, !dbg !3892
  %call = call ptr @make_key_ref(ptr noundef %10, i1 noundef zeroext false) #12, !dbg !3893
  store ptr %call, ptr %key_ref, align 8, !dbg !3894
  %11 = load ptr, ptr %key, align 8, !dbg !3895
  %perm = getelementptr inbounds %struct.key, ptr %11, i32 0, i32 10, !dbg !3897
  %12 = load i32, ptr %perm, align 8, !dbg !3897
  %and = and i32 %12, 16777216, !dbg !3898
  %tobool = icmp ne i32 %and, 0, !dbg !3898
  br i1 %tobool, label %if.then, label %if.end7, !dbg !3899

if.then:                                          ; preds = %entry
  call void @rcu_read_lock() #12, !dbg !3900
  %call3 = call ptr @search_cred_keyrings_rcu(ptr noundef %ctx) #12, !dbg !3902
  store ptr %call3, ptr %skey_ref, align 8, !dbg !3903
  call void @rcu_read_unlock() #12, !dbg !3904
  %13 = load ptr, ptr %skey_ref, align 8, !dbg !3905
  %call4 = call zeroext i1 @IS_ERR(ptr noundef %13) #12, !dbg !3907
  br i1 %call4, label %if.end, label %if.then5, !dbg !3908

if.then5:                                         ; preds = %if.then
  %14 = load ptr, ptr %skey_ref, align 8, !dbg !3909
  call void @key_ref_put(ptr noundef %14) #12, !dbg !3911
  %15 = load ptr, ptr %key, align 8, !dbg !3912
  %call6 = call ptr @make_key_ref(ptr noundef %15, i1 noundef zeroext true) #12, !dbg !3913
  store ptr %call6, ptr %key_ref, align 8, !dbg !3914
  br label %if.end, !dbg !3915

if.end:                                           ; preds = %if.then5, %if.then
  br label %if.end7, !dbg !3916

if.end7:                                          ; preds = %if.end, %entry
  %16 = load ptr, ptr %key_ref, align 8, !dbg !3917
  %cred8 = getelementptr inbounds %struct.keyring_search_context, ptr %ctx, i32 0, i32 1, !dbg !3918
  %17 = load ptr, ptr %cred8, align 8, !dbg !3918
  %call9 = call i32 @key_task_permission(ptr noundef %16, ptr noundef %17, i32 noundef 1) #12, !dbg !3919
  store i32 %call9, ptr %rc, align 4, !dbg !3920
  %18 = load i32, ptr %rc, align 4, !dbg !3921
  %cmp10 = icmp slt i32 %18, 0, !dbg !3923
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !3924

if.then11:                                        ; preds = %if.end7
  store i32 0, ptr %retval, align 4, !dbg !3925
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3925

if.end12:                                         ; preds = %if.end7
  %call13 = call i64 @ktime_get_real_seconds() #12, !dbg !3926
  store i64 %call13, ptr %now, align 8, !dbg !3927
  call void @rcu_read_lock() #12, !dbg !3928
  br label %do.body, !dbg !3929

do.body:                                          ; preds = %if.end12
  br label %do.cond, !dbg !3931

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3931

do.end:                                           ; preds = %do.cond
  %19 = load ptr, ptr %key, align 8, !dbg !3929
  %20 = getelementptr inbounds %struct.key, ptr %19, i32 0, i32 6, !dbg !3929
  %21 = load volatile i64, ptr %20, align 8, !dbg !3929
  store i64 %21, ptr %tmp14, align 8, !dbg !3931
  %22 = load i64, ptr %tmp14, align 8, !dbg !3929
  store i64 %22, ptr %expiry, align 8, !dbg !3933
  %23 = load i64, ptr %expiry, align 8, !dbg !3934
  %cmp15 = icmp eq i64 %23, 9223372036854775807, !dbg !3936
  br i1 %cmp15, label %if.then16, label %if.else, !dbg !3937

if.then16:                                        ; preds = %do.end
  %arraydecay = getelementptr inbounds [16 x i8], ptr %xbuf, i64 0, i64 0, !dbg !3938
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arraydecay, ptr align 1 @.str.4, i64 5, i1 false), !dbg !3938
  br label %if.end52, !dbg !3940

if.else:                                          ; preds = %do.end
  %24 = load i64, ptr %now, align 8, !dbg !3941
  %25 = load i64, ptr %expiry, align 8, !dbg !3943
  %cmp17 = icmp sge i64 %24, %25, !dbg !3944
  br i1 %cmp17, label %if.then18, label %if.else20, !dbg !3945

if.then18:                                        ; preds = %if.else
  %arraydecay19 = getelementptr inbounds [16 x i8], ptr %xbuf, i64 0, i64 0, !dbg !3946
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %arraydecay19, ptr align 1 @.str.5, i64 5, i1 false), !dbg !3946
  br label %if.end51, !dbg !3948

if.else20:                                        ; preds = %if.else
  %26 = load i64, ptr %expiry, align 8, !dbg !3949
  %27 = load i64, ptr %now, align 8, !dbg !3951
  %sub = sub i64 %26, %27, !dbg !3952
  store i64 %sub, ptr %timo, align 8, !dbg !3953
  %28 = load i64, ptr %timo, align 8, !dbg !3954
  %cmp21 = icmp ult i64 %28, 60, !dbg !3956
  br i1 %cmp21, label %if.then22, label %if.else25, !dbg !3957

if.then22:                                        ; preds = %if.else20
  %arraydecay23 = getelementptr inbounds [16 x i8], ptr %xbuf, i64 0, i64 0, !dbg !3958
  %29 = load i64, ptr %timo, align 8, !dbg !3959
  %call24 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay23, ptr noundef @.str.6, i64 noundef %29) #12, !dbg !3960
  br label %if.end50, !dbg !3960

if.else25:                                        ; preds = %if.else20
  %30 = load i64, ptr %timo, align 8, !dbg !3961
  %cmp26 = icmp ult i64 %30, 3600, !dbg !3963
  br i1 %cmp26, label %if.then27, label %if.else31, !dbg !3964

if.then27:                                        ; preds = %if.else25
  %arraydecay28 = getelementptr inbounds [16 x i8], ptr %xbuf, i64 0, i64 0, !dbg !3965
  %31 = load i64, ptr %timo, align 8, !dbg !3966
  %call29 = call i64 @div_u64(i64 noundef %31, i32 noundef 60) #12, !dbg !3967
  %call30 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay28, ptr noundef @.str.7, i64 noundef %call29) #12, !dbg !3968
  br label %if.end49, !dbg !3968

if.else31:                                        ; preds = %if.else25
  %32 = load i64, ptr %timo, align 8, !dbg !3969
  %cmp32 = icmp ult i64 %32, 86400, !dbg !3971
  br i1 %cmp32, label %if.then33, label %if.else37, !dbg !3972

if.then33:                                        ; preds = %if.else31
  %arraydecay34 = getelementptr inbounds [16 x i8], ptr %xbuf, i64 0, i64 0, !dbg !3973
  %33 = load i64, ptr %timo, align 8, !dbg !3974
  %call35 = call i64 @div_u64(i64 noundef %33, i32 noundef 3600) #12, !dbg !3975
  %call36 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay34, ptr noundef @.str.8, i64 noundef %call35) #12, !dbg !3976
  br label %if.end48, !dbg !3976

if.else37:                                        ; preds = %if.else31
  %34 = load i64, ptr %timo, align 8, !dbg !3977
  %cmp38 = icmp ult i64 %34, 604800, !dbg !3979
  br i1 %cmp38, label %if.then39, label %if.else43, !dbg !3980

if.then39:                                        ; preds = %if.else37
  %arraydecay40 = getelementptr inbounds [16 x i8], ptr %xbuf, i64 0, i64 0, !dbg !3981
  %35 = load i64, ptr %timo, align 8, !dbg !3982
  %call41 = call i64 @div_u64(i64 noundef %35, i32 noundef 86400) #12, !dbg !3983
  %call42 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay40, ptr noundef @.str.9, i64 noundef %call41) #12, !dbg !3984
  br label %if.end47, !dbg !3984

if.else43:                                        ; preds = %if.else37
  %arraydecay44 = getelementptr inbounds [16 x i8], ptr %xbuf, i64 0, i64 0, !dbg !3985
  %36 = load i64, ptr %timo, align 8, !dbg !3986
  %call45 = call i64 @div_u64(i64 noundef %36, i32 noundef 604800) #12, !dbg !3987
  %call46 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay44, ptr noundef @.str.10, i64 noundef %call45) #12, !dbg !3988
  br label %if.end47

if.end47:                                         ; preds = %if.else43, %if.then39
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.then33
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.then27
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.then22
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.then18
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.then16
  %37 = load ptr, ptr %key, align 8, !dbg !3989
  %call53 = call signext i16 @key_read_state(ptr noundef %37) #12, !dbg !3990
  store i16 %call53, ptr %state, align 2, !dbg !3991
  br label %do.body54, !dbg !3992

do.body54:                                        ; preds = %if.end52
  br label %do.cond55, !dbg !3994

do.cond55:                                        ; preds = %do.body54
  br label %do.end56, !dbg !3994

do.end56:                                         ; preds = %do.cond55
  %38 = load ptr, ptr %key, align 8, !dbg !3992
  %flags58 = getelementptr inbounds %struct.key, ptr %38, i32 0, i32 14, !dbg !3992
  %39 = load volatile i64, ptr %flags58, align 8, !dbg !3992
  store i64 %39, ptr %tmp57, align 8, !dbg !3994
  %40 = load i64, ptr %tmp57, align 8, !dbg !3992
  store i64 %40, ptr %flags, align 8, !dbg !3996
  %41 = load ptr, ptr %m.addr, align 8, !dbg !3997
  %42 = load ptr, ptr %key, align 8, !dbg !3998
  %serial = getelementptr inbounds %struct.key, ptr %42, i32 0, i32 1, !dbg !3999
  %43 = load i32, ptr %serial, align 4, !dbg !3999
  %44 = load i16, ptr %state, align 2, !dbg !4000
  %conv = sext i16 %44 to i32, !dbg !4000
  %cmp59 = icmp ne i32 %conv, 0, !dbg !4001
  %45 = zext i1 %cmp59 to i64, !dbg !4000
  %cond = select i1 %cmp59, i32 73, i32 45, !dbg !4000
  %46 = load i64, ptr %flags, align 8, !dbg !4002
  %and61 = and i64 %46, 2, !dbg !4002
  %tobool62 = icmp ne i64 %and61, 0, !dbg !4002
  %47 = zext i1 %tobool62 to i64, !dbg !4002
  %cond63 = select i1 %tobool62, i32 82, i32 45, !dbg !4002
  %48 = load i64, ptr %flags, align 8, !dbg !4003
  %and64 = and i64 %48, 1, !dbg !4003
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4003
  %49 = zext i1 %tobool65 to i64, !dbg !4003
  %cond66 = select i1 %tobool65, i32 68, i32 45, !dbg !4003
  %50 = load i64, ptr %flags, align 8, !dbg !4004
  %and67 = and i64 %50, 4, !dbg !4004
  %tobool68 = icmp ne i64 %and67, 0, !dbg !4004
  %51 = zext i1 %tobool68 to i64, !dbg !4004
  %cond69 = select i1 %tobool68, i32 81, i32 45, !dbg !4004
  %52 = load i64, ptr %flags, align 8, !dbg !4005
  %and70 = and i64 %52, 8, !dbg !4005
  %tobool71 = icmp ne i64 %and70, 0, !dbg !4005
  %53 = zext i1 %tobool71 to i64, !dbg !4005
  %cond72 = select i1 %tobool71, i32 85, i32 45, !dbg !4005
  %54 = load i16, ptr %state, align 2, !dbg !4006
  %conv73 = sext i16 %54 to i32, !dbg !4006
  %cmp74 = icmp slt i32 %conv73, 0, !dbg !4007
  %55 = zext i1 %cmp74 to i64, !dbg !4006
  %cond76 = select i1 %cmp74, i32 78, i32 45, !dbg !4006
  %56 = load i64, ptr %flags, align 8, !dbg !4008
  %and77 = and i64 %56, 32, !dbg !4008
  %tobool78 = icmp ne i64 %and77, 0, !dbg !4008
  %57 = zext i1 %tobool78 to i64, !dbg !4008
  %cond79 = select i1 %tobool78, i32 105, i32 45, !dbg !4008
  %58 = load ptr, ptr %key, align 8, !dbg !4009
  %usage = getelementptr inbounds %struct.key, ptr %58, i32 0, i32 0, !dbg !4010
  %call80 = call i32 @refcount_read(ptr noundef %usage) #12, !dbg !4011
  %arraydecay81 = getelementptr inbounds [16 x i8], ptr %xbuf, i64 0, i64 0, !dbg !4012
  %59 = load ptr, ptr %key, align 8, !dbg !4013
  %perm82 = getelementptr inbounds %struct.key, ptr %59, i32 0, i32 10, !dbg !4014
  %60 = load i32, ptr %perm82, align 8, !dbg !4014
  %61 = load ptr, ptr %m.addr, align 8, !dbg !4015
  %call83 = call ptr @seq_user_ns(ptr noundef %61) #12, !dbg !4016
  %62 = load ptr, ptr %key, align 8, !dbg !4017
  %uid = getelementptr inbounds %struct.key, ptr %62, i32 0, i32 8, !dbg !4018
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !4019
  %63 = load i32, ptr %coerce.dive, align 8, !dbg !4019
  %call84 = call i32 @from_kuid_munged(ptr noundef %call83, i32 %63) #12, !dbg !4019
  %64 = load ptr, ptr %m.addr, align 8, !dbg !4020
  %call85 = call ptr @seq_user_ns(ptr noundef %64) #12, !dbg !4021
  %65 = load ptr, ptr %key, align 8, !dbg !4022
  %gid = getelementptr inbounds %struct.key, ptr %65, i32 0, i32 9, !dbg !4023
  %coerce.dive86 = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !4024
  %66 = load i32, ptr %coerce.dive86, align 4, !dbg !4024
  %call87 = call i32 @from_kgid_munged(ptr noundef %call85, i32 %66) #12, !dbg !4024
  %67 = load ptr, ptr %key, align 8, !dbg !4025
  %68 = getelementptr inbounds %struct.key, ptr %67, i32 0, i32 15, !dbg !4026
  %type = getelementptr inbounds %struct.anon.19, ptr %68, i32 0, i32 2, !dbg !4026
  %69 = load ptr, ptr %type, align 8, !dbg !4026
  %name = getelementptr inbounds %struct.key_type, ptr %69, i32 0, i32 0, !dbg !4027
  %70 = load ptr, ptr %name, align 8, !dbg !4027
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %41, ptr noundef @.str.11, i32 noundef %43, i32 noundef %cond, i32 noundef %cond63, i32 noundef %cond66, i32 noundef %cond69, i32 noundef %cond72, i32 noundef %cond76, i32 noundef %cond79, i32 noundef %call80, ptr noundef %arraydecay81, i32 noundef %60, i32 noundef %call84, i32 noundef %call87, ptr noundef %70) #12, !dbg !4028
  %71 = load ptr, ptr %key, align 8, !dbg !4029
  %72 = getelementptr inbounds %struct.key, ptr %71, i32 0, i32 15, !dbg !4031
  %type88 = getelementptr inbounds %struct.anon.19, ptr %72, i32 0, i32 2, !dbg !4031
  %73 = load ptr, ptr %type88, align 8, !dbg !4031
  %describe = getelementptr inbounds %struct.key_type, ptr %73, i32 0, i32 12, !dbg !4032
  %74 = load ptr, ptr %describe, align 8, !dbg !4032
  %tobool89 = icmp ne ptr %74, null, !dbg !4029
  br i1 %tobool89, label %if.then90, label %if.end93, !dbg !4033

if.then90:                                        ; preds = %do.end56
  %75 = load ptr, ptr %key, align 8, !dbg !4034
  %76 = getelementptr inbounds %struct.key, ptr %75, i32 0, i32 15, !dbg !4035
  %type91 = getelementptr inbounds %struct.anon.19, ptr %76, i32 0, i32 2, !dbg !4035
  %77 = load ptr, ptr %type91, align 8, !dbg !4035
  %describe92 = getelementptr inbounds %struct.key_type, ptr %77, i32 0, i32 12, !dbg !4036
  %78 = load ptr, ptr %describe92, align 8, !dbg !4036
  %79 = load ptr, ptr %key, align 8, !dbg !4037
  %80 = load ptr, ptr %m.addr, align 8, !dbg !4038
  call void %78(ptr noundef %79, ptr noundef %80) #12, !dbg !4034
  br label %if.end93, !dbg !4034

if.end93:                                         ; preds = %if.then90, %do.end56
  %81 = load ptr, ptr %m.addr, align 8, !dbg !4039
  call void @seq_putc(ptr noundef %81, i8 noundef zeroext 10) #12, !dbg !4040
  call void @rcu_read_unlock() #12, !dbg !4041
  store i32 0, ptr %retval, align 4, !dbg !4042
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4042

cleanup:                                          ; preds = %if.end93, %if.then11
  call void @llvm.lifetime.end.p0(i64 120, ptr %ctx) #11, !dbg !4043
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #11, !dbg !4043
  call void @llvm.lifetime.end.p0(i64 8, ptr %timo) #11, !dbg !4043
  call void @llvm.lifetime.end.p0(i64 2, ptr %state) #11, !dbg !4043
  call void @llvm.lifetime.end.p0(i64 16, ptr %xbuf) #11, !dbg !4043
  call void @llvm.lifetime.end.p0(i64 8, ptr %expiry) #11, !dbg !4043
  call void @llvm.lifetime.end.p0(i64 8, ptr %now) #11, !dbg !4043
  call void @llvm.lifetime.end.p0(i64 8, ptr %skey_ref) #11, !dbg !4043
  call void @llvm.lifetime.end.p0(i64 8, ptr %key_ref) #11, !dbg !4043
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #11, !dbg !4043
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #11, !dbg !4043
  call void @llvm.lifetime.end.p0(i64 8, ptr %_p) #11, !dbg !4043
  %82 = load i32, ptr %retval, align 4, !dbg !4043
  ret i32 %82, !dbg !4043
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #6 align 16 !dbg !4044 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4049, metadata !DIExpression()), !dbg !4050
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4051
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !4051
  call void @_raw_spin_lock(ptr noundef %1) #12, !dbg !4051
  ret void, !dbg !4052
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @find_ge_key(ptr noundef %p, i32 noundef %id) #5 align 16 !dbg !4053 {
entry:
  %retval = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %id.addr = alloca i32, align 4
  %user_ns = alloca ptr, align 8
  %n = alloca ptr, align 8
  %minkey = alloca ptr, align 8
  %key = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr22 = alloca ptr, align 8
  %tmp23 = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4057, metadata !DIExpression()), !dbg !4071
  store i32 %id, ptr %id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !4058, metadata !DIExpression()), !dbg !4072
  call void @llvm.lifetime.start.p0(i64 8, ptr %user_ns) #11, !dbg !4073
  call void @llvm.dbg.declare(metadata ptr %user_ns, metadata !4059, metadata !DIExpression()), !dbg !4074
  %0 = load ptr, ptr %p.addr, align 8, !dbg !4075
  %call = call ptr @seq_user_ns(ptr noundef %0) #12, !dbg !4076
  store ptr %call, ptr %user_ns, align 8, !dbg !4074
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #11, !dbg !4077
  call void @llvm.dbg.declare(metadata ptr %n, metadata !4060, metadata !DIExpression()), !dbg !4078
  %1 = load ptr, ptr @key_serial_tree, align 8, !dbg !4079
  store ptr %1, ptr %n, align 8, !dbg !4078
  call void @llvm.lifetime.start.p0(i64 8, ptr %minkey) #11, !dbg !4080
  call void @llvm.dbg.declare(metadata ptr %minkey, metadata !4061, metadata !DIExpression()), !dbg !4081
  store ptr null, ptr %minkey, align 8, !dbg !4081
  br label %while.cond, !dbg !4082

while.cond:                                       ; preds = %cleanup.cont, %entry
  %2 = load ptr, ptr %n, align 8, !dbg !4083
  %tobool = icmp ne ptr %2, null, !dbg !4082
  br i1 %tobool, label %while.body, label %while.end, !dbg !4082

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #11, !dbg !4084
  call void @llvm.dbg.declare(metadata ptr %key, metadata !4062, metadata !DIExpression()), !dbg !4085
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !4086
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4064, metadata !DIExpression()), !dbg !4086
  %3 = load ptr, ptr %n, align 8, !dbg !4086
  store ptr %3, ptr %__mptr, align 8, !dbg !4086
  %4 = load ptr, ptr %__mptr, align 8, !dbg !4086
  %add.ptr = getelementptr i8, ptr %4, i64 -8, !dbg !4086
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4086
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !4087
  %5 = load ptr, ptr %tmp, align 8, !dbg !4086
  store ptr %5, ptr %key, align 8, !dbg !4085
  %6 = load i32, ptr %id.addr, align 4, !dbg !4088
  %7 = load ptr, ptr %key, align 8, !dbg !4090
  %serial = getelementptr inbounds %struct.key, ptr %7, i32 0, i32 1, !dbg !4091
  %8 = load i32, ptr %serial, align 4, !dbg !4091
  %cmp = icmp slt i32 %6, %8, !dbg !4092
  br i1 %cmp, label %if.then, label %if.else, !dbg !4093

if.then:                                          ; preds = %while.body
  %9 = load ptr, ptr %minkey, align 8, !dbg !4094
  %tobool1 = icmp ne ptr %9, null, !dbg !4094
  br i1 %tobool1, label %lor.lhs.false, label %if.then5, !dbg !4097

lor.lhs.false:                                    ; preds = %if.then
  %10 = load ptr, ptr %minkey, align 8, !dbg !4098
  %serial2 = getelementptr inbounds %struct.key, ptr %10, i32 0, i32 1, !dbg !4099
  %11 = load i32, ptr %serial2, align 4, !dbg !4099
  %12 = load ptr, ptr %key, align 8, !dbg !4100
  %serial3 = getelementptr inbounds %struct.key, ptr %12, i32 0, i32 1, !dbg !4101
  %13 = load i32, ptr %serial3, align 4, !dbg !4101
  %cmp4 = icmp sgt i32 %11, %13, !dbg !4102
  br i1 %cmp4, label %if.then5, label %if.end, !dbg !4103

if.then5:                                         ; preds = %lor.lhs.false, %if.then
  %14 = load ptr, ptr %key, align 8, !dbg !4104
  store ptr %14, ptr %minkey, align 8, !dbg !4105
  br label %if.end, !dbg !4106

if.end:                                           ; preds = %if.then5, %lor.lhs.false
  %15 = load ptr, ptr %n, align 8, !dbg !4107
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %15, i32 0, i32 2, !dbg !4108
  %16 = load ptr, ptr %rb_left, align 8, !dbg !4108
  store ptr %16, ptr %n, align 8, !dbg !4109
  br label %if.end11, !dbg !4110

if.else:                                          ; preds = %while.body
  %17 = load i32, ptr %id.addr, align 4, !dbg !4111
  %18 = load ptr, ptr %key, align 8, !dbg !4113
  %serial6 = getelementptr inbounds %struct.key, ptr %18, i32 0, i32 1, !dbg !4114
  %19 = load i32, ptr %serial6, align 4, !dbg !4114
  %cmp7 = icmp sgt i32 %17, %19, !dbg !4115
  br i1 %cmp7, label %if.then8, label %if.else9, !dbg !4116

if.then8:                                         ; preds = %if.else
  %20 = load ptr, ptr %n, align 8, !dbg !4117
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %20, i32 0, i32 1, !dbg !4119
  %21 = load ptr, ptr %rb_right, align 8, !dbg !4119
  store ptr %21, ptr %n, align 8, !dbg !4120
  br label %if.end10, !dbg !4121

if.else9:                                         ; preds = %if.else
  %22 = load ptr, ptr %key, align 8, !dbg !4122
  store ptr %22, ptr %minkey, align 8, !dbg !4124
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4125

if.end10:                                         ; preds = %if.then8
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.end
  store ptr null, ptr %key, align 8, !dbg !4126
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4127
  br label %cleanup, !dbg !4127

cleanup:                                          ; preds = %if.end11, %if.else9
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #11, !dbg !4127
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !4082, !llvm.loop !4128

while.end:                                        ; preds = %cleanup, %while.cond
  %23 = load ptr, ptr %minkey, align 8, !dbg !4131
  %tobool12 = icmp ne ptr %23, null, !dbg !4131
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !4133

if.then13:                                        ; preds = %while.end
  store ptr null, ptr %retval, align 8, !dbg !4134
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup25, !dbg !4134

if.end14:                                         ; preds = %while.end
  br label %for.cond, !dbg !4135

for.cond:                                         ; preds = %if.end21, %if.end14
  %24 = load ptr, ptr %user_ns, align 8, !dbg !4136
  %25 = load ptr, ptr %minkey, align 8, !dbg !4138
  %user = getelementptr inbounds %struct.key, ptr %25, i32 0, i32 4, !dbg !4139
  %26 = load ptr, ptr %user, align 8, !dbg !4139
  %uid = getelementptr inbounds %struct.key_user, ptr %26, i32 0, i32 6, !dbg !4140
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !4141
  %27 = load i32, ptr %coerce.dive, align 8, !dbg !4141
  %call15 = call zeroext i1 @kuid_has_mapping(ptr noundef %24, i32 %27) #12, !dbg !4141
  br i1 %call15, label %if.then16, label %if.end17, !dbg !4142

if.then16:                                        ; preds = %for.cond
  %28 = load ptr, ptr %minkey, align 8, !dbg !4143
  store ptr %28, ptr %retval, align 8, !dbg !4144
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup25, !dbg !4144

if.end17:                                         ; preds = %for.cond
  %29 = load ptr, ptr %minkey, align 8, !dbg !4145
  %30 = getelementptr inbounds %struct.key, ptr %29, i32 0, i32 2, !dbg !4146
  %call18 = call ptr @rb_next(ptr noundef %30) #12, !dbg !4147
  store ptr %call18, ptr %n, align 8, !dbg !4148
  %31 = load ptr, ptr %n, align 8, !dbg !4149
  %tobool19 = icmp ne ptr %31, null, !dbg !4149
  br i1 %tobool19, label %if.end21, label %if.then20, !dbg !4151

if.then20:                                        ; preds = %if.end17
  store ptr null, ptr %retval, align 8, !dbg !4152
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup25, !dbg !4152

if.end21:                                         ; preds = %if.end17
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr22) #11, !dbg !4153
  call void @llvm.dbg.declare(metadata ptr %__mptr22, metadata !4066, metadata !DIExpression()), !dbg !4153
  %32 = load ptr, ptr %n, align 8, !dbg !4153
  store ptr %32, ptr %__mptr22, align 8, !dbg !4153
  %33 = load ptr, ptr %__mptr22, align 8, !dbg !4153
  %add.ptr24 = getelementptr i8, ptr %33, i64 -8, !dbg !4153
  store ptr %add.ptr24, ptr %tmp23, align 8, !dbg !4153
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr22) #11, !dbg !4154
  %34 = load ptr, ptr %tmp23, align 8, !dbg !4153
  store ptr %34, ptr %minkey, align 8, !dbg !4155
  br label %for.cond, !dbg !4156, !llvm.loop !4157

cleanup25:                                        ; preds = %if.then20, %if.then16, %if.then13
  call void @llvm.lifetime.end.p0(i64 8, ptr %minkey) #11, !dbg !4160
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #11, !dbg !4160
  call void @llvm.lifetime.end.p0(i64 8, ptr %user_ns) #11, !dbg !4160
  %35 = load ptr, ptr %retval, align 8, !dbg !4160
  ret ptr %35, !dbg !4160

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4161 dso_local void @_raw_spin_lock(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @seq_user_ns(ptr noundef %seq) #7 align 16 !dbg !4166 {
entry:
  %seq.addr = alloca ptr, align 8
  store ptr %seq, ptr %seq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !4170, metadata !DIExpression()), !dbg !4171
  ret ptr @init_user_ns, !dbg !4172
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kuid_has_mapping(ptr noundef %ns, i32 %uid.coerce) #7 align 16 !dbg !4173 {
entry:
  %uid = alloca %struct.kuid_t, align 4
  %ns.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0
  store i32 %uid.coerce, ptr %coerce.dive, align 4
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !4177, metadata !DIExpression()), !dbg !4179
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !4178, metadata !DIExpression()), !dbg !4180
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !4181
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !4181
  %call = call zeroext i1 @uid_valid(i32 %0) #12, !dbg !4181
  ret i1 %call, !dbg !4182
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4183 dso_local ptr @rb_next(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @uid_valid(i32 %uid.coerce) #7 align 16 !dbg !4189 {
entry:
  %uid = alloca %struct.kuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0
  store i32 %uid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !4193, metadata !DIExpression()), !dbg !4194
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !4195
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !4195
  %call = call i32 @__kuid_val(i32 %0) #12, !dbg !4195
  %cmp = icmp ne i32 %call, -1, !dbg !4196
  ret i1 %cmp, !dbg !4197
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kuid_val(i32 %uid.coerce) #7 align 16 !dbg !4198 {
entry:
  %uid = alloca %struct.kuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0
  store i32 %uid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !4202, metadata !DIExpression()), !dbg !4203
  %val = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !4204
  %0 = load i32, ptr %val, align 4, !dbg !4204
  ret i32 %0, !dbg !4205
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #6 align 16 !dbg !4206 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4208, metadata !DIExpression()), !dbg !4209
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4210
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !4210
  call void @_raw_spin_unlock(ptr noundef %1) #12, !dbg !4210
  ret void, !dbg !4211
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4212 dso_local void @_raw_spin_unlock(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @key_serial_next(ptr noundef %p, ptr noundef %n) #5 align 16 !dbg !4213 {
entry:
  %p.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %user_ns = alloca ptr, align 8
  %key = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4217, metadata !DIExpression()), !dbg !4224
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4218, metadata !DIExpression()), !dbg !4225
  call void @llvm.lifetime.start.p0(i64 8, ptr %user_ns) #11, !dbg !4226
  call void @llvm.dbg.declare(metadata ptr %user_ns, metadata !4219, metadata !DIExpression()), !dbg !4227
  %0 = load ptr, ptr %p.addr, align 8, !dbg !4228
  %call = call ptr @seq_user_ns(ptr noundef %0) #12, !dbg !4229
  store ptr %call, ptr %user_ns, align 8, !dbg !4227
  %1 = load ptr, ptr %n.addr, align 8, !dbg !4230
  %call1 = call ptr @rb_next(ptr noundef %1) #12, !dbg !4231
  store ptr %call1, ptr %n.addr, align 8, !dbg !4232
  br label %while.cond, !dbg !4233

while.cond:                                       ; preds = %cleanup.cont, %entry
  %2 = load ptr, ptr %n.addr, align 8, !dbg !4234
  %tobool = icmp ne ptr %2, null, !dbg !4233
  br i1 %tobool, label %while.body, label %while.end, !dbg !4233

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #11, !dbg !4235
  call void @llvm.dbg.declare(metadata ptr %key, metadata !4220, metadata !DIExpression()), !dbg !4236
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !4237
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4222, metadata !DIExpression()), !dbg !4237
  %3 = load ptr, ptr %n.addr, align 8, !dbg !4237
  store ptr %3, ptr %__mptr, align 8, !dbg !4237
  %4 = load ptr, ptr %__mptr, align 8, !dbg !4237
  %add.ptr = getelementptr i8, ptr %4, i64 -8, !dbg !4237
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4237
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !4238
  %5 = load ptr, ptr %tmp, align 8, !dbg !4237
  store ptr %5, ptr %key, align 8, !dbg !4236
  %6 = load ptr, ptr %user_ns, align 8, !dbg !4239
  %7 = load ptr, ptr %key, align 8, !dbg !4241
  %user = getelementptr inbounds %struct.key, ptr %7, i32 0, i32 4, !dbg !4242
  %8 = load ptr, ptr %user, align 8, !dbg !4242
  %uid = getelementptr inbounds %struct.key_user, ptr %8, i32 0, i32 6, !dbg !4243
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !4244
  %9 = load i32, ptr %coerce.dive, align 8, !dbg !4244
  %call2 = call zeroext i1 @kuid_has_mapping(ptr noundef %6, i32 %9) #12, !dbg !4244
  br i1 %call2, label %if.then, label %if.end, !dbg !4245

if.then:                                          ; preds = %while.body
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4246

if.end:                                           ; preds = %while.body
  %10 = load ptr, ptr %n.addr, align 8, !dbg !4247
  %call3 = call ptr @rb_next(ptr noundef %10) #12, !dbg !4248
  store ptr %call3, ptr %n.addr, align 8, !dbg !4249
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4250
  br label %cleanup, !dbg !4250

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #11, !dbg !4250
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !4233, !llvm.loop !4251

while.end:                                        ; preds = %cleanup, %while.cond
  %11 = load ptr, ptr %n.addr, align 8, !dbg !4252
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %user_ns) #11, !dbg !4253
  ret ptr %11, !dbg !4254

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @key_node_serial(ptr noundef %n) #7 align 16 !dbg !4255 {
entry:
  %n.addr = alloca ptr, align 8
  %key = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4259, metadata !DIExpression()), !dbg !4263
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #11, !dbg !4264
  call void @llvm.dbg.declare(metadata ptr %key, metadata !4260, metadata !DIExpression()), !dbg !4265
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !4266
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4261, metadata !DIExpression()), !dbg !4266
  %0 = load ptr, ptr %n.addr, align 8, !dbg !4266
  store ptr %0, ptr %__mptr, align 8, !dbg !4266
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4266
  %add.ptr = getelementptr i8, ptr %1, i64 -8, !dbg !4266
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4266
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !4267
  %2 = load ptr, ptr %tmp, align 8, !dbg !4266
  store ptr %2, ptr %key, align 8, !dbg !4265
  %3 = load ptr, ptr %key, align 8, !dbg !4268
  %serial = getelementptr inbounds %struct.key, ptr %3, i32 0, i32 1, !dbg !4269
  %4 = load i32, ptr %serial, align 4, !dbg !4269
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #11, !dbg !4270
  ret i32 %4, !dbg !4271
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @lookup_user_key_possessed(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @make_key_ref(ptr noundef %key, i1 noundef zeroext %possession) #7 align 16 !dbg !4272 {
entry:
  %key.addr = alloca ptr, align 8
  %possession.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !4276, metadata !DIExpression()), !dbg !4278
  %frombool = zext i1 %possession to i8
  store i8 %frombool, ptr %possession.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %possession.addr, metadata !4277, metadata !DIExpression()), !dbg !4279
  %0 = load ptr, ptr %key.addr, align 8, !dbg !4280
  %1 = ptrtoint ptr %0 to i64, !dbg !4281
  %2 = load i8, ptr %possession.addr, align 1, !dbg !4282, !range !4283, !noundef !896
  %tobool = trunc i8 %2 to i1, !dbg !4282
  %conv = zext i1 %tobool to i64, !dbg !4282
  %or = or i64 %1, %conv, !dbg !4284
  %3 = inttoptr i64 %or to ptr, !dbg !4285
  ret ptr %3, !dbg !4286
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_lock() #6 align 16 !dbg !4287 {
entry:
  call void @__rcu_read_lock() #12, !dbg !4289
  br label %do.body, !dbg !4290

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4291

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !4293

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !4294

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !4296
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4297 dso_local ptr @search_cred_keyrings_rcu(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_unlock() #7 align 16 !dbg !4301 {
entry:
  br label %do.body, !dbg !4302

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4303

do.end:                                           ; preds = %do.body
  call void @__rcu_read_unlock() #12, !dbg !4305
  br label %do.body1, !dbg !4306

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !4307

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !4309
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #7 align 16 !dbg !4310 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4315, metadata !DIExpression()), !dbg !4316
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !4317
  %1 = ptrtoint ptr %0 to i64, !dbg !4317
  %2 = inttoptr i64 %1 to ptr, !dbg !4317
  %3 = ptrtoint ptr %2 to i64, !dbg !4317
  %cmp = icmp uge i64 %3, -4095, !dbg !4317
  %lnot = xor i1 %cmp, true, !dbg !4317
  %lnot1 = xor i1 %lnot, true, !dbg !4317
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4317
  %conv = sext i32 %lnot.ext to i64, !dbg !4317
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4317
  %tobool = icmp ne i64 %expval, 0, !dbg !4317
  ret i1 %tobool, !dbg !4318
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @key_ref_put(ptr noundef %key_ref) #7 align 16 !dbg !4319 {
entry:
  %key_ref.addr = alloca ptr, align 8
  store ptr %key_ref, ptr %key_ref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key_ref.addr, metadata !4323, metadata !DIExpression()), !dbg !4324
  %0 = load ptr, ptr %key_ref.addr, align 8, !dbg !4325
  %call = call ptr @key_ref_to_ptr(ptr noundef %0) #12, !dbg !4326
  call void @key_put(ptr noundef %call) #12, !dbg !4327
  ret void, !dbg !4328
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4329 dso_local i32 @key_task_permission(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4333 dso_local i64 @ktime_get_real_seconds() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4337 dso_local i32 @sprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @div_u64(i64 noundef %dividend, i32 noundef %divisor) #7 align 16 !dbg !4341 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder = alloca i32, align 4
  store i64 %dividend, ptr %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dividend.addr, metadata !4346, metadata !DIExpression()), !dbg !4349
  store i32 %divisor, ptr %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %divisor.addr, metadata !4347, metadata !DIExpression()), !dbg !4350
  call void @llvm.lifetime.start.p0(i64 4, ptr %remainder) #11, !dbg !4351
  call void @llvm.dbg.declare(metadata ptr %remainder, metadata !4348, metadata !DIExpression()), !dbg !4352
  %0 = load i64, ptr %dividend.addr, align 8, !dbg !4353
  %1 = load i32, ptr %divisor.addr, align 4, !dbg !4354
  %call = call i64 @div_u64_rem(i64 noundef %0, i32 noundef %1, ptr noundef %remainder) #12, !dbg !4355
  call void @llvm.lifetime.end.p0(i64 4, ptr %remainder) #11, !dbg !4356
  ret i64 %call, !dbg !4357
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal signext i16 @key_read_state(ptr noundef %key) #7 align 16 !dbg !4358 {
entry:
  %key.addr = alloca ptr, align 8
  %___p1 = alloca i16, align 2
  %tmp = alloca i16, align 2
  %tmp4 = alloca i16, align 2
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !4362, metadata !DIExpression()), !dbg !4366
  call void @llvm.lifetime.start.p0(i64 2, ptr %___p1) #11, !dbg !4367
  call void @llvm.dbg.declare(metadata ptr %___p1, metadata !4363, metadata !DIExpression()), !dbg !4367
  br label %do.body, !dbg !4368

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !4370

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4370

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %key.addr, align 8, !dbg !4368
  %state = getelementptr inbounds %struct.key, ptr %0, i32 0, i32 13, !dbg !4368
  %1 = load volatile i16, ptr %state, align 8, !dbg !4368
  store i16 %1, ptr %tmp, align 2, !dbg !4370
  %2 = load i16, ptr %tmp, align 2, !dbg !4368
  store i16 %2, ptr %___p1, align 2, !dbg !4367
  br label %do.body1, !dbg !4367

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !4372

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !4372

do.end3:                                          ; preds = %do.cond2
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !4367, !srcloc !4374
  %3 = load i16, ptr %___p1, align 2, !dbg !4367
  store i16 %3, ptr %tmp4, align 2, !dbg !4367
  call void @llvm.lifetime.end.p0(i64 2, ptr %___p1) #11, !dbg !4375
  %4 = load i16, ptr %tmp4, align 2, !dbg !4367
  ret i16 %4, !dbg !4376
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4377 dso_local void @seq_printf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @refcount_read(ptr noundef %r) #7 align 16 !dbg !4380 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4386, metadata !DIExpression()), !dbg !4387
  %0 = load ptr, ptr %r.addr, align 8, !dbg !4388
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %0, i32 0, i32 0, !dbg !4389
  %call = call i32 @atomic_read(ptr noundef %refs) #12, !dbg !4390
  ret i32 %call, !dbg !4391
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kuid_munged(ptr noundef %to, i32 %kuid.coerce) #7 align 16 !dbg !4392 {
entry:
  %kuid = alloca %struct.kuid_t, align 4
  %to.addr = alloca ptr, align 8
  %uid = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0
  store i32 %kuid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !4396, metadata !DIExpression()), !dbg !4399
  call void @llvm.dbg.declare(metadata ptr %kuid, metadata !4397, metadata !DIExpression()), !dbg !4400
  call void @llvm.lifetime.start.p0(i64 4, ptr %uid) #11, !dbg !4401
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !4398, metadata !DIExpression()), !dbg !4402
  %0 = load ptr, ptr %to.addr, align 8, !dbg !4403
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0, !dbg !4404
  %1 = load i32, ptr %coerce.dive1, align 4, !dbg !4404
  %call = call i32 @from_kuid(ptr noundef %0, i32 %1) #12, !dbg !4404
  store i32 %call, ptr %uid, align 4, !dbg !4402
  %2 = load i32, ptr %uid, align 4, !dbg !4405
  %cmp = icmp eq i32 %2, -1, !dbg !4407
  br i1 %cmp, label %if.then, label %if.end, !dbg !4408

if.then:                                          ; preds = %entry
  %3 = load i32, ptr @overflowuid, align 4, !dbg !4409
  store i32 %3, ptr %uid, align 4, !dbg !4410
  br label %if.end, !dbg !4411

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, ptr %uid, align 4, !dbg !4412
  call void @llvm.lifetime.end.p0(i64 4, ptr %uid) #11, !dbg !4413
  ret i32 %4, !dbg !4414
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kgid_munged(ptr noundef %to, i32 %kgid.coerce) #7 align 16 !dbg !4415 {
entry:
  %kgid = alloca %struct.kgid_t, align 4
  %to.addr = alloca ptr, align 8
  %gid = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0
  store i32 %kgid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !4419, metadata !DIExpression()), !dbg !4422
  call void @llvm.dbg.declare(metadata ptr %kgid, metadata !4420, metadata !DIExpression()), !dbg !4423
  call void @llvm.lifetime.start.p0(i64 4, ptr %gid) #11, !dbg !4424
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !4421, metadata !DIExpression()), !dbg !4425
  %0 = load ptr, ptr %to.addr, align 8, !dbg !4426
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0, !dbg !4427
  %1 = load i32, ptr %coerce.dive1, align 4, !dbg !4427
  %call = call i32 @from_kgid(ptr noundef %0, i32 %1) #12, !dbg !4427
  store i32 %call, ptr %gid, align 4, !dbg !4425
  %2 = load i32, ptr %gid, align 4, !dbg !4428
  %cmp = icmp eq i32 %2, -1, !dbg !4430
  br i1 %cmp, label %if.then, label %if.end, !dbg !4431

if.then:                                          ; preds = %entry
  %3 = load i32, ptr @overflowgid, align 4, !dbg !4432
  store i32 %3, ptr %gid, align 4, !dbg !4433
  br label %if.end, !dbg !4434

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, ptr %gid, align 4, !dbg !4435
  call void @llvm.lifetime.end.p0(i64 4, ptr %gid) #11, !dbg !4436
  ret i32 %4, !dbg !4437
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4438 dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4441 dso_local void @__rcu_read_lock() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4442 dso_local void @__rcu_read_unlock() #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4443 dso_local void @key_put(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @key_ref_to_ptr(ptr noundef %key_ref) #7 align 16 !dbg !4444 {
entry:
  %key_ref.addr = alloca ptr, align 8
  store ptr %key_ref, ptr %key_ref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key_ref.addr, metadata !4448, metadata !DIExpression()), !dbg !4449
  %0 = load ptr, ptr %key_ref.addr, align 8, !dbg !4450
  %1 = ptrtoint ptr %0 to i64, !dbg !4451
  %and = and i64 %1, -2, !dbg !4452
  %2 = inttoptr i64 %and to ptr, !dbg !4453
  ret ptr %2, !dbg !4454
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @div_u64_rem(i64 noundef %dividend, i32 noundef %divisor, ptr noundef %remainder) #7 align 16 !dbg !4455 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder.addr = alloca ptr, align 8
  store i64 %dividend, ptr %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dividend.addr, metadata !4459, metadata !DIExpression()), !dbg !4462
  store i32 %divisor, ptr %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %divisor.addr, metadata !4460, metadata !DIExpression()), !dbg !4463
  store ptr %remainder, ptr %remainder.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %remainder.addr, metadata !4461, metadata !DIExpression()), !dbg !4464
  %0 = load i64, ptr %dividend.addr, align 8, !dbg !4465
  %1 = load i32, ptr %divisor.addr, align 4, !dbg !4466
  %conv = zext i32 %1 to i64, !dbg !4466
  %rem = urem i64 %0, %conv, !dbg !4467
  %conv1 = trunc i64 %rem to i32, !dbg !4465
  %2 = load ptr, ptr %remainder.addr, align 8, !dbg !4468
  store i32 %conv1, ptr %2, align 4, !dbg !4469
  %3 = load i64, ptr %dividend.addr, align 8, !dbg !4470
  %4 = load i32, ptr %divisor.addr, align 4, !dbg !4471
  %conv2 = zext i32 %4 to i64, !dbg !4471
  %div = udiv i64 %3, %conv2, !dbg !4472
  ret i64 %div, !dbg !4473
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #6 align 16 !dbg !4474 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4481, metadata !DIExpression()), !dbg !4482
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4483
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #12, !dbg !4484
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4485
  %call = call i32 @raw_atomic_read(ptr noundef %1) #12, !dbg !4486
  ret i32 %call, !dbg !4487
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !4488 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4496, metadata !DIExpression()), !dbg !4498
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4497, metadata !DIExpression()), !dbg !4499
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4500
  %1 = load i64, ptr %size.addr, align 8, !dbg !4501
  %conv = trunc i64 %1 to i32, !dbg !4501
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #12, !dbg !4502
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4503
  %3 = load i64, ptr %size.addr, align 8, !dbg !4503
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #12, !dbg !4503
  ret void, !dbg !4504
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #6 align 16 !dbg !4505 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4508, metadata !DIExpression()), !dbg !4509
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4510
  %call = call i32 @arch_atomic_read(ptr noundef %0) #12, !dbg !4511
  ret i32 %call, !dbg !4512
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #7 align 16 !dbg !4513 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4518, metadata !DIExpression()), !dbg !4520
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4519, metadata !DIExpression()), !dbg !4521
  ret i1 true, !dbg !4522
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #7 align 16 !dbg !4523 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4528, metadata !DIExpression()), !dbg !4531
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4529, metadata !DIExpression()), !dbg !4532
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4530, metadata !DIExpression()), !dbg !4533
  ret void, !dbg !4534
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #6 align 16 !dbg !4535 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4538, metadata !DIExpression()), !dbg !4539
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4540
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !4540
  %1 = load volatile i32, ptr %counter, align 4, !dbg !4540
  ret i32 %1, !dbg !4541
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kuid(ptr noundef %to, i32 %kuid.coerce) #7 align 16 !dbg !4542 {
entry:
  %kuid = alloca %struct.kuid_t, align 4
  %to.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0
  store i32 %kuid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !4544, metadata !DIExpression()), !dbg !4546
  call void @llvm.dbg.declare(metadata ptr %kuid, metadata !4545, metadata !DIExpression()), !dbg !4547
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0, !dbg !4548
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !4548
  %call = call i32 @__kuid_val(i32 %0) #12, !dbg !4548
  ret i32 %call, !dbg !4549
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kgid(ptr noundef %to, i32 %kgid.coerce) #7 align 16 !dbg !4550 {
entry:
  %kgid = alloca %struct.kgid_t, align 4
  %to.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0
  store i32 %kgid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !4552, metadata !DIExpression()), !dbg !4554
  call void @llvm.dbg.declare(metadata ptr %kgid, metadata !4553, metadata !DIExpression()), !dbg !4555
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0, !dbg !4556
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !4556
  %call = call i32 @__kgid_val(i32 %0) #12, !dbg !4556
  ret i32 %call, !dbg !4557
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kgid_val(i32 %gid.coerce) #7 align 16 !dbg !4558 {
entry:
  %gid = alloca %struct.kgid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0
  store i32 %gid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !4562, metadata !DIExpression()), !dbg !4563
  %val = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !4564
  %0 = load i32, ptr %val, align 4, !dbg !4564
  ret i32 %0, !dbg !4565
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @proc_key_users_start(ptr noundef %p, ptr noundef %_pos) #5 align 16 !dbg !4566 {
entry:
  %p.addr = alloca ptr, align 8
  %_pos.addr = alloca ptr, align 8
  %_p = alloca ptr, align 8
  %pos = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4568, metadata !DIExpression()), !dbg !4572
  store ptr %_pos, ptr %_pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_pos.addr, metadata !4569, metadata !DIExpression()), !dbg !4573
  call void @llvm.lifetime.start.p0(i64 8, ptr %_p) #11, !dbg !4574
  call void @llvm.dbg.declare(metadata ptr %_p, metadata !4570, metadata !DIExpression()), !dbg !4575
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #11, !dbg !4576
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !4571, metadata !DIExpression()), !dbg !4577
  %0 = load ptr, ptr %_pos.addr, align 8, !dbg !4578
  %1 = load i64, ptr %0, align 8, !dbg !4579
  store i64 %1, ptr %pos, align 8, !dbg !4577
  call void @spin_lock(ptr noundef @key_user_lock) #12, !dbg !4580
  %2 = load ptr, ptr %p.addr, align 8, !dbg !4581
  %call = call ptr @seq_user_ns(ptr noundef %2) #12, !dbg !4582
  %call1 = call ptr @key_user_first(ptr noundef %call, ptr noundef @key_user_tree) #12, !dbg !4583
  store ptr %call1, ptr %_p, align 8, !dbg !4584
  br label %while.cond, !dbg !4585

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i64, ptr %pos, align 8, !dbg !4586
  %cmp = icmp sgt i64 %3, 0, !dbg !4587
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4588

land.rhs:                                         ; preds = %while.cond
  %4 = load ptr, ptr %_p, align 8, !dbg !4589
  %tobool = icmp ne ptr %4, null, !dbg !4588
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ], !dbg !4590
  br i1 %5, label %while.body, label %while.end, !dbg !4585

while.body:                                       ; preds = %land.end
  %6 = load i64, ptr %pos, align 8, !dbg !4591
  %dec = add i64 %6, -1, !dbg !4591
  store i64 %dec, ptr %pos, align 8, !dbg !4591
  %7 = load ptr, ptr %p.addr, align 8, !dbg !4593
  %call2 = call ptr @seq_user_ns(ptr noundef %7) #12, !dbg !4594
  %8 = load ptr, ptr %_p, align 8, !dbg !4595
  %call3 = call ptr @key_user_next(ptr noundef %call2, ptr noundef %8) #12, !dbg !4596
  store ptr %call3, ptr %_p, align 8, !dbg !4597
  br label %while.cond, !dbg !4585, !llvm.loop !4598

while.end:                                        ; preds = %land.end
  %9 = load ptr, ptr %_p, align 8, !dbg !4600
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #11, !dbg !4601
  call void @llvm.lifetime.end.p0(i64 8, ptr %_p) #11, !dbg !4601
  ret ptr %9, !dbg !4602
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @proc_key_users_stop(ptr noundef %p, ptr noundef %v) #5 align 16 !dbg !4603 {
entry:
  %p.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4605, metadata !DIExpression()), !dbg !4607
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4606, metadata !DIExpression()), !dbg !4608
  call void @spin_unlock(ptr noundef @key_user_lock) #12, !dbg !4609
  ret void, !dbg !4610
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @proc_key_users_next(ptr noundef %p, ptr noundef %v, ptr noundef %_pos) #5 align 16 !dbg !4611 {
entry:
  %p.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %_pos.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4613, metadata !DIExpression()), !dbg !4616
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4614, metadata !DIExpression()), !dbg !4617
  store ptr %_pos, ptr %_pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_pos.addr, metadata !4615, metadata !DIExpression()), !dbg !4618
  %0 = load ptr, ptr %_pos.addr, align 8, !dbg !4619
  %1 = load i64, ptr %0, align 8, !dbg !4620
  %inc = add i64 %1, 1, !dbg !4620
  store i64 %inc, ptr %0, align 8, !dbg !4620
  %2 = load ptr, ptr %p.addr, align 8, !dbg !4621
  %call = call ptr @seq_user_ns(ptr noundef %2) #12, !dbg !4622
  %3 = load ptr, ptr %v.addr, align 8, !dbg !4623
  %call1 = call ptr @key_user_next(ptr noundef %call, ptr noundef %3) #12, !dbg !4624
  ret ptr %call1, !dbg !4625
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @proc_key_users_show(ptr noundef %m, ptr noundef %v) #5 align 16 !dbg !4626 {
entry:
  %m.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %_p = alloca ptr, align 8
  %user = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %maxkeys = alloca i32, align 4
  %.compoundliteral = alloca %struct.kuid_t, align 4
  %maxbytes = alloca i32, align 4
  %.compoundliteral3 = alloca %struct.kuid_t, align 4
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !4628, metadata !DIExpression()), !dbg !4636
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4629, metadata !DIExpression()), !dbg !4637
  call void @llvm.lifetime.start.p0(i64 8, ptr %_p) #11, !dbg !4638
  call void @llvm.dbg.declare(metadata ptr %_p, metadata !4630, metadata !DIExpression()), !dbg !4639
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4640
  store ptr %0, ptr %_p, align 8, !dbg !4639
  call void @llvm.lifetime.start.p0(i64 8, ptr %user) #11, !dbg !4641
  call void @llvm.dbg.declare(metadata ptr %user, metadata !4631, metadata !DIExpression()), !dbg !4642
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !4643
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4632, metadata !DIExpression()), !dbg !4643
  %1 = load ptr, ptr %_p, align 8, !dbg !4643
  store ptr %1, ptr %__mptr, align 8, !dbg !4643
  %2 = load ptr, ptr %__mptr, align 8, !dbg !4643
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !4643
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4643
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !4644
  %3 = load ptr, ptr %tmp, align 8, !dbg !4643
  store ptr %3, ptr %user, align 8, !dbg !4642
  call void @llvm.lifetime.start.p0(i64 4, ptr %maxkeys) #11, !dbg !4645
  call void @llvm.dbg.declare(metadata ptr %maxkeys, metadata !4634, metadata !DIExpression()), !dbg !4646
  %4 = load ptr, ptr %user, align 8, !dbg !4647
  %uid = getelementptr inbounds %struct.key_user, ptr %4, i32 0, i32 6, !dbg !4648
  %val = getelementptr inbounds %struct.kuid_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !4649
  store i32 0, ptr %val, align 4, !dbg !4649
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !4650
  %5 = load i32, ptr %coerce.dive, align 8, !dbg !4650
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !4650
  %6 = load i32, ptr %coerce.dive1, align 4, !dbg !4650
  %call = call zeroext i1 @uid_eq(i32 %5, i32 %6) #12, !dbg !4650
  br i1 %call, label %cond.true, label %cond.false, !dbg !4650

cond.true:                                        ; preds = %entry
  %7 = load i32, ptr @key_quota_root_maxkeys, align 4, !dbg !4651
  br label %cond.end, !dbg !4650

cond.false:                                       ; preds = %entry
  %8 = load i32, ptr @key_quota_maxkeys, align 4, !dbg !4652
  br label %cond.end, !dbg !4650

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ %8, %cond.false ], !dbg !4650
  store i32 %cond, ptr %maxkeys, align 4, !dbg !4646
  call void @llvm.lifetime.start.p0(i64 4, ptr %maxbytes) #11, !dbg !4653
  call void @llvm.dbg.declare(metadata ptr %maxbytes, metadata !4635, metadata !DIExpression()), !dbg !4654
  %9 = load ptr, ptr %user, align 8, !dbg !4655
  %uid2 = getelementptr inbounds %struct.key_user, ptr %9, i32 0, i32 6, !dbg !4656
  %val4 = getelementptr inbounds %struct.kuid_t, ptr %.compoundliteral3, i32 0, i32 0, !dbg !4657
  store i32 0, ptr %val4, align 4, !dbg !4657
  %coerce.dive5 = getelementptr inbounds %struct.kuid_t, ptr %uid2, i32 0, i32 0, !dbg !4658
  %10 = load i32, ptr %coerce.dive5, align 8, !dbg !4658
  %coerce.dive6 = getelementptr inbounds %struct.kuid_t, ptr %.compoundliteral3, i32 0, i32 0, !dbg !4658
  %11 = load i32, ptr %coerce.dive6, align 4, !dbg !4658
  %call7 = call zeroext i1 @uid_eq(i32 %10, i32 %11) #12, !dbg !4658
  br i1 %call7, label %cond.true8, label %cond.false9, !dbg !4658

cond.true8:                                       ; preds = %cond.end
  %12 = load i32, ptr @key_quota_root_maxbytes, align 4, !dbg !4659
  br label %cond.end10, !dbg !4658

cond.false9:                                      ; preds = %cond.end
  %13 = load i32, ptr @key_quota_maxbytes, align 4, !dbg !4660
  br label %cond.end10, !dbg !4658

cond.end10:                                       ; preds = %cond.false9, %cond.true8
  %cond11 = phi i32 [ %12, %cond.true8 ], [ %13, %cond.false9 ], !dbg !4658
  store i32 %cond11, ptr %maxbytes, align 4, !dbg !4654
  %14 = load ptr, ptr %m.addr, align 8, !dbg !4661
  %15 = load ptr, ptr %m.addr, align 8, !dbg !4662
  %call12 = call ptr @seq_user_ns(ptr noundef %15) #12, !dbg !4663
  %16 = load ptr, ptr %user, align 8, !dbg !4664
  %uid13 = getelementptr inbounds %struct.key_user, ptr %16, i32 0, i32 6, !dbg !4665
  %coerce.dive14 = getelementptr inbounds %struct.kuid_t, ptr %uid13, i32 0, i32 0, !dbg !4666
  %17 = load i32, ptr %coerce.dive14, align 8, !dbg !4666
  %call15 = call i32 @from_kuid_munged(ptr noundef %call12, i32 %17) #12, !dbg !4666
  %18 = load ptr, ptr %user, align 8, !dbg !4667
  %usage = getelementptr inbounds %struct.key_user, ptr %18, i32 0, i32 3, !dbg !4668
  %call16 = call i32 @refcount_read(ptr noundef %usage) #12, !dbg !4669
  %19 = load ptr, ptr %user, align 8, !dbg !4670
  %nkeys = getelementptr inbounds %struct.key_user, ptr %19, i32 0, i32 4, !dbg !4671
  %call17 = call i32 @atomic_read(ptr noundef %nkeys) #12, !dbg !4672
  %20 = load ptr, ptr %user, align 8, !dbg !4673
  %nikeys = getelementptr inbounds %struct.key_user, ptr %20, i32 0, i32 5, !dbg !4674
  %call18 = call i32 @atomic_read(ptr noundef %nikeys) #12, !dbg !4675
  %21 = load ptr, ptr %user, align 8, !dbg !4676
  %qnkeys = getelementptr inbounds %struct.key_user, ptr %21, i32 0, i32 7, !dbg !4677
  %22 = load i32, ptr %qnkeys, align 4, !dbg !4677
  %23 = load i32, ptr %maxkeys, align 4, !dbg !4678
  %24 = load ptr, ptr %user, align 8, !dbg !4679
  %qnbytes = getelementptr inbounds %struct.key_user, ptr %24, i32 0, i32 8, !dbg !4680
  %25 = load i32, ptr %qnbytes, align 8, !dbg !4680
  %26 = load i32, ptr %maxbytes, align 4, !dbg !4681
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %14, ptr noundef @.str.12, i32 noundef %call15, i32 noundef %call16, i32 noundef %call17, i32 noundef %call18, i32 noundef %22, i32 noundef %23, i32 noundef %25, i32 noundef %26) #12, !dbg !4682
  call void @llvm.lifetime.end.p0(i64 4, ptr %maxbytes) #11, !dbg !4683
  call void @llvm.lifetime.end.p0(i64 4, ptr %maxkeys) #11, !dbg !4683
  call void @llvm.lifetime.end.p0(i64 8, ptr %user) #11, !dbg !4683
  call void @llvm.lifetime.end.p0(i64 8, ptr %_p) #11, !dbg !4683
  ret i32 0, !dbg !4684
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @key_user_first(ptr noundef %user_ns, ptr noundef %r) #5 align 16 !dbg !4685 {
entry:
  %user_ns.addr = alloca ptr, align 8
  %r.addr = alloca ptr, align 8
  %n = alloca ptr, align 8
  store ptr %user_ns, ptr %user_ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %user_ns.addr, metadata !4690, metadata !DIExpression()), !dbg !4693
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4691, metadata !DIExpression()), !dbg !4694
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #11, !dbg !4695
  call void @llvm.dbg.declare(metadata ptr %n, metadata !4692, metadata !DIExpression()), !dbg !4696
  %0 = load ptr, ptr %r.addr, align 8, !dbg !4697
  %call = call ptr @rb_first(ptr noundef %0) #12, !dbg !4698
  store ptr %call, ptr %n, align 8, !dbg !4696
  %1 = load ptr, ptr %user_ns.addr, align 8, !dbg !4699
  %2 = load ptr, ptr %n, align 8, !dbg !4700
  %call1 = call ptr @__key_user_next(ptr noundef %1, ptr noundef %2) #12, !dbg !4701
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #11, !dbg !4702
  ret ptr %call1, !dbg !4703
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @key_user_next(ptr noundef %user_ns, ptr noundef %n) #5 align 16 !dbg !4704 {
entry:
  %user_ns.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  store ptr %user_ns, ptr %user_ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %user_ns.addr, metadata !4708, metadata !DIExpression()), !dbg !4710
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4709, metadata !DIExpression()), !dbg !4711
  %0 = load ptr, ptr %user_ns.addr, align 8, !dbg !4712
  %1 = load ptr, ptr %n.addr, align 8, !dbg !4713
  %call = call ptr @rb_next(ptr noundef %1) #12, !dbg !4714
  %call1 = call ptr @__key_user_next(ptr noundef %0, ptr noundef %call) #12, !dbg !4715
  ret ptr %call1, !dbg !4716
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4717 dso_local ptr @rb_first(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__key_user_next(ptr noundef %user_ns, ptr noundef %n) #5 align 16 !dbg !4722 {
entry:
  %user_ns.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %user = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %user_ns, ptr %user_ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %user_ns.addr, metadata !4724, metadata !DIExpression()), !dbg !4730
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4725, metadata !DIExpression()), !dbg !4731
  br label %while.cond, !dbg !4732

while.cond:                                       ; preds = %cleanup.cont, %entry
  %0 = load ptr, ptr %n.addr, align 8, !dbg !4733
  %tobool = icmp ne ptr %0, null, !dbg !4732
  br i1 %tobool, label %while.body, label %while.end, !dbg !4732

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %user) #11, !dbg !4734
  call void @llvm.dbg.declare(metadata ptr %user, metadata !4726, metadata !DIExpression()), !dbg !4735
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !4736
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4728, metadata !DIExpression()), !dbg !4736
  %1 = load ptr, ptr %n.addr, align 8, !dbg !4736
  store ptr %1, ptr %__mptr, align 8, !dbg !4736
  %2 = load ptr, ptr %__mptr, align 8, !dbg !4736
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !4736
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4736
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !4737
  %3 = load ptr, ptr %tmp, align 8, !dbg !4736
  store ptr %3, ptr %user, align 8, !dbg !4735
  %4 = load ptr, ptr %user_ns.addr, align 8, !dbg !4738
  %5 = load ptr, ptr %user, align 8, !dbg !4740
  %uid = getelementptr inbounds %struct.key_user, ptr %5, i32 0, i32 6, !dbg !4741
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !4742
  %6 = load i32, ptr %coerce.dive, align 8, !dbg !4742
  %call = call zeroext i1 @kuid_has_mapping(ptr noundef %4, i32 %6) #12, !dbg !4742
  br i1 %call, label %if.then, label %if.end, !dbg !4743

if.then:                                          ; preds = %while.body
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4744

if.end:                                           ; preds = %while.body
  %7 = load ptr, ptr %n.addr, align 8, !dbg !4745
  %call1 = call ptr @rb_next(ptr noundef %7) #12, !dbg !4746
  store ptr %call1, ptr %n.addr, align 8, !dbg !4747
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4748
  br label %cleanup, !dbg !4748

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %user) #11, !dbg !4748
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !4732, !llvm.loop !4749

while.end:                                        ; preds = %cleanup, %while.cond
  %8 = load ptr, ptr %n.addr, align 8, !dbg !4750
  ret ptr %8, !dbg !4751

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @uid_eq(i32 %left.coerce, i32 %right.coerce) #7 align 16 !dbg !4752 {
entry:
  %left = alloca %struct.kuid_t, align 4
  %right = alloca %struct.kuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %left, i32 0, i32 0
  store i32 %left.coerce, ptr %coerce.dive, align 4
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %right, i32 0, i32 0
  store i32 %right.coerce, ptr %coerce.dive1, align 4
  call void @llvm.dbg.declare(metadata ptr %left, metadata !4756, metadata !DIExpression()), !dbg !4758
  call void @llvm.dbg.declare(metadata ptr %right, metadata !4757, metadata !DIExpression()), !dbg !4759
  %coerce.dive2 = getelementptr inbounds %struct.kuid_t, ptr %left, i32 0, i32 0, !dbg !4760
  %0 = load i32, ptr %coerce.dive2, align 4, !dbg !4760
  %call = call i32 @__kuid_val(i32 %0) #12, !dbg !4760
  %coerce.dive3 = getelementptr inbounds %struct.kuid_t, ptr %right, i32 0, i32 0, !dbg !4761
  %1 = load i32, ptr %coerce.dive3, align 4, !dbg !4761
  %call4 = call i32 @__kuid_val(i32 %1) #12, !dbg !4761
  %cmp = icmp eq i32 %call, %call4, !dbg !4762
  ret i1 %cmp, !dbg !4763
}

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { cold noredzone noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { cold noredzone }
attributes #11 = { nounwind }
attributes #12 = { noredzone }
attributes #13 = { cold noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717}
!llvm.ident = !{!3718}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_proc__278_58_key_proc_init6279", scope: !2, file: !3, line: 58, type: !105, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF security/keys/.proc.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22security/keys/proc\22 -D KBUILD_BASENAME=\22proc\22 -D KBUILD_MODNAME=\22proc\22 -D __KBUILD_MODNAME=kmod_proc -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o security/keys/proc.ll security/keys/proc.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !104, globals: !3661, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "security/keys/proc.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3937a20252bd4388dfdee6281bb45385")
!4 = !{!5, !14, !21, !26, !32, !37, !43, !50, !58, !74, !81, !95, !99}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !6, line: 9, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!10 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!11 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!12 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!13 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kernel_pkey_operation", file: !15, line: 22, baseType: !7, size: 32, elements: !16)
!15 = !DIFile(filename: "./include/linux/keyctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb6b47c8f95fa53866d7002b6a7b8c6")
!16 = !{!17, !18, !19, !20}
!17 = !DIEnumerator(name: "kernel_pkey_encrypt", value: 0)
!18 = !DIEnumerator(name: "kernel_pkey_decrypt", value: 1)
!19 = !DIEnumerator(name: "kernel_pkey_sign", value: 2)
!20 = !DIEnumerator(name: "kernel_pkey_verify", value: 3)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !22, line: 2052, baseType: !7, size: 32, elements: !23)
!22 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!23 = !{!24, !25}
!24 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!25 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !27, line: 54, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!28 = !{!29, !30, !31}
!29 = !DIEnumerator(name: "USRQUOTA", value: 0)
!30 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!31 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !33, line: 65, baseType: !7, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!34 = !{!35, !36}
!35 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!36 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !38, line: 16, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!39 = !{!40, !41, !42}
!40 = !DIEnumerator(name: "TT_NONE", value: 0)
!41 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!42 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !44, line: 15, baseType: !7, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!45 = !{!46, !47, !48, !49}
!46 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!47 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!48 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!49 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !51, line: 68, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!52 = !{!53, !54, !55, !56, !57}
!53 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!54 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!55 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!56 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!57 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !59, line: 1325, baseType: !7, size: 32, elements: !60)
!59 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!60 = !{!61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73}
!61 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!62 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!63 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!64 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!65 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!66 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!67 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!68 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!69 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!70 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!71 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!72 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!73 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !75, line: 51, baseType: !7, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!76 = !{!77, !78, !79, !80}
!77 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!78 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!79 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!80 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "key_need_perm", file: !82, line: 77, baseType: !7, size: 32, elements: !83)
!82 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!83 = !{!84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94}
!84 = !DIEnumerator(name: "KEY_NEED_UNSPECIFIED", value: 0)
!85 = !DIEnumerator(name: "KEY_NEED_VIEW", value: 1)
!86 = !DIEnumerator(name: "KEY_NEED_READ", value: 2)
!87 = !DIEnumerator(name: "KEY_NEED_WRITE", value: 3)
!88 = !DIEnumerator(name: "KEY_NEED_SEARCH", value: 4)
!89 = !DIEnumerator(name: "KEY_NEED_LINK", value: 5)
!90 = !DIEnumerator(name: "KEY_NEED_SETATTR", value: 6)
!91 = !DIEnumerator(name: "KEY_NEED_UNLINK", value: 7)
!92 = !DIEnumerator(name: "KEY_SYSADMIN_OVERRIDE", value: 8)
!93 = !DIEnumerator(name: "KEY_AUTHTOKEN_OVERRIDE", value: 9)
!94 = !DIEnumerator(name: "KEY_DEFER_PERM_CHECK", value: 10)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "key_state", file: !82, line: 182, baseType: !7, size: 32, elements: !96)
!96 = !{!97, !98}
!97 = !DIEnumerator(name: "KEY_IS_UNINSTANTIATED", value: 0)
!98 = !DIEnumerator(name: "KEY_IS_POSITIVE", value: 1)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !100, line: 10, baseType: !7, size: 32, elements: !101)
!100 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!101 = !{!102, !103}
!102 = !DIEnumerator(name: "false", value: 0)
!103 = !DIEnumerator(name: "true", value: 1)
!104 = !{!105, !106, !107, !229, !3646, !157, !521, !3649, !3652, !142, !3655, !3658, !249, !198, !144}
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!106 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !82, line: 195, size: 1728, elements: !109)
!109 = !{!110, !121, !128, !146, !197, !234, !235, !242, !243, !244, !251, !256, !257, !258, !260, !261, !3629, !3645}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !108, file: !82, line: 196, baseType: !111, size: 32)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !112, line: 113, baseType: !113)
!112 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !112, line: 111, size: 32, elements: !114)
!114 = !{!115}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !113, file: !112, line: 112, baseType: !116, size: 32)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !117, line: 174, baseType: !118)
!117 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !117, line: 172, size: 32, elements: !119)
!119 = !{!120}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !118, file: !117, line: 173, baseType: !106, size: 32)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !108, file: !82, line: 197, baseType: !122, size: 32, offset: 32)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !82, line: 28, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !117, line: 104, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !125, line: 20, baseType: !126)
!125 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !127, line: 26, baseType: !106)
!127 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!128 = !DIDerivedType(tag: DW_TAG_member, scope: !108, file: !82, line: 198, baseType: !129, size: 192, offset: 64)
!129 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !108, file: !82, line: 198, size: 192, elements: !130)
!130 = !{!131, !137}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !129, file: !82, line: 199, baseType: !132, size: 128)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !117, line: 190, size: 128, elements: !133)
!133 = !{!134, !136}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !132, file: !117, line: 191, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !132, file: !117, line: 191, baseType: !135, size: 64, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !129, file: !82, line: 200, baseType: !138, size: 192, align: 64)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !139, line: 5, size: 192, align: 64, elements: !140)
!139 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!140 = !{!141, !143, !145}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !138, file: !139, line: 6, baseType: !142, size: 64)
!142 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !138, file: !139, line: 7, baseType: !144, size: 64, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !138, file: !139, line: 8, baseType: !144, size: 64, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !108, file: !82, line: 205, baseType: !147, size: 320, offset: 256)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !148, line: 48, size: 320, elements: !149)
!148 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!149 = !{!150, !160, !161, !166, !196}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !147, file: !148, line: 49, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !152, line: 13, baseType: !153)
!152 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !117, line: 181, baseType: !154)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !117, line: 179, size: 64, elements: !155)
!155 = !{!156}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !154, file: !117, line: 180, baseType: !157, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !125, line: 22, baseType: !158)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !127, line: 30, baseType: !159)
!159 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !147, file: !148, line: 55, baseType: !151, size: 64, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !147, file: !148, line: 57, baseType: !162, size: 32, offset: 128)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !163, line: 15, size: 32, elements: !164)
!163 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!164 = !{!165}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !162, file: !163, line: 20, baseType: !116, size: 32)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !147, file: !148, line: 59, baseType: !167, size: 32, offset: 160)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !168, line: 23, baseType: !169)
!168 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !168, line: 14, size: 32, elements: !170)
!170 = !{!171}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !169, file: !168, line: 15, baseType: !172, size: 32)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !173, line: 44, baseType: !174)
!173 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !173, line: 14, size: 32, elements: !175)
!175 = !{!176}
!176 = !DIDerivedType(tag: DW_TAG_member, scope: !174, file: !173, line: 15, baseType: !177, size: 32)
!177 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !174, file: !173, line: 15, size: 32, elements: !178)
!178 = !{!179, !180, !188}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !177, file: !173, line: 16, baseType: !116, size: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, scope: !177, file: !173, line: 24, baseType: !181, size: 16)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !177, file: !173, line: 24, size: 16, elements: !182)
!182 = !{!183, !187}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !181, file: !173, line: 25, baseType: !184, size: 8)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !125, line: 17, baseType: !185)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !127, line: 21, baseType: !186)
!186 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !181, file: !173, line: 26, baseType: !184, size: 8, offset: 8)
!188 = !DIDerivedType(tag: DW_TAG_member, scope: !177, file: !173, line: 28, baseType: !189, size: 32)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !177, file: !173, line: 28, size: 32, elements: !190)
!190 = !{!191, !195}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !189, file: !173, line: 29, baseType: !192, size: 16)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !125, line: 19, baseType: !193)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !127, line: 24, baseType: !194)
!194 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !189, file: !173, line: 30, baseType: !192, size: 16, offset: 16)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !147, file: !148, line: 60, baseType: !132, size: 128, offset: 192)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !108, file: !82, line: 206, baseType: !198, size: 64, offset: 576)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !200, line: 54, size: 704, elements: !201)
!200 = !DIFile(filename: "security/keys/internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "65e07b4072a82be19b875e4a608fcbf3")
!201 = !{!202, !203, !211, !220, !221, !222, !223, !232, !233}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !199, file: !200, line: 55, baseType: !138, size: 192, align: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "cons_lock", scope: !199, file: !200, line: 56, baseType: !204, size: 256, offset: 192)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !205, line: 66, size: 256, elements: !206)
!205 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!206 = !{!207, !208, !209, !210}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !204, file: !205, line: 67, baseType: !151, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !204, file: !205, line: 68, baseType: !167, size: 32, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !204, file: !205, line: 70, baseType: !162, size: 32, offset: 96)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !204, file: !205, line: 72, baseType: !132, size: 128, offset: 128)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !199, file: !200, line: 57, baseType: !212, size: 32, offset: 448)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !213, line: 29, baseType: !214)
!213 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !213, line: 17, size: 32, elements: !215)
!215 = !{!216}
!216 = !DIDerivedType(tag: DW_TAG_member, scope: !214, file: !213, line: 18, baseType: !217, size: 32)
!217 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !214, file: !213, line: 18, size: 32, elements: !218)
!218 = !{!219}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !217, file: !213, line: 19, baseType: !169, size: 32)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !199, file: !200, line: 58, baseType: !111, size: 32, offset: 480)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "nkeys", scope: !199, file: !200, line: 59, baseType: !116, size: 32, offset: 512)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "nikeys", scope: !199, file: !200, line: 60, baseType: !116, size: 32, offset: 544)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !199, file: !200, line: 61, baseType: !224, size: 32, offset: 576)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !225, line: 23, baseType: !226)
!225 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !225, line: 21, size: 32, elements: !227)
!227 = !{!228}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !226, file: !225, line: 22, baseType: !229, size: 32)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !117, line: 37, baseType: !230)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !231, line: 49, baseType: !7)
!231 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!232 = !DIDerivedType(tag: DW_TAG_member, name: "qnkeys", scope: !199, file: !200, line: 62, baseType: !106, size: 32, offset: 608)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "qnbytes", scope: !199, file: !200, line: 63, baseType: !106, size: 32, offset: 640)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !108, file: !82, line: 207, baseType: !105, size: 64, offset: 640)
!235 = !DIDerivedType(tag: DW_TAG_member, scope: !108, file: !82, line: 208, baseType: !236, size: 64, offset: 704)
!236 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !108, file: !82, line: 208, size: 64, elements: !237)
!237 = !{!238, !241}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !236, file: !82, line: 209, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !240, line: 8, baseType: !158)
!240 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!241 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !236, file: !82, line: 210, baseType: !239, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !108, file: !82, line: 212, baseType: !239, size: 64, offset: 768)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !108, file: !82, line: 213, baseType: !224, size: 32, offset: 832)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !108, file: !82, line: 214, baseType: !245, size: 32, offset: 864)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !225, line: 28, baseType: !246)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !225, line: 26, size: 32, elements: !247)
!247 = !{!248}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !246, file: !225, line: 27, baseType: !249, size: 32)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !117, line: 38, baseType: !250)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !231, line: 50, baseType: !7)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !108, file: !82, line: 215, baseType: !252, size: 32, offset: 896)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !82, line: 31, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !117, line: 110, baseType: !254)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !125, line: 21, baseType: !255)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !127, line: 27, baseType: !7)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !108, file: !82, line: 216, baseType: !194, size: 16, offset: 928)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !108, file: !82, line: 217, baseType: !194, size: 16, offset: 944)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !108, file: !82, line: 221, baseType: !259, size: 16, offset: 960)
!259 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !108, file: !82, line: 228, baseType: !142, size: 64, offset: 1024)
!261 = !DIDerivedType(tag: DW_TAG_member, scope: !108, file: !82, line: 245, baseType: !262, size: 320, offset: 1088)
!262 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !108, file: !82, line: 245, size: 320, elements: !263)
!263 = !{!264, !3621}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !262, file: !82, line: 246, baseType: !265, size: 320)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !82, line: 114, size: 320, elements: !266)
!266 = !{!267, !268, !281, !3613, !3620}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !265, file: !82, line: 116, baseType: !142, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, scope: !265, file: !82, line: 117, baseType: !269, size: 64, offset: 64)
!269 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !265, file: !82, line: 117, size: 64, elements: !270)
!270 = !{!271, !280}
!271 = !DIDerivedType(tag: DW_TAG_member, scope: !269, file: !82, line: 118, baseType: !272, size: 64)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !269, file: !82, line: 118, size: 64, elements: !273)
!273 = !{!274, !275}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !272, file: !82, line: 120, baseType: !192, size: 16)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !272, file: !82, line: 121, baseType: !276, size: 48, offset: 16)
!276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 48, elements: !278)
!277 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!278 = !{!279}
!279 = !DISubrange(count: 6)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !269, file: !82, line: 127, baseType: !142, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !265, file: !82, line: 129, baseType: !282, size: 64, offset: 128)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !284, line: 64, size: 1344, elements: !285)
!284 = !DIFile(filename: "./include/linux/key-type.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79a6b816f9397cf1462a94b9d3d8f5a6")
!285 = !{!286, !289, !293, !294, !298, !322, !326, !330, !331, !351, !355, !359, !360, !3547, !3551, !3556, !3574, !3602, !3607, !3611, !3612}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !283, file: !284, line: 66, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !277)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "def_datalen", scope: !283, file: !284, line: 72, baseType: !290, size: 64, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !117, line: 61, baseType: !291)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !231, line: 72, baseType: !292)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !231, line: 16, baseType: !142)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !283, file: !284, line: 74, baseType: !7, size: 32, offset: 128)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "vet_description", scope: !283, file: !284, line: 79, baseType: !295, size: 64, offset: 192)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DISubroutineType(types: !297)
!297 = !{!106, !287}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "preparse", scope: !283, file: !284, line: 85, baseType: !299, size: 64, offset: 256)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DISubroutineType(types: !301)
!301 = !{!106, !302}
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_preparsed_payload", file: !284, line: 31, size: 640, elements: !304)
!304 = !{!305, !306, !308, !316, !319, !320, !321}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "orig_description", scope: !303, file: !284, line: 32, baseType: !287, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !303, file: !284, line: 33, baseType: !307, size: 64, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !303, file: !284, line: 34, baseType: !309, size: 256, offset: 128)
!309 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !82, line: 134, size: 256, elements: !310)
!310 = !{!311, !312}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !309, file: !82, line: 135, baseType: !105, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !309, file: !82, line: 136, baseType: !313, size: 256)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 256, elements: !314)
!314 = !{!315}
!315 = !DISubrange(count: 4)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !303, file: !284, line: 35, baseType: !317, size: 64, offset: 384)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !303, file: !284, line: 36, baseType: !290, size: 64, offset: 448)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !303, file: !284, line: 37, baseType: !290, size: 64, offset: 512)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !303, file: !284, line: 38, baseType: !239, size: 64, offset: 576)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "free_preparse", scope: !283, file: !284, line: 89, baseType: !323, size: 64, offset: 320)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{null, !302}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "instantiate", scope: !283, file: !284, line: 95, baseType: !327, size: 64, offset: 384)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!106, !107, !302}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !283, file: !284, line: 102, baseType: !327, size: 64, offset: 448)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "match_preparse", scope: !283, file: !284, line: 108, baseType: !332, size: 64, offset: 512)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!106, !335}
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_match_data", file: !284, line: 46, size: 256, elements: !337)
!337 = !{!338, !348, !349, !350}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "cmp", scope: !336, file: !284, line: 51, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DISubroutineType(types: !341)
!341 = !{!342, !344, !346}
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !117, line: 35, baseType: !343)
!343 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !336)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "raw_data", scope: !336, file: !284, line: 54, baseType: !317, size: 64, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "preparsed", scope: !336, file: !284, line: 55, baseType: !105, size: 64, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_type", scope: !336, file: !284, line: 56, baseType: !7, size: 32, offset: 192)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "match_free", scope: !283, file: !284, line: 112, baseType: !352, size: 64, offset: 576)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DISubroutineType(types: !354)
!354 = !{null, !335}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "revoke", scope: !283, file: !284, line: 117, baseType: !356, size: 64, offset: 640)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DISubroutineType(types: !358)
!358 = !{null, !107}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !283, file: !284, line: 120, baseType: !356, size: 64, offset: 704)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "describe", scope: !283, file: !284, line: 123, baseType: !361, size: 64, offset: 768)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DISubroutineType(types: !363)
!363 = !{null, !344, !364}
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !366, line: 17, size: 960, elements: !367)
!366 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!367 = !{!368, !369, !370, !371, !372, !373, !376, !377, !378, !400, !401, !3546}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !365, file: !366, line: 18, baseType: !307, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !365, file: !366, line: 19, baseType: !290, size: 64, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !365, file: !366, line: 20, baseType: !290, size: 64, offset: 128)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !365, file: !366, line: 21, baseType: !290, size: 64, offset: 192)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !365, file: !366, line: 22, baseType: !290, size: 64, offset: 256)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !365, file: !366, line: 23, baseType: !374, size: 64, offset: 320)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !117, line: 52, baseType: !375)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !231, line: 88, baseType: !159)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !365, file: !366, line: 24, baseType: !374, size: 64, offset: 384)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !365, file: !366, line: 25, baseType: !204, size: 256, offset: 448)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !365, file: !366, line: 26, baseType: !379, size: 64, offset: 704)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !381)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !366, line: 32, size: 256, elements: !382)
!382 = !{!383, !388, !392, !396}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !381, file: !366, line: 33, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DISubroutineType(types: !386)
!386 = !{!105, !364, !387}
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !381, file: !366, line: 34, baseType: !389, size: 64, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DISubroutineType(types: !391)
!391 = !{null, !364, !105}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !381, file: !366, line: 35, baseType: !393, size: 64, offset: 128)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DISubroutineType(types: !395)
!395 = !{!105, !364, !105, !387}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !381, file: !366, line: 36, baseType: !397, size: 64, offset: 192)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DISubroutineType(types: !399)
!399 = !{!106, !364, !105}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !365, file: !366, line: 27, baseType: !106, size: 32, offset: 768)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !365, file: !366, line: 28, baseType: !402, size: 64, offset: 832)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !404)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !22, line: 994, size: 1856, align: 64, elements: !405)
!405 = !{!406, !425, !426, !428, !429, !430, !431, !432, !499, !585, !594, !3536, !3537, !3538, !3539, !3540, !3541, !3543, !3544, !3545}
!406 = !DIDerivedType(tag: DW_TAG_member, scope: !404, file: !22, line: 995, baseType: !407, size: 128)
!407 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !404, file: !22, line: 995, size: 128, elements: !408)
!408 = !{!409, !415, !424}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !407, file: !22, line: 996, baseType: !410, size: 64)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !411, line: 60, size: 64, elements: !412)
!411 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!412 = !{!413}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !410, file: !411, line: 61, baseType: !414, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !407, file: !22, line: 997, baseType: !416, size: 128, align: 64)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !117, line: 232, size: 128, align: 64, elements: !417)
!417 = !{!418, !420}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !416, file: !117, line: 233, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !416, file: !117, line: 234, baseType: !421, size: 64, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DISubroutineType(types: !423)
!423 = !{null, !419}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !407, file: !22, line: 998, baseType: !7, size: 32)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !404, file: !22, line: 1005, baseType: !212, size: 32, offset: 128)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !404, file: !22, line: 1006, baseType: !427, size: 32, offset: 160)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !117, line: 156, baseType: !7)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !404, file: !22, line: 1007, baseType: !151, size: 64, offset: 192)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !404, file: !22, line: 1008, baseType: !204, size: 256, offset: 256)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !404, file: !22, line: 1009, baseType: !374, size: 64, offset: 512)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !404, file: !22, line: 1010, baseType: !7, size: 32, offset: 576)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !404, file: !22, line: 1011, baseType: !433, size: 256, offset: 640)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !22, line: 948, size: 256, elements: !434)
!434 = !{!435, !458, !495, !496, !497, !498}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !433, file: !22, line: 949, baseType: !436, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !437, line: 34, baseType: !438)
!437 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !437, line: 25, size: 64, elements: !439)
!439 = !{!440}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !438, file: !437, line: 26, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !442, line: 27, baseType: !443)
!442 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !442, line: 13, size: 64, elements: !444)
!444 = !{!445, !457}
!445 = !DIDerivedType(tag: DW_TAG_member, scope: !443, file: !442, line: 14, baseType: !446, size: 32)
!446 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !443, file: !442, line: 14, size: 32, elements: !447)
!447 = !{!448, !449}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !446, file: !442, line: 15, baseType: !116, size: 32)
!449 = !DIDerivedType(tag: DW_TAG_member, scope: !446, file: !442, line: 16, baseType: !450, size: 32)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !446, file: !442, line: 16, size: 32, elements: !451)
!451 = !{!452, !453}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !450, file: !442, line: 18, baseType: !184, size: 8)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !450, file: !442, line: 19, baseType: !454, size: 24, offset: 8)
!454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 24, elements: !455)
!455 = !{!456}
!456 = !DISubrange(count: 3)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !443, file: !442, line: 26, baseType: !172, size: 32, offset: 32)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !433, file: !22, line: 950, baseType: !459, size: 64, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !6, line: 59, size: 768, elements: !461)
!461 = !{!462, !463, !464, !465, !476, !477, !484, !485}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !460, file: !6, line: 61, baseType: !111, size: 32)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !460, file: !6, line: 62, baseType: !7, size: 32, offset: 32)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !460, file: !6, line: 63, baseType: !212, size: 32, offset: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !460, file: !6, line: 65, baseType: !466, size: 256, offset: 128)
!466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !467, size: 256, elements: !314)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !117, line: 194, size: 64, elements: !468)
!468 = !{!469}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !467, file: !117, line: 195, baseType: !470, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !117, line: 198, size: 128, elements: !472)
!472 = !{!473, !474}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !471, file: !117, line: 199, baseType: !470, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !471, file: !117, line: 199, baseType: !475, size: 64, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !460, file: !6, line: 66, baseType: !467, size: 64, offset: 384)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !460, file: !6, line: 68, baseType: !478, size: 192, offset: 448)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !479, line: 41, baseType: !480)
!479 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !479, line: 37, size: 192, elements: !481)
!481 = !{!482, !483}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !480, file: !479, line: 38, baseType: !212, size: 32)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !480, file: !479, line: 39, baseType: !132, size: 128, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !460, file: !6, line: 69, baseType: !416, size: 128, align: 64, offset: 640)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !460, file: !6, line: 70, baseType: !486, offset: 768)
!486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !487, elements: !493)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !6, line: 54, size: 128, elements: !488)
!488 = !{!489, !490}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !487, file: !6, line: 55, baseType: !106, size: 32)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !487, file: !6, line: 56, baseType: !491, size: 64, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !6, line: 56, flags: DIFlagFwdDecl)
!493 = !{!494}
!494 = !DISubrange(count: -1)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !433, file: !22, line: 951, baseType: !5, size: 32, offset: 128)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !433, file: !22, line: 952, baseType: !224, size: 32, offset: 160)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !433, file: !22, line: 952, baseType: !224, size: 32, offset: 192)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !433, file: !22, line: 953, baseType: !106, size: 32, offset: 224)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !404, file: !22, line: 1012, baseType: !500, size: 64, offset: 896)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !502)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !503, line: 110, size: 1472, elements: !504)
!503 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!504 = !{!505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !565, !568, !572, !580}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !502, file: !503, line: 111, baseType: !151, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !502, file: !503, line: 112, baseType: !224, size: 32, offset: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !502, file: !503, line: 113, baseType: !245, size: 32, offset: 96)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !502, file: !503, line: 114, baseType: !224, size: 32, offset: 128)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !502, file: !503, line: 115, baseType: !245, size: 32, offset: 160)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !502, file: !503, line: 116, baseType: !224, size: 32, offset: 192)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !502, file: !503, line: 117, baseType: !245, size: 32, offset: 224)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !502, file: !503, line: 118, baseType: !224, size: 32, offset: 256)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !502, file: !503, line: 119, baseType: !245, size: 32, offset: 288)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !502, file: !503, line: 120, baseType: !7, size: 32, offset: 320)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !502, file: !503, line: 121, baseType: !516, size: 64, offset: 384)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !517, line: 24, baseType: !518)
!517 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !517, line: 24, size: 64, elements: !519)
!519 = !{!520}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !518, file: !517, line: 24, baseType: !521, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !125, line: 23, baseType: !522)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !127, line: 31, baseType: !523)
!523 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !502, file: !503, line: 122, baseType: !516, size: 64, offset: 448)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !502, file: !503, line: 123, baseType: !516, size: 64, offset: 512)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !502, file: !503, line: 124, baseType: !516, size: 64, offset: 576)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !502, file: !503, line: 125, baseType: !516, size: 64, offset: 640)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !502, file: !503, line: 127, baseType: !186, size: 8, offset: 704)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !502, file: !503, line: 129, baseType: !107, size: 64, offset: 768)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !502, file: !503, line: 130, baseType: !107, size: 64, offset: 832)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !502, file: !503, line: 131, baseType: !107, size: 64, offset: 896)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !502, file: !503, line: 132, baseType: !107, size: 64, offset: 960)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !502, file: !503, line: 135, baseType: !105, size: 64, offset: 1024)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !502, file: !503, line: 137, baseType: !535, size: 64, offset: 1088)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !537, line: 14, size: 1088, elements: !538)
!537 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!538 = !{!539, !540, !549, !550, !551, !552, !553, !554}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !536, file: !537, line: 15, baseType: !111, size: 32)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !536, file: !537, line: 17, baseType: !541, size: 320, offset: 64)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !542, line: 22, size: 320, elements: !543)
!542 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!543 = !{!544, !545, !546, !547}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !541, file: !542, line: 23, baseType: !167, size: 32)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !541, file: !542, line: 24, baseType: !157, size: 64, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !541, file: !542, line: 26, baseType: !132, size: 128, offset: 128)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !541, file: !542, line: 28, baseType: !548, size: 64, offset: 256)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !536, file: !537, line: 19, baseType: !142, size: 64, offset: 384)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !536, file: !537, line: 20, baseType: !151, size: 64, offset: 448)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !536, file: !537, line: 23, baseType: !471, size: 128, offset: 512)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !536, file: !537, line: 24, baseType: !224, size: 32, offset: 640)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !536, file: !537, line: 29, baseType: !151, size: 64, offset: 704)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !536, file: !537, line: 36, baseType: !555, size: 320, offset: 768)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !556, line: 15, size: 320, elements: !557)
!556 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!557 = !{!558, !559, !560, !561, !562, !563, !564}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !555, file: !556, line: 16, baseType: !167, size: 32)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !555, file: !556, line: 18, baseType: !106, size: 32, offset: 32)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !555, file: !556, line: 19, baseType: !106, size: 32, offset: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !555, file: !556, line: 20, baseType: !106, size: 32, offset: 96)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !555, file: !556, line: 21, baseType: !106, size: 32, offset: 128)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !555, file: !556, line: 22, baseType: !142, size: 64, offset: 192)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !555, file: !556, line: 23, baseType: !142, size: 64, offset: 256)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !502, file: !503, line: 138, baseType: !566, size: 64, offset: 1152)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !225, line: 18, flags: DIFlagFwdDecl)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !502, file: !503, line: 139, baseType: !569, size: 64, offset: 1216)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !571, line: 16, flags: DIFlagFwdDecl)
!571 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!572 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !502, file: !503, line: 140, baseType: !573, size: 64, offset: 1280)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !503, line: 25, size: 64, elements: !575)
!575 = !{!576, !577, !578}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !574, file: !503, line: 26, baseType: !116, size: 32)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !574, file: !503, line: 27, baseType: !106, size: 32, offset: 32)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !574, file: !503, line: 28, baseType: !579, offset: 64)
!579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, elements: !493)
!580 = !DIDerivedType(tag: DW_TAG_member, scope: !502, file: !503, line: 142, baseType: !581, size: 128, offset: 1344)
!581 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !502, file: !503, line: 142, size: 128, elements: !582)
!582 = !{!583, !584}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !581, file: !503, line: 143, baseType: !106, size: 32)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !581, file: !503, line: 144, baseType: !416, size: 128, align: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !404, file: !22, line: 1013, baseType: !586, size: 256, offset: 960)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !22, line: 970, size: 256, elements: !587)
!587 = !{!588, !589, !590, !591, !592, !593}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !586, file: !22, line: 971, baseType: !142, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !586, file: !22, line: 972, baseType: !7, size: 32, offset: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !586, file: !22, line: 973, baseType: !7, size: 32, offset: 96)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !586, file: !22, line: 974, baseType: !7, size: 32, offset: 128)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !586, file: !22, line: 975, baseType: !7, size: 32, offset: 160)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !586, file: !22, line: 976, baseType: !374, size: 64, offset: 192)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !404, file: !22, line: 1014, baseType: !595, size: 128, offset: 1216)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !596, line: 8, size: 128, elements: !597)
!596 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!597 = !{!598, !3535}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !595, file: !596, line: 9, baseType: !599, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !601, line: 70, size: 256, elements: !602)
!601 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!602 = !{!603, !3532, !3533, !3534}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !600, file: !601, line: 71, baseType: !604, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !606, line: 82, size: 1536, elements: !607)
!606 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!607 = !{!608, !609, !619, !627, !628, !643, !3499, !3501, !3514, !3515, !3516, !3517, !3518, !3524, !3525, !3526}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !605, file: !606, line: 84, baseType: !7, size: 32)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !605, file: !606, line: 85, baseType: !610, size: 32, offset: 32)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !611, line: 275, baseType: !612)
!611 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !611, line: 275, size: 32, elements: !613)
!613 = !{!614}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !612, file: !611, line: 275, baseType: !615, size: 32)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !611, line: 69, baseType: !616)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !611, line: 64, size: 32, elements: !617)
!617 = !{!618}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !616, file: !611, line: 65, baseType: !7, size: 32)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !605, file: !606, line: 86, baseType: !620, size: 128, offset: 64)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !621, line: 38, size: 128, elements: !622)
!621 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!622 = !{!623, !625}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !620, file: !621, line: 39, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !620, file: !621, line: 39, baseType: !626, size: 64, offset: 64)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !605, file: !606, line: 87, baseType: !604, size: 64, offset: 192)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !605, file: !606, line: 88, baseType: !629, size: 128, offset: 256)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !606, line: 49, size: 128, elements: !630)
!630 = !{!631, !640}
!631 = !DIDerivedType(tag: DW_TAG_member, scope: !629, file: !606, line: 50, baseType: !632, size: 64)
!632 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !629, file: !606, line: 50, size: 64, elements: !633)
!633 = !{!634, !639}
!634 = !DIDerivedType(tag: DW_TAG_member, scope: !632, file: !606, line: 51, baseType: !635, size: 64)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !632, file: !606, line: 51, size: 64, elements: !636)
!636 = !{!637, !638}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !635, file: !606, line: 52, baseType: !254, size: 32)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !635, file: !606, line: 52, baseType: !254, size: 32, offset: 32)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !632, file: !606, line: 54, baseType: !521, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !629, file: !606, line: 56, baseType: !641, size: 64, offset: 64)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !186)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !605, file: !606, line: 89, baseType: !644, size: 64, offset: 384)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !22, line: 641, size: 4800, elements: !646)
!646 = !{!647, !649, !650, !651, !652, !653, !654, !657, !658, !854, !3311, !3312, !3313, !3314, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3481, !3484, !3485, !3486, !3495, !3496, !3497, !3498}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !645, file: !22, line: 642, baseType: !648, size: 16)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !117, line: 24, baseType: !194)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !645, file: !22, line: 643, baseType: !194, size: 16, offset: 16)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !645, file: !22, line: 644, baseType: !224, size: 32, offset: 32)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !645, file: !22, line: 645, baseType: !132, size: 128, offset: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !645, file: !22, line: 646, baseType: !245, size: 32, offset: 192)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !645, file: !22, line: 647, baseType: !7, size: 32, offset: 224)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !645, file: !22, line: 650, baseType: !655, size: 64, offset: 256)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !22, line: 607, flags: DIFlagFwdDecl)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !645, file: !22, line: 651, baseType: !655, size: 64, offset: 320)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !645, file: !22, line: 654, baseType: !659, size: 64, offset: 384)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !661)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !22, line: 1966, size: 2048, align: 512, elements: !662)
!662 = !{!663, !667, !680, !686, !690, !694, !698, !702, !706, !710, !714, !715, !721, !725, !764, !795, !802, !808, !812, !816, !820, !824, !828, !834, !838}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !661, file: !22, line: 1967, baseType: !664, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DISubroutineType(types: !666)
!666 = !{!604, !644, !604, !7}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !661, file: !22, line: 1968, baseType: !668, size: 64, offset: 64)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DISubroutineType(types: !670)
!670 = !{!287, !604, !644, !671}
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !673, line: 10, size: 128, elements: !674)
!673 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!674 = !{!675, !679}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !672, file: !673, line: 11, baseType: !676, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DISubroutineType(types: !678)
!678 = !{null, !105}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !672, file: !673, line: 12, baseType: !105, size: 64, offset: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !661, file: !22, line: 1969, baseType: !681, size: 64, offset: 128)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DISubroutineType(types: !683)
!683 = !{!106, !684, !644, !106}
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !517, line: 42, flags: DIFlagFwdDecl)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !661, file: !22, line: 1970, baseType: !687, size: 64, offset: 192)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DISubroutineType(types: !689)
!689 = !{!655, !644, !106, !342}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !661, file: !22, line: 1972, baseType: !691, size: 64, offset: 256)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DISubroutineType(types: !693)
!693 = !{!106, !604, !307, !106}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !661, file: !22, line: 1974, baseType: !695, size: 64, offset: 320)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DISubroutineType(types: !697)
!697 = !{!106, !684, !644, !604, !648, !342}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !661, file: !22, line: 1976, baseType: !699, size: 64, offset: 384)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DISubroutineType(types: !701)
!701 = !{!106, !604, !644, !604}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !661, file: !22, line: 1977, baseType: !703, size: 64, offset: 448)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DISubroutineType(types: !705)
!705 = !{!106, !644, !604}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !661, file: !22, line: 1978, baseType: !707, size: 64, offset: 512)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DISubroutineType(types: !709)
!709 = !{!106, !684, !644, !604, !287}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !661, file: !22, line: 1980, baseType: !711, size: 64, offset: 576)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DISubroutineType(types: !713)
!713 = !{!106, !684, !644, !604, !648}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !661, file: !22, line: 1982, baseType: !703, size: 64, offset: 640)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !661, file: !22, line: 1983, baseType: !716, size: 64, offset: 704)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DISubroutineType(types: !718)
!718 = !{!106, !684, !644, !604, !648, !719}
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !117, line: 21, baseType: !720)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !117, line: 18, baseType: !254)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !661, file: !22, line: 1985, baseType: !722, size: 64, offset: 768)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DISubroutineType(types: !724)
!724 = !{!106, !684, !644, !604, !644, !604, !7}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !661, file: !22, line: 1987, baseType: !726, size: 64, offset: 832)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DISubroutineType(types: !728)
!728 = !{!106, !684, !604, !729}
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !22, line: 226, size: 640, elements: !731)
!731 = !{!732, !733, !734, !744, !753, !754, !760, !761, !762}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !730, file: !22, line: 227, baseType: !7, size: 32)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !730, file: !22, line: 228, baseType: !648, size: 16, offset: 32)
!734 = !DIDerivedType(tag: DW_TAG_member, scope: !730, file: !22, line: 241, baseType: !735, size: 32, offset: 64)
!735 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !730, file: !22, line: 241, size: 32, elements: !736)
!736 = !{!737, !738}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !735, file: !22, line: 242, baseType: !224, size: 32)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !735, file: !22, line: 243, baseType: !739, size: 32)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !740, line: 16, baseType: !741)
!740 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !740, line: 14, size: 32, elements: !742)
!742 = !{!743}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !741, file: !740, line: 15, baseType: !229, size: 32)
!744 = !DIDerivedType(tag: DW_TAG_member, scope: !730, file: !22, line: 245, baseType: !745, size: 32, offset: 96)
!745 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !730, file: !22, line: 245, size: 32, elements: !746)
!746 = !{!747, !748}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !745, file: !22, line: 246, baseType: !245, size: 32)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !745, file: !22, line: 247, baseType: !749, size: 32)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !740, line: 20, baseType: !750)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !740, line: 18, size: 32, elements: !751)
!751 = !{!752}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !750, file: !740, line: 19, baseType: !249, size: 32)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !730, file: !22, line: 249, baseType: !374, size: 64, offset: 128)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !730, file: !22, line: 250, baseType: !755, size: 128, offset: 192)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !240, line: 13, size: 128, elements: !756)
!756 = !{!757, !758}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !755, file: !240, line: 14, baseType: !239, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !755, file: !240, line: 15, baseType: !759, size: 64, offset: 64)
!759 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !730, file: !22, line: 251, baseType: !755, size: 128, offset: 320)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !730, file: !22, line: 252, baseType: !755, size: 128, offset: 448)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !730, file: !22, line: 259, baseType: !763, size: 64, offset: 576)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !661, file: !22, line: 1988, baseType: !765, size: 64, offset: 896)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DISubroutineType(types: !767)
!767 = !{!106, !684, !768, !770, !254, !7}
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !595)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !772, line: 22, size: 1280, elements: !773)
!772 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!773 = !{!774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !771, file: !772, line: 23, baseType: !254, size: 32)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !771, file: !772, line: 24, baseType: !648, size: 16, offset: 32)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !771, file: !772, line: 25, baseType: !7, size: 32, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !771, file: !772, line: 26, baseType: !253, size: 32, offset: 96)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !771, file: !772, line: 27, baseType: !521, size: 64, offset: 128)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !771, file: !772, line: 28, baseType: !521, size: 64, offset: 192)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !771, file: !772, line: 41, baseType: !521, size: 64, offset: 256)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !771, file: !772, line: 42, baseType: !719, size: 32, offset: 320)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !771, file: !772, line: 43, baseType: !719, size: 32, offset: 352)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !771, file: !772, line: 44, baseType: !224, size: 32, offset: 384)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !771, file: !772, line: 45, baseType: !245, size: 32, offset: 416)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !771, file: !772, line: 46, baseType: !374, size: 64, offset: 448)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !771, file: !772, line: 47, baseType: !755, size: 128, offset: 512)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !771, file: !772, line: 48, baseType: !755, size: 128, offset: 640)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !771, file: !772, line: 49, baseType: !755, size: 128, offset: 768)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !771, file: !772, line: 50, baseType: !755, size: 128, offset: 896)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !771, file: !772, line: 51, baseType: !521, size: 64, offset: 1024)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !771, file: !772, line: 52, baseType: !521, size: 64, offset: 1088)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !771, file: !772, line: 53, baseType: !254, size: 32, offset: 1152)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !771, file: !772, line: 54, baseType: !254, size: 32, offset: 1184)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !771, file: !772, line: 55, baseType: !521, size: 64, offset: 1216)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !661, file: !22, line: 1990, baseType: !796, size: 64, offset: 960)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DISubroutineType(types: !798)
!798 = !{!799, !604, !307, !290}
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !117, line: 66, baseType: !800)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !231, line: 73, baseType: !801)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !231, line: 15, baseType: !759)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !661, file: !22, line: 1991, baseType: !803, size: 64, offset: 1024)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DISubroutineType(types: !805)
!805 = !{!106, !644, !806, !521, !521}
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !22, line: 55, flags: DIFlagFwdDecl)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !661, file: !22, line: 1993, baseType: !809, size: 64, offset: 1088)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DISubroutineType(types: !811)
!811 = !{!106, !644, !106}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !661, file: !22, line: 1994, baseType: !813, size: 64, offset: 1152)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DISubroutineType(types: !815)
!815 = !{!106, !644, !604, !763, !7, !648}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !661, file: !22, line: 1997, baseType: !817, size: 64, offset: 1216)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DISubroutineType(types: !819)
!819 = !{!106, !684, !644, !763, !648}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !661, file: !22, line: 1999, baseType: !821, size: 64, offset: 1280)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DISubroutineType(types: !823)
!823 = !{!655, !684, !604, !106}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !661, file: !22, line: 2001, baseType: !825, size: 64, offset: 1344)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DISubroutineType(types: !827)
!827 = !{!106, !684, !604, !655, !106}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !661, file: !22, line: 2003, baseType: !829, size: 64, offset: 1408)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{!106, !684, !604, !832}
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !22, line: 76, flags: DIFlagFwdDecl)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !661, file: !22, line: 2005, baseType: !835, size: 64, offset: 1472)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DISubroutineType(types: !837)
!837 = !{!106, !604, !832}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !661, file: !22, line: 2006, baseType: !839, size: 64, offset: 1536)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DISubroutineType(types: !841)
!841 = !{!842, !644}
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !22, line: 3192, size: 192, elements: !844)
!844 = !{!845, !853}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !843, file: !22, line: 3193, baseType: !846, size: 128)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !847, line: 296, size: 128, elements: !848)
!847 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!848 = !{!849, !850, !852}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !846, file: !847, line: 297, baseType: !212, size: 32)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !846, file: !847, line: 299, baseType: !851, size: 32, offset: 32)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !117, line: 154, baseType: !7)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !846, file: !847, line: 300, baseType: !105, size: 64, offset: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !843, file: !22, line: 3194, baseType: !254, size: 32, offset: 128)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !645, file: !22, line: 655, baseType: !855, size: 64, offset: 448)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !22, line: 1190, size: 10752, elements: !857)
!857 = !{!858, !859, !860, !861, !862, !863, !905, !1040, !1080, !1163, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1180, !1184, !1185, !1188, !1191, !1194, !1197, !1198, !1199, !1240, !3184, !3185, !3186, !3187, !3188, !3189, !3192, !3194, !3201, !3202, !3203, !3204, !3263, !3278, !3279, !3280, !3281, !3282, !3285, !3286, !3287, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !856, file: !22, line: 1191, baseType: !132, size: 128)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !856, file: !22, line: 1192, baseType: !719, size: 32, offset: 128)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !856, file: !22, line: 1193, baseType: !186, size: 8, offset: 160)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !856, file: !22, line: 1194, baseType: !142, size: 64, offset: 192)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !856, file: !22, line: 1195, baseType: !374, size: 64, offset: 256)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !856, file: !22, line: 1196, baseType: !864, size: 64, offset: 320)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !22, line: 2366, size: 576, elements: !866)
!866 = !{!867, !868, !869, !875, !879, !883, !887, !891, !892, !893, !897, !898, !899, !901, !902, !903, !904}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !865, file: !22, line: 2367, baseType: !287, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !865, file: !22, line: 2368, baseType: !106, size: 32, offset: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !865, file: !22, line: 2376, baseType: !870, size: 64, offset: 128)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DISubroutineType(types: !872)
!872 = !{!106, !873}
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !601, line: 21, flags: DIFlagFwdDecl)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !865, file: !22, line: 2377, baseType: !876, size: 64, offset: 192)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !878)
!878 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !22, line: 75, flags: DIFlagFwdDecl)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !865, file: !22, line: 2378, baseType: !880, size: 64, offset: 256)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DISubroutineType(types: !882)
!882 = !{!604, !864, !106, !287, !105}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !865, file: !22, line: 2380, baseType: !884, size: 64, offset: 320)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DISubroutineType(types: !886)
!886 = !{null, !855}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !865, file: !22, line: 2381, baseType: !888, size: 64, offset: 384)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !890, line: 103, flags: DIFlagFwdDecl)
!890 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec86911224c4b764298f6e976616738c")
!891 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !865, file: !22, line: 2382, baseType: !864, size: 64, offset: 448)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !865, file: !22, line: 2383, baseType: !467, size: 64, offset: 512)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !865, file: !22, line: 2385, baseType: !894, offset: 576)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !895, line: 206, elements: !896)
!895 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!896 = !{}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !865, file: !22, line: 2386, baseType: !894, offset: 576)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !865, file: !22, line: 2387, baseType: !894, offset: 576)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !865, file: !22, line: 2388, baseType: !900, offset: 576)
!900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !894, elements: !455)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !865, file: !22, line: 2390, baseType: !894, offset: 576)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !865, file: !22, line: 2391, baseType: !894, offset: 576)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !865, file: !22, line: 2392, baseType: !894, offset: 576)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !865, file: !22, line: 2393, baseType: !894, offset: 576)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !856, file: !22, line: 1197, baseType: !906, size: 64, offset: 384)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !908)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !22, line: 2057, size: 1664, elements: !909)
!909 = !{!910, !914, !918, !919, !923, !929, !933, !934, !935, !939, !943, !947, !948, !949, !955, !960, !961, !965, !966, !967, !968, !972, !976, !1023, !1038, !1039}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !908, file: !22, line: 2058, baseType: !911, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DISubroutineType(types: !913)
!913 = !{!644, !855}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !908, file: !22, line: 2059, baseType: !915, size: 64, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DISubroutineType(types: !917)
!917 = !{null, !644}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !908, file: !22, line: 2060, baseType: !915, size: 64, offset: 128)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !908, file: !22, line: 2062, baseType: !920, size: 64, offset: 192)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DISubroutineType(types: !922)
!922 = !{null, !644, !106}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !908, file: !22, line: 2063, baseType: !924, size: 64, offset: 256)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DISubroutineType(types: !926)
!926 = !{!106, !644, !927}
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !22, line: 309, flags: DIFlagFwdDecl)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !908, file: !22, line: 2064, baseType: !930, size: 64, offset: 320)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DISubroutineType(types: !932)
!932 = !{!106, !644}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !908, file: !22, line: 2065, baseType: !915, size: 64, offset: 384)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !908, file: !22, line: 2066, baseType: !884, size: 64, offset: 448)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !908, file: !22, line: 2067, baseType: !936, size: 64, offset: 512)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DISubroutineType(types: !938)
!938 = !{!106, !855, !106}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !908, file: !22, line: 2068, baseType: !940, size: 64, offset: 576)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DISubroutineType(types: !942)
!942 = !{!106, !855, !21}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !908, file: !22, line: 2069, baseType: !944, size: 64, offset: 640)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DISubroutineType(types: !946)
!946 = !{!106, !855}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !908, file: !22, line: 2070, baseType: !940, size: 64, offset: 704)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !908, file: !22, line: 2071, baseType: !944, size: 64, offset: 768)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !908, file: !22, line: 2072, baseType: !950, size: 64, offset: 832)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DISubroutineType(types: !952)
!952 = !{!106, !604, !953}
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !22, line: 62, flags: DIFlagFwdDecl)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !908, file: !22, line: 2073, baseType: !956, size: 64, offset: 896)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DISubroutineType(types: !958)
!958 = !{!106, !855, !959, !307}
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !908, file: !22, line: 2074, baseType: !884, size: 64, offset: 960)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !908, file: !22, line: 2076, baseType: !962, size: 64, offset: 1024)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DISubroutineType(types: !964)
!964 = !{!106, !364, !604}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !908, file: !22, line: 2077, baseType: !962, size: 64, offset: 1088)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !908, file: !22, line: 2078, baseType: !962, size: 64, offset: 1152)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !908, file: !22, line: 2079, baseType: !962, size: 64, offset: 1216)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !908, file: !22, line: 2081, baseType: !969, size: 64, offset: 1280)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DISubroutineType(types: !971)
!971 = !{!799, !855, !106, !307, !290, !374}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !908, file: !22, line: 2082, baseType: !973, size: 64, offset: 1344)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DISubroutineType(types: !975)
!975 = !{!799, !855, !106, !287, !290, !374}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !908, file: !22, line: 2083, baseType: !977, size: 64, offset: 1408)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DISubroutineType(types: !979)
!979 = !{!980, !644}
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !27, line: 296, size: 1664, elements: !983)
!983 = !{!984, !985, !986, !987, !988, !989, !990, !991, !992, !1008, !1009, !1010}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !982, file: !27, line: 297, baseType: !471, size: 128)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !982, file: !27, line: 298, baseType: !132, size: 128, offset: 128)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !982, file: !27, line: 299, baseType: !132, size: 128, offset: 256)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !982, file: !27, line: 300, baseType: !132, size: 128, offset: 384)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !982, file: !27, line: 301, baseType: !204, size: 256, offset: 512)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !982, file: !27, line: 302, baseType: !212, size: 32, offset: 768)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !982, file: !27, line: 303, baseType: !116, size: 32, offset: 800)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !982, file: !27, line: 304, baseType: !855, size: 64, offset: 832)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !982, file: !27, line: 305, baseType: !993, size: 64, offset: 896)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !27, line: 68, size: 64, elements: !994)
!994 = !{!995, !1007}
!995 = !DIDerivedType(tag: DW_TAG_member, scope: !993, file: !27, line: 69, baseType: !996, size: 32)
!996 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !993, file: !27, line: 69, size: 32, elements: !997)
!997 = !{!998, !999, !1000}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !996, file: !27, line: 70, baseType: !224, size: 32)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !996, file: !27, line: 71, baseType: !245, size: 32)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !996, file: !27, line: 72, baseType: !1001, size: 32)
!1001 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1002, line: 24, baseType: !1003)
!1002 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1002, line: 22, size: 32, elements: !1004)
!1004 = !{!1005}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1003, file: !1002, line: 23, baseType: !1006, size: 32)
!1006 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1002, line: 20, baseType: !230)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !993, file: !27, line: 74, baseType: !26, size: 32, offset: 32)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !982, file: !27, line: 306, baseType: !374, size: 64, offset: 960)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !982, file: !27, line: 307, baseType: !142, size: 64, offset: 1024)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !982, file: !27, line: 308, baseType: !1011, size: 576, offset: 1088)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !27, line: 205, size: 576, elements: !1012)
!1012 = !{!1013, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1011, file: !27, line: 206, baseType: !1014, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !27, line: 66, baseType: !159)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1011, file: !27, line: 207, baseType: !1014, size: 64, offset: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1011, file: !27, line: 208, baseType: !1014, size: 64, offset: 128)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1011, file: !27, line: 209, baseType: !1014, size: 64, offset: 192)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1011, file: !27, line: 210, baseType: !1014, size: 64, offset: 256)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1011, file: !27, line: 211, baseType: !1014, size: 64, offset: 320)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1011, file: !27, line: 212, baseType: !1014, size: 64, offset: 384)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1011, file: !27, line: 213, baseType: !239, size: 64, offset: 448)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1011, file: !27, line: 214, baseType: !239, size: 64, offset: 512)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !908, file: !22, line: 2085, baseType: !1024, size: 64, offset: 1472)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!759, !855, !1027}
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1029, line: 15, size: 256, elements: !1030)
!1029 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1030 = !{!1031, !1032, !1033, !1034, !1035}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1028, file: !1029, line: 16, baseType: !851, size: 32)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1028, file: !1029, line: 19, baseType: !106, size: 32, offset: 32)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1028, file: !1029, line: 26, baseType: !142, size: 64, offset: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1028, file: !1029, line: 33, baseType: !142, size: 64, offset: 128)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1028, file: !1029, line: 36, baseType: !1036, size: 64, offset: 192)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1029, line: 36, flags: DIFlagFwdDecl)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !908, file: !22, line: 2087, baseType: !1024, size: 64, offset: 1536)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !908, file: !22, line: 2089, baseType: !884, size: 64, offset: 1600)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !856, file: !22, line: 1198, baseType: !1041, size: 64, offset: 448)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1043)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !27, line: 324, size: 704, elements: !1044)
!1044 = !{!1045, !1049, !1053, !1057, !1058, !1059, !1060, !1061, !1066, !1071, !1075}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1043, file: !27, line: 325, baseType: !1046, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!106, !981}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1043, file: !27, line: 326, baseType: !1050, size: 64, offset: 64)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!981, !855, !106}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1043, file: !27, line: 327, baseType: !1054, size: 64, offset: 128)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{null, !981}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1043, file: !27, line: 328, baseType: !1046, size: 64, offset: 192)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1043, file: !27, line: 329, baseType: !1046, size: 64, offset: 256)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1043, file: !27, line: 330, baseType: !1046, size: 64, offset: 320)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1043, file: !27, line: 331, baseType: !936, size: 64, offset: 384)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1043, file: !27, line: 334, baseType: !1062, size: 64, offset: 448)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!1065, !644}
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1043, file: !27, line: 335, baseType: !1067, size: 64, offset: 512)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!106, !644, !1070}
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1043, file: !27, line: 337, baseType: !1072, size: 64, offset: 576)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{!106, !644, !1065}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1043, file: !27, line: 339, baseType: !1076, size: 64, offset: 640)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!106, !855, !1079}
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !856, file: !22, line: 1199, baseType: !1081, size: 64, offset: 512)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1083)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !27, line: 430, size: 704, elements: !1084)
!1084 = !{!1085, !1089, !1090, !1094, !1095, !1096, !1111, !1134, !1138, !1139, !1162}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1083, file: !27, line: 431, baseType: !1086, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!106, !855, !106, !106, !768}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1083, file: !27, line: 432, baseType: !936, size: 64, offset: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1083, file: !27, line: 433, baseType: !1091, size: 64, offset: 128)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!106, !855, !7}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1083, file: !27, line: 434, baseType: !1091, size: 64, offset: 192)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1083, file: !27, line: 435, baseType: !936, size: 64, offset: 256)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1083, file: !27, line: 436, baseType: !1097, size: 64, offset: 320)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!106, !855, !106, !1100}
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !27, line: 417, size: 256, elements: !1102)
!1102 = !{!1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1101, file: !27, line: 418, baseType: !106, size: 32)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1101, file: !27, line: 419, baseType: !7, size: 32, offset: 32)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1101, file: !27, line: 420, baseType: !7, size: 32, offset: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1101, file: !27, line: 422, baseType: !7, size: 32, offset: 96)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1101, file: !27, line: 423, baseType: !7, size: 32, offset: 128)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1101, file: !27, line: 424, baseType: !7, size: 32, offset: 160)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1101, file: !27, line: 425, baseType: !7, size: 32, offset: 192)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1101, file: !27, line: 426, baseType: !7, size: 32, offset: 224)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1083, file: !27, line: 437, baseType: !1112, size: 64, offset: 384)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{!106, !855, !993, !1115}
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !27, line: 345, size: 960, elements: !1117)
!1117 = !{!1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1116, file: !27, line: 346, baseType: !106, size: 32)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1116, file: !27, line: 347, baseType: !521, size: 64, offset: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1116, file: !27, line: 348, baseType: !521, size: 64, offset: 128)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1116, file: !27, line: 349, baseType: !521, size: 64, offset: 192)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1116, file: !27, line: 350, baseType: !521, size: 64, offset: 256)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1116, file: !27, line: 351, baseType: !521, size: 64, offset: 320)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1116, file: !27, line: 352, baseType: !521, size: 64, offset: 384)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1116, file: !27, line: 353, baseType: !157, size: 64, offset: 448)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1116, file: !27, line: 355, baseType: !157, size: 64, offset: 512)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1116, file: !27, line: 356, baseType: !106, size: 32, offset: 576)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1116, file: !27, line: 357, baseType: !106, size: 32, offset: 608)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1116, file: !27, line: 358, baseType: !521, size: 64, offset: 640)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1116, file: !27, line: 359, baseType: !521, size: 64, offset: 704)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1116, file: !27, line: 360, baseType: !521, size: 64, offset: 768)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1116, file: !27, line: 361, baseType: !157, size: 64, offset: 832)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1116, file: !27, line: 362, baseType: !106, size: 32, offset: 896)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1083, file: !27, line: 438, baseType: !1135, size: 64, offset: 448)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!106, !855, !1079, !1115}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1083, file: !27, line: 440, baseType: !1112, size: 64, offset: 512)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1083, file: !27, line: 441, baseType: !1140, size: 64, offset: 576)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!106, !855, !1143}
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !27, line: 411, size: 1408, elements: !1145)
!1145 = !{!1146, !1147}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1144, file: !27, line: 412, baseType: !7, size: 32)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1144, file: !27, line: 413, baseType: !1148, size: 1344, offset: 64)
!1148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1149, size: 1344, elements: !455)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !27, line: 397, size: 448, elements: !1150)
!1150 = !{!1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1161}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1149, file: !27, line: 398, baseType: !7, size: 32)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1149, file: !27, line: 399, baseType: !7, size: 32, offset: 32)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1149, file: !27, line: 401, baseType: !7, size: 32, offset: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1149, file: !27, line: 402, baseType: !7, size: 32, offset: 96)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1149, file: !27, line: 403, baseType: !7, size: 32, offset: 128)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1149, file: !27, line: 404, baseType: !7, size: 32, offset: 160)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1149, file: !27, line: 405, baseType: !7, size: 32, offset: 192)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1149, file: !27, line: 406, baseType: !523, size: 64, offset: 256)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1149, file: !27, line: 407, baseType: !1160, size: 64, offset: 320)
!1160 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !117, line: 132, baseType: !521)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1149, file: !27, line: 408, baseType: !1160, size: 64, offset: 384)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1083, file: !27, line: 442, baseType: !1091, size: 64, offset: 640)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !856, file: !22, line: 1200, baseType: !1164, size: 64, offset: 576)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1166)
!1166 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !22, line: 54, flags: DIFlagFwdDecl)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !856, file: !22, line: 1201, baseType: !142, size: 64, offset: 640)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !856, file: !22, line: 1202, baseType: !142, size: 64, offset: 704)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !856, file: !22, line: 1203, baseType: !142, size: 64, offset: 768)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !856, file: !22, line: 1204, baseType: !604, size: 64, offset: 832)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !856, file: !22, line: 1205, baseType: !147, size: 320, offset: 896)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !856, file: !22, line: 1206, baseType: !106, size: 32, offset: 1216)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !856, file: !22, line: 1207, baseType: !116, size: 32, offset: 1248)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !856, file: !22, line: 1209, baseType: !105, size: 64, offset: 1280)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !856, file: !22, line: 1211, baseType: !1176, size: 64, offset: 1344)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1179)
!1179 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !22, line: 1211, flags: DIFlagFwdDecl)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !856, file: !22, line: 1223, baseType: !1181, size: 64, offset: 1408)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !621, line: 34, size: 64, elements: !1182)
!1182 = !{!1183}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1181, file: !621, line: 35, baseType: !624, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !856, file: !22, line: 1224, baseType: !132, size: 128, offset: 1472)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !856, file: !22, line: 1225, baseType: !1186, size: 64, offset: 1600)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !22, line: 1225, flags: DIFlagFwdDecl)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !856, file: !22, line: 1226, baseType: !1189, size: 64, offset: 1664)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !22, line: 1226, flags: DIFlagFwdDecl)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !856, file: !22, line: 1227, baseType: !1192, size: 64, offset: 1728)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !22, line: 50, flags: DIFlagFwdDecl)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !856, file: !22, line: 1228, baseType: !1195, size: 64, offset: 1792)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !22, line: 1228, flags: DIFlagFwdDecl)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !856, file: !22, line: 1229, baseType: !471, size: 128, offset: 1856)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !856, file: !22, line: 1230, baseType: !7, size: 32, offset: 1984)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !856, file: !22, line: 1231, baseType: !1200, size: 2496, offset: 2048)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !27, line: 521, size: 2496, elements: !1201)
!1201 = !{!1202, !1203, !1204, !1206, !1238}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1200, file: !27, line: 522, baseType: !7, size: 32)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1200, file: !27, line: 523, baseType: !147, size: 320, offset: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1200, file: !27, line: 524, baseType: !1205, size: 192, offset: 384)
!1205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !644, size: 192, elements: !455)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1200, file: !27, line: 525, baseType: !1207, size: 1728, offset: 576)
!1207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1208, size: 1728, elements: !455)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !27, line: 222, size: 576, elements: !1209)
!1209 = !{!1210, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1208, file: !27, line: 223, baseType: !1211, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !27, line: 445, size: 256, elements: !1213)
!1213 = !{!1214, !1215, !1228, !1229}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1212, file: !27, line: 446, baseType: !106, size: 32)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1212, file: !27, line: 447, baseType: !1216, size: 64, offset: 64)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1218)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !27, line: 312, size: 512, elements: !1219)
!1219 = !{!1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1218, file: !27, line: 313, baseType: !936, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1218, file: !27, line: 314, baseType: !936, size: 64, offset: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1218, file: !27, line: 315, baseType: !936, size: 64, offset: 128)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1218, file: !27, line: 316, baseType: !936, size: 64, offset: 192)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1218, file: !27, line: 317, baseType: !1046, size: 64, offset: 256)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1218, file: !27, line: 318, baseType: !1046, size: 64, offset: 320)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1218, file: !27, line: 319, baseType: !1046, size: 64, offset: 384)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1218, file: !27, line: 320, baseType: !1076, size: 64, offset: 448)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1212, file: !27, line: 448, baseType: !888, size: 64, offset: 128)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1212, file: !27, line: 449, baseType: !1211, size: 64, offset: 192)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1208, file: !27, line: 224, baseType: !106, size: 32, offset: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1208, file: !27, line: 226, baseType: !132, size: 128, offset: 128)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1208, file: !27, line: 227, baseType: !142, size: 64, offset: 256)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1208, file: !27, line: 228, baseType: !7, size: 32, offset: 320)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1208, file: !27, line: 229, baseType: !7, size: 32, offset: 352)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1208, file: !27, line: 230, baseType: !1014, size: 64, offset: 384)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1208, file: !27, line: 231, baseType: !1014, size: 64, offset: 448)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1208, file: !27, line: 232, baseType: !105, size: 64, offset: 512)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1200, file: !27, line: 526, baseType: !1239, size: 192, offset: 2304)
!1239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1216, size: 192, elements: !455)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !856, file: !22, line: 1233, baseType: !1241, size: 2368, offset: 4544)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !22, line: 1184, size: 2368, elements: !1242)
!1242 = !{!1243, !1244, !1245}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1241, file: !22, line: 1185, baseType: !194, size: 16)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1241, file: !22, line: 1186, baseType: !194, size: 16, offset: 16)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1241, file: !22, line: 1187, baseType: !1246, size: 2304, offset: 64)
!1246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1247, size: 2304, elements: !455)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1248, line: 12, size: 768, elements: !1249)
!1248 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1249 = !{!1250, !1258, !1260, !3182, !3183}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1247, file: !1248, line: 13, baseType: !1251, size: 384)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1252, line: 17, size: 384, elements: !1253)
!1252 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1253 = !{!1254, !1255, !1256, !1257}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1251, file: !1252, line: 18, baseType: !106, size: 32)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1251, file: !1252, line: 19, baseType: !106, size: 32, offset: 32)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1251, file: !1252, line: 20, baseType: !478, size: 192, offset: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1251, file: !1252, line: 22, baseType: !416, size: 128, align: 64, offset: 256)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1247, file: !1248, line: 14, baseType: !1259, size: 64, offset: 384)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1247, file: !1248, line: 15, baseType: !1261, size: 64, offset: 448)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1262, line: 16, size: 64, elements: !1263)
!1262 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1263 = !{!1264}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1261, file: !1262, line: 17, baseType: !1265, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1267, line: 746, size: 58368, elements: !1268)
!1267 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1268 = !{!1269, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1349, !1360, !1455, !1459, !1462, !1493, !1494, !1495, !1496, !1507, !1509, !1510, !1511, !1512, !1513, !1514, !1525, !1526, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1543, !1544, !1551, !1552, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1776, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1791, !1792, !1793, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1835, !1841, !1842, !1843, !1844, !1845, !1849, !1852, !1859, !1864, !1867, !1870, !1873, !1876, !2016, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2058, !2059, !2060, !2069, !2077, !2078, !2079, !2080, !2081, !2086, !2087, !2088, !2091, !2092, !2095, !2098, !2101, !2109, !2112, !2113, !2199, !2200, !2201, !2202, !2203, !2209, !2210, !2211, !2212, !2215, !2216, !2219, !2233, !2234, !2237, !2238, !2239, !2242, !2243, !2244, !2247, !2248, !2249, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2281, !2284, !2826, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2838, !2910, !2912, !2913, !2914, !2915, !2916, !2928, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2957, !2958, !2959}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1266, file: !1267, line: 752, baseType: !1270, size: 192)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1271, line: 56, size: 192, elements: !1272)
!1271 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1272 = !{!1273, !1274, !1275, !1276}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1270, file: !1271, line: 57, baseType: !142, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1270, file: !1271, line: 58, baseType: !142, size: 64, offset: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1270, file: !1271, line: 59, baseType: !254, size: 32, offset: 128)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1270, file: !1271, line: 61, baseType: !254, size: 32, offset: 160)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1266, file: !1267, line: 754, baseType: !7, size: 32, offset: 192)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1266, file: !1267, line: 767, baseType: !105, size: 64, offset: 256)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1266, file: !1267, line: 768, baseType: !111, size: 32, offset: 320)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1266, file: !1267, line: 770, baseType: !7, size: 32, offset: 352)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1266, file: !1267, line: 771, baseType: !7, size: 32, offset: 384)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1266, file: !1267, line: 774, baseType: !106, size: 32, offset: 416)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1266, file: !1267, line: 775, baseType: !1284, size: 128, offset: 448)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1285, line: 58, size: 128, elements: !1286)
!1285 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1286 = !{!1287, !1288, !1293, !1294}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1284, file: !1285, line: 59, baseType: !410, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, scope: !1284, file: !1285, line: 60, baseType: !1289, size: 32, offset: 64)
!1289 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1284, file: !1285, line: 60, size: 32, elements: !1290)
!1290 = !{!1291, !1292}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1289, file: !1285, line: 61, baseType: !7, size: 32)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1289, file: !1285, line: 62, baseType: !116, size: 32)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1284, file: !1285, line: 65, baseType: !192, size: 16, offset: 96)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1284, file: !1285, line: 65, baseType: !192, size: 16, offset: 112)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1266, file: !1267, line: 776, baseType: !7, size: 32, offset: 576)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1266, file: !1267, line: 777, baseType: !142, size: 64, offset: 640)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1266, file: !1267, line: 778, baseType: !1265, size: 64, offset: 704)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1266, file: !1267, line: 787, baseType: !106, size: 32, offset: 768)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1266, file: !1267, line: 788, baseType: !106, size: 32, offset: 800)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1266, file: !1267, line: 790, baseType: !106, size: 32, offset: 832)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1266, file: !1267, line: 792, baseType: !106, size: 32, offset: 864)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1266, file: !1267, line: 793, baseType: !106, size: 32, offset: 896)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1266, file: !1267, line: 794, baseType: !106, size: 32, offset: 928)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1266, file: !1267, line: 795, baseType: !7, size: 32, offset: 960)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1266, file: !1267, line: 797, baseType: !1306, size: 2048, offset: 1024)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1267, line: 551, size: 2048, elements: !1307)
!1307 = !{!1308, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1328, !1331, !1332, !1333}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1306, file: !1267, line: 553, baseType: !1309, size: 128)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1267, line: 411, size: 128, elements: !1310)
!1310 = !{!1311, !1312}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1309, file: !1267, line: 412, baseType: !142, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1309, file: !1267, line: 413, baseType: !254, size: 32, offset: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1306, file: !1267, line: 554, baseType: !138, size: 192, align: 64, offset: 128)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1306, file: !1267, line: 555, baseType: !521, size: 64, offset: 320)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1306, file: !1267, line: 556, baseType: !521, size: 64, offset: 384)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1306, file: !1267, line: 558, baseType: !132, size: 128, offset: 448)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1306, file: !1267, line: 559, baseType: !7, size: 32, offset: 576)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1306, file: !1267, line: 561, baseType: !521, size: 64, offset: 640)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1306, file: !1267, line: 562, baseType: !521, size: 64, offset: 704)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1306, file: !1267, line: 563, baseType: !521, size: 64, offset: 768)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1306, file: !1267, line: 564, baseType: !521, size: 64, offset: 832)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1306, file: !1267, line: 565, baseType: !157, size: 64, offset: 896)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1306, file: !1267, line: 566, baseType: !521, size: 64, offset: 960)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1306, file: !1267, line: 568, baseType: !521, size: 64, offset: 1024)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1306, file: !1267, line: 571, baseType: !106, size: 32, offset: 1088)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1306, file: !1267, line: 572, baseType: !1327, size: 64, offset: 1152)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1306, file: !1267, line: 574, baseType: !1329, size: 64, offset: 1216)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1267, line: 49, flags: DIFlagFwdDecl)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1306, file: !1267, line: 576, baseType: !1329, size: 64, offset: 1280)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1306, file: !1267, line: 578, baseType: !142, size: 64, offset: 1344)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1306, file: !1267, line: 588, baseType: !1334, size: 512, align: 512, offset: 1536)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1267, line: 497, size: 512, align: 512, elements: !1335)
!1335 = !{!1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1334, file: !1267, line: 498, baseType: !521, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1334, file: !1267, line: 499, baseType: !521, size: 64, offset: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1334, file: !1267, line: 500, baseType: !521, size: 64, offset: 128)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1334, file: !1267, line: 501, baseType: !254, size: 32, offset: 192)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1334, file: !1267, line: 502, baseType: !254, size: 32, offset: 224)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1334, file: !1267, line: 503, baseType: !142, size: 64, offset: 256)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1334, file: !1267, line: 504, baseType: !142, size: 64, offset: 320)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1334, file: !1267, line: 505, baseType: !142, size: 64, offset: 384)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1334, file: !1267, line: 506, baseType: !1345, size: 64, align: 64, offset: 448)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1267, line: 445, size: 64, align: 64, elements: !1346)
!1346 = !{!1347, !1348}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1345, file: !1267, line: 446, baseType: !7, size: 32)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1345, file: !1267, line: 447, baseType: !7, size: 32, offset: 32)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1266, file: !1267, line: 798, baseType: !1350, size: 384, offset: 3072)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1267, line: 592, size: 384, elements: !1351)
!1351 = !{!1352, !1353, !1354, !1355, !1356, !1357, !1358}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1350, file: !1267, line: 593, baseType: !132, size: 128)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1350, file: !1267, line: 594, baseType: !142, size: 64, offset: 128)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1350, file: !1267, line: 595, baseType: !142, size: 64, offset: 192)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1350, file: !1267, line: 596, baseType: !7, size: 32, offset: 256)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1350, file: !1267, line: 597, baseType: !194, size: 16, offset: 288)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1350, file: !1267, line: 598, baseType: !194, size: 16, offset: 304)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1350, file: !1267, line: 600, baseType: !1359, size: 64, offset: 320)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1266, file: !1267, line: 799, baseType: !1361, size: 1792, offset: 3456)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1267, line: 610, size: 1792, elements: !1362)
!1362 = !{!1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1452, !1453}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1361, file: !1267, line: 611, baseType: !138, size: 192, align: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1361, file: !1267, line: 618, baseType: !521, size: 64, offset: 192)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1361, file: !1267, line: 619, baseType: !521, size: 64, offset: 256)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1361, file: !1267, line: 620, baseType: !521, size: 64, offset: 320)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1361, file: !1267, line: 621, baseType: !521, size: 64, offset: 384)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1361, file: !1267, line: 622, baseType: !521, size: 64, offset: 448)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1361, file: !1267, line: 629, baseType: !157, size: 64, offset: 512)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1361, file: !1267, line: 630, baseType: !521, size: 64, offset: 576)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1361, file: !1267, line: 631, baseType: !7, size: 32, offset: 640)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1361, file: !1267, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1361, file: !1267, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1361, file: !1267, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1361, file: !1267, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1361, file: !1267, line: 662, baseType: !1377, size: 512, offset: 704)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !1378)
!1378 = !{!1379, !1387, !1388, !1393, !1448, !1449, !1450, !1451}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1377, file: !33, line: 119, baseType: !1380, size: 256)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1381, line: 9, size: 256, elements: !1382)
!1381 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1382 = !{!1383, !1384}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1380, file: !1381, line: 10, baseType: !138, size: 192, align: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1380, file: !1381, line: 11, baseType: !1385, size: 64, offset: 192)
!1385 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1386, line: 29, baseType: !157)
!1386 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1377, file: !33, line: 120, baseType: !1385, size: 64, offset: 256)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1377, file: !33, line: 121, baseType: !1389, size: 64, offset: 320)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DISubroutineType(types: !1391)
!1391 = !{!32, !1392}
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1377, file: !33, line: 122, baseType: !1394, size: 64, offset: 384)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !33, line: 159, size: 512, align: 512, elements: !1396)
!1396 = !{!1397, !1422, !1423, !1426, !1431, !1432, !1443, !1447}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1395, file: !33, line: 160, baseType: !1398, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !33, line: 215, size: 4608, align: 512, elements: !1400)
!1400 = !{!1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1399, file: !33, line: 216, baseType: !167, size: 32)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1399, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1399, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1399, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1399, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1399, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1399, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1399, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1399, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1399, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1399, file: !33, line: 227, baseType: !194, size: 16, offset: 192)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1399, file: !33, line: 228, baseType: !194, size: 16, offset: 208)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1399, file: !33, line: 229, baseType: !7, size: 32, offset: 224)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1399, file: !33, line: 235, baseType: !1385, size: 64, offset: 256)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1399, file: !33, line: 236, baseType: !1392, size: 64, offset: 320)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1399, file: !33, line: 237, baseType: !1385, size: 64, offset: 384)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1399, file: !33, line: 238, baseType: !1392, size: 64, offset: 448)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1399, file: !33, line: 239, baseType: !1419, size: 4096, align: 512, offset: 512)
!1419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1395, size: 4096, align: 512, elements: !1420)
!1420 = !{!1421}
!1421 = !DISubrange(count: 8)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1395, file: !33, line: 161, baseType: !7, size: 32, offset: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1395, file: !33, line: 162, baseType: !1424, size: 32, offset: 96)
!1424 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !117, line: 32, baseType: !1425)
!1425 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !231, line: 96, baseType: !106)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1395, file: !33, line: 163, baseType: !1427, size: 32, offset: 128)
!1427 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !611, line: 274, baseType: !1428)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !611, line: 274, size: 32, elements: !1429)
!1429 = !{!1430}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1428, file: !611, line: 274, baseType: !615, size: 32)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1395, file: !33, line: 164, baseType: !1392, size: 64, offset: 192)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1395, file: !33, line: 165, baseType: !1433, size: 128, offset: 256)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1381, line: 14, size: 128, elements: !1434)
!1434 = !{!1435}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1433, file: !1381, line: 15, baseType: !1436, size: 128)
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !139, line: 26, size: 128, elements: !1437)
!1437 = !{!1438, !1442}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1436, file: !139, line: 27, baseType: !1439, size: 64)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !139, line: 12, size: 64, elements: !1440)
!1440 = !{!1441}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1439, file: !139, line: 13, baseType: !144, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1436, file: !139, line: 28, baseType: !144, size: 64, offset: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1395, file: !33, line: 166, baseType: !1444, size: 64, offset: 384)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DISubroutineType(types: !1446)
!1446 = !{!1385}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1395, file: !33, line: 167, baseType: !1385, size: 64, offset: 448)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1377, file: !33, line: 123, baseType: !184, size: 8, offset: 448)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1377, file: !33, line: 124, baseType: !184, size: 8, offset: 456)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1377, file: !33, line: 125, baseType: !184, size: 8, offset: 464)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1377, file: !33, line: 126, baseType: !184, size: 8, offset: 472)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1361, file: !1267, line: 671, baseType: !1377, size: 512, offset: 1216)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1361, file: !1267, line: 679, baseType: !1454, size: 64, offset: 1728)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1266, file: !1267, line: 800, baseType: !1456, size: 64, offset: 5248)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1458)
!1458 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1267, line: 800, flags: DIFlagFwdDecl)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1266, file: !1267, line: 809, baseType: !1460, size: 64, offset: 5312)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1461 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1267, line: 70, flags: DIFlagFwdDecl)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1266, file: !1267, line: 825, baseType: !1463, size: 2048, align: 512, offset: 5632)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1267, line: 509, size: 2048, align: 512, elements: !1464)
!1464 = !{!1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1463, file: !1267, line: 511, baseType: !521, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1463, file: !1267, line: 512, baseType: !521, size: 64, offset: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1463, file: !1267, line: 513, baseType: !521, size: 64, offset: 128)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1463, file: !1267, line: 514, baseType: !521, size: 64, offset: 192)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1463, file: !1267, line: 515, baseType: !521, size: 64, offset: 256)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1463, file: !1267, line: 516, baseType: !521, size: 64, offset: 320)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1463, file: !1267, line: 518, baseType: !521, size: 64, offset: 384)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1463, file: !1267, line: 519, baseType: !521, size: 64, offset: 448)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1463, file: !1267, line: 520, baseType: !157, size: 64, offset: 512)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1463, file: !1267, line: 522, baseType: !521, size: 64, offset: 576)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1463, file: !1267, line: 523, baseType: !521, size: 64, offset: 640)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1463, file: !1267, line: 524, baseType: !157, size: 64, offset: 704)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1463, file: !1267, line: 526, baseType: !157, size: 64, offset: 768)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1463, file: !1267, line: 527, baseType: !521, size: 64, offset: 832)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1463, file: !1267, line: 529, baseType: !521, size: 64, offset: 896)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1463, file: !1267, line: 530, baseType: !521, size: 64, offset: 960)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1463, file: !1267, line: 531, baseType: !521, size: 64, offset: 1024)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1463, file: !1267, line: 532, baseType: !521, size: 64, offset: 1088)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1463, file: !1267, line: 533, baseType: !521, size: 64, offset: 1152)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1463, file: !1267, line: 535, baseType: !521, size: 64, offset: 1216)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1463, file: !1267, line: 536, baseType: !521, size: 64, offset: 1280)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1463, file: !1267, line: 537, baseType: !521, size: 64, offset: 1344)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1463, file: !1267, line: 538, baseType: !521, size: 64, offset: 1408)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1463, file: !1267, line: 539, baseType: !521, size: 64, offset: 1472)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1463, file: !1267, line: 540, baseType: !521, size: 64, offset: 1536)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1463, file: !1267, line: 541, baseType: !521, size: 64, offset: 1600)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1463, file: !1267, line: 542, baseType: !521, size: 64, offset: 1664)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1463, file: !1267, line: 543, baseType: !521, size: 64, offset: 1728)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1266, file: !1267, line: 833, baseType: !7, size: 32, offset: 7680)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1266, file: !1267, line: 836, baseType: !7, size: 32, offset: 7712)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1266, file: !1267, line: 837, baseType: !106, size: 32, offset: 7744)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1266, file: !1267, line: 838, baseType: !1497, size: 64, offset: 7808)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1499)
!1499 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1500, line: 19, baseType: !1501)
!1500 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1500, line: 19, size: 64, elements: !1502)
!1502 = !{!1503}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1501, file: !1500, line: 19, baseType: !1504, size: 64)
!1504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 64, elements: !1505)
!1505 = !{!1506}
!1506 = !DISubrange(count: 1)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1266, file: !1267, line: 839, baseType: !1508, size: 64, offset: 7872)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1266, file: !1267, line: 840, baseType: !1499, size: 64, offset: 7936)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1266, file: !1267, line: 841, baseType: !105, size: 64, offset: 8000)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1266, file: !1267, line: 843, baseType: !194, size: 16, offset: 8064)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1266, file: !1267, line: 845, baseType: !194, size: 16, offset: 8080)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1266, file: !1267, line: 848, baseType: !106, size: 32, offset: 8096)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1266, file: !1267, line: 849, baseType: !1515, size: 32, offset: 8128)
!1515 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1267, line: 718, size: 32, elements: !1516)
!1516 = !{!1517, !1524}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1515, file: !1267, line: 724, baseType: !1518, size: 32)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1515, file: !1267, line: 719, size: 32, elements: !1519)
!1519 = !{!1520, !1521, !1522, !1523}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1518, file: !1267, line: 720, baseType: !184, size: 8)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1518, file: !1267, line: 721, baseType: !184, size: 8, offset: 8)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1518, file: !1267, line: 722, baseType: !184, size: 8, offset: 16)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1518, file: !1267, line: 723, baseType: !184, size: 8, offset: 24)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1515, file: !1267, line: 725, baseType: !254, size: 32)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1266, file: !1267, line: 850, baseType: !132, size: 128, offset: 8192)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1266, file: !1267, line: 851, baseType: !1527, size: 64, offset: 8320)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1267, line: 60, flags: DIFlagFwdDecl)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1266, file: !1267, line: 855, baseType: !142, size: 64, offset: 8384)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1266, file: !1267, line: 856, baseType: !184, size: 8, offset: 8448)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1266, file: !1267, line: 857, baseType: !184, size: 8, offset: 8456)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1266, file: !1267, line: 858, baseType: !106, size: 32, offset: 8480)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1266, file: !1267, line: 859, baseType: !132, size: 128, offset: 8512)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1266, file: !1267, line: 860, baseType: !106, size: 32, offset: 8640)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1266, file: !1267, line: 861, baseType: !132, size: 128, offset: 8704)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1266, file: !1267, line: 873, baseType: !1537, size: 256, offset: 8832)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1267, line: 376, size: 256, elements: !1538)
!1538 = !{!1539, !1540, !1541, !1542}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1537, file: !1267, line: 381, baseType: !142, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1537, file: !1267, line: 384, baseType: !523, size: 64, offset: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1537, file: !1267, line: 389, baseType: !523, size: 64, offset: 128)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1537, file: !1267, line: 392, baseType: !523, size: 64, offset: 192)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1266, file: !1267, line: 875, baseType: !132, size: 128, offset: 9088)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1266, file: !1267, line: 877, baseType: !1545, size: 320, offset: 9216)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1546, line: 86, size: 320, elements: !1547)
!1546 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1547 = !{!1548, !1549, !1550}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1545, file: !1546, line: 87, baseType: !106, size: 32)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1545, file: !1546, line: 88, baseType: !132, size: 128, offset: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1545, file: !1546, line: 89, baseType: !132, size: 128, offset: 192)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1266, file: !1267, line: 878, baseType: !138, size: 192, align: 64, offset: 9536)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1266, file: !1267, line: 881, baseType: !1553, size: 64, offset: 9728)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !59, line: 733, size: 10240, elements: !1555)
!1555 = !{!1556, !1695}
!1556 = !DIDerivedType(tag: DW_TAG_member, scope: !1554, file: !59, line: 734, baseType: !1557, size: 10240)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1554, file: !59, line: 734, size: 10240, elements: !1558)
!1558 = !{!1559, !1563, !1576, !1580, !1581, !1582, !1583, !1584, !1585, !1594, !1595, !1596, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1635, !1637, !1640, !1664, !1665, !1666, !1669, !1670, !1671, !1674, !1675, !1676, !1682, !1683}
!1559 = !DIDerivedType(tag: DW_TAG_member, scope: !1557, file: !59, line: 739, baseType: !1560, size: 512, align: 512)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1557, file: !59, line: 739, size: 512, align: 512, elements: !1561)
!1561 = !{!1562}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1560, file: !59, line: 747, baseType: !116, size: 32)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1557, file: !59, line: 750, baseType: !1564, size: 128, offset: 512)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1565, line: 218, size: 128, elements: !1566)
!1565 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1566 = !{!1567, !1574, !1575}
!1567 = !DIDerivedType(tag: DW_TAG_member, scope: !1564, file: !1565, line: 219, baseType: !1568, size: 32)
!1568 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1564, file: !1565, line: 219, size: 32, elements: !1569)
!1569 = !{!1570, !1571}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1568, file: !1565, line: 220, baseType: !212, size: 32)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1568, file: !1565, line: 221, baseType: !1572)
!1572 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1565, line: 197, baseType: !1573)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1565, line: 197, elements: !896)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1564, file: !1565, line: 223, baseType: !7, size: 32, offset: 32)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1564, file: !1565, line: 224, baseType: !105, size: 64, offset: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1557, file: !59, line: 752, baseType: !1577, size: 64, offset: 640)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!142, !763, !142, !142, !142, !142}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1557, file: !59, line: 756, baseType: !142, size: 64, offset: 704)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1557, file: !59, line: 757, baseType: !142, size: 64, offset: 768)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1557, file: !59, line: 760, baseType: !142, size: 64, offset: 832)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1557, file: !59, line: 761, baseType: !142, size: 64, offset: 896)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1557, file: !59, line: 763, baseType: !142, size: 64, offset: 960)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1557, file: !59, line: 764, baseType: !1586, size: 64, offset: 1024)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1588, line: 299, baseType: !1589)
!1588 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1588, line: 299, size: 64, elements: !1590)
!1590 = !{!1591}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1589, file: !1588, line: 299, baseType: !1592, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1593, line: 18, baseType: !142)
!1593 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1557, file: !59, line: 773, baseType: !116, size: 32, offset: 1088)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1557, file: !59, line: 785, baseType: !116, size: 32, offset: 1120)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1557, file: !59, line: 795, baseType: !1597, size: 64, offset: 1152)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !59, line: 726, size: 128, elements: !1599)
!1599 = !{!1600, !1601}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1598, file: !59, line: 727, baseType: !521, size: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1598, file: !59, line: 728, baseType: !106, size: 32, offset: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1557, file: !59, line: 801, baseType: !142, size: 64, offset: 1216)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1557, file: !59, line: 804, baseType: !151, size: 64, offset: 1280)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1557, file: !59, line: 806, baseType: !106, size: 32, offset: 1344)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1557, file: !59, line: 808, baseType: !212, size: 32, offset: 1376)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1557, file: !59, line: 823, baseType: !147, size: 320, offset: 1408)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1557, file: !59, line: 825, baseType: !132, size: 128, offset: 1728)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1557, file: !59, line: 845, baseType: !106, size: 32, offset: 1856)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1557, file: !59, line: 849, baseType: !142, size: 64, offset: 1920)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1557, file: !59, line: 850, baseType: !142, size: 64, offset: 1984)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1557, file: !59, line: 852, baseType: !142, size: 64, offset: 2048)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1557, file: !59, line: 853, baseType: !142, size: 64, offset: 2112)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1557, file: !59, line: 854, baseType: !153, size: 64, offset: 2176)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1557, file: !59, line: 855, baseType: !142, size: 64, offset: 2240)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1557, file: !59, line: 856, baseType: !142, size: 64, offset: 2304)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1557, file: !59, line: 857, baseType: !142, size: 64, offset: 2368)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1557, file: !59, line: 858, baseType: !142, size: 64, offset: 2432)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1557, file: !59, line: 865, baseType: !615, size: 32, offset: 2496)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1557, file: !59, line: 867, baseType: !212, size: 32, offset: 2528)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1557, file: !59, line: 869, baseType: !142, size: 64, offset: 2560)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1557, file: !59, line: 869, baseType: !142, size: 64, offset: 2624)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1557, file: !59, line: 869, baseType: !142, size: 64, offset: 2688)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1557, file: !59, line: 869, baseType: !142, size: 64, offset: 2752)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1557, file: !59, line: 870, baseType: !142, size: 64, offset: 2816)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1557, file: !59, line: 870, baseType: !142, size: 64, offset: 2880)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1557, file: !59, line: 870, baseType: !142, size: 64, offset: 2944)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1557, file: !59, line: 871, baseType: !142, size: 64, offset: 3008)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1557, file: !59, line: 871, baseType: !142, size: 64, offset: 3072)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1557, file: !59, line: 871, baseType: !142, size: 64, offset: 3136)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1557, file: !59, line: 871, baseType: !142, size: 64, offset: 3200)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1557, file: !59, line: 873, baseType: !1632, size: 3328, offset: 3264)
!1632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 3328, elements: !1633)
!1633 = !{!1634}
!1634 = !DISubrange(count: 52)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1557, file: !59, line: 875, baseType: !1636, size: 1280, offset: 6592)
!1636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !541, size: 1280, elements: !314)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1557, file: !59, line: 877, baseType: !1638, size: 64, offset: 7872)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !59, line: 877, flags: DIFlagFwdDecl)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1557, file: !59, line: 880, baseType: !1641, size: 1088, offset: 7936)
!1641 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1642, line: 72, baseType: !1643)
!1642 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1642, line: 23, size: 1088, elements: !1644)
!1644 = !{!1645, !1646, !1647, !1648, !1649, !1652, !1653, !1654, !1655, !1659, !1660, !1661}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1643, file: !1642, line: 28, baseType: !521, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1643, file: !1642, line: 38, baseType: !153, size: 64, offset: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1643, file: !1642, line: 40, baseType: !142, size: 64, offset: 128)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1643, file: !1642, line: 43, baseType: !147, size: 320, offset: 192)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1643, file: !1642, line: 44, baseType: !1650, size: 64, offset: 512)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1642, line: 44, flags: DIFlagFwdDecl)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1643, file: !1642, line: 48, baseType: !142, size: 64, offset: 576)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1643, file: !1642, line: 59, baseType: !204, size: 256, offset: 640)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1643, file: !1642, line: 60, baseType: !105, size: 64, offset: 896)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1643, file: !1642, line: 61, baseType: !1656, size: 64, offset: 960)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1658)
!1658 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1642, line: 61, flags: DIFlagFwdDecl)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1643, file: !1642, line: 63, baseType: !116, size: 32, offset: 1024)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1643, file: !1642, line: 69, baseType: !192, size: 16, offset: 1056)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1643, file: !1642, line: 70, baseType: !1662, size: 16, offset: 1072)
!1662 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !125, line: 18, baseType: !1663)
!1663 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !127, line: 23, baseType: !259)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1557, file: !59, line: 882, baseType: !142, size: 64, offset: 9024)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1557, file: !59, line: 885, baseType: !212, size: 32, offset: 9088)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1557, file: !59, line: 886, baseType: !1667, size: 64, offset: 9152)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !59, line: 732, flags: DIFlagFwdDecl)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1557, file: !59, line: 901, baseType: !566, size: 64, offset: 9216)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1557, file: !59, line: 904, baseType: !763, size: 64, offset: 9280)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1557, file: !59, line: 906, baseType: !1672, size: 64, offset: 9344)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !59, line: 906, flags: DIFlagFwdDecl)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1557, file: !59, line: 930, baseType: !116, size: 32, offset: 9408)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1557, file: !59, line: 933, baseType: !116, size: 32, offset: 9440)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1557, file: !59, line: 935, baseType: !1677, size: 64, offset: 9472)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !75, line: 103, size: 64, elements: !1678)
!1678 = !{!1679}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1677, file: !75, line: 104, baseType: !1680, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !75, line: 101, flags: DIFlagFwdDecl)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1557, file: !59, line: 940, baseType: !151, size: 64, offset: 9536)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1557, file: !59, line: 942, baseType: !1684, size: 256, offset: 9600)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1685, line: 98, size: 256, elements: !1686)
!1685 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1686 = !{!1687, !1688, !1689}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1684, file: !1685, line: 99, baseType: !151, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1684, file: !1685, line: 100, baseType: !132, size: 128, offset: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1684, file: !1685, line: 101, baseType: !1690, size: 64, offset: 192)
!1690 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1685, line: 21, baseType: !1691)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = !DISubroutineType(types: !1693)
!1693 = !{null, !1694}
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1554, file: !59, line: 986, baseType: !1696, offset: 10240)
!1696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, elements: !493)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1266, file: !1267, line: 882, baseType: !1553, size: 64, offset: 9792)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1266, file: !1267, line: 884, baseType: !106, size: 32, offset: 9856)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1266, file: !1267, line: 885, baseType: !106, size: 32, offset: 9888)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1266, file: !1267, line: 886, baseType: !106, size: 32, offset: 9920)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1266, file: !1267, line: 888, baseType: !106, size: 32, offset: 9952)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1266, file: !1267, line: 890, baseType: !142, size: 64, offset: 9984)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1266, file: !1267, line: 893, baseType: !7, size: 32, offset: 10048)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1266, file: !1267, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1266, file: !1267, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1266, file: !1267, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1266, file: !1267, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1266, file: !1267, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1266, file: !1267, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1266, file: !1267, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1266, file: !1267, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1266, file: !1267, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1266, file: !1267, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1266, file: !1267, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1266, file: !1267, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1266, file: !1267, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1266, file: !1267, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1266, file: !1267, line: 969, baseType: !142, size: 64, offset: 10176)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1266, file: !1267, line: 971, baseType: !1720, size: 448, offset: 10240)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !38, line: 25, size: 448, elements: !1721)
!1721 = !{!1722, !1723, !1728}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1720, file: !38, line: 26, baseType: !142, size: 64)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1720, file: !38, line: 27, baseType: !1724, size: 64, offset: 64)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DISubroutineType(types: !1726)
!1726 = !{!759, !1727}
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, scope: !1720, file: !38, line: 28, baseType: !1729, size: 320, offset: 128)
!1729 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1720, file: !38, line: 28, size: 320, elements: !1730)
!1730 = !{!1731, !1741, !1766}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1729, file: !38, line: 37, baseType: !1732, size: 320)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1729, file: !38, line: 30, size: 320, elements: !1733)
!1733 = !{!1734, !1736, !1737, !1738, !1739, !1740}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1732, file: !38, line: 31, baseType: !1735, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1732, file: !38, line: 32, baseType: !254, size: 32, offset: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1732, file: !38, line: 33, baseType: !254, size: 32, offset: 96)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1732, file: !38, line: 34, baseType: !254, size: 32, offset: 128)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1732, file: !38, line: 35, baseType: !521, size: 64, offset: 192)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1732, file: !38, line: 36, baseType: !1735, size: 64, offset: 256)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1729, file: !38, line: 47, baseType: !1742, size: 192)
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1729, file: !38, line: 39, size: 192, elements: !1743)
!1743 = !{!1744, !1745, !1746, !1765}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1742, file: !38, line: 40, baseType: !1424, size: 32)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1742, file: !38, line: 41, baseType: !37, size: 32, offset: 32)
!1746 = !DIDerivedType(tag: DW_TAG_member, scope: !1742, file: !38, line: 42, baseType: !1747, size: 64, offset: 64)
!1747 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1742, file: !38, line: 42, size: 64, elements: !1748)
!1748 = !{!1749, !1757}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1747, file: !38, line: 43, baseType: !1750, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1752, line: 7, size: 128, elements: !1753)
!1752 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1753 = !{!1754, !1756}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1751, file: !1752, line: 8, baseType: !1755, size: 64)
!1755 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !231, line: 93, baseType: !159)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1751, file: !1752, line: 9, baseType: !159, size: 64, offset: 64)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1747, file: !38, line: 44, baseType: !1758, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1760, line: 7, size: 64, elements: !1761)
!1760 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1761 = !{!1762, !1764}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1759, file: !1760, line: 8, baseType: !1763, size: 32)
!1763 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1760, line: 5, baseType: !124)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1759, file: !1760, line: 9, baseType: !124, size: 32, offset: 32)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1742, file: !38, line: 46, baseType: !521, size: 64, offset: 128)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1729, file: !38, line: 55, baseType: !1767, size: 256)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1729, file: !38, line: 49, size: 256, elements: !1768)
!1768 = !{!1769, !1772, !1773, !1774, !1775}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1767, file: !38, line: 50, baseType: !1770, size: 64)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !38, line: 14, flags: DIFlagFwdDecl)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1767, file: !38, line: 51, baseType: !106, size: 32, offset: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1767, file: !38, line: 52, baseType: !106, size: 32, offset: 96)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1767, file: !38, line: 53, baseType: !142, size: 64, offset: 128)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1767, file: !38, line: 54, baseType: !142, size: 64, offset: 192)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1266, file: !1267, line: 973, baseType: !1777, size: 32, offset: 10688)
!1777 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !117, line: 27, baseType: !1778)
!1778 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !231, line: 28, baseType: !106)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1266, file: !1267, line: 974, baseType: !1777, size: 32, offset: 10720)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1266, file: !1267, line: 978, baseType: !142, size: 64, offset: 10752)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1266, file: !1267, line: 987, baseType: !1265, size: 64, offset: 10816)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1266, file: !1267, line: 990, baseType: !1265, size: 64, offset: 10880)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1266, file: !1267, line: 995, baseType: !132, size: 128, offset: 10944)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1266, file: !1267, line: 996, baseType: !132, size: 128, offset: 11072)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1266, file: !1267, line: 997, baseType: !1265, size: 64, offset: 11200)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1266, file: !1267, line: 1005, baseType: !132, size: 128, offset: 11264)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1266, file: !1267, line: 1006, baseType: !132, size: 128, offset: 11392)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1266, file: !1267, line: 1009, baseType: !459, size: 64, offset: 11520)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1266, file: !1267, line: 1010, baseType: !1790, size: 512, offset: 11584)
!1790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !471, size: 512, elements: !314)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1266, file: !1267, line: 1011, baseType: !132, size: 128, offset: 12096)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1266, file: !1267, line: 1012, baseType: !132, size: 128, offset: 12224)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1266, file: !1267, line: 1014, baseType: !1794, size: 64, offset: 12352)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1796, line: 26, size: 256, elements: !1797)
!1796 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1797 = !{!1798, !1799}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1795, file: !1796, line: 27, baseType: !7, size: 32)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1795, file: !1796, line: 28, baseType: !1800, size: 192, offset: 64)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1801, line: 43, size: 192, elements: !1802)
!1801 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1802 = !{!1803, !1804}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1800, file: !1801, line: 44, baseType: !167, size: 32)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1800, file: !1801, line: 45, baseType: !132, size: 128, offset: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1266, file: !1267, line: 1017, baseType: !959, size: 64, offset: 12416)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1266, file: !1267, line: 1020, baseType: !959, size: 64, offset: 12480)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1266, file: !1267, line: 1023, baseType: !105, size: 64, offset: 12544)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1266, file: !1267, line: 1025, baseType: !521, size: 64, offset: 12608)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1266, file: !1267, line: 1026, baseType: !521, size: 64, offset: 12672)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1266, file: !1267, line: 1031, baseType: !521, size: 64, offset: 12736)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1266, file: !1267, line: 1032, baseType: !1812, size: 192, offset: 12800)
!1812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1267, line: 324, size: 192, elements: !1813)
!1813 = !{!1814, !1815, !1816}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1812, file: !1267, line: 326, baseType: !521, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1812, file: !1267, line: 327, baseType: !521, size: 64, offset: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1812, file: !1267, line: 328, baseType: !167, size: 32, offset: 128)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1266, file: !1267, line: 1041, baseType: !142, size: 64, offset: 12992)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1266, file: !1267, line: 1042, baseType: !142, size: 64, offset: 13056)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1266, file: !1267, line: 1045, baseType: !521, size: 64, offset: 13120)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1266, file: !1267, line: 1048, baseType: !521, size: 64, offset: 13184)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1266, file: !1267, line: 1051, baseType: !142, size: 64, offset: 13248)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1266, file: !1267, line: 1052, baseType: !142, size: 64, offset: 13312)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1266, file: !1267, line: 1055, baseType: !1824, size: 640, offset: 13376)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1825, line: 132, size: 640, elements: !1826)
!1825 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1826 = !{!1827, !1833, !1834}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1824, file: !1825, line: 133, baseType: !1828, size: 576)
!1828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1829, size: 576, elements: !455)
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1825, line: 117, size: 192, elements: !1830)
!1830 = !{!1831, !1832}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1829, file: !1825, line: 118, baseType: !521, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1829, file: !1825, line: 119, baseType: !1433, size: 128, offset: 64)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1824, file: !1825, line: 134, baseType: !7, size: 32, offset: 576)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1824, file: !1825, line: 135, baseType: !7, size: 32, offset: 608)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1266, file: !1267, line: 1058, baseType: !1836, size: 448, offset: 14016)
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1825, line: 144, size: 448, elements: !1837)
!1837 = !{!1838, !1839, !1840}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1836, file: !1825, line: 145, baseType: !416, size: 128, align: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1836, file: !1825, line: 146, baseType: !204, size: 256, offset: 128)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1836, file: !1825, line: 147, baseType: !7, size: 32, offset: 384)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1266, file: !1267, line: 1064, baseType: !500, size: 64, offset: 14464)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1266, file: !1267, line: 1067, baseType: !500, size: 64, offset: 14528)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1266, file: !1267, line: 1070, baseType: !500, size: 64, offset: 14592)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1266, file: !1267, line: 1074, baseType: !107, size: 64, offset: 14656)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1266, file: !1267, line: 1084, baseType: !1846, size: 128, offset: 14720)
!1846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 128, elements: !1847)
!1847 = !{!1848}
!1848 = !DISubrange(count: 16)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1266, file: !1267, line: 1086, baseType: !1850, size: 64, offset: 14848)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1267, line: 55, flags: DIFlagFwdDecl)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1266, file: !1267, line: 1089, baseType: !1853, size: 64, offset: 14912)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1854, line: 12, size: 64, elements: !1855)
!1854 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1855 = !{!1856}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1853, file: !1854, line: 13, baseType: !1857, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1854, line: 8, flags: DIFlagFwdDecl)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1266, file: !1267, line: 1090, baseType: !1860, size: 128, offset: 14976)
!1860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1861, line: 13, size: 128, elements: !1862)
!1861 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1862 = !{!1863}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1860, file: !1861, line: 14, baseType: !132, size: 128)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1266, file: !1267, line: 1097, baseType: !1865, size: 64, offset: 15104)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1267, line: 50, flags: DIFlagFwdDecl)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1266, file: !1267, line: 1100, baseType: !1868, size: 64, offset: 15168)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1267, line: 1100, flags: DIFlagFwdDecl)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1266, file: !1267, line: 1103, baseType: !1871, size: 64, offset: 15232)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1267, line: 53, flags: DIFlagFwdDecl)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1266, file: !1267, line: 1107, baseType: !1874, size: 64, offset: 15296)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1267, line: 56, flags: DIFlagFwdDecl)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1266, file: !1267, line: 1110, baseType: !1877, size: 64, offset: 15360)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1879, line: 93, size: 8768, elements: !1880)
!1879 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!1880 = !{!1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1930, !1939, !1940, !1942, !1943, !1944, !1947, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1985, !1986, !1993, !2003, !2006, !2007, !2010, !2011, !2012, !2013, !2014, !2015}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1878, file: !1879, line: 94, baseType: !111, size: 32)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1878, file: !1879, line: 95, baseType: !116, size: 32, offset: 32)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1878, file: !1879, line: 96, baseType: !106, size: 32, offset: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !1878, file: !1879, line: 97, baseType: !106, size: 32, offset: 96)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1878, file: !1879, line: 98, baseType: !132, size: 128, offset: 128)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1878, file: !1879, line: 100, baseType: !478, size: 192, offset: 256)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1878, file: !1879, line: 103, baseType: !1265, size: 64, offset: 448)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1878, file: !1879, line: 106, baseType: !1889, size: 192, offset: 512)
!1889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !571, line: 32, size: 192, elements: !1890)
!1890 = !{!1891, !1892}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1889, file: !571, line: 33, baseType: !132, size: 128)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1889, file: !571, line: 34, baseType: !1893, size: 64, offset: 128)
!1893 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1894, line: 25, baseType: !1895)
!1894 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1894, line: 23, size: 64, elements: !1896)
!1896 = !{!1897}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1895, file: !1894, line: 24, baseType: !1504, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1878, file: !1879, line: 109, baseType: !467, size: 64, offset: 704)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1878, file: !1879, line: 112, baseType: !106, size: 32, offset: 768)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1878, file: !1879, line: 114, baseType: !106, size: 32, offset: 800)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !1878, file: !1879, line: 115, baseType: !1265, size: 64, offset: 832)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1878, file: !1879, line: 118, baseType: !106, size: 32, offset: 896)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1878, file: !1879, line: 119, baseType: !7, size: 32, offset: 928)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1878, file: !1879, line: 121, baseType: !1905, size: 64, offset: 960)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !1879, line: 80, size: 448, elements: !1907)
!1907 = !{!1908, !1909, !1915}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1906, file: !1879, line: 81, baseType: !116, size: 32)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1906, file: !1879, line: 82, baseType: !1910, size: 128, offset: 64)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !1879, line: 75, size: 128, elements: !1911)
!1911 = !{!1912, !1913}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1910, file: !1879, line: 76, baseType: !1265, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1910, file: !1879, line: 77, baseType: !1914, size: 64, offset: 64)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1906, file: !1879, line: 83, baseType: !1795, size: 256, offset: 192)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1878, file: !1879, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1878, file: !1879, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !1878, file: !1879, line: 138, baseType: !7, size: 32, offset: 1056)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1878, file: !1879, line: 139, baseType: !132, size: 128, offset: 1088)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1878, file: !1879, line: 142, baseType: !1377, size: 512, offset: 1216)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1878, file: !1879, line: 143, baseType: !1385, size: 64, offset: 1728)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1878, file: !1879, line: 150, baseType: !1923, size: 256, offset: 1792)
!1923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1924, size: 256, elements: !1928)
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1879, line: 38, size: 128, elements: !1925)
!1925 = !{!1926, !1927}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1924, file: !1879, line: 39, baseType: !521, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1924, file: !1879, line: 40, baseType: !521, size: 64, offset: 64)
!1928 = !{!1929}
!1929 = !DISubrange(count: 2)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1878, file: !1879, line: 156, baseType: !1931, size: 192, offset: 2048)
!1931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1879, line: 66, size: 192, elements: !1932)
!1932 = !{!1933}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1931, file: !1879, line: 67, baseType: !1934, size: 192)
!1934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1879, line: 47, size: 192, elements: !1935)
!1935 = !{!1936, !1937, !1938}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1934, file: !1879, line: 48, baseType: !153, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1934, file: !1879, line: 49, baseType: !153, size: 64, offset: 64)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1934, file: !1879, line: 50, baseType: !153, size: 64, offset: 128)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1878, file: !1879, line: 160, baseType: !1824, size: 640, offset: 2240)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1878, file: !1879, line: 163, baseType: !1941, size: 256, offset: 2880)
!1941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !459, size: 256, elements: !314)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1878, file: !1879, line: 169, baseType: !459, size: 64, offset: 3136)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1878, file: !1879, line: 172, baseType: !106, size: 32, offset: 3200)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1878, file: !1879, line: 174, baseType: !1945, size: 64, offset: 3264)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1879, line: 174, flags: DIFlagFwdDecl)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1878, file: !1879, line: 185, baseType: !1948, size: 64, offset: 3328)
!1948 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !611, line: 860, baseType: !1949)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !611, line: 853, size: 64, elements: !1950)
!1950 = !{!1951, !1952}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1949, file: !611, line: 858, baseType: !610, size: 32)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1949, file: !611, line: 859, baseType: !212, size: 32, offset: 32)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1878, file: !1879, line: 186, baseType: !521, size: 64, offset: 3392)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1878, file: !1879, line: 186, baseType: !521, size: 64, offset: 3456)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1878, file: !1879, line: 186, baseType: !521, size: 64, offset: 3520)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1878, file: !1879, line: 186, baseType: !521, size: 64, offset: 3584)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1878, file: !1879, line: 187, baseType: !521, size: 64, offset: 3648)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1878, file: !1879, line: 188, baseType: !521, size: 64, offset: 3712)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1878, file: !1879, line: 189, baseType: !1812, size: 192, offset: 3776)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1878, file: !1879, line: 190, baseType: !142, size: 64, offset: 3968)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1878, file: !1879, line: 190, baseType: !142, size: 64, offset: 4032)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1878, file: !1879, line: 190, baseType: !142, size: 64, offset: 4096)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1878, file: !1879, line: 190, baseType: !142, size: 64, offset: 4160)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1878, file: !1879, line: 191, baseType: !142, size: 64, offset: 4224)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1878, file: !1879, line: 191, baseType: !142, size: 64, offset: 4288)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1878, file: !1879, line: 191, baseType: !142, size: 64, offset: 4352)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1878, file: !1879, line: 191, baseType: !142, size: 64, offset: 4416)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1878, file: !1879, line: 192, baseType: !142, size: 64, offset: 4480)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1878, file: !1879, line: 192, baseType: !142, size: 64, offset: 4544)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1878, file: !1879, line: 192, baseType: !142, size: 64, offset: 4608)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1878, file: !1879, line: 192, baseType: !142, size: 64, offset: 4672)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1878, file: !1879, line: 193, baseType: !142, size: 64, offset: 4736)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1878, file: !1879, line: 193, baseType: !142, size: 64, offset: 4800)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1878, file: !1879, line: 194, baseType: !1975, size: 448, offset: 4864)
!1975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1976, line: 12, size: 448, elements: !1977)
!1976 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!1977 = !{!1978, !1979, !1980, !1981, !1982, !1983, !1984}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !1975, file: !1976, line: 15, baseType: !521, size: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !1975, file: !1976, line: 17, baseType: !521, size: 64, offset: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !1975, file: !1976, line: 19, baseType: !521, size: 64, offset: 128)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !1975, file: !1976, line: 21, baseType: !521, size: 64, offset: 192)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !1975, file: !1976, line: 29, baseType: !521, size: 64, offset: 256)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !1975, file: !1976, line: 35, baseType: !521, size: 64, offset: 320)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !1975, file: !1976, line: 44, baseType: !521, size: 64, offset: 384)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1878, file: !1879, line: 202, baseType: !523, size: 64, offset: 5312)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1878, file: !1879, line: 213, baseType: !1987, size: 2048, offset: 5376)
!1987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1988, size: 2048, elements: !1847)
!1988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1989, line: 43, size: 128, elements: !1990)
!1989 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!1990 = !{!1991, !1992}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1988, file: !1989, line: 44, baseType: !292, size: 64)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1988, file: !1989, line: 45, baseType: !292, size: 64, offset: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !1878, file: !1879, line: 216, baseType: !1994, size: 448, offset: 7424)
!1994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !1879, line: 30, size: 448, elements: !1995)
!1995 = !{!1996, !1997, !1998, !1999, !2000, !2001, !2002}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !1994, file: !1879, line: 31, baseType: !106, size: 32)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !1994, file: !1879, line: 32, baseType: !759, size: 64, offset: 64)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !1994, file: !1879, line: 33, baseType: !142, size: 64, offset: 128)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !1994, file: !1879, line: 34, baseType: !521, size: 64, offset: 192)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !1994, file: !1879, line: 34, baseType: !521, size: 64, offset: 256)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !1994, file: !1879, line: 35, baseType: !142, size: 64, offset: 320)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !1994, file: !1879, line: 35, baseType: !142, size: 64, offset: 384)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1878, file: !1879, line: 219, baseType: !2004, size: 64, offset: 7872)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !1879, line: 219, flags: DIFlagFwdDecl)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !1878, file: !1879, line: 222, baseType: !7, size: 32, offset: 7936)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !1878, file: !1879, line: 223, baseType: !2008, size: 64, offset: 8000)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !1879, line: 223, flags: DIFlagFwdDecl)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1878, file: !1879, line: 230, baseType: !342, size: 8, offset: 8064)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1878, file: !1879, line: 231, baseType: !259, size: 16, offset: 8080)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1878, file: !1879, line: 232, baseType: !259, size: 16, offset: 8096)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1878, file: !1879, line: 234, baseType: !1553, size: 64, offset: 8128)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1878, file: !1879, line: 237, baseType: !204, size: 256, offset: 8192)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !1878, file: !1879, line: 243, baseType: !147, size: 320, offset: 8448)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1266, file: !1267, line: 1111, baseType: !2017, size: 64, offset: 15424)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1879, line: 20, size: 16640, elements: !2019)
!2019 = !{!2020, !2021, !2022, !2023}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2018, file: !1879, line: 21, baseType: !212, size: 32)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2018, file: !1879, line: 22, baseType: !111, size: 32, offset: 32)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2018, file: !1879, line: 23, baseType: !478, size: 192, offset: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2018, file: !1879, line: 24, baseType: !2024, size: 16384, offset: 256)
!2024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2025, size: 16384, elements: !2045)
!2025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !571, line: 51, size: 256, elements: !2026)
!2026 = !{!2027}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2025, file: !571, line: 52, baseType: !2028, size: 256)
!2028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !571, line: 37, size: 256, elements: !2029)
!2029 = !{!2030, !2037, !2038, !2044}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2028, file: !571, line: 39, baseType: !2031, size: 64)
!2031 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2032, line: 83, baseType: !2033)
!2032 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2032, line: 82, baseType: !2035)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{null, !106}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2028, file: !571, line: 40, baseType: !142, size: 64, offset: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2028, file: !571, line: 46, baseType: !2039, size: 64, offset: 128)
!2039 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2032, line: 86, baseType: !2040)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2032, line: 85, baseType: !2042)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{null}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2028, file: !571, line: 48, baseType: !1893, size: 64, offset: 192)
!2045 = !{!2046}
!2046 = !DISubrange(count: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1266, file: !1267, line: 1112, baseType: !1893, size: 64, offset: 15488)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1266, file: !1267, line: 1113, baseType: !1893, size: 64, offset: 15552)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1266, file: !1267, line: 1115, baseType: !1893, size: 64, offset: 15616)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1266, file: !1267, line: 1116, baseType: !1889, size: 192, offset: 15680)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1266, file: !1267, line: 1117, baseType: !142, size: 64, offset: 15872)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1266, file: !1267, line: 1118, baseType: !290, size: 64, offset: 15936)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1266, file: !1267, line: 1119, baseType: !7, size: 32, offset: 16000)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1266, file: !1267, line: 1121, baseType: !419, size: 64, offset: 16064)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1266, file: !1267, line: 1125, baseType: !2056, size: 64, offset: 16128)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1267, line: 43, flags: DIFlagFwdDecl)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1266, file: !1267, line: 1127, baseType: !224, size: 32, offset: 16192)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1266, file: !1267, line: 1128, baseType: !7, size: 32, offset: 16224)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1266, file: !1267, line: 1130, baseType: !2061, size: 128, offset: 16256)
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2062, line: 37, size: 128, elements: !2063)
!2062 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2063 = !{!2064, !2065, !2066}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2061, file: !2062, line: 38, baseType: !106, size: 32)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2061, file: !2062, line: 39, baseType: !116, size: 32, offset: 32)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2061, file: !2062, line: 40, baseType: !2067, size: 64, offset: 64)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2062, line: 24, flags: DIFlagFwdDecl)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1266, file: !1267, line: 1131, baseType: !2070, size: 256, offset: 16384)
!2070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2071, line: 12, size: 256, elements: !2072)
!2071 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2072 = !{!2073, !2074, !2075, !2076}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2070, file: !2071, line: 13, baseType: !307, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2070, file: !2071, line: 14, baseType: !142, size: 64, offset: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2070, file: !2071, line: 15, baseType: !142, size: 64, offset: 128)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2070, file: !2071, line: 16, baseType: !342, size: 8, offset: 192)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1266, file: !1267, line: 1134, baseType: !521, size: 64, offset: 16640)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1266, file: !1267, line: 1135, baseType: !521, size: 64, offset: 16704)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1266, file: !1267, line: 1138, baseType: !212, size: 32, offset: 16768)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1266, file: !1267, line: 1141, baseType: !167, size: 32, offset: 16800)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1266, file: !1267, line: 1143, baseType: !2082, size: 64, offset: 16832)
!2082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1267, line: 735, size: 64, elements: !2083)
!2083 = !{!2084}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2082, file: !1267, line: 736, baseType: !2085, size: 64)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1266, file: !1267, line: 1147, baseType: !1436, size: 128, offset: 16896)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1266, file: !1267, line: 1149, baseType: !1265, size: 64, offset: 17024)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1266, file: !1267, line: 1151, baseType: !2089, size: 64, offset: 17088)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1267, line: 1151, flags: DIFlagFwdDecl)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1266, file: !1267, line: 1188, baseType: !105, size: 64, offset: 17152)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1266, file: !1267, line: 1191, baseType: !2093, size: 64, offset: 17216)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1267, line: 44, flags: DIFlagFwdDecl)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1266, file: !1267, line: 1194, baseType: !2096, size: 64, offset: 17280)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1267, line: 45, flags: DIFlagFwdDecl)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1266, file: !1267, line: 1197, baseType: !2099, size: 64, offset: 17344)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1267, line: 61, flags: DIFlagFwdDecl)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1266, file: !1267, line: 1199, baseType: !2102, size: 64, offset: 17408)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2104, line: 99, size: 128, elements: !2105)
!2104 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2105 = !{!2106, !2107, !2108}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2103, file: !2104, line: 100, baseType: !151, size: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2103, file: !2104, line: 101, baseType: !116, size: 32, offset: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2103, file: !2104, line: 103, baseType: !194, size: 16, offset: 96)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1266, file: !1267, line: 1202, baseType: !2110, size: 64, offset: 17472)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1267, line: 48, flags: DIFlagFwdDecl)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1266, file: !1267, line: 1205, baseType: !142, size: 64, offset: 17536)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1266, file: !1267, line: 1206, baseType: !2114, size: 64, offset: 17600)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !571, line: 14, baseType: !2116)
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !571, line: 12, size: 384, elements: !2117)
!2117 = !{!2118}
!2118 = !DIDerivedType(tag: DW_TAG_member, scope: !2116, file: !571, line: 13, baseType: !2119, size: 384)
!2119 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2116, file: !571, line: 13, size: 384, elements: !2120)
!2120 = !{!2121, !2122, !2123, !2124}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2119, file: !571, line: 13, baseType: !106, size: 32)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2119, file: !571, line: 13, baseType: !106, size: 32, offset: 32)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2119, file: !571, line: 13, baseType: !106, size: 32, offset: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2119, file: !571, line: 13, baseType: !2125, size: 256, offset: 128)
!2125 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2126, line: 37, size: 256, elements: !2127)
!2126 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2127 = !{!2128, !2133, !2146, !2152, !2161, !2188, !2193}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2125, file: !2126, line: 42, baseType: !2129, size: 64)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2125, file: !2126, line: 39, size: 64, elements: !2130)
!2130 = !{!2131, !2132}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2129, file: !2126, line: 40, baseType: !1778, size: 32)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2129, file: !2126, line: 41, baseType: !230, size: 32, offset: 32)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2125, file: !2126, line: 50, baseType: !2134, size: 192)
!2134 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2125, file: !2126, line: 45, size: 192, elements: !2135)
!2135 = !{!2136, !2138, !2139, !2145}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2134, file: !2126, line: 46, baseType: !2137, size: 32)
!2137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !231, line: 95, baseType: !106)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2134, file: !2126, line: 47, baseType: !106, size: 32, offset: 32)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2134, file: !2126, line: 48, baseType: !2140, size: 64, offset: 64)
!2140 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2126, line: 11, baseType: !2141)
!2141 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2126, line: 8, size: 64, elements: !2142)
!2142 = !{!2143, !2144}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2141, file: !2126, line: 9, baseType: !106, size: 32)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2141, file: !2126, line: 10, baseType: !105, size: 64)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2134, file: !2126, line: 49, baseType: !106, size: 32, offset: 128)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2125, file: !2126, line: 57, baseType: !2147, size: 128)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2125, file: !2126, line: 53, size: 128, elements: !2148)
!2148 = !{!2149, !2150, !2151}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2147, file: !2126, line: 54, baseType: !1778, size: 32)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2147, file: !2126, line: 55, baseType: !230, size: 32, offset: 32)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2147, file: !2126, line: 56, baseType: !2140, size: 64, offset: 64)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2125, file: !2126, line: 66, baseType: !2153, size: 256)
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2125, file: !2126, line: 60, size: 256, elements: !2154)
!2154 = !{!2155, !2156, !2157, !2158, !2160}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2153, file: !2126, line: 61, baseType: !1778, size: 32)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2153, file: !2126, line: 62, baseType: !230, size: 32, offset: 32)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2153, file: !2126, line: 63, baseType: !106, size: 32, offset: 64)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2153, file: !2126, line: 64, baseType: !2159, size: 64, offset: 128)
!2159 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !231, line: 94, baseType: !801)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2153, file: !2126, line: 65, baseType: !2159, size: 64, offset: 192)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2125, file: !2126, line: 105, baseType: !2162, size: 256)
!2162 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2125, file: !2126, line: 69, size: 256, elements: !2163)
!2163 = !{!2164, !2165}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2162, file: !2126, line: 70, baseType: !105, size: 64)
!2165 = !DIDerivedType(tag: DW_TAG_member, scope: !2162, file: !2126, line: 79, baseType: !2166, size: 192, offset: 64)
!2166 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2162, file: !2126, line: 79, size: 192, elements: !2167)
!2167 = !{!2168, !2169, !2170, !2177, !2182}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2166, file: !2126, line: 81, baseType: !106, size: 32)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2166, file: !2126, line: 86, baseType: !259, size: 16)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2166, file: !2126, line: 92, baseType: !2171, size: 192)
!2171 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2166, file: !2126, line: 88, size: 192, elements: !2172)
!2172 = !{!2173, !2175, !2176}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2171, file: !2126, line: 89, baseType: !2174, size: 64)
!2174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 64, elements: !1420)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2171, file: !2126, line: 90, baseType: !105, size: 64, offset: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2171, file: !2126, line: 91, baseType: !105, size: 64, offset: 128)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2166, file: !2126, line: 97, baseType: !2178, size: 96)
!2178 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2166, file: !2126, line: 94, size: 96, elements: !2179)
!2179 = !{!2180, !2181}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2178, file: !2126, line: 95, baseType: !2174, size: 64)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2178, file: !2126, line: 96, baseType: !255, size: 32, offset: 64)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2166, file: !2126, line: 103, baseType: !2183, size: 128)
!2183 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2166, file: !2126, line: 99, size: 128, elements: !2184)
!2184 = !{!2185, !2186, !2187}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2183, file: !2126, line: 100, baseType: !142, size: 64)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2183, file: !2126, line: 101, baseType: !255, size: 32, offset: 64)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2183, file: !2126, line: 102, baseType: !255, size: 32, offset: 96)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2125, file: !2126, line: 111, baseType: !2189, size: 128)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2125, file: !2126, line: 108, size: 128, elements: !2190)
!2190 = !{!2191, !2192}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2189, file: !2126, line: 109, baseType: !759, size: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2189, file: !2126, line: 110, baseType: !106, size: 32, offset: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2125, file: !2126, line: 118, baseType: !2194, size: 128)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2125, file: !2126, line: 114, size: 128, elements: !2195)
!2195 = !{!2196, !2197, !2198}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2194, file: !2126, line: 115, baseType: !105, size: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2194, file: !2126, line: 116, baseType: !106, size: 32, offset: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2194, file: !2126, line: 117, baseType: !7, size: 32, offset: 96)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1266, file: !1267, line: 1208, baseType: !1975, size: 448, offset: 17664)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1266, file: !1267, line: 1215, baseType: !521, size: 64, offset: 18112)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1266, file: !1267, line: 1217, baseType: !521, size: 64, offset: 18176)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1266, file: !1267, line: 1219, baseType: !521, size: 64, offset: 18240)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1266, file: !1267, line: 1223, baseType: !2204, size: 64, offset: 18304)
!2204 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2205, line: 99, baseType: !2206)
!2205 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2206 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2205, line: 99, size: 64, elements: !2207)
!2207 = !{!2208}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2206, file: !2205, line: 99, baseType: !1504, size: 64)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1266, file: !1267, line: 1225, baseType: !610, size: 32, offset: 18368)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1266, file: !1267, line: 1226, baseType: !106, size: 32, offset: 18400)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1266, file: !1267, line: 1227, baseType: !106, size: 32, offset: 18432)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1266, file: !1267, line: 1231, baseType: !2213, size: 64, offset: 18496)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1267, line: 1231, flags: DIFlagFwdDecl)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1266, file: !1267, line: 1233, baseType: !132, size: 128, offset: 18560)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1266, file: !1267, line: 1240, baseType: !2217, size: 64, offset: 18688)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1267, line: 62, flags: DIFlagFwdDecl)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1266, file: !1267, line: 1242, baseType: !2220, size: 64, offset: 18752)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !2222, line: 392, size: 96, elements: !2223)
!2222 = !DIFile(filename: "./include/linux/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb3431a0ca9e11a8015b961c002b640")
!2223 = !{!2224, !2230, !2232}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2221, file: !2222, line: 393, baseType: !2225, size: 32)
!2225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list", file: !2222, line: 388, size: 32, elements: !2226)
!2226 = !{!2227}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2225, file: !2222, line: 389, baseType: !2228, size: 32)
!2228 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_uptr_t", file: !2229, line: 46, baseType: !254)
!2229 = !DIFile(filename: "./include/asm-generic/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "789dd20e6944b4211a8be38fb9d0b245")
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "futex_offset", scope: !2221, file: !2222, line: 394, baseType: !2231, size: 32, offset: 32)
!2231 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_long_t", file: !2229, line: 42, baseType: !124)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "list_op_pending", scope: !2221, file: !2222, line: 395, baseType: !2228, size: 32, offset: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1266, file: !1267, line: 1244, baseType: !132, size: 128, offset: 18816)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1266, file: !1267, line: 1245, baseType: !2235, size: 64, offset: 18944)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1267, line: 51, flags: DIFlagFwdDecl)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1266, file: !1267, line: 1246, baseType: !204, size: 256, offset: 19008)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1266, file: !1267, line: 1247, baseType: !7, size: 32, offset: 19264)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1266, file: !1267, line: 1250, baseType: !2240, size: 64, offset: 19328)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1267, line: 57, flags: DIFlagFwdDecl)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1266, file: !1267, line: 1251, baseType: !204, size: 256, offset: 19392)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1266, file: !1267, line: 1252, baseType: !132, size: 128, offset: 19648)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1266, file: !1267, line: 1259, baseType: !2245, size: 64, offset: 19776)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1267, line: 54, flags: DIFlagFwdDecl)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1266, file: !1267, line: 1260, baseType: !259, size: 16, offset: 19840)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1266, file: !1267, line: 1261, baseType: !259, size: 16, offset: 19856)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1266, file: !1267, line: 1314, baseType: !2250, size: 64, offset: 19904)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2252, line: 62, size: 256, align: 256, elements: !2253)
!2252 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2253 = !{!2254, !2255, !2256, !2257, !2258, !2259, !2260}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2251, file: !2252, line: 75, baseType: !255, size: 32)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2251, file: !2252, line: 90, baseType: !255, size: 32, offset: 32)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2251, file: !2252, line: 112, baseType: !522, size: 64, offset: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2251, file: !2252, line: 132, baseType: !255, size: 32, offset: 128)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2251, file: !2252, line: 140, baseType: !255, size: 32, offset: 160)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2251, file: !2252, line: 149, baseType: !255, size: 32, offset: 192)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2251, file: !2252, line: 154, baseType: !2261, offset: 224)
!2261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, elements: !493)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1266, file: !1267, line: 1315, baseType: !254, size: 32, offset: 19968)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1266, file: !1267, line: 1316, baseType: !254, size: 32, offset: 20000)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1266, file: !1267, line: 1321, baseType: !142, size: 64, offset: 20032)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1266, file: !1267, line: 1325, baseType: !106, size: 32, offset: 20096)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1266, file: !1267, line: 1326, baseType: !106, size: 32, offset: 20128)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1266, file: !1267, line: 1327, baseType: !106, size: 32, offset: 20160)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1266, file: !1267, line: 1328, baseType: !106, size: 32, offset: 20192)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1266, file: !1267, line: 1329, baseType: !416, size: 128, align: 64, offset: 20224)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1266, file: !1267, line: 1332, baseType: !2271, size: 128, offset: 20352)
!2271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2272, line: 51, size: 128, elements: !2273)
!2272 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2273 = !{!2274, !2279, !2280}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2271, file: !2272, line: 60, baseType: !2275, size: 64)
!2275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2276, line: 7, size: 64, elements: !2277)
!2276 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2277 = !{!2278}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2275, file: !2276, line: 12, baseType: !1501, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2271, file: !2272, line: 63, baseType: !342, size: 8, offset: 64)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2271, file: !2272, line: 70, baseType: !342, size: 8, offset: 72)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1266, file: !1267, line: 1335, baseType: !2282, size: 64, offset: 20480)
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!2283 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1267, line: 59, flags: DIFlagFwdDecl)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1266, file: !1267, line: 1337, baseType: !2285, size: 128, offset: 20544)
!2285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2272, line: 39, size: 128, elements: !2286)
!2286 = !{!2287, !2824, !2825}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2285, file: !2272, line: 40, baseType: !2288, size: 64)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !59, line: 74, size: 512, align: 128, elements: !2290)
!2290 = !{!2291, !2292, !2818, !2823}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2289, file: !59, line: 75, baseType: !142, size: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, scope: !2289, file: !59, line: 83, baseType: !2293, size: 320, offset: 64)
!2293 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2289, file: !59, line: 83, size: 320, elements: !2294)
!2294 = !{!2295, !2569, !2583, !2587, !2817}
!2295 = !DIDerivedType(tag: DW_TAG_member, scope: !2293, file: !59, line: 84, baseType: !2296, size: 320)
!2296 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2293, file: !59, line: 84, size: 320, elements: !2297)
!2297 = !{!2298, !2309, !2563, !2568}
!2298 = !DIDerivedType(tag: DW_TAG_member, scope: !2296, file: !59, line: 90, baseType: !2299, size: 128)
!2299 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2296, file: !59, line: 90, size: 128, elements: !2300)
!2300 = !{!2301, !2302, !2307, !2308}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2299, file: !59, line: 91, baseType: !132, size: 128)
!2302 = !DIDerivedType(tag: DW_TAG_member, scope: !2299, file: !59, line: 94, baseType: !2303, size: 128)
!2303 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2299, file: !59, line: 94, size: 128, elements: !2304)
!2304 = !{!2305, !2306}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2303, file: !59, line: 96, baseType: !105, size: 64)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2303, file: !59, line: 98, baseType: !7, size: 32, offset: 64)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2299, file: !59, line: 102, baseType: !132, size: 128)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2299, file: !59, line: 103, baseType: !132, size: 128)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2296, file: !59, line: 106, baseType: !2310, size: 64, offset: 128)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !22, line: 472, size: 1536, align: 64, elements: !2312)
!2312 = !{!2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2555, !2556, !2557, !2560, !2561, !2562}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !2311, file: !22, line: 473, baseType: !644, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !2311, file: !22, line: 474, baseType: !846, size: 128, offset: 64)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !2311, file: !22, line: 475, baseType: !147, size: 320, offset: 192)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2311, file: !22, line: 476, baseType: !851, size: 32, offset: 512)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !2311, file: !22, line: 477, baseType: !116, size: 32, offset: 544)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !2311, file: !22, line: 482, baseType: !1436, size: 128, offset: 576)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !2311, file: !22, line: 483, baseType: !142, size: 64, offset: 704)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !2311, file: !22, line: 484, baseType: !142, size: 64, offset: 768)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !2311, file: !22, line: 485, baseType: !2322, size: 64, offset: 832)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2324)
!2324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !22, line: 404, size: 1280, elements: !2325)
!2325 = !{!2326, !2330, !2400, !2404, !2408, !2414, !2420, !2424, !2429, !2433, !2437, !2441, !2519, !2523, !2527, !2531, !2536, !2540, !2547, !2551}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !2324, file: !22, line: 405, baseType: !2327, size: 64)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = !DISubroutineType(types: !2329)
!2329 = !{!106, !2288, !927}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !2324, file: !22, line: 406, baseType: !2331, size: 64, offset: 64)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = !DISubroutineType(types: !2333)
!2333 = !{!106, !763, !2334}
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !59, line: 293, size: 1536, elements: !2336)
!2336 = !{!2337, !2367, !2381}
!2337 = !DIDerivedType(tag: DW_TAG_member, scope: !2335, file: !59, line: 295, baseType: !2338, size: 512)
!2338 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2335, file: !59, line: 295, size: 512, elements: !2339)
!2339 = !{!2340, !2366}
!2340 = !DIDerivedType(tag: DW_TAG_member, scope: !2338, file: !59, line: 296, baseType: !2341, size: 448)
!2341 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2338, file: !59, line: 296, size: 448, elements: !2342)
!2342 = !{!2343, !2344, !2353, !2354, !2355, !2364, !2365}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2341, file: !59, line: 298, baseType: !142, size: 64)
!2344 = !DIDerivedType(tag: DW_TAG_member, scope: !2341, file: !59, line: 299, baseType: !2345, size: 128, offset: 64)
!2345 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2341, file: !59, line: 299, size: 128, elements: !2346)
!2346 = !{!2347, !2348}
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2345, file: !59, line: 300, baseType: !132, size: 128)
!2348 = !DIDerivedType(tag: DW_TAG_member, scope: !2345, file: !59, line: 302, baseType: !2349, size: 128)
!2349 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2345, file: !59, line: 302, size: 128, elements: !2350)
!2350 = !{!2351, !2352}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2349, file: !59, line: 303, baseType: !105, size: 64)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2349, file: !59, line: 305, baseType: !7, size: 32, offset: 64)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2341, file: !59, line: 310, baseType: !2310, size: 64, offset: 192)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2341, file: !59, line: 311, baseType: !142, size: 64, offset: 256)
!2355 = !DIDerivedType(tag: DW_TAG_member, scope: !2341, file: !59, line: 312, baseType: !2356, size: 64, offset: 320)
!2356 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2341, file: !59, line: 312, size: 64, elements: !2357)
!2357 = !{!2358, !2359}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2356, file: !59, line: 313, baseType: !105, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !2356, file: !59, line: 314, baseType: !2360, size: 64)
!2360 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !59, line: 257, baseType: !2361)
!2361 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !59, line: 255, size: 64, elements: !2362)
!2362 = !{!2363}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2361, file: !59, line: 256, baseType: !142, size: 64)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2341, file: !59, line: 316, baseType: !116, size: 32, offset: 384)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2341, file: !59, line: 317, baseType: !116, size: 32, offset: 416)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2338, file: !59, line: 323, baseType: !2289, size: 512, align: 128)
!2367 = !DIDerivedType(tag: DW_TAG_member, scope: !2335, file: !59, line: 325, baseType: !2368, size: 512, offset: 512)
!2368 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2335, file: !59, line: 325, size: 512, elements: !2369)
!2369 = !{!2370, !2380}
!2370 = !DIDerivedType(tag: DW_TAG_member, scope: !2368, file: !59, line: 326, baseType: !2371, size: 320)
!2371 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2368, file: !59, line: 326, size: 320, elements: !2372)
!2372 = !{!2373, !2374, !2375, !2376, !2377, !2378, !2379}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !2371, file: !59, line: 327, baseType: !142, size: 64)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !2371, file: !59, line: 328, baseType: !142, size: 64, offset: 64)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !2371, file: !59, line: 329, baseType: !142, size: 64, offset: 128)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !2371, file: !59, line: 331, baseType: !116, size: 32, offset: 192)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !2371, file: !59, line: 332, baseType: !116, size: 32, offset: 224)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !2371, file: !59, line: 333, baseType: !116, size: 32, offset: 256)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !2371, file: !59, line: 335, baseType: !7, size: 32, offset: 288)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !2368, file: !59, line: 339, baseType: !2289, size: 512, align: 128)
!2381 = !DIDerivedType(tag: DW_TAG_member, scope: !2335, file: !59, line: 341, baseType: !2382, size: 512, offset: 1024)
!2382 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2335, file: !59, line: 341, size: 512, elements: !2383)
!2383 = !{!2384, !2393, !2399}
!2384 = !DIDerivedType(tag: DW_TAG_member, scope: !2382, file: !59, line: 342, baseType: !2385, size: 384)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2382, file: !59, line: 342, size: 384, elements: !2386)
!2386 = !{!2387, !2388, !2389, !2390, !2391, !2392}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !2385, file: !59, line: 343, baseType: !142, size: 64)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !2385, file: !59, line: 344, baseType: !142, size: 64, offset: 64)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !2385, file: !59, line: 346, baseType: !105, size: 64, offset: 128)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !2385, file: !59, line: 347, baseType: !105, size: 64, offset: 192)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !2385, file: !59, line: 348, baseType: !105, size: 64, offset: 256)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !2385, file: !59, line: 349, baseType: !105, size: 64, offset: 320)
!2393 = !DIDerivedType(tag: DW_TAG_member, scope: !2382, file: !59, line: 352, baseType: !2394, size: 256)
!2394 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2382, file: !59, line: 352, size: 256, elements: !2395)
!2395 = !{!2396, !2397, !2398}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !2394, file: !59, line: 353, baseType: !142, size: 64)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !2394, file: !59, line: 354, baseType: !142, size: 64, offset: 64)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !2394, file: !59, line: 356, baseType: !132, size: 128, offset: 128)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !2382, file: !59, line: 359, baseType: !2289, size: 512, align: 128)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !2324, file: !22, line: 409, baseType: !2401, size: 64, offset: 128)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{!106, !2310, !927}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !2324, file: !22, line: 412, baseType: !2405, size: 64, offset: 192)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{!342, !2310, !2334}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !2324, file: !22, line: 414, baseType: !2409, size: 64, offset: 256)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{null, !2412}
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !22, line: 310, flags: DIFlagFwdDecl)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !2324, file: !22, line: 416, baseType: !2415, size: 64, offset: 320)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{!106, !763, !2310, !374, !7, !2418, !2419}
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !2324, file: !22, line: 419, baseType: !2421, size: 64, offset: 384)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{!106, !763, !2310, !374, !7, !7, !2288, !105}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !2324, file: !22, line: 424, baseType: !2425, size: 64, offset: 448)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{!2428, !2310, !2428}
!2428 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !117, line: 131, baseType: !521)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !2324, file: !22, line: 425, baseType: !2430, size: 64, offset: 512)
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{null, !2334, !290, !290}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !2324, file: !22, line: 426, baseType: !2434, size: 64, offset: 576)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = !DISubroutineType(types: !2436)
!2436 = !{!342, !2334, !851}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !2324, file: !22, line: 427, baseType: !2438, size: 64, offset: 640)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = !DISubroutineType(types: !2440)
!2440 = !{null, !2334}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !2324, file: !22, line: 428, baseType: !2442, size: 64, offset: 704)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{!799, !2445, !2467}
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !22, line: 373, size: 384, elements: !2447)
!2447 = !{!2448, !2449, !2450, !2454, !2455, !2456, !2457}
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2446, file: !22, line: 374, baseType: !763, size: 64)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2446, file: !22, line: 375, baseType: !374, size: 64, offset: 64)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2446, file: !22, line: 376, baseType: !2451, size: 64, offset: 128)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = !DISubroutineType(types: !2453)
!2453 = !{null, !2445, !759}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2446, file: !22, line: 377, baseType: !105, size: 64, offset: 192)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2446, file: !22, line: 378, baseType: !106, size: 32, offset: 256)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2446, file: !22, line: 379, baseType: !192, size: 16, offset: 288)
!2457 = !DIDerivedType(tag: DW_TAG_member, scope: !2446, file: !22, line: 380, baseType: !2458, size: 64, offset: 320)
!2458 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2446, file: !22, line: 380, size: 64, elements: !2459)
!2459 = !{!2460, !2463}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2458, file: !22, line: 386, baseType: !2461, size: 64)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !22, line: 386, flags: DIFlagFwdDecl)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2458, file: !22, line: 395, baseType: !2464, size: 64)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!799, !105}
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !2469, line: 41, size: 320, elements: !2470)
!2469 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!2470 = !{!2471, !2472, !2473, !2474, !2475, !2476, !2481, !2514}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !2468, file: !2469, line: 42, baseType: !184, size: 8)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !2468, file: !2469, line: 43, baseType: !342, size: 8, offset: 8)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !2468, file: !2469, line: 44, baseType: !342, size: 8, offset: 16)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !2468, file: !2469, line: 45, baseType: !342, size: 8, offset: 24)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !2468, file: !2469, line: 46, baseType: !342, size: 8, offset: 32)
!2476 = !DIDerivedType(tag: DW_TAG_member, scope: !2468, file: !2469, line: 47, baseType: !2477, size: 64, offset: 64)
!2477 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2468, file: !2469, line: 47, size: 64, elements: !2478)
!2478 = !{!2479, !2480}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !2477, file: !2469, line: 48, baseType: !290, size: 64)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !2477, file: !2469, line: 49, baseType: !106, size: 32)
!2481 = !DIDerivedType(tag: DW_TAG_member, scope: !2468, file: !2469, line: 61, baseType: !2482, size: 128, offset: 128)
!2482 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2468, file: !2469, line: 61, size: 128, elements: !2483)
!2483 = !{!2484, !2490}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !2482, file: !2469, line: 67, baseType: !2485, size: 128)
!2485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !2486, line: 17, size: 128, elements: !2487)
!2486 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!2487 = !{!2488, !2489}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2485, file: !2486, line: 19, baseType: !105, size: 64)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2485, file: !2486, line: 20, baseType: !291, size: 64, offset: 64)
!2490 = !DIDerivedType(tag: DW_TAG_member, scope: !2482, file: !2469, line: 68, baseType: !2491, size: 128)
!2491 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2482, file: !2469, line: 68, size: 128, elements: !2492)
!2492 = !{!2493, !2513}
!2493 = !DIDerivedType(tag: DW_TAG_member, scope: !2491, file: !2469, line: 69, baseType: !2494, size: 64)
!2494 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2491, file: !2469, line: 69, size: 64, elements: !2495)
!2495 = !{!2496, !2499, !2506, !2510, !2512}
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !2494, file: !2469, line: 71, baseType: !2497, size: 64)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2485)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !2494, file: !2469, line: 72, baseType: !2500, size: 64)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2502)
!2502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !2469, line: 17, size: 128, elements: !2503)
!2503 = !{!2504, !2505}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2502, file: !2469, line: 18, baseType: !105, size: 64)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2502, file: !2469, line: 19, baseType: !290, size: 64, offset: 64)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !2494, file: !2469, line: 73, baseType: !2507, size: 64)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2509)
!2509 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !2469, line: 73, flags: DIFlagFwdDecl)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !2494, file: !2469, line: 74, baseType: !2511, size: 64)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !2494, file: !2469, line: 75, baseType: !105, size: 64)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2491, file: !2469, line: 77, baseType: !290, size: 64, offset: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, scope: !2468, file: !2469, line: 80, baseType: !2515, size: 64, offset: 256)
!2515 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2468, file: !2469, line: 80, size: 64, elements: !2516)
!2516 = !{!2517, !2518}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !2515, file: !2469, line: 81, baseType: !142, size: 64)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !2515, file: !2469, line: 82, baseType: !374, size: 64)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !2324, file: !22, line: 433, baseType: !2520, size: 64, offset: 768)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{!106, !2310, !2334, !2334, !43}
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !2324, file: !22, line: 435, baseType: !2524, size: 64, offset: 832)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!106, !2334}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !2324, file: !22, line: 436, baseType: !2528, size: 64, offset: 896)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{!342, !2334, !290, !290}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !2324, file: !22, line: 438, baseType: !2532, size: 64, offset: 960)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DISubroutineType(types: !2534)
!2534 = !{null, !2334, !2535, !2535}
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !2324, file: !22, line: 439, baseType: !2537, size: 64, offset: 1024)
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2538 = !DISubroutineType(types: !2539)
!2539 = !{!106, !2310, !2288}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !2324, file: !22, line: 442, baseType: !2541, size: 64, offset: 1088)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{!106, !2544, !763, !2546}
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !22, line: 66, flags: DIFlagFwdDecl)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !2324, file: !22, line: 444, baseType: !2548, size: 64, offset: 1152)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{null, !763}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !2324, file: !22, line: 445, baseType: !2552, size: 64, offset: 1216)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DISubroutineType(types: !2554)
!2554 = !{!106, !2445, !2467}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2311, file: !22, line: 486, baseType: !142, size: 64, offset: 896)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !2311, file: !22, line: 487, baseType: !147, size: 320, offset: 960)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !2311, file: !22, line: 488, baseType: !2558, size: 32, offset: 1280)
!2558 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2559, line: 8, baseType: !254)
!2559 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !2311, file: !22, line: 489, baseType: !212, size: 32, offset: 1312)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !2311, file: !22, line: 490, baseType: !132, size: 128, offset: 1344)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !2311, file: !22, line: 491, baseType: !105, size: 64, offset: 1472)
!2563 = !DIDerivedType(tag: DW_TAG_member, scope: !2296, file: !59, line: 107, baseType: !2564, size: 64, offset: 192)
!2564 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2296, file: !59, line: 107, size: 64, elements: !2565)
!2565 = !{!2566, !2567}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2564, file: !59, line: 108, baseType: !142, size: 64)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2564, file: !59, line: 109, baseType: !142, size: 64)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2296, file: !59, line: 117, baseType: !142, size: 64, offset: 256)
!2569 = !DIDerivedType(tag: DW_TAG_member, scope: !2293, file: !59, line: 119, baseType: !2570, size: 320)
!2570 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2293, file: !59, line: 119, size: 320, elements: !2571)
!2571 = !{!2572, !2573, !2576, !2577, !2578}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2570, file: !59, line: 124, baseType: !142, size: 64)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2570, file: !59, line: 125, baseType: !2574, size: 64, offset: 64)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !59, line: 125, flags: DIFlagFwdDecl)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2570, file: !59, line: 126, baseType: !142, size: 64, offset: 128)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2570, file: !59, line: 127, baseType: !142, size: 64, offset: 192)
!2578 = !DIDerivedType(tag: DW_TAG_member, scope: !2570, file: !59, line: 128, baseType: !2579, size: 64, offset: 256)
!2579 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2570, file: !59, line: 128, size: 64, elements: !2580)
!2580 = !{!2581, !2582}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2579, file: !59, line: 133, baseType: !142, size: 64)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2579, file: !59, line: 138, baseType: !151, size: 64)
!2583 = !DIDerivedType(tag: DW_TAG_member, scope: !2293, file: !59, line: 141, baseType: !2584, size: 64)
!2584 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2293, file: !59, line: 141, size: 64, elements: !2585)
!2585 = !{!2586}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2584, file: !59, line: 142, baseType: !142, size: 64)
!2587 = !DIDerivedType(tag: DW_TAG_member, scope: !2293, file: !59, line: 144, baseType: !2588, size: 128)
!2588 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2293, file: !59, line: 144, size: 128, elements: !2589)
!2589 = !{!2590, !2816}
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2588, file: !59, line: 146, baseType: !2591, size: 64)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !51, line: 126, size: 1216, elements: !2593)
!2593 = !{!2594, !2604, !2625, !2626, !2627, !2628, !2629, !2798, !2799, !2800}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2592, file: !51, line: 127, baseType: !2595, size: 384)
!2595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !51, line: 21, size: 384, elements: !2596)
!2596 = !{!2597, !2598, !2600, !2601, !2602, !2603}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2595, file: !51, line: 22, baseType: !142, size: 64)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2595, file: !51, line: 23, baseType: !2599, size: 64, offset: 64)
!2599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2595, file: !51, line: 24, baseType: !2599, size: 64, offset: 128)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2595, file: !51, line: 25, baseType: !142, size: 64, offset: 192)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2595, file: !51, line: 26, baseType: !142, size: 64, offset: 256)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2595, file: !51, line: 27, baseType: !142, size: 64, offset: 320)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2592, file: !51, line: 128, baseType: !2605, size: 128, offset: 384)
!2605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2606, line: 105, size: 128, elements: !2607)
!2606 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2607 = !{!2608, !2609}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2605, file: !2606, line: 110, baseType: !142, size: 64)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2605, file: !2606, line: 118, baseType: !2610, size: 64, offset: 64)
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2611, size: 64)
!2611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2606, line: 95, size: 448, elements: !2612)
!2612 = !{!2613, !2614, !2620, !2621, !2622, !2623, !2624}
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2611, file: !2606, line: 96, baseType: !151, size: 64)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2611, file: !2606, line: 97, baseType: !2615, size: 64, offset: 64)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2606, line: 60, baseType: !2617)
!2617 = !DISubroutineType(types: !2618)
!2618 = !{null, !2619}
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2611, file: !2606, line: 98, baseType: !2615, size: 64, offset: 128)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2611, file: !2606, line: 99, baseType: !342, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2611, file: !2606, line: 100, baseType: !342, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2611, file: !2606, line: 101, baseType: !416, size: 128, align: 64, offset: 256)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2611, file: !2606, line: 102, baseType: !2619, size: 64, offset: 384)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2592, file: !51, line: 129, baseType: !1795, size: 256, offset: 512)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2592, file: !51, line: 130, baseType: !50, size: 32, offset: 768)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2592, file: !51, line: 131, baseType: !7, size: 32, offset: 800)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2592, file: !51, line: 132, baseType: !142, size: 64, offset: 832)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2592, file: !51, line: 133, baseType: !2630, size: 64, offset: 896)
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2632)
!2632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !51, line: 77, size: 192, elements: !2633)
!2633 = !{!2634, !2638, !2794}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2632, file: !51, line: 83, baseType: !2635, size: 64)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = !DISubroutineType(types: !2637)
!2637 = !{null, !2288}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2632, file: !51, line: 89, baseType: !2639, size: 64, offset: 64)
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2640 = !DISubroutineType(types: !2641)
!2641 = !{!2642, !2643}
!2642 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !59, line: 1184, baseType: !7)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2645, line: 512, size: 896, elements: !2646)
!2645 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2646 = !{!2647, !2761, !2762, !2769, !2776, !2786, !2787, !2788, !2790, !2792}
!2647 = !DIDerivedType(tag: DW_TAG_member, scope: !2644, file: !2645, line: 513, baseType: !2648, size: 320)
!2648 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2644, file: !2645, line: 513, size: 320, elements: !2649)
!2649 = !{!2650, !2757, !2758, !2759, !2760}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2648, file: !2645, line: 514, baseType: !2651, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !59, line: 625, size: 1344, elements: !2653)
!2653 = !{!2654, !2663, !2664, !2670, !2677, !2678, !2683, !2684, !2689, !2690, !2693, !2750, !2751, !2752, !2753, !2754, !2755}
!2654 = !DIDerivedType(tag: DW_TAG_member, scope: !2652, file: !59, line: 628, baseType: !2655, size: 128)
!2655 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2652, file: !59, line: 628, size: 128, elements: !2656)
!2656 = !{!2657, !2662}
!2657 = !DIDerivedType(tag: DW_TAG_member, scope: !2655, file: !59, line: 629, baseType: !2658, size: 128)
!2658 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2655, file: !59, line: 629, size: 128, elements: !2659)
!2659 = !{!2660, !2661}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2658, file: !59, line: 631, baseType: !142, size: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2658, file: !59, line: 632, baseType: !142, size: 64, offset: 64)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2655, file: !59, line: 635, baseType: !416, size: 128, align: 64)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2652, file: !59, line: 639, baseType: !1553, size: 64, offset: 128)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2652, file: !59, line: 640, baseType: !2665, size: 64, offset: 192)
!2665 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1588, line: 297, baseType: !2666)
!2666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1588, line: 297, size: 64, elements: !2667)
!2667 = !{!2668}
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2666, file: !1588, line: 297, baseType: !2669, size: 64)
!2669 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1593, line: 19, baseType: !142)
!2670 = !DIDerivedType(tag: DW_TAG_member, scope: !2652, file: !59, line: 646, baseType: !2671, size: 64, offset: 256)
!2671 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2652, file: !59, line: 646, size: 64, elements: !2672)
!2672 = !{!2673, !2676}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2671, file: !59, line: 647, baseType: !2674, size: 64)
!2674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2675)
!2675 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !59, line: 542, baseType: !142)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2671, file: !59, line: 648, baseType: !2675, size: 64)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2652, file: !59, line: 666, baseType: !106, size: 32, offset: 320)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2652, file: !59, line: 667, baseType: !2679, size: 64, offset: 384)
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !59, line: 579, size: 320, elements: !2681)
!2681 = !{!2682}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2680, file: !59, line: 580, baseType: !147, size: 320)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2652, file: !59, line: 670, baseType: !342, size: 8, offset: 448)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2652, file: !59, line: 681, baseType: !2685, size: 256, offset: 512)
!2685 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2652, file: !59, line: 678, size: 256, elements: !2686)
!2686 = !{!2687, !2688}
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2685, file: !59, line: 679, baseType: !138, size: 192, align: 64)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2685, file: !59, line: 680, baseType: !142, size: 64, offset: 192)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2652, file: !59, line: 689, baseType: !132, size: 128, offset: 768)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2652, file: !59, line: 691, baseType: !2691, size: 64, offset: 896)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !59, line: 691, flags: DIFlagFwdDecl)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2652, file: !59, line: 694, baseType: !2694, size: 64, offset: 960)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2696)
!2696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2645, line: 563, size: 1024, elements: !2697)
!2697 = !{!2698, !2702, !2703, !2707, !2711, !2715, !2716, !2720, !2724, !2728, !2729, !2730, !2734, !2738, !2742, !2746}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2696, file: !2645, line: 564, baseType: !2699, size: 64)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = !DISubroutineType(types: !2701)
!2701 = !{null, !2651}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2696, file: !2645, line: 569, baseType: !2699, size: 64, offset: 64)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2696, file: !2645, line: 571, baseType: !2704, size: 64, offset: 128)
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = !DISubroutineType(types: !2706)
!2706 = !{!106, !2651, !142}
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2696, file: !2645, line: 572, baseType: !2708, size: 64, offset: 192)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = !DISubroutineType(types: !2710)
!2710 = !{!106, !2651}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2696, file: !2645, line: 578, baseType: !2712, size: 64, offset: 256)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{!106, !2651, !142, !142, !142}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2696, file: !2645, line: 580, baseType: !2639, size: 64, offset: 320)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2696, file: !2645, line: 581, baseType: !2717, size: 64, offset: 384)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!2642, !2643, !7}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2696, file: !2645, line: 582, baseType: !2721, size: 64, offset: 448)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = !DISubroutineType(types: !2723)
!2723 = !{!2642, !2643, !142, !142}
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2696, file: !2645, line: 584, baseType: !2725, size: 64, offset: 512)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = !DISubroutineType(types: !2727)
!2727 = !{!142, !2651}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2696, file: !2645, line: 588, baseType: !2639, size: 64, offset: 576)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2696, file: !2645, line: 591, baseType: !2639, size: 64, offset: 640)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2696, file: !2645, line: 597, baseType: !2731, size: 64, offset: 704)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!106, !2651, !142, !105, !106, !106}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2696, file: !2645, line: 603, baseType: !2735, size: 64, offset: 768)
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{!287, !2651}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2696, file: !2645, line: 613, baseType: !2739, size: 64, offset: 832)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{!106, !2651, !2245}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2696, file: !2645, line: 625, baseType: !2743, size: 64, offset: 896)
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2744 = !DISubroutineType(types: !2745)
!2745 = !{!2245, !2651, !142}
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2696, file: !2645, line: 633, baseType: !2747, size: 64, offset: 960)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DISubroutineType(types: !2749)
!2749 = !{!2288, !2651, !142}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2652, file: !59, line: 697, baseType: !142, size: 64, offset: 1024)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2652, file: !59, line: 699, baseType: !763, size: 64, offset: 1088)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2652, file: !59, line: 700, baseType: !105, size: 64, offset: 1152)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2652, file: !59, line: 711, baseType: !151, size: 64, offset: 1216)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2652, file: !59, line: 717, baseType: !2245, size: 64, offset: 1280)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2652, file: !59, line: 722, baseType: !2756, offset: 1344)
!2756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !59, line: 570, elements: !896)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2648, file: !2645, line: 515, baseType: !851, size: 32, offset: 64)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2648, file: !2645, line: 516, baseType: !142, size: 64, offset: 128)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2648, file: !2645, line: 517, baseType: !142, size: 64, offset: 192)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2648, file: !2645, line: 518, baseType: !142, size: 64, offset: 256)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2644, file: !2645, line: 520, baseType: !58, size: 32, offset: 320)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2644, file: !2645, line: 522, baseType: !2763, size: 64, offset: 384)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1593, line: 22, baseType: !2765)
!2765 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1593, line: 22, size: 64, elements: !2766)
!2766 = !{!2767}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2765, file: !1593, line: 22, baseType: !2768, size: 64)
!2768 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1593, line: 15, baseType: !142)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2644, file: !2645, line: 524, baseType: !2770, size: 64, offset: 448)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1588, line: 372, baseType: !2772)
!2772 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1588, line: 372, size: 64, elements: !2773)
!2773 = !{!2774}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2772, file: !1588, line: 372, baseType: !2775, size: 64)
!2775 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1593, line: 16, baseType: !142)
!2776 = !DIDerivedType(tag: DW_TAG_member, scope: !2644, file: !2645, line: 527, baseType: !2777, size: 64, offset: 512)
!2777 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2644, file: !2645, line: 527, size: 64, elements: !2778)
!2778 = !{!2779, !2785}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2777, file: !2645, line: 528, baseType: !2780, size: 64)
!2780 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1593, line: 21, baseType: !2781)
!2781 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1593, line: 21, size: 64, elements: !2782)
!2782 = !{!2783}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2781, file: !1593, line: 21, baseType: !2784, size: 64)
!2784 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1593, line: 14, baseType: !142)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2777, file: !2645, line: 529, baseType: !2764, size: 64)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2644, file: !2645, line: 534, baseType: !2288, size: 64, offset: 576)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2644, file: !2645, line: 535, baseType: !2288, size: 64, offset: 640)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2644, file: !2645, line: 541, baseType: !2789, size: 64, offset: 704)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2644, file: !2645, line: 545, baseType: !2791, size: 64, offset: 768)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2644, file: !2645, line: 549, baseType: !2793, size: 64, offset: 832)
!2793 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1588, line: 520, baseType: !2288)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2632, file: !51, line: 100, baseType: !2795, size: 64, offset: 128)
!2795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2796, size: 64)
!2796 = !DISubroutineType(types: !2797)
!2797 = !{!106, !2591, !142, !142, !106}
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2592, file: !51, line: 134, baseType: !105, size: 64, offset: 960)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2592, file: !51, line: 135, baseType: !106, size: 32, offset: 1024)
!2800 = !DIDerivedType(tag: DW_TAG_member, scope: !2592, file: !51, line: 136, baseType: !2801, size: 128, offset: 1088)
!2801 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2592, file: !51, line: 136, size: 128, elements: !2802)
!2802 = !{!2803, !2809}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2801, file: !51, line: 137, baseType: !2804, size: 128)
!2804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2805, line: 6, size: 128, elements: !2806)
!2805 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2806 = !{!2807, !2808}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2804, file: !2805, line: 7, baseType: !521, size: 64)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2804, file: !2805, line: 8, baseType: !521, size: 64, offset: 64)
!2809 = !DIDerivedType(tag: DW_TAG_member, scope: !2801, file: !51, line: 138, baseType: !2810)
!2810 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2801, file: !51, line: 138, elements: !2811)
!2811 = !{!2812, !2814}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2810, file: !51, line: 138, baseType: !2813)
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2810, file: !51, line: 138, elements: !896)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2810, file: !51, line: 138, baseType: !2815)
!2815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2804, elements: !493)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2588, file: !59, line: 147, baseType: !105, size: 64, offset: 64)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2293, file: !59, line: 161, baseType: !416, size: 128, align: 64)
!2818 = !DIDerivedType(tag: DW_TAG_member, scope: !2289, file: !59, line: 164, baseType: !2819, size: 32, offset: 384)
!2819 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2289, file: !59, line: 164, size: 32, elements: !2820)
!2820 = !{!2821, !2822}
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2819, file: !59, line: 169, baseType: !116, size: 32)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2819, file: !59, line: 177, baseType: !7, size: 32)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2289, file: !59, line: 181, baseType: !116, size: 32, offset: 416)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2285, file: !2272, line: 42, baseType: !255, size: 32, offset: 64)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2285, file: !2272, line: 43, baseType: !255, size: 32, offset: 96)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1266, file: !1267, line: 1340, baseType: !2827, size: 64, offset: 20672)
!2827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2828, size: 64)
!2828 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1267, line: 69, flags: DIFlagFwdDecl)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1266, file: !1267, line: 1351, baseType: !106, size: 32, offset: 20736)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1266, file: !1267, line: 1352, baseType: !106, size: 32, offset: 20768)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1266, file: !1267, line: 1354, baseType: !142, size: 64, offset: 20800)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1266, file: !1267, line: 1364, baseType: !521, size: 64, offset: 20864)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1266, file: !1267, line: 1365, baseType: !521, size: 64, offset: 20928)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1266, file: !1267, line: 1412, baseType: !142, size: 64, offset: 20992)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1266, file: !1267, line: 1453, baseType: !2836, size: 64, offset: 21056)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1267, line: 1453, flags: DIFlagFwdDecl)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1266, file: !1267, line: 1457, baseType: !2839, size: 64, offset: 21120)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2840, size: 64)
!2840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !75, line: 61, size: 576, elements: !2841)
!2841 = !{!2842, !2843, !2862, !2865, !2866, !2899, !2909}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2840, file: !75, line: 62, baseType: !74, size: 32)
!2843 = !DIDerivedType(tag: DW_TAG_member, scope: !2840, file: !75, line: 64, baseType: !2844, size: 192, offset: 64)
!2844 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2840, file: !75, line: 64, size: 192, elements: !2845)
!2845 = !{!2846, !2857}
!2846 = !DIDerivedType(tag: DW_TAG_member, scope: !2844, file: !75, line: 65, baseType: !2847, size: 192)
!2847 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2844, file: !75, line: 65, size: 192, elements: !2848)
!2848 = !{!2849, !2856}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2847, file: !75, line: 66, baseType: !2850, size: 128)
!2850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2851, line: 50, size: 128, elements: !2852)
!2851 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2852 = !{!2853, !2854, !2855}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2850, file: !2851, line: 52, baseType: !142, size: 64)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2850, file: !2851, line: 54, baseType: !7, size: 32, offset: 64)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2850, file: !2851, line: 55, baseType: !7, size: 32, offset: 96)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2847, file: !75, line: 67, baseType: !142, size: 64, offset: 128)
!2857 = !DIDerivedType(tag: DW_TAG_member, scope: !2844, file: !75, line: 70, baseType: !2858, size: 192)
!2858 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2844, file: !75, line: 70, size: 192, elements: !2859)
!2859 = !{!2860, !2861}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2858, file: !75, line: 71, baseType: !416, size: 128, align: 64)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2858, file: !75, line: 72, baseType: !142, size: 64, offset: 128)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2840, file: !75, line: 76, baseType: !2863, size: 64, offset: 256)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !75, line: 76, flags: DIFlagFwdDecl)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2840, file: !75, line: 77, baseType: !142, size: 64, offset: 320)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2840, file: !75, line: 79, baseType: !2867, size: 64, offset: 384)
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2851, line: 25, size: 256, elements: !2869)
!2869 = !{!2870, !2876, !2880}
!2870 = !DIDerivedType(tag: DW_TAG_member, scope: !2868, file: !2851, line: 26, baseType: !2871, size: 128)
!2871 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2868, file: !2851, line: 26, size: 128, elements: !2872)
!2872 = !{!2873, !2875}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2871, file: !2851, line: 27, baseType: !2874, size: 128)
!2874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 128, elements: !1847)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2871, file: !2851, line: 28, baseType: !2874, size: 128)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2868, file: !2851, line: 31, baseType: !2877, size: 64, offset: 128)
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2878, size: 64)
!2878 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2879)
!2879 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2851, line: 23, flags: DIFlagFwdDecl)
!2880 = !DIDerivedType(tag: DW_TAG_member, scope: !2868, file: !2851, line: 33, baseType: !2881, size: 64, offset: 192)
!2881 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2868, file: !2851, line: 33, size: 64, elements: !2882)
!2882 = !{!2883, !2889, !2894}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2881, file: !2851, line: 38, baseType: !2884, size: 64)
!2884 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2881, file: !2851, line: 34, size: 64, elements: !2885)
!2885 = !{!2886, !2887, !2888}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2884, file: !2851, line: 35, baseType: !124, size: 32)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2884, file: !2851, line: 36, baseType: !184, size: 8, offset: 32)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2884, file: !2851, line: 37, baseType: !184, size: 8, offset: 40)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2881, file: !2851, line: 42, baseType: !2890, size: 16)
!2890 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2881, file: !2851, line: 39, size: 16, elements: !2891)
!2891 = !{!2892, !2893}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2890, file: !2851, line: 40, baseType: !184, size: 8)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2890, file: !2851, line: 41, baseType: !184, size: 8, offset: 8)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2881, file: !2851, line: 46, baseType: !2895, size: 16)
!2895 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2881, file: !2851, line: 43, size: 16, elements: !2896)
!2896 = !{!2897, !2898}
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2895, file: !2851, line: 44, baseType: !184, size: 8)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2895, file: !2851, line: 45, baseType: !184, size: 8, offset: 8)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2840, file: !75, line: 81, baseType: !2900, size: 64, offset: 448)
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64)
!2901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !75, line: 85, size: 384, elements: !2902)
!2902 = !{!2903, !2904, !2905, !2906, !2907, !2908}
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2901, file: !75, line: 86, baseType: !2863, size: 64)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2901, file: !75, line: 87, baseType: !142, size: 64, offset: 64)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2901, file: !75, line: 88, baseType: !142, size: 64, offset: 128)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2901, file: !75, line: 89, baseType: !142, size: 64, offset: 192)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2901, file: !75, line: 90, baseType: !342, size: 8, offset: 256)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2901, file: !75, line: 92, baseType: !2900, size: 64, offset: 320)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2840, file: !75, line: 82, baseType: !7, size: 32, offset: 512)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1266, file: !1267, line: 1463, baseType: !2911, offset: 21184)
!2911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1267, line: 739, elements: !896)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1266, file: !1267, line: 1470, baseType: !416, size: 128, align: 64, offset: 21184)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1266, file: !1267, line: 1471, baseType: !111, size: 32, offset: 21312)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1266, file: !1267, line: 1472, baseType: !106, size: 32, offset: 21344)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1266, file: !1267, line: 1474, baseType: !1265, size: 64, offset: 21376)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1266, file: !1267, line: 1475, baseType: !2917, size: 320, offset: 21440)
!2917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2918, line: 11, size: 320, elements: !2919)
!2918 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2919 = !{!2920, !2921, !2922, !2927}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2917, file: !2918, line: 16, baseType: !471, size: 128)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2917, file: !2918, line: 17, baseType: !142, size: 64, offset: 128)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2917, file: !2918, line: 18, baseType: !2923, size: 64, offset: 192)
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2924 = !DISubroutineType(types: !2925)
!2925 = !{null, !2926}
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2917, size: 64)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2917, file: !2918, line: 19, baseType: !254, size: 32, offset: 256)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1266, file: !1267, line: 1478, baseType: !2929, size: 64, offset: 21760)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2931, line: 49, size: 512, elements: !2932)
!2931 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2932 = !{!2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2942}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2930, file: !2931, line: 50, baseType: !2929, size: 64)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2930, file: !2931, line: 51, baseType: !105, size: 64, offset: 64)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2930, file: !2931, line: 52, baseType: !142, size: 64, offset: 128)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2930, file: !2931, line: 53, baseType: !142, size: 64, offset: 192)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2930, file: !2931, line: 54, baseType: !2418, size: 64, offset: 256)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !2930, file: !2931, line: 56, baseType: !7, size: 32, offset: 320)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2930, file: !2931, line: 58, baseType: !7, size: 32, offset: 352)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2930, file: !2931, line: 59, baseType: !2941, size: 64, offset: 384)
!2941 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !117, line: 159, baseType: !521)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2930, file: !2931, line: 60, baseType: !317, size: 64, offset: 448)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1266, file: !1267, line: 1482, baseType: !111, size: 32, offset: 21824)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1266, file: !1267, line: 1489, baseType: !105, size: 64, offset: 21888)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1266, file: !1267, line: 1504, baseType: !105, size: 64, offset: 21952)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1266, file: !1267, line: 1505, baseType: !522, size: 64, offset: 22016)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1266, file: !1267, line: 1506, baseType: !521, size: 64, offset: 22080)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1266, file: !1267, line: 1507, baseType: !522, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1266, file: !1267, line: 1508, baseType: !522, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1266, file: !1267, line: 1509, baseType: !522, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1266, file: !1267, line: 1510, baseType: !416, size: 128, align: 64, offset: 22208)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1266, file: !1267, line: 1511, baseType: !106, size: 32, offset: 22336)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1266, file: !1267, line: 1515, baseType: !2954, size: 64, offset: 22400)
!2954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !411, line: 56, size: 64, elements: !2955)
!2955 = !{!2956}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2954, file: !411, line: 57, baseType: !414, size: 64)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1266, file: !1267, line: 1518, baseType: !2954, size: 64, offset: 22464)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1266, file: !1267, line: 1528, baseType: !416, size: 128, align: 64, offset: 22528)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1266, file: !1267, line: 1552, baseType: !2960, size: 35328, offset: 23040)
!2960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2961, line: 430, size: 35328, elements: !2962)
!2961 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2962 = !{!2963, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2992, !2993, !2994, !2995, !2996, !2997, !3000, !3001, !3002, !3003}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2960, file: !2961, line: 432, baseType: !2964, size: 192)
!2964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2965, size: 192, elements: !455)
!2965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2966, line: 16, size: 64, elements: !2967)
!2966 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2967 = !{!2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2965, file: !2966, line: 17, baseType: !192, size: 16)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2965, file: !2966, line: 18, baseType: !192, size: 16, offset: 16)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2965, file: !2966, line: 19, baseType: !192, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2965, file: !2966, line: 19, baseType: !192, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2965, file: !2966, line: 19, baseType: !192, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2965, file: !2966, line: 19, baseType: !192, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2965, file: !2966, line: 19, baseType: !192, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2965, file: !2966, line: 20, baseType: !192, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2965, file: !2966, line: 20, baseType: !192, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2965, file: !2966, line: 20, baseType: !192, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2965, file: !2966, line: 20, baseType: !192, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2965, file: !2966, line: 20, baseType: !192, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2965, file: !2966, line: 20, baseType: !192, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2960, file: !2961, line: 436, baseType: !142, size: 64, offset: 192)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2960, file: !2961, line: 440, baseType: !194, size: 16, offset: 256)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2960, file: !2961, line: 441, baseType: !194, size: 16, offset: 272)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2960, file: !2961, line: 442, baseType: !194, size: 16, offset: 288)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2960, file: !2961, line: 443, baseType: !194, size: 16, offset: 304)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2960, file: !2961, line: 447, baseType: !142, size: 64, offset: 320)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2960, file: !2961, line: 448, baseType: !142, size: 64, offset: 384)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2960, file: !2961, line: 459, baseType: !2989, size: 256, offset: 448)
!2989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2990, size: 256, elements: !314)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2961, line: 428, flags: DIFlagFwdDecl)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2960, file: !2961, line: 461, baseType: !142, size: 64, offset: 704)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2960, file: !2961, line: 463, baseType: !142, size: 64, offset: 768)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2960, file: !2961, line: 465, baseType: !142, size: 64, offset: 832)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2960, file: !2961, line: 466, baseType: !142, size: 64, offset: 896)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2960, file: !2961, line: 467, baseType: !142, size: 64, offset: 960)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2960, file: !2961, line: 473, baseType: !2998, size: 64, offset: 1024)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2961, line: 10, flags: DIFlagFwdDecl)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2960, file: !2961, line: 480, baseType: !142, size: 64, offset: 1088)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2960, file: !2961, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2960, file: !2961, line: 491, baseType: !254, size: 32, offset: 1184)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2960, file: !2961, line: 501, baseType: !3004, size: 33792, offset: 1536)
!3004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3005, line: 448, size: 33792, elements: !3006)
!3005 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3006 = !{!3007, !3008, !3009, !3173, !3174, !3180, !3181}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3004, file: !3005, line: 461, baseType: !7, size: 32)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3004, file: !3005, line: 468, baseType: !142, size: 64, offset: 64)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3004, file: !3005, line: 476, baseType: !3010, size: 64, offset: 128)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3005, line: 356, size: 33280, align: 512, elements: !3012)
!3012 = !{!3013, !3014, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3022}
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3011, file: !3005, line: 358, baseType: !7, size: 32)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3011, file: !3005, line: 361, baseType: !7, size: 32, offset: 32)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3011, file: !3005, line: 364, baseType: !521, size: 64, offset: 64)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3011, file: !3005, line: 367, baseType: !521, size: 64, offset: 128)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3011, file: !3005, line: 370, baseType: !521, size: 64, offset: 192)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3011, file: !3005, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3011, file: !3005, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3011, file: !3005, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3011, file: !3005, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3011, file: !3005, line: 397, baseType: !3023, size: 32768, offset: 512)
!3023 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3005, line: 348, size: 32768, elements: !3024)
!3024 = !{!3025, !3040, !3079, !3156, !3169}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3023, file: !3005, line: 349, baseType: !3026, size: 896)
!3026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3005, line: 12, size: 896, elements: !3027)
!3027 = !{!3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3039}
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3026, file: !3005, line: 13, baseType: !254, size: 32)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3026, file: !3005, line: 14, baseType: !254, size: 32, offset: 32)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3026, file: !3005, line: 15, baseType: !254, size: 32, offset: 64)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3026, file: !3005, line: 16, baseType: !254, size: 32, offset: 96)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3026, file: !3005, line: 17, baseType: !254, size: 32, offset: 128)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3026, file: !3005, line: 18, baseType: !254, size: 32, offset: 160)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3026, file: !3005, line: 19, baseType: !254, size: 32, offset: 192)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3026, file: !3005, line: 22, baseType: !3036, size: 640, offset: 224)
!3036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 640, elements: !3037)
!3037 = !{!3038}
!3038 = !DISubrange(count: 20)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3026, file: !3005, line: 25, baseType: !254, size: 32, offset: 864)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3023, file: !3005, line: 350, baseType: !3041, size: 4096, align: 128)
!3041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3005, line: 34, size: 4096, align: 128, elements: !3042)
!3042 = !{!3043, !3044, !3045, !3046, !3047, !3062, !3063, !3064, !3068, !3070, !3074}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3041, file: !3005, line: 35, baseType: !192, size: 16)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3041, file: !3005, line: 36, baseType: !192, size: 16, offset: 16)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3041, file: !3005, line: 37, baseType: !192, size: 16, offset: 32)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3041, file: !3005, line: 38, baseType: !192, size: 16, offset: 48)
!3047 = !DIDerivedType(tag: DW_TAG_member, scope: !3041, file: !3005, line: 39, baseType: !3048, size: 128, offset: 64)
!3048 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3041, file: !3005, line: 39, size: 128, elements: !3049)
!3049 = !{!3050, !3055}
!3050 = !DIDerivedType(tag: DW_TAG_member, scope: !3048, file: !3005, line: 40, baseType: !3051, size: 128)
!3051 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3048, file: !3005, line: 40, size: 128, elements: !3052)
!3052 = !{!3053, !3054}
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3051, file: !3005, line: 41, baseType: !521, size: 64)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3051, file: !3005, line: 42, baseType: !521, size: 64, offset: 64)
!3055 = !DIDerivedType(tag: DW_TAG_member, scope: !3048, file: !3005, line: 44, baseType: !3056, size: 128)
!3056 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3048, file: !3005, line: 44, size: 128, elements: !3057)
!3057 = !{!3058, !3059, !3060, !3061}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3056, file: !3005, line: 45, baseType: !254, size: 32)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3056, file: !3005, line: 46, baseType: !254, size: 32, offset: 32)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3056, file: !3005, line: 47, baseType: !254, size: 32, offset: 64)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3056, file: !3005, line: 48, baseType: !254, size: 32, offset: 96)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3041, file: !3005, line: 51, baseType: !254, size: 32, offset: 192)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3041, file: !3005, line: 52, baseType: !254, size: 32, offset: 224)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3041, file: !3005, line: 55, baseType: !3065, size: 1024, offset: 256)
!3065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 1024, elements: !3066)
!3066 = !{!3067}
!3067 = !DISubrange(count: 32)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3041, file: !3005, line: 58, baseType: !3069, size: 2048, offset: 1280)
!3069 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 2048, elements: !2045)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3041, file: !3005, line: 60, baseType: !3071, size: 384, offset: 3328)
!3071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 384, elements: !3072)
!3072 = !{!3073}
!3073 = !DISubrange(count: 12)
!3074 = !DIDerivedType(tag: DW_TAG_member, scope: !3041, file: !3005, line: 62, baseType: !3075, size: 384, offset: 3712)
!3075 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3041, file: !3005, line: 62, size: 384, elements: !3076)
!3076 = !{!3077, !3078}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3075, file: !3005, line: 63, baseType: !3071, size: 384)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3075, file: !3005, line: 64, baseType: !3071, size: 384)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3023, file: !3005, line: 351, baseType: !3080, size: 1088)
!3080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3005, line: 79, size: 1088, elements: !3081)
!3081 = !{!3082, !3083, !3084, !3085, !3086, !3087, !3088, !3089, !3090, !3091, !3092, !3093, !3094, !3095, !3096, !3155}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3080, file: !3005, line: 80, baseType: !254, size: 32)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3080, file: !3005, line: 81, baseType: !254, size: 32, offset: 32)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3080, file: !3005, line: 82, baseType: !254, size: 32, offset: 64)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3080, file: !3005, line: 83, baseType: !254, size: 32, offset: 96)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3080, file: !3005, line: 84, baseType: !254, size: 32, offset: 128)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3080, file: !3005, line: 85, baseType: !254, size: 32, offset: 160)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3080, file: !3005, line: 86, baseType: !254, size: 32, offset: 192)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3080, file: !3005, line: 88, baseType: !3036, size: 640, offset: 224)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3080, file: !3005, line: 89, baseType: !184, size: 8, offset: 864)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3080, file: !3005, line: 90, baseType: !184, size: 8, offset: 872)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3080, file: !3005, line: 91, baseType: !184, size: 8, offset: 880)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3080, file: !3005, line: 92, baseType: !184, size: 8, offset: 888)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3080, file: !3005, line: 93, baseType: !184, size: 8, offset: 896)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3080, file: !3005, line: 94, baseType: !184, size: 8, offset: 904)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3080, file: !3005, line: 95, baseType: !3097, size: 64, offset: 960)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3099, line: 11, size: 128, elements: !3100)
!3099 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3100 = !{!3101, !3102}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3098, file: !3099, line: 12, baseType: !759, size: 64)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3098, file: !3099, line: 13, baseType: !3103, size: 64, offset: 64)
!3103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3104, size: 64)
!3104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3105, line: 103, size: 1344, elements: !3106)
!3105 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3106 = !{!3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3124, !3135, !3136, !3137}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3104, file: !3105, line: 109, baseType: !142, size: 64)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3104, file: !3105, line: 110, baseType: !142, size: 64, offset: 64)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3104, file: !3105, line: 111, baseType: !142, size: 64, offset: 128)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3104, file: !3105, line: 112, baseType: !142, size: 64, offset: 192)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3104, file: !3105, line: 113, baseType: !142, size: 64, offset: 256)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3104, file: !3105, line: 114, baseType: !142, size: 64, offset: 320)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3104, file: !3105, line: 117, baseType: !142, size: 64, offset: 384)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3104, file: !3105, line: 118, baseType: !142, size: 64, offset: 448)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3104, file: !3105, line: 119, baseType: !142, size: 64, offset: 512)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3104, file: !3105, line: 120, baseType: !142, size: 64, offset: 576)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3104, file: !3105, line: 121, baseType: !142, size: 64, offset: 640)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3104, file: !3105, line: 122, baseType: !142, size: 64, offset: 704)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3104, file: !3105, line: 123, baseType: !142, size: 64, offset: 768)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3104, file: !3105, line: 124, baseType: !142, size: 64, offset: 832)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3104, file: !3105, line: 125, baseType: !142, size: 64, offset: 896)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3104, file: !3105, line: 139, baseType: !142, size: 64, offset: 960)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3104, file: !3105, line: 142, baseType: !142, size: 64, offset: 1024)
!3124 = !DIDerivedType(tag: DW_TAG_member, scope: !3104, file: !3105, line: 144, baseType: !3125, size: 64, offset: 1088)
!3125 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3104, file: !3105, line: 144, size: 64, elements: !3126)
!3126 = !{!3127, !3128, !3129}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3125, file: !3105, line: 146, baseType: !192, size: 16)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3125, file: !3105, line: 148, baseType: !521, size: 64)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3125, file: !3105, line: 150, baseType: !3130, size: 64)
!3130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3105, line: 59, size: 64, elements: !3131)
!3131 = !{!3132, !3133, !3134}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3130, file: !3105, line: 61, baseType: !521, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3130, file: !3105, line: 63, baseType: !521, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3130, file: !3105, line: 65, baseType: !521, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3104, file: !3105, line: 153, baseType: !142, size: 64, offset: 1152)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3104, file: !3105, line: 154, baseType: !142, size: 64, offset: 1216)
!3137 = !DIDerivedType(tag: DW_TAG_member, scope: !3104, file: !3105, line: 156, baseType: !3138, size: 64, offset: 1280)
!3138 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3104, file: !3105, line: 156, size: 64, elements: !3139)
!3139 = !{!3140, !3141, !3142}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3138, file: !3105, line: 158, baseType: !192, size: 16)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3138, file: !3105, line: 160, baseType: !521, size: 64)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3138, file: !3105, line: 162, baseType: !3143, size: 64)
!3143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3105, line: 69, size: 64, elements: !3144)
!3144 = !{!3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3143, file: !3105, line: 71, baseType: !521, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3143, file: !3105, line: 73, baseType: !521, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3143, file: !3105, line: 75, baseType: !521, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3143, file: !3105, line: 77, baseType: !521, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3143, file: !3105, line: 80, baseType: !521, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3143, file: !3105, line: 83, baseType: !521, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3143, file: !3105, line: 86, baseType: !521, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3143, file: !3105, line: 88, baseType: !521, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3143, file: !3105, line: 93, baseType: !521, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3143, file: !3105, line: 100, baseType: !521, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3080, file: !3005, line: 96, baseType: !254, size: 32, offset: 1024)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3023, file: !3005, line: 352, baseType: !3157, size: 4608, align: 512)
!3157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3005, line: 333, size: 4608, align: 512, elements: !3158)
!3158 = !{!3159, !3160, !3167}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3157, file: !3005, line: 334, baseType: !3041, size: 4096, align: 128)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3157, file: !3005, line: 335, baseType: !3161, size: 512, offset: 4096)
!3161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3005, line: 312, size: 512, elements: !3162)
!3162 = !{!3163, !3164, !3165}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3161, file: !3005, line: 313, baseType: !521, size: 64)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3161, file: !3005, line: 314, baseType: !521, size: 64, offset: 64)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3161, file: !3005, line: 315, baseType: !3166, size: 384, offset: 128)
!3166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !521, size: 384, elements: !278)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3157, file: !3005, line: 336, baseType: !3168, offset: 4608)
!3168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, elements: !493)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3023, file: !3005, line: 353, baseType: !3170, size: 32768)
!3170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 32768, elements: !3171)
!3171 = !{!3172}
!3172 = !DISubrange(count: 4096)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3004, file: !3005, line: 484, baseType: !3010, size: 64, offset: 192)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3004, file: !3005, line: 491, baseType: !3175, size: 128, offset: 256)
!3175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3005, line: 404, size: 128, elements: !3176)
!3176 = !{!3177, !3178, !3179}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3175, file: !3005, line: 424, baseType: !521, size: 64)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3175, file: !3005, line: 432, baseType: !7, size: 32, offset: 64)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3175, file: !3005, line: 440, baseType: !7, size: 32, offset: 96)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3004, file: !3005, line: 498, baseType: !3175, size: 128, offset: 384)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3004, file: !3005, line: 508, baseType: !3011, size: 33280, align: 512, offset: 512)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1247, file: !1248, line: 16, baseType: !478, size: 192, offset: 512)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1247, file: !1248, line: 17, baseType: !116, size: 32, offset: 704)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !856, file: !22, line: 1240, baseType: !105, size: 64, offset: 6912)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !856, file: !22, line: 1243, baseType: !254, size: 32, offset: 6976)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !856, file: !22, line: 1245, baseType: !239, size: 64, offset: 7040)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !856, file: !22, line: 1246, baseType: !239, size: 64, offset: 7104)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !856, file: !22, line: 1248, baseType: !255, size: 32, offset: 7168)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !856, file: !22, line: 1249, baseType: !3190, size: 64, offset: 7232)
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3191, size: 64)
!3191 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !22, line: 634, flags: DIFlagFwdDecl)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !856, file: !22, line: 1252, baseType: !3193, size: 256, offset: 7296)
!3193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 256, elements: !3066)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !856, file: !22, line: 1253, baseType: !3195, size: 128, offset: 7552)
!3195 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3196, line: 21, baseType: !3197)
!3196 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3197 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3196, line: 19, size: 128, elements: !3198)
!3198 = !{!3199}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3197, file: !3196, line: 20, baseType: !3200, size: 128)
!3200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 128, elements: !1847)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !856, file: !22, line: 1255, baseType: !7, size: 32, offset: 7680)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !856, file: !22, line: 1261, baseType: !204, size: 256, offset: 7744)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !856, file: !22, line: 1267, baseType: !287, size: 64, offset: 8000)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !856, file: !22, line: 1269, baseType: !3205, size: 64, offset: 8064)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3207)
!3207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !606, line: 128, size: 1024, align: 512, elements: !3208)
!3208 = !{!3209, !3213, !3214, !3221, !3227, !3231, !3235, !3239, !3240, !3244, !3248, !3253, !3257}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3207, file: !606, line: 129, baseType: !3210, size: 64)
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{!106, !604, !7}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3207, file: !606, line: 130, baseType: !3210, size: 64, offset: 64)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3207, file: !606, line: 131, baseType: !3215, size: 64, offset: 128)
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3216, size: 64)
!3216 = !DISubroutineType(types: !3217)
!3217 = !{!106, !3218, !3220}
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !605)
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3207, file: !606, line: 132, baseType: !3222, size: 64, offset: 192)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{!106, !3218, !7, !287, !3225}
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !629)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3207, file: !606, line: 134, baseType: !3228, size: 64, offset: 256)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = !DISubroutineType(types: !3230)
!3230 = !{!106, !3218}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3207, file: !606, line: 135, baseType: !3232, size: 64, offset: 320)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = !DISubroutineType(types: !3234)
!3234 = !{!106, !604}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3207, file: !606, line: 136, baseType: !3236, size: 64, offset: 384)
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = !DISubroutineType(types: !3238)
!3238 = !{null, !604}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3207, file: !606, line: 137, baseType: !3236, size: 64, offset: 448)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3207, file: !606, line: 138, baseType: !3241, size: 64, offset: 512)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{null, !604, !644}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3207, file: !606, line: 139, baseType: !3245, size: 64, offset: 576)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{!307, !604, !307, !106}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3207, file: !606, line: 140, baseType: !3249, size: 64, offset: 640)
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = !DISubroutineType(types: !3251)
!3251 = !{!599, !3252}
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3207, file: !606, line: 141, baseType: !3254, size: 64, offset: 704)
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3255, size: 64)
!3255 = !DISubroutineType(types: !3256)
!3256 = !{!106, !768, !342}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3207, file: !606, line: 142, baseType: !3258, size: 64, offset: 768)
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3259 = !DISubroutineType(types: !3260)
!3260 = !{!604, !604, !3261}
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !645)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !856, file: !22, line: 1271, baseType: !3264, size: 448, offset: 8128)
!3264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1029, line: 63, size: 448, elements: !3265)
!3265 = !{!3266, !3271, !3272, !3273, !3274, !3275, !3276}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3264, file: !1029, line: 64, baseType: !3267, size: 64)
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = !DISubroutineType(types: !3269)
!3269 = !{!142, !3270, !1027}
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3264, file: !1029, line: 66, baseType: !3267, size: 64, offset: 64)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3264, file: !1029, line: 69, baseType: !759, size: 64, offset: 128)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3264, file: !1029, line: 70, baseType: !106, size: 32, offset: 192)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3264, file: !1029, line: 71, baseType: !7, size: 32, offset: 224)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3264, file: !1029, line: 74, baseType: !132, size: 128, offset: 256)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3264, file: !1029, line: 85, baseType: !3277, size: 64, offset: 384)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !856, file: !22, line: 1274, baseType: !151, size: 64, offset: 8576)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !856, file: !22, line: 1280, baseType: !151, size: 64, offset: 8640)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !856, file: !22, line: 1283, baseType: !106, size: 32, offset: 8704)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !856, file: !22, line: 1286, baseType: !2558, size: 32, offset: 8736)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !856, file: !22, line: 1289, baseType: !3283, size: 64, offset: 8768)
!3283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3284, size: 64)
!3284 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1685, line: 18, flags: DIFlagFwdDecl)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !856, file: !22, line: 1290, baseType: !467, size: 64, offset: 8832)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !856, file: !22, line: 1297, baseType: !566, size: 64, offset: 8896)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !856, file: !22, line: 1304, baseType: !3288, size: 64, offset: 8960)
!3288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3289, line: 49, size: 64, elements: !3290)
!3289 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3290 = !{!3291}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3288, file: !3289, line: 50, baseType: !3292, size: 64)
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3293, size: 64)
!3293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3289, line: 41, size: 512, align: 512, elements: !3294)
!3294 = !{!3295, !3296, !3301}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3293, file: !3289, line: 43, baseType: !212, size: 32)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3293, file: !3289, line: 45, baseType: !3297, size: 192, offset: 64)
!3297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3289, line: 29, size: 192, elements: !3298)
!3298 = !{!3299, !3300}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3297, file: !3289, line: 30, baseType: !132, size: 128)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3297, file: !3289, line: 32, baseType: !759, size: 64, offset: 128)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3293, file: !3289, line: 46, baseType: !759, size: 64, offset: 256)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !856, file: !22, line: 1305, baseType: !3288, size: 64, offset: 9024)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !856, file: !22, line: 1306, baseType: !416, size: 128, align: 64, offset: 9088)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !856, file: !22, line: 1307, baseType: !1684, size: 256, offset: 9216)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !856, file: !22, line: 1309, baseType: !204, size: 256, offset: 9472)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !856, file: !22, line: 1314, baseType: !106, size: 32, offset: 9728)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !856, file: !22, line: 1317, baseType: !212, size: 32, align: 512, offset: 10240)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !856, file: !22, line: 1318, baseType: !132, size: 128, offset: 10304)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !856, file: !22, line: 1320, baseType: !212, size: 32, offset: 10432)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !856, file: !22, line: 1321, baseType: !132, size: 128, offset: 10496)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !645, file: !22, line: 656, baseType: !2310, size: 64, offset: 512)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !645, file: !22, line: 659, baseType: !105, size: 64, offset: 576)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !645, file: !22, line: 663, baseType: !142, size: 64, offset: 640)
!3314 = !DIDerivedType(tag: DW_TAG_member, scope: !645, file: !22, line: 671, baseType: !3315, size: 32, offset: 704)
!3315 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !645, file: !22, line: 671, size: 32, elements: !3316)
!3316 = !{!3317, !3319}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3315, file: !22, line: 672, baseType: !3318, size: 32)
!3318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3315, file: !22, line: 673, baseType: !7, size: 32)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !645, file: !22, line: 675, baseType: !719, size: 32, offset: 736)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !645, file: !22, line: 676, baseType: !374, size: 64, offset: 768)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !645, file: !22, line: 677, baseType: !755, size: 128, offset: 832)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !645, file: !22, line: 678, baseType: !755, size: 128, offset: 960)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !645, file: !22, line: 679, baseType: !755, size: 128, offset: 1088)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !645, file: !22, line: 680, baseType: !212, size: 32, offset: 1216)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !645, file: !22, line: 681, baseType: !194, size: 16, offset: 1248)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !645, file: !22, line: 682, baseType: !184, size: 8, offset: 1264)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !645, file: !22, line: 683, baseType: !184, size: 8, offset: 1272)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !645, file: !22, line: 684, baseType: !1160, size: 64, offset: 1280)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !645, file: !22, line: 691, baseType: !142, size: 64, offset: 1344)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !645, file: !22, line: 692, baseType: !147, size: 320, offset: 1408)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !645, file: !22, line: 694, baseType: !142, size: 64, offset: 1728)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !645, file: !22, line: 695, baseType: !142, size: 64, offset: 1792)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !645, file: !22, line: 697, baseType: !471, size: 128, offset: 1856)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !645, file: !22, line: 698, baseType: !132, size: 128, offset: 1984)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !645, file: !22, line: 707, baseType: !132, size: 128, offset: 2112)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !645, file: !22, line: 708, baseType: !132, size: 128, offset: 2240)
!3338 = !DIDerivedType(tag: DW_TAG_member, scope: !645, file: !22, line: 709, baseType: !3339, size: 128, offset: 2368)
!3339 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !645, file: !22, line: 709, size: 128, elements: !3340)
!3340 = !{!3341, !3342}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3339, file: !22, line: 710, baseType: !467, size: 64)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3339, file: !22, line: 711, baseType: !416, size: 128, align: 64)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !645, file: !22, line: 713, baseType: !153, size: 64, offset: 2496)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !645, file: !22, line: 714, baseType: !153, size: 64, offset: 2560)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !645, file: !22, line: 715, baseType: !116, size: 32, offset: 2624)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !645, file: !22, line: 716, baseType: !116, size: 32, offset: 2656)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !645, file: !22, line: 717, baseType: !116, size: 32, offset: 2688)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !645, file: !22, line: 719, baseType: !116, size: 32, offset: 2720)
!3349 = !DIDerivedType(tag: DW_TAG_member, scope: !645, file: !22, line: 721, baseType: !3350, size: 64, offset: 2752)
!3350 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !645, file: !22, line: 721, size: 64, elements: !3351)
!3351 = !{!3352, !3480}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3350, file: !22, line: 722, baseType: !3353, size: 64)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3355)
!3355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !22, line: 1914, size: 2112, elements: !3356)
!3356 = !{!3357, !3358, !3362, !3366, !3370, !3371, !3372, !3378, !3391, !3399, !3403, !3404, !3408, !3409, !3413, !3418, !3419, !3423, !3427, !3433, !3434, !3438, !3439, !3443, !3447, !3448, !3453, !3457, !3461, !3465, !3469, !3470, !3476}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3355, file: !22, line: 1915, baseType: !888, size: 64)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3355, file: !22, line: 1916, baseType: !3359, size: 64, offset: 64)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3360, size: 64)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{!374, !763, !374, !106}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3355, file: !22, line: 1917, baseType: !3363, size: 64, offset: 128)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{!799, !763, !307, !290, !387}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3355, file: !22, line: 1918, baseType: !3367, size: 64, offset: 192)
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3368 = !DISubroutineType(types: !3369)
!3369 = !{!799, !763, !287, !290, !387}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3355, file: !22, line: 1919, baseType: !2442, size: 64, offset: 256)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3355, file: !22, line: 1920, baseType: !2442, size: 64, offset: 320)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3355, file: !22, line: 1921, baseType: !3373, size: 64, offset: 384)
!3373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3374, size: 64)
!3374 = !DISubroutineType(types: !3375)
!3375 = !{!106, !2445, !3376, !7}
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3377 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !22, line: 53, flags: DIFlagFwdDecl)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3355, file: !22, line: 1923, baseType: !3379, size: 64, offset: 448)
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3380 = !DISubroutineType(types: !3381)
!3381 = !{!106, !763, !3382}
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !22, line: 1858, size: 128, elements: !3384)
!3384 = !{!3385, !3390}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3383, file: !22, line: 1859, baseType: !3386, size: 64)
!3386 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !22, line: 1855, baseType: !3387)
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3388, size: 64)
!3388 = !DISubroutineType(types: !3389)
!3389 = !{!342, !3382, !287, !106, !374, !521, !7}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3383, file: !22, line: 1860, baseType: !374, size: 64, offset: 64)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3355, file: !22, line: 1924, baseType: !3392, size: 64, offset: 512)
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3393, size: 64)
!3393 = !DISubroutineType(types: !3394)
!3394 = !{!3395, !763, !3397}
!3395 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3396, line: 59, baseType: !7)
!3396 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !22, line: 61, flags: DIFlagFwdDecl)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3355, file: !22, line: 1925, baseType: !3400, size: 64, offset: 576)
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3401 = !DISubroutineType(types: !3402)
!3402 = !{!759, !763, !7, !142}
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3355, file: !22, line: 1926, baseType: !3400, size: 64, offset: 640)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3355, file: !22, line: 1927, baseType: !3405, size: 64, offset: 704)
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3406 = !DISubroutineType(types: !3407)
!3407 = !{!106, !763, !2651}
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3355, file: !22, line: 1928, baseType: !142, size: 64, offset: 768)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3355, file: !22, line: 1929, baseType: !3410, size: 64, offset: 832)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{!106, !644, !763}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3355, file: !22, line: 1930, baseType: !3414, size: 64, offset: 896)
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3415 = !DISubroutineType(types: !3416)
!3416 = !{!106, !763, !3417}
!3417 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !22, line: 1061, baseType: !105)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3355, file: !22, line: 1931, baseType: !3410, size: 64, offset: 960)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3355, file: !22, line: 1932, baseType: !3420, size: 64, offset: 1024)
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3421 = !DISubroutineType(types: !3422)
!3422 = !{!106, !763, !374, !374, !106}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3355, file: !22, line: 1933, baseType: !3424, size: 64, offset: 1088)
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3425 = !DISubroutineType(types: !3426)
!3426 = !{!106, !106, !763, !106}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3355, file: !22, line: 1934, baseType: !3428, size: 64, offset: 1152)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = !DISubroutineType(types: !3430)
!3430 = !{!106, !763, !106, !3431}
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !22, line: 1063, flags: DIFlagFwdDecl)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3355, file: !22, line: 1935, baseType: !1577, size: 64, offset: 1216)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3355, file: !22, line: 1936, baseType: !3435, size: 64, offset: 1280)
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3436, size: 64)
!3436 = !DISubroutineType(types: !3437)
!3437 = !{!106, !106}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3355, file: !22, line: 1937, baseType: !3428, size: 64, offset: 1344)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3355, file: !22, line: 1938, baseType: !3440, size: 64, offset: 1408)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = !DISubroutineType(types: !3442)
!3442 = !{!799, !2282, !763, !387, !290, !7}
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3355, file: !22, line: 1939, baseType: !3444, size: 64, offset: 1472)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DISubroutineType(types: !3446)
!3446 = !{!799, !763, !387, !2282, !290, !7}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3355, file: !22, line: 1940, baseType: !2548, size: 64, offset: 1536)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3355, file: !22, line: 1941, baseType: !3449, size: 64, offset: 1600)
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3450, size: 64)
!3450 = !DISubroutineType(types: !3451)
!3451 = !{!106, !763, !106, !3452, !2419}
!3452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3431, size: 64)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3355, file: !22, line: 1942, baseType: !3454, size: 64, offset: 1664)
!3454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3455, size: 64)
!3455 = !DISubroutineType(types: !3456)
!3456 = !{!759, !763, !106, !374, !374}
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3355, file: !22, line: 1944, baseType: !3458, size: 64, offset: 1728)
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3459, size: 64)
!3459 = !DISubroutineType(types: !3460)
!3460 = !{null, !364, !763}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3355, file: !22, line: 1948, baseType: !3462, size: 64, offset: 1792)
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3463, size: 64)
!3463 = !DISubroutineType(types: !3464)
!3464 = !{!799, !763, !374, !763, !374, !290, !7}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3355, file: !22, line: 1950, baseType: !3466, size: 64, offset: 1856)
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3467, size: 64)
!3467 = !DISubroutineType(types: !3468)
!3468 = !{!374, !763, !374, !763, !374, !374, !7}
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3355, file: !22, line: 1953, baseType: !3420, size: 64, offset: 1920)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3355, file: !22, line: 1954, baseType: !3471, size: 64, offset: 1984)
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = !DISubroutineType(types: !3473)
!3473 = !{!106, !3474, !7}
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !22, line: 1911, flags: DIFlagFwdDecl)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3355, file: !22, line: 1955, baseType: !3477, size: 64, offset: 2048)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = !DISubroutineType(types: !3479)
!3479 = !{!106, !3474, !3376, !7}
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3350, file: !22, line: 723, baseType: !915, size: 64)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !645, file: !22, line: 725, baseType: !3482, size: 64, offset: 2816)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !22, line: 725, flags: DIFlagFwdDecl)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !645, file: !22, line: 726, baseType: !2311, size: 1536, align: 64, offset: 2880)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !645, file: !22, line: 727, baseType: !132, size: 128, offset: 4416)
!3486 = !DIDerivedType(tag: DW_TAG_member, scope: !645, file: !22, line: 728, baseType: !3487, size: 64, offset: 4544)
!3487 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !645, file: !22, line: 728, size: 64, elements: !3488)
!3488 = !{!3489, !3490, !3493, !3494}
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3487, file: !22, line: 729, baseType: !2282, size: 64)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3487, file: !22, line: 730, baseType: !3491, size: 64)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !22, line: 730, flags: DIFlagFwdDecl)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3487, file: !22, line: 731, baseType: !307, size: 64)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3487, file: !22, line: 732, baseType: !7, size: 32)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !645, file: !22, line: 735, baseType: !255, size: 32, offset: 4608)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !645, file: !22, line: 738, baseType: !255, size: 32, offset: 4640)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !645, file: !22, line: 739, baseType: !3190, size: 64, offset: 4672)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !645, file: !22, line: 750, baseType: !105, size: 64, offset: 4736)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !605, file: !606, line: 91, baseType: !3500, size: 256, offset: 448)
!3500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 256, elements: !3066)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !605, file: !606, line: 94, baseType: !3502, size: 64, offset: 704)
!3502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3503, line: 25, size: 64, elements: !3504)
!3503 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3504 = !{!3505}
!3505 = !DIDerivedType(tag: DW_TAG_member, scope: !3502, file: !3503, line: 26, baseType: !3506, size: 64)
!3506 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3502, file: !3503, line: 26, size: 64, elements: !3507)
!3507 = !{!3508, !3509}
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3506, file: !3503, line: 28, baseType: !522, size: 64, align: 64)
!3509 = !DIDerivedType(tag: DW_TAG_member, scope: !3506, file: !3503, line: 30, baseType: !3510, size: 64)
!3510 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3506, file: !3503, line: 30, size: 64, elements: !3511)
!3511 = !{!3512, !3513}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3510, file: !3503, line: 31, baseType: !212, size: 32)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3510, file: !3503, line: 32, baseType: !106, size: 32, offset: 32)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !605, file: !606, line: 95, baseType: !3205, size: 64, offset: 768)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !605, file: !606, line: 96, baseType: !855, size: 64, offset: 832)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !605, file: !606, line: 97, baseType: !142, size: 64, offset: 896)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !605, file: !606, line: 98, baseType: !105, size: 64, offset: 960)
!3518 = !DIDerivedType(tag: DW_TAG_member, scope: !605, file: !606, line: 100, baseType: !3519, size: 128, offset: 1024)
!3519 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !605, file: !606, line: 100, size: 128, elements: !3520)
!3520 = !{!3521, !3522}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3519, file: !606, line: 101, baseType: !132, size: 128)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3519, file: !606, line: 102, baseType: !3523, size: 64)
!3523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !605, file: !606, line: 104, baseType: !132, size: 128, offset: 1152)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !605, file: !606, line: 105, baseType: !132, size: 128, offset: 1280)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !605, file: !606, line: 113, baseType: !3527, size: 128, offset: 1408)
!3527 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !605, file: !606, line: 109, size: 128, elements: !3528)
!3528 = !{!3529, !3530, !3531}
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3527, file: !606, line: 110, baseType: !471, size: 128)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3527, file: !606, line: 111, baseType: !620, size: 128)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3527, file: !606, line: 112, baseType: !416, size: 128, align: 64)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !600, file: !601, line: 72, baseType: !855, size: 64, offset: 64)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !600, file: !601, line: 73, baseType: !106, size: 32, offset: 128)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !600, file: !601, line: 74, baseType: !684, size: 64, offset: 192)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !595, file: !596, line: 10, baseType: !604, size: 64, offset: 64)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !404, file: !22, line: 1015, baseType: !644, size: 64, offset: 1344)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !404, file: !22, line: 1016, baseType: !3353, size: 64, offset: 1408)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !404, file: !22, line: 1018, baseType: !521, size: 64, offset: 1472)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !404, file: !22, line: 1020, baseType: !105, size: 64, offset: 1536)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !404, file: !22, line: 1023, baseType: !105, size: 64, offset: 1600)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !404, file: !22, line: 1027, baseType: !3542, size: 64, offset: 1664)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !404, file: !22, line: 1029, baseType: !2310, size: 64, offset: 1728)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !404, file: !22, line: 1030, baseType: !2558, size: 32, offset: 1792)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !404, file: !22, line: 1031, baseType: !2558, size: 32, offset: 1824)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !365, file: !366, line: 29, baseType: !105, size: 64, offset: 896)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !283, file: !284, line: 132, baseType: !3548, size: 64, offset: 832)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3549 = !DISubroutineType(types: !3550)
!3550 = !{!759, !344, !307, !290}
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "request_key", scope: !283, file: !284, line: 142, baseType: !3552, size: 64, offset: 896)
!3552 = !DIDerivedType(tag: DW_TAG_typedef, name: "request_key_actor_t", file: !284, line: 41, baseType: !3553)
!3553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3554, size: 64)
!3554 = !DISubroutineType(types: !3555)
!3555 = !{!106, !107, !105}
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_restriction", scope: !283, file: !284, line: 150, baseType: !3557, size: 64, offset: 960)
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3558 = !DISubroutineType(types: !3559)
!3559 = !{!3560, !287}
!3560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3561, size: 64)
!3561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !82, line: 176, size: 192, elements: !3562)
!3562 = !{!3563, !3572, !3573}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !3561, file: !82, line: 177, baseType: !3564, size: 64)
!3564 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !82, line: 171, baseType: !3565)
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = !DISubroutineType(types: !3567)
!3567 = !{!106, !107, !3568, !3570, !107}
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3569, size: 64)
!3569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !283)
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !309)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3561, file: !82, line: 178, baseType: !107, size: 64, offset: 64)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !3561, file: !82, line: 179, baseType: !282, size: 64, offset: 128)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "asym_query", scope: !283, file: !284, line: 153, baseType: !3575, size: 64, offset: 1024)
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3576, size: 64)
!3576 = !DISubroutineType(types: !3577)
!3577 = !{!106, !3578, !3593}
!3578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3579, size: 64)
!3579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3580)
!3580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_pkey_params", file: !15, line: 29, size: 384, elements: !3581)
!3581 = !{!3582, !3583, !3584, !3585, !3586, !3587, !3592}
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3580, file: !15, line: 30, baseType: !107, size: 64)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !3580, file: !15, line: 31, baseType: !287, size: 64, offset: 64)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "hash_algo", scope: !3580, file: !15, line: 32, baseType: !287, size: 64, offset: 128)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3580, file: !15, line: 33, baseType: !307, size: 64, offset: 192)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "in_len", scope: !3580, file: !15, line: 34, baseType: !255, size: 32, offset: 256)
!3587 = !DIDerivedType(tag: DW_TAG_member, scope: !3580, file: !15, line: 35, baseType: !3588, size: 32, offset: 288)
!3588 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3580, file: !15, line: 35, size: 32, elements: !3589)
!3589 = !{!3590, !3591}
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "out_len", scope: !3588, file: !15, line: 36, baseType: !255, size: 32)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "in2_len", scope: !3588, file: !15, line: 37, baseType: !255, size: 32)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !3580, file: !15, line: 39, baseType: !14, size: 8, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!3594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_pkey_query", file: !15, line: 13, size: 128, elements: !3595)
!3595 = !{!3596, !3597, !3598, !3599, !3600, !3601}
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "supported_ops", scope: !3594, file: !15, line: 14, baseType: !255, size: 32)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "key_size", scope: !3594, file: !15, line: 15, baseType: !255, size: 32, offset: 32)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "max_data_size", scope: !3594, file: !15, line: 16, baseType: !193, size: 16, offset: 64)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "max_sig_size", scope: !3594, file: !15, line: 17, baseType: !193, size: 16, offset: 80)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "max_enc_size", scope: !3594, file: !15, line: 18, baseType: !193, size: 16, offset: 96)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_size", scope: !3594, file: !15, line: 19, baseType: !193, size: 16, offset: 112)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "asym_eds_op", scope: !283, file: !284, line: 155, baseType: !3603, size: 64, offset: 1088)
!3603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3604, size: 64)
!3604 = !DISubroutineType(types: !3605)
!3605 = !{!106, !3606, !317, !105}
!3606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3580, size: 64)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "asym_verify_signature", scope: !283, file: !284, line: 157, baseType: !3608, size: 64, offset: 1152)
!3608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3609, size: 64)
!3609 = !DISubroutineType(types: !3610)
!3610 = !{!106, !3606, !317, !317}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !283, file: !284, line: 161, baseType: !132, size: 128, offset: 1216)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "lock_class", scope: !283, file: !284, line: 162, baseType: !894, offset: 1344)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !265, file: !82, line: 130, baseType: !3614, size: 64, offset: 192)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !82, line: 108, size: 192, elements: !3616)
!3616 = !{!3617, !3618, !3619}
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3615, file: !82, line: 109, baseType: !416, size: 128, align: 64)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3615, file: !82, line: 110, baseType: !111, size: 32, offset: 128)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !3615, file: !82, line: 111, baseType: !342, size: 8, offset: 160)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !265, file: !82, line: 131, baseType: !287, size: 64, offset: 256)
!3621 = !DIDerivedType(tag: DW_TAG_member, scope: !262, file: !82, line: 247, baseType: !3622, size: 320)
!3622 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !262, file: !82, line: 247, size: 320, elements: !3623)
!3623 = !{!3624, !3625, !3626, !3627, !3628}
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3622, file: !82, line: 248, baseType: !142, size: 64)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !3622, file: !82, line: 249, baseType: !142, size: 64, offset: 64)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3622, file: !82, line: 250, baseType: !282, size: 64, offset: 128)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !3622, file: !82, line: 251, baseType: !3614, size: 64, offset: 192)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !3622, file: !82, line: 252, baseType: !307, size: 64, offset: 256)
!3629 = !DIDerivedType(tag: DW_TAG_member, scope: !108, file: !82, line: 260, baseType: !3630, size: 256, offset: 1408)
!3630 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !108, file: !82, line: 260, size: 256, elements: !3631)
!3631 = !{!3632, !3633}
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !3630, file: !82, line: 261, baseType: !309, size: 256)
!3633 = !DIDerivedType(tag: DW_TAG_member, scope: !3630, file: !82, line: 262, baseType: !3634, size: 256)
!3634 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3630, file: !82, line: 262, size: 256, elements: !3635)
!3635 = !{!3636, !3637}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !3634, file: !82, line: 264, baseType: !132, size: 128)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !3634, file: !82, line: 265, baseType: !3638, size: 128, offset: 128)
!3638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !3639, line: 22, size: 128, elements: !3640)
!3639 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!3640 = !{!3641, !3644}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3638, file: !3639, line: 23, baseType: !3642, size: 64)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !3639, line: 23, flags: DIFlagFwdDecl)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !3638, file: !3639, line: 24, baseType: !142, size: 64, offset: 64)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !108, file: !82, line: 280, baseType: !3560, size: 64, offset: 1664)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3648)
!3648 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !159)
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64)
!3650 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3651)
!3651 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !142)
!3652 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_ref_t", file: !82, line: 153, baseType: !3653)
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3654, size: 64)
!3654 = !DICompositeType(tag: DW_TAG_structure_type, name: "__key_reference_with_attributes", file: !82, line: 153, flags: DIFlagFwdDecl)
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3656, size: 64)
!3656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3657)
!3657 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !259)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3660)
!3660 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !106)
!3661 = !{!0, !3662, !3667, !3672, !3677, !3682, !3684, !3686, !3688, !3690, !3692, !3694, !3696, !3698, !3703, !3705}
!3662 = !DIGlobalVariableExpression(var: !3663, expr: !DIExpression())
!3663 = distinct !DIGlobalVariable(scope: null, file: !3, line: 47, type: !3664, isLocal: true, isDefinition: true)
!3664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 40, elements: !3665)
!3665 = !{!3666}
!3666 = !DISubrange(count: 5)
!3667 = !DIGlobalVariableExpression(var: !3668, expr: !DIExpression())
!3668 = distinct !DIGlobalVariable(scope: null, file: !3, line: 49, type: !3669, isLocal: true, isDefinition: true)
!3669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 208, elements: !3670)
!3670 = !{!3671}
!3671 = !DISubrange(count: 26)
!3672 = !DIGlobalVariableExpression(var: !3673, expr: !DIExpression())
!3673 = distinct !DIGlobalVariable(scope: null, file: !3, line: 51, type: !3674, isLocal: true, isDefinition: true)
!3674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 80, elements: !3675)
!3675 = !{!3676}
!3676 = !DISubrange(count: 10)
!3677 = !DIGlobalVariableExpression(var: !3678, expr: !DIExpression())
!3678 = distinct !DIGlobalVariable(scope: null, file: !3, line: 53, type: !3679, isLocal: true, isDefinition: true)
!3679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 248, elements: !3680)
!3680 = !{!3681}
!3681 = !DISubrange(count: 31)
!3682 = !DIGlobalVariableExpression(var: !3683, expr: !DIExpression())
!3683 = distinct !DIGlobalVariable(name: "proc_keys_ops", scope: !2, file: !3, line: 21, type: !380, isLocal: true, isDefinition: true)
!3684 = !DIGlobalVariableExpression(var: !3685, expr: !DIExpression())
!3685 = distinct !DIGlobalVariable(scope: null, file: !3, line: 202, type: !3664, isLocal: true, isDefinition: true)
!3686 = !DIGlobalVariableExpression(var: !3687, expr: !DIExpression())
!3687 = distinct !DIGlobalVariable(scope: null, file: !3, line: 204, type: !3664, isLocal: true, isDefinition: true)
!3688 = !DIGlobalVariableExpression(var: !3689, expr: !DIExpression())
!3689 = distinct !DIGlobalVariable(scope: null, file: !3, line: 209, type: !276, isLocal: true, isDefinition: true)
!3690 = !DIGlobalVariableExpression(var: !3691, expr: !DIExpression())
!3691 = distinct !DIGlobalVariable(scope: null, file: !3, line: 211, type: !276, isLocal: true, isDefinition: true)
!3692 = !DIGlobalVariableExpression(var: !3693, expr: !DIExpression())
!3693 = distinct !DIGlobalVariable(scope: null, file: !3, line: 213, type: !276, isLocal: true, isDefinition: true)
!3694 = !DIGlobalVariableExpression(var: !3695, expr: !DIExpression())
!3695 = distinct !DIGlobalVariable(scope: null, file: !3, line: 215, type: !276, isLocal: true, isDefinition: true)
!3696 = !DIGlobalVariableExpression(var: !3697, expr: !DIExpression())
!3697 = distinct !DIGlobalVariable(scope: null, file: !3, line: 217, type: !276, isLocal: true, isDefinition: true)
!3698 = !DIGlobalVariableExpression(var: !3699, expr: !DIExpression())
!3699 = distinct !DIGlobalVariable(scope: null, file: !3, line: 226, type: !3700, isLocal: true, isDefinition: true)
!3700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 392, elements: !3701)
!3701 = !{!3702}
!3702 = !DISubrange(count: 49)
!3703 = !DIGlobalVariableExpression(var: !3704, expr: !DIExpression())
!3704 = distinct !DIGlobalVariable(name: "proc_key_users_ops", scope: !2, file: !3, line: 33, type: !380, isLocal: true, isDefinition: true)
!3705 = !DIGlobalVariableExpression(var: !3706, expr: !DIExpression())
!3706 = distinct !DIGlobalVariable(scope: null, file: !3, line: 312, type: !3707, isLocal: true, isDefinition: true)
!3707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 224, elements: !3708)
!3708 = !{!3709}
!3709 = !DISubrange(count: 28)
!3710 = !{i32 7, !"Dwarf Version", i32 5}
!3711 = !{i32 2, !"Debug Info Version", i32 3}
!3712 = !{i32 1, !"wchar_size", i32 2}
!3713 = !{i32 8, !"cf-protection-branch", i32 1}
!3714 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3715 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!3716 = !{i32 1, !"Code Model", i32 2}
!3717 = !{i32 1, !"override-stack-alignment", i32 8}
!3718 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!3719 = distinct !DISubprogram(name: "__initstub__kmod_proc__278_58_key_proc_init6", scope: !3, file: !3, line: 58, type: !3720, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{!106}
!3722 = !DILocation(line: 58, column: 1, scope: !3719)
!3723 = distinct !DISubprogram(name: "key_proc_init", scope: !3, file: !3, line: 43, type: !3720, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3724)
!3724 = !{!3725}
!3725 = !DILocalVariable(name: "p", scope: !3723, file: !3, line: 45, type: !3726)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !3728, line: 12, flags: DIFlagFwdDecl)
!3728 = !DIFile(filename: "./include/linux/proc_fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3e8a31057d6ce7bcf5851cd096e4b3e8")
!3729 = !DILocation(line: 45, column: 2, scope: !3723)
!3730 = !DILocation(line: 45, column: 25, scope: !3723)
!3731 = !DILocation(line: 47, column: 6, scope: !3723)
!3732 = !DILocation(line: 47, column: 4, scope: !3723)
!3733 = !DILocation(line: 48, column: 7, scope: !3734)
!3734 = distinct !DILexicalBlock(scope: !3723, file: !3, line: 48, column: 6)
!3735 = !DILocation(line: 48, column: 6, scope: !3723)
!3736 = !DILocation(line: 49, column: 3, scope: !3734)
!3737 = !DILocation(line: 51, column: 6, scope: !3723)
!3738 = !DILocation(line: 51, column: 4, scope: !3723)
!3739 = !DILocation(line: 52, column: 7, scope: !3740)
!3740 = distinct !DILexicalBlock(scope: !3723, file: !3, line: 52, column: 6)
!3741 = !DILocation(line: 52, column: 6, scope: !3723)
!3742 = !DILocation(line: 53, column: 3, scope: !3740)
!3743 = !DILocation(line: 56, column: 1, scope: !3723)
!3744 = !DILocation(line: 55, column: 2, scope: !3723)
!3745 = !DISubprogram(name: "proc_create_seq_private", scope: !3728, file: !3728, line: 92, type: !3746, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3746 = !DISubroutineType(types: !3747)
!3747 = !{!3726, !287, !648, !3726, !379, !7, !105}
!3748 = !DISubprogram(name: "panic", scope: !3749, file: !3749, line: 12, type: !3750, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!3749 = !DIFile(filename: "./include/linux/panic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3219e8109531a92b450817dd7e3cc0fb")
!3750 = !DISubroutineType(types: !3751)
!3751 = !{null, !287, null}
!3752 = distinct !DISubprogram(name: "proc_keys_start", scope: !3, file: !3, line: 112, type: !385, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3753)
!3753 = !{!3754, !3755, !3756, !3757}
!3754 = !DILocalVariable(name: "p", arg: 1, scope: !3752, file: !3, line: 112, type: !364)
!3755 = !DILocalVariable(name: "_pos", arg: 2, scope: !3752, file: !3, line: 112, type: !387)
!3756 = !DILocalVariable(name: "pos", scope: !3752, file: !3, line: 115, type: !122)
!3757 = !DILocalVariable(name: "key", scope: !3752, file: !3, line: 116, type: !107)
!3758 = !DILocation(line: 112, column: 47, scope: !3752)
!3759 = !DILocation(line: 112, column: 58, scope: !3752)
!3760 = !DILocation(line: 115, column: 2, scope: !3752)
!3761 = !DILocation(line: 115, column: 15, scope: !3752)
!3762 = !DILocation(line: 115, column: 22, scope: !3752)
!3763 = !DILocation(line: 115, column: 21, scope: !3752)
!3764 = !DILocation(line: 116, column: 2, scope: !3752)
!3765 = !DILocation(line: 116, column: 14, scope: !3752)
!3766 = !DILocation(line: 118, column: 2, scope: !3752)
!3767 = !DILocation(line: 120, column: 7, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3752, file: !3, line: 120, column: 6)
!3769 = !DILocation(line: 120, column: 6, scope: !3768)
!3770 = !DILocation(line: 120, column: 12, scope: !3768)
!3771 = !DILocation(line: 120, column: 6, scope: !3752)
!3772 = !DILocation(line: 121, column: 3, scope: !3768)
!3773 = !DILocation(line: 122, column: 20, scope: !3752)
!3774 = !DILocation(line: 122, column: 23, scope: !3752)
!3775 = !DILocation(line: 122, column: 8, scope: !3752)
!3776 = !DILocation(line: 122, column: 6, scope: !3752)
!3777 = !DILocation(line: 123, column: 7, scope: !3778)
!3778 = distinct !DILexicalBlock(scope: !3752, file: !3, line: 123, column: 6)
!3779 = !DILocation(line: 123, column: 6, scope: !3752)
!3780 = !DILocation(line: 124, column: 3, scope: !3778)
!3781 = !DILocation(line: 125, column: 10, scope: !3752)
!3782 = !DILocation(line: 125, column: 15, scope: !3752)
!3783 = !DILocation(line: 125, column: 3, scope: !3752)
!3784 = !DILocation(line: 125, column: 8, scope: !3752)
!3785 = !DILocation(line: 126, column: 10, scope: !3752)
!3786 = !DILocation(line: 126, column: 15, scope: !3752)
!3787 = !DILocation(line: 126, column: 2, scope: !3752)
!3788 = !DILocation(line: 127, column: 1, scope: !3752)
!3789 = distinct !DISubprogram(name: "proc_keys_stop", scope: !3, file: !3, line: 147, type: !390, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3790)
!3790 = !{!3791, !3792}
!3791 = !DILocalVariable(name: "p", arg: 1, scope: !3789, file: !3, line: 147, type: !364)
!3792 = !DILocalVariable(name: "v", arg: 2, scope: !3789, file: !3, line: 147, type: !105)
!3793 = !DILocation(line: 147, column: 45, scope: !3789)
!3794 = !DILocation(line: 147, column: 54, scope: !3789)
!3795 = !DILocation(line: 150, column: 2, scope: !3789)
!3796 = !DILocation(line: 151, column: 1, scope: !3789)
!3797 = distinct !DISubprogram(name: "proc_keys_next", scope: !3, file: !3, line: 135, type: !394, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3798)
!3798 = !{!3799, !3800, !3801, !3802}
!3799 = !DILocalVariable(name: "p", arg: 1, scope: !3797, file: !3, line: 135, type: !364)
!3800 = !DILocalVariable(name: "v", arg: 2, scope: !3797, file: !3, line: 135, type: !105)
!3801 = !DILocalVariable(name: "_pos", arg: 3, scope: !3797, file: !3, line: 135, type: !387)
!3802 = !DILocalVariable(name: "n", scope: !3797, file: !3, line: 137, type: !144)
!3803 = !DILocation(line: 135, column: 46, scope: !3797)
!3804 = !DILocation(line: 135, column: 55, scope: !3797)
!3805 = !DILocation(line: 135, column: 66, scope: !3797)
!3806 = !DILocation(line: 137, column: 2, scope: !3797)
!3807 = !DILocation(line: 137, column: 18, scope: !3797)
!3808 = !DILocation(line: 139, column: 22, scope: !3797)
!3809 = !DILocation(line: 139, column: 25, scope: !3797)
!3810 = !DILocation(line: 139, column: 6, scope: !3797)
!3811 = !DILocation(line: 139, column: 4, scope: !3797)
!3812 = !DILocation(line: 140, column: 6, scope: !3813)
!3813 = distinct !DILexicalBlock(scope: !3797, file: !3, line: 140, column: 6)
!3814 = !DILocation(line: 140, column: 6, scope: !3797)
!3815 = !DILocation(line: 141, column: 27, scope: !3813)
!3816 = !DILocation(line: 141, column: 11, scope: !3813)
!3817 = !DILocation(line: 141, column: 4, scope: !3813)
!3818 = !DILocation(line: 141, column: 9, scope: !3813)
!3819 = !DILocation(line: 141, column: 3, scope: !3813)
!3820 = !DILocation(line: 143, column: 5, scope: !3813)
!3821 = !DILocation(line: 143, column: 10, scope: !3813)
!3822 = !DILocation(line: 144, column: 9, scope: !3797)
!3823 = !DILocation(line: 145, column: 1, scope: !3797)
!3824 = !DILocation(line: 144, column: 2, scope: !3797)
!3825 = distinct !DISubprogram(name: "proc_keys_show", scope: !3, file: !3, line: 153, type: !398, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3826)
!3826 = !{!3827, !3828, !3829, !3830, !3831, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842}
!3827 = !DILocalVariable(name: "m", arg: 1, scope: !3825, file: !3, line: 153, type: !364)
!3828 = !DILocalVariable(name: "v", arg: 2, scope: !3825, file: !3, line: 153, type: !105)
!3829 = !DILocalVariable(name: "_p", scope: !3825, file: !3, line: 155, type: !144)
!3830 = !DILocalVariable(name: "key", scope: !3825, file: !3, line: 156, type: !107)
!3831 = !DILocalVariable(name: "__mptr", scope: !3832, file: !3, line: 156, type: !105)
!3832 = distinct !DILexicalBlock(scope: !3825, file: !3, line: 156, column: 20)
!3833 = !DILocalVariable(name: "flags", scope: !3825, file: !3, line: 157, type: !142)
!3834 = !DILocalVariable(name: "key_ref", scope: !3825, file: !3, line: 158, type: !3652)
!3835 = !DILocalVariable(name: "skey_ref", scope: !3825, file: !3, line: 158, type: !3652)
!3836 = !DILocalVariable(name: "now", scope: !3825, file: !3, line: 159, type: !239)
!3837 = !DILocalVariable(name: "expiry", scope: !3825, file: !3, line: 159, type: !239)
!3838 = !DILocalVariable(name: "xbuf", scope: !3825, file: !3, line: 160, type: !1846)
!3839 = !DILocalVariable(name: "state", scope: !3825, file: !3, line: 161, type: !259)
!3840 = !DILocalVariable(name: "timo", scope: !3825, file: !3, line: 162, type: !521)
!3841 = !DILocalVariable(name: "rc", scope: !3825, file: !3, line: 163, type: !106)
!3842 = !DILocalVariable(name: "ctx", scope: !3825, file: !3, line: 165, type: !3843)
!3843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_search_context", file: !200, line: 119, size: 960, elements: !3844)
!3844 = !{!3845, !3846, !3847, !3848, !3849, !3853, !3854, !3855, !3856}
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !3843, file: !200, line: 120, baseType: !265, size: 320)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !3843, file: !200, line: 121, baseType: !500, size: 64, offset: 320)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "match_data", scope: !3843, file: !200, line: 122, baseType: !336, size: 256, offset: 384)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3843, file: !200, line: 123, baseType: !7, size: 32, offset: 640)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "iterator", scope: !3843, file: !200, line: 132, baseType: !3850, size: 64, offset: 704)
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3851, size: 64)
!3851 = !DISubroutineType(types: !3852)
!3852 = !{!106, !317, !105}
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "skipped_ret", scope: !3843, file: !200, line: 135, baseType: !106, size: 32, offset: 768)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "possessed", scope: !3843, file: !200, line: 136, baseType: !342, size: 8, offset: 800)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !3843, file: !200, line: 137, baseType: !3652, size: 64, offset: 832)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "now", scope: !3843, file: !200, line: 138, baseType: !239, size: 64, offset: 896)
!3857 = !DILocation(line: 153, column: 44, scope: !3825)
!3858 = !DILocation(line: 153, column: 53, scope: !3825)
!3859 = !DILocation(line: 155, column: 2, scope: !3825)
!3860 = !DILocation(line: 155, column: 18, scope: !3825)
!3861 = !DILocation(line: 155, column: 23, scope: !3825)
!3862 = !DILocation(line: 156, column: 2, scope: !3825)
!3863 = !DILocation(line: 156, column: 14, scope: !3825)
!3864 = !DILocation(line: 156, column: 20, scope: !3832)
!3865 = !DILocation(line: 156, column: 20, scope: !3825)
!3866 = !DILocation(line: 157, column: 2, scope: !3825)
!3867 = !DILocation(line: 157, column: 16, scope: !3825)
!3868 = !DILocation(line: 158, column: 2, scope: !3825)
!3869 = !DILocation(line: 158, column: 12, scope: !3825)
!3870 = !DILocation(line: 158, column: 21, scope: !3825)
!3871 = !DILocation(line: 159, column: 2, scope: !3825)
!3872 = !DILocation(line: 159, column: 11, scope: !3825)
!3873 = !DILocation(line: 159, column: 16, scope: !3825)
!3874 = !DILocation(line: 160, column: 2, scope: !3825)
!3875 = !DILocation(line: 160, column: 7, scope: !3825)
!3876 = !DILocation(line: 161, column: 2, scope: !3825)
!3877 = !DILocation(line: 161, column: 8, scope: !3825)
!3878 = !DILocation(line: 162, column: 2, scope: !3825)
!3879 = !DILocation(line: 162, column: 6, scope: !3825)
!3880 = !DILocation(line: 163, column: 2, scope: !3825)
!3881 = !DILocation(line: 163, column: 6, scope: !3825)
!3882 = !DILocation(line: 165, column: 2, scope: !3825)
!3883 = !DILocation(line: 165, column: 32, scope: !3825)
!3884 = !DILocation(line: 165, column: 38, scope: !3825)
!3885 = !DILocation(line: 166, column: 17, scope: !3825)
!3886 = !DILocation(line: 166, column: 22, scope: !3825)
!3887 = !DILocation(line: 167, column: 13, scope: !3825)
!3888 = !DILocation(line: 167, column: 16, scope: !3825)
!3889 = !DILocation(line: 167, column: 22, scope: !3825)
!3890 = !DILocation(line: 168, column: 14, scope: !3825)
!3891 = !DILocation(line: 169, column: 26, scope: !3825)
!3892 = !DILocation(line: 175, column: 25, scope: !3825)
!3893 = !DILocation(line: 175, column: 12, scope: !3825)
!3894 = !DILocation(line: 175, column: 10, scope: !3825)
!3895 = !DILocation(line: 180, column: 6, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !3825, file: !3, line: 180, column: 6)
!3897 = !DILocation(line: 180, column: 11, scope: !3896)
!3898 = !DILocation(line: 180, column: 16, scope: !3896)
!3899 = !DILocation(line: 180, column: 6, scope: !3825)
!3900 = !DILocation(line: 181, column: 3, scope: !3901)
!3901 = distinct !DILexicalBlock(scope: !3896, file: !3, line: 180, column: 32)
!3902 = !DILocation(line: 182, column: 14, scope: !3901)
!3903 = !DILocation(line: 182, column: 12, scope: !3901)
!3904 = !DILocation(line: 183, column: 3, scope: !3901)
!3905 = !DILocation(line: 184, column: 15, scope: !3906)
!3906 = distinct !DILexicalBlock(scope: !3901, file: !3, line: 184, column: 7)
!3907 = !DILocation(line: 184, column: 8, scope: !3906)
!3908 = !DILocation(line: 184, column: 7, scope: !3901)
!3909 = !DILocation(line: 185, column: 16, scope: !3910)
!3910 = distinct !DILexicalBlock(scope: !3906, file: !3, line: 184, column: 26)
!3911 = !DILocation(line: 185, column: 4, scope: !3910)
!3912 = !DILocation(line: 186, column: 27, scope: !3910)
!3913 = !DILocation(line: 186, column: 14, scope: !3910)
!3914 = !DILocation(line: 186, column: 12, scope: !3910)
!3915 = !DILocation(line: 187, column: 3, scope: !3910)
!3916 = !DILocation(line: 188, column: 2, scope: !3901)
!3917 = !DILocation(line: 191, column: 27, scope: !3825)
!3918 = !DILocation(line: 191, column: 40, scope: !3825)
!3919 = !DILocation(line: 191, column: 7, scope: !3825)
!3920 = !DILocation(line: 191, column: 5, scope: !3825)
!3921 = !DILocation(line: 192, column: 6, scope: !3922)
!3922 = distinct !DILexicalBlock(scope: !3825, file: !3, line: 192, column: 6)
!3923 = !DILocation(line: 192, column: 9, scope: !3922)
!3924 = !DILocation(line: 192, column: 6, scope: !3825)
!3925 = !DILocation(line: 193, column: 3, scope: !3922)
!3926 = !DILocation(line: 195, column: 8, scope: !3825)
!3927 = !DILocation(line: 195, column: 6, scope: !3825)
!3928 = !DILocation(line: 197, column: 2, scope: !3825)
!3929 = !DILocation(line: 200, column: 11, scope: !3930)
!3930 = distinct !DILexicalBlock(scope: !3825, file: !3, line: 200, column: 11)
!3931 = !DILocation(line: 200, column: 11, scope: !3932)
!3932 = distinct !DILexicalBlock(scope: !3930, file: !3, line: 200, column: 11)
!3933 = !DILocation(line: 200, column: 9, scope: !3825)
!3934 = !DILocation(line: 201, column: 6, scope: !3935)
!3935 = distinct !DILexicalBlock(scope: !3825, file: !3, line: 201, column: 6)
!3936 = !DILocation(line: 201, column: 13, scope: !3935)
!3937 = !DILocation(line: 201, column: 6, scope: !3825)
!3938 = !DILocation(line: 202, column: 3, scope: !3939)
!3939 = distinct !DILexicalBlock(scope: !3935, file: !3, line: 201, column: 28)
!3940 = !DILocation(line: 203, column: 2, scope: !3939)
!3941 = !DILocation(line: 203, column: 13, scope: !3942)
!3942 = distinct !DILexicalBlock(scope: !3935, file: !3, line: 203, column: 13)
!3943 = !DILocation(line: 203, column: 20, scope: !3942)
!3944 = !DILocation(line: 203, column: 17, scope: !3942)
!3945 = !DILocation(line: 203, column: 13, scope: !3935)
!3946 = !DILocation(line: 204, column: 3, scope: !3947)
!3947 = distinct !DILexicalBlock(scope: !3942, file: !3, line: 203, column: 28)
!3948 = !DILocation(line: 205, column: 2, scope: !3947)
!3949 = !DILocation(line: 206, column: 10, scope: !3950)
!3950 = distinct !DILexicalBlock(scope: !3942, file: !3, line: 205, column: 9)
!3951 = !DILocation(line: 206, column: 19, scope: !3950)
!3952 = !DILocation(line: 206, column: 17, scope: !3950)
!3953 = !DILocation(line: 206, column: 8, scope: !3950)
!3954 = !DILocation(line: 208, column: 7, scope: !3955)
!3955 = distinct !DILexicalBlock(scope: !3950, file: !3, line: 208, column: 7)
!3956 = !DILocation(line: 208, column: 12, scope: !3955)
!3957 = !DILocation(line: 208, column: 7, scope: !3950)
!3958 = !DILocation(line: 209, column: 12, scope: !3955)
!3959 = !DILocation(line: 209, column: 27, scope: !3955)
!3960 = !DILocation(line: 209, column: 4, scope: !3955)
!3961 = !DILocation(line: 210, column: 12, scope: !3962)
!3962 = distinct !DILexicalBlock(scope: !3955, file: !3, line: 210, column: 12)
!3963 = !DILocation(line: 210, column: 17, scope: !3962)
!3964 = !DILocation(line: 210, column: 12, scope: !3955)
!3965 = !DILocation(line: 211, column: 12, scope: !3962)
!3966 = !DILocation(line: 211, column: 35, scope: !3962)
!3967 = !DILocation(line: 211, column: 27, scope: !3962)
!3968 = !DILocation(line: 211, column: 4, scope: !3962)
!3969 = !DILocation(line: 212, column: 12, scope: !3970)
!3970 = distinct !DILexicalBlock(scope: !3962, file: !3, line: 212, column: 12)
!3971 = !DILocation(line: 212, column: 17, scope: !3970)
!3972 = !DILocation(line: 212, column: 12, scope: !3962)
!3973 = !DILocation(line: 213, column: 12, scope: !3970)
!3974 = !DILocation(line: 213, column: 35, scope: !3970)
!3975 = !DILocation(line: 213, column: 27, scope: !3970)
!3976 = !DILocation(line: 213, column: 4, scope: !3970)
!3977 = !DILocation(line: 214, column: 12, scope: !3978)
!3978 = distinct !DILexicalBlock(scope: !3970, file: !3, line: 214, column: 12)
!3979 = !DILocation(line: 214, column: 17, scope: !3978)
!3980 = !DILocation(line: 214, column: 12, scope: !3970)
!3981 = !DILocation(line: 215, column: 12, scope: !3978)
!3982 = !DILocation(line: 215, column: 35, scope: !3978)
!3983 = !DILocation(line: 215, column: 27, scope: !3978)
!3984 = !DILocation(line: 215, column: 4, scope: !3978)
!3985 = !DILocation(line: 217, column: 12, scope: !3978)
!3986 = !DILocation(line: 217, column: 35, scope: !3978)
!3987 = !DILocation(line: 217, column: 27, scope: !3978)
!3988 = !DILocation(line: 217, column: 4, scope: !3978)
!3989 = !DILocation(line: 220, column: 25, scope: !3825)
!3990 = !DILocation(line: 220, column: 10, scope: !3825)
!3991 = !DILocation(line: 220, column: 8, scope: !3825)
!3992 = !DILocation(line: 225, column: 10, scope: !3993)
!3993 = distinct !DILexicalBlock(scope: !3825, file: !3, line: 225, column: 10)
!3994 = !DILocation(line: 225, column: 10, scope: !3995)
!3995 = distinct !DILexicalBlock(scope: !3993, file: !3, line: 225, column: 10)
!3996 = !DILocation(line: 225, column: 8, scope: !3825)
!3997 = !DILocation(line: 226, column: 13, scope: !3825)
!3998 = !DILocation(line: 227, column: 6, scope: !3825)
!3999 = !DILocation(line: 227, column: 11, scope: !3825)
!4000 = !DILocation(line: 228, column: 6, scope: !3825)
!4001 = !DILocation(line: 228, column: 12, scope: !3825)
!4002 = !DILocation(line: 229, column: 6, scope: !3825)
!4003 = !DILocation(line: 230, column: 6, scope: !3825)
!4004 = !DILocation(line: 231, column: 6, scope: !3825)
!4005 = !DILocation(line: 232, column: 6, scope: !3825)
!4006 = !DILocation(line: 233, column: 6, scope: !3825)
!4007 = !DILocation(line: 233, column: 12, scope: !3825)
!4008 = !DILocation(line: 234, column: 6, scope: !3825)
!4009 = !DILocation(line: 235, column: 21, scope: !3825)
!4010 = !DILocation(line: 235, column: 26, scope: !3825)
!4011 = !DILocation(line: 235, column: 6, scope: !3825)
!4012 = !DILocation(line: 236, column: 6, scope: !3825)
!4013 = !DILocation(line: 237, column: 6, scope: !3825)
!4014 = !DILocation(line: 237, column: 11, scope: !3825)
!4015 = !DILocation(line: 238, column: 35, scope: !3825)
!4016 = !DILocation(line: 238, column: 23, scope: !3825)
!4017 = !DILocation(line: 238, column: 39, scope: !3825)
!4018 = !DILocation(line: 238, column: 44, scope: !3825)
!4019 = !DILocation(line: 238, column: 6, scope: !3825)
!4020 = !DILocation(line: 239, column: 35, scope: !3825)
!4021 = !DILocation(line: 239, column: 23, scope: !3825)
!4022 = !DILocation(line: 239, column: 39, scope: !3825)
!4023 = !DILocation(line: 239, column: 44, scope: !3825)
!4024 = !DILocation(line: 239, column: 6, scope: !3825)
!4025 = !DILocation(line: 240, column: 6, scope: !3825)
!4026 = !DILocation(line: 240, column: 11, scope: !3825)
!4027 = !DILocation(line: 240, column: 17, scope: !3825)
!4028 = !DILocation(line: 226, column: 2, scope: !3825)
!4029 = !DILocation(line: 244, column: 6, scope: !4030)
!4030 = distinct !DILexicalBlock(scope: !3825, file: !3, line: 244, column: 6)
!4031 = !DILocation(line: 244, column: 11, scope: !4030)
!4032 = !DILocation(line: 244, column: 17, scope: !4030)
!4033 = !DILocation(line: 244, column: 6, scope: !3825)
!4034 = !DILocation(line: 245, column: 3, scope: !4030)
!4035 = !DILocation(line: 245, column: 8, scope: !4030)
!4036 = !DILocation(line: 245, column: 14, scope: !4030)
!4037 = !DILocation(line: 245, column: 23, scope: !4030)
!4038 = !DILocation(line: 245, column: 28, scope: !4030)
!4039 = !DILocation(line: 246, column: 11, scope: !3825)
!4040 = !DILocation(line: 246, column: 2, scope: !3825)
!4041 = !DILocation(line: 248, column: 2, scope: !3825)
!4042 = !DILocation(line: 249, column: 2, scope: !3825)
!4043 = !DILocation(line: 250, column: 1, scope: !3825)
!4044 = distinct !DISubprogram(name: "spin_lock", scope: !4045, file: !4045, line: 349, type: !4046, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4048)
!4045 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!4046 = !DISubroutineType(types: !4047)
!4047 = !{null, !2791}
!4048 = !{!4049}
!4049 = !DILocalVariable(name: "lock", arg: 1, scope: !4044, file: !4045, line: 349, type: !2791)
!4050 = !DILocation(line: 349, column: 51, scope: !4044)
!4051 = !DILocation(line: 351, column: 2, scope: !4044)
!4052 = !DILocation(line: 352, column: 1, scope: !4044)
!4053 = distinct !DISubprogram(name: "find_ge_key", scope: !3, file: !3, line: 78, type: !4054, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4056)
!4054 = !DISubroutineType(types: !4055)
!4055 = !{!107, !364, !122}
!4056 = !{!4057, !4058, !4059, !4060, !4061, !4062, !4064, !4066}
!4057 = !DILocalVariable(name: "p", arg: 1, scope: !4053, file: !3, line: 78, type: !364)
!4058 = !DILocalVariable(name: "id", arg: 2, scope: !4053, file: !3, line: 78, type: !122)
!4059 = !DILocalVariable(name: "user_ns", scope: !4053, file: !3, line: 80, type: !566)
!4060 = !DILocalVariable(name: "n", scope: !4053, file: !3, line: 81, type: !144)
!4061 = !DILocalVariable(name: "minkey", scope: !4053, file: !3, line: 82, type: !107)
!4062 = !DILocalVariable(name: "key", scope: !4063, file: !3, line: 85, type: !107)
!4063 = distinct !DILexicalBlock(scope: !4053, file: !3, line: 84, column: 12)
!4064 = !DILocalVariable(name: "__mptr", scope: !4065, file: !3, line: 85, type: !105)
!4065 = distinct !DILexicalBlock(scope: !4063, file: !3, line: 85, column: 21)
!4066 = !DILocalVariable(name: "__mptr", scope: !4067, file: !3, line: 108, type: !105)
!4067 = distinct !DILexicalBlock(scope: !4068, file: !3, line: 108, column: 12)
!4068 = distinct !DILexicalBlock(scope: !4069, file: !3, line: 102, column: 11)
!4069 = distinct !DILexicalBlock(scope: !4070, file: !3, line: 102, column: 2)
!4070 = distinct !DILexicalBlock(scope: !4053, file: !3, line: 102, column: 2)
!4071 = !DILocation(line: 78, column: 49, scope: !4053)
!4072 = !DILocation(line: 78, column: 65, scope: !4053)
!4073 = !DILocation(line: 80, column: 2, scope: !4053)
!4074 = !DILocation(line: 80, column: 25, scope: !4053)
!4075 = !DILocation(line: 80, column: 47, scope: !4053)
!4076 = !DILocation(line: 80, column: 35, scope: !4053)
!4077 = !DILocation(line: 81, column: 2, scope: !4053)
!4078 = !DILocation(line: 81, column: 18, scope: !4053)
!4079 = !DILocation(line: 81, column: 38, scope: !4053)
!4080 = !DILocation(line: 82, column: 2, scope: !4053)
!4081 = !DILocation(line: 82, column: 14, scope: !4053)
!4082 = !DILocation(line: 84, column: 2, scope: !4053)
!4083 = !DILocation(line: 84, column: 9, scope: !4053)
!4084 = !DILocation(line: 85, column: 3, scope: !4063)
!4085 = !DILocation(line: 85, column: 15, scope: !4063)
!4086 = !DILocation(line: 85, column: 21, scope: !4065)
!4087 = !DILocation(line: 85, column: 21, scope: !4063)
!4088 = !DILocation(line: 86, column: 7, scope: !4089)
!4089 = distinct !DILexicalBlock(scope: !4063, file: !3, line: 86, column: 7)
!4090 = !DILocation(line: 86, column: 12, scope: !4089)
!4091 = !DILocation(line: 86, column: 17, scope: !4089)
!4092 = !DILocation(line: 86, column: 10, scope: !4089)
!4093 = !DILocation(line: 86, column: 7, scope: !4063)
!4094 = !DILocation(line: 87, column: 9, scope: !4095)
!4095 = distinct !DILexicalBlock(scope: !4096, file: !3, line: 87, column: 8)
!4096 = distinct !DILexicalBlock(scope: !4089, file: !3, line: 86, column: 25)
!4097 = !DILocation(line: 87, column: 16, scope: !4095)
!4098 = !DILocation(line: 87, column: 19, scope: !4095)
!4099 = !DILocation(line: 87, column: 27, scope: !4095)
!4100 = !DILocation(line: 87, column: 36, scope: !4095)
!4101 = !DILocation(line: 87, column: 41, scope: !4095)
!4102 = !DILocation(line: 87, column: 34, scope: !4095)
!4103 = !DILocation(line: 87, column: 8, scope: !4096)
!4104 = !DILocation(line: 88, column: 14, scope: !4095)
!4105 = !DILocation(line: 88, column: 12, scope: !4095)
!4106 = !DILocation(line: 88, column: 5, scope: !4095)
!4107 = !DILocation(line: 89, column: 8, scope: !4096)
!4108 = !DILocation(line: 89, column: 11, scope: !4096)
!4109 = !DILocation(line: 89, column: 6, scope: !4096)
!4110 = !DILocation(line: 90, column: 3, scope: !4096)
!4111 = !DILocation(line: 90, column: 14, scope: !4112)
!4112 = distinct !DILexicalBlock(scope: !4089, file: !3, line: 90, column: 14)
!4113 = !DILocation(line: 90, column: 19, scope: !4112)
!4114 = !DILocation(line: 90, column: 24, scope: !4112)
!4115 = !DILocation(line: 90, column: 17, scope: !4112)
!4116 = !DILocation(line: 90, column: 14, scope: !4089)
!4117 = !DILocation(line: 91, column: 8, scope: !4118)
!4118 = distinct !DILexicalBlock(scope: !4112, file: !3, line: 90, column: 32)
!4119 = !DILocation(line: 91, column: 11, scope: !4118)
!4120 = !DILocation(line: 91, column: 6, scope: !4118)
!4121 = !DILocation(line: 92, column: 3, scope: !4118)
!4122 = !DILocation(line: 93, column: 13, scope: !4123)
!4123 = distinct !DILexicalBlock(scope: !4112, file: !3, line: 92, column: 10)
!4124 = !DILocation(line: 93, column: 11, scope: !4123)
!4125 = !DILocation(line: 94, column: 4, scope: !4123)
!4126 = !DILocation(line: 96, column: 7, scope: !4063)
!4127 = !DILocation(line: 97, column: 2, scope: !4053)
!4128 = distinct !{!4128, !4082, !4127, !4129, !4130}
!4129 = !{!"llvm.loop.mustprogress"}
!4130 = !{!"llvm.loop.unroll.disable"}
!4131 = !DILocation(line: 99, column: 7, scope: !4132)
!4132 = distinct !DILexicalBlock(scope: !4053, file: !3, line: 99, column: 6)
!4133 = !DILocation(line: 99, column: 6, scope: !4053)
!4134 = !DILocation(line: 100, column: 3, scope: !4132)
!4135 = !DILocation(line: 102, column: 2, scope: !4053)
!4136 = !DILocation(line: 103, column: 24, scope: !4137)
!4137 = distinct !DILexicalBlock(scope: !4068, file: !3, line: 103, column: 7)
!4138 = !DILocation(line: 103, column: 33, scope: !4137)
!4139 = !DILocation(line: 103, column: 41, scope: !4137)
!4140 = !DILocation(line: 103, column: 47, scope: !4137)
!4141 = !DILocation(line: 103, column: 7, scope: !4137)
!4142 = !DILocation(line: 103, column: 7, scope: !4068)
!4143 = !DILocation(line: 104, column: 11, scope: !4137)
!4144 = !DILocation(line: 104, column: 4, scope: !4137)
!4145 = !DILocation(line: 105, column: 16, scope: !4068)
!4146 = !DILocation(line: 105, column: 24, scope: !4068)
!4147 = !DILocation(line: 105, column: 7, scope: !4068)
!4148 = !DILocation(line: 105, column: 5, scope: !4068)
!4149 = !DILocation(line: 106, column: 8, scope: !4150)
!4150 = distinct !DILexicalBlock(scope: !4068, file: !3, line: 106, column: 7)
!4151 = !DILocation(line: 106, column: 7, scope: !4068)
!4152 = !DILocation(line: 107, column: 4, scope: !4150)
!4153 = !DILocation(line: 108, column: 12, scope: !4067)
!4154 = !DILocation(line: 108, column: 12, scope: !4068)
!4155 = !DILocation(line: 108, column: 10, scope: !4068)
!4156 = !DILocation(line: 102, column: 2, scope: !4069)
!4157 = distinct !{!4157, !4158, !4159, !4130}
!4158 = !DILocation(line: 102, column: 2, scope: !4070)
!4159 = !DILocation(line: 109, column: 2, scope: !4070)
!4160 = !DILocation(line: 110, column: 1, scope: !4053)
!4161 = !DISubprogram(name: "_raw_spin_lock", scope: !4162, file: !4162, line: 22, type: !4163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4162 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!4163 = !DISubroutineType(types: !4164)
!4164 = !{null, !4165}
!4165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!4166 = distinct !DISubprogram(name: "seq_user_ns", scope: !366, file: !366, line: 223, type: !4167, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4169)
!4167 = !DISubroutineType(types: !4168)
!4168 = !{!566, !364}
!4169 = !{!4170}
!4170 = !DILocalVariable(name: "seq", arg: 1, scope: !4166, file: !366, line: 223, type: !364)
!4171 = !DILocation(line: 223, column: 67, scope: !4166)
!4172 = !DILocation(line: 229, column: 2, scope: !4166)
!4173 = distinct !DISubprogram(name: "kuid_has_mapping", scope: !225, file: !225, line: 179, type: !4174, scopeLine: 180, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4176)
!4174 = !DISubroutineType(types: !4175)
!4175 = !{!342, !566, !224}
!4176 = !{!4177, !4178}
!4177 = !DILocalVariable(name: "ns", arg: 1, scope: !4173, file: !225, line: 179, type: !566)
!4178 = !DILocalVariable(name: "uid", arg: 2, scope: !4173, file: !225, line: 179, type: !224)
!4179 = !DILocation(line: 179, column: 60, scope: !4173)
!4180 = !DILocation(line: 179, column: 71, scope: !4173)
!4181 = !DILocation(line: 181, column: 9, scope: !4173)
!4182 = !DILocation(line: 181, column: 2, scope: !4173)
!4183 = !DISubprogram(name: "rb_next", scope: !4184, file: !4184, line: 44, type: !4185, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4184 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6e0facf00d8c55244f0fbd487ce02705")
!4185 = !DISubroutineType(types: !4186)
!4186 = !{!144, !4187}
!4187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4188, size: 64)
!4188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!4189 = distinct !DISubprogram(name: "uid_valid", scope: !225, file: !225, line: 111, type: !4190, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4192)
!4190 = !DISubroutineType(types: !4191)
!4191 = !{!342, !224}
!4192 = !{!4193}
!4193 = !DILocalVariable(name: "uid", arg: 1, scope: !4189, file: !225, line: 111, type: !224)
!4194 = !DILocation(line: 111, column: 37, scope: !4189)
!4195 = !DILocation(line: 113, column: 9, scope: !4189)
!4196 = !DILocation(line: 113, column: 25, scope: !4189)
!4197 = !DILocation(line: 113, column: 2, scope: !4189)
!4198 = distinct !DISubprogram(name: "__kuid_val", scope: !225, file: !225, line: 34, type: !4199, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4201)
!4199 = !DISubroutineType(types: !4200)
!4200 = !{!229, !224}
!4201 = !{!4202}
!4202 = !DILocalVariable(name: "uid", arg: 1, scope: !4198, file: !225, line: 34, type: !224)
!4203 = !DILocation(line: 34, column: 39, scope: !4198)
!4204 = !DILocation(line: 36, column: 13, scope: !4198)
!4205 = !DILocation(line: 36, column: 2, scope: !4198)
!4206 = distinct !DISubprogram(name: "spin_unlock", scope: !4045, file: !4045, line: 389, type: !4046, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4207)
!4207 = !{!4208}
!4208 = !DILocalVariable(name: "lock", arg: 1, scope: !4206, file: !4045, line: 389, type: !2791)
!4209 = !DILocation(line: 389, column: 53, scope: !4206)
!4210 = !DILocation(line: 391, column: 2, scope: !4206)
!4211 = !DILocation(line: 392, column: 1, scope: !4206)
!4212 = !DISubprogram(name: "_raw_spin_unlock", scope: !4162, file: !4162, line: 39, type: !4163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4213 = distinct !DISubprogram(name: "key_serial_next", scope: !3, file: !3, line: 64, type: !4214, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4216)
!4214 = !DISubroutineType(types: !4215)
!4215 = !{!144, !364, !144}
!4216 = !{!4217, !4218, !4219, !4220, !4222}
!4217 = !DILocalVariable(name: "p", arg: 1, scope: !4213, file: !3, line: 64, type: !364)
!4218 = !DILocalVariable(name: "n", arg: 2, scope: !4213, file: !3, line: 64, type: !144)
!4219 = !DILocalVariable(name: "user_ns", scope: !4213, file: !3, line: 66, type: !566)
!4220 = !DILocalVariable(name: "key", scope: !4221, file: !3, line: 70, type: !107)
!4221 = distinct !DILexicalBlock(scope: !4213, file: !3, line: 69, column: 12)
!4222 = !DILocalVariable(name: "__mptr", scope: !4223, file: !3, line: 70, type: !105)
!4223 = distinct !DILexicalBlock(scope: !4221, file: !3, line: 70, column: 21)
!4224 = !DILocation(line: 64, column: 57, scope: !4213)
!4225 = !DILocation(line: 64, column: 76, scope: !4213)
!4226 = !DILocation(line: 66, column: 2, scope: !4213)
!4227 = !DILocation(line: 66, column: 25, scope: !4213)
!4228 = !DILocation(line: 66, column: 47, scope: !4213)
!4229 = !DILocation(line: 66, column: 35, scope: !4213)
!4230 = !DILocation(line: 68, column: 14, scope: !4213)
!4231 = !DILocation(line: 68, column: 6, scope: !4213)
!4232 = !DILocation(line: 68, column: 4, scope: !4213)
!4233 = !DILocation(line: 69, column: 2, scope: !4213)
!4234 = !DILocation(line: 69, column: 9, scope: !4213)
!4235 = !DILocation(line: 70, column: 3, scope: !4221)
!4236 = !DILocation(line: 70, column: 15, scope: !4221)
!4237 = !DILocation(line: 70, column: 21, scope: !4223)
!4238 = !DILocation(line: 70, column: 21, scope: !4221)
!4239 = !DILocation(line: 71, column: 24, scope: !4240)
!4240 = distinct !DILexicalBlock(scope: !4221, file: !3, line: 71, column: 7)
!4241 = !DILocation(line: 71, column: 33, scope: !4240)
!4242 = !DILocation(line: 71, column: 38, scope: !4240)
!4243 = !DILocation(line: 71, column: 44, scope: !4240)
!4244 = !DILocation(line: 71, column: 7, scope: !4240)
!4245 = !DILocation(line: 71, column: 7, scope: !4221)
!4246 = !DILocation(line: 72, column: 4, scope: !4240)
!4247 = !DILocation(line: 73, column: 15, scope: !4221)
!4248 = !DILocation(line: 73, column: 7, scope: !4221)
!4249 = !DILocation(line: 73, column: 5, scope: !4221)
!4250 = !DILocation(line: 74, column: 2, scope: !4213)
!4251 = distinct !{!4251, !4233, !4250, !4129, !4130}
!4252 = !DILocation(line: 75, column: 9, scope: !4213)
!4253 = !DILocation(line: 76, column: 1, scope: !4213)
!4254 = !DILocation(line: 75, column: 2, scope: !4213)
!4255 = distinct !DISubprogram(name: "key_node_serial", scope: !3, file: !3, line: 129, type: !4256, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4258)
!4256 = !DISubroutineType(types: !4257)
!4257 = !{!122, !144}
!4258 = !{!4259, !4260, !4261}
!4259 = !DILocalVariable(name: "n", arg: 1, scope: !4255, file: !3, line: 129, type: !144)
!4260 = !DILocalVariable(name: "key", scope: !4255, file: !3, line: 131, type: !107)
!4261 = !DILocalVariable(name: "__mptr", scope: !4262, file: !3, line: 131, type: !105)
!4262 = distinct !DILexicalBlock(scope: !4255, file: !3, line: 131, column: 20)
!4263 = !DILocation(line: 129, column: 60, scope: !4255)
!4264 = !DILocation(line: 131, column: 2, scope: !4255)
!4265 = !DILocation(line: 131, column: 14, scope: !4255)
!4266 = !DILocation(line: 131, column: 20, scope: !4262)
!4267 = !DILocation(line: 131, column: 20, scope: !4255)
!4268 = !DILocation(line: 132, column: 9, scope: !4255)
!4269 = !DILocation(line: 132, column: 14, scope: !4255)
!4270 = !DILocation(line: 133, column: 1, scope: !4255)
!4271 = !DILocation(line: 132, column: 2, scope: !4255)
!4272 = distinct !DISubprogram(name: "make_key_ref", scope: !82, file: !82, line: 155, type: !4273, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4275)
!4273 = !DISubroutineType(types: !4274)
!4274 = !{!3652, !344, !342}
!4275 = !{!4276, !4277}
!4276 = !DILocalVariable(name: "key", arg: 1, scope: !4272, file: !82, line: 155, type: !344)
!4277 = !DILocalVariable(name: "possession", arg: 2, scope: !4272, file: !82, line: 156, type: !342)
!4278 = !DILocation(line: 155, column: 56, scope: !4272)
!4279 = !DILocation(line: 156, column: 15, scope: !4272)
!4280 = !DILocation(line: 158, column: 38, scope: !4272)
!4281 = !DILocation(line: 158, column: 22, scope: !4272)
!4282 = !DILocation(line: 158, column: 44, scope: !4272)
!4283 = !{i8 0, i8 2}
!4284 = !DILocation(line: 158, column: 42, scope: !4272)
!4285 = !DILocation(line: 158, column: 9, scope: !4272)
!4286 = !DILocation(line: 158, column: 2, scope: !4272)
!4287 = distinct !DISubprogram(name: "rcu_read_lock", scope: !4288, file: !4288, line: 782, type: !2042, scopeLine: 783, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4288 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!4289 = !DILocation(line: 784, column: 2, scope: !4287)
!4290 = !DILocation(line: 786, column: 2, scope: !4287)
!4291 = !DILocation(line: 786, column: 2, scope: !4292)
!4292 = distinct !DILexicalBlock(scope: !4287, file: !4288, line: 786, column: 2)
!4293 = !DILocation(line: 787, column: 2, scope: !4287)
!4294 = !DILocation(line: 787, column: 2, scope: !4295)
!4295 = distinct !DILexicalBlock(scope: !4287, file: !4288, line: 787, column: 2)
!4296 = !DILocation(line: 789, column: 1, scope: !4287)
!4297 = !DISubprogram(name: "search_cred_keyrings_rcu", scope: !200, file: !200, line: 146, type: !4298, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4298 = !DISubroutineType(types: !4299)
!4299 = !{!3652, !4300}
!4300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!4301 = distinct !DISubprogram(name: "rcu_read_unlock", scope: !4288, file: !4288, line: 813, type: !2042, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4302 = !DILocation(line: 815, column: 2, scope: !4301)
!4303 = !DILocation(line: 815, column: 2, scope: !4304)
!4304 = distinct !DILexicalBlock(scope: !4301, file: !4288, line: 815, column: 2)
!4305 = !DILocation(line: 818, column: 2, scope: !4301)
!4306 = !DILocation(line: 819, column: 2, scope: !4301)
!4307 = !DILocation(line: 819, column: 2, scope: !4308)
!4308 = distinct !DILexicalBlock(scope: !4301, file: !4288, line: 819, column: 2)
!4309 = !DILocation(line: 820, column: 1, scope: !4301)
!4310 = distinct !DISubprogram(name: "IS_ERR", scope: !4311, file: !4311, line: 59, type: !4312, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4314)
!4311 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!4312 = !DISubroutineType(types: !4313)
!4313 = !{!342, !317}
!4314 = !{!4315}
!4315 = !DILocalVariable(name: "ptr", arg: 1, scope: !4310, file: !4311, line: 59, type: !317)
!4316 = !DILocation(line: 59, column: 60, scope: !4310)
!4317 = !DILocation(line: 61, column: 9, scope: !4310)
!4318 = !DILocation(line: 61, column: 2, scope: !4310)
!4319 = distinct !DISubprogram(name: "key_ref_put", scope: !82, file: !82, line: 317, type: !4320, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4322)
!4320 = !DISubroutineType(types: !4321)
!4321 = !{null, !3652}
!4322 = !{!4323}
!4323 = !DILocalVariable(name: "key_ref", arg: 1, scope: !4319, file: !82, line: 317, type: !3652)
!4324 = !DILocation(line: 317, column: 42, scope: !4319)
!4325 = !DILocation(line: 319, column: 25, scope: !4319)
!4326 = !DILocation(line: 319, column: 10, scope: !4319)
!4327 = !DILocation(line: 319, column: 2, scope: !4319)
!4328 = !DILocation(line: 320, column: 1, scope: !4319)
!4329 = !DISubprogram(name: "key_task_permission", scope: !200, file: !200, line: 182, type: !4330, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4330 = !DISubroutineType(types: !4331)
!4331 = !{!106, !4332, !500, !81}
!4332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3652)
!4333 = !DISubprogram(name: "ktime_get_real_seconds", scope: !4334, file: !4334, line: 54, type: !4335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4334 = !DIFile(filename: "./include/linux/timekeeping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f8a5b548f2f61d6d6461a10d2f09afe")
!4335 = !DISubroutineType(types: !4336)
!4336 = !{!239}
!4337 = !DISubprogram(name: "sprintf", scope: !4338, file: !4338, line: 10, type: !4339, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4338 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!4339 = !DISubroutineType(types: !4340)
!4340 = !{!106, !307, !287, null}
!4341 = distinct !DISubprogram(name: "div_u64", scope: !4342, file: !4342, line: 127, type: !4343, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4345)
!4342 = !DIFile(filename: "./include/linux/math64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d8ed26cb78f71dd5066a07a0684eae84")
!4343 = !DISubroutineType(types: !4344)
!4344 = !{!521, !521, !254}
!4345 = !{!4346, !4347, !4348}
!4346 = !DILocalVariable(name: "dividend", arg: 1, scope: !4341, file: !4342, line: 127, type: !521)
!4347 = !DILocalVariable(name: "divisor", arg: 2, scope: !4341, file: !4342, line: 127, type: !254)
!4348 = !DILocalVariable(name: "remainder", scope: !4341, file: !4342, line: 129, type: !254)
!4349 = !DILocation(line: 127, column: 31, scope: !4341)
!4350 = !DILocation(line: 127, column: 45, scope: !4341)
!4351 = !DILocation(line: 129, column: 2, scope: !4341)
!4352 = !DILocation(line: 129, column: 6, scope: !4341)
!4353 = !DILocation(line: 130, column: 21, scope: !4341)
!4354 = !DILocation(line: 130, column: 31, scope: !4341)
!4355 = !DILocation(line: 130, column: 9, scope: !4341)
!4356 = !DILocation(line: 131, column: 1, scope: !4341)
!4357 = !DILocation(line: 130, column: 2, scope: !4341)
!4358 = distinct !DISubprogram(name: "key_read_state", scope: !82, file: !82, line: 458, type: !4359, scopeLine: 459, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4361)
!4359 = !DISubroutineType(types: !4360)
!4360 = !{!259, !344}
!4361 = !{!4362, !4363}
!4362 = !DILocalVariable(name: "key", arg: 1, scope: !4358, file: !82, line: 458, type: !344)
!4363 = !DILocalVariable(name: "___p1", scope: !4364, file: !82, line: 461, type: !4365)
!4364 = distinct !DILexicalBlock(scope: !4358, file: !82, line: 461, column: 9)
!4365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !259)
!4366 = !DILocation(line: 458, column: 54, scope: !4358)
!4367 = !DILocation(line: 461, column: 9, scope: !4364)
!4368 = !DILocation(line: 461, column: 9, scope: !4369)
!4369 = distinct !DILexicalBlock(scope: !4364, file: !82, line: 461, column: 9)
!4370 = !DILocation(line: 461, column: 9, scope: !4371)
!4371 = distinct !DILexicalBlock(scope: !4369, file: !82, line: 461, column: 9)
!4372 = !DILocation(line: 461, column: 9, scope: !4373)
!4373 = distinct !DILexicalBlock(scope: !4364, file: !82, line: 461, column: 9)
!4374 = !{i64 2152981339}
!4375 = !DILocation(line: 461, column: 9, scope: !4358)
!4376 = !DILocation(line: 461, column: 2, scope: !4358)
!4377 = !DISubprogram(name: "seq_printf", scope: !366, file: !366, line: 119, type: !4378, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4378 = !DISubroutineType(types: !4379)
!4379 = !{null, !364, !287, null}
!4380 = distinct !DISubprogram(name: "refcount_read", scope: !112, file: !112, line: 145, type: !4381, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4385)
!4381 = !DISubroutineType(types: !4382)
!4382 = !{!7, !4383}
!4383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4384, size: 64)
!4384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!4385 = !{!4386}
!4386 = !DILocalVariable(name: "r", arg: 1, scope: !4380, file: !112, line: 145, type: !4383)
!4387 = !DILocation(line: 145, column: 60, scope: !4380)
!4388 = !DILocation(line: 147, column: 22, scope: !4380)
!4389 = !DILocation(line: 147, column: 25, scope: !4380)
!4390 = !DILocation(line: 147, column: 9, scope: !4380)
!4391 = !DILocation(line: 147, column: 2, scope: !4380)
!4392 = distinct !DISubprogram(name: "from_kuid_munged", scope: !225, file: !225, line: 163, type: !4393, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4395)
!4393 = !DISubroutineType(types: !4394)
!4394 = !{!229, !566, !224}
!4395 = !{!4396, !4397, !4398}
!4396 = !DILocalVariable(name: "to", arg: 1, scope: !4392, file: !225, line: 163, type: !566)
!4397 = !DILocalVariable(name: "kuid", arg: 2, scope: !4392, file: !225, line: 163, type: !224)
!4398 = !DILocalVariable(name: "uid", scope: !4392, file: !225, line: 165, type: !229)
!4399 = !DILocation(line: 163, column: 61, scope: !4392)
!4400 = !DILocation(line: 163, column: 72, scope: !4392)
!4401 = !DILocation(line: 165, column: 2, scope: !4392)
!4402 = !DILocation(line: 165, column: 8, scope: !4392)
!4403 = !DILocation(line: 165, column: 24, scope: !4392)
!4404 = !DILocation(line: 165, column: 14, scope: !4392)
!4405 = !DILocation(line: 166, column: 6, scope: !4406)
!4406 = distinct !DILexicalBlock(scope: !4392, file: !225, line: 166, column: 6)
!4407 = !DILocation(line: 166, column: 10, scope: !4406)
!4408 = !DILocation(line: 166, column: 6, scope: !4392)
!4409 = !DILocation(line: 167, column: 9, scope: !4406)
!4410 = !DILocation(line: 167, column: 7, scope: !4406)
!4411 = !DILocation(line: 167, column: 3, scope: !4406)
!4412 = !DILocation(line: 168, column: 9, scope: !4392)
!4413 = !DILocation(line: 169, column: 1, scope: !4392)
!4414 = !DILocation(line: 168, column: 2, scope: !4392)
!4415 = distinct !DISubprogram(name: "from_kgid_munged", scope: !225, file: !225, line: 171, type: !4416, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4418)
!4416 = !DISubroutineType(types: !4417)
!4417 = !{!249, !566, !245}
!4418 = !{!4419, !4420, !4421}
!4419 = !DILocalVariable(name: "to", arg: 1, scope: !4415, file: !225, line: 171, type: !566)
!4420 = !DILocalVariable(name: "kgid", arg: 2, scope: !4415, file: !225, line: 171, type: !245)
!4421 = !DILocalVariable(name: "gid", scope: !4415, file: !225, line: 173, type: !249)
!4422 = !DILocation(line: 171, column: 61, scope: !4415)
!4423 = !DILocation(line: 171, column: 72, scope: !4415)
!4424 = !DILocation(line: 173, column: 2, scope: !4415)
!4425 = !DILocation(line: 173, column: 8, scope: !4415)
!4426 = !DILocation(line: 173, column: 24, scope: !4415)
!4427 = !DILocation(line: 173, column: 14, scope: !4415)
!4428 = !DILocation(line: 174, column: 6, scope: !4429)
!4429 = distinct !DILexicalBlock(scope: !4415, file: !225, line: 174, column: 6)
!4430 = !DILocation(line: 174, column: 10, scope: !4429)
!4431 = !DILocation(line: 174, column: 6, scope: !4415)
!4432 = !DILocation(line: 175, column: 9, scope: !4429)
!4433 = !DILocation(line: 175, column: 7, scope: !4429)
!4434 = !DILocation(line: 175, column: 3, scope: !4429)
!4435 = !DILocation(line: 176, column: 9, scope: !4415)
!4436 = !DILocation(line: 177, column: 1, scope: !4415)
!4437 = !DILocation(line: 176, column: 2, scope: !4415)
!4438 = !DISubprogram(name: "seq_putc", scope: !366, file: !366, line: 120, type: !4439, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4439 = !DISubroutineType(types: !4440)
!4440 = !{null, !364, !277}
!4441 = !DISubprogram(name: "__rcu_read_lock", scope: !4288, file: !4288, line: 74, type: !2042, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4442 = !DISubprogram(name: "__rcu_read_unlock", scope: !4288, file: !4288, line: 75, type: !2042, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4443 = !DISubprogram(name: "key_put", scope: !82, file: !82, line: 302, type: !357, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4444 = distinct !DISubprogram(name: "key_ref_to_ptr", scope: !82, file: !82, line: 161, type: !4445, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4447)
!4445 = !DISubroutineType(types: !4446)
!4446 = !{!107, !4332}
!4447 = !{!4448}
!4448 = !DILocalVariable(name: "key_ref", arg: 1, scope: !4444, file: !82, line: 161, type: !4332)
!4449 = !DILocation(line: 161, column: 58, scope: !4444)
!4450 = !DILocation(line: 163, column: 41, scope: !4444)
!4451 = !DILocation(line: 163, column: 25, scope: !4444)
!4452 = !DILocation(line: 163, column: 49, scope: !4444)
!4453 = !DILocation(line: 163, column: 9, scope: !4444)
!4454 = !DILocation(line: 163, column: 2, scope: !4444)
!4455 = distinct !DISubprogram(name: "div_u64_rem", scope: !4342, file: !4342, line: 26, type: !4456, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4458)
!4456 = !DISubroutineType(types: !4457)
!4457 = !{!521, !521, !254, !1735}
!4458 = !{!4459, !4460, !4461}
!4459 = !DILocalVariable(name: "dividend", arg: 1, scope: !4455, file: !4342, line: 26, type: !521)
!4460 = !DILocalVariable(name: "divisor", arg: 2, scope: !4455, file: !4342, line: 26, type: !254)
!4461 = !DILocalVariable(name: "remainder", arg: 3, scope: !4455, file: !4342, line: 26, type: !1735)
!4462 = !DILocation(line: 26, column: 35, scope: !4455)
!4463 = !DILocation(line: 26, column: 49, scope: !4455)
!4464 = !DILocation(line: 26, column: 63, scope: !4455)
!4465 = !DILocation(line: 28, column: 15, scope: !4455)
!4466 = !DILocation(line: 28, column: 26, scope: !4455)
!4467 = !DILocation(line: 28, column: 24, scope: !4455)
!4468 = !DILocation(line: 28, column: 3, scope: !4455)
!4469 = !DILocation(line: 28, column: 13, scope: !4455)
!4470 = !DILocation(line: 29, column: 9, scope: !4455)
!4471 = !DILocation(line: 29, column: 20, scope: !4455)
!4472 = !DILocation(line: 29, column: 18, scope: !4455)
!4473 = !DILocation(line: 29, column: 2, scope: !4455)
!4474 = distinct !DISubprogram(name: "atomic_read", scope: !4475, file: !4475, line: 30, type: !4476, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4480)
!4475 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!4476 = !DISubroutineType(types: !4477)
!4477 = !{!106, !4478}
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4479, size: 64)
!4479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!4480 = !{!4481}
!4481 = !DILocalVariable(name: "v", arg: 1, scope: !4474, file: !4475, line: 30, type: !4478)
!4482 = !DILocation(line: 30, column: 29, scope: !4474)
!4483 = !DILocation(line: 32, column: 25, scope: !4474)
!4484 = !DILocation(line: 32, column: 2, scope: !4474)
!4485 = !DILocation(line: 33, column: 25, scope: !4474)
!4486 = !DILocation(line: 33, column: 9, scope: !4474)
!4487 = !DILocation(line: 33, column: 2, scope: !4474)
!4488 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !4489, file: !4489, line: 66, type: !4490, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4495)
!4489 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!4490 = !DISubroutineType(types: !4491)
!4491 = !{null, !4492, !290}
!4492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4493, size: 64)
!4493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4494)
!4494 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4495 = !{!4496, !4497}
!4496 = !DILocalVariable(name: "v", arg: 1, scope: !4488, file: !4489, line: 66, type: !4492)
!4497 = !DILocalVariable(name: "size", arg: 2, scope: !4488, file: !4489, line: 66, type: !290)
!4498 = !DILocation(line: 66, column: 73, scope: !4488)
!4499 = !DILocation(line: 66, column: 83, scope: !4488)
!4500 = !DILocation(line: 68, column: 19, scope: !4488)
!4501 = !DILocation(line: 68, column: 22, scope: !4488)
!4502 = !DILocation(line: 68, column: 2, scope: !4488)
!4503 = !DILocation(line: 69, column: 2, scope: !4488)
!4504 = !DILocation(line: 70, column: 1, scope: !4488)
!4505 = distinct !DISubprogram(name: "raw_atomic_read", scope: !4506, file: !4506, line: 442, type: !4476, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4507)
!4506 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!4507 = !{!4508}
!4508 = !DILocalVariable(name: "v", arg: 1, scope: !4505, file: !4506, line: 442, type: !4478)
!4509 = !DILocation(line: 442, column: 33, scope: !4505)
!4510 = !DILocation(line: 444, column: 26, scope: !4505)
!4511 = !DILocation(line: 444, column: 9, scope: !4505)
!4512 = !DILocation(line: 444, column: 2, scope: !4505)
!4513 = distinct !DISubprogram(name: "kasan_check_read", scope: !4514, file: !4514, line: 40, type: !4515, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4517)
!4514 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!4515 = !DISubroutineType(types: !4516)
!4516 = !{!342, !4492, !7}
!4517 = !{!4518, !4519}
!4518 = !DILocalVariable(name: "p", arg: 1, scope: !4513, file: !4514, line: 40, type: !4492)
!4519 = !DILocalVariable(name: "size", arg: 2, scope: !4513, file: !4514, line: 40, type: !7)
!4520 = !DILocation(line: 40, column: 58, scope: !4513)
!4521 = !DILocation(line: 40, column: 74, scope: !4513)
!4522 = !DILocation(line: 42, column: 2, scope: !4513)
!4523 = distinct !DISubprogram(name: "kcsan_check_access", scope: !4524, file: !4524, line: 229, type: !4525, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4527)
!4524 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!4525 = !DISubroutineType(types: !4526)
!4526 = !{null, !4492, !290, !106}
!4527 = !{!4528, !4529, !4530}
!4528 = !DILocalVariable(name: "ptr", arg: 1, scope: !4523, file: !4524, line: 229, type: !4492)
!4529 = !DILocalVariable(name: "size", arg: 2, scope: !4523, file: !4524, line: 229, type: !290)
!4530 = !DILocalVariable(name: "type", arg: 3, scope: !4523, file: !4524, line: 230, type: !106)
!4531 = !DILocation(line: 229, column: 60, scope: !4523)
!4532 = !DILocation(line: 229, column: 72, scope: !4523)
!4533 = !DILocation(line: 230, column: 15, scope: !4523)
!4534 = !DILocation(line: 230, column: 23, scope: !4523)
!4535 = distinct !DISubprogram(name: "arch_atomic_read", scope: !4536, file: !4536, line: 17, type: !4476, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4537)
!4536 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!4537 = !{!4538}
!4538 = !DILocalVariable(name: "v", arg: 1, scope: !4535, file: !4536, line: 17, type: !4478)
!4539 = !DILocation(line: 17, column: 61, scope: !4535)
!4540 = !DILocation(line: 23, column: 9, scope: !4535)
!4541 = !DILocation(line: 23, column: 2, scope: !4535)
!4542 = distinct !DISubprogram(name: "from_kuid", scope: !225, file: !225, line: 153, type: !4393, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4543)
!4543 = !{!4544, !4545}
!4544 = !DILocalVariable(name: "to", arg: 1, scope: !4542, file: !225, line: 153, type: !566)
!4545 = !DILocalVariable(name: "kuid", arg: 2, scope: !4542, file: !225, line: 153, type: !224)
!4546 = !DILocation(line: 153, column: 54, scope: !4542)
!4547 = !DILocation(line: 153, column: 65, scope: !4542)
!4548 = !DILocation(line: 155, column: 9, scope: !4542)
!4549 = !DILocation(line: 155, column: 2, scope: !4542)
!4550 = distinct !DISubprogram(name: "from_kgid", scope: !225, file: !225, line: 158, type: !4416, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4551)
!4551 = !{!4552, !4553}
!4552 = !DILocalVariable(name: "to", arg: 1, scope: !4550, file: !225, line: 158, type: !566)
!4553 = !DILocalVariable(name: "kgid", arg: 2, scope: !4550, file: !225, line: 158, type: !245)
!4554 = !DILocation(line: 158, column: 54, scope: !4550)
!4555 = !DILocation(line: 158, column: 65, scope: !4550)
!4556 = !DILocation(line: 160, column: 9, scope: !4550)
!4557 = !DILocation(line: 160, column: 2, scope: !4550)
!4558 = distinct !DISubprogram(name: "__kgid_val", scope: !225, file: !225, line: 39, type: !4559, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4561)
!4559 = !DISubroutineType(types: !4560)
!4560 = !{!249, !245}
!4561 = !{!4562}
!4562 = !DILocalVariable(name: "gid", arg: 1, scope: !4558, file: !225, line: 39, type: !245)
!4563 = !DILocation(line: 39, column: 39, scope: !4558)
!4564 = !DILocation(line: 41, column: 13, scope: !4558)
!4565 = !DILocation(line: 41, column: 2, scope: !4558)
!4566 = distinct !DISubprogram(name: "proc_key_users_start", scope: !3, file: !3, line: 274, type: !385, scopeLine: 276, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4567)
!4567 = !{!4568, !4569, !4570, !4571}
!4568 = !DILocalVariable(name: "p", arg: 1, scope: !4566, file: !3, line: 274, type: !364)
!4569 = !DILocalVariable(name: "_pos", arg: 2, scope: !4566, file: !3, line: 274, type: !387)
!4570 = !DILocalVariable(name: "_p", scope: !4566, file: !3, line: 277, type: !144)
!4571 = !DILocalVariable(name: "pos", scope: !4566, file: !3, line: 278, type: !374)
!4572 = !DILocation(line: 274, column: 52, scope: !4566)
!4573 = !DILocation(line: 274, column: 63, scope: !4566)
!4574 = !DILocation(line: 277, column: 2, scope: !4566)
!4575 = !DILocation(line: 277, column: 18, scope: !4566)
!4576 = !DILocation(line: 278, column: 2, scope: !4566)
!4577 = !DILocation(line: 278, column: 9, scope: !4566)
!4578 = !DILocation(line: 278, column: 16, scope: !4566)
!4579 = !DILocation(line: 278, column: 15, scope: !4566)
!4580 = !DILocation(line: 280, column: 2, scope: !4566)
!4581 = !DILocation(line: 282, column: 34, scope: !4566)
!4582 = !DILocation(line: 282, column: 22, scope: !4566)
!4583 = !DILocation(line: 282, column: 7, scope: !4566)
!4584 = !DILocation(line: 282, column: 5, scope: !4566)
!4585 = !DILocation(line: 283, column: 2, scope: !4566)
!4586 = !DILocation(line: 283, column: 9, scope: !4566)
!4587 = !DILocation(line: 283, column: 13, scope: !4566)
!4588 = !DILocation(line: 283, column: 17, scope: !4566)
!4589 = !DILocation(line: 283, column: 20, scope: !4566)
!4590 = !DILocation(line: 0, scope: !4566)
!4591 = !DILocation(line: 284, column: 6, scope: !4592)
!4592 = distinct !DILexicalBlock(scope: !4566, file: !3, line: 283, column: 24)
!4593 = !DILocation(line: 285, column: 34, scope: !4592)
!4594 = !DILocation(line: 285, column: 22, scope: !4592)
!4595 = !DILocation(line: 285, column: 38, scope: !4592)
!4596 = !DILocation(line: 285, column: 8, scope: !4592)
!4597 = !DILocation(line: 285, column: 6, scope: !4592)
!4598 = distinct !{!4598, !4585, !4599, !4129, !4130}
!4599 = !DILocation(line: 286, column: 2, scope: !4566)
!4600 = !DILocation(line: 288, column: 9, scope: !4566)
!4601 = !DILocation(line: 289, column: 1, scope: !4566)
!4602 = !DILocation(line: 288, column: 2, scope: !4566)
!4603 = distinct !DISubprogram(name: "proc_key_users_stop", scope: !3, file: !3, line: 297, type: !390, scopeLine: 299, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4604)
!4604 = !{!4605, !4606}
!4605 = !DILocalVariable(name: "p", arg: 1, scope: !4603, file: !3, line: 297, type: !364)
!4606 = !DILocalVariable(name: "v", arg: 2, scope: !4603, file: !3, line: 297, type: !105)
!4607 = !DILocation(line: 297, column: 50, scope: !4603)
!4608 = !DILocation(line: 297, column: 59, scope: !4603)
!4609 = !DILocation(line: 300, column: 2, scope: !4603)
!4610 = !DILocation(line: 301, column: 1, scope: !4603)
!4611 = distinct !DISubprogram(name: "proc_key_users_next", scope: !3, file: !3, line: 291, type: !394, scopeLine: 292, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4612)
!4612 = !{!4613, !4614, !4615}
!4613 = !DILocalVariable(name: "p", arg: 1, scope: !4611, file: !3, line: 291, type: !364)
!4614 = !DILocalVariable(name: "v", arg: 2, scope: !4611, file: !3, line: 291, type: !105)
!4615 = !DILocalVariable(name: "_pos", arg: 3, scope: !4611, file: !3, line: 291, type: !387)
!4616 = !DILocation(line: 291, column: 51, scope: !4611)
!4617 = !DILocation(line: 291, column: 60, scope: !4611)
!4618 = !DILocation(line: 291, column: 71, scope: !4611)
!4619 = !DILocation(line: 293, column: 4, scope: !4611)
!4620 = !DILocation(line: 293, column: 9, scope: !4611)
!4621 = !DILocation(line: 294, column: 35, scope: !4611)
!4622 = !DILocation(line: 294, column: 23, scope: !4611)
!4623 = !DILocation(line: 294, column: 57, scope: !4611)
!4624 = !DILocation(line: 294, column: 9, scope: !4611)
!4625 = !DILocation(line: 294, column: 2, scope: !4611)
!4626 = distinct !DISubprogram(name: "proc_key_users_show", scope: !3, file: !3, line: 303, type: !398, scopeLine: 304, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4627)
!4627 = !{!4628, !4629, !4630, !4631, !4632, !4634, !4635}
!4628 = !DILocalVariable(name: "m", arg: 1, scope: !4626, file: !3, line: 303, type: !364)
!4629 = !DILocalVariable(name: "v", arg: 2, scope: !4626, file: !3, line: 303, type: !105)
!4630 = !DILocalVariable(name: "_p", scope: !4626, file: !3, line: 305, type: !144)
!4631 = !DILocalVariable(name: "user", scope: !4626, file: !3, line: 306, type: !198)
!4632 = !DILocalVariable(name: "__mptr", scope: !4633, file: !3, line: 306, type: !105)
!4633 = distinct !DILexicalBlock(scope: !4626, file: !3, line: 306, column: 26)
!4634 = !DILocalVariable(name: "maxkeys", scope: !4626, file: !3, line: 307, type: !7)
!4635 = !DILocalVariable(name: "maxbytes", scope: !4626, file: !3, line: 309, type: !7)
!4636 = !DILocation(line: 303, column: 49, scope: !4626)
!4637 = !DILocation(line: 303, column: 58, scope: !4626)
!4638 = !DILocation(line: 305, column: 2, scope: !4626)
!4639 = !DILocation(line: 305, column: 18, scope: !4626)
!4640 = !DILocation(line: 305, column: 23, scope: !4626)
!4641 = !DILocation(line: 306, column: 2, scope: !4626)
!4642 = !DILocation(line: 306, column: 19, scope: !4626)
!4643 = !DILocation(line: 306, column: 26, scope: !4633)
!4644 = !DILocation(line: 306, column: 26, scope: !4626)
!4645 = !DILocation(line: 307, column: 2, scope: !4626)
!4646 = !DILocation(line: 307, column: 11, scope: !4626)
!4647 = !DILocation(line: 307, column: 28, scope: !4626)
!4648 = !DILocation(line: 307, column: 34, scope: !4626)
!4649 = !DILocation(line: 307, column: 39, scope: !4626)
!4650 = !DILocation(line: 307, column: 21, scope: !4626)
!4651 = !DILocation(line: 308, column: 3, scope: !4626)
!4652 = !DILocation(line: 308, column: 28, scope: !4626)
!4653 = !DILocation(line: 309, column: 2, scope: !4626)
!4654 = !DILocation(line: 309, column: 11, scope: !4626)
!4655 = !DILocation(line: 309, column: 29, scope: !4626)
!4656 = !DILocation(line: 309, column: 35, scope: !4626)
!4657 = !DILocation(line: 309, column: 40, scope: !4626)
!4658 = !DILocation(line: 309, column: 22, scope: !4626)
!4659 = !DILocation(line: 310, column: 3, scope: !4626)
!4660 = !DILocation(line: 310, column: 29, scope: !4626)
!4661 = !DILocation(line: 312, column: 13, scope: !4626)
!4662 = !DILocation(line: 313, column: 35, scope: !4626)
!4663 = !DILocation(line: 313, column: 23, scope: !4626)
!4664 = !DILocation(line: 313, column: 39, scope: !4626)
!4665 = !DILocation(line: 313, column: 45, scope: !4626)
!4666 = !DILocation(line: 313, column: 6, scope: !4626)
!4667 = !DILocation(line: 314, column: 21, scope: !4626)
!4668 = !DILocation(line: 314, column: 27, scope: !4626)
!4669 = !DILocation(line: 314, column: 6, scope: !4626)
!4670 = !DILocation(line: 315, column: 19, scope: !4626)
!4671 = !DILocation(line: 315, column: 25, scope: !4626)
!4672 = !DILocation(line: 315, column: 6, scope: !4626)
!4673 = !DILocation(line: 316, column: 19, scope: !4626)
!4674 = !DILocation(line: 316, column: 25, scope: !4626)
!4675 = !DILocation(line: 316, column: 6, scope: !4626)
!4676 = !DILocation(line: 317, column: 6, scope: !4626)
!4677 = !DILocation(line: 317, column: 12, scope: !4626)
!4678 = !DILocation(line: 318, column: 6, scope: !4626)
!4679 = !DILocation(line: 319, column: 6, scope: !4626)
!4680 = !DILocation(line: 319, column: 12, scope: !4626)
!4681 = !DILocation(line: 320, column: 6, scope: !4626)
!4682 = !DILocation(line: 312, column: 2, scope: !4626)
!4683 = !DILocation(line: 323, column: 1, scope: !4626)
!4684 = !DILocation(line: 322, column: 2, scope: !4626)
!4685 = distinct !DISubprogram(name: "key_user_first", scope: !3, file: !3, line: 268, type: !4686, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4689)
!4686 = !DISubroutineType(types: !4687)
!4687 = !{!144, !566, !4688}
!4688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!4689 = !{!4690, !4691, !4692}
!4690 = !DILocalVariable(name: "user_ns", arg: 1, scope: !4685, file: !3, line: 268, type: !566)
!4691 = !DILocalVariable(name: "r", arg: 2, scope: !4685, file: !3, line: 268, type: !4688)
!4692 = !DILocalVariable(name: "n", scope: !4685, file: !3, line: 270, type: !144)
!4693 = !DILocation(line: 268, column: 62, scope: !4685)
!4694 = !DILocation(line: 268, column: 87, scope: !4685)
!4695 = !DILocation(line: 270, column: 2, scope: !4685)
!4696 = !DILocation(line: 270, column: 18, scope: !4685)
!4697 = !DILocation(line: 270, column: 31, scope: !4685)
!4698 = !DILocation(line: 270, column: 22, scope: !4685)
!4699 = !DILocation(line: 271, column: 25, scope: !4685)
!4700 = !DILocation(line: 271, column: 34, scope: !4685)
!4701 = !DILocation(line: 271, column: 9, scope: !4685)
!4702 = !DILocation(line: 272, column: 1, scope: !4685)
!4703 = !DILocation(line: 271, column: 2, scope: !4685)
!4704 = distinct !DISubprogram(name: "key_user_next", scope: !3, file: !3, line: 263, type: !4705, scopeLine: 264, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4707)
!4705 = !DISubroutineType(types: !4706)
!4706 = !{!144, !566, !144}
!4707 = !{!4708, !4709}
!4708 = !DILocalVariable(name: "user_ns", arg: 1, scope: !4704, file: !3, line: 263, type: !566)
!4709 = !DILocalVariable(name: "n", arg: 2, scope: !4704, file: !3, line: 263, type: !144)
!4710 = !DILocation(line: 263, column: 61, scope: !4704)
!4711 = !DILocation(line: 263, column: 86, scope: !4704)
!4712 = !DILocation(line: 265, column: 25, scope: !4704)
!4713 = !DILocation(line: 265, column: 42, scope: !4704)
!4714 = !DILocation(line: 265, column: 34, scope: !4704)
!4715 = !DILocation(line: 265, column: 9, scope: !4704)
!4716 = !DILocation(line: 265, column: 2, scope: !4704)
!4717 = !DISubprogram(name: "rb_first", scope: !4184, file: !4184, line: 46, type: !4718, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4718 = !DISubroutineType(types: !4719)
!4719 = !{!144, !4720}
!4720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4721, size: 64)
!4721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1439)
!4722 = distinct !DISubprogram(name: "__key_user_next", scope: !3, file: !3, line: 252, type: !4705, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4723)
!4723 = !{!4724, !4725, !4726, !4728}
!4724 = !DILocalVariable(name: "user_ns", arg: 1, scope: !4722, file: !3, line: 252, type: !566)
!4725 = !DILocalVariable(name: "n", arg: 2, scope: !4722, file: !3, line: 252, type: !144)
!4726 = !DILocalVariable(name: "user", scope: !4727, file: !3, line: 255, type: !198)
!4727 = distinct !DILexicalBlock(scope: !4722, file: !3, line: 254, column: 12)
!4728 = !DILocalVariable(name: "__mptr", scope: !4729, file: !3, line: 255, type: !105)
!4729 = distinct !DILexicalBlock(scope: !4727, file: !3, line: 255, column: 27)
!4730 = !DILocation(line: 252, column: 63, scope: !4722)
!4731 = !DILocation(line: 252, column: 88, scope: !4722)
!4732 = !DILocation(line: 254, column: 2, scope: !4722)
!4733 = !DILocation(line: 254, column: 9, scope: !4722)
!4734 = !DILocation(line: 255, column: 3, scope: !4727)
!4735 = !DILocation(line: 255, column: 20, scope: !4727)
!4736 = !DILocation(line: 255, column: 27, scope: !4729)
!4737 = !DILocation(line: 255, column: 27, scope: !4727)
!4738 = !DILocation(line: 256, column: 24, scope: !4739)
!4739 = distinct !DILexicalBlock(scope: !4727, file: !3, line: 256, column: 7)
!4740 = !DILocation(line: 256, column: 33, scope: !4739)
!4741 = !DILocation(line: 256, column: 39, scope: !4739)
!4742 = !DILocation(line: 256, column: 7, scope: !4739)
!4743 = !DILocation(line: 256, column: 7, scope: !4727)
!4744 = !DILocation(line: 257, column: 4, scope: !4739)
!4745 = !DILocation(line: 258, column: 15, scope: !4727)
!4746 = !DILocation(line: 258, column: 7, scope: !4727)
!4747 = !DILocation(line: 258, column: 5, scope: !4727)
!4748 = !DILocation(line: 259, column: 2, scope: !4722)
!4749 = distinct !{!4749, !4732, !4748, !4129, !4130}
!4750 = !DILocation(line: 260, column: 9, scope: !4722)
!4751 = !DILocation(line: 260, column: 2, scope: !4722)
!4752 = distinct !DISubprogram(name: "uid_eq", scope: !225, file: !225, line: 61, type: !4753, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4755)
!4753 = !DISubroutineType(types: !4754)
!4754 = !{!342, !224, !224}
!4755 = !{!4756, !4757}
!4756 = !DILocalVariable(name: "left", arg: 1, scope: !4752, file: !225, line: 61, type: !224)
!4757 = !DILocalVariable(name: "right", arg: 2, scope: !4752, file: !225, line: 61, type: !224)
!4758 = !DILocation(line: 61, column: 34, scope: !4752)
!4759 = !DILocation(line: 61, column: 47, scope: !4752)
!4760 = !DILocation(line: 63, column: 9, scope: !4752)
!4761 = !DILocation(line: 63, column: 29, scope: !4752)
!4762 = !DILocation(line: 63, column: 26, scope: !4752)
!4763 = !DILocation(line: 63, column: 2, scope: !4752)
