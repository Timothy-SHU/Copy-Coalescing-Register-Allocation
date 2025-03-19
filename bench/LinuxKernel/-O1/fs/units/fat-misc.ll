; ModuleID = 'fs/fat/misc.c'
source_filename = "fs/fat/misc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___fat_fs_error: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad __fat_fs_error ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_fat_time_fat2unix: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad fat_time_fat2unix ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_fat_time_unix2fat: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad fat_time_unix2fat ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_fat_truncate_time: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad fat_truncate_time ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_fat_update_time: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad fat_update_time ; .previous"

%struct.timezone = type { i32, i32 }
%struct.static_call_key = type { ptr, %union.anon.19 }
%union.anon.19 = type { i64 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.va_format = type { ptr, ptr }
%struct.msdos_sb_info = type { i16, i16, i32, i8, i8, i16, i64, i64, i16, i64, i64, i64, i64, %struct.mutex, %struct.mutex, %struct.mutex, i32, i32, i32, %struct.fat_mount_options, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %struct.ratelimit_state, %struct.spinlock, [256 x %struct.hlist_head], %struct.spinlock, [256 x %struct.hlist_head], i32, %struct.callback_head }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fat_mount_options = type { %struct.kuid_t, %struct.kgid_t, i16, i16, i16, i32, ptr, i16, i8, i8, i8, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.hlist_head = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_bl_head = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i64, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i16, i16, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i64, i32, i32, %struct.list_head, ptr }
%struct.list_lru = type { ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.buffer_head = type { i64, ptr, %union.anon.13, i64, i64, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%union.anon.13 = type { ptr }
%struct.fat_boot_fsinfo = type { i32, [120 x i32], i32, i32, i32, [4 x i32] }
%struct.fat_entry = type { i32, %union.anon.18, i32, [2 x ptr], ptr }
%union.anon.18 = type { [2 x ptr] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.14, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.15, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.16, ptr, %struct.address_space, %struct.list_head, %union.anon.17, i32, i32, ptr, ptr }
%union.anon.14 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.15 = type { %struct.callback_head }
%union.anon.16 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.17 = type { ptr }
%struct.msdos_inode_info = type { %struct.spinlock, %struct.list_head, i32, i32, i64, i32, i32, i32, i64, %struct.hlist_node, %struct.hlist_node, %struct.rw_semaphore, %struct.timespec64, %struct.inode }
%struct.tm = type { i32, i32, i32, i32, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"\013\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [11 x i8] c"error, %pV\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [43 x i8] c"FAT-fs (%s): fs panic from previous error\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [34 x i8] c"Filesystem has been set read-only\00", align 1, !dbg !17
@__UNIQUE_ID___addressable___fat_fs_error320 = internal global ptr @__fat_fs_error, section ".discard.addressable", align 8, !dbg !22
@.str.4 = private unnamed_addr constant [20 x i8] c"%sFAT-fs (%s): %pV\0A\00", align 1, !dbg !4580
@.str.5 = private unnamed_addr constant [35 x i8] c"bread failed in fat_clusters_flush\00", align 1, !dbg !4583
@.str.6 = private unnamed_addr constant [56 x i8] c"Invalid FSINFO signature: 0x%08x, 0x%08x (sector = %lu)\00", align 1, !dbg !4588
@.str.7 = private unnamed_addr constant [37 x i8] c"clusters badly computed (%d != %llu)\00", align 1, !dbg !4590
@days_in_year = internal global [16 x i64] [i64 0, i64 0, i64 31, i64 59, i64 90, i64 120, i64 151, i64 181, i64 212, i64 243, i64 273, i64 304, i64 334, i64 0, i64 0, i64 0], align 16, !dbg !4603
@__UNIQUE_ID___addressable_fat_time_fat2unix325 = internal global ptr @fat_time_fat2unix, section ".discard.addressable", align 8, !dbg !4595
@__UNIQUE_ID___addressable_fat_time_unix2fat326 = internal global ptr @fat_time_unix2fat, section ".discard.addressable", align 8, !dbg !4597
@__UNIQUE_ID___addressable_fat_truncate_time327 = internal global ptr @fat_truncate_time, section ".discard.addressable", align 8, !dbg !4599
@__UNIQUE_ID___addressable_fat_update_time328 = internal global ptr @fat_update_time, section ".discard.addressable", align 8, !dbg !4601
@sys_tz = external dso_local global %struct.timezone, align 4
@might_resched.__UNIQUE_ID___addressable___SCK__might_resched29 = internal global ptr @__SCK__might_resched, section ".discard.addressable", align 8, !dbg !4606
@__SCK__might_resched = external dso_local global %struct.static_call_key, align 8
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID___addressable___fat_fs_error320, ptr @__UNIQUE_ID___addressable_fat_time_fat2unix325, ptr @__UNIQUE_ID___addressable_fat_time_unix2fat326, ptr @__UNIQUE_ID___addressable_fat_truncate_time327, ptr @__UNIQUE_ID___addressable_fat_update_time328, ptr @might_resched.__UNIQUE_ID___addressable___SCK__might_resched29], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @__fat_fs_error(ptr noundef %sb, i32 noundef %report, ptr noundef %fmt, ...) #0 align 16 !dbg !4619 {
entry:
  %sb.addr = alloca ptr, align 8
  %report.addr = alloca i32, align 4
  %fmt.addr = alloca ptr, align 8
  %opts = alloca ptr, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %vaf = alloca %struct.va_format, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !4623, metadata !DIExpression()), !dbg !4675
  store i32 %report, ptr %report.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %report.addr, metadata !4624, metadata !DIExpression()), !dbg !4676
  store ptr %fmt, ptr %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !4625, metadata !DIExpression()), !dbg !4677
  call void @llvm.lifetime.start.p0(i64 8, ptr %opts) #13, !dbg !4678
  call void @llvm.dbg.declare(metadata ptr %opts, metadata !4626, metadata !DIExpression()), !dbg !4679
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !4680
  %call = call ptr @MSDOS_SB(ptr noundef %0) #14, !dbg !4681
  %options = getelementptr inbounds %struct.msdos_sb_info, ptr %call, i32 0, i32 19, !dbg !4682
  store ptr %options, ptr %opts, align 8, !dbg !4679
  call void @llvm.lifetime.start.p0(i64 24, ptr %args) #13, !dbg !4683
  call void @llvm.dbg.declare(metadata ptr %args, metadata !4657, metadata !DIExpression()), !dbg !4684
  call void @llvm.lifetime.start.p0(i64 16, ptr %vaf) #13, !dbg !4685
  call void @llvm.dbg.declare(metadata ptr %vaf, metadata !4668, metadata !DIExpression()), !dbg !4686
  %1 = load i32, ptr %report.addr, align 4, !dbg !4687
  %tobool = icmp ne i32 %1, 0, !dbg !4687
  br i1 %tobool, label %if.then, label %if.end, !dbg !4689

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !4690
  call void @llvm.va_start(ptr %arraydecay), !dbg !4690
  %2 = load ptr, ptr %fmt.addr, align 8, !dbg !4692
  %fmt1 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 0, !dbg !4693
  store ptr %2, ptr %fmt1, align 8, !dbg !4694
  %va = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1, !dbg !4695
  store ptr %args, ptr %va, align 8, !dbg !4696
  br label %do.body, !dbg !4697

do.body:                                          ; preds = %if.then
  br label %do.body2, !dbg !4698

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !4700

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !4700

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %sb.addr, align 8, !dbg !4698
  call void (ptr, ptr, ptr, ...) @_fat_msg(ptr noundef %3, ptr noundef @.str, ptr noundef @.str.1, ptr noundef %vaf) #15, !dbg !4698
  br label %do.cond3, !dbg !4698

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !4698

do.end4:                                          ; preds = %do.cond3
  %arraydecay5 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !4702
  call void @llvm.va_end(ptr %arraydecay5), !dbg !4702
  br label %if.end, !dbg !4703

if.end:                                           ; preds = %do.end4, %entry
  %4 = load ptr, ptr %opts, align 8, !dbg !4704
  %errors = getelementptr inbounds %struct.fat_mount_options, ptr %4, i32 0, i32 9, !dbg !4706
  %5 = load i8, ptr %errors, align 1, !dbg !4706
  %conv = zext i8 %5 to i32, !dbg !4704
  %cmp = icmp eq i32 %conv, 2, !dbg !4707
  br i1 %cmp, label %if.then7, label %if.else, !dbg !4708

if.then7:                                         ; preds = %if.end
  %6 = load ptr, ptr %sb.addr, align 8, !dbg !4709
  %s_id = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 35, !dbg !4710
  %arraydecay8 = getelementptr inbounds [32 x i8], ptr %s_id, i64 0, i64 0, !dbg !4709
  call void (ptr, ...) @panic(ptr noundef @.str.2, ptr noundef %arraydecay8) #16, !dbg !4711
  unreachable, !dbg !4711

if.else:                                          ; preds = %if.end
  %7 = load ptr, ptr %opts, align 8, !dbg !4712
  %errors9 = getelementptr inbounds %struct.fat_mount_options, ptr %7, i32 0, i32 9, !dbg !4714
  %8 = load i8, ptr %errors9, align 1, !dbg !4714
  %conv10 = zext i8 %8 to i32, !dbg !4712
  %cmp11 = icmp eq i32 %conv10, 3, !dbg !4715
  br i1 %cmp11, label %land.lhs.true, label %if.end21, !dbg !4716

land.lhs.true:                                    ; preds = %if.else
  %9 = load ptr, ptr %sb.addr, align 8, !dbg !4717
  %call13 = call zeroext i1 @sb_rdonly(ptr noundef %9) #14, !dbg !4718
  br i1 %call13, label %if.end21, label %if.then14, !dbg !4719

if.then14:                                        ; preds = %land.lhs.true
  %10 = load ptr, ptr %sb.addr, align 8, !dbg !4720
  %s_flags = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 10, !dbg !4722
  %11 = load i64, ptr %s_flags, align 16, !dbg !4723
  %or = or i64 %11, 1, !dbg !4723
  store i64 %or, ptr %s_flags, align 16, !dbg !4723
  br label %do.body15, !dbg !4724

do.body15:                                        ; preds = %if.then14
  br label %do.body16, !dbg !4725

do.body16:                                        ; preds = %do.body15
  br label %do.cond17, !dbg !4727

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !4727

do.end18:                                         ; preds = %do.cond17
  %12 = load ptr, ptr %sb.addr, align 8, !dbg !4725
  call void (ptr, ptr, ptr, ...) @_fat_msg(ptr noundef %12, ptr noundef @.str, ptr noundef @.str.3) #15, !dbg !4725
  br label %do.cond19, !dbg !4725

do.cond19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !4725

do.end20:                                         ; preds = %do.cond19
  br label %if.end21, !dbg !4729

if.end21:                                         ; preds = %do.end20, %land.lhs.true, %if.else
  br label %if.end22

if.end22:                                         ; preds = %if.end21
  call void @llvm.lifetime.end.p0(i64 16, ptr %vaf) #13, !dbg !4730
  call void @llvm.lifetime.end.p0(i64 24, ptr %args) #13, !dbg !4730
  call void @llvm.lifetime.end.p0(i64 8, ptr %opts) #13, !dbg !4730
  ret void, !dbg !4730
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @MSDOS_SB(ptr noundef %sb) #3 align 16 !dbg !4731 {
entry:
  %sb.addr = alloca ptr, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !4801, metadata !DIExpression()), !dbg !4802
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !4803
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 29, !dbg !4804
  %1 = load ptr, ptr %s_fs_info, align 32, !dbg !4804
  ret ptr %1, !dbg !4805
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @_fat_msg(ptr noundef %sb, ptr noundef %level, ptr noundef %fmt, ...) #0 align 16 !dbg !4806 {
entry:
  %sb.addr = alloca ptr, align 8
  %level.addr = alloca ptr, align 8
  %fmt.addr = alloca ptr, align 8
  %vaf = alloca %struct.va_format, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !4810, metadata !DIExpression()), !dbg !4815
  store ptr %level, ptr %level.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %level.addr, metadata !4811, metadata !DIExpression()), !dbg !4816
  store ptr %fmt, ptr %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !4812, metadata !DIExpression()), !dbg !4817
  call void @llvm.lifetime.start.p0(i64 16, ptr %vaf) #13, !dbg !4818
  call void @llvm.dbg.declare(metadata ptr %vaf, metadata !4813, metadata !DIExpression()), !dbg !4819
  call void @llvm.lifetime.start.p0(i64 24, ptr %args) #13, !dbg !4820
  call void @llvm.dbg.declare(metadata ptr %args, metadata !4814, metadata !DIExpression()), !dbg !4821
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !4822
  call void @llvm.va_start(ptr %arraydecay), !dbg !4822
  %0 = load ptr, ptr %fmt.addr, align 8, !dbg !4823
  %fmt1 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 0, !dbg !4824
  store ptr %0, ptr %fmt1, align 8, !dbg !4825
  %va = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1, !dbg !4826
  store ptr %args, ptr %va, align 8, !dbg !4827
  %1 = load ptr, ptr %level.addr, align 8, !dbg !4828
  %2 = load ptr, ptr %sb.addr, align 8, !dbg !4829
  %s_id = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 35, !dbg !4830
  %arraydecay2 = getelementptr inbounds [32 x i8], ptr %s_id, i64 0, i64 0, !dbg !4829
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.4, ptr noundef %1, ptr noundef %arraydecay2, ptr noundef %vaf) #15, !dbg !4831
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !4832
  call void @llvm.va_end(ptr %arraydecay3), !dbg !4832
  call void @llvm.lifetime.end.p0(i64 24, ptr %args) #13, !dbg !4833
  call void @llvm.lifetime.end.p0(i64 16, ptr %vaf) #13, !dbg !4833
  ret void, !dbg !4833
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #4

; Function Attrs: cold noredzone noreturn null_pointer_is_valid
declare !dbg !4834 dso_local void @panic(ptr noundef, ...) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @sb_rdonly(ptr noundef %sb) #3 align 16 !dbg !4838 {
entry:
  %sb.addr = alloca ptr, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !4844, metadata !DIExpression()), !dbg !4845
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !4846
  %s_flags = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 10, !dbg !4847
  %1 = load i64, ptr %s_flags, align 16, !dbg !4847
  %and = and i64 %1, 1, !dbg !4848
  %tobool = icmp ne i64 %and, 0, !dbg !4846
  ret i1 %tobool, !dbg !4849
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !4850 dso_local i32 @_printk(ptr noundef, ...) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @fat_clusters_flush(ptr noundef %sb) #7 align 16 !dbg !4853 {
entry:
  %retval = alloca i32, align 4
  %sb.addr = alloca ptr, align 8
  %sbi = alloca ptr, align 8
  %bh = alloca ptr, align 8
  %fsinfo = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !4855, metadata !DIExpression()), !dbg !4883
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbi) #13, !dbg !4884
  call void @llvm.dbg.declare(metadata ptr %sbi, metadata !4856, metadata !DIExpression()), !dbg !4885
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !4886
  %call = call ptr @MSDOS_SB(ptr noundef %0) #14, !dbg !4887
  store ptr %call, ptr %sbi, align 8, !dbg !4885
  call void @llvm.lifetime.start.p0(i64 8, ptr %bh) #13, !dbg !4888
  call void @llvm.dbg.declare(metadata ptr %bh, metadata !4857, metadata !DIExpression()), !dbg !4889
  call void @llvm.lifetime.start.p0(i64 8, ptr %fsinfo) #13, !dbg !4890
  call void @llvm.dbg.declare(metadata ptr %fsinfo, metadata !4882, metadata !DIExpression()), !dbg !4891
  %1 = load ptr, ptr %sbi, align 8, !dbg !4892
  %call1 = call zeroext i1 @is_fat32(ptr noundef %1) #14, !dbg !4894
  br i1 %call1, label %if.end, label %if.then, !dbg !4895

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4896
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4896

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %sb.addr, align 8, !dbg !4897
  %3 = load ptr, ptr %sbi, align 8, !dbg !4898
  %fsinfo_sector = getelementptr inbounds %struct.msdos_sb_info, ptr %3, i32 0, i32 12, !dbg !4899
  %4 = load i64, ptr %fsinfo_sector, align 8, !dbg !4899
  %call2 = call ptr @sb_bread(ptr noundef %2, i64 noundef %4) #14, !dbg !4900
  store ptr %call2, ptr %bh, align 8, !dbg !4901
  %5 = load ptr, ptr %bh, align 8, !dbg !4902
  %cmp = icmp eq ptr %5, null, !dbg !4904
  br i1 %cmp, label %if.then3, label %if.end7, !dbg !4905

if.then3:                                         ; preds = %if.end
  br label %do.body, !dbg !4906

do.body:                                          ; preds = %if.then3
  br label %do.body4, !dbg !4908

do.body4:                                         ; preds = %do.body
  br label %do.cond, !dbg !4910

do.cond:                                          ; preds = %do.body4
  br label %do.end, !dbg !4910

do.end:                                           ; preds = %do.cond
  %6 = load ptr, ptr %sb.addr, align 8, !dbg !4908
  call void (ptr, ptr, ptr, ...) @_fat_msg(ptr noundef %6, ptr noundef @.str, ptr noundef @.str.5) #15, !dbg !4908
  br label %do.cond5, !dbg !4908

do.cond5:                                         ; preds = %do.end
  br label %do.end6, !dbg !4908

do.end6:                                          ; preds = %do.cond5
  store i32 -5, ptr %retval, align 4, !dbg !4912
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4912

if.end7:                                          ; preds = %if.end
  %7 = load ptr, ptr %bh, align 8, !dbg !4913
  %b_data = getelementptr inbounds %struct.buffer_head, ptr %7, i32 0, i32 5, !dbg !4914
  %8 = load ptr, ptr %b_data, align 8, !dbg !4914
  store ptr %8, ptr %fsinfo, align 8, !dbg !4915
  %9 = load ptr, ptr %fsinfo, align 8, !dbg !4916
  %signature1 = getelementptr inbounds %struct.fat_boot_fsinfo, ptr %9, i32 0, i32 0, !dbg !4916
  %10 = load i32, ptr %signature1, align 4, !dbg !4916
  %cmp8 = icmp eq i32 %10, 1096897106, !dbg !4916
  br i1 %cmp8, label %land.lhs.true, label %if.then10, !dbg !4916

land.lhs.true:                                    ; preds = %if.end7
  %11 = load ptr, ptr %fsinfo, align 8, !dbg !4916
  %signature2 = getelementptr inbounds %struct.fat_boot_fsinfo, ptr %11, i32 0, i32 2, !dbg !4916
  %12 = load i32, ptr %signature2, align 4, !dbg !4916
  %cmp9 = icmp eq i32 %12, 1631679090, !dbg !4916
  br i1 %cmp9, label %if.else, label %if.then10, !dbg !4918

if.then10:                                        ; preds = %land.lhs.true, %if.end7
  br label %do.body11, !dbg !4919

do.body11:                                        ; preds = %if.then10
  br label %do.body12, !dbg !4921

do.body12:                                        ; preds = %do.body11
  br label %do.cond13, !dbg !4923

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !4923

do.end14:                                         ; preds = %do.cond13
  %13 = load ptr, ptr %sb.addr, align 8, !dbg !4921
  %14 = load ptr, ptr %fsinfo, align 8, !dbg !4921
  %signature115 = getelementptr inbounds %struct.fat_boot_fsinfo, ptr %14, i32 0, i32 0, !dbg !4921
  %15 = load i32, ptr %signature115, align 4, !dbg !4921
  %16 = load ptr, ptr %fsinfo, align 8, !dbg !4921
  %signature216 = getelementptr inbounds %struct.fat_boot_fsinfo, ptr %16, i32 0, i32 2, !dbg !4921
  %17 = load i32, ptr %signature216, align 4, !dbg !4921
  %18 = load ptr, ptr %sbi, align 8, !dbg !4921
  %fsinfo_sector17 = getelementptr inbounds %struct.msdos_sb_info, ptr %18, i32 0, i32 12, !dbg !4921
  %19 = load i64, ptr %fsinfo_sector17, align 8, !dbg !4921
  call void (ptr, ptr, ptr, ...) @_fat_msg(ptr noundef %13, ptr noundef @.str, ptr noundef @.str.6, i32 noundef %15, i32 noundef %17, i64 noundef %19) #15, !dbg !4921
  br label %do.cond18, !dbg !4921

do.cond18:                                        ; preds = %do.end14
  br label %do.end19, !dbg !4921

do.end19:                                         ; preds = %do.cond18
  br label %if.end29, !dbg !4925

if.else:                                          ; preds = %land.lhs.true
  %20 = load ptr, ptr %sbi, align 8, !dbg !4926
  %free_clusters = getelementptr inbounds %struct.msdos_sb_info, ptr %20, i32 0, i32 17, !dbg !4929
  %21 = load i32, ptr %free_clusters, align 4, !dbg !4929
  %cmp20 = icmp ne i32 %21, -1, !dbg !4930
  br i1 %cmp20, label %if.then21, label %if.end24, !dbg !4931

if.then21:                                        ; preds = %if.else
  %22 = load ptr, ptr %sbi, align 8, !dbg !4932
  %free_clusters22 = getelementptr inbounds %struct.msdos_sb_info, ptr %22, i32 0, i32 17, !dbg !4932
  %23 = load i32, ptr %free_clusters22, align 4, !dbg !4932
  %24 = load ptr, ptr %fsinfo, align 8, !dbg !4933
  %free_clusters23 = getelementptr inbounds %struct.fat_boot_fsinfo, ptr %24, i32 0, i32 3, !dbg !4934
  store i32 %23, ptr %free_clusters23, align 4, !dbg !4935
  br label %if.end24, !dbg !4933

if.end24:                                         ; preds = %if.then21, %if.else
  %25 = load ptr, ptr %sbi, align 8, !dbg !4936
  %prev_free = getelementptr inbounds %struct.msdos_sb_info, ptr %25, i32 0, i32 16, !dbg !4938
  %26 = load i32, ptr %prev_free, align 8, !dbg !4938
  %cmp25 = icmp ne i32 %26, -1, !dbg !4939
  br i1 %cmp25, label %if.then26, label %if.end28, !dbg !4940

if.then26:                                        ; preds = %if.end24
  %27 = load ptr, ptr %sbi, align 8, !dbg !4941
  %prev_free27 = getelementptr inbounds %struct.msdos_sb_info, ptr %27, i32 0, i32 16, !dbg !4941
  %28 = load i32, ptr %prev_free27, align 8, !dbg !4941
  %29 = load ptr, ptr %fsinfo, align 8, !dbg !4942
  %next_cluster = getelementptr inbounds %struct.fat_boot_fsinfo, ptr %29, i32 0, i32 4, !dbg !4943
  store i32 %28, ptr %next_cluster, align 4, !dbg !4944
  br label %if.end28, !dbg !4942

if.end28:                                         ; preds = %if.then26, %if.end24
  %30 = load ptr, ptr %bh, align 8, !dbg !4945
  call void @mark_buffer_dirty(ptr noundef %30) #14, !dbg !4946
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %do.end19
  %31 = load ptr, ptr %bh, align 8, !dbg !4947
  call void @brelse(ptr noundef %31) #14, !dbg !4948
  store i32 0, ptr %retval, align 4, !dbg !4949
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4949

cleanup:                                          ; preds = %if.end29, %do.end6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %fsinfo) #13, !dbg !4950
  call void @llvm.lifetime.end.p0(i64 8, ptr %bh) #13, !dbg !4950
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbi) #13, !dbg !4950
  %32 = load i32, ptr %retval, align 4, !dbg !4950
  ret i32 %32, !dbg !4950
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_fat32(ptr noundef %sbi) #3 align 16 !dbg !4951 {
entry:
  %sbi.addr = alloca ptr, align 8
  store ptr %sbi, ptr %sbi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbi.addr, metadata !4957, metadata !DIExpression()), !dbg !4958
  %0 = load ptr, ptr %sbi.addr, align 8, !dbg !4959
  %fat_bits = getelementptr inbounds %struct.msdos_sb_info, ptr %0, i32 0, i32 4, !dbg !4960
  %1 = load i8, ptr %fat_bits, align 1, !dbg !4960
  %conv = zext i8 %1 to i32, !dbg !4959
  %cmp = icmp eq i32 %conv, 32, !dbg !4961
  ret i1 %cmp, !dbg !4962
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @sb_bread(ptr noundef %sb, i64 noundef %block) #3 align 16 !dbg !4963 {
entry:
  %sb.addr = alloca ptr, align 8
  %block.addr = alloca i64, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !4967, metadata !DIExpression()), !dbg !4969
  store i64 %block, ptr %block.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %block.addr, metadata !4968, metadata !DIExpression()), !dbg !4970
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !4971
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 21, !dbg !4972
  %1 = load ptr, ptr %s_bdev, align 8, !dbg !4972
  %2 = load i64, ptr %block.addr, align 8, !dbg !4973
  %3 = load ptr, ptr %sb.addr, align 8, !dbg !4974
  %s_blocksize = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 3, !dbg !4975
  %4 = load i64, ptr %s_blocksize, align 8, !dbg !4975
  %conv = trunc i64 %4 to i32, !dbg !4974
  %call = call ptr @__bread_gfp(ptr noundef %1, i64 noundef %2, i32 noundef %conv, i32 noundef 8) #14, !dbg !4976
  ret ptr %call, !dbg !4977
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4978 dso_local void @mark_buffer_dirty(ptr noundef) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @brelse(ptr noundef %bh) #3 align 16 !dbg !4981 {
entry:
  %bh.addr = alloca ptr, align 8
  store ptr %bh, ptr %bh.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bh.addr, metadata !4983, metadata !DIExpression()), !dbg !4984
  %0 = load ptr, ptr %bh.addr, align 8, !dbg !4985
  %tobool = icmp ne ptr %0, null, !dbg !4985
  br i1 %tobool, label %if.then, label %if.end, !dbg !4987

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %bh.addr, align 8, !dbg !4988
  call void @__brelse(ptr noundef %1) #14, !dbg !4989
  br label %if.end, !dbg !4989

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4990
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @fat_chain_add(ptr noundef %inode, i32 noundef %new_dclus, i32 noundef %nr_cluster) #7 align 16 !dbg !4991 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca ptr, align 8
  %new_dclus.addr = alloca i32, align 4
  %nr_cluster.addr = alloca i32, align 4
  %sb = alloca ptr, align 8
  %sbi = alloca ptr, align 8
  %ret = alloca i32, align 4
  %new_fclus = alloca i32, align 4
  %last = alloca i32, align 4
  %fclus = alloca i32, align 4
  %dclus = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %fatent = alloca %struct.fat_entry, align 8
  %wait = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !4995, metadata !DIExpression()), !dbg !5030
  store i32 %new_dclus, ptr %new_dclus.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new_dclus.addr, metadata !4996, metadata !DIExpression()), !dbg !5031
  store i32 %nr_cluster, ptr %nr_cluster.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr_cluster.addr, metadata !4997, metadata !DIExpression()), !dbg !5032
  call void @llvm.lifetime.start.p0(i64 8, ptr %sb) #13, !dbg !5033
  call void @llvm.dbg.declare(metadata ptr %sb, metadata !4998, metadata !DIExpression()), !dbg !5034
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5035
  %i_sb = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9, !dbg !5036
  %1 = load ptr, ptr %i_sb, align 8, !dbg !5036
  store ptr %1, ptr %sb, align 8, !dbg !5034
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbi) #13, !dbg !5037
  call void @llvm.dbg.declare(metadata ptr %sbi, metadata !4999, metadata !DIExpression()), !dbg !5038
  %2 = load ptr, ptr %sb, align 8, !dbg !5039
  %call = call ptr @MSDOS_SB(ptr noundef %2) #14, !dbg !5040
  store ptr %call, ptr %sbi, align 8, !dbg !5038
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !5041
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5000, metadata !DIExpression()), !dbg !5042
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_fclus) #13, !dbg !5041
  call void @llvm.dbg.declare(metadata ptr %new_fclus, metadata !5001, metadata !DIExpression()), !dbg !5043
  call void @llvm.lifetime.start.p0(i64 4, ptr %last) #13, !dbg !5041
  call void @llvm.dbg.declare(metadata ptr %last, metadata !5002, metadata !DIExpression()), !dbg !5044
  store i32 0, ptr %new_fclus, align 4, !dbg !5045
  store i32 0, ptr %last, align 4, !dbg !5046
  %3 = load ptr, ptr %inode.addr, align 8, !dbg !5047
  %call1 = call ptr @MSDOS_I(ptr noundef %3) #14, !dbg !5048
  %i_start = getelementptr inbounds %struct.msdos_inode_info, ptr %call1, i32 0, i32 5, !dbg !5049
  %4 = load i32, ptr %i_start, align 8, !dbg !5049
  %tobool = icmp ne i32 %4, 0, !dbg !5048
  br i1 %tobool, label %if.then, label %if.end5, !dbg !5050

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %fclus) #13, !dbg !5051
  call void @llvm.dbg.declare(metadata ptr %fclus, metadata !5003, metadata !DIExpression()), !dbg !5052
  call void @llvm.lifetime.start.p0(i64 4, ptr %dclus) #13, !dbg !5051
  call void @llvm.dbg.declare(metadata ptr %dclus, metadata !5006, metadata !DIExpression()), !dbg !5053
  %5 = load ptr, ptr %inode.addr, align 8, !dbg !5054
  %call2 = call i32 @fat_get_cluster(ptr noundef %5, i32 noundef 268435455, ptr noundef %fclus, ptr noundef %dclus) #14, !dbg !5055
  store i32 %call2, ptr %ret, align 4, !dbg !5056
  %6 = load i32, ptr %ret, align 4, !dbg !5057
  %cmp = icmp slt i32 %6, 0, !dbg !5059
  br i1 %cmp, label %if.then3, label %if.end, !dbg !5060

if.then3:                                         ; preds = %if.then
  %7 = load i32, ptr %ret, align 4, !dbg !5061
  store i32 %7, ptr %retval, align 4, !dbg !5062
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5062

if.end:                                           ; preds = %if.then
  %8 = load i32, ptr %fclus, align 4, !dbg !5063
  %add = add i32 %8, 1, !dbg !5064
  store i32 %add, ptr %new_fclus, align 4, !dbg !5065
  %9 = load i32, ptr %dclus, align 4, !dbg !5066
  store i32 %9, ptr %last, align 4, !dbg !5067
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5068
  br label %cleanup, !dbg !5068

cleanup:                                          ; preds = %if.end, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %dclus) #13, !dbg !5068
  call void @llvm.lifetime.end.p0(i64 4, ptr %fclus) #13, !dbg !5068
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup56 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end5, !dbg !5069

if.end5:                                          ; preds = %cleanup.cont, %entry
  %10 = load i32, ptr %last, align 4, !dbg !5070
  %tobool6 = icmp ne i32 %10, 0, !dbg !5070
  br i1 %tobool6, label %if.then7, label %if.else, !dbg !5071

if.then7:                                         ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 56, ptr %fatent) #13, !dbg !5072
  call void @llvm.dbg.declare(metadata ptr %fatent, metadata !5007, metadata !DIExpression()), !dbg !5073
  call void @fatent_init(ptr noundef %fatent) #14, !dbg !5074
  %11 = load ptr, ptr %inode.addr, align 8, !dbg !5075
  %12 = load i32, ptr %last, align 4, !dbg !5076
  %call8 = call i32 @fat_ent_read(ptr noundef %11, ptr noundef %fatent, i32 noundef %12) #14, !dbg !5077
  store i32 %call8, ptr %ret, align 4, !dbg !5078
  %13 = load i32, ptr %ret, align 4, !dbg !5079
  %cmp9 = icmp sge i32 %13, 0, !dbg !5080
  br i1 %cmp9, label %if.then10, label %if.end13, !dbg !5081

if.then10:                                        ; preds = %if.then7
  call void @llvm.lifetime.start.p0(i64 4, ptr %wait) #13, !dbg !5082
  call void @llvm.dbg.declare(metadata ptr %wait, metadata !5027, metadata !DIExpression()), !dbg !5083
  %14 = load ptr, ptr %inode.addr, align 8, !dbg !5084
  %call11 = call i32 @inode_needs_sync(ptr noundef %14) #14, !dbg !5085
  store i32 %call11, ptr %wait, align 4, !dbg !5083
  %15 = load ptr, ptr %inode.addr, align 8, !dbg !5086
  %16 = load i32, ptr %new_dclus.addr, align 4, !dbg !5087
  %17 = load i32, ptr %wait, align 4, !dbg !5088
  %call12 = call i32 @fat_ent_write(ptr noundef %15, ptr noundef %fatent, i32 noundef %16, i32 noundef %17) #14, !dbg !5089
  store i32 %call12, ptr %ret, align 4, !dbg !5090
  call void @fatent_brelse(ptr noundef %fatent) #14, !dbg !5091
  call void @llvm.lifetime.end.p0(i64 4, ptr %wait) #13, !dbg !5092
  br label %if.end13, !dbg !5093

if.end13:                                         ; preds = %if.then10, %if.then7
  %18 = load i32, ptr %ret, align 4, !dbg !5094
  %cmp14 = icmp slt i32 %18, 0, !dbg !5096
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !5097

if.then15:                                        ; preds = %if.end13
  %19 = load i32, ptr %ret, align 4, !dbg !5098
  store i32 %19, ptr %retval, align 4, !dbg !5099
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup17, !dbg !5099

if.end16:                                         ; preds = %if.end13
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5100
  br label %cleanup17, !dbg !5100

cleanup17:                                        ; preds = %if.end16, %if.then15
  call void @llvm.lifetime.end.p0(i64 56, ptr %fatent) #13, !dbg !5100
  %cleanup.dest18 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest18, label %cleanup56 [
    i32 0, label %cleanup.cont19
  ]

cleanup.cont19:                                   ; preds = %cleanup17
  br label %if.end37, !dbg !5101

if.else:                                          ; preds = %if.end5
  %20 = load i32, ptr %new_dclus.addr, align 4, !dbg !5102
  %21 = load ptr, ptr %inode.addr, align 8, !dbg !5104
  %call20 = call ptr @MSDOS_I(ptr noundef %21) #14, !dbg !5105
  %i_start21 = getelementptr inbounds %struct.msdos_inode_info, ptr %call20, i32 0, i32 5, !dbg !5106
  store i32 %20, ptr %i_start21, align 8, !dbg !5107
  %22 = load i32, ptr %new_dclus.addr, align 4, !dbg !5108
  %23 = load ptr, ptr %inode.addr, align 8, !dbg !5109
  %call22 = call ptr @MSDOS_I(ptr noundef %23) #14, !dbg !5110
  %i_logstart = getelementptr inbounds %struct.msdos_inode_info, ptr %call22, i32 0, i32 6, !dbg !5111
  store i32 %22, ptr %i_logstart, align 4, !dbg !5112
  %24 = load ptr, ptr %inode.addr, align 8, !dbg !5113
  %i_mode = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 0, !dbg !5113
  %25 = load i16, ptr %i_mode, align 8, !dbg !5113
  %conv = zext i16 %25 to i32, !dbg !5113
  %and = and i32 %conv, 61440, !dbg !5113
  %cmp23 = icmp eq i32 %and, 16384, !dbg !5113
  br i1 %cmp23, label %land.lhs.true, label %if.else35, !dbg !5115

land.lhs.true:                                    ; preds = %if.else
  %26 = load ptr, ptr %inode.addr, align 8, !dbg !5116
  %i_sb25 = getelementptr inbounds %struct.inode, ptr %26, i32 0, i32 9, !dbg !5116
  %27 = load ptr, ptr %i_sb25, align 8, !dbg !5116
  %s_flags = getelementptr inbounds %struct.super_block, ptr %27, i32 0, i32 10, !dbg !5116
  %28 = load i64, ptr %s_flags, align 16, !dbg !5116
  %and26 = and i64 %28, 144, !dbg !5116
  %tobool27 = icmp ne i64 %and26, 0, !dbg !5116
  br i1 %tobool27, label %if.then30, label %lor.lhs.false, !dbg !5116

lor.lhs.false:                                    ; preds = %land.lhs.true
  %29 = load ptr, ptr %inode.addr, align 8, !dbg !5116
  %i_flags = getelementptr inbounds %struct.inode, ptr %29, i32 0, i32 5, !dbg !5116
  %30 = load i32, ptr %i_flags, align 4, !dbg !5116
  %and28 = and i32 %30, 65, !dbg !5116
  %tobool29 = icmp ne i32 %and28, 0, !dbg !5116
  br i1 %tobool29, label %if.then30, label %if.else35, !dbg !5117

if.then30:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %31 = load ptr, ptr %inode.addr, align 8, !dbg !5118
  %call31 = call i32 @fat_sync_inode(ptr noundef %31) #14, !dbg !5120
  store i32 %call31, ptr %ret, align 4, !dbg !5121
  %32 = load i32, ptr %ret, align 4, !dbg !5122
  %tobool32 = icmp ne i32 %32, 0, !dbg !5122
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !5124

if.then33:                                        ; preds = %if.then30
  %33 = load i32, ptr %ret, align 4, !dbg !5125
  store i32 %33, ptr %retval, align 4, !dbg !5126
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup56, !dbg !5126

if.end34:                                         ; preds = %if.then30
  br label %if.end36, !dbg !5127

if.else35:                                        ; preds = %lor.lhs.false, %if.else
  %34 = load ptr, ptr %inode.addr, align 8, !dbg !5128
  call void @mark_inode_dirty(ptr noundef %34) #14, !dbg !5129
  br label %if.end36

if.end36:                                         ; preds = %if.else35, %if.end34
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %cleanup.cont19
  %35 = load i32, ptr %new_fclus, align 4, !dbg !5130
  %conv38 = sext i32 %35 to i64, !dbg !5130
  %36 = load ptr, ptr %inode.addr, align 8, !dbg !5132
  %i_blocks = getelementptr inbounds %struct.inode, ptr %36, i32 0, i32 23, !dbg !5133
  %37 = load i64, ptr %i_blocks, align 8, !dbg !5133
  %38 = load ptr, ptr %sbi, align 8, !dbg !5134
  %cluster_bits = getelementptr inbounds %struct.msdos_sb_info, ptr %38, i32 0, i32 1, !dbg !5135
  %39 = load i16, ptr %cluster_bits, align 2, !dbg !5135
  %conv39 = zext i16 %39 to i32, !dbg !5134
  %sub = sub i32 %conv39, 9, !dbg !5136
  %sh_prom = zext i32 %sub to i64, !dbg !5137
  %shr = lshr i64 %37, %sh_prom, !dbg !5137
  %cmp40 = icmp ne i64 %conv38, %shr, !dbg !5138
  br i1 %cmp40, label %if.then42, label %if.end49, !dbg !5139

if.then42:                                        ; preds = %if.end37
  %40 = load ptr, ptr %sb, align 8, !dbg !5140
  %41 = load i32, ptr %new_fclus, align 4, !dbg !5140
  %42 = load ptr, ptr %inode.addr, align 8, !dbg !5140
  %i_blocks43 = getelementptr inbounds %struct.inode, ptr %42, i32 0, i32 23, !dbg !5140
  %43 = load i64, ptr %i_blocks43, align 8, !dbg !5140
  %44 = load ptr, ptr %sbi, align 8, !dbg !5140
  %cluster_bits44 = getelementptr inbounds %struct.msdos_sb_info, ptr %44, i32 0, i32 1, !dbg !5140
  %45 = load i16, ptr %cluster_bits44, align 2, !dbg !5140
  %conv45 = zext i16 %45 to i32, !dbg !5140
  %sub46 = sub i32 %conv45, 9, !dbg !5140
  %sh_prom47 = zext i32 %sub46 to i64, !dbg !5140
  %shr48 = lshr i64 %43, %sh_prom47, !dbg !5140
  call void (ptr, i32, ptr, ...) @__fat_fs_error(ptr noundef %40, i32 noundef 1, ptr noundef @.str.7, i32 noundef %41, i64 noundef %shr48) #15, !dbg !5140
  %46 = load ptr, ptr %inode.addr, align 8, !dbg !5142
  call void @fat_cache_inval_inode(ptr noundef %46) #14, !dbg !5143
  br label %if.end49, !dbg !5144

if.end49:                                         ; preds = %if.then42, %if.end37
  %47 = load i32, ptr %nr_cluster.addr, align 4, !dbg !5145
  %48 = load ptr, ptr %sbi, align 8, !dbg !5146
  %cluster_bits50 = getelementptr inbounds %struct.msdos_sb_info, ptr %48, i32 0, i32 1, !dbg !5147
  %49 = load i16, ptr %cluster_bits50, align 2, !dbg !5147
  %conv51 = zext i16 %49 to i32, !dbg !5146
  %sub52 = sub i32 %conv51, 9, !dbg !5148
  %shl = shl i32 %47, %sub52, !dbg !5149
  %conv53 = sext i32 %shl to i64, !dbg !5145
  %50 = load ptr, ptr %inode.addr, align 8, !dbg !5150
  %i_blocks54 = getelementptr inbounds %struct.inode, ptr %50, i32 0, i32 23, !dbg !5151
  %51 = load i64, ptr %i_blocks54, align 8, !dbg !5152
  %add55 = add i64 %51, %conv53, !dbg !5152
  store i64 %add55, ptr %i_blocks54, align 8, !dbg !5152
  store i32 0, ptr %retval, align 4, !dbg !5153
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup56, !dbg !5153

cleanup56:                                        ; preds = %if.end49, %if.then33, %cleanup17, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %last) #13, !dbg !5154
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_fclus) #13, !dbg !5154
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !5154
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbi) #13, !dbg !5154
  call void @llvm.lifetime.end.p0(i64 8, ptr %sb) #13, !dbg !5154
  %52 = load i32, ptr %retval, align 4, !dbg !5154
  ret i32 %52, !dbg !5154
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @MSDOS_I(ptr noundef %inode) #3 align 16 !dbg !5155 {
entry:
  %inode.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5159, metadata !DIExpression()), !dbg !5162
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !5163
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5160, metadata !DIExpression()), !dbg !5163
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5163
  store ptr %0, ptr %__mptr, align 8, !dbg !5163
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5163
  %add.ptr = getelementptr i8, ptr %1, i64 -152, !dbg !5163
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5163
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !5164
  %2 = load ptr, ptr %tmp, align 8, !dbg !5163
  ret ptr %2, !dbg !5165
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5166 dso_local i32 @fat_get_cluster(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fatent_init(ptr noundef %fatent) #3 align 16 !dbg !5169 {
entry:
  %fatent.addr = alloca ptr, align 8
  store ptr %fatent, ptr %fatent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fatent.addr, metadata !5174, metadata !DIExpression()), !dbg !5175
  %0 = load ptr, ptr %fatent.addr, align 8, !dbg !5176
  %nr_bhs = getelementptr inbounds %struct.fat_entry, ptr %0, i32 0, i32 2, !dbg !5177
  store i32 0, ptr %nr_bhs, align 8, !dbg !5178
  %1 = load ptr, ptr %fatent.addr, align 8, !dbg !5179
  %entry1 = getelementptr inbounds %struct.fat_entry, ptr %1, i32 0, i32 0, !dbg !5180
  store i32 0, ptr %entry1, align 8, !dbg !5181
  %2 = load ptr, ptr %fatent.addr, align 8, !dbg !5182
  %u = getelementptr inbounds %struct.fat_entry, ptr %2, i32 0, i32 1, !dbg !5183
  store ptr null, ptr %u, align 8, !dbg !5184
  %3 = load ptr, ptr %fatent.addr, align 8, !dbg !5185
  %bhs = getelementptr inbounds %struct.fat_entry, ptr %3, i32 0, i32 3, !dbg !5186
  %arrayidx = getelementptr [2 x ptr], ptr %bhs, i64 0, i64 1, !dbg !5185
  store ptr null, ptr %arrayidx, align 8, !dbg !5187
  %4 = load ptr, ptr %fatent.addr, align 8, !dbg !5188
  %bhs2 = getelementptr inbounds %struct.fat_entry, ptr %4, i32 0, i32 3, !dbg !5189
  %arrayidx3 = getelementptr [2 x ptr], ptr %bhs2, i64 0, i64 0, !dbg !5188
  store ptr null, ptr %arrayidx3, align 8, !dbg !5190
  %5 = load ptr, ptr %fatent.addr, align 8, !dbg !5191
  %fat_inode = getelementptr inbounds %struct.fat_entry, ptr %5, i32 0, i32 4, !dbg !5192
  store ptr null, ptr %fat_inode, align 8, !dbg !5193
  ret void, !dbg !5194
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5195 dso_local i32 @fat_ent_read(ptr noundef, ptr noundef, i32 noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5198 dso_local i32 @inode_needs_sync(ptr noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5199 dso_local i32 @fat_ent_write(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fatent_brelse(ptr noundef %fatent) #3 align 16 !dbg !5202 {
entry:
  %fatent.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %fatent, ptr %fatent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fatent.addr, metadata !5204, metadata !DIExpression()), !dbg !5206
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !5207
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5205, metadata !DIExpression()), !dbg !5208
  %0 = load ptr, ptr %fatent.addr, align 8, !dbg !5209
  %u = getelementptr inbounds %struct.fat_entry, ptr %0, i32 0, i32 1, !dbg !5210
  store ptr null, ptr %u, align 8, !dbg !5211
  store i32 0, ptr %i, align 4, !dbg !5212
  br label %for.cond, !dbg !5214

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !dbg !5215
  %2 = load ptr, ptr %fatent.addr, align 8, !dbg !5217
  %nr_bhs = getelementptr inbounds %struct.fat_entry, ptr %2, i32 0, i32 2, !dbg !5218
  %3 = load i32, ptr %nr_bhs, align 8, !dbg !5218
  %cmp = icmp slt i32 %1, %3, !dbg !5219
  br i1 %cmp, label %for.body, label %for.end, !dbg !5220

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %fatent.addr, align 8, !dbg !5221
  %bhs = getelementptr inbounds %struct.fat_entry, ptr %4, i32 0, i32 3, !dbg !5222
  %5 = load i32, ptr %i, align 4, !dbg !5223
  %idxprom = sext i32 %5 to i64, !dbg !5221
  %arrayidx = getelementptr [2 x ptr], ptr %bhs, i64 0, i64 %idxprom, !dbg !5221
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !5221
  call void @brelse(ptr noundef %6) #14, !dbg !5224
  br label %for.inc, !dbg !5224

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4, !dbg !5225
  %inc = add i32 %7, 1, !dbg !5225
  store i32 %inc, ptr %i, align 4, !dbg !5225
  br label %for.cond, !dbg !5226, !llvm.loop !5227

for.end:                                          ; preds = %for.cond
  %8 = load ptr, ptr %fatent.addr, align 8, !dbg !5231
  %nr_bhs1 = getelementptr inbounds %struct.fat_entry, ptr %8, i32 0, i32 2, !dbg !5232
  store i32 0, ptr %nr_bhs1, align 8, !dbg !5233
  %9 = load ptr, ptr %fatent.addr, align 8, !dbg !5234
  %bhs2 = getelementptr inbounds %struct.fat_entry, ptr %9, i32 0, i32 3, !dbg !5235
  %arrayidx3 = getelementptr [2 x ptr], ptr %bhs2, i64 0, i64 1, !dbg !5234
  store ptr null, ptr %arrayidx3, align 8, !dbg !5236
  %10 = load ptr, ptr %fatent.addr, align 8, !dbg !5237
  %bhs4 = getelementptr inbounds %struct.fat_entry, ptr %10, i32 0, i32 3, !dbg !5238
  %arrayidx5 = getelementptr [2 x ptr], ptr %bhs4, i64 0, i64 0, !dbg !5237
  store ptr null, ptr %arrayidx5, align 8, !dbg !5239
  %11 = load ptr, ptr %fatent.addr, align 8, !dbg !5240
  %fat_inode = getelementptr inbounds %struct.fat_entry, ptr %11, i32 0, i32 4, !dbg !5241
  store ptr null, ptr %fat_inode, align 8, !dbg !5242
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !5243
  ret void, !dbg !5243
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5244 dso_local i32 @fat_sync_inode(ptr noundef) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mark_inode_dirty(ptr noundef %inode) #3 align 16 !dbg !5245 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5247, metadata !DIExpression()), !dbg !5248
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5249
  call void @__mark_inode_dirty(ptr noundef %0, i32 noundef 7) #14, !dbg !5250
  ret void, !dbg !5251
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5252 dso_local void @fat_cache_inval_inode(ptr noundef) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @fat_time_fat2unix(ptr noundef %sbi, ptr noundef %ts, i16 noundef zeroext %__time, i16 noundef zeroext %__date, i8 noundef zeroext %time_cs) #7 align 16 !dbg !5253 {
entry:
  %sbi.addr = alloca ptr, align 8
  %ts.addr = alloca ptr, align 8
  %__time.addr = alloca i16, align 2
  %__date.addr = alloca i16, align 2
  %time_cs.addr = alloca i8, align 1
  %time = alloca i16, align 2
  %date = alloca i16, align 2
  %second = alloca i64, align 8
  %day = alloca i64, align 8
  %leap_day = alloca i64, align 8
  %month = alloca i64, align 8
  %year = alloca i64, align 8
  %__UNIQUE_ID___x321 = alloca i32, align 4
  %__UNIQUE_ID___y322 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__UNIQUE_ID___x323 = alloca i32, align 4
  %__UNIQUE_ID___y324 = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  store ptr %sbi, ptr %sbi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbi.addr, metadata !5258, metadata !DIExpression()), !dbg !5276
  store ptr %ts, ptr %ts.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ts.addr, metadata !5259, metadata !DIExpression()), !dbg !5277
  store i16 %__time, ptr %__time.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %__time.addr, metadata !5260, metadata !DIExpression()), !dbg !5278
  store i16 %__date, ptr %__date.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %__date.addr, metadata !5261, metadata !DIExpression()), !dbg !5279
  store i8 %time_cs, ptr %time_cs.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %time_cs.addr, metadata !5262, metadata !DIExpression()), !dbg !5280
  call void @llvm.lifetime.start.p0(i64 2, ptr %time) #13, !dbg !5281
  call void @llvm.dbg.declare(metadata ptr %time, metadata !5263, metadata !DIExpression()), !dbg !5282
  %0 = load i16, ptr %__time.addr, align 2, !dbg !5283
  store i16 %0, ptr %time, align 2, !dbg !5282
  call void @llvm.lifetime.start.p0(i64 2, ptr %date) #13, !dbg !5281
  call void @llvm.dbg.declare(metadata ptr %date, metadata !5264, metadata !DIExpression()), !dbg !5284
  %1 = load i16, ptr %__date.addr, align 2, !dbg !5285
  store i16 %1, ptr %date, align 2, !dbg !5284
  call void @llvm.lifetime.start.p0(i64 8, ptr %second) #13, !dbg !5286
  call void @llvm.dbg.declare(metadata ptr %second, metadata !5265, metadata !DIExpression()), !dbg !5287
  call void @llvm.lifetime.start.p0(i64 8, ptr %day) #13, !dbg !5288
  call void @llvm.dbg.declare(metadata ptr %day, metadata !5266, metadata !DIExpression()), !dbg !5289
  call void @llvm.lifetime.start.p0(i64 8, ptr %leap_day) #13, !dbg !5288
  call void @llvm.dbg.declare(metadata ptr %leap_day, metadata !5267, metadata !DIExpression()), !dbg !5290
  call void @llvm.lifetime.start.p0(i64 8, ptr %month) #13, !dbg !5288
  call void @llvm.dbg.declare(metadata ptr %month, metadata !5268, metadata !DIExpression()), !dbg !5291
  call void @llvm.lifetime.start.p0(i64 8, ptr %year) #13, !dbg !5288
  call void @llvm.dbg.declare(metadata ptr %year, metadata !5269, metadata !DIExpression()), !dbg !5292
  %2 = load i16, ptr %date, align 2, !dbg !5293
  %conv = zext i16 %2 to i32, !dbg !5293
  %shr = ashr i32 %conv, 9, !dbg !5294
  %conv1 = sext i32 %shr to i64, !dbg !5293
  store i64 %conv1, ptr %year, align 8, !dbg !5295
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x321) #13, !dbg !5296
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x321, metadata !5270, metadata !DIExpression()), !dbg !5296
  store i32 1, ptr %__UNIQUE_ID___x321, align 4, !dbg !5296
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y322) #13, !dbg !5296
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y322, metadata !5272, metadata !DIExpression()), !dbg !5296
  %3 = load i16, ptr %date, align 2, !dbg !5296
  %conv2 = zext i16 %3 to i32, !dbg !5296
  %shr3 = ashr i32 %conv2, 5, !dbg !5296
  %and = and i32 %shr3, 15, !dbg !5296
  store i32 %and, ptr %__UNIQUE_ID___y322, align 4, !dbg !5296
  %4 = load i32, ptr %__UNIQUE_ID___x321, align 4, !dbg !5296
  %5 = load i32, ptr %__UNIQUE_ID___y322, align 4, !dbg !5296
  %cmp = icmp sgt i32 %4, %5, !dbg !5296
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5296

cond.true:                                        ; preds = %entry
  %6 = load i32, ptr %__UNIQUE_ID___x321, align 4, !dbg !5296
  br label %cond.end, !dbg !5296

cond.false:                                       ; preds = %entry
  %7 = load i32, ptr %__UNIQUE_ID___y322, align 4, !dbg !5296
  br label %cond.end, !dbg !5296

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ %7, %cond.false ], !dbg !5296
  store i32 %cond, ptr %tmp, align 4, !dbg !5296
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y322) #13, !dbg !5297
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x321) #13, !dbg !5297
  %8 = load i32, ptr %tmp, align 4, !dbg !5296
  %conv5 = sext i32 %8 to i64, !dbg !5297
  store i64 %conv5, ptr %month, align 8, !dbg !5298
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x323) #13, !dbg !5299
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x323, metadata !5273, metadata !DIExpression()), !dbg !5299
  store i32 1, ptr %__UNIQUE_ID___x323, align 4, !dbg !5299
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y324) #13, !dbg !5299
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y324, metadata !5275, metadata !DIExpression()), !dbg !5299
  %9 = load i16, ptr %date, align 2, !dbg !5299
  %conv6 = zext i16 %9 to i32, !dbg !5299
  %and7 = and i32 %conv6, 31, !dbg !5299
  store i32 %and7, ptr %__UNIQUE_ID___y324, align 4, !dbg !5299
  %10 = load i32, ptr %__UNIQUE_ID___x323, align 4, !dbg !5299
  %11 = load i32, ptr %__UNIQUE_ID___y324, align 4, !dbg !5299
  %cmp9 = icmp sgt i32 %10, %11, !dbg !5299
  br i1 %cmp9, label %cond.true11, label %cond.false12, !dbg !5299

cond.true11:                                      ; preds = %cond.end
  %12 = load i32, ptr %__UNIQUE_ID___x323, align 4, !dbg !5299
  br label %cond.end13, !dbg !5299

cond.false12:                                     ; preds = %cond.end
  %13 = load i32, ptr %__UNIQUE_ID___y324, align 4, !dbg !5299
  br label %cond.end13, !dbg !5299

cond.end13:                                       ; preds = %cond.false12, %cond.true11
  %cond14 = phi i32 [ %12, %cond.true11 ], [ %13, %cond.false12 ], !dbg !5299
  store i32 %cond14, ptr %tmp8, align 4, !dbg !5299
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y324) #13, !dbg !5300
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x323) #13, !dbg !5300
  %14 = load i32, ptr %tmp8, align 4, !dbg !5299
  %sub = sub i32 %14, 1, !dbg !5301
  %conv15 = sext i32 %sub to i64, !dbg !5300
  store i64 %conv15, ptr %day, align 8, !dbg !5302
  %15 = load i64, ptr %year, align 8, !dbg !5303
  %add = add i64 %15, 3, !dbg !5304
  %div = sdiv i64 %add, 4, !dbg !5305
  store i64 %div, ptr %leap_day, align 8, !dbg !5306
  %16 = load i64, ptr %year, align 8, !dbg !5307
  %cmp16 = icmp sgt i64 %16, 120, !dbg !5309
  br i1 %cmp16, label %if.then, label %if.end, !dbg !5310

if.then:                                          ; preds = %cond.end13
  %17 = load i64, ptr %leap_day, align 8, !dbg !5311
  %dec = add i64 %17, -1, !dbg !5311
  store i64 %dec, ptr %leap_day, align 8, !dbg !5311
  br label %if.end, !dbg !5312

if.end:                                           ; preds = %if.then, %cond.end13
  %18 = load i64, ptr %year, align 8, !dbg !5313
  %and18 = and i64 %18, 3, !dbg !5313
  %tobool = icmp ne i64 %and18, 0, !dbg !5313
  br i1 %tobool, label %if.end25, label %land.lhs.true, !dbg !5313

land.lhs.true:                                    ; preds = %if.end
  %19 = load i64, ptr %year, align 8, !dbg !5313
  %cmp19 = icmp ne i64 %19, 120, !dbg !5313
  br i1 %cmp19, label %land.lhs.true21, label %if.end25, !dbg !5315

land.lhs.true21:                                  ; preds = %land.lhs.true
  %20 = load i64, ptr %month, align 8, !dbg !5316
  %cmp22 = icmp sgt i64 %20, 2, !dbg !5317
  br i1 %cmp22, label %if.then24, label %if.end25, !dbg !5318

if.then24:                                        ; preds = %land.lhs.true21
  %21 = load i64, ptr %leap_day, align 8, !dbg !5319
  %inc = add i64 %21, 1, !dbg !5319
  store i64 %inc, ptr %leap_day, align 8, !dbg !5319
  br label %if.end25, !dbg !5320

if.end25:                                         ; preds = %if.then24, %land.lhs.true21, %land.lhs.true, %if.end
  %22 = load i16, ptr %time, align 2, !dbg !5321
  %conv26 = zext i16 %22 to i32, !dbg !5321
  %and27 = and i32 %conv26, 31, !dbg !5322
  %shl = shl i32 %and27, 1, !dbg !5323
  %conv28 = sext i32 %shl to i64, !dbg !5324
  store i64 %conv28, ptr %second, align 8, !dbg !5325
  %23 = load i16, ptr %time, align 2, !dbg !5326
  %conv29 = zext i16 %23 to i32, !dbg !5326
  %shr30 = ashr i32 %conv29, 5, !dbg !5327
  %and31 = and i32 %shr30, 63, !dbg !5328
  %mul = mul i32 %and31, 60, !dbg !5329
  %conv32 = sext i32 %mul to i64, !dbg !5330
  %24 = load i64, ptr %second, align 8, !dbg !5331
  %add33 = add i64 %24, %conv32, !dbg !5331
  store i64 %add33, ptr %second, align 8, !dbg !5331
  %25 = load i16, ptr %time, align 2, !dbg !5332
  %conv34 = zext i16 %25 to i32, !dbg !5332
  %shr35 = ashr i32 %conv34, 11, !dbg !5333
  %mul36 = mul i32 %shr35, 3600, !dbg !5334
  %conv37 = sext i32 %mul36 to i64, !dbg !5335
  %26 = load i64, ptr %second, align 8, !dbg !5336
  %add38 = add i64 %26, %conv37, !dbg !5336
  store i64 %add38, ptr %second, align 8, !dbg !5336
  %27 = load i64, ptr %year, align 8, !dbg !5337
  %mul39 = mul i64 %27, 365, !dbg !5338
  %28 = load i64, ptr %leap_day, align 8, !dbg !5339
  %add40 = add i64 %mul39, %28, !dbg !5340
  %29 = load i64, ptr %month, align 8, !dbg !5341
  %arrayidx = getelementptr [16 x i64], ptr @days_in_year, i64 0, i64 %29, !dbg !5342
  %30 = load i64, ptr %arrayidx, align 8, !dbg !5342
  %add41 = add i64 %add40, %30, !dbg !5343
  %31 = load i64, ptr %day, align 8, !dbg !5344
  %add42 = add i64 %add41, %31, !dbg !5345
  %add43 = add i64 %add42, 3652, !dbg !5346
  %mul44 = mul i64 %add43, 86400, !dbg !5347
  %32 = load i64, ptr %second, align 8, !dbg !5348
  %add45 = add i64 %32, %mul44, !dbg !5348
  store i64 %add45, ptr %second, align 8, !dbg !5348
  %33 = load ptr, ptr %sbi.addr, align 8, !dbg !5349
  %call = call i32 @fat_tz_offset(ptr noundef %33) #14, !dbg !5350
  %conv46 = sext i32 %call to i64, !dbg !5350
  %34 = load i64, ptr %second, align 8, !dbg !5351
  %add47 = add i64 %34, %conv46, !dbg !5351
  store i64 %add47, ptr %second, align 8, !dbg !5351
  %35 = load i8, ptr %time_cs.addr, align 1, !dbg !5352
  %tobool48 = icmp ne i8 %35, 0, !dbg !5352
  br i1 %tobool48, label %if.then49, label %if.else, !dbg !5354

if.then49:                                        ; preds = %if.end25
  %36 = load i64, ptr %second, align 8, !dbg !5355
  %37 = load i8, ptr %time_cs.addr, align 1, !dbg !5357
  %conv50 = zext i8 %37 to i32, !dbg !5357
  %div51 = sdiv i32 %conv50, 100, !dbg !5358
  %conv52 = sext i32 %div51 to i64, !dbg !5359
  %add53 = add i64 %36, %conv52, !dbg !5360
  %38 = load ptr, ptr %ts.addr, align 8, !dbg !5361
  %tv_sec = getelementptr inbounds %struct.timespec64, ptr %38, i32 0, i32 0, !dbg !5362
  store i64 %add53, ptr %tv_sec, align 8, !dbg !5363
  %39 = load i8, ptr %time_cs.addr, align 1, !dbg !5364
  %conv54 = zext i8 %39 to i32, !dbg !5364
  %rem = srem i32 %conv54, 100, !dbg !5365
  %mul55 = mul i32 %rem, 10000000, !dbg !5366
  %conv56 = sext i32 %mul55 to i64, !dbg !5367
  %40 = load ptr, ptr %ts.addr, align 8, !dbg !5368
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %40, i32 0, i32 1, !dbg !5369
  store i64 %conv56, ptr %tv_nsec, align 8, !dbg !5370
  br label %if.end59, !dbg !5371

if.else:                                          ; preds = %if.end25
  %41 = load i64, ptr %second, align 8, !dbg !5372
  %42 = load ptr, ptr %ts.addr, align 8, !dbg !5374
  %tv_sec57 = getelementptr inbounds %struct.timespec64, ptr %42, i32 0, i32 0, !dbg !5375
  store i64 %41, ptr %tv_sec57, align 8, !dbg !5376
  %43 = load ptr, ptr %ts.addr, align 8, !dbg !5377
  %tv_nsec58 = getelementptr inbounds %struct.timespec64, ptr %43, i32 0, i32 1, !dbg !5378
  store i64 0, ptr %tv_nsec58, align 8, !dbg !5379
  br label %if.end59

if.end59:                                         ; preds = %if.else, %if.then49
  call void @llvm.lifetime.end.p0(i64 8, ptr %year) #13, !dbg !5380
  call void @llvm.lifetime.end.p0(i64 8, ptr %month) #13, !dbg !5380
  call void @llvm.lifetime.end.p0(i64 8, ptr %leap_day) #13, !dbg !5380
  call void @llvm.lifetime.end.p0(i64 8, ptr %day) #13, !dbg !5380
  call void @llvm.lifetime.end.p0(i64 8, ptr %second) #13, !dbg !5380
  call void @llvm.lifetime.end.p0(i64 2, ptr %date) #13, !dbg !5380
  call void @llvm.lifetime.end.p0(i64 2, ptr %time) #13, !dbg !5380
  ret void, !dbg !5380
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fat_tz_offset(ptr noundef %sbi) #3 align 16 !dbg !5381 {
entry:
  %sbi.addr = alloca ptr, align 8
  store ptr %sbi, ptr %sbi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbi.addr, metadata !5385, metadata !DIExpression()), !dbg !5386
  %0 = load ptr, ptr %sbi.addr, align 8, !dbg !5387
  %options = getelementptr inbounds %struct.msdos_sb_info, ptr %0, i32 0, i32 19, !dbg !5388
  %tz_set = getelementptr inbounds %struct.fat_mount_options, ptr %options, i32 0, i32 12, !dbg !5389
  %bf.load = load i16, ptr %tz_set, align 8, !dbg !5389
  %bf.lshr = lshr i16 %bf.load, 11, !dbg !5389
  %bf.clear = and i16 %bf.lshr, 1, !dbg !5389
  %bf.cast = zext i16 %bf.clear to i32, !dbg !5389
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5387
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5387

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %sbi.addr, align 8, !dbg !5390
  %options1 = getelementptr inbounds %struct.msdos_sb_info, ptr %1, i32 0, i32 19, !dbg !5391
  %time_offset = getelementptr inbounds %struct.fat_mount_options, ptr %options1, i32 0, i32 5, !dbg !5392
  %2 = load i32, ptr %time_offset, align 8, !dbg !5392
  %sub = sub i32 0, %2, !dbg !5393
  br label %cond.end, !dbg !5387

cond.false:                                       ; preds = %entry
  %3 = load i32, ptr @sys_tz, align 4, !dbg !5394
  br label %cond.end, !dbg !5387

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %3, %cond.false ], !dbg !5387
  %mul = mul i32 %cond, 60, !dbg !5395
  ret i32 %mul, !dbg !5396
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @fat_time_unix2fat(ptr noundef %sbi, ptr noundef %ts, ptr noundef %time, ptr noundef %date, ptr noundef %time_cs) #7 align 16 !dbg !5397 {
entry:
  %sbi.addr = alloca ptr, align 8
  %ts.addr = alloca ptr, align 8
  %time.addr = alloca ptr, align 8
  %date.addr = alloca ptr, align 8
  %time_cs.addr = alloca ptr, align 8
  %tm = alloca %struct.tm, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sbi, ptr %sbi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbi.addr, metadata !5401, metadata !DIExpression()), !dbg !5418
  store ptr %ts, ptr %ts.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ts.addr, metadata !5402, metadata !DIExpression()), !dbg !5419
  store ptr %time, ptr %time.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %time.addr, metadata !5403, metadata !DIExpression()), !dbg !5420
  store ptr %date, ptr %date.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %date.addr, metadata !5404, metadata !DIExpression()), !dbg !5421
  store ptr %time_cs, ptr %time_cs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %time_cs.addr, metadata !5405, metadata !DIExpression()), !dbg !5422
  call void @llvm.lifetime.start.p0(i64 40, ptr %tm) #13, !dbg !5423
  call void @llvm.dbg.declare(metadata ptr %tm, metadata !5406, metadata !DIExpression()), !dbg !5424
  %0 = load ptr, ptr %ts.addr, align 8, !dbg !5425
  %tv_sec = getelementptr inbounds %struct.timespec64, ptr %0, i32 0, i32 0, !dbg !5426
  %1 = load i64, ptr %tv_sec, align 8, !dbg !5426
  %2 = load ptr, ptr %sbi.addr, align 8, !dbg !5427
  %call = call i32 @fat_tz_offset(ptr noundef %2) #14, !dbg !5428
  %sub = sub i32 0, %call, !dbg !5429
  call void @time64_to_tm(i64 noundef %1, i32 noundef %sub, ptr noundef %tm) #14, !dbg !5430
  %tm_year = getelementptr inbounds %struct.tm, ptr %tm, i32 0, i32 5, !dbg !5431
  %3 = load i64, ptr %tm_year, align 8, !dbg !5431
  %cmp = icmp slt i64 %3, 80, !dbg !5433
  br i1 %cmp, label %if.then, label %if.end2, !dbg !5434

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %time.addr, align 8, !dbg !5435
  store i16 0, ptr %4, align 2, !dbg !5437
  %5 = load ptr, ptr %date.addr, align 8, !dbg !5438
  store i16 33, ptr %5, align 2, !dbg !5439
  %6 = load ptr, ptr %time_cs.addr, align 8, !dbg !5440
  %tobool = icmp ne ptr %6, null, !dbg !5440
  br i1 %tobool, label %if.then1, label %if.end, !dbg !5442

if.then1:                                         ; preds = %if.then
  %7 = load ptr, ptr %time_cs.addr, align 8, !dbg !5443
  store i8 0, ptr %7, align 1, !dbg !5444
  br label %if.end, !dbg !5445

if.end:                                           ; preds = %if.then1, %if.then
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5446

if.end2:                                          ; preds = %entry
  %tm_year3 = getelementptr inbounds %struct.tm, ptr %tm, i32 0, i32 5, !dbg !5447
  %8 = load i64, ptr %tm_year3, align 8, !dbg !5447
  %cmp4 = icmp sgt i64 %8, 207, !dbg !5449
  br i1 %cmp4, label %if.then5, label %if.end9, !dbg !5450

if.then5:                                         ; preds = %if.end2
  %9 = load ptr, ptr %time.addr, align 8, !dbg !5451
  store i16 -16515, ptr %9, align 2, !dbg !5453
  %10 = load ptr, ptr %date.addr, align 8, !dbg !5454
  store i16 -97, ptr %10, align 2, !dbg !5455
  %11 = load ptr, ptr %time_cs.addr, align 8, !dbg !5456
  %tobool6 = icmp ne ptr %11, null, !dbg !5456
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !5458

if.then7:                                         ; preds = %if.then5
  %12 = load ptr, ptr %time_cs.addr, align 8, !dbg !5459
  store i8 -57, ptr %12, align 1, !dbg !5460
  br label %if.end8, !dbg !5461

if.end8:                                          ; preds = %if.then7, %if.then5
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5462

if.end9:                                          ; preds = %if.end2
  %tm_year10 = getelementptr inbounds %struct.tm, ptr %tm, i32 0, i32 5, !dbg !5463
  %13 = load i64, ptr %tm_year10, align 8, !dbg !5464
  %sub11 = sub i64 %13, 80, !dbg !5464
  store i64 %sub11, ptr %tm_year10, align 8, !dbg !5464
  %tm_mon = getelementptr inbounds %struct.tm, ptr %tm, i32 0, i32 4, !dbg !5465
  %14 = load i32, ptr %tm_mon, align 8, !dbg !5466
  %inc = add i32 %14, 1, !dbg !5466
  store i32 %inc, ptr %tm_mon, align 8, !dbg !5466
  %tm_sec = getelementptr inbounds %struct.tm, ptr %tm, i32 0, i32 0, !dbg !5467
  %15 = load i32, ptr %tm_sec, align 8, !dbg !5468
  %shr = ashr i32 %15, 1, !dbg !5468
  store i32 %shr, ptr %tm_sec, align 8, !dbg !5468
  %tm_hour = getelementptr inbounds %struct.tm, ptr %tm, i32 0, i32 2, !dbg !5469
  %16 = load i32, ptr %tm_hour, align 8, !dbg !5469
  %shl = shl i32 %16, 11, !dbg !5469
  %tm_min = getelementptr inbounds %struct.tm, ptr %tm, i32 0, i32 1, !dbg !5469
  %17 = load i32, ptr %tm_min, align 4, !dbg !5469
  %shl12 = shl i32 %17, 5, !dbg !5469
  %or = or i32 %shl, %shl12, !dbg !5469
  %tm_sec13 = getelementptr inbounds %struct.tm, ptr %tm, i32 0, i32 0, !dbg !5469
  %18 = load i32, ptr %tm_sec13, align 8, !dbg !5469
  %or14 = or i32 %or, %18, !dbg !5469
  %conv = trunc i32 %or14 to i16, !dbg !5469
  %19 = load ptr, ptr %time.addr, align 8, !dbg !5470
  store i16 %conv, ptr %19, align 2, !dbg !5471
  %tm_year15 = getelementptr inbounds %struct.tm, ptr %tm, i32 0, i32 5, !dbg !5472
  %20 = load i64, ptr %tm_year15, align 8, !dbg !5472
  %shl16 = shl i64 %20, 9, !dbg !5472
  %tm_mon17 = getelementptr inbounds %struct.tm, ptr %tm, i32 0, i32 4, !dbg !5472
  %21 = load i32, ptr %tm_mon17, align 8, !dbg !5472
  %shl18 = shl i32 %21, 5, !dbg !5472
  %conv19 = sext i32 %shl18 to i64, !dbg !5472
  %or20 = or i64 %shl16, %conv19, !dbg !5472
  %tm_mday = getelementptr inbounds %struct.tm, ptr %tm, i32 0, i32 3, !dbg !5472
  %22 = load i32, ptr %tm_mday, align 4, !dbg !5472
  %conv21 = sext i32 %22 to i64, !dbg !5472
  %or22 = or i64 %or20, %conv21, !dbg !5472
  %conv23 = trunc i64 %or22 to i16, !dbg !5472
  %23 = load ptr, ptr %date.addr, align 8, !dbg !5473
  store i16 %conv23, ptr %23, align 2, !dbg !5474
  %24 = load ptr, ptr %time_cs.addr, align 8, !dbg !5475
  %tobool24 = icmp ne ptr %24, null, !dbg !5475
  br i1 %tobool24, label %if.then25, label %if.end28, !dbg !5477

if.then25:                                        ; preds = %if.end9
  %25 = load ptr, ptr %ts.addr, align 8, !dbg !5478
  %tv_sec26 = getelementptr inbounds %struct.timespec64, ptr %25, i32 0, i32 0, !dbg !5479
  %26 = load i64, ptr %tv_sec26, align 8, !dbg !5479
  %and = and i64 %26, 1, !dbg !5480
  %mul = mul i64 %and, 100, !dbg !5481
  %27 = load ptr, ptr %ts.addr, align 8, !dbg !5482
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %27, i32 0, i32 1, !dbg !5483
  %28 = load i64, ptr %tv_nsec, align 8, !dbg !5483
  %div = sdiv i64 %28, 10000000, !dbg !5484
  %add = add i64 %mul, %div, !dbg !5485
  %conv27 = trunc i64 %add to i8, !dbg !5486
  %29 = load ptr, ptr %time_cs.addr, align 8, !dbg !5487
  store i8 %conv27, ptr %29, align 1, !dbg !5488
  br label %if.end28, !dbg !5489

if.end28:                                         ; preds = %if.then25, %if.end9
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5490
  br label %cleanup, !dbg !5490

cleanup:                                          ; preds = %if.end28, %if.end8, %if.end
  call void @llvm.lifetime.end.p0(i64 40, ptr %tm) #13, !dbg !5490
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5490

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5491 dso_local void @time64_to_tm(i64 noundef, i32 noundef, ptr noundef) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden { i64, i64 } @fat_truncate_atime(ptr noundef %sbi, ptr noundef %ts) #7 align 16 !dbg !5495 {
entry:
  %retval = alloca %struct.timespec64, align 8
  %sbi.addr = alloca ptr, align 8
  %ts.addr = alloca ptr, align 8
  %seconds = alloca i64, align 8
  %remainder = alloca i32, align 4
  store ptr %sbi, ptr %sbi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbi.addr, metadata !5501, metadata !DIExpression()), !dbg !5505
  store ptr %ts, ptr %ts.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ts.addr, metadata !5502, metadata !DIExpression()), !dbg !5506
  call void @llvm.lifetime.start.p0(i64 8, ptr %seconds) #13, !dbg !5507
  call void @llvm.dbg.declare(metadata ptr %seconds, metadata !5503, metadata !DIExpression()), !dbg !5508
  %0 = load ptr, ptr %ts.addr, align 8, !dbg !5509
  %tv_sec = getelementptr inbounds %struct.timespec64, ptr %0, i32 0, i32 0, !dbg !5510
  %1 = load i64, ptr %tv_sec, align 8, !dbg !5510
  %2 = load ptr, ptr %sbi.addr, align 8, !dbg !5511
  %call = call i32 @fat_tz_offset(ptr noundef %2) #14, !dbg !5512
  %conv = sext i32 %call to i64, !dbg !5512
  %sub = sub i64 %1, %conv, !dbg !5513
  store i64 %sub, ptr %seconds, align 8, !dbg !5508
  call void @llvm.lifetime.start.p0(i64 4, ptr %remainder) #13, !dbg !5514
  call void @llvm.dbg.declare(metadata ptr %remainder, metadata !5504, metadata !DIExpression()), !dbg !5515
  %3 = load i64, ptr %seconds, align 8, !dbg !5516
  %call1 = call i64 @div_s64_rem(i64 noundef %3, i32 noundef 86400, ptr noundef %remainder) #14, !dbg !5517
  %4 = load i64, ptr %seconds, align 8, !dbg !5518
  %5 = load ptr, ptr %sbi.addr, align 8, !dbg !5519
  %call2 = call i32 @fat_tz_offset(ptr noundef %5) #14, !dbg !5520
  %conv3 = sext i32 %call2 to i64, !dbg !5520
  %add = add i64 %4, %conv3, !dbg !5521
  %6 = load i32, ptr %remainder, align 4, !dbg !5522
  %conv4 = sext i32 %6 to i64, !dbg !5522
  %sub5 = sub i64 %add, %conv4, !dbg !5523
  store i64 %sub5, ptr %seconds, align 8, !dbg !5524
  %tv_sec6 = getelementptr inbounds %struct.timespec64, ptr %retval, i32 0, i32 0, !dbg !5525
  %7 = load i64, ptr %seconds, align 8, !dbg !5526
  store i64 %7, ptr %tv_sec6, align 8, !dbg !5525
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %retval, i32 0, i32 1, !dbg !5525
  store i64 0, ptr %tv_nsec, align 8, !dbg !5525
  call void @llvm.lifetime.end.p0(i64 4, ptr %remainder) #13, !dbg !5527
  call void @llvm.lifetime.end.p0(i64 8, ptr %seconds) #13, !dbg !5527
  %8 = load { i64, i64 }, ptr %retval, align 8, !dbg !5527
  ret { i64, i64 } %8, !dbg !5527
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @div_s64_rem(i64 noundef %dividend, i32 noundef %divisor, ptr noundef %remainder) #3 align 16 !dbg !5528 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder.addr = alloca ptr, align 8
  store i64 %dividend, ptr %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dividend.addr, metadata !5533, metadata !DIExpression()), !dbg !5536
  store i32 %divisor, ptr %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %divisor.addr, metadata !5534, metadata !DIExpression()), !dbg !5537
  store ptr %remainder, ptr %remainder.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %remainder.addr, metadata !5535, metadata !DIExpression()), !dbg !5538
  %0 = load i64, ptr %dividend.addr, align 8, !dbg !5539
  %1 = load i32, ptr %divisor.addr, align 4, !dbg !5540
  %conv = sext i32 %1 to i64, !dbg !5540
  %rem = srem i64 %0, %conv, !dbg !5541
  %conv1 = trunc i64 %rem to i32, !dbg !5539
  %2 = load ptr, ptr %remainder.addr, align 8, !dbg !5542
  store i32 %conv1, ptr %2, align 4, !dbg !5543
  %3 = load i64, ptr %dividend.addr, align 8, !dbg !5544
  %4 = load i32, ptr %divisor.addr, align 4, !dbg !5545
  %conv2 = sext i32 %4 to i64, !dbg !5545
  %div = sdiv i64 %3, %conv2, !dbg !5546
  ret i64 %div, !dbg !5547
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden { i64, i64 } @fat_truncate_mtime(ptr noundef %sbi, ptr noundef %ts) #7 align 16 !dbg !5548 {
entry:
  %retval = alloca %struct.timespec64, align 8
  %sbi.addr = alloca ptr, align 8
  %ts.addr = alloca ptr, align 8
  store ptr %sbi, ptr %sbi.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sbi.addr, metadata !5550, metadata !DIExpression()), !dbg !5552
  store ptr %ts, ptr %ts.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ts.addr, metadata !5551, metadata !DIExpression()), !dbg !5553
  %0 = load ptr, ptr %ts.addr, align 8, !dbg !5554
  %1 = getelementptr inbounds { i64, i64 }, ptr %0, i32 0, i32 0, !dbg !5555
  %2 = load i64, ptr %1, align 8, !dbg !5555
  %3 = getelementptr inbounds { i64, i64 }, ptr %0, i32 0, i32 1, !dbg !5555
  %4 = load i64, ptr %3, align 8, !dbg !5555
  %call = call { i64, i64 } @fat_timespec64_trunc_2secs(i64 %2, i64 %4) #14, !dbg !5555
  %5 = getelementptr inbounds { i64, i64 }, ptr %retval, i32 0, i32 0, !dbg !5555
  %6 = extractvalue { i64, i64 } %call, 0, !dbg !5555
  store i64 %6, ptr %5, align 8, !dbg !5555
  %7 = getelementptr inbounds { i64, i64 }, ptr %retval, i32 0, i32 1, !dbg !5555
  %8 = extractvalue { i64, i64 } %call, 1, !dbg !5555
  store i64 %8, ptr %7, align 8, !dbg !5555
  %9 = load { i64, i64 }, ptr %retval, align 8, !dbg !5556
  ret { i64, i64 } %9, !dbg !5556
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal { i64, i64 } @fat_timespec64_trunc_2secs(i64 %ts.coerce0, i64 %ts.coerce1) #3 align 16 !dbg !5557 {
entry:
  %retval = alloca %struct.timespec64, align 8
  %ts = alloca %struct.timespec64, align 8
  %0 = getelementptr inbounds { i64, i64 }, ptr %ts, i32 0, i32 0
  store i64 %ts.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { i64, i64 }, ptr %ts, i32 0, i32 1
  store i64 %ts.coerce1, ptr %1, align 8
  call void @llvm.dbg.declare(metadata ptr %ts, metadata !5561, metadata !DIExpression()), !dbg !5562
  %tv_sec = getelementptr inbounds %struct.timespec64, ptr %retval, i32 0, i32 0, !dbg !5563
  %tv_sec1 = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 0, !dbg !5564
  %2 = load i64, ptr %tv_sec1, align 8, !dbg !5564
  %and = and i64 %2, -2, !dbg !5565
  store i64 %and, ptr %tv_sec, align 8, !dbg !5563
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %retval, i32 0, i32 1, !dbg !5563
  store i64 0, ptr %tv_nsec, align 8, !dbg !5563
  %3 = load { i64, i64 }, ptr %retval, align 8, !dbg !5566
  ret { i64, i64 } %3, !dbg !5566
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @fat_truncate_time(ptr noundef %inode, ptr noundef %now, i32 noundef %flags) #7 align 16 !dbg !5567 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca ptr, align 8
  %now.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %sbi = alloca ptr, align 8
  %ts = alloca %struct.timespec64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca %struct.timespec64, align 8
  %tmp6 = alloca %struct.timespec64, align 8
  %tmp12 = alloca %struct.timespec64, align 8
  %agg.tmp = alloca %struct.timespec64, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5571, metadata !DIExpression()), !dbg !5576
  store ptr %now, ptr %now.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %now.addr, metadata !5572, metadata !DIExpression()), !dbg !5577
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5573, metadata !DIExpression()), !dbg !5578
  call void @llvm.lifetime.start.p0(i64 8, ptr %sbi) #13, !dbg !5579
  call void @llvm.dbg.declare(metadata ptr %sbi, metadata !5574, metadata !DIExpression()), !dbg !5580
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5581
  %i_sb = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9, !dbg !5582
  %1 = load ptr, ptr %i_sb, align 8, !dbg !5582
  %call = call ptr @MSDOS_SB(ptr noundef %1) #14, !dbg !5583
  store ptr %call, ptr %sbi, align 8, !dbg !5580
  call void @llvm.lifetime.start.p0(i64 16, ptr %ts) #13, !dbg !5584
  call void @llvm.dbg.declare(metadata ptr %ts, metadata !5575, metadata !DIExpression()), !dbg !5585
  %2 = load ptr, ptr %inode.addr, align 8, !dbg !5586
  %i_ino = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 12, !dbg !5588
  %3 = load i64, ptr %i_ino, align 8, !dbg !5588
  %cmp = icmp eq i64 %3, 1, !dbg !5589
  br i1 %cmp, label %if.then, label %if.end, !dbg !5590

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5591
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5591

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %now.addr, align 8, !dbg !5592
  %cmp1 = icmp eq ptr %4, null, !dbg !5594
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !5595

if.then2:                                         ; preds = %if.end
  store ptr %ts, ptr %now.addr, align 8, !dbg !5596
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #13, !dbg !5598
  %5 = load ptr, ptr %inode.addr, align 8, !dbg !5599
  %call3 = call { i64, i64 } @current_time(ptr noundef %5) #14, !dbg !5598
  %6 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 0, !dbg !5598
  %7 = extractvalue { i64, i64 } %call3, 0, !dbg !5598
  store i64 %7, ptr %6, align 8, !dbg !5598
  %8 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 1, !dbg !5598
  %9 = extractvalue { i64, i64 } %call3, 1, !dbg !5598
  store i64 %9, ptr %8, align 8, !dbg !5598
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %ts, ptr align 8 %tmp, i64 16, i1 false), !dbg !5598
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #13, !dbg !5598
  br label %if.end4, !dbg !5600

if.end4:                                          ; preds = %if.then2, %if.end
  %10 = load i32, ptr %flags.addr, align 4, !dbg !5601
  %and = and i32 %10, 1, !dbg !5603
  %tobool = icmp ne i32 %and, 0, !dbg !5603
  br i1 %tobool, label %if.then5, label %if.end8, !dbg !5604

if.then5:                                         ; preds = %if.end4
  %11 = load ptr, ptr %inode.addr, align 8, !dbg !5605
  %i_atime = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 16, !dbg !5606
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp6) #13, !dbg !5607
  %12 = load ptr, ptr %sbi, align 8, !dbg !5608
  %13 = load ptr, ptr %now.addr, align 8, !dbg !5609
  %call7 = call { i64, i64 } @fat_truncate_atime(ptr noundef %12, ptr noundef %13) #14, !dbg !5607
  %14 = getelementptr inbounds { i64, i64 }, ptr %tmp6, i32 0, i32 0, !dbg !5607
  %15 = extractvalue { i64, i64 } %call7, 0, !dbg !5607
  store i64 %15, ptr %14, align 8, !dbg !5607
  %16 = getelementptr inbounds { i64, i64 }, ptr %tmp6, i32 0, i32 1, !dbg !5607
  %17 = extractvalue { i64, i64 } %call7, 1, !dbg !5607
  store i64 %17, ptr %16, align 8, !dbg !5607
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i_atime, ptr align 8 %tmp6, i64 16, i1 false), !dbg !5607
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp6) #13, !dbg !5607
  br label %if.end8, !dbg !5605

if.end8:                                          ; preds = %if.then5, %if.end4
  %18 = load i32, ptr %flags.addr, align 4, !dbg !5610
  %and9 = and i32 %18, 2, !dbg !5612
  %tobool10 = icmp ne i32 %and9, 0, !dbg !5612
  br i1 %tobool10, label %if.then11, label %if.end15, !dbg !5613

if.then11:                                        ; preds = %if.end8
  %19 = load ptr, ptr %inode.addr, align 8, !dbg !5614
  %i_mtime = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 17, !dbg !5615
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp12) #13, !dbg !5616
  %20 = load ptr, ptr %inode.addr, align 8, !dbg !5617
  %21 = load ptr, ptr %sbi, align 8, !dbg !5618
  %22 = load ptr, ptr %now.addr, align 8, !dbg !5619
  %call13 = call { i64, i64 } @fat_truncate_mtime(ptr noundef %21, ptr noundef %22) #14, !dbg !5620
  %23 = getelementptr inbounds { i64, i64 }, ptr %agg.tmp, i32 0, i32 0, !dbg !5620
  %24 = extractvalue { i64, i64 } %call13, 0, !dbg !5620
  store i64 %24, ptr %23, align 8, !dbg !5620
  %25 = getelementptr inbounds { i64, i64 }, ptr %agg.tmp, i32 0, i32 1, !dbg !5620
  %26 = extractvalue { i64, i64 } %call13, 1, !dbg !5620
  store i64 %26, ptr %25, align 8, !dbg !5620
  %27 = getelementptr inbounds { i64, i64 }, ptr %agg.tmp, i32 0, i32 0, !dbg !5616
  %28 = load i64, ptr %27, align 8, !dbg !5616
  %29 = getelementptr inbounds { i64, i64 }, ptr %agg.tmp, i32 0, i32 1, !dbg !5616
  %30 = load i64, ptr %29, align 8, !dbg !5616
  %call14 = call { i64, i64 } @inode_set_ctime_to_ts(ptr noundef %20, i64 %28, i64 %30) #14, !dbg !5616
  %31 = getelementptr inbounds { i64, i64 }, ptr %tmp12, i32 0, i32 0, !dbg !5616
  %32 = extractvalue { i64, i64 } %call14, 0, !dbg !5616
  store i64 %32, ptr %31, align 8, !dbg !5616
  %33 = getelementptr inbounds { i64, i64 }, ptr %tmp12, i32 0, i32 1, !dbg !5616
  %34 = extractvalue { i64, i64 } %call14, 1, !dbg !5616
  store i64 %34, ptr %33, align 8, !dbg !5616
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i_mtime, ptr align 8 %tmp12, i64 16, i1 false), !dbg !5616
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp12) #13, !dbg !5616
  br label %if.end15, !dbg !5614

if.end15:                                         ; preds = %if.then11, %if.end8
  store i32 0, ptr %retval, align 4, !dbg !5621
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5621

cleanup:                                          ; preds = %if.end15, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr %ts) #13, !dbg !5622
  call void @llvm.lifetime.end.p0(i64 8, ptr %sbi) #13, !dbg !5622
  %35 = load i32, ptr %retval, align 4, !dbg !5622
  ret i32 %35, !dbg !5622
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5623 dso_local { i64, i64 } @current_time(ptr noundef) #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal { i64, i64 } @inode_set_ctime_to_ts(ptr noundef %inode, i64 %ts.coerce0, i64 %ts.coerce1) #3 align 16 !dbg !5626 {
entry:
  %retval = alloca %struct.timespec64, align 8
  %ts = alloca %struct.timespec64, align 8
  %inode.addr = alloca ptr, align 8
  %0 = getelementptr inbounds { i64, i64 }, ptr %ts, i32 0, i32 0
  store i64 %ts.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds { i64, i64 }, ptr %ts, i32 0, i32 1
  store i64 %ts.coerce1, ptr %1, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5630, metadata !DIExpression()), !dbg !5632
  call void @llvm.dbg.declare(metadata ptr %ts, metadata !5631, metadata !DIExpression()), !dbg !5633
  %2 = load ptr, ptr %inode.addr, align 8, !dbg !5634
  %__i_ctime = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 18, !dbg !5635
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %__i_ctime, ptr align 8 %ts, i64 16, i1 false), !dbg !5636
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %ts, i64 16, i1 false), !dbg !5637
  %3 = load { i64, i64 }, ptr %retval, align 8, !dbg !5638
  ret { i64, i64 } %3, !dbg !5638
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @fat_update_time(ptr noundef %inode, i32 noundef %flags) #7 align 16 !dbg !5639 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %dirty_flags = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5641, metadata !DIExpression()), !dbg !5644
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5642, metadata !DIExpression()), !dbg !5645
  call void @llvm.lifetime.start.p0(i64 4, ptr %dirty_flags) #13, !dbg !5646
  call void @llvm.dbg.declare(metadata ptr %dirty_flags, metadata !5643, metadata !DIExpression()), !dbg !5647
  store i32 0, ptr %dirty_flags, align 4, !dbg !5647
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5648
  %i_ino = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 12, !dbg !5650
  %1 = load i64, ptr %i_ino, align 8, !dbg !5650
  %cmp = icmp eq i64 %1, 1, !dbg !5651
  br i1 %cmp, label %if.then, label %if.end, !dbg !5652

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5653
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5653

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %flags.addr, align 4, !dbg !5654
  %and = and i32 %2, 7, !dbg !5656
  %tobool = icmp ne i32 %and, 0, !dbg !5656
  br i1 %tobool, label %if.then1, label %if.end7, !dbg !5657

if.then1:                                         ; preds = %if.end
  %3 = load ptr, ptr %inode.addr, align 8, !dbg !5658
  %4 = load i32, ptr %flags.addr, align 4, !dbg !5660
  %call = call i32 @fat_truncate_time(ptr noundef %3, ptr noundef null, i32 noundef %4) #14, !dbg !5661
  %5 = load ptr, ptr %inode.addr, align 8, !dbg !5662
  %i_sb = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 9, !dbg !5664
  %6 = load ptr, ptr %i_sb, align 8, !dbg !5664
  %s_flags = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 10, !dbg !5665
  %7 = load i64, ptr %s_flags, align 16, !dbg !5665
  %and2 = and i64 %7, 33554432, !dbg !5666
  %tobool3 = icmp ne i64 %and2, 0, !dbg !5666
  br i1 %tobool3, label %if.then4, label %if.else, !dbg !5667

if.then4:                                         ; preds = %if.then1
  %8 = load i32, ptr %dirty_flags, align 4, !dbg !5668
  %or = or i32 %8, 2048, !dbg !5668
  store i32 %or, ptr %dirty_flags, align 4, !dbg !5668
  br label %if.end6, !dbg !5669

if.else:                                          ; preds = %if.then1
  %9 = load i32, ptr %dirty_flags, align 4, !dbg !5670
  %or5 = or i32 %9, 1, !dbg !5670
  store i32 %or5, ptr %dirty_flags, align 4, !dbg !5670
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then4
  br label %if.end7, !dbg !5671

if.end7:                                          ; preds = %if.end6, %if.end
  %10 = load ptr, ptr %inode.addr, align 8, !dbg !5672
  %11 = load i32, ptr %dirty_flags, align 4, !dbg !5673
  call void @__mark_inode_dirty(ptr noundef %10, i32 noundef %11) #14, !dbg !5674
  store i32 0, ptr %retval, align 4, !dbg !5675
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5675

cleanup:                                          ; preds = %if.end7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %dirty_flags) #13, !dbg !5676
  %12 = load i32, ptr %retval, align 4, !dbg !5676
  ret i32 %12, !dbg !5676
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5677 dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @fat_sync_bhs(ptr noundef %bhs, i32 noundef %nr_bhs) #7 align 16 !dbg !5678 {
entry:
  %bhs.addr = alloca ptr, align 8
  %nr_bhs.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %err = alloca i32, align 4
  store ptr %bhs, ptr %bhs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bhs.addr, metadata !5683, metadata !DIExpression()), !dbg !5687
  store i32 %nr_bhs, ptr %nr_bhs.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr_bhs.addr, metadata !5684, metadata !DIExpression()), !dbg !5688
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !5689
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5685, metadata !DIExpression()), !dbg !5690
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #13, !dbg !5689
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5686, metadata !DIExpression()), !dbg !5691
  store i32 0, ptr %err, align 4, !dbg !5691
  store i32 0, ptr %i, align 4, !dbg !5692
  br label %for.cond, !dbg !5694

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !5695
  %1 = load i32, ptr %nr_bhs.addr, align 4, !dbg !5697
  %cmp = icmp slt i32 %0, %1, !dbg !5698
  br i1 %cmp, label %for.body, label %for.end, !dbg !5699

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %bhs.addr, align 8, !dbg !5700
  %3 = load i32, ptr %i, align 4, !dbg !5701
  %idxprom = sext i32 %3 to i64, !dbg !5700
  %arrayidx = getelementptr ptr, ptr %2, i64 %idxprom, !dbg !5700
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !5700
  call void @write_dirty_buffer(ptr noundef %4, i32 noundef 0) #14, !dbg !5702
  br label %for.inc, !dbg !5702

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4, !dbg !5703
  %inc = add i32 %5, 1, !dbg !5703
  store i32 %inc, ptr %i, align 4, !dbg !5703
  br label %for.cond, !dbg !5704, !llvm.loop !5705

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !dbg !5707
  br label %for.cond1, !dbg !5709

for.cond1:                                        ; preds = %for.inc9, %for.end
  %6 = load i32, ptr %i, align 4, !dbg !5710
  %7 = load i32, ptr %nr_bhs.addr, align 4, !dbg !5712
  %cmp2 = icmp slt i32 %6, %7, !dbg !5713
  br i1 %cmp2, label %for.body3, label %for.end11, !dbg !5714

for.body3:                                        ; preds = %for.cond1
  %8 = load ptr, ptr %bhs.addr, align 8, !dbg !5715
  %9 = load i32, ptr %i, align 4, !dbg !5717
  %idxprom4 = sext i32 %9 to i64, !dbg !5715
  %arrayidx5 = getelementptr ptr, ptr %8, i64 %idxprom4, !dbg !5715
  %10 = load ptr, ptr %arrayidx5, align 8, !dbg !5715
  call void @wait_on_buffer(ptr noundef %10) #14, !dbg !5718
  %11 = load i32, ptr %err, align 4, !dbg !5719
  %tobool = icmp ne i32 %11, 0, !dbg !5719
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !5721

land.lhs.true:                                    ; preds = %for.body3
  %12 = load ptr, ptr %bhs.addr, align 8, !dbg !5722
  %13 = load i32, ptr %i, align 4, !dbg !5723
  %idxprom6 = sext i32 %13 to i64, !dbg !5722
  %arrayidx7 = getelementptr ptr, ptr %12, i64 %idxprom6, !dbg !5722
  %14 = load ptr, ptr %arrayidx7, align 8, !dbg !5722
  %call = call i32 @buffer_uptodate(ptr noundef %14) #14, !dbg !5724
  %tobool8 = icmp ne i32 %call, 0, !dbg !5724
  br i1 %tobool8, label %if.end, label %if.then, !dbg !5725

if.then:                                          ; preds = %land.lhs.true
  store i32 -5, ptr %err, align 4, !dbg !5726
  br label %if.end, !dbg !5727

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body3
  br label %for.inc9, !dbg !5728

for.inc9:                                         ; preds = %if.end
  %15 = load i32, ptr %i, align 4, !dbg !5729
  %inc10 = add i32 %15, 1, !dbg !5729
  store i32 %inc10, ptr %i, align 4, !dbg !5729
  br label %for.cond1, !dbg !5730, !llvm.loop !5731

for.end11:                                        ; preds = %for.cond1
  %16 = load i32, ptr %err, align 4, !dbg !5733
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #13, !dbg !5734
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !5734
  ret i32 %16, !dbg !5735
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5736 dso_local void @write_dirty_buffer(ptr noundef, i32 noundef) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @wait_on_buffer(ptr noundef %bh) #3 align 16 !dbg !5740 {
entry:
  %bh.addr = alloca ptr, align 8
  store ptr %bh, ptr %bh.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bh.addr, metadata !5742, metadata !DIExpression()), !dbg !5743
  br label %do.body, !dbg !5744

do.body:                                          ; preds = %entry
  call void @might_resched() #14, !dbg !5745
  br label %do.end, !dbg !5745

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %bh.addr, align 8, !dbg !5747
  %call = call i32 @buffer_locked(ptr noundef %0) #14, !dbg !5749
  %tobool = icmp ne i32 %call, 0, !dbg !5749
  br i1 %tobool, label %if.then, label %if.end, !dbg !5750

if.then:                                          ; preds = %do.end
  %1 = load ptr, ptr %bh.addr, align 8, !dbg !5751
  call void @__wait_on_buffer(ptr noundef %1) #14, !dbg !5752
  br label %if.end, !dbg !5752

if.end:                                           ; preds = %if.then, %do.end
  ret void, !dbg !5753
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @buffer_uptodate(ptr noundef %bh) #10 align 16 !dbg !5754 {
entry:
  %bh.addr = alloca ptr, align 8
  store ptr %bh, ptr %bh.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bh.addr, metadata !5760, metadata !DIExpression()), !dbg !5761
  %0 = load ptr, ptr %bh.addr, align 8, !dbg !5762
  %b_state = getelementptr inbounds %struct.buffer_head, ptr %0, i32 0, i32 0, !dbg !5762
  %1 = ptrtoint ptr %b_state to i64, !dbg !5762
  %cmp = icmp ne i64 %1, 0, !dbg !5762
  %conv = zext i1 %cmp to i32, !dbg !5762
  %2 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !5762
  br i1 %2, label %land.lhs.true, label %cond.false, !dbg !5762

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %bh.addr, align 8, !dbg !5762
  %b_state1 = getelementptr inbounds %struct.buffer_head, ptr %3, i32 0, i32 0, !dbg !5762
  %4 = ptrtoint ptr %b_state1 to i64, !dbg !5762
  %cmp2 = icmp ne i64 %4, 0, !dbg !5762
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !5762

land.lhs.true4:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %bh.addr, align 8, !dbg !5762
  %b_state5 = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 0, !dbg !5762
  %6 = load i64, ptr %b_state5, align 8, !dbg !5762
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !5762
  br i1 %7, label %cond.true, label %cond.false, !dbg !5762

cond.true:                                        ; preds = %land.lhs.true4
  %8 = load ptr, ptr %bh.addr, align 8, !dbg !5762
  %b_state6 = getelementptr inbounds %struct.buffer_head, ptr %8, i32 0, i32 0, !dbg !5762
  %call = call zeroext i1 @generic_test_bit_acquire(i64 noundef 0, ptr noundef %b_state6) #14, !dbg !5762
  %conv7 = zext i1 %call to i32, !dbg !5762
  br label %cond.end, !dbg !5762

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true, %entry
  %9 = load ptr, ptr %bh.addr, align 8, !dbg !5762
  %b_state8 = getelementptr inbounds %struct.buffer_head, ptr %9, i32 0, i32 0, !dbg !5762
  %call9 = call zeroext i1 @_test_bit_acquire(i64 noundef 0, ptr noundef %b_state8) #14, !dbg !5762
  %conv10 = zext i1 %call9 to i32, !dbg !5762
  br label %cond.end, !dbg !5762

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv7, %cond.true ], [ %conv10, %cond.false ], !dbg !5762
  ret i32 %cond, !dbg !5763
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5764 dso_local ptr @__bread_gfp(ptr noundef, i64 noundef, i32 noundef, i32 noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5767 dso_local void @__brelse(ptr noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_resched() #10 align 16 !dbg !4608 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__might_resched, ptr %tmp, align 8, !dbg !5768
  %0 = load ptr, ptr %tmp, align 8, !dbg !5768
  %call = call i32 %0() #14, !dbg !5770
  ret void, !dbg !5771
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @buffer_locked(ptr noundef %bh) #10 align 16 !dbg !5772 {
entry:
  %bh.addr = alloca ptr, align 8
  store ptr %bh, ptr %bh.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bh.addr, metadata !5774, metadata !DIExpression()), !dbg !5775
  %0 = load ptr, ptr %bh.addr, align 8, !dbg !5775
  %b_state = getelementptr inbounds %struct.buffer_head, ptr %0, i32 0, i32 0, !dbg !5775
  %1 = ptrtoint ptr %b_state to i64, !dbg !5775
  %cmp = icmp ne i64 %1, 0, !dbg !5775
  %conv = zext i1 %cmp to i32, !dbg !5775
  %2 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !5775
  br i1 %2, label %land.lhs.true, label %cond.false, !dbg !5775

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %bh.addr, align 8, !dbg !5775
  %b_state1 = getelementptr inbounds %struct.buffer_head, ptr %3, i32 0, i32 0, !dbg !5775
  %4 = ptrtoint ptr %b_state1 to i64, !dbg !5775
  %cmp2 = icmp ne i64 %4, 0, !dbg !5775
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !5775

land.lhs.true4:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %bh.addr, align 8, !dbg !5775
  %b_state5 = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 0, !dbg !5775
  %6 = load i64, ptr %b_state5, align 8, !dbg !5775
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !5775
  br i1 %7, label %cond.true, label %cond.false, !dbg !5775

cond.true:                                        ; preds = %land.lhs.true4
  %8 = load ptr, ptr %bh.addr, align 8, !dbg !5775
  %b_state6 = getelementptr inbounds %struct.buffer_head, ptr %8, i32 0, i32 0, !dbg !5775
  %call = call zeroext i1 @const_test_bit(i64 noundef 2, ptr noundef %b_state6) #14, !dbg !5775
  %conv7 = zext i1 %call to i32, !dbg !5775
  br label %cond.end, !dbg !5775

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true, %entry
  %9 = load ptr, ptr %bh.addr, align 8, !dbg !5775
  %b_state8 = getelementptr inbounds %struct.buffer_head, ptr %9, i32 0, i32 0, !dbg !5775
  %call9 = call zeroext i1 @_test_bit(i64 noundef 2, ptr noundef %b_state8) #14, !dbg !5775
  %conv10 = zext i1 %call9 to i32, !dbg !5775
  br label %cond.end, !dbg !5775

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv7, %cond.true ], [ %conv10, %cond.false ], !dbg !5775
  ret i32 %cond, !dbg !5775
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5776 dso_local void @__wait_on_buffer(ptr noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() #8

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #11

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #10 align 16 !dbg !5777 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5782, metadata !DIExpression()), !dbg !5787
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5783, metadata !DIExpression()), !dbg !5788
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #13, !dbg !5789
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5784, metadata !DIExpression()), !dbg !5790
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5791
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5792
  %div = udiv i64 %1, 64, !dbg !5792
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5793
  store ptr %add.ptr, ptr %p, align 8, !dbg !5790
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #13, !dbg !5794
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !5785, metadata !DIExpression()), !dbg !5795
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5796
  %rem = urem i64 %2, 64, !dbg !5796
  %shl = shl i64 1, %rem, !dbg !5796
  store i64 %shl, ptr %mask, align 8, !dbg !5795
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #13, !dbg !5797
  call void @llvm.dbg.declare(metadata ptr %val, metadata !5786, metadata !DIExpression()), !dbg !5798
  %3 = load ptr, ptr %p, align 8, !dbg !5799
  %4 = load i64, ptr %3, align 8, !dbg !5800
  store i64 %4, ptr %val, align 8, !dbg !5798
  %5 = load i64, ptr %val, align 8, !dbg !5801
  %6 = load i64, ptr %mask, align 8, !dbg !5802
  %and = and i64 %5, %6, !dbg !5803
  %tobool = icmp ne i64 %and, 0, !dbg !5804
  %lnot = xor i1 %tobool, true, !dbg !5804
  %lnot1 = xor i1 %lnot, true, !dbg !5805
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #13, !dbg !5806
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #13, !dbg !5806
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #13, !dbg !5806
  ret i1 %lnot1, !dbg !5807
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #10 align 16 !dbg !5808 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5811, metadata !DIExpression()), !dbg !5813
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5812, metadata !DIExpression()), !dbg !5814
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5815
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5816
  %div = udiv i64 %1, 64, !dbg !5816
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5817
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #14, !dbg !5818
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5819
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5820
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #14, !dbg !5821
  ret i1 %call, !dbg !5822
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #10 align 16 !dbg !5823 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5831, metadata !DIExpression()), !dbg !5833
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5832, metadata !DIExpression()), !dbg !5834
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5835
  %1 = load i64, ptr %size.addr, align 8, !dbg !5836
  %conv = trunc i64 %1 to i32, !dbg !5836
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #14, !dbg !5837
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5838
  %3 = load i64, ptr %size.addr, align 8, !dbg !5838
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #14, !dbg !5838
  ret void, !dbg !5839
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #10 align 16 !dbg !5840 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5843, metadata !DIExpression()), !dbg !5845
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5844, metadata !DIExpression()), !dbg !5846
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5847
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5848
  br i1 %1, label %cond.true, label %cond.false, !dbg !5848

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5849
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5850
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #14, !dbg !5851
  %conv = zext i1 %call to i32, !dbg !5851
  br label %cond.end, !dbg !5848

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !5852
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !5853
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #14, !dbg !5854
  %conv2 = zext i1 %call1 to i32, !dbg !5854
  br label %cond.end, !dbg !5848

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !5848
  %tobool = icmp ne i32 %cond, 0, !dbg !5848
  ret i1 %tobool, !dbg !5855
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !5856 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5861, metadata !DIExpression()), !dbg !5863
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5862, metadata !DIExpression()), !dbg !5864
  ret i1 true, !dbg !5865
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !5866 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5871, metadata !DIExpression()), !dbg !5874
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5872, metadata !DIExpression()), !dbg !5875
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5873, metadata !DIExpression()), !dbg !5876
  ret void, !dbg !5877
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #10 align 16 !dbg !5878 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5882, metadata !DIExpression()), !dbg !5884
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5883, metadata !DIExpression()), !dbg !5885
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5886
  %and = and i64 %0, 63, !dbg !5887
  %shl = shl i64 1, %and, !dbg !5888
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5889
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5890
  %shr = ashr i64 %2, 6, !dbg !5891
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !5889
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !5889
  %and1 = and i64 %shl, %3, !dbg !5892
  %cmp = icmp ne i64 %and1, 0, !dbg !5893
  ret i1 %cmp, !dbg !5894
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #10 align 16 !dbg !5895 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5897, metadata !DIExpression()), !dbg !5900
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5898, metadata !DIExpression()), !dbg !5901
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #13, !dbg !5902
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !5899, metadata !DIExpression()), !dbg !5903
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5904
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5905
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #13, !dbg !5906, !srcloc !5907
  %3 = icmp ult i8 %2, 2, !dbg !5906
  call void @llvm.assume(i1 %3), !dbg !5906
  store i8 %2, ptr %oldbit, align 1, !dbg !5906
  %4 = load i8, ptr %oldbit, align 1, !dbg !5908, !range !5909, !noundef !838
  %tobool = trunc i8 %4 to i1, !dbg !5908
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #13, !dbg !5910
  ret i1 %tobool, !dbg !5911
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @generic_test_bit_acquire(i64 noundef %nr, ptr noundef %addr) #10 align 16 !dbg !5912 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %___p1 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp4 = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5914, metadata !DIExpression()), !dbg !5919
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5915, metadata !DIExpression()), !dbg !5920
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #13, !dbg !5921
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5916, metadata !DIExpression()), !dbg !5922
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5923
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5924
  %div = udiv i64 %1, 64, !dbg !5924
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5925
  store ptr %add.ptr, ptr %p, align 8, !dbg !5922
  call void @llvm.lifetime.start.p0(i64 8, ptr %___p1) #13, !dbg !5926
  call void @llvm.dbg.declare(metadata ptr %___p1, metadata !5917, metadata !DIExpression()), !dbg !5926
  br label %do.body, !dbg !5927

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5929

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5929

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %p, align 8, !dbg !5927
  %3 = load volatile i64, ptr %2, align 8, !dbg !5927
  store i64 %3, ptr %tmp, align 8, !dbg !5929
  %4 = load i64, ptr %tmp, align 8, !dbg !5927
  store i64 %4, ptr %___p1, align 8, !dbg !5926
  br label %do.body1, !dbg !5926

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !5931

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !5931

do.end3:                                          ; preds = %do.cond2
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !5926, !srcloc !5933
  %5 = load i64, ptr %___p1, align 8, !dbg !5926
  store i64 %5, ptr %tmp4, align 8, !dbg !5926
  call void @llvm.lifetime.end.p0(i64 8, ptr %___p1) #13, !dbg !5934
  %6 = load i64, ptr %tmp4, align 8, !dbg !5926
  %7 = load i64, ptr %nr.addr, align 8, !dbg !5935
  %and = and i64 %7, 63, !dbg !5936
  %shr = lshr i64 %6, %and, !dbg !5937
  %and5 = and i64 1, %shr, !dbg !5938
  %tobool = icmp ne i64 %and5, 0, !dbg !5939
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #13, !dbg !5940
  ret i1 %tobool, !dbg !5941
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit_acquire(i64 noundef %nr, ptr noundef %addr) #10 align 16 !dbg !5942 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5944, metadata !DIExpression()), !dbg !5946
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5945, metadata !DIExpression()), !dbg !5947
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5948
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5949
  %div = udiv i64 %1, 64, !dbg !5949
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5950
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #14, !dbg !5951
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5952
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5953
  %call = call zeroext i1 @arch_test_bit_acquire(i64 noundef %2, ptr noundef %3) #14, !dbg !5954
  ret i1 %call, !dbg !5955
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit_acquire(i64 noundef %nr, ptr noundef %addr) #10 align 16 !dbg !5956 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5958, metadata !DIExpression()), !dbg !5960
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5959, metadata !DIExpression()), !dbg !5961
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5962
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5963
  br i1 %1, label %cond.true, label %cond.false, !dbg !5963

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5964
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5965
  %call = call zeroext i1 @constant_test_bit_acquire(i64 noundef %2, ptr noundef %3) #14, !dbg !5966
  %conv = zext i1 %call to i32, !dbg !5966
  br label %cond.end, !dbg !5963

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !5967
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !5968
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #14, !dbg !5969
  %conv2 = zext i1 %call1 to i32, !dbg !5969
  br label %cond.end, !dbg !5963

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !5963
  %tobool = icmp ne i32 %cond, 0, !dbg !5963
  ret i1 %tobool, !dbg !5970
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit_acquire(i64 noundef %nr, ptr noundef %addr) #10 align 16 !dbg !5971 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5973, metadata !DIExpression()), !dbg !5976
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5974, metadata !DIExpression()), !dbg !5977
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #13, !dbg !5978
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !5975, metadata !DIExpression()), !dbg !5979
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5980
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5981
  %shr = ashr i64 %1, 3, !dbg !5982
  %arrayidx = getelementptr i8, ptr %0, i64 %shr, !dbg !5983
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5984
  %and = and i64 %2, 7, !dbg !5985
  %sh_prom = trunc i64 %and to i32, !dbg !5986
  %shl = shl i32 1, %sh_prom, !dbg !5986
  %3 = call i8 asm sideeffect "testb $2,$1\0A\09/* output condition code nz*/\0A", "={@ccnz},*m,i,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %arrayidx, i32 %shl) #13, !dbg !5987, !srcloc !5988
  %4 = icmp ult i8 %3, 2, !dbg !5987
  call void @llvm.assume(i1 %4), !dbg !5987
  store i8 %3, ptr %oldbit, align 1, !dbg !5987
  %5 = load i8, ptr %oldbit, align 1, !dbg !5989, !range !5909, !noundef !838
  %tobool = trunc i8 %5 to i1, !dbg !5989
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #13, !dbg !5990
  ret i1 %tobool, !dbg !5991
}

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold noredzone noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { noredzone }
attributes #15 = { cold noredzone }
attributes #16 = { cold noredzone noreturn }

!llvm.dbg.cu = !{!24}
!llvm.module.flags = !{!4610, !4611, !4612, !4613, !4614, !4615, !4616, !4617}
!llvm.ident = !{!4618}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 31, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "fs/fat/misc.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "798f76b25a77ce9feef6e9dfdf7fbeac")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 3)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 31, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 11)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 36, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 43)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 39, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 34)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___fat_fs_error320", scope: !24, file: !2, line: 42, type: !194, isLocal: true, isDefinition: true)
!24 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/fat/.misc.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/fat/fat\22 -D KBUILD_BASENAME=\22misc\22 -D KBUILD_MODNAME=\22fat\22 -D __KBUILD_MODNAME=kmod_fat -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/fat/misc.ll fs/fat/misc.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !25, retainedTypes: !193, globals: !4579, splitDebugInlining: false, nameTableKind: None)
!25 = !{!26, !35, !42, !50, !66, !73, !79, !84, !90, !96, !103, !108, !116, !124, !133, !138, !143, !149, !155, !162, !168, !188}
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !27, line: 9, baseType: !28, size: 32, elements: !29)
!27 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!28 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!29 = !{!30, !31, !32, !33, !34}
!30 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!31 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!32 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!33 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!34 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !36, line: 312, baseType: !28, size: 32, elements: !37)
!36 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!37 = !{!38, !39, !40, !41}
!38 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!39 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!40 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!41 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !43, line: 68, baseType: !28, size: 32, elements: !44)
!43 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!44 = !{!45, !46, !47, !48, !49}
!45 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!46 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!47 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!48 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!49 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !51, line: 1325, baseType: !28, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!52 = !{!53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65}
!53 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!54 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!55 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!56 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!57 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!58 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!59 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!60 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!61 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!62 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!63 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!64 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!65 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !67, line: 15, baseType: !28, size: 32, elements: !68)
!67 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!68 = !{!69, !70, !71, !72}
!69 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!70 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!71 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!72 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !74, line: 26, baseType: !28, size: 32, elements: !75)
!74 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!75 = !{!76, !77, !78}
!76 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!77 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!78 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !80, line: 2052, baseType: !28, size: 32, elements: !81)
!80 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!81 = !{!82, !83}
!82 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!83 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !85, line: 54, baseType: !28, size: 32, elements: !86)
!85 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!86 = !{!87, !88, !89}
!87 = !DIEnumerator(name: "USRQUOTA", value: 0)
!88 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!89 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!90 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !91, line: 45, baseType: !28, size: 32, elements: !92)
!91 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!92 = !{!93, !94, !95}
!93 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!94 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!95 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!96 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !97, line: 487, baseType: !28, size: 32, elements: !98)
!97 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!98 = !{!99, !100, !101, !102}
!99 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!100 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!101 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!102 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!103 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !104, line: 65, baseType: !28, size: 32, elements: !105)
!104 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!105 = !{!106, !107}
!106 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!107 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !109, line: 620, baseType: !28, size: 32, elements: !110)
!109 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!110 = !{!111, !112, !113, !114, !115}
!111 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!112 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!113 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!114 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!115 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !109, line: 597, baseType: !117, size: 32, elements: !118)
!117 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!118 = !{!119, !120, !121, !122, !123}
!119 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!120 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!121 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!122 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!123 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!124 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !97, line: 547, baseType: !28, size: 32, elements: !125)
!125 = !{!126, !127, !128, !129, !130, !131, !132}
!126 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!127 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!128 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!129 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!130 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!131 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!132 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!133 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !97, line: 564, baseType: !28, size: 32, elements: !134)
!134 = !{!135, !136, !137}
!135 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!136 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!137 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!138 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !97, line: 577, baseType: !28, size: 32, elements: !139)
!139 = !{!140, !141, !142}
!140 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!141 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!142 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!143 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !97, line: 503, baseType: !28, size: 32, elements: !144)
!144 = !{!145, !146, !147, !148}
!145 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!146 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!147 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!148 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !150, line: 16, baseType: !28, size: 32, elements: !151)
!150 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!151 = !{!152, !153, !154}
!152 = !DIEnumerator(name: "TT_NONE", value: 0)
!153 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!154 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!155 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !156, line: 51, baseType: !28, size: 32, elements: !157)
!156 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!157 = !{!158, !159, !160, !161}
!158 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!159 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!160 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!161 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!162 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "file_time_flags", file: !80, line: 2344, baseType: !28, size: 32, elements: !163)
!163 = !{!164, !165, !166, !167}
!164 = !DIEnumerator(name: "S_ATIME", value: 1)
!165 = !DIEnumerator(name: "S_MTIME", value: 2)
!166 = !DIEnumerator(name: "S_CTIME", value: 4)
!167 = !DIEnumerator(name: "S_VERSION", value: 8)
!168 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "bh_state_bits", file: !169, line: 19, baseType: !28, size: 32, elements: !170)
!169 = !DIFile(filename: "./include/linux/buffer_head.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc335f14f0fab7e7c331101f97325549")
!170 = !{!171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187}
!171 = !DIEnumerator(name: "BH_Uptodate", value: 0)
!172 = !DIEnumerator(name: "BH_Dirty", value: 1)
!173 = !DIEnumerator(name: "BH_Lock", value: 2)
!174 = !DIEnumerator(name: "BH_Req", value: 3)
!175 = !DIEnumerator(name: "BH_Mapped", value: 4)
!176 = !DIEnumerator(name: "BH_New", value: 5)
!177 = !DIEnumerator(name: "BH_Async_Read", value: 6)
!178 = !DIEnumerator(name: "BH_Async_Write", value: 7)
!179 = !DIEnumerator(name: "BH_Delay", value: 8)
!180 = !DIEnumerator(name: "BH_Boundary", value: 9)
!181 = !DIEnumerator(name: "BH_Write_EIO", value: 10)
!182 = !DIEnumerator(name: "BH_Unwritten", value: 11)
!183 = !DIEnumerator(name: "BH_Quiet", value: 12)
!184 = !DIEnumerator(name: "BH_Meta", value: 13)
!185 = !DIEnumerator(name: "BH_Prio", value: 14)
!186 = !DIEnumerator(name: "BH_Defer_Completion", value: 15)
!187 = !DIEnumerator(name: "BH_PrivateStart", value: 16)
!188 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !189, line: 10, baseType: !28, size: 32, elements: !190)
!189 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!190 = !{!191, !192}
!191 = !DIEnumerator(name: "false", value: 0)
!192 = !DIEnumerator(name: "true", value: 1)
!193 = !{!194, !195, !202, !200, !215, !218, !220, !221, !225, !227, !4573, !4574, !2303, !4575, !4578}
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fat_boot_fsinfo", file: !197, line: 163, size: 4096, elements: !198)
!197 = !DIFile(filename: "./include/uapi/linux/msdos_fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c3cb8f933672ca730d2ef7b5cb690cdb")
!198 = !{!199, !204, !208, !209, !210, !211}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "signature1", scope: !196, file: !197, line: 164, baseType: !200, size: 32)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !201, line: 38, baseType: !202)
!201 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !203, line: 27, baseType: !28)
!203 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!204 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !196, file: !197, line: 165, baseType: !205, size: 3840, offset: 32)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 3840, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 120)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "signature2", scope: !196, file: !197, line: 166, baseType: !200, size: 32, offset: 3872)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "free_clusters", scope: !196, file: !197, line: 167, baseType: !200, size: 32, offset: 3904)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "next_cluster", scope: !196, file: !197, line: 168, baseType: !200, size: 32, offset: 3936)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !196, file: !197, line: 169, baseType: !212, size: 128, offset: 3968)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 128, elements: !213)
!213 = !{!214}
!214 = !DISubrange(count: 4)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "llu", file: !216, line: 474, baseType: !217)
!216 = !DIFile(filename: "fs/fat/fat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "83afc15ac4ff27e2fd85303f483c9bf6")
!217 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !203, line: 24, baseType: !219)
!219 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !201, line: 36, baseType: !218)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !222, line: 8, baseType: !223)
!222 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !203, line: 30, baseType: !224)
!224 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !226, line: 154, baseType: !28)
!226 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msdos_inode_info", file: !216, line: 112, size: 6016, elements: !229)
!229 = !{!230, !270, !276, !277, !278, !282, !283, !284, !285, !286, !293, !294, !315, !321}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "cache_lru_lock", scope: !228, file: !216, line: 113, baseType: !231, size: 32)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !232, line: 29, baseType: !233)
!232 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !232, line: 17, size: 32, elements: !234)
!234 = !{!235}
!235 = !DIDerivedType(tag: DW_TAG_member, scope: !233, file: !232, line: 18, baseType: !236, size: 32)
!236 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !233, file: !232, line: 18, size: 32, elements: !237)
!237 = !{!238}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !236, file: !232, line: 19, baseType: !239, size: 32)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !240, line: 14, size: 32, elements: !241)
!240 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!241 = !{!242}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !239, file: !240, line: 15, baseType: !243, size: 32)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !244, line: 44, baseType: !245)
!244 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !244, line: 14, size: 32, elements: !246)
!246 = !{!247}
!247 = !DIDerivedType(tag: DW_TAG_member, scope: !245, file: !244, line: 15, baseType: !248, size: 32)
!248 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !245, file: !244, line: 15, size: 32, elements: !249)
!249 = !{!250, !255, !264}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !248, file: !244, line: 16, baseType: !251, size: 32)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !226, line: 174, baseType: !252)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !226, line: 172, size: 32, elements: !253)
!253 = !{!254}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !252, file: !226, line: 173, baseType: !117, size: 32)
!255 = !DIDerivedType(tag: DW_TAG_member, scope: !248, file: !244, line: 24, baseType: !256, size: 16)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !248, file: !244, line: 24, size: 16, elements: !257)
!257 = !{!258, !263}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !256, file: !244, line: 25, baseType: !259, size: 8)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !260, line: 17, baseType: !261)
!260 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !203, line: 21, baseType: !262)
!262 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !256, file: !244, line: 26, baseType: !259, size: 8, offset: 8)
!264 = !DIDerivedType(tag: DW_TAG_member, scope: !248, file: !244, line: 28, baseType: !265, size: 32)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !248, file: !244, line: 28, size: 32, elements: !266)
!266 = !{!267, !269}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !265, file: !244, line: 29, baseType: !268, size: 16)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !260, line: 19, baseType: !218)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !265, file: !244, line: 30, baseType: !268, size: 16, offset: 16)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "cache_lru", scope: !228, file: !216, line: 114, baseType: !271, size: 128, offset: 64)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !226, line: 190, size: 128, elements: !272)
!272 = !{!273, !275}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !271, file: !226, line: 191, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !271, file: !226, line: 191, baseType: !274, size: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "nr_caches", scope: !228, file: !216, line: 115, baseType: !117, size: 32, offset: 192)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "cache_valid_id", scope: !228, file: !216, line: 117, baseType: !28, size: 32, offset: 224)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "mmu_private", scope: !228, file: !216, line: 120, baseType: !279, size: 64, offset: 256)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !226, line: 52, baseType: !280)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !281, line: 88, baseType: !224)
!281 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!282 = !DIDerivedType(tag: DW_TAG_member, name: "i_start", scope: !228, file: !216, line: 122, baseType: !117, size: 32, offset: 320)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "i_logstart", scope: !228, file: !216, line: 123, baseType: !117, size: 32, offset: 352)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "i_attrs", scope: !228, file: !216, line: 124, baseType: !117, size: 32, offset: 384)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "i_pos", scope: !228, file: !216, line: 125, baseType: !279, size: 64, offset: 448)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "i_fat_hash", scope: !228, file: !216, line: 126, baseType: !287, size: 128, offset: 512)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !226, line: 198, size: 128, elements: !288)
!288 = !{!289, !291}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !287, file: !226, line: 199, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !287, file: !226, line: 199, baseType: !292, size: 64, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_hash", scope: !228, file: !216, line: 127, baseType: !287, size: 128, offset: 640)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "truncate_lock", scope: !228, file: !216, line: 128, baseType: !295, size: 320, offset: 768)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !296, line: 48, size: 320, elements: !297)
!296 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!297 = !{!298, !306, !307, !312, !314}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !295, file: !296, line: 49, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !300, line: 13, baseType: !301)
!300 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !226, line: 181, baseType: !302)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !226, line: 179, size: 64, elements: !303)
!303 = !{!304}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !302, file: !226, line: 180, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !260, line: 22, baseType: !223)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !295, file: !296, line: 55, baseType: !299, size: 64, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !295, file: !296, line: 57, baseType: !308, size: 32, offset: 128)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !309, line: 15, size: 32, elements: !310)
!309 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!310 = !{!311}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !308, file: !309, line: 20, baseType: !251, size: 32)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !295, file: !296, line: 59, baseType: !313, size: 32, offset: 160)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !240, line: 23, baseType: !239)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !295, file: !296, line: 60, baseType: !271, size: 128, offset: 192)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "i_crtime", scope: !228, file: !216, line: 129, baseType: !316, size: 128, offset: 1088)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !222, line: 13, size: 128, elements: !317)
!317 = !{!318, !319}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !316, file: !222, line: 14, baseType: !221, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !316, file: !222, line: 15, baseType: !320, size: 64, offset: 64)
!320 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "vfs_inode", scope: !228, file: !216, line: 130, baseType: !322, size: 4800, offset: 1216)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !80, line: 641, size: 4800, elements: !323)
!323 = !{!324, !326, !327, !335, !336, !343, !344, !347, !348, !4511, !4512, !4513, !4514, !4515, !4521, !4522, !4523, !4524, !4525, !4526, !4527, !4528, !4529, !4530, !4531, !4532, !4533, !4534, !4535, !4536, !4537, !4538, !4539, !4544, !4545, !4546, !4547, !4548, !4549, !4550, !4555, !4558, !4559, !4560, !4569, !4570, !4571, !4572}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !322, file: !80, line: 642, baseType: !325, size: 16)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !226, line: 24, baseType: !219)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !322, file: !80, line: 643, baseType: !219, size: 16, offset: 16)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !322, file: !80, line: 644, baseType: !328, size: 32, offset: 32)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !329, line: 23, baseType: !330)
!329 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !329, line: 21, size: 32, elements: !331)
!331 = !{!332}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !330, file: !329, line: 22, baseType: !333, size: 32)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !226, line: 37, baseType: !334)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !281, line: 49, baseType: !28)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !322, file: !80, line: 645, baseType: !271, size: 128, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !322, file: !80, line: 646, baseType: !337, size: 32, offset: 192)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !329, line: 28, baseType: !338)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !329, line: 26, size: 32, elements: !339)
!339 = !{!340}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !338, file: !329, line: 27, baseType: !341, size: 32)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !226, line: 38, baseType: !342)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !281, line: 50, baseType: !28)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !322, file: !80, line: 647, baseType: !28, size: 32, offset: 224)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !322, file: !80, line: 650, baseType: !345, size: 64, offset: 256)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !80, line: 607, flags: DIFlagFwdDecl)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !322, file: !80, line: 651, baseType: !345, size: 64, offset: 320)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !322, file: !80, line: 654, baseType: !349, size: 64, offset: 384)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !351)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !80, line: 1966, size: 2048, align: 512, elements: !352)
!352 = !{!353, !4349, !4359, !4363, !4367, !4371, !4375, !4379, !4383, !4387, !4391, !4392, !4396, !4400, !4433, !4462, !4466, !4472, !4476, !4480, !4484, !4488, !4492, !4498, !4502}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !351, file: !80, line: 1967, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DISubroutineType(types: !356)
!356 = !{!357, !400, !357, !28}
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !359, line: 82, size: 1536, elements: !360)
!359 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!360 = !{!361, !362, !372, !380, !381, !399, !401, !405, !418, !4332, !4333, !4334, !4335, !4341, !4342, !4343}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !358, file: !359, line: 84, baseType: !28, size: 32)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !358, file: !359, line: 85, baseType: !363, size: 32, offset: 32)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !364, line: 275, baseType: !365)
!364 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !364, line: 275, size: 32, elements: !366)
!366 = !{!367}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !365, file: !364, line: 275, baseType: !368, size: 32)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !364, line: 69, baseType: !369)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !364, line: 64, size: 32, elements: !370)
!370 = !{!371}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !369, file: !364, line: 65, baseType: !28, size: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !358, file: !359, line: 86, baseType: !373, size: 128, offset: 64)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !374, line: 38, size: 128, elements: !375)
!374 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!375 = !{!376, !378}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !373, file: !374, line: 39, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !373, file: !374, line: 39, baseType: !379, size: 64, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !358, file: !359, line: 87, baseType: !357, size: 64, offset: 192)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !358, file: !359, line: 88, baseType: !382, size: 128, offset: 256)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !359, line: 49, size: 128, elements: !383)
!383 = !{!384, !396}
!384 = !DIDerivedType(tag: DW_TAG_member, scope: !382, file: !359, line: 50, baseType: !385, size: 64)
!385 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !382, file: !359, line: 50, size: 64, elements: !386)
!386 = !{!387, !393}
!387 = !DIDerivedType(tag: DW_TAG_member, scope: !385, file: !359, line: 51, baseType: !388, size: 64)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !385, file: !359, line: 51, size: 64, elements: !389)
!389 = !{!390, !392}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !388, file: !359, line: 52, baseType: !391, size: 32)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !260, line: 21, baseType: !202)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !388, file: !359, line: 52, baseType: !391, size: 32, offset: 32)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !385, file: !359, line: 54, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !260, line: 23, baseType: !395)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !203, line: 31, baseType: !217)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !382, file: !359, line: 56, baseType: !397, size: 64, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !262)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !358, file: !359, line: 89, baseType: !400, size: 64, offset: 384)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !358, file: !359, line: 91, baseType: !402, size: 256, offset: 448)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 256, elements: !403)
!403 = !{!404}
!404 = !DISubrange(count: 32)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !358, file: !359, line: 94, baseType: !406, size: 64, offset: 704)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !407, line: 25, size: 64, elements: !408)
!407 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!408 = !{!409}
!409 = !DIDerivedType(tag: DW_TAG_member, scope: !406, file: !407, line: 26, baseType: !410, size: 64)
!410 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !406, file: !407, line: 26, size: 64, elements: !411)
!411 = !{!412, !413}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !410, file: !407, line: 28, baseType: !395, size: 64, align: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, scope: !410, file: !407, line: 30, baseType: !414, size: 64)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !410, file: !407, line: 30, size: 64, elements: !415)
!415 = !{!416, !417}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !414, file: !407, line: 31, baseType: !231, size: 32)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !414, file: !407, line: 32, baseType: !117, size: 32, offset: 32)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !358, file: !359, line: 95, baseType: !419, size: 64, offset: 768)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !421)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !359, line: 128, size: 1024, align: 512, elements: !422)
!422 = !{!423, !427, !428, !435, !443, !447, !451, !455, !456, !460, !465, !4322, !4326}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !421, file: !359, line: 129, baseType: !424, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DISubroutineType(types: !426)
!426 = !{!117, !357, !28}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !421, file: !359, line: 130, baseType: !424, size: 64, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !421, file: !359, line: 131, baseType: !429, size: 64, offset: 128)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{!117, !432, !434}
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !358)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !421, file: !359, line: 132, baseType: !436, size: 64, offset: 192)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DISubroutineType(types: !438)
!438 = !{!117, !432, !28, !439, !441}
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !382)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !421, file: !359, line: 134, baseType: !444, size: 64, offset: 256)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{!117, !432}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !421, file: !359, line: 135, baseType: !448, size: 64, offset: 320)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{!117, !357}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !421, file: !359, line: 136, baseType: !452, size: 64, offset: 384)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{null, !357}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !421, file: !359, line: 137, baseType: !452, size: 64, offset: 448)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !421, file: !359, line: 138, baseType: !457, size: 64, offset: 512)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{null, !357, !400}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !421, file: !359, line: 139, baseType: !461, size: 64, offset: 576)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DISubroutineType(types: !463)
!463 = !{!464, !357, !464, !117}
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !421, file: !359, line: 140, baseType: !466, size: 64, offset: 640)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{!469, !4321}
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !471, line: 70, size: 256, elements: !472)
!471 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!472 = !{!473, !474, !4317, !4318}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !470, file: !471, line: 71, baseType: !357, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !470, file: !471, line: 72, baseType: !475, size: 64, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !80, line: 1190, size: 10752, elements: !477)
!477 = !{!478, !479, !482, !483, !485, !486, !2332, !2464, !2504, !2589, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2606, !2610, !2611, !3071, !3074, !3077, !3080, !3081, !3082, !3123, !4250, !4251, !4252, !4253, !4254, !4255, !4258, !4260, !4267, !4268, !4269, !4270, !4271, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4308, !4309, !4310, !4311, !4312, !4313, !4314, !4315, !4316}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !476, file: !80, line: 1191, baseType: !271, size: 128)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !476, file: !80, line: 1192, baseType: !480, size: 32, offset: 128)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !226, line: 21, baseType: !481)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !226, line: 18, baseType: !391)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !476, file: !80, line: 1193, baseType: !262, size: 8, offset: 160)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !476, file: !80, line: 1194, baseType: !484, size: 64, offset: 192)
!484 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !476, file: !80, line: 1195, baseType: !279, size: 64, offset: 256)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !476, file: !80, line: 1196, baseType: !487, size: 64, offset: 320)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !80, line: 2366, size: 576, elements: !489)
!489 = !{!490, !491, !492, !498, !502, !506, !510, !2320, !2321, !2322, !2324, !2325, !2326, !2328, !2329, !2330, !2331}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !488, file: !80, line: 2367, baseType: !439, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !488, file: !80, line: 2368, baseType: !117, size: 32, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !488, file: !80, line: 2376, baseType: !493, size: 64, offset: 128)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{!117, !496}
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !471, line: 21, flags: DIFlagFwdDecl)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !488, file: !80, line: 2377, baseType: !499, size: 64, offset: 192)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !501)
!501 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !80, line: 75, flags: DIFlagFwdDecl)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !488, file: !80, line: 2378, baseType: !503, size: 64, offset: 256)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{!357, !487, !117, !439, !194}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !488, file: !80, line: 2380, baseType: !507, size: 64, offset: 320)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{null, !475}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !488, file: !80, line: 2381, baseType: !511, size: 64, offset: 384)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !36, line: 402, size: 9216, align: 512, elements: !513)
!513 = !{!514, !515, !516, !520, !1976, !2002, !2003, !2004, !2005, !2009, !2012, !2013, !2014, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2082, !2086, !2106, !2124, !2125, !2126, !2127, !2136, !2159, !2160, !2163, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2177, !2178, !2278, !2286, !2287, !2288, !2290, !2294, !2295, !2299, !2300, !2301, !2302, !2304, !2305, !2306, !2313, !2314, !2315, !2319}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !512, file: !36, line: 403, baseType: !35, size: 32)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !512, file: !36, line: 406, baseType: !271, size: 128, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !512, file: !36, line: 409, baseType: !517, size: 448, offset: 192)
!517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !518)
!518 = !{!519}
!519 = !DISubrange(count: 56)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !512, file: !36, line: 417, baseType: !521, size: 768, offset: 640)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !36, line: 45, size: 768, elements: !522)
!522 = !{!523, !1969, !1970, !1971, !1974}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !521, file: !36, line: 46, baseType: !524, size: 512)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !525, line: 64, size: 512, elements: !526)
!525 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!526 = !{!527, !528, !529, !531, !575, !1855, !1959, !1964, !1965, !1966, !1967, !1968}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !524, file: !525, line: 65, baseType: !439, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !524, file: !525, line: 66, baseType: !271, size: 128, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !524, file: !525, line: 67, baseType: !530, size: 64, offset: 192)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !524, file: !525, line: 68, baseType: !532, size: 64, offset: 256)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !525, line: 168, size: 768, elements: !534)
!534 = !{!535, !536, !537, !538}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !533, file: !525, line: 169, baseType: !271, size: 128)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !533, file: !525, line: 170, baseType: !231, size: 32, offset: 128)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !533, file: !525, line: 171, baseType: !524, size: 512, offset: 192)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !533, file: !525, line: 172, baseType: !539, size: 64, offset: 704)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !541)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !525, line: 133, size: 192, elements: !542)
!542 = !{!543, !550, !555}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !541, file: !525, line: 134, baseType: !544, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !545)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!117, !548}
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !524)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !541, file: !525, line: 135, baseType: !551, size: 64, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !552)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DISubroutineType(types: !554)
!554 = !{!439, !548}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !541, file: !525, line: 136, baseType: !556, size: 64, offset: 128)
!556 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !557)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{!117, !548, !560}
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !525, line: 125, size: 20736, elements: !562)
!562 = !{!563, !565, !569, !570, !574}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !561, file: !525, line: 126, baseType: !564, size: 192)
!564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 192, elements: !5)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !561, file: !525, line: 127, baseType: !566, size: 4096, offset: 192)
!566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 4096, elements: !567)
!567 = !{!568}
!568 = !DISubrange(count: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !561, file: !525, line: 128, baseType: !117, size: 32, offset: 4288)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !561, file: !525, line: 129, baseType: !571, size: 16384, offset: 4320)
!571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !572)
!572 = !{!573}
!573 = !DISubrange(count: 2048)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !561, file: !525, line: 130, baseType: !117, size: 32, offset: 20704)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !524, file: !525, line: 69, baseType: !576, size: 64, offset: 320)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !578)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !525, line: 116, size: 384, elements: !579)
!579 = !{!580, !584, !609, !1814, !1845, !1849}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !578, file: !525, line: 117, baseType: !581, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{null, !530}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !578, file: !525, line: 118, baseType: !585, size: 64, offset: 64)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !587)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !588, line: 254, size: 128, elements: !589)
!588 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!589 = !{!590, !602}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !587, file: !588, line: 255, baseType: !591, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DISubroutineType(types: !593)
!593 = !{!594, !530, !597, !464}
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !226, line: 66, baseType: !595)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !281, line: 73, baseType: !596)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !281, line: 15, baseType: !320)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !588, line: 30, size: 128, elements: !599)
!599 = !{!600, !601}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !598, file: !588, line: 31, baseType: !439, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !598, file: !588, line: 32, baseType: !325, size: 16, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !587, file: !588, line: 256, baseType: !603, size: 64, offset: 64)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DISubroutineType(types: !605)
!605 = !{!594, !530, !597, !439, !606}
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !226, line: 61, baseType: !607)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !281, line: 72, baseType: !608)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !281, line: 16, baseType: !484)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !578, file: !525, line: 119, baseType: !610, size: 64, offset: 128)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !613)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !588, line: 84, size: 320, elements: !614)
!614 = !{!615, !616, !620, !1810, !1812}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !613, file: !588, line: 85, baseType: !439, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !613, file: !588, line: 86, baseType: !617, size: 64, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DISubroutineType(types: !619)
!619 = !{!325, !530, !597, !117}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !613, file: !588, line: 88, baseType: !621, size: 64, offset: 128)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DISubroutineType(types: !623)
!623 = !{!325, !530, !624, !117}
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !588, line: 175, size: 512, elements: !626)
!626 = !{!627, !628, !629, !630, !1801, !1805, !1806}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !625, file: !588, line: 176, baseType: !598, size: 128)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !625, file: !588, line: 177, baseType: !606, size: 64, offset: 128)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !625, file: !588, line: 178, baseType: !194, size: 64, offset: 192)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !625, file: !588, line: 179, baseType: !631, size: 64, offset: 256)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{!634}
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !80, line: 472, size: 1536, align: 64, elements: !636)
!636 = !{!637, !638, !645, !646, !647, !648, !663, !664, !665, !1795, !1796, !1797, !1798, !1799, !1800}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !635, file: !80, line: 473, baseType: !400, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !635, file: !80, line: 474, baseType: !639, size: 128, offset: 64)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !640, line: 296, size: 128, elements: !641)
!640 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!641 = !{!642, !643, !644}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !639, file: !640, line: 297, baseType: !231, size: 32)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !639, file: !640, line: 299, baseType: !225, size: 32, offset: 32)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !639, file: !640, line: 300, baseType: !194, size: 64, offset: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !635, file: !80, line: 475, baseType: !295, size: 320, offset: 192)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !635, file: !80, line: 476, baseType: !225, size: 32, offset: 512)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !635, file: !80, line: 477, baseType: !251, size: 32, offset: 544)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !635, file: !80, line: 482, baseType: !649, size: 128, offset: 576)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !650, line: 26, size: 128, elements: !651)
!650 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!651 = !{!652, !662}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !649, file: !650, line: 27, baseType: !653, size: 64)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !650, line: 12, size: 64, elements: !654)
!654 = !{!655}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !653, file: !650, line: 13, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !650, line: 5, size: 192, align: 64, elements: !658)
!658 = !{!659, !660, !661}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !657, file: !650, line: 6, baseType: !484, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !657, file: !650, line: 7, baseType: !656, size: 64, offset: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !657, file: !650, line: 8, baseType: !656, size: 64, offset: 128)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !649, file: !650, line: 28, baseType: !656, size: 64, offset: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !635, file: !80, line: 483, baseType: !484, size: 64, offset: 704)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !635, file: !80, line: 484, baseType: !484, size: 64, offset: 768)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !635, file: !80, line: 485, baseType: !666, size: 64, offset: 832)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !668)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !80, line: 404, size: 1280, elements: !669)
!669 = !{!670, !1707, !1711, !1715, !1719, !1735, !1740, !1744, !1749, !1753, !1757, !1761, !1762, !1766, !1770, !1774, !1779, !1783, !1790, !1791}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !668, file: !80, line: 405, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DISubroutineType(types: !673)
!673 = !{!117, !674, !1705}
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !51, line: 74, size: 512, align: 128, elements: !676)
!676 = !{!677, !678, !1699, !1704}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !675, file: !51, line: 75, baseType: !484, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, scope: !675, file: !51, line: 83, baseType: !679, size: 320, offset: 64)
!679 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !675, file: !51, line: 83, size: 320, elements: !680)
!680 = !{!681, !702, !716, !720, !1698}
!681 = !DIDerivedType(tag: DW_TAG_member, scope: !679, file: !51, line: 84, baseType: !682, size: 320)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !679, file: !51, line: 84, size: 320, elements: !683)
!683 = !{!684, !695, !696, !701}
!684 = !DIDerivedType(tag: DW_TAG_member, scope: !682, file: !51, line: 90, baseType: !685, size: 128)
!685 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !682, file: !51, line: 90, size: 128, elements: !686)
!686 = !{!687, !688, !693, !694}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !685, file: !51, line: 91, baseType: !271, size: 128)
!688 = !DIDerivedType(tag: DW_TAG_member, scope: !685, file: !51, line: 94, baseType: !689, size: 128)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !685, file: !51, line: 94, size: 128, elements: !690)
!690 = !{!691, !692}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !689, file: !51, line: 96, baseType: !194, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !689, file: !51, line: 98, baseType: !28, size: 32, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !685, file: !51, line: 102, baseType: !271, size: 128)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !685, file: !51, line: 103, baseType: !271, size: 128)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !682, file: !51, line: 106, baseType: !634, size: 64, offset: 128)
!696 = !DIDerivedType(tag: DW_TAG_member, scope: !682, file: !51, line: 107, baseType: !697, size: 64, offset: 192)
!697 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !682, file: !51, line: 107, size: 64, elements: !698)
!698 = !{!699, !700}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !697, file: !51, line: 108, baseType: !484, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !697, file: !51, line: 109, baseType: !484, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !682, file: !51, line: 117, baseType: !484, size: 64, offset: 256)
!702 = !DIDerivedType(tag: DW_TAG_member, scope: !679, file: !51, line: 119, baseType: !703, size: 320)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !679, file: !51, line: 119, size: 320, elements: !704)
!704 = !{!705, !706, !709, !710, !711}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !703, file: !51, line: 124, baseType: !484, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !703, file: !51, line: 125, baseType: !707, size: 64, offset: 64)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !51, line: 125, flags: DIFlagFwdDecl)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !703, file: !51, line: 126, baseType: !484, size: 64, offset: 128)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !703, file: !51, line: 127, baseType: !484, size: 64, offset: 192)
!711 = !DIDerivedType(tag: DW_TAG_member, scope: !703, file: !51, line: 128, baseType: !712, size: 64, offset: 256)
!712 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !703, file: !51, line: 128, size: 64, elements: !713)
!713 = !{!714, !715}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !712, file: !51, line: 133, baseType: !484, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !712, file: !51, line: 138, baseType: !299, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, scope: !679, file: !51, line: 141, baseType: !717, size: 64)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !679, file: !51, line: 141, size: 64, elements: !718)
!718 = !{!719}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !717, file: !51, line: 142, baseType: !484, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, scope: !679, file: !51, line: 144, baseType: !721, size: 128)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !679, file: !51, line: 144, size: 128, elements: !722)
!722 = !{!723, !1697}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !721, file: !51, line: 146, baseType: !724, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !43, line: 126, size: 1216, elements: !726)
!726 = !{!727, !737, !768, !779, !780, !781, !782, !1679, !1680, !1681}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !725, file: !43, line: 127, baseType: !728, size: 384)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !43, line: 21, size: 384, elements: !729)
!729 = !{!730, !731, !733, !734, !735, !736}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !728, file: !43, line: 22, baseType: !484, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !728, file: !43, line: 23, baseType: !732, size: 64, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !484)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !728, file: !43, line: 24, baseType: !732, size: 64, offset: 128)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !728, file: !43, line: 25, baseType: !484, size: 64, offset: 192)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !728, file: !43, line: 26, baseType: !484, size: 64, offset: 256)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !728, file: !43, line: 27, baseType: !484, size: 64, offset: 320)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !725, file: !43, line: 128, baseType: !738, size: 128, offset: 384)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !739, line: 105, size: 128, elements: !740)
!739 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!740 = !{!741, !742}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !738, file: !739, line: 110, baseType: !484, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !738, file: !739, line: 118, baseType: !743, size: 64, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !739, line: 95, size: 448, elements: !745)
!745 = !{!746, !747, !753, !754, !757, !758, !767}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !744, file: !739, line: 96, baseType: !299, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !744, file: !739, line: 97, baseType: !748, size: 64, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !739, line: 60, baseType: !750)
!750 = !DISubroutineType(types: !751)
!751 = !{null, !752}
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !744, file: !739, line: 98, baseType: !748, size: 64, offset: 128)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !744, file: !739, line: 99, baseType: !755, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !226, line: 35, baseType: !756)
!756 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !744, file: !739, line: 100, baseType: !755, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !744, file: !739, line: 101, baseType: !759, size: 128, align: 64, offset: 256)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !226, line: 232, size: 128, align: 64, elements: !760)
!760 = !{!761, !763}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !759, file: !226, line: 233, baseType: !762, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !759, file: !226, line: 234, baseType: !764, size: 64, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DISubroutineType(types: !766)
!766 = !{null, !762}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !744, file: !739, line: 102, baseType: !752, size: 64, offset: 384)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !725, file: !43, line: 129, baseType: !769, size: 256, offset: 512)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !770, line: 26, size: 256, elements: !771)
!770 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!771 = !{!772, !773}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !769, file: !770, line: 27, baseType: !28, size: 32)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !769, file: !770, line: 28, baseType: !774, size: 192, offset: 64)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !775, line: 43, size: 192, elements: !776)
!775 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!776 = !{!777, !778}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !774, file: !775, line: 44, baseType: !313, size: 32)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !774, file: !775, line: 45, baseType: !271, size: 128, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !725, file: !43, line: 130, baseType: !42, size: 32, offset: 768)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !725, file: !43, line: 131, baseType: !28, size: 32, offset: 800)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !725, file: !43, line: 132, baseType: !484, size: 64, offset: 832)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !725, file: !43, line: 133, baseType: !783, size: 64, offset: 896)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !785)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !43, line: 77, size: 192, elements: !786)
!786 = !{!787, !791, !1675}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !785, file: !43, line: 83, baseType: !788, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DISubroutineType(types: !790)
!790 = !{null, !674}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !785, file: !43, line: 89, baseType: !792, size: 64, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DISubroutineType(types: !794)
!794 = !{!795, !796}
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !51, line: 1184, baseType: !28)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !798, line: 512, size: 896, elements: !799)
!798 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!799 = !{!800, !1642, !1643, !1650, !1657, !1667, !1668, !1669, !1671, !1673}
!800 = !DIDerivedType(tag: DW_TAG_member, scope: !797, file: !798, line: 513, baseType: !801, size: 320)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !797, file: !798, line: 513, size: 320, elements: !802)
!802 = !{!803, !1638, !1639, !1640, !1641}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !801, file: !798, line: 514, baseType: !804, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !51, line: 625, size: 1344, elements: !806)
!806 = !{!807, !816, !1543, !1549, !1556, !1557, !1562, !1563, !1568, !1569, !1572, !1631, !1632, !1633, !1634, !1635, !1636}
!807 = !DIDerivedType(tag: DW_TAG_member, scope: !805, file: !51, line: 628, baseType: !808, size: 128)
!808 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !805, file: !51, line: 628, size: 128, elements: !809)
!809 = !{!810, !815}
!810 = !DIDerivedType(tag: DW_TAG_member, scope: !808, file: !51, line: 629, baseType: !811, size: 128)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !808, file: !51, line: 629, size: 128, elements: !812)
!812 = !{!813, !814}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !811, file: !51, line: 631, baseType: !484, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !811, file: !51, line: 632, baseType: !484, size: 64, offset: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !808, file: !51, line: 635, baseType: !759, size: 128, align: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !805, file: !51, line: 639, baseType: !817, size: 64, offset: 128)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !51, line: 733, size: 10240, elements: !819)
!819 = !{!820, !1541}
!820 = !DIDerivedType(tag: DW_TAG_member, scope: !818, file: !51, line: 734, baseType: !821, size: 10240)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !818, file: !51, line: 734, size: 10240, elements: !822)
!822 = !{!823, !827, !841, !1403, !1404, !1405, !1406, !1407, !1408, !1417, !1418, !1419, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1458, !1460, !1463, !1510, !1511, !1512, !1515, !1516, !1517, !1520, !1521, !1522, !1528, !1529}
!823 = !DIDerivedType(tag: DW_TAG_member, scope: !821, file: !51, line: 739, baseType: !824, size: 512, align: 512)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !821, file: !51, line: 739, size: 512, align: 512, elements: !825)
!825 = !{!826}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !824, file: !51, line: 747, baseType: !251, size: 32)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !821, file: !51, line: 750, baseType: !828, size: 128, offset: 512)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !829, line: 218, size: 128, elements: !830)
!829 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!830 = !{!831, !839, !840}
!831 = !DIDerivedType(tag: DW_TAG_member, scope: !828, file: !829, line: 219, baseType: !832, size: 32)
!832 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !828, file: !829, line: 219, size: 32, elements: !833)
!833 = !{!834, !835}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !832, file: !829, line: 220, baseType: !231, size: 32)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !832, file: !829, line: 221, baseType: !836)
!836 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !829, line: 197, baseType: !837)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !829, line: 197, elements: !838)
!838 = !{}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !828, file: !829, line: 223, baseType: !28, size: 32, offset: 32)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !828, file: !829, line: 224, baseType: !194, size: 64, offset: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !821, file: !51, line: 752, baseType: !842, size: 64, offset: 640)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DISubroutineType(types: !844)
!844 = !{!484, !845, !484, !484, !484, !484}
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !80, line: 994, size: 1856, align: 64, elements: !847)
!847 = !{!848, !859, !860, !862, !863, !871, !872, !873, !937, !1130, !1139, !1145, !1146, !1393, !1394, !1395, !1396, !1398, !1399, !1402}
!848 = !DIDerivedType(tag: DW_TAG_member, scope: !846, file: !80, line: 995, baseType: !849, size: 128)
!849 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !846, file: !80, line: 995, size: 128, elements: !850)
!850 = !{!851, !857, !858}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !849, file: !80, line: 996, baseType: !852, size: 64)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !853, line: 60, size: 64, elements: !854)
!853 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!854 = !{!855}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !852, file: !853, line: 61, baseType: !856, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !849, file: !80, line: 997, baseType: !759, size: 128, align: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !849, file: !80, line: 998, baseType: !28, size: 32)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !846, file: !80, line: 1005, baseType: !231, size: 32, offset: 128)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !846, file: !80, line: 1006, baseType: !861, size: 32, offset: 160)
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !226, line: 156, baseType: !28)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !846, file: !80, line: 1007, baseType: !299, size: 64, offset: 192)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !846, file: !80, line: 1008, baseType: !864, size: 256, offset: 256)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !865, line: 66, size: 256, elements: !866)
!865 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!866 = !{!867, !868, !869, !870}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !864, file: !865, line: 67, baseType: !299, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !864, file: !865, line: 68, baseType: !313, size: 32, offset: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !864, file: !865, line: 70, baseType: !308, size: 32, offset: 96)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !864, file: !865, line: 72, baseType: !271, size: 128, offset: 128)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !846, file: !80, line: 1009, baseType: !279, size: 64, offset: 512)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !846, file: !80, line: 1010, baseType: !28, size: 32, offset: 576)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !846, file: !80, line: 1011, baseType: !874, size: 256, offset: 640)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !80, line: 948, size: 256, elements: !875)
!875 = !{!876, !897, !933, !934, !935, !936}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !874, file: !80, line: 949, baseType: !877, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !878, line: 34, baseType: !879)
!878 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !878, line: 25, size: 64, elements: !880)
!880 = !{!881}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !879, file: !878, line: 26, baseType: !882, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !883, line: 27, baseType: !884)
!883 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !883, line: 13, size: 64, elements: !885)
!885 = !{!886, !896}
!886 = !DIDerivedType(tag: DW_TAG_member, scope: !884, file: !883, line: 14, baseType: !887, size: 32)
!887 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !884, file: !883, line: 14, size: 32, elements: !888)
!888 = !{!889, !890}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !887, file: !883, line: 15, baseType: !251, size: 32)
!890 = !DIDerivedType(tag: DW_TAG_member, scope: !887, file: !883, line: 16, baseType: !891, size: 32)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !887, file: !883, line: 16, size: 32, elements: !892)
!892 = !{!893, !894}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !891, file: !883, line: 18, baseType: !259, size: 8)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !891, file: !883, line: 19, baseType: !895, size: 24, offset: 8)
!895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 24, elements: !5)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !884, file: !883, line: 26, baseType: !243, size: 32, offset: 32)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !874, file: !80, line: 950, baseType: !898, size: 64, offset: 64)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !27, line: 59, size: 768, elements: !900)
!900 = !{!901, !907, !908, !909, !914, !915, !922, !923}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !899, file: !27, line: 61, baseType: !902, size: 32)
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !903, line: 113, baseType: !904)
!903 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !903, line: 111, size: 32, elements: !905)
!905 = !{!906}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !904, file: !903, line: 112, baseType: !251, size: 32)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !899, file: !27, line: 62, baseType: !28, size: 32, offset: 32)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !899, file: !27, line: 63, baseType: !231, size: 32, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !899, file: !27, line: 65, baseType: !910, size: 256, offset: 128)
!910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !911, size: 256, elements: !213)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !226, line: 194, size: 64, elements: !912)
!912 = !{!913}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !911, file: !226, line: 195, baseType: !290, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !899, file: !27, line: 66, baseType: !911, size: 64, offset: 384)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !899, file: !27, line: 68, baseType: !916, size: 192, offset: 448)
!916 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !917, line: 41, baseType: !918)
!917 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !917, line: 37, size: 192, elements: !919)
!919 = !{!920, !921}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !918, file: !917, line: 38, baseType: !231, size: 32)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !918, file: !917, line: 39, baseType: !271, size: 128, offset: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !899, file: !27, line: 69, baseType: !759, size: 128, align: 64, offset: 640)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !899, file: !27, line: 70, baseType: !924, offset: 768)
!924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !925, elements: !931)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !27, line: 54, size: 128, elements: !926)
!926 = !{!927, !928}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !925, file: !27, line: 55, baseType: !117, size: 32)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !925, file: !27, line: 56, baseType: !929, size: 64, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !27, line: 56, flags: DIFlagFwdDecl)
!931 = !{!932}
!932 = !DISubrange(count: -1)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !874, file: !80, line: 951, baseType: !26, size: 32, offset: 128)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !874, file: !80, line: 952, baseType: !328, size: 32, offset: 160)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !874, file: !80, line: 952, baseType: !328, size: 32, offset: 192)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !874, file: !80, line: 953, baseType: !117, size: 32, offset: 224)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !846, file: !80, line: 1012, baseType: !938, size: 64, offset: 896)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !940)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !941, line: 110, size: 1472, elements: !942)
!941 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!942 = !{!943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !959, !960, !961, !962, !963, !964, !1075, !1076, !1077, !1078, !1079, !1110, !1113, !1117, !1125}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !940, file: !941, line: 111, baseType: !299, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !940, file: !941, line: 112, baseType: !328, size: 32, offset: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !940, file: !941, line: 113, baseType: !337, size: 32, offset: 96)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !940, file: !941, line: 114, baseType: !328, size: 32, offset: 128)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !940, file: !941, line: 115, baseType: !337, size: 32, offset: 160)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !940, file: !941, line: 116, baseType: !328, size: 32, offset: 192)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !940, file: !941, line: 117, baseType: !337, size: 32, offset: 224)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !940, file: !941, line: 118, baseType: !328, size: 32, offset: 256)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !940, file: !941, line: 119, baseType: !337, size: 32, offset: 288)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !940, file: !941, line: 120, baseType: !28, size: 32, offset: 320)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !940, file: !941, line: 121, baseType: !954, size: 64, offset: 384)
!954 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !955, line: 24, baseType: !956)
!955 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !955, line: 24, size: 64, elements: !957)
!957 = !{!958}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !956, file: !955, line: 24, baseType: !394, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !940, file: !941, line: 122, baseType: !954, size: 64, offset: 448)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !940, file: !941, line: 123, baseType: !954, size: 64, offset: 512)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !940, file: !941, line: 124, baseType: !954, size: 64, offset: 576)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !940, file: !941, line: 125, baseType: !954, size: 64, offset: 640)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !940, file: !941, line: 127, baseType: !262, size: 8, offset: 704)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !940, file: !941, line: 129, baseType: !965, size: 64, offset: 768)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !967, line: 195, size: 1728, elements: !968)
!967 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!968 = !{!969, !970, !975, !980, !981, !984, !985, !990, !991, !992, !993, !996, !997, !998, !1000, !1001, !1039, !1060}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !966, file: !967, line: 196, baseType: !902, size: 32)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !966, file: !967, line: 197, baseType: !971, size: 32, offset: 32)
!971 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !967, line: 28, baseType: !972)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !226, line: 104, baseType: !973)
!973 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !260, line: 20, baseType: !974)
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !203, line: 26, baseType: !117)
!975 = !DIDerivedType(tag: DW_TAG_member, scope: !966, file: !967, line: 198, baseType: !976, size: 192, offset: 64)
!976 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !966, file: !967, line: 198, size: 192, elements: !977)
!977 = !{!978, !979}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !976, file: !967, line: 199, baseType: !271, size: 128)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !976, file: !967, line: 200, baseType: !657, size: 192, align: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !966, file: !967, line: 205, baseType: !295, size: 320, offset: 256)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !966, file: !967, line: 206, baseType: !982, size: 64, offset: 576)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !967, line: 206, flags: DIFlagFwdDecl)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !966, file: !967, line: 207, baseType: !194, size: 64, offset: 640)
!985 = !DIDerivedType(tag: DW_TAG_member, scope: !966, file: !967, line: 208, baseType: !986, size: 64, offset: 704)
!986 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !966, file: !967, line: 208, size: 64, elements: !987)
!987 = !{!988, !989}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !986, file: !967, line: 209, baseType: !221, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !986, file: !967, line: 210, baseType: !221, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !966, file: !967, line: 212, baseType: !221, size: 64, offset: 768)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !966, file: !967, line: 213, baseType: !328, size: 32, offset: 832)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !966, file: !967, line: 214, baseType: !337, size: 32, offset: 864)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !966, file: !967, line: 215, baseType: !994, size: 32, offset: 896)
!994 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !967, line: 31, baseType: !995)
!995 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !226, line: 110, baseType: !391)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !966, file: !967, line: 216, baseType: !219, size: 16, offset: 928)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !966, file: !967, line: 217, baseType: !219, size: 16, offset: 944)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !966, file: !967, line: 221, baseType: !999, size: 16, offset: 960)
!999 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !966, file: !967, line: 228, baseType: !484, size: 64, offset: 1024)
!1001 = !DIDerivedType(tag: DW_TAG_member, scope: !966, file: !967, line: 245, baseType: !1002, size: 320, offset: 1088)
!1002 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !966, file: !967, line: 245, size: 320, elements: !1003)
!1003 = !{!1004, !1031}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1002, file: !967, line: 246, baseType: !1005, size: 320)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !967, line: 114, size: 320, elements: !1006)
!1006 = !{!1007, !1008, !1020, !1023, !1030}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1005, file: !967, line: 116, baseType: !484, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, scope: !1005, file: !967, line: 117, baseType: !1009, size: 64, offset: 64)
!1009 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1005, file: !967, line: 117, size: 64, elements: !1010)
!1010 = !{!1011, !1019}
!1011 = !DIDerivedType(tag: DW_TAG_member, scope: !1009, file: !967, line: 118, baseType: !1012, size: 64)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1009, file: !967, line: 118, size: 64, elements: !1013)
!1013 = !{!1014, !1015}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1012, file: !967, line: 120, baseType: !268, size: 16)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1012, file: !967, line: 121, baseType: !1016, size: 48, offset: 16)
!1016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !1017)
!1017 = !{!1018}
!1018 = !DISubrange(count: 6)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1009, file: !967, line: 127, baseType: !484, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1005, file: !967, line: 129, baseType: !1021, size: 64, offset: 128)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !967, line: 102, flags: DIFlagFwdDecl)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1005, file: !967, line: 130, baseType: !1024, size: 64, offset: 192)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !967, line: 108, size: 192, elements: !1026)
!1026 = !{!1027, !1028, !1029}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1025, file: !967, line: 109, baseType: !759, size: 128, align: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1025, file: !967, line: 110, baseType: !902, size: 32, offset: 128)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1025, file: !967, line: 111, baseType: !755, size: 8, offset: 160)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1005, file: !967, line: 131, baseType: !439, size: 64, offset: 256)
!1031 = !DIDerivedType(tag: DW_TAG_member, scope: !1002, file: !967, line: 247, baseType: !1032, size: 320)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1002, file: !967, line: 247, size: 320, elements: !1033)
!1033 = !{!1034, !1035, !1036, !1037, !1038}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1032, file: !967, line: 248, baseType: !484, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1032, file: !967, line: 249, baseType: !484, size: 64, offset: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1032, file: !967, line: 250, baseType: !1021, size: 64, offset: 128)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1032, file: !967, line: 251, baseType: !1024, size: 64, offset: 192)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1032, file: !967, line: 252, baseType: !464, size: 64, offset: 256)
!1039 = !DIDerivedType(tag: DW_TAG_member, scope: !966, file: !967, line: 260, baseType: !1040, size: 256, offset: 1408)
!1040 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !966, file: !967, line: 260, size: 256, elements: !1041)
!1041 = !{!1042, !1048}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1040, file: !967, line: 261, baseType: !1043, size: 256)
!1043 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !967, line: 134, size: 256, elements: !1044)
!1044 = !{!1045, !1046}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1043, file: !967, line: 135, baseType: !194, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1043, file: !967, line: 136, baseType: !1047, size: 256)
!1047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 256, elements: !213)
!1048 = !DIDerivedType(tag: DW_TAG_member, scope: !1040, file: !967, line: 262, baseType: !1049, size: 256)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1040, file: !967, line: 262, size: 256, elements: !1050)
!1050 = !{!1051, !1052}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1049, file: !967, line: 264, baseType: !271, size: 128)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1049, file: !967, line: 265, baseType: !1053, size: 128, offset: 128)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1054, line: 22, size: 128, elements: !1055)
!1054 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1055 = !{!1056, !1059}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1053, file: !1054, line: 23, baseType: !1057, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1054, line: 23, flags: DIFlagFwdDecl)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1053, file: !1054, line: 24, baseType: !484, size: 64, offset: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !966, file: !967, line: 280, baseType: !1061, size: 64, offset: 1664)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !967, line: 176, size: 192, elements: !1063)
!1063 = !{!1064, !1073, !1074}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1062, file: !967, line: 177, baseType: !1065, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !967, line: 171, baseType: !1066)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!117, !965, !1069, !1071, !965}
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1022)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1043)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1062, file: !967, line: 178, baseType: !965, size: 64, offset: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1062, file: !967, line: 179, baseType: !1021, size: 64, offset: 128)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !940, file: !941, line: 130, baseType: !965, size: 64, offset: 832)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !940, file: !941, line: 131, baseType: !965, size: 64, offset: 896)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !940, file: !941, line: 132, baseType: !965, size: 64, offset: 960)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !940, file: !941, line: 135, baseType: !194, size: 64, offset: 1024)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !940, file: !941, line: 137, baseType: !1080, size: 64, offset: 1088)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1082, line: 14, size: 1088, elements: !1083)
!1082 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1083 = !{!1084, !1085, !1094, !1095, !1096, !1097, !1098, !1099}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1081, file: !1082, line: 15, baseType: !902, size: 32)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1081, file: !1082, line: 17, baseType: !1086, size: 320, offset: 64)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1087, line: 22, size: 320, elements: !1088)
!1087 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1088 = !{!1089, !1090, !1091, !1092}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1086, file: !1087, line: 23, baseType: !313, size: 32)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1086, file: !1087, line: 24, baseType: !305, size: 64, offset: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1086, file: !1087, line: 26, baseType: !271, size: 128, offset: 128)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1086, file: !1087, line: 28, baseType: !1093, size: 64, offset: 256)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1081, file: !1082, line: 19, baseType: !484, size: 64, offset: 384)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1081, file: !1082, line: 20, baseType: !299, size: 64, offset: 448)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1081, file: !1082, line: 23, baseType: !287, size: 128, offset: 512)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1081, file: !1082, line: 24, baseType: !328, size: 32, offset: 640)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1081, file: !1082, line: 29, baseType: !299, size: 64, offset: 704)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1081, file: !1082, line: 36, baseType: !1100, size: 320, offset: 768)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1101, line: 15, size: 320, elements: !1102)
!1101 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1102 = !{!1103, !1104, !1105, !1106, !1107, !1108, !1109}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1100, file: !1101, line: 16, baseType: !313, size: 32)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1100, file: !1101, line: 18, baseType: !117, size: 32, offset: 32)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1100, file: !1101, line: 19, baseType: !117, size: 32, offset: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1100, file: !1101, line: 20, baseType: !117, size: 32, offset: 96)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1100, file: !1101, line: 21, baseType: !117, size: 32, offset: 128)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1100, file: !1101, line: 22, baseType: !484, size: 64, offset: 192)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1100, file: !1101, line: 23, baseType: !484, size: 64, offset: 256)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !940, file: !941, line: 138, baseType: !1111, size: 64, offset: 1152)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !329, line: 18, flags: DIFlagFwdDecl)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !940, file: !941, line: 139, baseType: !1114, size: 64, offset: 1216)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1116, line: 16, flags: DIFlagFwdDecl)
!1116 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !940, file: !941, line: 140, baseType: !1118, size: 64, offset: 1280)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !941, line: 25, size: 64, elements: !1120)
!1120 = !{!1121, !1122, !1123}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1119, file: !941, line: 26, baseType: !251, size: 32)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1119, file: !941, line: 27, baseType: !117, size: 32, offset: 32)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1119, file: !941, line: 28, baseType: !1124, offset: 64)
!1124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !337, elements: !931)
!1125 = !DIDerivedType(tag: DW_TAG_member, scope: !940, file: !941, line: 142, baseType: !1126, size: 128, offset: 1344)
!1126 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !940, file: !941, line: 142, size: 128, elements: !1127)
!1127 = !{!1128, !1129}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1126, file: !941, line: 143, baseType: !117, size: 32)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1126, file: !941, line: 144, baseType: !759, size: 128, align: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !846, file: !80, line: 1013, baseType: !1131, size: 256, offset: 960)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !80, line: 970, size: 256, elements: !1132)
!1132 = !{!1133, !1134, !1135, !1136, !1137, !1138}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1131, file: !80, line: 971, baseType: !484, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1131, file: !80, line: 972, baseType: !28, size: 32, offset: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1131, file: !80, line: 973, baseType: !28, size: 32, offset: 96)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1131, file: !80, line: 974, baseType: !28, size: 32, offset: 128)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1131, file: !80, line: 975, baseType: !28, size: 32, offset: 160)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1131, file: !80, line: 976, baseType: !279, size: 64, offset: 192)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !846, file: !80, line: 1014, baseType: !1140, size: 128, offset: 1216)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1141, line: 8, size: 128, elements: !1142)
!1141 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1142 = !{!1143, !1144}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1140, file: !1141, line: 9, baseType: !469, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1140, file: !1141, line: 10, baseType: !357, size: 64, offset: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !846, file: !80, line: 1015, baseType: !400, size: 64, offset: 1344)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !846, file: !80, line: 1016, baseType: !1147, size: 64, offset: 1408)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1149)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !80, line: 1914, size: 2112, elements: !1150)
!1150 = !{!1151, !1152, !1156, !1161, !1165, !1276, !1277, !1283, !1296, !1303, !1307, !1308, !1312, !1313, !1317, !1322, !1323, !1327, !1331, !1337, !1338, !1342, !1343, !1350, !1354, !1358, !1364, !1368, !1374, !1378, !1382, !1383, !1389}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1149, file: !80, line: 1915, baseType: !511, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1149, file: !80, line: 1916, baseType: !1153, size: 64, offset: 64)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!279, !845, !279, !117}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1149, file: !80, line: 1917, baseType: !1157, size: 64, offset: 128)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!594, !845, !464, !606, !1160}
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1149, file: !80, line: 1918, baseType: !1162, size: 64, offset: 192)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{!594, !845, !439, !606, !1160}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1149, file: !80, line: 1919, baseType: !1166, size: 64, offset: 256)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!594, !1169, !1274}
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !80, line: 373, size: 384, elements: !1171)
!1171 = !{!1172, !1173, !1174, !1178, !1179, !1180, !1181}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1170, file: !80, line: 374, baseType: !845, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1170, file: !80, line: 375, baseType: !279, size: 64, offset: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1170, file: !80, line: 376, baseType: !1175, size: 64, offset: 128)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{null, !1169, !320}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1170, file: !80, line: 377, baseType: !194, size: 64, offset: 192)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1170, file: !80, line: 378, baseType: !117, size: 32, offset: 256)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1170, file: !80, line: 379, baseType: !268, size: 16, offset: 288)
!1181 = !DIDerivedType(tag: DW_TAG_member, scope: !1170, file: !80, line: 380, baseType: !1182, size: 64, offset: 320)
!1182 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1170, file: !80, line: 380, size: 64, elements: !1183)
!1183 = !{!1184, !1270}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1182, file: !80, line: 386, baseType: !1185, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !1187, line: 998, size: 448, elements: !1188)
!1187 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!1188 = !{!1189, !1256, !1257}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !1186, file: !1187, line: 999, baseType: !1190, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !51, line: 293, size: 1536, elements: !1192)
!1192 = !{!1193, !1223, !1237}
!1193 = !DIDerivedType(tag: DW_TAG_member, scope: !1191, file: !51, line: 295, baseType: !1194, size: 512)
!1194 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1191, file: !51, line: 295, size: 512, elements: !1195)
!1195 = !{!1196, !1222}
!1196 = !DIDerivedType(tag: DW_TAG_member, scope: !1194, file: !51, line: 296, baseType: !1197, size: 448)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1194, file: !51, line: 296, size: 448, elements: !1198)
!1198 = !{!1199, !1200, !1209, !1210, !1211, !1220, !1221}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1197, file: !51, line: 298, baseType: !484, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, scope: !1197, file: !51, line: 299, baseType: !1201, size: 128, offset: 64)
!1201 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1197, file: !51, line: 299, size: 128, elements: !1202)
!1202 = !{!1203, !1204}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1201, file: !51, line: 300, baseType: !271, size: 128)
!1204 = !DIDerivedType(tag: DW_TAG_member, scope: !1201, file: !51, line: 302, baseType: !1205, size: 128)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1201, file: !51, line: 302, size: 128, elements: !1206)
!1206 = !{!1207, !1208}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1205, file: !51, line: 303, baseType: !194, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1205, file: !51, line: 305, baseType: !28, size: 32, offset: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1197, file: !51, line: 310, baseType: !634, size: 64, offset: 192)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1197, file: !51, line: 311, baseType: !484, size: 64, offset: 256)
!1211 = !DIDerivedType(tag: DW_TAG_member, scope: !1197, file: !51, line: 312, baseType: !1212, size: 64, offset: 320)
!1212 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1197, file: !51, line: 312, size: 64, elements: !1213)
!1213 = !{!1214, !1215}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1212, file: !51, line: 313, baseType: !194, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1212, file: !51, line: 314, baseType: !1216, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !51, line: 257, baseType: !1217)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !51, line: 255, size: 64, elements: !1218)
!1218 = !{!1219}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1217, file: !51, line: 256, baseType: !484, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1197, file: !51, line: 316, baseType: !251, size: 32, offset: 384)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1197, file: !51, line: 317, baseType: !251, size: 32, offset: 416)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1194, file: !51, line: 323, baseType: !675, size: 512, align: 128)
!1223 = !DIDerivedType(tag: DW_TAG_member, scope: !1191, file: !51, line: 325, baseType: !1224, size: 512, offset: 512)
!1224 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1191, file: !51, line: 325, size: 512, elements: !1225)
!1225 = !{!1226, !1236}
!1226 = !DIDerivedType(tag: DW_TAG_member, scope: !1224, file: !51, line: 326, baseType: !1227, size: 320)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1224, file: !51, line: 326, size: 320, elements: !1228)
!1228 = !{!1229, !1230, !1231, !1232, !1233, !1234, !1235}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1227, file: !51, line: 327, baseType: !484, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1227, file: !51, line: 328, baseType: !484, size: 64, offset: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1227, file: !51, line: 329, baseType: !484, size: 64, offset: 128)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1227, file: !51, line: 331, baseType: !251, size: 32, offset: 192)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1227, file: !51, line: 332, baseType: !251, size: 32, offset: 224)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1227, file: !51, line: 333, baseType: !251, size: 32, offset: 256)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1227, file: !51, line: 335, baseType: !28, size: 32, offset: 288)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1224, file: !51, line: 339, baseType: !675, size: 512, align: 128)
!1237 = !DIDerivedType(tag: DW_TAG_member, scope: !1191, file: !51, line: 341, baseType: !1238, size: 512, offset: 1024)
!1238 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1191, file: !51, line: 341, size: 512, elements: !1239)
!1239 = !{!1240, !1249, !1255}
!1240 = !DIDerivedType(tag: DW_TAG_member, scope: !1238, file: !51, line: 342, baseType: !1241, size: 384)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1238, file: !51, line: 342, size: 384, elements: !1242)
!1242 = !{!1243, !1244, !1245, !1246, !1247, !1248}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1241, file: !51, line: 343, baseType: !484, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1241, file: !51, line: 344, baseType: !484, size: 64, offset: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1241, file: !51, line: 346, baseType: !194, size: 64, offset: 128)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1241, file: !51, line: 347, baseType: !194, size: 64, offset: 192)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1241, file: !51, line: 348, baseType: !194, size: 64, offset: 256)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1241, file: !51, line: 349, baseType: !194, size: 64, offset: 320)
!1249 = !DIDerivedType(tag: DW_TAG_member, scope: !1238, file: !51, line: 352, baseType: !1250, size: 256)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1238, file: !51, line: 352, size: 256, elements: !1251)
!1251 = !{!1252, !1253, !1254}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1250, file: !51, line: 353, baseType: !484, size: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1250, file: !51, line: 354, baseType: !484, size: 64, offset: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1250, file: !51, line: 356, baseType: !271, size: 128, offset: 128)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1238, file: !51, line: 359, baseType: !675, size: 512, align: 128)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !1186, file: !1187, line: 1000, baseType: !117, size: 32, offset: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1186, file: !1187, line: 1001, baseType: !1258, size: 320, offset: 128)
!1258 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !917, line: 14, baseType: !1259)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !917, line: 30, size: 320, elements: !1260)
!1260 = !{!1261, !1262, !1263, !1269}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1259, file: !917, line: 31, baseType: !28, size: 32)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1259, file: !917, line: 32, baseType: !194, size: 64, offset: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1259, file: !917, line: 33, baseType: !1264, size: 64, offset: 128)
!1264 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !917, line: 16, baseType: !1265)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DISubroutineType(types: !1267)
!1267 = !{!117, !1268, !28, !117, !194}
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1259, file: !917, line: 34, baseType: !271, size: 128, offset: 192)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1182, file: !80, line: 395, baseType: !1271, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!594, !194}
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !80, line: 69, flags: DIFlagFwdDecl)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1149, file: !80, line: 1920, baseType: !1166, size: 64, offset: 320)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1149, file: !80, line: 1921, baseType: !1278, size: 64, offset: 384)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!117, !1169, !1281, !28}
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !80, line: 53, flags: DIFlagFwdDecl)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1149, file: !80, line: 1923, baseType: !1284, size: 64, offset: 448)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{!117, !845, !1287}
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !80, line: 1858, size: 128, elements: !1289)
!1289 = !{!1290, !1295}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1288, file: !80, line: 1859, baseType: !1291, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !80, line: 1855, baseType: !1292)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DISubroutineType(types: !1294)
!1294 = !{!755, !1287, !439, !117, !279, !394, !28}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1288, file: !80, line: 1860, baseType: !279, size: 64, offset: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1149, file: !80, line: 1924, baseType: !1297, size: 64, offset: 512)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = !DISubroutineType(types: !1299)
!1299 = !{!1300, !845, !1301}
!1300 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !201, line: 59, baseType: !28)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !80, line: 61, flags: DIFlagFwdDecl)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1149, file: !80, line: 1925, baseType: !1304, size: 64, offset: 576)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DISubroutineType(types: !1306)
!1306 = !{!320, !845, !28, !484}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1149, file: !80, line: 1926, baseType: !1304, size: 64, offset: 640)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1149, file: !80, line: 1927, baseType: !1309, size: 64, offset: 704)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!117, !845, !804}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1149, file: !80, line: 1928, baseType: !484, size: 64, offset: 768)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1149, file: !80, line: 1929, baseType: !1314, size: 64, offset: 832)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{!117, !400, !845}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1149, file: !80, line: 1930, baseType: !1318, size: 64, offset: 896)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = !DISubroutineType(types: !1320)
!1320 = !{!117, !845, !1321}
!1321 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !80, line: 1061, baseType: !194)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1149, file: !80, line: 1931, baseType: !1314, size: 64, offset: 960)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1149, file: !80, line: 1932, baseType: !1324, size: 64, offset: 1024)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!117, !845, !279, !279, !117}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1149, file: !80, line: 1933, baseType: !1328, size: 64, offset: 1088)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!117, !117, !845, !117}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1149, file: !80, line: 1934, baseType: !1332, size: 64, offset: 1152)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!117, !845, !117, !1335}
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !80, line: 1063, flags: DIFlagFwdDecl)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1149, file: !80, line: 1935, baseType: !842, size: 64, offset: 1216)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1149, file: !80, line: 1936, baseType: !1339, size: 64, offset: 1280)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{!117, !117}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1149, file: !80, line: 1937, baseType: !1332, size: 64, offset: 1344)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1149, file: !80, line: 1938, baseType: !1344, size: 64, offset: 1408)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!594, !1347, !845, !1160, !606, !28}
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1349, line: 59, flags: DIFlagFwdDecl)
!1349 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1149, file: !80, line: 1939, baseType: !1351, size: 64, offset: 1472)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{!594, !845, !1160, !1347, !606, !28}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1149, file: !80, line: 1940, baseType: !1355, size: 64, offset: 1536)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{null, !845}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1149, file: !80, line: 1941, baseType: !1359, size: 64, offset: 1600)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{!117, !845, !117, !1362, !1363}
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1149, file: !80, line: 1942, baseType: !1365, size: 64, offset: 1664)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!320, !845, !117, !279, !279}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1149, file: !80, line: 1944, baseType: !1369, size: 64, offset: 1728)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{null, !1372, !845}
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1349, line: 66, flags: DIFlagFwdDecl)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1149, file: !80, line: 1948, baseType: !1375, size: 64, offset: 1792)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{!594, !845, !279, !845, !279, !606, !28}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1149, file: !80, line: 1950, baseType: !1379, size: 64, offset: 1856)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{!279, !845, !279, !845, !279, !279, !28}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1149, file: !80, line: 1953, baseType: !1324, size: 64, offset: 1920)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1149, file: !80, line: 1954, baseType: !1384, size: 64, offset: 1984)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{!117, !1387, !28}
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !80, line: 1911, flags: DIFlagFwdDecl)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1149, file: !80, line: 1955, baseType: !1390, size: 64, offset: 2048)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{!117, !1387, !1281, !28}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !846, file: !80, line: 1018, baseType: !394, size: 64, offset: 1472)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !846, file: !80, line: 1020, baseType: !194, size: 64, offset: 1536)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !846, file: !80, line: 1023, baseType: !194, size: 64, offset: 1600)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !846, file: !80, line: 1027, baseType: !1397, size: 64, offset: 1664)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !846, file: !80, line: 1029, baseType: !634, size: 64, offset: 1728)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !846, file: !80, line: 1030, baseType: !1400, size: 32, offset: 1792)
!1400 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1401, line: 8, baseType: !391)
!1401 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !846, file: !80, line: 1031, baseType: !1400, size: 32, offset: 1824)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !821, file: !51, line: 756, baseType: !484, size: 64, offset: 704)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !821, file: !51, line: 757, baseType: !484, size: 64, offset: 768)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !821, file: !51, line: 760, baseType: !484, size: 64, offset: 832)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !821, file: !51, line: 761, baseType: !484, size: 64, offset: 896)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !821, file: !51, line: 763, baseType: !484, size: 64, offset: 960)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !821, file: !51, line: 764, baseType: !1409, size: 64, offset: 1024)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1411, line: 299, baseType: !1412)
!1411 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1411, line: 299, size: 64, elements: !1413)
!1413 = !{!1414}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1412, file: !1411, line: 299, baseType: !1415, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1416, line: 18, baseType: !484)
!1416 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !821, file: !51, line: 773, baseType: !251, size: 32, offset: 1088)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !821, file: !51, line: 785, baseType: !251, size: 32, offset: 1120)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !821, file: !51, line: 795, baseType: !1420, size: 64, offset: 1152)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !51, line: 726, size: 128, elements: !1422)
!1422 = !{!1423, !1424}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1421, file: !51, line: 727, baseType: !394, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1421, file: !51, line: 728, baseType: !117, size: 32, offset: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !821, file: !51, line: 801, baseType: !484, size: 64, offset: 1216)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !821, file: !51, line: 804, baseType: !299, size: 64, offset: 1280)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !821, file: !51, line: 806, baseType: !117, size: 32, offset: 1344)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !821, file: !51, line: 808, baseType: !231, size: 32, offset: 1376)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !821, file: !51, line: 823, baseType: !295, size: 320, offset: 1408)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !821, file: !51, line: 825, baseType: !271, size: 128, offset: 1728)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !821, file: !51, line: 845, baseType: !117, size: 32, offset: 1856)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !821, file: !51, line: 849, baseType: !484, size: 64, offset: 1920)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !821, file: !51, line: 850, baseType: !484, size: 64, offset: 1984)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !821, file: !51, line: 852, baseType: !484, size: 64, offset: 2048)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !821, file: !51, line: 853, baseType: !484, size: 64, offset: 2112)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !821, file: !51, line: 854, baseType: !301, size: 64, offset: 2176)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !821, file: !51, line: 855, baseType: !484, size: 64, offset: 2240)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !821, file: !51, line: 856, baseType: !484, size: 64, offset: 2304)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !821, file: !51, line: 857, baseType: !484, size: 64, offset: 2368)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !821, file: !51, line: 858, baseType: !484, size: 64, offset: 2432)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !821, file: !51, line: 865, baseType: !368, size: 32, offset: 2496)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !821, file: !51, line: 867, baseType: !231, size: 32, offset: 2528)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !821, file: !51, line: 869, baseType: !484, size: 64, offset: 2560)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !821, file: !51, line: 869, baseType: !484, size: 64, offset: 2624)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !821, file: !51, line: 869, baseType: !484, size: 64, offset: 2688)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !821, file: !51, line: 869, baseType: !484, size: 64, offset: 2752)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !821, file: !51, line: 870, baseType: !484, size: 64, offset: 2816)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !821, file: !51, line: 870, baseType: !484, size: 64, offset: 2880)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !821, file: !51, line: 870, baseType: !484, size: 64, offset: 2944)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !821, file: !51, line: 871, baseType: !484, size: 64, offset: 3008)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !821, file: !51, line: 871, baseType: !484, size: 64, offset: 3072)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !821, file: !51, line: 871, baseType: !484, size: 64, offset: 3136)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !821, file: !51, line: 871, baseType: !484, size: 64, offset: 3200)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !821, file: !51, line: 873, baseType: !1455, size: 3328, offset: 3264)
!1455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !484, size: 3328, elements: !1456)
!1456 = !{!1457}
!1457 = !DISubrange(count: 52)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !821, file: !51, line: 875, baseType: !1459, size: 1280, offset: 6592)
!1459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1086, size: 1280, elements: !213)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !821, file: !51, line: 877, baseType: !1461, size: 64, offset: 7872)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !51, line: 877, flags: DIFlagFwdDecl)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !821, file: !51, line: 880, baseType: !1464, size: 1088, offset: 7936)
!1464 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1465, line: 72, baseType: !1466)
!1465 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1465, line: 23, size: 1088, elements: !1467)
!1467 = !{!1468, !1469, !1470, !1471, !1472, !1475, !1476, !1477, !1478, !1505, !1506, !1507}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1466, file: !1465, line: 28, baseType: !394, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1466, file: !1465, line: 38, baseType: !301, size: 64, offset: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1466, file: !1465, line: 40, baseType: !484, size: 64, offset: 128)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1466, file: !1465, line: 43, baseType: !295, size: 320, offset: 192)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1466, file: !1465, line: 44, baseType: !1473, size: 64, offset: 512)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1465, line: 44, flags: DIFlagFwdDecl)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1466, file: !1465, line: 48, baseType: !484, size: 64, offset: 576)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1466, file: !1465, line: 59, baseType: !864, size: 256, offset: 640)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1466, file: !1465, line: 60, baseType: !194, size: 64, offset: 896)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1466, file: !1465, line: 61, baseType: !1479, size: 64, offset: 960)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1481)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1482, line: 13, size: 1216, elements: !1483)
!1482 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1483 = !{!1484, !1485, !1486, !1487, !1488, !1489, !1490, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1481, file: !1482, line: 14, baseType: !194, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1481, file: !1482, line: 15, baseType: !484, size: 64, offset: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1481, file: !1482, line: 17, baseType: !484, size: 64, offset: 128)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1481, file: !1482, line: 17, baseType: !484, size: 64, offset: 192)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1481, file: !1482, line: 18, baseType: !484, size: 64, offset: 256)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1481, file: !1482, line: 18, baseType: !484, size: 64, offset: 320)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1481, file: !1482, line: 19, baseType: !1491, size: 64, offset: 384)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1481, file: !1482, line: 21, baseType: !320, size: 64, offset: 448)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1481, file: !1482, line: 23, baseType: !320, size: 64, offset: 512)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1481, file: !1482, line: 24, baseType: !320, size: 64, offset: 576)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1481, file: !1482, line: 25, baseType: !320, size: 64, offset: 640)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1481, file: !1482, line: 26, baseType: !320, size: 64, offset: 704)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1481, file: !1482, line: 27, baseType: !320, size: 64, offset: 768)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1481, file: !1482, line: 28, baseType: !320, size: 64, offset: 832)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1481, file: !1482, line: 29, baseType: !320, size: 64, offset: 896)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1481, file: !1482, line: 30, baseType: !320, size: 64, offset: 960)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1481, file: !1482, line: 31, baseType: !320, size: 64, offset: 1024)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1481, file: !1482, line: 32, baseType: !320, size: 64, offset: 1088)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1481, file: !1482, line: 33, baseType: !320, size: 64, offset: 1152)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1466, file: !1465, line: 63, baseType: !251, size: 32, offset: 1024)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1466, file: !1465, line: 69, baseType: !268, size: 16, offset: 1056)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1466, file: !1465, line: 70, baseType: !1508, size: 16, offset: 1072)
!1508 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !260, line: 18, baseType: !1509)
!1509 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !203, line: 23, baseType: !999)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !821, file: !51, line: 882, baseType: !484, size: 64, offset: 9024)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !821, file: !51, line: 885, baseType: !231, size: 32, offset: 9088)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !821, file: !51, line: 886, baseType: !1513, size: 64, offset: 9152)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !51, line: 732, flags: DIFlagFwdDecl)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !821, file: !51, line: 901, baseType: !1111, size: 64, offset: 9216)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !821, file: !51, line: 904, baseType: !845, size: 64, offset: 9280)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !821, file: !51, line: 906, baseType: !1518, size: 64, offset: 9344)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !51, line: 906, flags: DIFlagFwdDecl)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !821, file: !51, line: 930, baseType: !251, size: 32, offset: 9408)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !821, file: !51, line: 933, baseType: !251, size: 32, offset: 9440)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !821, file: !51, line: 935, baseType: !1523, size: 64, offset: 9472)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !156, line: 103, size: 64, elements: !1524)
!1524 = !{!1525}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1523, file: !156, line: 104, baseType: !1526, size: 64)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !156, line: 101, flags: DIFlagFwdDecl)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !821, file: !51, line: 940, baseType: !299, size: 64, offset: 9536)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !821, file: !51, line: 942, baseType: !1530, size: 256, offset: 9600)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1531, line: 98, size: 256, elements: !1532)
!1531 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1532 = !{!1533, !1534, !1535}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1530, file: !1531, line: 99, baseType: !299, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1530, file: !1531, line: 100, baseType: !271, size: 128, offset: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1530, file: !1531, line: 101, baseType: !1536, size: 64, offset: 192)
!1536 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1531, line: 21, baseType: !1537)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{null, !1540}
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !818, file: !51, line: 986, baseType: !1542, offset: 10240)
!1542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !484, elements: !931)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !805, file: !51, line: 640, baseType: !1544, size: 64, offset: 192)
!1544 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1411, line: 297, baseType: !1545)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1411, line: 297, size: 64, elements: !1546)
!1546 = !{!1547}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1545, file: !1411, line: 297, baseType: !1548, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1416, line: 19, baseType: !484)
!1549 = !DIDerivedType(tag: DW_TAG_member, scope: !805, file: !51, line: 646, baseType: !1550, size: 64, offset: 256)
!1550 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !805, file: !51, line: 646, size: 64, elements: !1551)
!1551 = !{!1552, !1555}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1550, file: !51, line: 647, baseType: !1553, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1554)
!1554 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !51, line: 542, baseType: !484)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1550, file: !51, line: 648, baseType: !1554, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !805, file: !51, line: 666, baseType: !117, size: 32, offset: 320)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !805, file: !51, line: 667, baseType: !1558, size: 64, offset: 384)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !51, line: 579, size: 320, elements: !1560)
!1560 = !{!1561}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1559, file: !51, line: 580, baseType: !295, size: 320)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !805, file: !51, line: 670, baseType: !755, size: 8, offset: 448)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !805, file: !51, line: 681, baseType: !1564, size: 256, offset: 512)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !805, file: !51, line: 678, size: 256, elements: !1565)
!1565 = !{!1566, !1567}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1564, file: !51, line: 679, baseType: !657, size: 192, align: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1564, file: !51, line: 680, baseType: !484, size: 64, offset: 192)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !805, file: !51, line: 689, baseType: !271, size: 128, offset: 768)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !805, file: !51, line: 691, baseType: !1570, size: 64, offset: 896)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !51, line: 691, flags: DIFlagFwdDecl)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !805, file: !51, line: 694, baseType: !1573, size: 64, offset: 960)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1575)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !798, line: 563, size: 1024, elements: !1576)
!1576 = !{!1577, !1581, !1582, !1586, !1590, !1594, !1595, !1599, !1603, !1607, !1608, !1609, !1613, !1617, !1623, !1627}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1575, file: !798, line: 564, baseType: !1578, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{null, !804}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1575, file: !798, line: 569, baseType: !1578, size: 64, offset: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1575, file: !798, line: 571, baseType: !1583, size: 64, offset: 128)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{!117, !804, !484}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1575, file: !798, line: 572, baseType: !1587, size: 64, offset: 192)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DISubroutineType(types: !1589)
!1589 = !{!117, !804}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1575, file: !798, line: 578, baseType: !1591, size: 64, offset: 256)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DISubroutineType(types: !1593)
!1593 = !{!117, !804, !484, !484, !484}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1575, file: !798, line: 580, baseType: !792, size: 64, offset: 320)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1575, file: !798, line: 581, baseType: !1596, size: 64, offset: 384)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{!795, !796, !28}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1575, file: !798, line: 582, baseType: !1600, size: 64, offset: 448)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{!795, !796, !484, !484}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1575, file: !798, line: 584, baseType: !1604, size: 64, offset: 512)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{!484, !804}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1575, file: !798, line: 588, baseType: !792, size: 64, offset: 576)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1575, file: !798, line: 591, baseType: !792, size: 64, offset: 640)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1575, file: !798, line: 597, baseType: !1610, size: 64, offset: 704)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DISubroutineType(types: !1612)
!1612 = !{!117, !804, !484, !194, !117, !117}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1575, file: !798, line: 603, baseType: !1614, size: 64, offset: 768)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!439, !804}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1575, file: !798, line: 613, baseType: !1618, size: 64, offset: 832)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DISubroutineType(types: !1620)
!1620 = !{!117, !804, !1621}
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !51, line: 717, flags: DIFlagFwdDecl)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1575, file: !798, line: 625, baseType: !1624, size: 64, offset: 896)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = !DISubroutineType(types: !1626)
!1626 = !{!1621, !804, !484}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1575, file: !798, line: 633, baseType: !1628, size: 64, offset: 960)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DISubroutineType(types: !1630)
!1630 = !{!674, !804, !484}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !805, file: !51, line: 697, baseType: !484, size: 64, offset: 1024)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !805, file: !51, line: 699, baseType: !845, size: 64, offset: 1088)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !805, file: !51, line: 700, baseType: !194, size: 64, offset: 1152)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !805, file: !51, line: 711, baseType: !299, size: 64, offset: 1216)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !805, file: !51, line: 717, baseType: !1621, size: 64, offset: 1280)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !805, file: !51, line: 722, baseType: !1637, offset: 1344)
!1637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !51, line: 570, elements: !838)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !801, file: !798, line: 515, baseType: !225, size: 32, offset: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !801, file: !798, line: 516, baseType: !484, size: 64, offset: 128)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !801, file: !798, line: 517, baseType: !484, size: 64, offset: 192)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !801, file: !798, line: 518, baseType: !484, size: 64, offset: 256)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !797, file: !798, line: 520, baseType: !50, size: 32, offset: 320)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !797, file: !798, line: 522, baseType: !1644, size: 64, offset: 384)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1416, line: 22, baseType: !1646)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1416, line: 22, size: 64, elements: !1647)
!1647 = !{!1648}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1646, file: !1416, line: 22, baseType: !1649, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1416, line: 15, baseType: !484)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !797, file: !798, line: 524, baseType: !1651, size: 64, offset: 448)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1411, line: 372, baseType: !1653)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1411, line: 372, size: 64, elements: !1654)
!1654 = !{!1655}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1653, file: !1411, line: 372, baseType: !1656, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1416, line: 16, baseType: !484)
!1657 = !DIDerivedType(tag: DW_TAG_member, scope: !797, file: !798, line: 527, baseType: !1658, size: 64, offset: 512)
!1658 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !797, file: !798, line: 527, size: 64, elements: !1659)
!1659 = !{!1660, !1666}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1658, file: !798, line: 528, baseType: !1661, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1416, line: 21, baseType: !1662)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1416, line: 21, size: 64, elements: !1663)
!1663 = !{!1664}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1662, file: !1416, line: 21, baseType: !1665, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1416, line: 14, baseType: !484)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1658, file: !798, line: 529, baseType: !1645, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !797, file: !798, line: 534, baseType: !674, size: 64, offset: 576)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !797, file: !798, line: 535, baseType: !674, size: 64, offset: 640)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !797, file: !798, line: 541, baseType: !1670, size: 64, offset: 704)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !797, file: !798, line: 545, baseType: !1672, size: 64, offset: 768)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !797, file: !798, line: 549, baseType: !1674, size: 64, offset: 832)
!1674 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1411, line: 520, baseType: !674)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !785, file: !43, line: 100, baseType: !1676, size: 64, offset: 128)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{!117, !724, !484, !484, !117}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !725, file: !43, line: 134, baseType: !194, size: 64, offset: 960)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !725, file: !43, line: 135, baseType: !117, size: 32, offset: 1024)
!1681 = !DIDerivedType(tag: DW_TAG_member, scope: !725, file: !43, line: 136, baseType: !1682, size: 128, offset: 1088)
!1682 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !725, file: !43, line: 136, size: 128, elements: !1683)
!1683 = !{!1684, !1690}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1682, file: !43, line: 137, baseType: !1685, size: 128)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1686, line: 6, size: 128, elements: !1687)
!1686 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1687 = !{!1688, !1689}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1685, file: !1686, line: 7, baseType: !394, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1685, file: !1686, line: 8, baseType: !394, size: 64, offset: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, scope: !1682, file: !43, line: 138, baseType: !1691)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1682, file: !43, line: 138, elements: !1692)
!1692 = !{!1693, !1695}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1691, file: !43, line: 138, baseType: !1694)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1691, file: !43, line: 138, elements: !838)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1691, file: !43, line: 138, baseType: !1696)
!1696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1685, elements: !931)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !721, file: !51, line: 147, baseType: !194, size: 64, offset: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !679, file: !51, line: 161, baseType: !759, size: 128, align: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, scope: !675, file: !51, line: 164, baseType: !1700, size: 32, offset: 384)
!1700 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !675, file: !51, line: 164, size: 32, elements: !1701)
!1701 = !{!1702, !1703}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1700, file: !51, line: 169, baseType: !251, size: 32)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1700, file: !51, line: 177, baseType: !28, size: 32)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !675, file: !51, line: 181, baseType: !251, size: 32, offset: 416)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !80, line: 309, flags: DIFlagFwdDecl)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !668, file: !80, line: 406, baseType: !1708, size: 64, offset: 64)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{!117, !845, !1190}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !668, file: !80, line: 409, baseType: !1712, size: 64, offset: 128)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{!117, !634, !1705}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !668, file: !80, line: 412, baseType: !1716, size: 64, offset: 192)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{!755, !634, !1190}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !668, file: !80, line: 414, baseType: !1720, size: 64, offset: 256)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{null, !1723}
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !1187, line: 1276, size: 448, elements: !1725)
!1725 = !{!1726, !1727, !1728, !1730, !1731, !1732, !1733, !1734}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1724, file: !1187, line: 1277, baseType: !845, size: 64)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1724, file: !1187, line: 1278, baseType: !634, size: 64, offset: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !1724, file: !1187, line: 1279, baseType: !1729, size: 64, offset: 128)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !1724, file: !1187, line: 1281, baseType: !484, size: 64, offset: 192)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !1724, file: !1187, line: 1282, baseType: !28, size: 32, offset: 256)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !1724, file: !1187, line: 1283, baseType: !28, size: 32, offset: 288)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !1724, file: !1187, line: 1284, baseType: !755, size: 8, offset: 320)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !1724, file: !1187, line: 1285, baseType: !484, size: 64, offset: 384)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !668, file: !80, line: 416, baseType: !1736, size: 64, offset: 320)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{!117, !845, !634, !279, !28, !1739, !1363}
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !668, file: !80, line: 419, baseType: !1741, size: 64, offset: 384)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{!117, !845, !634, !279, !28, !28, !674, !194}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !668, file: !80, line: 424, baseType: !1745, size: 64, offset: 448)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{!1748, !634, !1748}
!1748 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !226, line: 131, baseType: !394)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !668, file: !80, line: 425, baseType: !1750, size: 64, offset: 512)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{null, !1190, !606, !606}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !668, file: !80, line: 426, baseType: !1754, size: 64, offset: 576)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!755, !1190, !225}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !668, file: !80, line: 427, baseType: !1758, size: 64, offset: 640)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DISubroutineType(types: !1760)
!1760 = !{null, !1190}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !668, file: !80, line: 428, baseType: !1166, size: 64, offset: 704)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !668, file: !80, line: 433, baseType: !1763, size: 64, offset: 768)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{!117, !634, !1190, !1190, !66}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !668, file: !80, line: 435, baseType: !1767, size: 64, offset: 832)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{!117, !1190}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !668, file: !80, line: 436, baseType: !1771, size: 64, offset: 896)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DISubroutineType(types: !1773)
!1773 = !{!755, !1190, !606, !606}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !668, file: !80, line: 438, baseType: !1775, size: 64, offset: 960)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = !DISubroutineType(types: !1777)
!1777 = !{null, !1190, !1778, !1778}
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !668, file: !80, line: 439, baseType: !1780, size: 64, offset: 1024)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{!117, !634, !674}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !668, file: !80, line: 442, baseType: !1784, size: 64, offset: 1088)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DISubroutineType(types: !1786)
!1786 = !{!117, !1787, !845, !1789}
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !80, line: 66, flags: DIFlagFwdDecl)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !668, file: !80, line: 444, baseType: !1355, size: 64, offset: 1152)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !668, file: !80, line: 445, baseType: !1792, size: 64, offset: 1216)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DISubroutineType(types: !1794)
!1794 = !{!117, !1169, !1274}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !635, file: !80, line: 486, baseType: !484, size: 64, offset: 896)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !635, file: !80, line: 487, baseType: !295, size: 320, offset: 960)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !635, file: !80, line: 488, baseType: !1400, size: 32, offset: 1280)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !635, file: !80, line: 489, baseType: !231, size: 32, offset: 1312)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !635, file: !80, line: 490, baseType: !271, size: 128, offset: 1344)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !635, file: !80, line: 491, baseType: !194, size: 64, offset: 1472)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !625, file: !588, line: 180, baseType: !1802, size: 64, offset: 320)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DISubroutineType(types: !1804)
!1804 = !{!594, !845, !530, !624, !464, !279, !606}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !625, file: !588, line: 182, baseType: !1802, size: 64, offset: 384)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !625, file: !588, line: 184, baseType: !1807, size: 64, offset: 448)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DISubroutineType(types: !1809)
!1809 = !{!117, !845, !530, !624, !804}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !613, file: !588, line: 90, baseType: !1811, size: 64, offset: 192)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !613, file: !588, line: 91, baseType: !1813, size: 64, offset: 256)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !578, file: !525, line: 120, baseType: !1815, size: 64, offset: 192)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DISubroutineType(types: !1817)
!1817 = !{!1818, !548}
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1820)
!1820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !74, line: 39, size: 384, elements: !1821)
!1821 = !{!1822, !1823, !1827, !1831, !1837, !1841}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1820, file: !74, line: 40, baseType: !73, size: 32)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1820, file: !74, line: 41, baseType: !1824, size: 64, offset: 64)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DISubroutineType(types: !1826)
!1826 = !{!755}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1820, file: !74, line: 42, baseType: !1828, size: 64, offset: 128)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{!194}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1820, file: !74, line: 43, baseType: !1832, size: 64, offset: 192)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{!1491, !1835}
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !74, line: 19, flags: DIFlagFwdDecl)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1820, file: !74, line: 44, baseType: !1838, size: 64, offset: 256)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DISubroutineType(types: !1840)
!1840 = !{!1491}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1820, file: !74, line: 45, baseType: !1842, size: 64, offset: 320)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DISubroutineType(types: !1844)
!1844 = !{null, !194}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !578, file: !525, line: 121, baseType: !1846, size: 64, offset: 256)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{!1491, !548}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !578, file: !525, line: 122, baseType: !1850, size: 64, offset: 320)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{null, !548, !1853, !1854}
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !524, file: !525, line: 70, baseType: !1856, size: 64, offset: 384)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1858, line: 190, size: 1152, elements: !1859)
!1858 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1859 = !{!1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1951, !1952, !1953, !1954, !1955, !1958}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1857, file: !1858, line: 191, baseType: !251, size: 32)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1857, file: !1858, line: 192, baseType: !251, size: 32, offset: 32)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1857, file: !1858, line: 202, baseType: !1856, size: 64, offset: 64)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1857, file: !1858, line: 203, baseType: !439, size: 64, offset: 128)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1857, file: !1858, line: 205, baseType: !657, size: 192, align: 64, offset: 192)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1857, file: !1858, line: 207, baseType: !1491, size: 64, offset: 384)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1857, file: !1858, line: 208, baseType: !28, size: 32, offset: 448)
!1867 = !DIDerivedType(tag: DW_TAG_member, scope: !1857, file: !1858, line: 209, baseType: !1868, size: 256, offset: 512)
!1868 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1857, file: !1858, line: 209, size: 256, elements: !1869)
!1869 = !{!1870, !1879, !1883}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1868, file: !1858, line: 210, baseType: !1871, size: 256)
!1871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1858, line: 153, size: 256, elements: !1872)
!1872 = !{!1873, !1874, !1875, !1878}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1871, file: !1858, line: 154, baseType: !484, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1871, file: !1858, line: 156, baseType: !653, size: 64, offset: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1871, file: !1858, line: 162, baseType: !1876, size: 64, offset: 128)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1858, line: 162, flags: DIFlagFwdDecl)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1871, file: !1858, line: 167, baseType: !484, size: 64, offset: 192)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1868, file: !1858, line: 211, baseType: !1880, size: 64)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1858, line: 170, size: 64, elements: !1881)
!1881 = !{!1882}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1880, file: !1858, line: 171, baseType: !1856, size: 64)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1868, file: !1858, line: 212, baseType: !1884, size: 256)
!1884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1858, line: 174, size: 256, elements: !1885)
!1885 = !{!1886, !1946, !1949, !1950}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1884, file: !1858, line: 175, baseType: !1887, size: 64)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1889)
!1889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1858, line: 271, size: 768, elements: !1890)
!1890 = !{!1891, !1911, !1915, !1919, !1923, !1927, !1931, !1935, !1936, !1937, !1938, !1942}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1889, file: !1858, line: 276, baseType: !1892, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DISubroutineType(types: !1894)
!1894 = !{!117, !1895}
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1858, line: 251, size: 1216, elements: !1897)
!1897 = !{!1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1896, file: !1858, line: 253, baseType: !1856, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1896, file: !1858, line: 254, baseType: !845, size: 64, offset: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1896, file: !1858, line: 255, baseType: !1372, size: 64, offset: 128)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1896, file: !1858, line: 256, baseType: !194, size: 64, offset: 192)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1896, file: !1858, line: 259, baseType: !864, size: 256, offset: 256)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1896, file: !1858, line: 260, baseType: !864, size: 256, offset: 512)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1896, file: !1858, line: 261, baseType: !117, size: 32, offset: 768)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1896, file: !1858, line: 262, baseType: !271, size: 128, offset: 832)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1896, file: !1858, line: 263, baseType: !464, size: 64, offset: 960)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1896, file: !1858, line: 265, baseType: !606, size: 64, offset: 1024)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1896, file: !1858, line: 266, baseType: !755, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1896, file: !1858, line: 267, baseType: !755, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1896, file: !1858, line: 268, baseType: !1573, size: 64, offset: 1152)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1889, file: !1858, line: 277, baseType: !1912, size: 64, offset: 64)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{null, !1895}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1889, file: !1858, line: 290, baseType: !1916, size: 64, offset: 128)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{!117, !1372, !194}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1889, file: !1858, line: 292, baseType: !1920, size: 64, offset: 192)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{!194, !1372, !1160}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1889, file: !1858, line: 293, baseType: !1924, size: 64, offset: 256)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{!194, !1372, !194, !1160}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1889, file: !1858, line: 294, baseType: !1928, size: 64, offset: 320)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{null, !1372, !194}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1889, file: !1858, line: 296, baseType: !1932, size: 64, offset: 384)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DISubroutineType(types: !1934)
!1934 = !{!594, !1895, !464, !606, !279}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1889, file: !1858, line: 306, baseType: !606, size: 64, offset: 448)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1889, file: !1858, line: 313, baseType: !755, size: 8, offset: 512)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1889, file: !1858, line: 314, baseType: !1932, size: 64, offset: 576)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1889, file: !1858, line: 317, baseType: !1939, size: 64, offset: 640)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!1300, !1895, !1301}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1889, file: !1858, line: 320, baseType: !1943, size: 64, offset: 704)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{!117, !1895, !804}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1884, file: !1858, line: 176, baseType: !1947, size: 64, offset: 64)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1858, line: 35, flags: DIFlagFwdDecl)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1884, file: !1858, line: 177, baseType: !279, size: 64, offset: 128)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1884, file: !1858, line: 178, baseType: !1856, size: 64, offset: 192)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1857, file: !1858, line: 215, baseType: !194, size: 64, offset: 768)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1857, file: !1858, line: 221, baseType: !394, size: 64, offset: 832)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1857, file: !1858, line: 223, baseType: !219, size: 16, offset: 896)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1857, file: !1858, line: 224, baseType: !325, size: 16, offset: 912)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1857, file: !1858, line: 225, baseType: !1956, size: 64, offset: 960)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1858, line: 36, flags: DIFlagFwdDecl)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1857, file: !1858, line: 227, baseType: !759, size: 128, align: 64, offset: 1024)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !524, file: !525, line: 71, baseType: !1960, size: 32, offset: 448)
!1960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1961, line: 19, size: 32, elements: !1962)
!1961 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1962 = !{!1963}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1960, file: !1961, line: 20, baseType: !902, size: 32)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !524, file: !525, line: 73, baseType: !28, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !524, file: !525, line: 74, baseType: !28, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !524, file: !525, line: 75, baseType: !28, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !524, file: !525, line: 76, baseType: !28, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !524, file: !525, line: 77, baseType: !28, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !521, file: !36, line: 47, baseType: !511, size: 64, offset: 512)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !521, file: !36, line: 48, baseType: !530, size: 64, offset: 576)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !521, file: !36, line: 49, baseType: !1972, size: 64, offset: 640)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !36, line: 49, flags: DIFlagFwdDecl)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !521, file: !36, line: 50, baseType: !1975, size: 64, offset: 704)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !512, file: !36, line: 418, baseType: !1977, size: 64, offset: 1408)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !36, line: 53, size: 448, elements: !1979)
!1979 = !{!1980, !1981, !1986, !1990, !1994, !1998}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1978, file: !36, line: 54, baseType: !598, size: 128)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1978, file: !36, line: 55, baseType: !1982, size: 64, offset: 128)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{!594, !1977, !1985, !464}
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1978, file: !36, line: 57, baseType: !1987, size: 64, offset: 192)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!594, !1977, !1985, !439, !606}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1978, file: !36, line: 59, baseType: !1991, size: 64, offset: 256)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{null, !511, !439}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1978, file: !36, line: 60, baseType: !1995, size: 64, offset: 320)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DISubroutineType(types: !1997)
!1997 = !{!117, !511}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1978, file: !36, line: 61, baseType: !1999, size: 64, offset: 384)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{null, !511}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !512, file: !36, line: 419, baseType: !439, size: 64, offset: 1472)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !512, file: !36, line: 420, baseType: !439, size: 64, offset: 1536)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !512, file: !36, line: 421, baseType: !530, size: 64, offset: 1600)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !512, file: !36, line: 424, baseType: !2006, size: 64, offset: 1664)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2008)
!2008 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !36, line: 424, flags: DIFlagFwdDecl)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !512, file: !36, line: 425, baseType: !2010, size: 64, offset: 1728)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !973)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !512, file: !36, line: 426, baseType: !28, size: 32, offset: 1792)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !512, file: !36, line: 435, baseType: !864, size: 256, offset: 1856)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !512, file: !36, line: 437, baseType: !2015, size: 64, offset: 2112)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2017, line: 69, size: 320, elements: !2018)
!2017 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2018 = !{!2019, !2020, !2021, !2038, !2040, !2044, !2045}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2016, file: !2017, line: 70, baseType: !439, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2016, file: !2017, line: 71, baseType: !511, size: 64, offset: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2016, file: !2017, line: 72, baseType: !2022, size: 64, offset: 128)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2024)
!2024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2017, line: 47, size: 256, elements: !2025)
!2025 = !{!2026, !2027, !2033, !2037}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2024, file: !2017, line: 49, baseType: !28, size: 32)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2024, file: !2017, line: 51, baseType: !2028, size: 64, offset: 64)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{!117, !439, !2031}
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2016)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2024, file: !2017, line: 53, baseType: !2034, size: 64, offset: 128)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!117, !464, !2031}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2024, file: !2017, line: 55, baseType: !1842, size: 64, offset: 192)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2016, file: !2017, line: 73, baseType: !2039, size: 16, offset: 192)
!2039 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !268)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2016, file: !2017, line: 74, baseType: !2041, size: 8, offset: 208)
!2041 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !260, line: 16, baseType: !2042)
!2042 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !203, line: 20, baseType: !2043)
!2043 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2016, file: !2017, line: 75, baseType: !259, size: 8, offset: 216)
!2045 = !DIDerivedType(tag: DW_TAG_member, scope: !2016, file: !2017, line: 76, baseType: !2046, size: 64, offset: 256)
!2046 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2016, file: !2017, line: 76, size: 64, elements: !2047)
!2047 = !{!2048, !2049, !2056}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2046, file: !2017, line: 77, baseType: !194, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2046, file: !2017, line: 78, baseType: !2050, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2052)
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2017, line: 86, size: 128, elements: !2053)
!2053 = !{!2054, !2055}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2052, file: !2017, line: 87, baseType: !28, size: 32)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2052, file: !2017, line: 88, baseType: !464, size: 64, offset: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2046, file: !2017, line: 79, baseType: !2057, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2059)
!2059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2017, line: 92, size: 256, elements: !2060)
!2060 = !{!2061, !2062, !2063, !2065, !2066}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2059, file: !2017, line: 94, baseType: !28, size: 32)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2059, file: !2017, line: 95, baseType: !28, size: 32, offset: 32)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2059, file: !2017, line: 96, baseType: !2064, size: 64, offset: 64)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2059, file: !2017, line: 97, baseType: !2022, size: 64, offset: 128)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2059, file: !2017, line: 98, baseType: !194, size: 64, offset: 192)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !512, file: !36, line: 438, baseType: !28, size: 32, offset: 2176)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !512, file: !36, line: 441, baseType: !28, size: 32, offset: 2208)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !512, file: !36, line: 442, baseType: !2006, size: 64, offset: 2240)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !512, file: !36, line: 443, baseType: !2010, size: 64, offset: 2304)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !512, file: !36, line: 444, baseType: !755, size: 8, offset: 2368)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !512, file: !36, line: 451, baseType: !755, size: 8, offset: 2376)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !512, file: !36, line: 454, baseType: !28, size: 32, offset: 2400)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !512, file: !36, line: 455, baseType: !2075, size: 64, offset: 2432)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2077, line: 23, size: 96, elements: !2078)
!2077 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2078 = !{!2079, !2080, !2081}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2076, file: !2077, line: 24, baseType: !117, size: 32)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2076, file: !2077, line: 24, baseType: !117, size: 32, offset: 32)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2076, file: !2077, line: 24, baseType: !117, size: 32, offset: 64)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !512, file: !36, line: 458, baseType: !2083, size: 64, offset: 2496)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = !DISubroutineType(types: !2085)
!2085 = !{!117}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !512, file: !36, line: 460, baseType: !2087, size: 4032, align: 512, offset: 2560)
!2087 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2088, size: 4032, elements: !2104)
!2088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !36, line: 362, size: 576, elements: !2089)
!2089 = !{!2090, !2091, !2092}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2088, file: !36, line: 363, baseType: !194, size: 64)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2088, file: !36, line: 364, baseType: !28, size: 32, offset: 64)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2088, file: !36, line: 367, baseType: !2093, size: 448, offset: 128)
!2093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !36, line: 319, size: 448, elements: !2094)
!2094 = !{!2095, !2096}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2093, file: !36, line: 320, baseType: !511, size: 64)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2093, file: !36, line: 321, baseType: !2097, size: 384, offset: 64)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2098, line: 40, size: 384, elements: !2099)
!2098 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2099 = !{!2100}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2097, file: !2098, line: 41, baseType: !2101, size: 384, align: 64)
!2101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !657, size: 384, align: 64, elements: !2102)
!2102 = !{!2103}
!2103 = !DISubrange(count: 2)
!2104 = !{!2105}
!2105 = !DISubrange(count: 7)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !512, file: !36, line: 463, baseType: !2107, size: 192, offset: 6592)
!2107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2108, line: 8, size: 192, elements: !2109)
!2108 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2109 = !{!2110, !2111, !2113}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2107, file: !2108, line: 10, baseType: !28, size: 32)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2107, file: !2108, line: 11, baseType: !2112, size: 64, offset: 64)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2107, file: !2108, line: 12, baseType: !2114, size: 64, offset: 128)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2116, line: 59, size: 48, elements: !2117)
!2116 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2117 = !{!2118, !2119, !2120, !2121, !2122, !2123}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2115, file: !2116, line: 60, baseType: !1508, size: 16)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2115, file: !2116, line: 61, baseType: !1508, size: 16, offset: 16)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2115, file: !2116, line: 63, baseType: !28, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2115, file: !2116, line: 64, baseType: !28, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2115, file: !2116, line: 65, baseType: !28, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2115, file: !2116, line: 66, baseType: !28, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !512, file: !36, line: 465, baseType: !484, size: 64, offset: 6784)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !512, file: !36, line: 469, baseType: !28, size: 32, offset: 6848)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !512, file: !36, line: 470, baseType: !271, size: 128, offset: 6912)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !512, file: !36, line: 471, baseType: !2128, size: 64, offset: 7040)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2130, line: 33, size: 96, elements: !2131)
!2130 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2131 = !{!2132, !2133, !2134, !2135}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2129, file: !2130, line: 37, baseType: !117, size: 32)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2129, file: !2130, line: 43, baseType: !117, size: 32, offset: 32)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2129, file: !2130, line: 45, baseType: !219, size: 16, offset: 64)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2129, file: !2130, line: 47, baseType: !219, size: 16, offset: 80)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !512, file: !36, line: 476, baseType: !2137, size: 64, offset: 7104)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !36, line: 378, size: 256, elements: !2139)
!2139 = !{!2140, !2156, !2157, !2158}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2138, file: !36, line: 379, baseType: !2141, size: 64)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2143, line: 204, baseType: !2144)
!2143 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2143, line: 197, size: 192, elements: !2145)
!2145 = !{!2146, !2148, !2149, !2150, !2152, !2154}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2144, file: !2143, line: 198, baseType: !2147, size: 32)
!2147 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2143, line: 21, baseType: !202)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2144, file: !2143, line: 199, baseType: !262, size: 8, offset: 32)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2144, file: !2143, line: 200, baseType: !262, size: 8, offset: 40)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2144, file: !2143, line: 201, baseType: !2151, size: 16, offset: 48)
!2151 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2143, line: 17, baseType: !218)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2144, file: !2143, line: 202, baseType: !2153, size: 64, offset: 64)
!2153 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2143, line: 16, baseType: !395)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2144, file: !2143, line: 203, baseType: !2155, size: 64, offset: 128)
!2155 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2143, line: 22, baseType: !395)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2138, file: !36, line: 380, baseType: !28, size: 32, offset: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2138, file: !36, line: 381, baseType: !464, size: 64, offset: 128)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2138, file: !36, line: 382, baseType: !464, size: 64, offset: 192)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !512, file: !36, line: 477, baseType: !2138, size: 256, offset: 7168)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !512, file: !36, line: 480, baseType: !2161, size: 64, offset: 7424)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !36, line: 480, flags: DIFlagFwdDecl)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !512, file: !36, line: 483, baseType: !2164, size: 64, offset: 7488)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !36, line: 483, flags: DIFlagFwdDecl)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !512, file: !36, line: 488, baseType: !464, size: 64, offset: 7552)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !512, file: !36, line: 492, baseType: !194, size: 64, offset: 7616)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !512, file: !36, line: 493, baseType: !28, size: 32, offset: 7680)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !512, file: !36, line: 495, baseType: !194, size: 64, offset: 7744)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !512, file: !36, line: 496, baseType: !28, size: 32, offset: 7808)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !512, file: !36, line: 499, baseType: !28, size: 32, offset: 7840)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !512, file: !36, line: 500, baseType: !2173, size: 64, offset: 7872)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2175, line: 45, baseType: !2176)
!2175 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !512, file: !36, line: 503, baseType: !28, size: 32, offset: 7936)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !512, file: !36, line: 504, baseType: !2179, size: 64, offset: 8000)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2182, line: 96, size: 192, elements: !2183)
!2182 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2183 = !{!2184, !2185, !2239, !2242}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2181, file: !2182, line: 97, baseType: !28, size: 32)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2181, file: !2182, line: 98, baseType: !2186, size: 64, offset: 64)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2182, line: 24, size: 3072, elements: !2188)
!2188 = !{!2189, !2191, !2192, !2193, !2194, !2208, !2209, !2210, !2211, !2223, !2224, !2225, !2236, !2237, !2238}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2187, file: !2182, line: 26, baseType: !2190, size: 128)
!2190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 128, elements: !2102)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2187, file: !2182, line: 27, baseType: !2190, size: 128, offset: 128)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2187, file: !2182, line: 28, baseType: !117, size: 32, offset: 256)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2187, file: !2182, line: 31, baseType: !231, size: 32, align: 512, offset: 512)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2187, file: !2182, line: 32, baseType: !2195, size: 960, offset: 576)
!2195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2196, line: 206, size: 960, elements: !2197)
!2196 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2197 = !{!2198, !2199, !2202, !2204, !2205, !2207}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2195, file: !2196, line: 207, baseType: !762, size: 64)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2195, file: !2196, line: 208, baseType: !2200, size: 256, offset: 64)
!2200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2201, size: 256, elements: !213)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2195, file: !2196, line: 209, baseType: !2203, size: 256, offset: 320)
!2203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !484, size: 256, elements: !213)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2195, file: !2196, line: 213, baseType: !320, size: 64, offset: 576)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2195, file: !2196, line: 215, baseType: !2206, size: 256, offset: 640)
!2206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !320, size: 256, elements: !213)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2195, file: !2196, line: 216, baseType: !259, size: 8, offset: 896)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2187, file: !2182, line: 33, baseType: !484, size: 64, offset: 1536)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2187, file: !2182, line: 34, baseType: !484, size: 64, offset: 1600)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2187, file: !2182, line: 35, baseType: !755, size: 8, offset: 1664)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2187, file: !2182, line: 36, baseType: !2212, size: 320, offset: 1728)
!2212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2213, line: 11, size: 320, elements: !2214)
!2213 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2214 = !{!2215, !2216, !2217, !2222}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2212, file: !2213, line: 16, baseType: !287, size: 128)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2212, file: !2213, line: 17, baseType: !484, size: 64, offset: 128)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2212, file: !2213, line: 18, baseType: !2218, size: 64, offset: 192)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{null, !2221}
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2212, file: !2213, line: 19, baseType: !391, size: 32, offset: 256)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2187, file: !2182, line: 37, baseType: !1530, size: 256, offset: 2048)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2187, file: !2182, line: 38, baseType: !759, size: 128, align: 64, offset: 2304)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2187, file: !2182, line: 39, baseType: !2226, size: 64, offset: 2432)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2182, line: 49, size: 768, elements: !2228)
!2228 = !{!2229, !2230, !2231, !2232, !2233, !2234, !2235}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2227, file: !2182, line: 50, baseType: !231, size: 32)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2227, file: !2182, line: 51, baseType: !2203, size: 256, offset: 64)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2227, file: !2182, line: 53, baseType: !2203, size: 256, offset: 320)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2227, file: !2182, line: 54, baseType: !484, size: 64, offset: 576)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2227, file: !2182, line: 55, baseType: !2226, size: 64, offset: 640)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2227, file: !2182, line: 56, baseType: !117, size: 32, offset: 704)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2227, file: !2182, line: 57, baseType: !117, size: 32, offset: 736)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2187, file: !2182, line: 40, baseType: !484, size: 64, offset: 2496)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2187, file: !2182, line: 42, baseType: !117, size: 32, offset: 2560)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2187, file: !2182, line: 43, baseType: !2180, size: 64, offset: 2624)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2181, file: !2182, line: 99, baseType: !2240, offset: 128)
!2240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2241, line: 211, elements: !838)
!2241 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2181, file: !2182, line: 100, baseType: !2243, size: 64, offset: 128)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2182, line: 63, size: 3008, elements: !2245)
!2245 = !{!2246, !2247, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2277}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2244, file: !2182, line: 64, baseType: !2226, size: 64)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2244, file: !2182, line: 65, baseType: !2248, size: 192, offset: 64)
!2248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2226, size: 192, elements: !5)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2244, file: !2182, line: 67, baseType: !117, size: 32, offset: 256)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2244, file: !2182, line: 68, baseType: !864, size: 256, offset: 320)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2244, file: !2182, line: 69, baseType: !231, size: 32, offset: 576)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2244, file: !2182, line: 70, baseType: !864, size: 256, offset: 640)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2244, file: !2182, line: 71, baseType: !484, size: 64, offset: 896)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2244, file: !2182, line: 72, baseType: !484, size: 64, offset: 960)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2244, file: !2182, line: 73, baseType: !484, size: 64, offset: 1024)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2244, file: !2182, line: 74, baseType: !484, size: 64, offset: 1088)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2244, file: !2182, line: 75, baseType: !484, size: 64, offset: 1152)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2244, file: !2182, line: 76, baseType: !484, size: 64, offset: 1216)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2244, file: !2182, line: 77, baseType: !484, size: 64, offset: 1280)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2244, file: !2182, line: 78, baseType: !484, size: 64, offset: 1344)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2244, file: !2182, line: 79, baseType: !755, size: 8, offset: 1408)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2244, file: !2182, line: 80, baseType: !484, size: 64, offset: 1472)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2244, file: !2182, line: 81, baseType: !864, size: 256, offset: 1536)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2244, file: !2182, line: 82, baseType: !769, size: 256, offset: 1792)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2244, file: !2182, line: 84, baseType: !251, size: 32, offset: 2048)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2244, file: !2182, line: 87, baseType: !484, size: 64, offset: 2112)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2244, file: !2182, line: 88, baseType: !484, size: 64, offset: 2176)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2244, file: !2182, line: 89, baseType: !2269, size: 704, offset: 2240)
!2269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1531, line: 111, size: 704, elements: !2270)
!2270 = !{!2271, !2272, !2273, !2276}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2269, file: !1531, line: 112, baseType: !1530, size: 256)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2269, file: !1531, line: 113, baseType: !2212, size: 320, offset: 256)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2269, file: !1531, line: 116, baseType: !2274, size: 64, offset: 576)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1531, line: 18, flags: DIFlagFwdDecl)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2269, file: !1531, line: 117, baseType: !117, size: 32, offset: 640)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2244, file: !2182, line: 90, baseType: !2180, size: 64, offset: 2944)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !512, file: !36, line: 515, baseType: !2279, size: 64, offset: 8064)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2281, line: 117, size: 128, elements: !2282)
!2281 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2282 = !{!2283, !2284, !2285}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2280, file: !2281, line: 118, baseType: !973, size: 32)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2280, file: !2281, line: 119, baseType: !973, size: 32, offset: 32)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2280, file: !2281, line: 120, baseType: !320, size: 64, offset: 64)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !512, file: !36, line: 516, baseType: !28, size: 32, offset: 8128)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !512, file: !36, line: 519, baseType: !28, size: 32, offset: 8160)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !512, file: !36, line: 520, baseType: !2289, size: 64, offset: 8192)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !512, file: !36, line: 523, baseType: !2291, size: 64, offset: 8256)
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !36, line: 523, flags: DIFlagFwdDecl)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !512, file: !36, line: 524, baseType: !28, size: 32, offset: 8320)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !512, file: !36, line: 525, baseType: !2296, size: 64, offset: 8384)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !36, line: 525, flags: DIFlagFwdDecl)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !512, file: !36, line: 526, baseType: !28, size: 32, offset: 8448)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !512, file: !36, line: 533, baseType: !194, size: 64, offset: 8512)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !512, file: !36, line: 534, baseType: !28, size: 32, offset: 8576)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !512, file: !36, line: 535, baseType: !2303, size: 64, offset: 8640)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !512, file: !36, line: 536, baseType: !28, size: 32, offset: 8704)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !512, file: !36, line: 539, baseType: !117, size: 32, offset: 8736)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !512, file: !36, line: 540, baseType: !2307, size: 64, offset: 8768)
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64)
!2308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2309, line: 32, size: 64, elements: !2310)
!2309 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2310 = !{!2311, !2312}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2308, file: !2309, line: 33, baseType: !973, size: 32)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2308, file: !2309, line: 34, baseType: !973, size: 32, offset: 32)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !512, file: !36, line: 563, baseType: !271, size: 128, offset: 8832)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !512, file: !36, line: 565, baseType: !271, size: 128, offset: 8960)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !512, file: !36, line: 568, baseType: !2316, size: 64, offset: 9088)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{null}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !512, file: !36, line: 570, baseType: !251, size: 32, offset: 9152)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !488, file: !80, line: 2382, baseType: !487, size: 64, offset: 448)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !488, file: !80, line: 2383, baseType: !911, size: 64, offset: 512)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !488, file: !80, line: 2385, baseType: !2323, offset: 576)
!2323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2241, line: 206, elements: !838)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !488, file: !80, line: 2386, baseType: !2323, offset: 576)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !488, file: !80, line: 2387, baseType: !2323, offset: 576)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !488, file: !80, line: 2388, baseType: !2327, offset: 576)
!2327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2323, elements: !5)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !488, file: !80, line: 2390, baseType: !2323, offset: 576)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !488, file: !80, line: 2391, baseType: !2323, offset: 576)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !488, file: !80, line: 2392, baseType: !2323, offset: 576)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !488, file: !80, line: 2393, baseType: !2323, offset: 576)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !476, file: !80, line: 1197, baseType: !2333, size: 64, offset: 384)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2335)
!2335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !80, line: 2057, size: 1664, elements: !2336)
!2336 = !{!2337, !2341, !2345, !2346, !2350, !2354, !2358, !2359, !2360, !2364, !2368, !2372, !2373, !2374, !2380, !2384, !2385, !2389, !2390, !2391, !2392, !2396, !2400, !2447, !2462, !2463}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2335, file: !80, line: 2058, baseType: !2338, size: 64)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2339 = !DISubroutineType(types: !2340)
!2340 = !{!400, !475}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2335, file: !80, line: 2059, baseType: !2342, size: 64, offset: 64)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = !DISubroutineType(types: !2344)
!2344 = !{null, !400}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2335, file: !80, line: 2060, baseType: !2342, size: 64, offset: 128)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2335, file: !80, line: 2062, baseType: !2347, size: 64, offset: 192)
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2348 = !DISubroutineType(types: !2349)
!2349 = !{null, !400, !117}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2335, file: !80, line: 2063, baseType: !2351, size: 64, offset: 256)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = !DISubroutineType(types: !2353)
!2353 = !{!117, !400, !1705}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2335, file: !80, line: 2064, baseType: !2355, size: 64, offset: 320)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DISubroutineType(types: !2357)
!2357 = !{!117, !400}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2335, file: !80, line: 2065, baseType: !2342, size: 64, offset: 384)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2335, file: !80, line: 2066, baseType: !507, size: 64, offset: 448)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2335, file: !80, line: 2067, baseType: !2361, size: 64, offset: 512)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{!117, !475, !117}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2335, file: !80, line: 2068, baseType: !2365, size: 64, offset: 576)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{!117, !475, !79}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2335, file: !80, line: 2069, baseType: !2369, size: 64, offset: 640)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{!117, !475}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2335, file: !80, line: 2070, baseType: !2365, size: 64, offset: 704)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2335, file: !80, line: 2071, baseType: !2369, size: 64, offset: 768)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2335, file: !80, line: 2072, baseType: !2375, size: 64, offset: 832)
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!117, !357, !2378}
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !80, line: 62, flags: DIFlagFwdDecl)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2335, file: !80, line: 2073, baseType: !2381, size: 64, offset: 896)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!117, !475, !2112, !464}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2335, file: !80, line: 2074, baseType: !507, size: 64, offset: 960)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2335, file: !80, line: 2076, baseType: !2386, size: 64, offset: 1024)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{!117, !1372, !357}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2335, file: !80, line: 2077, baseType: !2386, size: 64, offset: 1088)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2335, file: !80, line: 2078, baseType: !2386, size: 64, offset: 1152)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2335, file: !80, line: 2079, baseType: !2386, size: 64, offset: 1216)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2335, file: !80, line: 2081, baseType: !2393, size: 64, offset: 1280)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{!594, !475, !117, !464, !606, !279}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2335, file: !80, line: 2082, baseType: !2397, size: 64, offset: 1344)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{!594, !475, !117, !439, !606, !279}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2335, file: !80, line: 2083, baseType: !2401, size: 64, offset: 1408)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{!2404, !400}
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !85, line: 296, size: 1664, elements: !2407)
!2407 = !{!2408, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2432, !2433, !2434}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2406, file: !85, line: 297, baseType: !287, size: 128)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2406, file: !85, line: 298, baseType: !271, size: 128, offset: 128)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2406, file: !85, line: 299, baseType: !271, size: 128, offset: 256)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2406, file: !85, line: 300, baseType: !271, size: 128, offset: 384)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2406, file: !85, line: 301, baseType: !864, size: 256, offset: 512)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2406, file: !85, line: 302, baseType: !231, size: 32, offset: 768)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2406, file: !85, line: 303, baseType: !251, size: 32, offset: 800)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2406, file: !85, line: 304, baseType: !475, size: 64, offset: 832)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2406, file: !85, line: 305, baseType: !2417, size: 64, offset: 896)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !85, line: 68, size: 64, elements: !2418)
!2418 = !{!2419, !2431}
!2419 = !DIDerivedType(tag: DW_TAG_member, scope: !2417, file: !85, line: 69, baseType: !2420, size: 32)
!2420 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2417, file: !85, line: 69, size: 32, elements: !2421)
!2421 = !{!2422, !2423, !2424}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2420, file: !85, line: 70, baseType: !328, size: 32)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2420, file: !85, line: 71, baseType: !337, size: 32)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2420, file: !85, line: 72, baseType: !2425, size: 32)
!2425 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2426, line: 24, baseType: !2427)
!2426 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2427 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2426, line: 22, size: 32, elements: !2428)
!2428 = !{!2429}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2427, file: !2426, line: 23, baseType: !2430, size: 32)
!2430 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2426, line: 20, baseType: !334)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2417, file: !85, line: 74, baseType: !84, size: 32, offset: 32)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2406, file: !85, line: 306, baseType: !279, size: 64, offset: 960)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2406, file: !85, line: 307, baseType: !484, size: 64, offset: 1024)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2406, file: !85, line: 308, baseType: !2435, size: 576, offset: 1088)
!2435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !85, line: 205, size: 576, elements: !2436)
!2436 = !{!2437, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2435, file: !85, line: 206, baseType: !2438, size: 64)
!2438 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !85, line: 66, baseType: !224)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2435, file: !85, line: 207, baseType: !2438, size: 64, offset: 64)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2435, file: !85, line: 208, baseType: !2438, size: 64, offset: 128)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2435, file: !85, line: 209, baseType: !2438, size: 64, offset: 192)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2435, file: !85, line: 210, baseType: !2438, size: 64, offset: 256)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2435, file: !85, line: 211, baseType: !2438, size: 64, offset: 320)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2435, file: !85, line: 212, baseType: !2438, size: 64, offset: 384)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2435, file: !85, line: 213, baseType: !221, size: 64, offset: 448)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2435, file: !85, line: 214, baseType: !221, size: 64, offset: 512)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2335, file: !80, line: 2085, baseType: !2448, size: 64, offset: 1472)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{!320, !475, !2451}
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2453, line: 15, size: 256, elements: !2454)
!2453 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2454 = !{!2455, !2456, !2457, !2458, !2459}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2452, file: !2453, line: 16, baseType: !225, size: 32)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2452, file: !2453, line: 19, baseType: !117, size: 32, offset: 32)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2452, file: !2453, line: 26, baseType: !484, size: 64, offset: 64)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2452, file: !2453, line: 33, baseType: !484, size: 64, offset: 128)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2452, file: !2453, line: 36, baseType: !2460, size: 64, offset: 192)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !2453, line: 36, flags: DIFlagFwdDecl)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2335, file: !80, line: 2087, baseType: !2448, size: 64, offset: 1536)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2335, file: !80, line: 2089, baseType: !507, size: 64, offset: 1600)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !476, file: !80, line: 1198, baseType: !2465, size: 64, offset: 448)
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2467)
!2467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !85, line: 324, size: 704, elements: !2468)
!2468 = !{!2469, !2473, !2477, !2481, !2482, !2483, !2484, !2485, !2490, !2495, !2499}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2467, file: !85, line: 325, baseType: !2470, size: 64)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DISubroutineType(types: !2472)
!2472 = !{!117, !2405}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2467, file: !85, line: 326, baseType: !2474, size: 64, offset: 64)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{!2405, !475, !117}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2467, file: !85, line: 327, baseType: !2478, size: 64, offset: 128)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{null, !2405}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2467, file: !85, line: 328, baseType: !2470, size: 64, offset: 192)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2467, file: !85, line: 329, baseType: !2470, size: 64, offset: 256)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2467, file: !85, line: 330, baseType: !2470, size: 64, offset: 320)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2467, file: !85, line: 331, baseType: !2361, size: 64, offset: 384)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2467, file: !85, line: 334, baseType: !2486, size: 64, offset: 448)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{!2489, !400}
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2467, file: !85, line: 335, baseType: !2491, size: 64, offset: 512)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!117, !400, !2494}
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2467, file: !85, line: 337, baseType: !2496, size: 64, offset: 576)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{!117, !400, !2489}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2467, file: !85, line: 339, baseType: !2500, size: 64, offset: 640)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!117, !475, !2503}
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !476, file: !80, line: 1199, baseType: !2505, size: 64, offset: 512)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2507)
!2507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !85, line: 430, size: 704, elements: !2508)
!2508 = !{!2509, !2515, !2516, !2520, !2521, !2522, !2537, !2560, !2564, !2565, !2588}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2507, file: !85, line: 431, baseType: !2510, size: 64)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = !DISubroutineType(types: !2512)
!2512 = !{!117, !475, !117, !117, !2513}
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1140)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2507, file: !85, line: 432, baseType: !2361, size: 64, offset: 64)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2507, file: !85, line: 433, baseType: !2517, size: 64, offset: 128)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!117, !475, !28}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2507, file: !85, line: 434, baseType: !2517, size: 64, offset: 192)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2507, file: !85, line: 435, baseType: !2361, size: 64, offset: 256)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2507, file: !85, line: 436, baseType: !2523, size: 64, offset: 320)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{!117, !475, !117, !2526}
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !85, line: 417, size: 256, elements: !2528)
!2528 = !{!2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2527, file: !85, line: 418, baseType: !117, size: 32)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2527, file: !85, line: 419, baseType: !28, size: 32, offset: 32)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2527, file: !85, line: 420, baseType: !28, size: 32, offset: 64)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2527, file: !85, line: 422, baseType: !28, size: 32, offset: 96)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2527, file: !85, line: 423, baseType: !28, size: 32, offset: 128)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2527, file: !85, line: 424, baseType: !28, size: 32, offset: 160)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2527, file: !85, line: 425, baseType: !28, size: 32, offset: 192)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2527, file: !85, line: 426, baseType: !28, size: 32, offset: 224)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2507, file: !85, line: 437, baseType: !2538, size: 64, offset: 384)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = !DISubroutineType(types: !2540)
!2540 = !{!117, !475, !2417, !2541}
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !85, line: 345, size: 960, elements: !2543)
!2543 = !{!2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2542, file: !85, line: 346, baseType: !117, size: 32)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2542, file: !85, line: 347, baseType: !394, size: 64, offset: 64)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2542, file: !85, line: 348, baseType: !394, size: 64, offset: 128)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2542, file: !85, line: 349, baseType: !394, size: 64, offset: 192)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2542, file: !85, line: 350, baseType: !394, size: 64, offset: 256)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2542, file: !85, line: 351, baseType: !394, size: 64, offset: 320)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2542, file: !85, line: 352, baseType: !394, size: 64, offset: 384)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2542, file: !85, line: 353, baseType: !305, size: 64, offset: 448)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2542, file: !85, line: 355, baseType: !305, size: 64, offset: 512)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2542, file: !85, line: 356, baseType: !117, size: 32, offset: 576)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2542, file: !85, line: 357, baseType: !117, size: 32, offset: 608)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2542, file: !85, line: 358, baseType: !394, size: 64, offset: 640)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2542, file: !85, line: 359, baseType: !394, size: 64, offset: 704)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2542, file: !85, line: 360, baseType: !394, size: 64, offset: 768)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2542, file: !85, line: 361, baseType: !305, size: 64, offset: 832)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2542, file: !85, line: 362, baseType: !117, size: 32, offset: 896)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2507, file: !85, line: 438, baseType: !2561, size: 64, offset: 448)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = !DISubroutineType(types: !2563)
!2563 = !{!117, !475, !2503, !2541}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2507, file: !85, line: 440, baseType: !2538, size: 64, offset: 512)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2507, file: !85, line: 441, baseType: !2566, size: 64, offset: 576)
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{!117, !475, !2569}
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !85, line: 411, size: 1408, elements: !2571)
!2571 = !{!2572, !2573}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2570, file: !85, line: 412, baseType: !28, size: 32)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2570, file: !85, line: 413, baseType: !2574, size: 1344, offset: 64)
!2574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2575, size: 1344, elements: !5)
!2575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !85, line: 397, size: 448, elements: !2576)
!2576 = !{!2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2587}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2575, file: !85, line: 398, baseType: !28, size: 32)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2575, file: !85, line: 399, baseType: !28, size: 32, offset: 32)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2575, file: !85, line: 401, baseType: !28, size: 32, offset: 64)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2575, file: !85, line: 402, baseType: !28, size: 32, offset: 96)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2575, file: !85, line: 403, baseType: !28, size: 32, offset: 128)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2575, file: !85, line: 404, baseType: !28, size: 32, offset: 160)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2575, file: !85, line: 405, baseType: !28, size: 32, offset: 192)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2575, file: !85, line: 406, baseType: !217, size: 64, offset: 256)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2575, file: !85, line: 407, baseType: !2586, size: 64, offset: 320)
!2586 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !226, line: 132, baseType: !394)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2575, file: !85, line: 408, baseType: !2586, size: 64, offset: 384)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2507, file: !85, line: 442, baseType: !2517, size: 64, offset: 640)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !476, file: !80, line: 1200, baseType: !2590, size: 64, offset: 576)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2592)
!2592 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !80, line: 54, flags: DIFlagFwdDecl)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !476, file: !80, line: 1201, baseType: !484, size: 64, offset: 640)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !476, file: !80, line: 1202, baseType: !484, size: 64, offset: 704)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !476, file: !80, line: 1203, baseType: !484, size: 64, offset: 768)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !476, file: !80, line: 1204, baseType: !357, size: 64, offset: 832)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !476, file: !80, line: 1205, baseType: !295, size: 320, offset: 896)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !476, file: !80, line: 1206, baseType: !117, size: 32, offset: 1216)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !476, file: !80, line: 1207, baseType: !251, size: 32, offset: 1248)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !476, file: !80, line: 1209, baseType: !194, size: 64, offset: 1280)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !476, file: !80, line: 1211, baseType: !2602, size: 64, offset: 1344)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2605)
!2605 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !80, line: 1211, flags: DIFlagFwdDecl)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !476, file: !80, line: 1223, baseType: !2607, size: 64, offset: 1408)
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !374, line: 34, size: 64, elements: !2608)
!2608 = !{!2609}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2607, file: !374, line: 35, baseType: !377, size: 64)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !476, file: !80, line: 1224, baseType: !271, size: 128, offset: 1472)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !476, file: !80, line: 1225, baseType: !2612, size: 64, offset: 1600)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !2614, line: 40, size: 7424, elements: !2615)
!2614 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!2615 = !{!2616, !2617, !2618, !2621, !2625, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2652, !2653}
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !2613, file: !2614, line: 41, baseType: !1748, size: 64)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !2613, file: !2614, line: 42, baseType: !1748, size: 64, offset: 64)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !2613, file: !2614, line: 43, baseType: !2619, size: 64, offset: 128)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1349, line: 1453, flags: DIFlagFwdDecl)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !2613, file: !2614, line: 44, baseType: !2622, size: 64, offset: 192)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2624, line: 74, flags: DIFlagFwdDecl)
!2624 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !2613, file: !2614, line: 45, baseType: !2626, size: 64, offset: 256)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !2614, line: 45, flags: DIFlagFwdDecl)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !2613, file: !2614, line: 46, baseType: !484, size: 64, offset: 320)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !2613, file: !2614, line: 47, baseType: !755, size: 8, offset: 384)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !2613, file: !2614, line: 48, baseType: !259, size: 8, offset: 392)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !2613, file: !2614, line: 49, baseType: !755, size: 8, offset: 400)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !2613, file: !2614, line: 50, baseType: !755, size: 8, offset: 408)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !2613, file: !2614, line: 51, baseType: !480, size: 32, offset: 416)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !2613, file: !2614, line: 52, baseType: !251, size: 32, offset: 448)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !2613, file: !2614, line: 53, baseType: !231, size: 32, offset: 480)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !2613, file: !2614, line: 54, baseType: !400, size: 64, offset: 512)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !2613, file: !2614, line: 55, baseType: !194, size: 64, offset: 576)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !2613, file: !2614, line: 56, baseType: !194, size: 64, offset: 640)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !2613, file: !2614, line: 57, baseType: !2640, size: 64, offset: 704)
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2641, size: 64)
!2641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2642)
!2642 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !2614, line: 57, flags: DIFlagFwdDecl)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !2613, file: !2614, line: 58, baseType: !864, size: 256, offset: 768)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !2613, file: !2614, line: 60, baseType: !117, size: 32, offset: 1024)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !2613, file: !2614, line: 61, baseType: !117, size: 32, offset: 1056)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !2613, file: !2614, line: 62, baseType: !530, size: 64, offset: 1088)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !2613, file: !2614, line: 65, baseType: !864, size: 256, offset: 1152)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !2613, file: !2614, line: 66, baseType: !475, size: 64, offset: 1408)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !2613, file: !2614, line: 68, baseType: !2650, size: 64, offset: 1472)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !2614, line: 68, flags: DIFlagFwdDecl)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !2613, file: !2614, line: 72, baseType: !755, size: 8, offset: 1536)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !2613, file: !2614, line: 77, baseType: !2654, size: 5824, offset: 1600)
!2654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !97, line: 705, size: 5824, elements: !2655)
!2655 = !{!2656, !2657, !2659, !2662, !2663, !2716, !2786, !2787, !2788, !2789, !2790, !2797, !2957, !2970, !2980, !2984, !2986, !2987, !2988, !2992, !2999, !3000, !3003, !3006, !3010, !3013, !3014, !3015, !3016, !3017, !3018, !3048, !3049, !3050, !3053, !3056, !3065, !3066, !3067, !3068, !3069, !3070}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2654, file: !97, line: 706, baseType: !524, size: 512)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2654, file: !97, line: 707, baseType: !2658, size: 64, offset: 512)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2654, file: !97, line: 709, baseType: !2660, size: 64, offset: 576)
!2660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2661, size: 64)
!2661 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !97, line: 37, flags: DIFlagFwdDecl)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2654, file: !97, line: 711, baseType: !439, size: 64, offset: 640)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2654, file: !97, line: 712, baseType: !2664, size: 64, offset: 704)
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!2665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2666)
!2666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !97, line: 89, size: 384, elements: !2667)
!2667 = !{!2668, !2669, !2670, !2676, !2681, !2685}
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2666, file: !97, line: 90, baseType: !439, size: 64)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2666, file: !97, line: 91, baseType: !610, size: 64, offset: 64)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2666, file: !97, line: 92, baseType: !2671, size: 64, offset: 128)
!2671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!2672 = !DISubroutineType(types: !2673)
!2673 = !{!117, !2674, !560}
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2675, size: 64)
!2675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2654)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2666, file: !97, line: 93, baseType: !2677, size: 64, offset: 192)
!2677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2678, size: 64)
!2678 = !DISubroutineType(types: !2679)
!2679 = !{!464, !2674, !2680, !1853, !1854}
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2666, file: !97, line: 95, baseType: !2682, size: 64, offset: 256)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DISubroutineType(types: !2684)
!2684 = !{null, !2658}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2666, file: !97, line: 97, baseType: !2686, size: 64, offset: 320)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2688)
!2688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !109, line: 286, size: 1472, elements: !2689)
!2689 = !{!2690, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2688, file: !109, line: 287, baseType: !2691, size: 64)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = !DISubroutineType(types: !2693)
!2693 = !{!117, !2658}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2688, file: !109, line: 288, baseType: !2682, size: 64, offset: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2688, file: !109, line: 289, baseType: !2691, size: 64, offset: 128)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2688, file: !109, line: 290, baseType: !2691, size: 64, offset: 192)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2688, file: !109, line: 291, baseType: !2691, size: 64, offset: 256)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2688, file: !109, line: 292, baseType: !2691, size: 64, offset: 320)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2688, file: !109, line: 293, baseType: !2691, size: 64, offset: 384)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2688, file: !109, line: 294, baseType: !2691, size: 64, offset: 448)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2688, file: !109, line: 295, baseType: !2691, size: 64, offset: 512)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2688, file: !109, line: 296, baseType: !2691, size: 64, offset: 576)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2688, file: !109, line: 297, baseType: !2691, size: 64, offset: 640)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2688, file: !109, line: 298, baseType: !2691, size: 64, offset: 704)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2688, file: !109, line: 299, baseType: !2691, size: 64, offset: 768)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2688, file: !109, line: 300, baseType: !2691, size: 64, offset: 832)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2688, file: !109, line: 301, baseType: !2691, size: 64, offset: 896)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2688, file: !109, line: 302, baseType: !2691, size: 64, offset: 960)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2688, file: !109, line: 303, baseType: !2691, size: 64, offset: 1024)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2688, file: !109, line: 304, baseType: !2691, size: 64, offset: 1088)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2688, file: !109, line: 305, baseType: !2691, size: 64, offset: 1152)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2688, file: !109, line: 306, baseType: !2691, size: 64, offset: 1216)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2688, file: !109, line: 307, baseType: !2691, size: 64, offset: 1280)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2688, file: !109, line: 308, baseType: !2691, size: 64, offset: 1344)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2688, file: !109, line: 309, baseType: !2691, size: 64, offset: 1408)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2654, file: !97, line: 714, baseType: !2717, size: 64, offset: 768)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2719)
!2719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2720, line: 80, size: 1344, elements: !2721)
!2720 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2721 = !{!2722, !2723, !2724, !2725, !2726, !2727, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2785}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2719, file: !2720, line: 81, baseType: !439, size: 64)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2719, file: !2720, line: 82, baseType: !439, size: 64, offset: 64)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2719, file: !2720, line: 83, baseType: !610, size: 64, offset: 128)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2719, file: !2720, line: 84, baseType: !610, size: 64, offset: 192)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2719, file: !2720, line: 85, baseType: !610, size: 64, offset: 256)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2719, file: !2720, line: 87, baseType: !2728, size: 64, offset: 320)
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = !DISubroutineType(types: !2730)
!2730 = !{!117, !2658, !2731}
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !91, line: 96, size: 1152, elements: !2733)
!2733 = !{!2734, !2735, !2736, !2737, !2738, !2739, !2740, !2744, !2748, !2749, !2750, !2751, !2752, !2760, !2761, !2762, !2763, !2764, !2765}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2732, file: !91, line: 97, baseType: !439, size: 64)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2732, file: !91, line: 98, baseType: !2717, size: 64, offset: 64)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2732, file: !91, line: 100, baseType: !511, size: 64, offset: 128)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2732, file: !91, line: 101, baseType: !439, size: 64, offset: 192)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2732, file: !91, line: 103, baseType: !755, size: 8, offset: 256)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2732, file: !91, line: 104, baseType: !90, size: 32, offset: 288)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2732, file: !91, line: 106, baseType: !2741, size: 64, offset: 320)
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2743)
!2743 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !91, line: 106, flags: DIFlagFwdDecl)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2732, file: !91, line: 107, baseType: !2745, size: 64, offset: 384)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2747)
!2747 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !91, line: 107, flags: DIFlagFwdDecl)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2732, file: !91, line: 109, baseType: !2691, size: 64, offset: 448)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2732, file: !91, line: 110, baseType: !2682, size: 64, offset: 512)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2732, file: !91, line: 111, baseType: !2691, size: 64, offset: 576)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2732, file: !91, line: 112, baseType: !2682, size: 64, offset: 640)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2732, file: !91, line: 113, baseType: !2753, size: 64, offset: 704)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DISubroutineType(types: !2755)
!2755 = !{!117, !2658, !2756}
!2756 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !109, line: 60, baseType: !2757)
!2757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !109, line: 58, size: 32, elements: !2758)
!2758 = !{!2759}
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2757, file: !109, line: 59, baseType: !117, size: 32)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2732, file: !91, line: 114, baseType: !2691, size: 64, offset: 768)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2732, file: !91, line: 115, baseType: !610, size: 64, offset: 832)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2732, file: !91, line: 116, baseType: !610, size: 64, offset: 896)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2732, file: !91, line: 118, baseType: !2686, size: 64, offset: 960)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2732, file: !91, line: 119, baseType: !2682, size: 64, offset: 1024)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2732, file: !91, line: 121, baseType: !2766, size: 64, offset: 1088)
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !91, line: 121, flags: DIFlagFwdDecl)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2719, file: !2720, line: 88, baseType: !2671, size: 64, offset: 384)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2719, file: !2720, line: 89, baseType: !2691, size: 64, offset: 448)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2719, file: !2720, line: 90, baseType: !2682, size: 64, offset: 512)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2719, file: !2720, line: 91, baseType: !2682, size: 64, offset: 576)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2719, file: !2720, line: 92, baseType: !2682, size: 64, offset: 640)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2719, file: !2720, line: 94, baseType: !2691, size: 64, offset: 704)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2719, file: !2720, line: 95, baseType: !2691, size: 64, offset: 768)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2719, file: !2720, line: 97, baseType: !2753, size: 64, offset: 832)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2719, file: !2720, line: 98, baseType: !2691, size: 64, offset: 896)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2719, file: !2720, line: 100, baseType: !2691, size: 64, offset: 960)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2719, file: !2720, line: 102, baseType: !2691, size: 64, offset: 1024)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2719, file: !2720, line: 103, baseType: !2682, size: 64, offset: 1088)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2719, file: !2720, line: 105, baseType: !2686, size: 64, offset: 1152)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2719, file: !2720, line: 107, baseType: !2782, size: 64, offset: 1216)
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2783 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2784)
!2784 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2720, line: 107, flags: DIFlagFwdDecl)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2719, file: !2720, line: 109, baseType: !755, size: 8, offset: 1280)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2654, file: !97, line: 715, baseType: !2731, size: 64, offset: 832)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2654, file: !97, line: 717, baseType: !194, size: 64, offset: 896)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2654, file: !97, line: 719, baseType: !194, size: 64, offset: 960)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2654, file: !97, line: 721, baseType: !864, size: 256, offset: 1024)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2654, file: !97, line: 725, baseType: !2791, size: 448, offset: 1280)
!2791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !97, line: 517, size: 448, elements: !2792)
!2792 = !{!2793, !2794, !2795, !2796}
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2791, file: !97, line: 518, baseType: !271, size: 128)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2791, file: !97, line: 519, baseType: !271, size: 128, offset: 128)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2791, file: !97, line: 520, baseType: !271, size: 128, offset: 256)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2791, file: !97, line: 521, baseType: !96, size: 32, offset: 384)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2654, file: !97, line: 726, baseType: !2798, size: 2496, offset: 1728)
!2798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !109, line: 663, size: 2496, elements: !2799)
!2799 = !{!2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2844, !2845, !2846, !2847, !2848, !2849, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2950, !2954}
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2798, file: !109, line: 664, baseType: !2756, size: 32)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2798, file: !109, line: 665, baseType: !28, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2798, file: !109, line: 666, baseType: !28, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2798, file: !109, line: 667, baseType: !755, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2798, file: !109, line: 668, baseType: !755, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2798, file: !109, line: 669, baseType: !755, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2798, file: !109, line: 670, baseType: !755, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2798, file: !109, line: 671, baseType: !755, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2798, file: !109, line: 672, baseType: !755, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2798, file: !109, line: 673, baseType: !755, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2798, file: !109, line: 674, baseType: !755, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2798, file: !109, line: 675, baseType: !391, size: 32, offset: 64)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2798, file: !109, line: 676, baseType: !231, size: 32, offset: 96)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2798, file: !109, line: 678, baseType: !271, size: 128, offset: 128)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2798, file: !109, line: 679, baseType: !769, size: 256, offset: 256)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2798, file: !109, line: 680, baseType: !2816, size: 64, offset: 512)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2818, line: 43, size: 1536, elements: !2819)
!2818 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2819 = !{!2820, !2821, !2822, !2823, !2824, !2827, !2828, !2829, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2817, file: !2818, line: 44, baseType: !439, size: 64)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2817, file: !2818, line: 45, baseType: !117, size: 32, offset: 64)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2817, file: !2818, line: 46, baseType: !271, size: 128, offset: 128)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2817, file: !2818, line: 47, baseType: !231, size: 32, offset: 256)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2817, file: !2818, line: 48, baseType: !2825, size: 64, offset: 320)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !109, line: 629, flags: DIFlagFwdDecl)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2817, file: !2818, line: 49, baseType: !2212, size: 320, offset: 384)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2817, file: !2818, line: 50, baseType: !484, size: 64, offset: 704)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2817, file: !2818, line: 51, baseType: !2830, size: 64, offset: 768)
!2830 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2831, line: 29, baseType: !305)
!2831 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2817, file: !2818, line: 52, baseType: !2830, size: 64, offset: 832)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2817, file: !2818, line: 53, baseType: !2830, size: 64, offset: 896)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2817, file: !2818, line: 54, baseType: !2830, size: 64, offset: 960)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2817, file: !2818, line: 55, baseType: !2830, size: 64, offset: 1024)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2817, file: !2818, line: 56, baseType: !484, size: 64, offset: 1088)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2817, file: !2818, line: 57, baseType: !484, size: 64, offset: 1152)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2817, file: !2818, line: 58, baseType: !484, size: 64, offset: 1216)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2817, file: !2818, line: 59, baseType: !484, size: 64, offset: 1280)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2817, file: !2818, line: 60, baseType: !484, size: 64, offset: 1344)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2817, file: !2818, line: 61, baseType: !2658, size: 64, offset: 1408)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2817, file: !2818, line: 62, baseType: !755, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2817, file: !2818, line: 63, baseType: !755, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2798, file: !109, line: 681, baseType: !755, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2798, file: !109, line: 682, baseType: !755, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2798, file: !109, line: 683, baseType: !755, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2798, file: !109, line: 684, baseType: !28, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2798, file: !109, line: 685, baseType: !28, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2798, file: !109, line: 690, baseType: !2850, size: 512, offset: 640)
!2850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !104, line: 118, size: 512, elements: !2851)
!2851 = !{!2852, !2858, !2859, !2864, !2912, !2913, !2914, !2915}
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2850, file: !104, line: 119, baseType: !2853, size: 256)
!2853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2854, line: 9, size: 256, elements: !2855)
!2854 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2855 = !{!2856, !2857}
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2853, file: !2854, line: 10, baseType: !657, size: 192, align: 64)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2853, file: !2854, line: 11, baseType: !2830, size: 64, offset: 192)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2850, file: !104, line: 120, baseType: !2830, size: 64, offset: 256)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2850, file: !104, line: 121, baseType: !2860, size: 64, offset: 320)
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2861, size: 64)
!2861 = !DISubroutineType(types: !2862)
!2862 = !{!103, !2863}
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2850, size: 64)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2850, file: !104, line: 122, baseType: !2865, size: 64, offset: 384)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !104, line: 159, size: 512, align: 512, elements: !2867)
!2867 = !{!2868, !2893, !2894, !2897, !2902, !2903, !2907, !2911}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2866, file: !104, line: 160, baseType: !2869, size: 64)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !104, line: 215, size: 4608, align: 512, elements: !2871)
!2871 = !{!2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2889}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2870, file: !104, line: 216, baseType: !313, size: 32)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2870, file: !104, line: 217, baseType: !28, size: 32, offset: 32)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2870, file: !104, line: 218, baseType: !28, size: 32, offset: 64)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2870, file: !104, line: 219, baseType: !28, size: 32, offset: 96)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2870, file: !104, line: 220, baseType: !28, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2870, file: !104, line: 221, baseType: !28, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2870, file: !104, line: 222, baseType: !28, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2870, file: !104, line: 223, baseType: !28, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2870, file: !104, line: 224, baseType: !28, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2870, file: !104, line: 226, baseType: !28, size: 32, offset: 160)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2870, file: !104, line: 227, baseType: !219, size: 16, offset: 192)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2870, file: !104, line: 228, baseType: !219, size: 16, offset: 208)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2870, file: !104, line: 229, baseType: !28, size: 32, offset: 224)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2870, file: !104, line: 235, baseType: !2830, size: 64, offset: 256)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2870, file: !104, line: 236, baseType: !2863, size: 64, offset: 320)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2870, file: !104, line: 237, baseType: !2830, size: 64, offset: 384)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2870, file: !104, line: 238, baseType: !2863, size: 64, offset: 448)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2870, file: !104, line: 239, baseType: !2890, size: 4096, align: 512, offset: 512)
!2890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2866, size: 4096, align: 512, elements: !2891)
!2891 = !{!2892}
!2892 = !DISubrange(count: 8)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2866, file: !104, line: 161, baseType: !28, size: 32, offset: 64)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2866, file: !104, line: 162, baseType: !2895, size: 32, offset: 96)
!2895 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !226, line: 32, baseType: !2896)
!2896 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !281, line: 96, baseType: !117)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2866, file: !104, line: 163, baseType: !2898, size: 32, offset: 128)
!2898 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !364, line: 274, baseType: !2899)
!2899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !364, line: 274, size: 32, elements: !2900)
!2900 = !{!2901}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2899, file: !364, line: 274, baseType: !368, size: 32)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2866, file: !104, line: 164, baseType: !2863, size: 64, offset: 192)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2866, file: !104, line: 165, baseType: !2904, size: 128, offset: 256)
!2904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2854, line: 14, size: 128, elements: !2905)
!2905 = !{!2906}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2904, file: !2854, line: 15, baseType: !649, size: 128)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2866, file: !104, line: 166, baseType: !2908, size: 64, offset: 384)
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 64)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{!2830}
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2866, file: !104, line: 167, baseType: !2830, size: 64, offset: 448)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2850, file: !104, line: 123, baseType: !259, size: 8, offset: 448)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2850, file: !104, line: 124, baseType: !259, size: 8, offset: 456)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2850, file: !104, line: 125, baseType: !259, size: 8, offset: 464)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2850, file: !104, line: 126, baseType: !259, size: 8, offset: 472)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2798, file: !109, line: 691, baseType: !394, size: 64, offset: 1152)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2798, file: !109, line: 692, baseType: !1530, size: 256, offset: 1216)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2798, file: !109, line: 693, baseType: !916, size: 192, offset: 1472)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2798, file: !109, line: 694, baseType: !2825, size: 64, offset: 1664)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2798, file: !109, line: 695, baseType: !251, size: 32, offset: 1728)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2798, file: !109, line: 696, baseType: !251, size: 32, offset: 1760)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2798, file: !109, line: 697, baseType: !28, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2798, file: !109, line: 698, baseType: !28, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2798, file: !109, line: 699, baseType: !28, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2798, file: !109, line: 700, baseType: !28, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2798, file: !109, line: 701, baseType: !28, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2798, file: !109, line: 702, baseType: !28, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2798, file: !109, line: 703, baseType: !755, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2798, file: !109, line: 704, baseType: !28, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2798, file: !109, line: 705, baseType: !28, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2798, file: !109, line: 706, baseType: !28, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2798, file: !109, line: 707, baseType: !28, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2798, file: !109, line: 708, baseType: !28, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2798, file: !109, line: 709, baseType: !28, size: 32, offset: 1824)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2798, file: !109, line: 710, baseType: !108, size: 32, offset: 1856)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2798, file: !109, line: 711, baseType: !116, size: 32, offset: 1888)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2798, file: !109, line: 712, baseType: !116, size: 32, offset: 1920)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2798, file: !109, line: 713, baseType: !117, size: 32, offset: 1952)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2798, file: !109, line: 714, baseType: !117, size: 32, offset: 1984)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2798, file: !109, line: 715, baseType: !394, size: 64, offset: 2048)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2798, file: !109, line: 716, baseType: !394, size: 64, offset: 2112)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2798, file: !109, line: 717, baseType: !394, size: 64, offset: 2176)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2798, file: !109, line: 718, baseType: !394, size: 64, offset: 2240)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2798, file: !109, line: 720, baseType: !2945, size: 64, offset: 2304)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !109, line: 632, size: 64, elements: !2947)
!2947 = !{!2948, !2949}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2946, file: !109, line: 633, baseType: !231, size: 32)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2946, file: !109, line: 634, baseType: !28, size: 32, offset: 32)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2798, file: !109, line: 721, baseType: !2951, size: 64, offset: 2368)
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = !DISubroutineType(types: !2953)
!2953 = !{null, !2658, !973}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2798, file: !109, line: 722, baseType: !2955, size: 64, offset: 2432)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !109, line: 722, flags: DIFlagFwdDecl)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2654, file: !97, line: 727, baseType: !2958, size: 64, offset: 4224)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !109, line: 742, size: 1792, elements: !2960)
!2960 = !{!2961, !2962, !2963, !2967, !2968, !2969}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2959, file: !109, line: 743, baseType: !2688, size: 1472)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2959, file: !109, line: 744, baseType: !2691, size: 64, offset: 1472)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2959, file: !109, line: 745, baseType: !2964, size: 64, offset: 1536)
!2964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2965, size: 64)
!2965 = !DISubroutineType(types: !2966)
!2966 = !{null, !2658, !755}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2959, file: !109, line: 746, baseType: !2691, size: 64, offset: 1600)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2959, file: !109, line: 747, baseType: !2682, size: 64, offset: 1664)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2959, file: !109, line: 748, baseType: !2682, size: 64, offset: 1728)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2654, file: !97, line: 736, baseType: !2971, size: 128, offset: 4288)
!2971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !97, line: 529, size: 128, elements: !2972)
!2972 = !{!2973, !2977}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2971, file: !97, line: 531, baseType: !2974, size: 64)
!2974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2975, size: 64)
!2975 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !2976, line: 13, flags: DIFlagFwdDecl)
!2976 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2971, file: !97, line: 532, baseType: !2978, size: 64, offset: 64)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !97, line: 49, flags: DIFlagFwdDecl)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2654, file: !97, line: 738, baseType: !2981, size: 64, offset: 4416)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2983)
!2983 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !97, line: 738, flags: DIFlagFwdDecl)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2654, file: !97, line: 740, baseType: !2985, size: 64, offset: 4480)
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2654, file: !97, line: 741, baseType: !394, size: 64, offset: 4544)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2654, file: !97, line: 746, baseType: !394, size: 64, offset: 4608)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2654, file: !97, line: 747, baseType: !2989, size: 64, offset: 4672)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2991)
!2991 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !97, line: 747, flags: DIFlagFwdDecl)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2654, file: !97, line: 749, baseType: !2993, size: 64, offset: 4736)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !97, line: 428, size: 128, elements: !2995)
!2995 = !{!2996, !2997, !2998}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2994, file: !97, line: 433, baseType: !28, size: 32)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !2994, file: !97, line: 434, baseType: !28, size: 32, offset: 32)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2994, file: !97, line: 435, baseType: !484, size: 64, offset: 64)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2654, file: !97, line: 751, baseType: !271, size: 128, offset: 4800)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2654, file: !97, line: 762, baseType: !3001, size: 64, offset: 4928)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !97, line: 762, flags: DIFlagFwdDecl)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2654, file: !97, line: 770, baseType: !3004, offset: 4992)
!3004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3005, line: 5, elements: !838)
!3005 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2654, file: !97, line: 772, baseType: !3007, size: 64, offset: 4992)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3009, line: 18, flags: DIFlagFwdDecl)
!3009 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2654, file: !97, line: 773, baseType: !3011, size: 64, offset: 5056)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2720, line: 22, flags: DIFlagFwdDecl)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2654, file: !97, line: 776, baseType: !117, size: 32, offset: 5120)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2654, file: !97, line: 778, baseType: !480, size: 32, offset: 5152)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2654, file: !97, line: 779, baseType: !391, size: 32, offset: 5184)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2654, file: !97, line: 781, baseType: !231, size: 32, offset: 5216)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2654, file: !97, line: 782, baseType: !271, size: 128, offset: 5248)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2654, file: !97, line: 784, baseType: !3019, size: 64, offset: 5376)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3021)
!3021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3022, line: 52, size: 768, elements: !3023)
!3022 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3023 = !{!3024, !3025, !3026, !3027, !3028, !3032, !3036, !3037, !3038, !3039, !3043, !3047}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3021, file: !3022, line: 53, baseType: !439, size: 64)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3021, file: !3022, line: 55, baseType: !610, size: 64, offset: 64)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3021, file: !3022, line: 56, baseType: !610, size: 64, offset: 128)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3021, file: !3022, line: 58, baseType: !2671, size: 64, offset: 192)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3021, file: !3022, line: 59, baseType: !3029, size: 64, offset: 256)
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64)
!3030 = !DISubroutineType(types: !3031)
!3031 = !{!464, !2674, !2680}
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3021, file: !3022, line: 61, baseType: !3033, size: 64, offset: 320)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = !DISubroutineType(types: !3035)
!3035 = !{null, !3019}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3021, file: !3022, line: 62, baseType: !2682, size: 64, offset: 384)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3021, file: !3022, line: 64, baseType: !2691, size: 64, offset: 448)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3021, file: !3022, line: 66, baseType: !1818, size: 64, offset: 512)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3021, file: !3022, line: 67, baseType: !3040, size: 64, offset: 576)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DISubroutineType(types: !3042)
!3042 = !{!1491, !2674}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3021, file: !3022, line: 69, baseType: !3044, size: 64, offset: 640)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{null, !2674, !1853, !1854}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3021, file: !3022, line: 71, baseType: !2686, size: 64, offset: 704)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2654, file: !97, line: 785, baseType: !610, size: 64, offset: 5440)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2654, file: !97, line: 787, baseType: !2682, size: 64, offset: 5504)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2654, file: !97, line: 788, baseType: !3051, size: 64, offset: 5568)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !97, line: 46, flags: DIFlagFwdDecl)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2654, file: !97, line: 789, baseType: !3054, size: 64, offset: 5632)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !97, line: 48, flags: DIFlagFwdDecl)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2654, file: !97, line: 791, baseType: !3057, size: 64, offset: 5696)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !97, line: 597, size: 128, elements: !3059)
!3059 = !{!3060, !3061, !3062, !3063, !3064}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3058, file: !97, line: 598, baseType: !124, size: 32)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3058, file: !97, line: 599, baseType: !133, size: 32, offset: 32)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3058, file: !97, line: 600, baseType: !138, size: 32, offset: 64)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3058, file: !97, line: 601, baseType: !755, size: 8, offset: 96)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3058, file: !97, line: 602, baseType: !755, size: 8, offset: 104)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2654, file: !97, line: 793, baseType: !143, size: 32, offset: 5760)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2654, file: !97, line: 795, baseType: !755, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2654, file: !97, line: 796, baseType: !755, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2654, file: !97, line: 797, baseType: !755, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2654, file: !97, line: 798, baseType: !755, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2654, file: !97, line: 799, baseType: !755, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !476, file: !80, line: 1226, baseType: !3072, size: 64, offset: 1664)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !80, line: 1226, flags: DIFlagFwdDecl)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !476, file: !80, line: 1227, baseType: !3075, size: 64, offset: 1728)
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !80, line: 50, flags: DIFlagFwdDecl)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !476, file: !80, line: 1228, baseType: !3078, size: 64, offset: 1792)
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3079, size: 64)
!3079 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !80, line: 1228, flags: DIFlagFwdDecl)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !476, file: !80, line: 1229, baseType: !287, size: 128, offset: 1856)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !476, file: !80, line: 1230, baseType: !28, size: 32, offset: 1984)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !476, file: !80, line: 1231, baseType: !3083, size: 2496, offset: 2048)
!3083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !85, line: 521, size: 2496, elements: !3084)
!3084 = !{!3085, !3086, !3087, !3089, !3121}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3083, file: !85, line: 522, baseType: !28, size: 32)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3083, file: !85, line: 523, baseType: !295, size: 320, offset: 64)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3083, file: !85, line: 524, baseType: !3088, size: 192, offset: 384)
!3088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !400, size: 192, elements: !5)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3083, file: !85, line: 525, baseType: !3090, size: 1728, offset: 576)
!3090 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3091, size: 1728, elements: !5)
!3091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !85, line: 222, size: 576, elements: !3092)
!3092 = !{!3093, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3091, file: !85, line: 223, baseType: !3094, size: 64)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !85, line: 445, size: 256, elements: !3096)
!3096 = !{!3097, !3098, !3111, !3112}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3095, file: !85, line: 446, baseType: !117, size: 32)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3095, file: !85, line: 447, baseType: !3099, size: 64, offset: 64)
!3099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3100, size: 64)
!3100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3101)
!3101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !85, line: 312, size: 512, elements: !3102)
!3102 = !{!3103, !3104, !3105, !3106, !3107, !3108, !3109, !3110}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3101, file: !85, line: 313, baseType: !2361, size: 64)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3101, file: !85, line: 314, baseType: !2361, size: 64, offset: 64)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3101, file: !85, line: 315, baseType: !2361, size: 64, offset: 128)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3101, file: !85, line: 316, baseType: !2361, size: 64, offset: 192)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3101, file: !85, line: 317, baseType: !2470, size: 64, offset: 256)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3101, file: !85, line: 318, baseType: !2470, size: 64, offset: 320)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3101, file: !85, line: 319, baseType: !2470, size: 64, offset: 384)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3101, file: !85, line: 320, baseType: !2500, size: 64, offset: 448)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3095, file: !85, line: 448, baseType: !511, size: 64, offset: 128)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3095, file: !85, line: 449, baseType: !3094, size: 64, offset: 192)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3091, file: !85, line: 224, baseType: !117, size: 32, offset: 64)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3091, file: !85, line: 226, baseType: !271, size: 128, offset: 128)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3091, file: !85, line: 227, baseType: !484, size: 64, offset: 256)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3091, file: !85, line: 228, baseType: !28, size: 32, offset: 320)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3091, file: !85, line: 229, baseType: !28, size: 32, offset: 352)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3091, file: !85, line: 230, baseType: !2438, size: 64, offset: 384)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3091, file: !85, line: 231, baseType: !2438, size: 64, offset: 448)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3091, file: !85, line: 232, baseType: !194, size: 64, offset: 512)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3083, file: !85, line: 526, baseType: !3122, size: 192, offset: 2304)
!3122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3099, size: 192, elements: !5)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !476, file: !80, line: 1233, baseType: !3124, size: 2368, offset: 4544)
!3124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !80, line: 1184, size: 2368, elements: !3125)
!3125 = !{!3126, !3127, !3128}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3124, file: !80, line: 1185, baseType: !219, size: 16)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3124, file: !80, line: 1186, baseType: !219, size: 16, offset: 16)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3124, file: !80, line: 1187, baseType: !3129, size: 2304, offset: 64)
!3129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3130, size: 2304, elements: !5)
!3130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3131, line: 12, size: 768, elements: !3132)
!3131 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3132 = !{!3133, !3141, !3142, !4248, !4249}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3130, file: !3131, line: 13, baseType: !3134, size: 384)
!3134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3135, line: 17, size: 384, elements: !3136)
!3135 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3136 = !{!3137, !3138, !3139, !3140}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3134, file: !3135, line: 18, baseType: !117, size: 32)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3134, file: !3135, line: 19, baseType: !117, size: 32, offset: 32)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3134, file: !3135, line: 20, baseType: !916, size: 192, offset: 64)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3134, file: !3135, line: 22, baseType: !759, size: 128, align: 64, offset: 256)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3130, file: !3131, line: 14, baseType: !2064, size: 64, offset: 384)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3130, file: !3131, line: 15, baseType: !3143, size: 64, offset: 448)
!3143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3144, line: 16, size: 64, elements: !3145)
!3144 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3145 = !{!3146}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3143, file: !3144, line: 17, baseType: !3147, size: 64)
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1349, line: 746, size: 58368, elements: !3149)
!3149 = !{!3150, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3186, !3230, !3241, !3261, !3265, !3268, !3299, !3300, !3301, !3302, !3313, !3315, !3316, !3317, !3318, !3319, !3320, !3331, !3332, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3349, !3350, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3438, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3486, !3492, !3493, !3494, !3495, !3496, !3500, !3503, !3510, !3515, !3518, !3521, !3524, !3527, !3665, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3703, !3704, !3705, !3714, !3722, !3723, !3724, !3725, !3726, !3731, !3732, !3733, !3736, !3737, !3740, !3743, !3746, !3753, !3756, !3757, !3843, !3844, !3845, !3846, !3847, !3853, !3854, !3855, !3856, !3859, !3860, !3863, !3866, !3867, !3870, !3871, !3872, !3875, !3876, !3877, !3878, !3879, !3880, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3912, !3913, !3919, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !4001, !4003, !4004, !4005, !4006, !4007, !4008, !4011, !4012, !4013, !4014, !4015, !4016, !4017, !4018, !4019, !4020, !4021, !4025, !4026, !4027}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !3148, file: !1349, line: 752, baseType: !3151, size: 192)
!3151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !3152, line: 56, size: 192, elements: !3153)
!3152 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!3153 = !{!3154, !3155, !3156, !3157}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3151, file: !3152, line: 57, baseType: !484, size: 64)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !3151, file: !3152, line: 58, baseType: !484, size: 64, offset: 64)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3151, file: !3152, line: 59, baseType: !391, size: 32, offset: 128)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3151, file: !3152, line: 61, baseType: !391, size: 32, offset: 160)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !3148, file: !1349, line: 754, baseType: !28, size: 32, offset: 192)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3148, file: !1349, line: 767, baseType: !194, size: 64, offset: 256)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3148, file: !1349, line: 768, baseType: !902, size: 32, offset: 320)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3148, file: !1349, line: 770, baseType: !28, size: 32, offset: 352)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !3148, file: !1349, line: 771, baseType: !28, size: 32, offset: 384)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !3148, file: !1349, line: 774, baseType: !117, size: 32, offset: 416)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !3148, file: !1349, line: 775, baseType: !3165, size: 128, offset: 448)
!3165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !3166, line: 58, size: 128, elements: !3167)
!3166 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!3167 = !{!3168, !3169, !3174, !3175}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !3165, file: !3166, line: 59, baseType: !852, size: 64)
!3169 = !DIDerivedType(tag: DW_TAG_member, scope: !3165, file: !3166, line: 60, baseType: !3170, size: 32, offset: 64)
!3170 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3165, file: !3166, line: 60, size: 32, elements: !3171)
!3171 = !{!3172, !3173}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !3170, file: !3166, line: 61, baseType: !28, size: 32)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !3170, file: !3166, line: 62, baseType: !251, size: 32)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !3165, file: !3166, line: 65, baseType: !268, size: 16, offset: 96)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !3165, file: !3166, line: 65, baseType: !268, size: 16, offset: 112)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !3148, file: !1349, line: 776, baseType: !28, size: 32, offset: 576)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !3148, file: !1349, line: 777, baseType: !484, size: 64, offset: 640)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !3148, file: !1349, line: 778, baseType: !3147, size: 64, offset: 704)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !3148, file: !1349, line: 787, baseType: !117, size: 32, offset: 768)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !3148, file: !1349, line: 788, baseType: !117, size: 32, offset: 800)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3148, file: !1349, line: 790, baseType: !117, size: 32, offset: 832)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3148, file: !1349, line: 792, baseType: !117, size: 32, offset: 864)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !3148, file: !1349, line: 793, baseType: !117, size: 32, offset: 896)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !3148, file: !1349, line: 794, baseType: !117, size: 32, offset: 928)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !3148, file: !1349, line: 795, baseType: !28, size: 32, offset: 960)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !3148, file: !1349, line: 797, baseType: !3187, size: 2048, offset: 1024)
!3187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1349, line: 551, size: 2048, elements: !3188)
!3188 = !{!3189, !3194, !3195, !3196, !3197, !3198, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3209, !3212, !3213, !3214}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !3187, file: !1349, line: 553, baseType: !3190, size: 128)
!3190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1349, line: 411, size: 128, elements: !3191)
!3191 = !{!3192, !3193}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3190, file: !1349, line: 412, baseType: !484, size: 64)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !3190, file: !1349, line: 413, baseType: !391, size: 32, offset: 64)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !3187, file: !1349, line: 554, baseType: !657, size: 192, align: 64, offset: 128)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3187, file: !1349, line: 555, baseType: !394, size: 64, offset: 320)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !3187, file: !1349, line: 556, baseType: !394, size: 64, offset: 384)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3187, file: !1349, line: 558, baseType: !271, size: 128, offset: 448)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3187, file: !1349, line: 559, baseType: !28, size: 32, offset: 576)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !3187, file: !1349, line: 561, baseType: !394, size: 64, offset: 640)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3187, file: !1349, line: 562, baseType: !394, size: 64, offset: 704)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !3187, file: !1349, line: 563, baseType: !394, size: 64, offset: 768)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !3187, file: !1349, line: 564, baseType: !394, size: 64, offset: 832)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !3187, file: !1349, line: 565, baseType: !305, size: 64, offset: 896)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !3187, file: !1349, line: 566, baseType: !394, size: 64, offset: 960)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !3187, file: !1349, line: 568, baseType: !394, size: 64, offset: 1024)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3187, file: !1349, line: 571, baseType: !117, size: 32, offset: 1088)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3187, file: !1349, line: 572, baseType: !3208, size: 64, offset: 1152)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !3187, file: !1349, line: 574, baseType: !3210, size: 64, offset: 1216)
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3211 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1349, line: 49, flags: DIFlagFwdDecl)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !3187, file: !1349, line: 576, baseType: !3210, size: 64, offset: 1280)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !3187, file: !1349, line: 578, baseType: !484, size: 64, offset: 1344)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !3187, file: !1349, line: 588, baseType: !3215, size: 512, align: 512, offset: 1536)
!3215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1349, line: 497, size: 512, align: 512, elements: !3216)
!3216 = !{!3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !3215, file: !1349, line: 498, baseType: !394, size: 64)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !3215, file: !1349, line: 499, baseType: !394, size: 64, offset: 64)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !3215, file: !1349, line: 500, baseType: !394, size: 64, offset: 128)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !3215, file: !1349, line: 501, baseType: !391, size: 32, offset: 192)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !3215, file: !1349, line: 502, baseType: !391, size: 32, offset: 224)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !3215, file: !1349, line: 503, baseType: !484, size: 64, offset: 256)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !3215, file: !1349, line: 504, baseType: !484, size: 64, offset: 320)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !3215, file: !1349, line: 505, baseType: !484, size: 64, offset: 384)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !3215, file: !1349, line: 506, baseType: !3226, size: 64, align: 64, offset: 448)
!3226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1349, line: 445, size: 64, align: 64, elements: !3227)
!3227 = !{!3228, !3229}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !3226, file: !1349, line: 446, baseType: !28, size: 32)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !3226, file: !1349, line: 447, baseType: !28, size: 32, offset: 32)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !3148, file: !1349, line: 798, baseType: !3231, size: 384, offset: 3072)
!3231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1349, line: 592, size: 384, elements: !3232)
!3232 = !{!3233, !3234, !3235, !3236, !3237, !3238, !3239}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !3231, file: !1349, line: 593, baseType: !271, size: 128)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3231, file: !1349, line: 594, baseType: !484, size: 64, offset: 128)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !3231, file: !1349, line: 595, baseType: !484, size: 64, offset: 192)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !3231, file: !1349, line: 596, baseType: !28, size: 32, offset: 256)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3231, file: !1349, line: 597, baseType: !219, size: 16, offset: 288)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !3231, file: !1349, line: 598, baseType: !219, size: 16, offset: 304)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !3231, file: !1349, line: 600, baseType: !3240, size: 64, offset: 320)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !3148, file: !1349, line: 799, baseType: !3242, size: 1792, offset: 3456)
!3242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1349, line: 610, size: 1792, elements: !3243)
!3243 = !{!3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3242, file: !1349, line: 611, baseType: !657, size: 192, align: 64)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !3242, file: !1349, line: 618, baseType: !394, size: 64, offset: 192)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !3242, file: !1349, line: 619, baseType: !394, size: 64, offset: 256)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !3242, file: !1349, line: 620, baseType: !394, size: 64, offset: 320)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !3242, file: !1349, line: 621, baseType: !394, size: 64, offset: 384)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !3242, file: !1349, line: 622, baseType: !394, size: 64, offset: 448)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !3242, file: !1349, line: 629, baseType: !305, size: 64, offset: 512)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3242, file: !1349, line: 630, baseType: !394, size: 64, offset: 576)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3242, file: !1349, line: 631, baseType: !28, size: 32, offset: 640)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !3242, file: !1349, line: 653, baseType: !28, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !3242, file: !1349, line: 654, baseType: !28, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !3242, file: !1349, line: 655, baseType: !28, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !3242, file: !1349, line: 656, baseType: !28, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !3242, file: !1349, line: 662, baseType: !2850, size: 512, offset: 704)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !3242, file: !1349, line: 671, baseType: !2850, size: 512, offset: 1216)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !3242, file: !1349, line: 679, baseType: !3260, size: 64, offset: 1728)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !3148, file: !1349, line: 800, baseType: !3262, size: 64, offset: 5248)
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3264)
!3264 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1349, line: 800, flags: DIFlagFwdDecl)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !3148, file: !1349, line: 809, baseType: !3266, size: 64, offset: 5312)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1349, line: 70, flags: DIFlagFwdDecl)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3148, file: !1349, line: 825, baseType: !3269, size: 2048, align: 512, offset: 5632)
!3269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1349, line: 509, size: 2048, align: 512, elements: !3270)
!3270 = !{!3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !3269, file: !1349, line: 511, baseType: !394, size: 64)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !3269, file: !1349, line: 512, baseType: !394, size: 64, offset: 64)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !3269, file: !1349, line: 513, baseType: !394, size: 64, offset: 128)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !3269, file: !1349, line: 514, baseType: !394, size: 64, offset: 192)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !3269, file: !1349, line: 515, baseType: !394, size: 64, offset: 256)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !3269, file: !1349, line: 516, baseType: !394, size: 64, offset: 320)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !3269, file: !1349, line: 518, baseType: !394, size: 64, offset: 384)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !3269, file: !1349, line: 519, baseType: !394, size: 64, offset: 448)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !3269, file: !1349, line: 520, baseType: !305, size: 64, offset: 512)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !3269, file: !1349, line: 522, baseType: !394, size: 64, offset: 576)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !3269, file: !1349, line: 523, baseType: !394, size: 64, offset: 640)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !3269, file: !1349, line: 524, baseType: !305, size: 64, offset: 704)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !3269, file: !1349, line: 526, baseType: !305, size: 64, offset: 768)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !3269, file: !1349, line: 527, baseType: !394, size: 64, offset: 832)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !3269, file: !1349, line: 529, baseType: !394, size: 64, offset: 896)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !3269, file: !1349, line: 530, baseType: !394, size: 64, offset: 960)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !3269, file: !1349, line: 531, baseType: !394, size: 64, offset: 1024)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !3269, file: !1349, line: 532, baseType: !394, size: 64, offset: 1088)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !3269, file: !1349, line: 533, baseType: !394, size: 64, offset: 1152)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !3269, file: !1349, line: 535, baseType: !394, size: 64, offset: 1216)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !3269, file: !1349, line: 536, baseType: !394, size: 64, offset: 1280)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !3269, file: !1349, line: 537, baseType: !394, size: 64, offset: 1344)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !3269, file: !1349, line: 538, baseType: !394, size: 64, offset: 1408)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !3269, file: !1349, line: 539, baseType: !394, size: 64, offset: 1472)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !3269, file: !1349, line: 540, baseType: !394, size: 64, offset: 1536)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !3269, file: !1349, line: 541, baseType: !394, size: 64, offset: 1600)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !3269, file: !1349, line: 542, baseType: !394, size: 64, offset: 1664)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !3269, file: !1349, line: 543, baseType: !394, size: 64, offset: 1728)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !3148, file: !1349, line: 833, baseType: !28, size: 32, offset: 7680)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !3148, file: !1349, line: 836, baseType: !28, size: 32, offset: 7712)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !3148, file: !1349, line: 837, baseType: !117, size: 32, offset: 7744)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !3148, file: !1349, line: 838, baseType: !3303, size: 64, offset: 7808)
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3304, size: 64)
!3304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3305)
!3305 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !3306, line: 19, baseType: !3307)
!3306 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !3306, line: 19, size: 64, elements: !3308)
!3308 = !{!3309}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3307, file: !3306, line: 19, baseType: !3310, size: 64)
!3310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !484, size: 64, elements: !3311)
!3311 = !{!3312}
!3312 = !DISubrange(count: 1)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !3148, file: !1349, line: 839, baseType: !3314, size: 64, offset: 7872)
!3314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !3148, file: !1349, line: 840, baseType: !3305, size: 64, offset: 7936)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !3148, file: !1349, line: 841, baseType: !194, size: 64, offset: 8000)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !3148, file: !1349, line: 843, baseType: !219, size: 16, offset: 8064)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !3148, file: !1349, line: 845, baseType: !219, size: 16, offset: 8080)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !3148, file: !1349, line: 848, baseType: !117, size: 32, offset: 8096)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !3148, file: !1349, line: 849, baseType: !3321, size: 32, offset: 8128)
!3321 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1349, line: 718, size: 32, elements: !3322)
!3322 = !{!3323, !3330}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3321, file: !1349, line: 724, baseType: !3324, size: 32)
!3324 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3321, file: !1349, line: 719, size: 32, elements: !3325)
!3325 = !{!3326, !3327, !3328, !3329}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3324, file: !1349, line: 720, baseType: !259, size: 8)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !3324, file: !1349, line: 721, baseType: !259, size: 8, offset: 8)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !3324, file: !1349, line: 722, baseType: !259, size: 8, offset: 16)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !3324, file: !1349, line: 723, baseType: !259, size: 8, offset: 24)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3321, file: !1349, line: 725, baseType: !391, size: 32)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !3148, file: !1349, line: 850, baseType: !271, size: 128, offset: 8192)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !3148, file: !1349, line: 851, baseType: !3333, size: 64, offset: 8320)
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3334, size: 64)
!3334 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1349, line: 60, flags: DIFlagFwdDecl)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !3148, file: !1349, line: 855, baseType: !484, size: 64, offset: 8384)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !3148, file: !1349, line: 856, baseType: !259, size: 8, offset: 8448)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !3148, file: !1349, line: 857, baseType: !259, size: 8, offset: 8456)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !3148, file: !1349, line: 858, baseType: !117, size: 32, offset: 8480)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !3148, file: !1349, line: 859, baseType: !271, size: 128, offset: 8512)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !3148, file: !1349, line: 860, baseType: !117, size: 32, offset: 8640)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !3148, file: !1349, line: 861, baseType: !271, size: 128, offset: 8704)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !3148, file: !1349, line: 873, baseType: !3343, size: 256, offset: 8832)
!3343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1349, line: 376, size: 256, elements: !3344)
!3344 = !{!3345, !3346, !3347, !3348}
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !3343, file: !1349, line: 381, baseType: !484, size: 64)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !3343, file: !1349, line: 384, baseType: !217, size: 64, offset: 64)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !3343, file: !1349, line: 389, baseType: !217, size: 64, offset: 128)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !3343, file: !1349, line: 392, baseType: !217, size: 64, offset: 192)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3148, file: !1349, line: 875, baseType: !271, size: 128, offset: 9088)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !3148, file: !1349, line: 877, baseType: !3351, size: 320, offset: 9216)
!3351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !3352, line: 86, size: 320, elements: !3353)
!3352 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!3353 = !{!3354, !3355, !3356}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3351, file: !3352, line: 87, baseType: !117, size: 32)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !3351, file: !3352, line: 88, baseType: !271, size: 128, offset: 64)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !3351, file: !3352, line: 89, baseType: !271, size: 128, offset: 192)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !3148, file: !1349, line: 878, baseType: !657, size: 192, align: 64, offset: 9536)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !3148, file: !1349, line: 881, baseType: !817, size: 64, offset: 9728)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !3148, file: !1349, line: 882, baseType: !817, size: 64, offset: 9792)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !3148, file: !1349, line: 884, baseType: !117, size: 32, offset: 9856)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !3148, file: !1349, line: 885, baseType: !117, size: 32, offset: 9888)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !3148, file: !1349, line: 886, baseType: !117, size: 32, offset: 9920)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !3148, file: !1349, line: 888, baseType: !117, size: 32, offset: 9952)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !3148, file: !1349, line: 890, baseType: !484, size: 64, offset: 9984)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !3148, file: !1349, line: 893, baseType: !28, size: 32, offset: 10048)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !3148, file: !1349, line: 896, baseType: !28, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !3148, file: !1349, line: 897, baseType: !28, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !3148, file: !1349, line: 898, baseType: !28, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !3148, file: !1349, line: 899, baseType: !28, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !3148, file: !1349, line: 919, baseType: !28, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !3148, file: !1349, line: 922, baseType: !28, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !3148, file: !1349, line: 923, baseType: !28, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !3148, file: !1349, line: 925, baseType: !28, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !3148, file: !1349, line: 939, baseType: !28, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3148, file: !1349, line: 941, baseType: !28, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !3148, file: !1349, line: 944, baseType: !28, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !3148, file: !1349, line: 956, baseType: !28, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !3148, file: !1349, line: 962, baseType: !28, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !3148, file: !1349, line: 966, baseType: !28, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !3148, file: !1349, line: 969, baseType: !484, size: 64, offset: 10176)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !3148, file: !1349, line: 971, baseType: !3382, size: 448, offset: 10240)
!3382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !150, line: 25, size: 448, elements: !3383)
!3383 = !{!3384, !3385, !3390}
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3382, file: !150, line: 26, baseType: !484, size: 64)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3382, file: !150, line: 27, baseType: !3386, size: 64, offset: 64)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{!320, !3389}
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3390 = !DIDerivedType(tag: DW_TAG_member, scope: !3382, file: !150, line: 28, baseType: !3391, size: 320, offset: 128)
!3391 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3382, file: !150, line: 28, size: 320, elements: !3392)
!3392 = !{!3393, !3403, !3428}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3391, file: !150, line: 37, baseType: !3394, size: 320)
!3394 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3391, file: !150, line: 30, size: 320, elements: !3395)
!3395 = !{!3396, !3398, !3399, !3400, !3401, !3402}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3394, file: !150, line: 31, baseType: !3397, size: 64)
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3394, file: !150, line: 32, baseType: !391, size: 32, offset: 64)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3394, file: !150, line: 33, baseType: !391, size: 32, offset: 96)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3394, file: !150, line: 34, baseType: !391, size: 32, offset: 128)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3394, file: !150, line: 35, baseType: !394, size: 64, offset: 192)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3394, file: !150, line: 36, baseType: !3397, size: 64, offset: 256)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3391, file: !150, line: 47, baseType: !3404, size: 192)
!3404 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3391, file: !150, line: 39, size: 192, elements: !3405)
!3405 = !{!3406, !3407, !3408, !3427}
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3404, file: !150, line: 40, baseType: !2895, size: 32)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3404, file: !150, line: 41, baseType: !149, size: 32, offset: 32)
!3408 = !DIDerivedType(tag: DW_TAG_member, scope: !3404, file: !150, line: 42, baseType: !3409, size: 64, offset: 64)
!3409 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3404, file: !150, line: 42, size: 64, elements: !3410)
!3410 = !{!3411, !3419}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3409, file: !150, line: 43, baseType: !3412, size: 64)
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3414, line: 7, size: 128, elements: !3415)
!3414 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3415 = !{!3416, !3418}
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3413, file: !3414, line: 8, baseType: !3417, size: 64)
!3417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !281, line: 93, baseType: !224)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3413, file: !3414, line: 9, baseType: !224, size: 64, offset: 64)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3409, file: !150, line: 44, baseType: !3420, size: 64)
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3422, line: 7, size: 64, elements: !3423)
!3422 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3423 = !{!3424, !3426}
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3421, file: !3422, line: 8, baseType: !3425, size: 32)
!3425 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3422, line: 5, baseType: !973)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3421, file: !3422, line: 9, baseType: !973, size: 32, offset: 32)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3404, file: !150, line: 46, baseType: !394, size: 64, offset: 128)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3391, file: !150, line: 55, baseType: !3429, size: 256)
!3429 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3391, file: !150, line: 49, size: 256, elements: !3430)
!3430 = !{!3431, !3434, !3435, !3436, !3437}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3429, file: !150, line: 50, baseType: !3432, size: 64)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !150, line: 14, flags: DIFlagFwdDecl)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3429, file: !150, line: 51, baseType: !117, size: 32, offset: 64)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3429, file: !150, line: 52, baseType: !117, size: 32, offset: 96)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3429, file: !150, line: 53, baseType: !484, size: 64, offset: 128)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3429, file: !150, line: 54, baseType: !484, size: 64, offset: 192)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3148, file: !1349, line: 973, baseType: !3439, size: 32, offset: 10688)
!3439 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !226, line: 27, baseType: !3440)
!3440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !281, line: 28, baseType: !117)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !3148, file: !1349, line: 974, baseType: !3439, size: 32, offset: 10720)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !3148, file: !1349, line: 978, baseType: !484, size: 64, offset: 10752)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !3148, file: !1349, line: 987, baseType: !3147, size: 64, offset: 10816)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3148, file: !1349, line: 990, baseType: !3147, size: 64, offset: 10880)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3148, file: !1349, line: 995, baseType: !271, size: 128, offset: 10944)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3148, file: !1349, line: 996, baseType: !271, size: 128, offset: 11072)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !3148, file: !1349, line: 997, baseType: !3147, size: 64, offset: 11200)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !3148, file: !1349, line: 1005, baseType: !271, size: 128, offset: 11264)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !3148, file: !1349, line: 1006, baseType: !271, size: 128, offset: 11392)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !3148, file: !1349, line: 1009, baseType: !898, size: 64, offset: 11520)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !3148, file: !1349, line: 1010, baseType: !3452, size: 512, offset: 11584)
!3452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, size: 512, elements: !213)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !3148, file: !1349, line: 1011, baseType: !271, size: 128, offset: 12096)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !3148, file: !1349, line: 1012, baseType: !271, size: 128, offset: 12224)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !3148, file: !1349, line: 1014, baseType: !1975, size: 64, offset: 12352)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !3148, file: !1349, line: 1017, baseType: !2112, size: 64, offset: 12416)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !3148, file: !1349, line: 1020, baseType: !2112, size: 64, offset: 12480)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !3148, file: !1349, line: 1023, baseType: !194, size: 64, offset: 12544)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3148, file: !1349, line: 1025, baseType: !394, size: 64, offset: 12608)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3148, file: !1349, line: 1026, baseType: !394, size: 64, offset: 12672)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3148, file: !1349, line: 1031, baseType: !394, size: 64, offset: 12736)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3148, file: !1349, line: 1032, baseType: !3463, size: 192, offset: 12800)
!3463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1349, line: 324, size: 192, elements: !3464)
!3464 = !{!3465, !3466, !3467}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3463, file: !1349, line: 326, baseType: !394, size: 64)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3463, file: !1349, line: 327, baseType: !394, size: 64, offset: 64)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3463, file: !1349, line: 328, baseType: !313, size: 32, offset: 128)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3148, file: !1349, line: 1041, baseType: !484, size: 64, offset: 12992)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3148, file: !1349, line: 1042, baseType: !484, size: 64, offset: 13056)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !3148, file: !1349, line: 1045, baseType: !394, size: 64, offset: 13120)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !3148, file: !1349, line: 1048, baseType: !394, size: 64, offset: 13184)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3148, file: !1349, line: 1051, baseType: !484, size: 64, offset: 13248)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3148, file: !1349, line: 1052, baseType: !484, size: 64, offset: 13312)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3148, file: !1349, line: 1055, baseType: !3475, size: 640, offset: 13376)
!3475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3476, line: 132, size: 640, elements: !3477)
!3476 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3477 = !{!3478, !3484, !3485}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3475, file: !3476, line: 133, baseType: !3479, size: 576)
!3479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3480, size: 576, elements: !5)
!3480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3476, line: 117, size: 192, elements: !3481)
!3481 = !{!3482, !3483}
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3480, file: !3476, line: 118, baseType: !394, size: 64)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3480, file: !3476, line: 119, baseType: !2904, size: 128, offset: 64)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3475, file: !3476, line: 134, baseType: !28, size: 32, offset: 576)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3475, file: !3476, line: 135, baseType: !28, size: 32, offset: 608)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !3148, file: !1349, line: 1058, baseType: !3487, size: 448, offset: 14016)
!3487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3476, line: 144, size: 448, elements: !3488)
!3488 = !{!3489, !3490, !3491}
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3487, file: !3476, line: 145, baseType: !759, size: 128, align: 64)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3487, file: !3476, line: 146, baseType: !864, size: 256, offset: 128)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3487, file: !3476, line: 147, baseType: !28, size: 32, offset: 384)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !3148, file: !1349, line: 1064, baseType: !938, size: 64, offset: 14464)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !3148, file: !1349, line: 1067, baseType: !938, size: 64, offset: 14528)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !3148, file: !1349, line: 1070, baseType: !938, size: 64, offset: 14592)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !3148, file: !1349, line: 1074, baseType: !965, size: 64, offset: 14656)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3148, file: !1349, line: 1084, baseType: !3497, size: 128, offset: 14720)
!3497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !3498)
!3498 = !{!3499}
!3499 = !DISubrange(count: 16)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !3148, file: !1349, line: 1086, baseType: !3501, size: 64, offset: 14848)
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3502, size: 64)
!3502 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1349, line: 55, flags: DIFlagFwdDecl)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !3148, file: !1349, line: 1089, baseType: !3504, size: 64, offset: 14912)
!3504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3505, line: 12, size: 64, elements: !3506)
!3505 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3506 = !{!3507}
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3504, file: !3505, line: 13, baseType: !3508, size: 64)
!3508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3509, size: 64)
!3509 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3505, line: 8, flags: DIFlagFwdDecl)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !3148, file: !1349, line: 1090, baseType: !3511, size: 128, offset: 14976)
!3511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3512, line: 13, size: 128, elements: !3513)
!3512 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3513 = !{!3514}
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3511, file: !3512, line: 14, baseType: !271, size: 128)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !3148, file: !1349, line: 1097, baseType: !3516, size: 64, offset: 15104)
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3517 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1349, line: 50, flags: DIFlagFwdDecl)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3148, file: !1349, line: 1100, baseType: !3519, size: 64, offset: 15168)
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3520, size: 64)
!3520 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1349, line: 1100, flags: DIFlagFwdDecl)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !3148, file: !1349, line: 1103, baseType: !3522, size: 64, offset: 15232)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1349, line: 53, flags: DIFlagFwdDecl)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !3148, file: !1349, line: 1107, baseType: !3525, size: 64, offset: 15296)
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3526 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1349, line: 56, flags: DIFlagFwdDecl)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3148, file: !1349, line: 1110, baseType: !3528, size: 64, offset: 15360)
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3529, size: 64)
!3529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3530, line: 93, size: 8768, elements: !3531)
!3530 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3531 = !{!3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3579, !3588, !3589, !3591, !3592, !3593, !3596, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3634, !3635, !3642, !3652, !3655, !3656, !3659, !3660, !3661, !3662, !3663, !3664}
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3529, file: !3530, line: 94, baseType: !902, size: 32)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3529, file: !3530, line: 95, baseType: !251, size: 32, offset: 32)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3529, file: !3530, line: 96, baseType: !117, size: 32, offset: 64)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3529, file: !3530, line: 97, baseType: !117, size: 32, offset: 96)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3529, file: !3530, line: 98, baseType: !271, size: 128, offset: 128)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3529, file: !3530, line: 100, baseType: !916, size: 192, offset: 256)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3529, file: !3530, line: 103, baseType: !3147, size: 64, offset: 448)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3529, file: !3530, line: 106, baseType: !3540, size: 192, offset: 512)
!3540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1116, line: 32, size: 192, elements: !3541)
!3541 = !{!3542, !3543}
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3540, file: !1116, line: 33, baseType: !271, size: 128)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3540, file: !1116, line: 34, baseType: !3544, size: 64, offset: 128)
!3544 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3545, line: 25, baseType: !3546)
!3545 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3546 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3545, line: 23, size: 64, elements: !3547)
!3547 = !{!3548}
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3546, file: !3545, line: 24, baseType: !3310, size: 64)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3529, file: !3530, line: 109, baseType: !911, size: 64, offset: 704)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3529, file: !3530, line: 112, baseType: !117, size: 32, offset: 768)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3529, file: !3530, line: 114, baseType: !117, size: 32, offset: 800)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3529, file: !3530, line: 115, baseType: !3147, size: 64, offset: 832)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3529, file: !3530, line: 118, baseType: !117, size: 32, offset: 896)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3529, file: !3530, line: 119, baseType: !28, size: 32, offset: 928)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3529, file: !3530, line: 121, baseType: !3556, size: 64, offset: 960)
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3530, line: 80, size: 448, elements: !3558)
!3558 = !{!3559, !3560, !3566}
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3557, file: !3530, line: 81, baseType: !251, size: 32)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3557, file: !3530, line: 82, baseType: !3561, size: 128, offset: 64)
!3561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3530, line: 75, size: 128, elements: !3562)
!3562 = !{!3563, !3564}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3561, file: !3530, line: 76, baseType: !3147, size: 64)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3561, file: !3530, line: 77, baseType: !3565, size: 64, offset: 64)
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3561, size: 64)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3557, file: !3530, line: 83, baseType: !769, size: 256, offset: 192)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3529, file: !3530, line: 132, baseType: !28, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3529, file: !3530, line: 133, baseType: !28, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3529, file: !3530, line: 138, baseType: !28, size: 32, offset: 1056)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3529, file: !3530, line: 139, baseType: !271, size: 128, offset: 1088)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3529, file: !3530, line: 142, baseType: !2850, size: 512, offset: 1216)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3529, file: !3530, line: 143, baseType: !2830, size: 64, offset: 1728)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3529, file: !3530, line: 150, baseType: !3574, size: 256, offset: 1792)
!3574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3575, size: 256, elements: !2102)
!3575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3530, line: 38, size: 128, elements: !3576)
!3576 = !{!3577, !3578}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3575, file: !3530, line: 39, baseType: !394, size: 64)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3575, file: !3530, line: 40, baseType: !394, size: 64, offset: 64)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3529, file: !3530, line: 156, baseType: !3580, size: 192, offset: 2048)
!3580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3530, line: 66, size: 192, elements: !3581)
!3581 = !{!3582}
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3580, file: !3530, line: 67, baseType: !3583, size: 192)
!3583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3530, line: 47, size: 192, elements: !3584)
!3584 = !{!3585, !3586, !3587}
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3583, file: !3530, line: 48, baseType: !301, size: 64)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3583, file: !3530, line: 49, baseType: !301, size: 64, offset: 64)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3583, file: !3530, line: 50, baseType: !301, size: 64, offset: 128)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3529, file: !3530, line: 160, baseType: !3475, size: 640, offset: 2240)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3529, file: !3530, line: 163, baseType: !3590, size: 256, offset: 2880)
!3590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !898, size: 256, elements: !213)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3529, file: !3530, line: 169, baseType: !898, size: 64, offset: 3136)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3529, file: !3530, line: 172, baseType: !117, size: 32, offset: 3200)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3529, file: !3530, line: 174, baseType: !3594, size: 64, offset: 3264)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3595 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3530, line: 174, flags: DIFlagFwdDecl)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3529, file: !3530, line: 185, baseType: !3597, size: 64, offset: 3328)
!3597 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !364, line: 860, baseType: !3598)
!3598 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !364, line: 853, size: 64, elements: !3599)
!3599 = !{!3600, !3601}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3598, file: !364, line: 858, baseType: !363, size: 32)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3598, file: !364, line: 859, baseType: !231, size: 32, offset: 32)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3529, file: !3530, line: 186, baseType: !394, size: 64, offset: 3392)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3529, file: !3530, line: 186, baseType: !394, size: 64, offset: 3456)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3529, file: !3530, line: 186, baseType: !394, size: 64, offset: 3520)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3529, file: !3530, line: 186, baseType: !394, size: 64, offset: 3584)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3529, file: !3530, line: 187, baseType: !394, size: 64, offset: 3648)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3529, file: !3530, line: 188, baseType: !394, size: 64, offset: 3712)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3529, file: !3530, line: 189, baseType: !3463, size: 192, offset: 3776)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3529, file: !3530, line: 190, baseType: !484, size: 64, offset: 3968)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3529, file: !3530, line: 190, baseType: !484, size: 64, offset: 4032)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3529, file: !3530, line: 190, baseType: !484, size: 64, offset: 4096)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3529, file: !3530, line: 190, baseType: !484, size: 64, offset: 4160)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3529, file: !3530, line: 191, baseType: !484, size: 64, offset: 4224)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3529, file: !3530, line: 191, baseType: !484, size: 64, offset: 4288)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3529, file: !3530, line: 191, baseType: !484, size: 64, offset: 4352)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3529, file: !3530, line: 191, baseType: !484, size: 64, offset: 4416)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3529, file: !3530, line: 192, baseType: !484, size: 64, offset: 4480)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3529, file: !3530, line: 192, baseType: !484, size: 64, offset: 4544)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3529, file: !3530, line: 192, baseType: !484, size: 64, offset: 4608)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3529, file: !3530, line: 192, baseType: !484, size: 64, offset: 4672)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3529, file: !3530, line: 193, baseType: !484, size: 64, offset: 4736)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3529, file: !3530, line: 193, baseType: !484, size: 64, offset: 4800)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3529, file: !3530, line: 194, baseType: !3624, size: 448, offset: 4864)
!3624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3625, line: 12, size: 448, elements: !3626)
!3625 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3626 = !{!3627, !3628, !3629, !3630, !3631, !3632, !3633}
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3624, file: !3625, line: 15, baseType: !394, size: 64)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3624, file: !3625, line: 17, baseType: !394, size: 64, offset: 64)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3624, file: !3625, line: 19, baseType: !394, size: 64, offset: 128)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3624, file: !3625, line: 21, baseType: !394, size: 64, offset: 192)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3624, file: !3625, line: 29, baseType: !394, size: 64, offset: 256)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3624, file: !3625, line: 35, baseType: !394, size: 64, offset: 320)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3624, file: !3625, line: 44, baseType: !394, size: 64, offset: 384)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3529, file: !3530, line: 202, baseType: !217, size: 64, offset: 5312)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3529, file: !3530, line: 213, baseType: !3636, size: 2048, offset: 5376)
!3636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3637, size: 2048, elements: !3498)
!3637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3638, line: 43, size: 128, elements: !3639)
!3638 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3639 = !{!3640, !3641}
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3637, file: !3638, line: 44, baseType: !608, size: 64)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3637, file: !3638, line: 45, baseType: !608, size: 64, offset: 64)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3529, file: !3530, line: 216, baseType: !3643, size: 448, offset: 7424)
!3643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3530, line: 30, size: 448, elements: !3644)
!3644 = !{!3645, !3646, !3647, !3648, !3649, !3650, !3651}
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3643, file: !3530, line: 31, baseType: !117, size: 32)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3643, file: !3530, line: 32, baseType: !320, size: 64, offset: 64)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3643, file: !3530, line: 33, baseType: !484, size: 64, offset: 128)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3643, file: !3530, line: 34, baseType: !394, size: 64, offset: 192)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3643, file: !3530, line: 34, baseType: !394, size: 64, offset: 256)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3643, file: !3530, line: 35, baseType: !484, size: 64, offset: 320)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3643, file: !3530, line: 35, baseType: !484, size: 64, offset: 384)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3529, file: !3530, line: 219, baseType: !3653, size: 64, offset: 7872)
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3654, size: 64)
!3654 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3530, line: 219, flags: DIFlagFwdDecl)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3529, file: !3530, line: 222, baseType: !28, size: 32, offset: 7936)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3529, file: !3530, line: 223, baseType: !3657, size: 64, offset: 8000)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3530, line: 223, flags: DIFlagFwdDecl)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3529, file: !3530, line: 230, baseType: !755, size: 8, offset: 8064)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3529, file: !3530, line: 231, baseType: !999, size: 16, offset: 8080)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3529, file: !3530, line: 232, baseType: !999, size: 16, offset: 8096)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3529, file: !3530, line: 234, baseType: !817, size: 64, offset: 8128)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3529, file: !3530, line: 237, baseType: !864, size: 256, offset: 8192)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3529, file: !3530, line: 243, baseType: !295, size: 320, offset: 8448)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !3148, file: !1349, line: 1111, baseType: !3666, size: 64, offset: 15424)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3530, line: 20, size: 16640, elements: !3668)
!3668 = !{!3669, !3670, !3671, !3672}
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3667, file: !3530, line: 21, baseType: !231, size: 32)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3667, file: !3530, line: 22, baseType: !902, size: 32, offset: 32)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3667, file: !3530, line: 23, baseType: !916, size: 192, offset: 64)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3667, file: !3530, line: 24, baseType: !3673, size: 16384, offset: 256)
!3673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3674, size: 16384, elements: !567)
!3674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1116, line: 51, size: 256, elements: !3675)
!3675 = !{!3676}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3674, file: !1116, line: 52, baseType: !3677, size: 256)
!3677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1116, line: 37, size: 256, elements: !3678)
!3678 = !{!3679, !3686, !3687, !3691}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3677, file: !1116, line: 39, baseType: !3680, size: 64)
!3680 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3681, line: 83, baseType: !3682)
!3681 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3681, line: 82, baseType: !3684)
!3684 = !DISubroutineType(types: !3685)
!3685 = !{null, !117}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3677, file: !1116, line: 40, baseType: !484, size: 64, offset: 64)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3677, file: !1116, line: 46, baseType: !3688, size: 64, offset: 128)
!3688 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3681, line: 86, baseType: !3689)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3681, line: 85, baseType: !2317)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3677, file: !1116, line: 48, baseType: !3544, size: 64, offset: 192)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3148, file: !1349, line: 1112, baseType: !3544, size: 64, offset: 15488)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !3148, file: !1349, line: 1113, baseType: !3544, size: 64, offset: 15552)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !3148, file: !1349, line: 1115, baseType: !3544, size: 64, offset: 15616)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !3148, file: !1349, line: 1116, baseType: !3540, size: 192, offset: 15680)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !3148, file: !1349, line: 1117, baseType: !484, size: 64, offset: 15872)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !3148, file: !1349, line: 1118, baseType: !606, size: 64, offset: 15936)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !3148, file: !1349, line: 1119, baseType: !28, size: 32, offset: 16000)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !3148, file: !1349, line: 1121, baseType: !762, size: 64, offset: 16064)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !3148, file: !1349, line: 1125, baseType: !3701, size: 64, offset: 16128)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1349, line: 43, flags: DIFlagFwdDecl)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !3148, file: !1349, line: 1127, baseType: !328, size: 32, offset: 16192)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !3148, file: !1349, line: 1128, baseType: !28, size: 32, offset: 16224)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !3148, file: !1349, line: 1130, baseType: !3706, size: 128, offset: 16256)
!3706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3707, line: 37, size: 128, elements: !3708)
!3707 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3708 = !{!3709, !3710, !3711}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3706, file: !3707, line: 38, baseType: !117, size: 32)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3706, file: !3707, line: 39, baseType: !251, size: 32, offset: 32)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3706, file: !3707, line: 40, baseType: !3712, size: 64, offset: 64)
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3713 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3707, line: 24, flags: DIFlagFwdDecl)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !3148, file: !1349, line: 1131, baseType: !3715, size: 256, offset: 16384)
!3715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3716, line: 12, size: 256, elements: !3717)
!3716 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3717 = !{!3718, !3719, !3720, !3721}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3715, file: !3716, line: 13, baseType: !464, size: 64)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3715, file: !3716, line: 14, baseType: !484, size: 64, offset: 64)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3715, file: !3716, line: 15, baseType: !484, size: 64, offset: 128)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3715, file: !3716, line: 16, baseType: !755, size: 8, offset: 192)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !3148, file: !1349, line: 1134, baseType: !394, size: 64, offset: 16640)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !3148, file: !1349, line: 1135, baseType: !394, size: 64, offset: 16704)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !3148, file: !1349, line: 1138, baseType: !231, size: 32, offset: 16768)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !3148, file: !1349, line: 1141, baseType: !313, size: 32, offset: 16800)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !3148, file: !1349, line: 1143, baseType: !3727, size: 64, offset: 16832)
!3727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1349, line: 735, size: 64, elements: !3728)
!3728 = !{!3729}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3727, file: !1349, line: 736, baseType: !3730, size: 64)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !3148, file: !1349, line: 1147, baseType: !649, size: 128, offset: 16896)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !3148, file: !1349, line: 1149, baseType: !3147, size: 64, offset: 17024)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !3148, file: !1349, line: 1151, baseType: !3734, size: 64, offset: 17088)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1349, line: 1151, flags: DIFlagFwdDecl)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !3148, file: !1349, line: 1188, baseType: !194, size: 64, offset: 17152)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !3148, file: !1349, line: 1191, baseType: !3738, size: 64, offset: 17216)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1349, line: 44, flags: DIFlagFwdDecl)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !3148, file: !1349, line: 1194, baseType: !3741, size: 64, offset: 17280)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1349, line: 45, flags: DIFlagFwdDecl)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !3148, file: !1349, line: 1197, baseType: !3744, size: 64, offset: 17344)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1349, line: 61, flags: DIFlagFwdDecl)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !3148, file: !1349, line: 1199, baseType: !3747, size: 64, offset: 17408)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2624, line: 99, size: 128, elements: !3749)
!3749 = !{!3750, !3751, !3752}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3748, file: !2624, line: 100, baseType: !299, size: 64)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3748, file: !2624, line: 101, baseType: !251, size: 32, offset: 64)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3748, file: !2624, line: 103, baseType: !219, size: 16, offset: 96)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !3148, file: !1349, line: 1202, baseType: !3754, size: 64, offset: 17472)
!3754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3755, size: 64)
!3755 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1349, line: 48, flags: DIFlagFwdDecl)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !3148, file: !1349, line: 1205, baseType: !484, size: 64, offset: 17536)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !3148, file: !1349, line: 1206, baseType: !3758, size: 64, offset: 17600)
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1116, line: 14, baseType: !3760)
!3760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1116, line: 12, size: 384, elements: !3761)
!3761 = !{!3762}
!3762 = !DIDerivedType(tag: DW_TAG_member, scope: !3760, file: !1116, line: 13, baseType: !3763, size: 384)
!3763 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3760, file: !1116, line: 13, size: 384, elements: !3764)
!3764 = !{!3765, !3766, !3767, !3768}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3763, file: !1116, line: 13, baseType: !117, size: 32)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3763, file: !1116, line: 13, baseType: !117, size: 32, offset: 32)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3763, file: !1116, line: 13, baseType: !117, size: 32, offset: 64)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3763, file: !1116, line: 13, baseType: !3769, size: 256, offset: 128)
!3769 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3770, line: 37, size: 256, elements: !3771)
!3770 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3771 = !{!3772, !3777, !3790, !3796, !3805, !3832, !3837}
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3769, file: !3770, line: 42, baseType: !3773, size: 64)
!3773 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3769, file: !3770, line: 39, size: 64, elements: !3774)
!3774 = !{!3775, !3776}
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3773, file: !3770, line: 40, baseType: !3440, size: 32)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3773, file: !3770, line: 41, baseType: !334, size: 32, offset: 32)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3769, file: !3770, line: 50, baseType: !3778, size: 192)
!3778 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3769, file: !3770, line: 45, size: 192, elements: !3779)
!3779 = !{!3780, !3782, !3783, !3789}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3778, file: !3770, line: 46, baseType: !3781, size: 32)
!3781 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !281, line: 95, baseType: !117)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3778, file: !3770, line: 47, baseType: !117, size: 32, offset: 32)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3778, file: !3770, line: 48, baseType: !3784, size: 64, offset: 64)
!3784 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3770, line: 11, baseType: !3785)
!3785 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3770, line: 8, size: 64, elements: !3786)
!3786 = !{!3787, !3788}
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3785, file: !3770, line: 9, baseType: !117, size: 32)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3785, file: !3770, line: 10, baseType: !194, size: 64)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3778, file: !3770, line: 49, baseType: !117, size: 32, offset: 128)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3769, file: !3770, line: 57, baseType: !3791, size: 128)
!3791 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3769, file: !3770, line: 53, size: 128, elements: !3792)
!3792 = !{!3793, !3794, !3795}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3791, file: !3770, line: 54, baseType: !3440, size: 32)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3791, file: !3770, line: 55, baseType: !334, size: 32, offset: 32)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3791, file: !3770, line: 56, baseType: !3784, size: 64, offset: 64)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3769, file: !3770, line: 66, baseType: !3797, size: 256)
!3797 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3769, file: !3770, line: 60, size: 256, elements: !3798)
!3798 = !{!3799, !3800, !3801, !3802, !3804}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3797, file: !3770, line: 61, baseType: !3440, size: 32)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3797, file: !3770, line: 62, baseType: !334, size: 32, offset: 32)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3797, file: !3770, line: 63, baseType: !117, size: 32, offset: 64)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3797, file: !3770, line: 64, baseType: !3803, size: 64, offset: 128)
!3803 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !281, line: 94, baseType: !596)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3797, file: !3770, line: 65, baseType: !3803, size: 64, offset: 192)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3769, file: !3770, line: 105, baseType: !3806, size: 256)
!3806 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3769, file: !3770, line: 69, size: 256, elements: !3807)
!3807 = !{!3808, !3809}
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3806, file: !3770, line: 70, baseType: !194, size: 64)
!3809 = !DIDerivedType(tag: DW_TAG_member, scope: !3806, file: !3770, line: 79, baseType: !3810, size: 192, offset: 64)
!3810 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3806, file: !3770, line: 79, size: 192, elements: !3811)
!3811 = !{!3812, !3813, !3814, !3821, !3826}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3810, file: !3770, line: 81, baseType: !117, size: 32)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3810, file: !3770, line: 86, baseType: !999, size: 16)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3810, file: !3770, line: 92, baseType: !3815, size: 192)
!3815 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3810, file: !3770, line: 88, size: 192, elements: !3816)
!3816 = !{!3817, !3819, !3820}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3815, file: !3770, line: 89, baseType: !3818, size: 64)
!3818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !2891)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3815, file: !3770, line: 90, baseType: !194, size: 64, offset: 64)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3815, file: !3770, line: 91, baseType: !194, size: 64, offset: 128)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3810, file: !3770, line: 97, baseType: !3822, size: 96)
!3822 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3810, file: !3770, line: 94, size: 96, elements: !3823)
!3823 = !{!3824, !3825}
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3822, file: !3770, line: 95, baseType: !3818, size: 64)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3822, file: !3770, line: 96, baseType: !202, size: 32, offset: 64)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3810, file: !3770, line: 103, baseType: !3827, size: 128)
!3827 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3810, file: !3770, line: 99, size: 128, elements: !3828)
!3828 = !{!3829, !3830, !3831}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3827, file: !3770, line: 100, baseType: !484, size: 64)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3827, file: !3770, line: 101, baseType: !202, size: 32, offset: 64)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3827, file: !3770, line: 102, baseType: !202, size: 32, offset: 96)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3769, file: !3770, line: 111, baseType: !3833, size: 128)
!3833 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3769, file: !3770, line: 108, size: 128, elements: !3834)
!3834 = !{!3835, !3836}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3833, file: !3770, line: 109, baseType: !320, size: 64)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3833, file: !3770, line: 110, baseType: !117, size: 32, offset: 64)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3769, file: !3770, line: 118, baseType: !3838, size: 128)
!3838 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3769, file: !3770, line: 114, size: 128, elements: !3839)
!3839 = !{!3840, !3841, !3842}
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3838, file: !3770, line: 115, baseType: !194, size: 64)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3838, file: !3770, line: 116, baseType: !117, size: 32, offset: 64)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3838, file: !3770, line: 117, baseType: !28, size: 32, offset: 96)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3148, file: !1349, line: 1208, baseType: !3624, size: 448, offset: 17664)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !3148, file: !1349, line: 1215, baseType: !394, size: 64, offset: 18112)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !3148, file: !1349, line: 1217, baseType: !394, size: 64, offset: 18176)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !3148, file: !1349, line: 1219, baseType: !394, size: 64, offset: 18240)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !3148, file: !1349, line: 1223, baseType: !3848, size: 64, offset: 18304)
!3848 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3849, line: 99, baseType: !3850)
!3849 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3850 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3849, line: 99, size: 64, elements: !3851)
!3851 = !{!3852}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3850, file: !3849, line: 99, baseType: !3310, size: 64)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !3148, file: !1349, line: 1225, baseType: !363, size: 32, offset: 18368)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !3148, file: !1349, line: 1226, baseType: !117, size: 32, offset: 18400)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !3148, file: !1349, line: 1227, baseType: !117, size: 32, offset: 18432)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !3148, file: !1349, line: 1231, baseType: !3857, size: 64, offset: 18496)
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3858 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1349, line: 1231, flags: DIFlagFwdDecl)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !3148, file: !1349, line: 1233, baseType: !271, size: 128, offset: 18560)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !3148, file: !1349, line: 1240, baseType: !3861, size: 64, offset: 18688)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1349, line: 62, flags: DIFlagFwdDecl)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !3148, file: !1349, line: 1242, baseType: !3864, size: 64, offset: 18752)
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1349, line: 1242, flags: DIFlagFwdDecl)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !3148, file: !1349, line: 1244, baseType: !271, size: 128, offset: 18816)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !3148, file: !1349, line: 1245, baseType: !3868, size: 64, offset: 18944)
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3869 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1349, line: 51, flags: DIFlagFwdDecl)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !3148, file: !1349, line: 1246, baseType: !864, size: 256, offset: 19008)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !3148, file: !1349, line: 1247, baseType: !28, size: 32, offset: 19264)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !3148, file: !1349, line: 1250, baseType: !3873, size: 64, offset: 19328)
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3874 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1349, line: 57, flags: DIFlagFwdDecl)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !3148, file: !1349, line: 1251, baseType: !864, size: 256, offset: 19392)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !3148, file: !1349, line: 1252, baseType: !271, size: 128, offset: 19648)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !3148, file: !1349, line: 1259, baseType: !1621, size: 64, offset: 19776)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !3148, file: !1349, line: 1260, baseType: !999, size: 16, offset: 19840)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !3148, file: !1349, line: 1261, baseType: !999, size: 16, offset: 19856)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !3148, file: !1349, line: 1314, baseType: !3881, size: 64, offset: 19904)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3883, line: 62, size: 256, align: 256, elements: !3884)
!3883 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3884 = !{!3885, !3886, !3887, !3888, !3889, !3890, !3891}
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3882, file: !3883, line: 75, baseType: !202, size: 32)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3882, file: !3883, line: 90, baseType: !202, size: 32, offset: 32)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3882, file: !3883, line: 112, baseType: !395, size: 64, offset: 64)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3882, file: !3883, line: 132, baseType: !202, size: 32, offset: 128)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3882, file: !3883, line: 140, baseType: !202, size: 32, offset: 160)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3882, file: !3883, line: 149, baseType: !202, size: 32, offset: 192)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3882, file: !3883, line: 154, baseType: !3892, offset: 224)
!3892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !931)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !3148, file: !1349, line: 1315, baseType: !391, size: 32, offset: 19968)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !3148, file: !1349, line: 1316, baseType: !391, size: 32, offset: 20000)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !3148, file: !1349, line: 1321, baseType: !484, size: 64, offset: 20032)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3148, file: !1349, line: 1325, baseType: !117, size: 32, offset: 20096)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !3148, file: !1349, line: 1326, baseType: !117, size: 32, offset: 20128)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !3148, file: !1349, line: 1327, baseType: !117, size: 32, offset: 20160)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !3148, file: !1349, line: 1328, baseType: !117, size: 32, offset: 20192)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !3148, file: !1349, line: 1329, baseType: !759, size: 128, align: 64, offset: 20224)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !3148, file: !1349, line: 1332, baseType: !3902, size: 128, offset: 20352)
!3902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3903, line: 51, size: 128, elements: !3904)
!3903 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3904 = !{!3905, !3910, !3911}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3902, file: !3903, line: 60, baseType: !3906, size: 64)
!3906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3907, line: 7, size: 64, elements: !3908)
!3907 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3908 = !{!3909}
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3906, file: !3907, line: 12, baseType: !3307, size: 64)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3902, file: !3903, line: 63, baseType: !755, size: 8, offset: 64)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3902, file: !3903, line: 70, baseType: !755, size: 8, offset: 72)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !3148, file: !1349, line: 1335, baseType: !1347, size: 64, offset: 20480)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !3148, file: !1349, line: 1337, baseType: !3914, size: 128, offset: 20544)
!3914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3903, line: 39, size: 128, elements: !3915)
!3915 = !{!3916, !3917, !3918}
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3914, file: !3903, line: 40, baseType: !674, size: 64)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3914, file: !3903, line: 42, baseType: !202, size: 32, offset: 64)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3914, file: !3903, line: 43, baseType: !202, size: 32, offset: 96)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !3148, file: !1349, line: 1340, baseType: !3920, size: 64, offset: 20672)
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1349, line: 69, flags: DIFlagFwdDecl)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !3148, file: !1349, line: 1351, baseType: !117, size: 32, offset: 20736)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !3148, file: !1349, line: 1352, baseType: !117, size: 32, offset: 20768)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !3148, file: !1349, line: 1354, baseType: !484, size: 64, offset: 20800)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !3148, file: !1349, line: 1364, baseType: !394, size: 64, offset: 20864)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !3148, file: !1349, line: 1365, baseType: !394, size: 64, offset: 20928)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !3148, file: !1349, line: 1412, baseType: !484, size: 64, offset: 20992)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !3148, file: !1349, line: 1453, baseType: !2619, size: 64, offset: 21056)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !3148, file: !1349, line: 1457, baseType: !3930, size: 64, offset: 21120)
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!3931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !156, line: 61, size: 576, elements: !3932)
!3932 = !{!3933, !3934, !3953, !3956, !3957, !3990, !4000}
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3931, file: !156, line: 62, baseType: !155, size: 32)
!3934 = !DIDerivedType(tag: DW_TAG_member, scope: !3931, file: !156, line: 64, baseType: !3935, size: 192, offset: 64)
!3935 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3931, file: !156, line: 64, size: 192, elements: !3936)
!3936 = !{!3937, !3948}
!3937 = !DIDerivedType(tag: DW_TAG_member, scope: !3935, file: !156, line: 65, baseType: !3938, size: 192)
!3938 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3935, file: !156, line: 65, size: 192, elements: !3939)
!3939 = !{!3940, !3947}
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3938, file: !156, line: 66, baseType: !3941, size: 128)
!3941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3942, line: 50, size: 128, elements: !3943)
!3942 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3943 = !{!3944, !3945, !3946}
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3941, file: !3942, line: 52, baseType: !484, size: 64)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3941, file: !3942, line: 54, baseType: !28, size: 32, offset: 64)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3941, file: !3942, line: 55, baseType: !28, size: 32, offset: 96)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3938, file: !156, line: 67, baseType: !484, size: 64, offset: 128)
!3948 = !DIDerivedType(tag: DW_TAG_member, scope: !3935, file: !156, line: 70, baseType: !3949, size: 192)
!3949 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3935, file: !156, line: 70, size: 192, elements: !3950)
!3950 = !{!3951, !3952}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3949, file: !156, line: 71, baseType: !759, size: 128, align: 64)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3949, file: !156, line: 72, baseType: !484, size: 64, offset: 128)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3931, file: !156, line: 76, baseType: !3954, size: 64, offset: 256)
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3955, size: 64)
!3955 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !156, line: 76, flags: DIFlagFwdDecl)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3931, file: !156, line: 77, baseType: !484, size: 64, offset: 320)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3931, file: !156, line: 79, baseType: !3958, size: 64, offset: 384)
!3958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3959, size: 64)
!3959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3942, line: 25, size: 256, elements: !3960)
!3960 = !{!3961, !3967, !3971}
!3961 = !DIDerivedType(tag: DW_TAG_member, scope: !3959, file: !3942, line: 26, baseType: !3962, size: 128)
!3962 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3959, file: !3942, line: 26, size: 128, elements: !3963)
!3963 = !{!3964, !3966}
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3962, file: !3942, line: 27, baseType: !3965, size: 128)
!3965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 128, elements: !3498)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3962, file: !3942, line: 28, baseType: !3965, size: 128)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3959, file: !3942, line: 31, baseType: !3968, size: 64, offset: 128)
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3969, size: 64)
!3969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3970)
!3970 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3942, line: 23, flags: DIFlagFwdDecl)
!3971 = !DIDerivedType(tag: DW_TAG_member, scope: !3959, file: !3942, line: 33, baseType: !3972, size: 64, offset: 192)
!3972 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3959, file: !3942, line: 33, size: 64, elements: !3973)
!3973 = !{!3974, !3980, !3985}
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3972, file: !3942, line: 38, baseType: !3975, size: 64)
!3975 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3972, file: !3942, line: 34, size: 64, elements: !3976)
!3976 = !{!3977, !3978, !3979}
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3975, file: !3942, line: 35, baseType: !973, size: 32)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3975, file: !3942, line: 36, baseType: !259, size: 8, offset: 32)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3975, file: !3942, line: 37, baseType: !259, size: 8, offset: 40)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3972, file: !3942, line: 42, baseType: !3981, size: 16)
!3981 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3972, file: !3942, line: 39, size: 16, elements: !3982)
!3982 = !{!3983, !3984}
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3981, file: !3942, line: 40, baseType: !259, size: 8)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3981, file: !3942, line: 41, baseType: !259, size: 8, offset: 8)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3972, file: !3942, line: 46, baseType: !3986, size: 16)
!3986 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3972, file: !3942, line: 43, size: 16, elements: !3987)
!3987 = !{!3988, !3989}
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3986, file: !3942, line: 44, baseType: !259, size: 8)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3986, file: !3942, line: 45, baseType: !259, size: 8, offset: 8)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3931, file: !156, line: 81, baseType: !3991, size: 64, offset: 448)
!3991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3992, size: 64)
!3992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !156, line: 85, size: 384, elements: !3993)
!3993 = !{!3994, !3995, !3996, !3997, !3998, !3999}
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3992, file: !156, line: 86, baseType: !3954, size: 64)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3992, file: !156, line: 87, baseType: !484, size: 64, offset: 64)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3992, file: !156, line: 88, baseType: !484, size: 64, offset: 128)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3992, file: !156, line: 89, baseType: !484, size: 64, offset: 192)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3992, file: !156, line: 90, baseType: !755, size: 8, offset: 256)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3992, file: !156, line: 92, baseType: !3991, size: 64, offset: 320)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3931, file: !156, line: 82, baseType: !28, size: 32, offset: 512)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !3148, file: !1349, line: 1463, baseType: !4002, offset: 21184)
!4002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1349, line: 739, elements: !838)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3148, file: !1349, line: 1470, baseType: !759, size: 128, align: 64, offset: 21184)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3148, file: !1349, line: 1471, baseType: !902, size: 32, offset: 21312)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !3148, file: !1349, line: 1472, baseType: !117, size: 32, offset: 21344)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !3148, file: !1349, line: 1474, baseType: !3147, size: 64, offset: 21376)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !3148, file: !1349, line: 1475, baseType: !2212, size: 320, offset: 21440)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !3148, file: !1349, line: 1478, baseType: !4009, size: 64, offset: 21760)
!4009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4010, size: 64)
!4010 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1349, line: 1478, flags: DIFlagFwdDecl)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !3148, file: !1349, line: 1482, baseType: !902, size: 32, offset: 21824)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3148, file: !1349, line: 1489, baseType: !194, size: 64, offset: 21888)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !3148, file: !1349, line: 1504, baseType: !194, size: 64, offset: 21952)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !3148, file: !1349, line: 1505, baseType: !395, size: 64, offset: 22016)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !3148, file: !1349, line: 1506, baseType: !394, size: 64, offset: 22080)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !3148, file: !1349, line: 1507, baseType: !395, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !3148, file: !1349, line: 1508, baseType: !395, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !3148, file: !1349, line: 1509, baseType: !395, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !3148, file: !1349, line: 1510, baseType: !759, size: 128, align: 64, offset: 22208)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !3148, file: !1349, line: 1511, baseType: !117, size: 32, offset: 22336)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !3148, file: !1349, line: 1515, baseType: !4022, size: 64, offset: 22400)
!4022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !853, line: 56, size: 64, elements: !4023)
!4023 = !{!4024}
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4022, file: !853, line: 57, baseType: !856, size: 64)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !3148, file: !1349, line: 1518, baseType: !4022, size: 64, offset: 22464)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !3148, file: !1349, line: 1528, baseType: !759, size: 128, align: 64, offset: 22528)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !3148, file: !1349, line: 1552, baseType: !4028, size: 35328, offset: 23040)
!4028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4029, line: 430, size: 35328, elements: !4030)
!4029 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4030 = !{!4031, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4060, !4061, !4062, !4063, !4064, !4065, !4068, !4069, !4070, !4071}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4028, file: !4029, line: 432, baseType: !4032, size: 192)
!4032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4033, size: 192, elements: !5)
!4033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4034, line: 16, size: 64, elements: !4035)
!4034 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4035 = !{!4036, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048}
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4033, file: !4034, line: 17, baseType: !268, size: 16)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4033, file: !4034, line: 18, baseType: !268, size: 16, offset: 16)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4033, file: !4034, line: 19, baseType: !268, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4033, file: !4034, line: 19, baseType: !268, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4033, file: !4034, line: 19, baseType: !268, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4033, file: !4034, line: 19, baseType: !268, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4033, file: !4034, line: 19, baseType: !268, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4033, file: !4034, line: 20, baseType: !268, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4033, file: !4034, line: 20, baseType: !268, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4033, file: !4034, line: 20, baseType: !268, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4033, file: !4034, line: 20, baseType: !268, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4033, file: !4034, line: 20, baseType: !268, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4033, file: !4034, line: 20, baseType: !268, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4028, file: !4029, line: 436, baseType: !484, size: 64, offset: 192)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4028, file: !4029, line: 440, baseType: !219, size: 16, offset: 256)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4028, file: !4029, line: 441, baseType: !219, size: 16, offset: 272)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4028, file: !4029, line: 442, baseType: !219, size: 16, offset: 288)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4028, file: !4029, line: 443, baseType: !219, size: 16, offset: 304)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4028, file: !4029, line: 447, baseType: !484, size: 64, offset: 320)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4028, file: !4029, line: 448, baseType: !484, size: 64, offset: 384)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4028, file: !4029, line: 459, baseType: !4057, size: 256, offset: 448)
!4057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4058, size: 256, elements: !213)
!4058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4059, size: 64)
!4059 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4029, line: 428, flags: DIFlagFwdDecl)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4028, file: !4029, line: 461, baseType: !484, size: 64, offset: 704)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4028, file: !4029, line: 463, baseType: !484, size: 64, offset: 768)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4028, file: !4029, line: 465, baseType: !484, size: 64, offset: 832)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4028, file: !4029, line: 466, baseType: !484, size: 64, offset: 896)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4028, file: !4029, line: 467, baseType: !484, size: 64, offset: 960)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4028, file: !4029, line: 473, baseType: !4066, size: 64, offset: 1024)
!4066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4067, size: 64)
!4067 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4029, line: 10, flags: DIFlagFwdDecl)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4028, file: !4029, line: 480, baseType: !484, size: 64, offset: 1088)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4028, file: !4029, line: 482, baseType: !28, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4028, file: !4029, line: 491, baseType: !391, size: 32, offset: 1184)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4028, file: !4029, line: 501, baseType: !4072, size: 33792, offset: 1536)
!4072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4073, line: 448, size: 33792, elements: !4074)
!4073 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4074 = !{!4075, !4076, !4077, !4239, !4240, !4246, !4247}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4072, file: !4073, line: 461, baseType: !28, size: 32)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4072, file: !4073, line: 468, baseType: !484, size: 64, offset: 64)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4072, file: !4073, line: 476, baseType: !4078, size: 64, offset: 128)
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64)
!4079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4073, line: 356, size: 33280, align: 512, elements: !4080)
!4080 = !{!4081, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4090}
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4079, file: !4073, line: 358, baseType: !28, size: 32)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4079, file: !4073, line: 361, baseType: !28, size: 32, offset: 32)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4079, file: !4073, line: 364, baseType: !394, size: 64, offset: 64)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4079, file: !4073, line: 367, baseType: !394, size: 64, offset: 128)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4079, file: !4073, line: 370, baseType: !394, size: 64, offset: 192)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4079, file: !4073, line: 373, baseType: !28, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4079, file: !4073, line: 376, baseType: !28, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4079, file: !4073, line: 391, baseType: !28, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4079, file: !4073, line: 394, baseType: !28, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4079, file: !4073, line: 397, baseType: !4091, size: 32768, offset: 512)
!4091 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4073, line: 348, size: 32768, elements: !4092)
!4092 = !{!4093, !4108, !4145, !4222, !4235}
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4091, file: !4073, line: 349, baseType: !4094, size: 896)
!4094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4073, line: 12, size: 896, elements: !4095)
!4095 = !{!4096, !4097, !4098, !4099, !4100, !4101, !4102, !4103, !4107}
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4094, file: !4073, line: 13, baseType: !391, size: 32)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4094, file: !4073, line: 14, baseType: !391, size: 32, offset: 32)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4094, file: !4073, line: 15, baseType: !391, size: 32, offset: 64)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4094, file: !4073, line: 16, baseType: !391, size: 32, offset: 96)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4094, file: !4073, line: 17, baseType: !391, size: 32, offset: 128)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4094, file: !4073, line: 18, baseType: !391, size: 32, offset: 160)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4094, file: !4073, line: 19, baseType: !391, size: 32, offset: 192)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4094, file: !4073, line: 22, baseType: !4104, size: 640, offset: 224)
!4104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !391, size: 640, elements: !4105)
!4105 = !{!4106}
!4106 = !DISubrange(count: 20)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4094, file: !4073, line: 25, baseType: !391, size: 32, offset: 864)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4091, file: !4073, line: 350, baseType: !4109, size: 4096, align: 128)
!4109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4073, line: 34, size: 4096, align: 128, elements: !4110)
!4110 = !{!4111, !4112, !4113, !4114, !4115, !4130, !4131, !4132, !4134, !4136, !4140}
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4109, file: !4073, line: 35, baseType: !268, size: 16)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4109, file: !4073, line: 36, baseType: !268, size: 16, offset: 16)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4109, file: !4073, line: 37, baseType: !268, size: 16, offset: 32)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4109, file: !4073, line: 38, baseType: !268, size: 16, offset: 48)
!4115 = !DIDerivedType(tag: DW_TAG_member, scope: !4109, file: !4073, line: 39, baseType: !4116, size: 128, offset: 64)
!4116 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4109, file: !4073, line: 39, size: 128, elements: !4117)
!4117 = !{!4118, !4123}
!4118 = !DIDerivedType(tag: DW_TAG_member, scope: !4116, file: !4073, line: 40, baseType: !4119, size: 128)
!4119 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4116, file: !4073, line: 40, size: 128, elements: !4120)
!4120 = !{!4121, !4122}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4119, file: !4073, line: 41, baseType: !394, size: 64)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4119, file: !4073, line: 42, baseType: !394, size: 64, offset: 64)
!4123 = !DIDerivedType(tag: DW_TAG_member, scope: !4116, file: !4073, line: 44, baseType: !4124, size: 128)
!4124 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4116, file: !4073, line: 44, size: 128, elements: !4125)
!4125 = !{!4126, !4127, !4128, !4129}
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4124, file: !4073, line: 45, baseType: !391, size: 32)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4124, file: !4073, line: 46, baseType: !391, size: 32, offset: 32)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4124, file: !4073, line: 47, baseType: !391, size: 32, offset: 64)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4124, file: !4073, line: 48, baseType: !391, size: 32, offset: 96)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4109, file: !4073, line: 51, baseType: !391, size: 32, offset: 192)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4109, file: !4073, line: 52, baseType: !391, size: 32, offset: 224)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4109, file: !4073, line: 55, baseType: !4133, size: 1024, offset: 256)
!4133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !391, size: 1024, elements: !403)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4109, file: !4073, line: 58, baseType: !4135, size: 2048, offset: 1280)
!4135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !391, size: 2048, elements: !567)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4109, file: !4073, line: 60, baseType: !4137, size: 384, offset: 3328)
!4137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !391, size: 384, elements: !4138)
!4138 = !{!4139}
!4139 = !DISubrange(count: 12)
!4140 = !DIDerivedType(tag: DW_TAG_member, scope: !4109, file: !4073, line: 62, baseType: !4141, size: 384, offset: 3712)
!4141 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4109, file: !4073, line: 62, size: 384, elements: !4142)
!4142 = !{!4143, !4144}
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4141, file: !4073, line: 63, baseType: !4137, size: 384)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4141, file: !4073, line: 64, baseType: !4137, size: 384)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4091, file: !4073, line: 351, baseType: !4146, size: 1088)
!4146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4073, line: 79, size: 1088, elements: !4147)
!4147 = !{!4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162, !4221}
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4146, file: !4073, line: 80, baseType: !391, size: 32)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4146, file: !4073, line: 81, baseType: !391, size: 32, offset: 32)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4146, file: !4073, line: 82, baseType: !391, size: 32, offset: 64)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4146, file: !4073, line: 83, baseType: !391, size: 32, offset: 96)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4146, file: !4073, line: 84, baseType: !391, size: 32, offset: 128)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4146, file: !4073, line: 85, baseType: !391, size: 32, offset: 160)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4146, file: !4073, line: 86, baseType: !391, size: 32, offset: 192)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4146, file: !4073, line: 88, baseType: !4104, size: 640, offset: 224)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4146, file: !4073, line: 89, baseType: !259, size: 8, offset: 864)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4146, file: !4073, line: 90, baseType: !259, size: 8, offset: 872)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4146, file: !4073, line: 91, baseType: !259, size: 8, offset: 880)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4146, file: !4073, line: 92, baseType: !259, size: 8, offset: 888)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4146, file: !4073, line: 93, baseType: !259, size: 8, offset: 896)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4146, file: !4073, line: 94, baseType: !259, size: 8, offset: 904)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4146, file: !4073, line: 95, baseType: !4163, size: 64, offset: 960)
!4163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4164, size: 64)
!4164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4165, line: 11, size: 128, elements: !4166)
!4165 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4166 = !{!4167, !4168}
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4164, file: !4165, line: 12, baseType: !320, size: 64)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4164, file: !4165, line: 13, baseType: !4169, size: 64, offset: 64)
!4169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4170, size: 64)
!4170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4171, line: 103, size: 1344, elements: !4172)
!4171 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4172 = !{!4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4190, !4201, !4202, !4203}
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4170, file: !4171, line: 109, baseType: !484, size: 64)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4170, file: !4171, line: 110, baseType: !484, size: 64, offset: 64)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4170, file: !4171, line: 111, baseType: !484, size: 64, offset: 128)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4170, file: !4171, line: 112, baseType: !484, size: 64, offset: 192)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4170, file: !4171, line: 113, baseType: !484, size: 64, offset: 256)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4170, file: !4171, line: 114, baseType: !484, size: 64, offset: 320)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4170, file: !4171, line: 117, baseType: !484, size: 64, offset: 384)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4170, file: !4171, line: 118, baseType: !484, size: 64, offset: 448)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4170, file: !4171, line: 119, baseType: !484, size: 64, offset: 512)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4170, file: !4171, line: 120, baseType: !484, size: 64, offset: 576)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4170, file: !4171, line: 121, baseType: !484, size: 64, offset: 640)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4170, file: !4171, line: 122, baseType: !484, size: 64, offset: 704)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4170, file: !4171, line: 123, baseType: !484, size: 64, offset: 768)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4170, file: !4171, line: 124, baseType: !484, size: 64, offset: 832)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4170, file: !4171, line: 125, baseType: !484, size: 64, offset: 896)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4170, file: !4171, line: 139, baseType: !484, size: 64, offset: 960)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4170, file: !4171, line: 142, baseType: !484, size: 64, offset: 1024)
!4190 = !DIDerivedType(tag: DW_TAG_member, scope: !4170, file: !4171, line: 144, baseType: !4191, size: 64, offset: 1088)
!4191 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4170, file: !4171, line: 144, size: 64, elements: !4192)
!4192 = !{!4193, !4194, !4195}
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4191, file: !4171, line: 146, baseType: !268, size: 16)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4191, file: !4171, line: 148, baseType: !394, size: 64)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4191, file: !4171, line: 150, baseType: !4196, size: 64)
!4196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4171, line: 59, size: 64, elements: !4197)
!4197 = !{!4198, !4199, !4200}
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4196, file: !4171, line: 61, baseType: !394, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4196, file: !4171, line: 63, baseType: !394, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4196, file: !4171, line: 65, baseType: !394, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4170, file: !4171, line: 153, baseType: !484, size: 64, offset: 1152)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4170, file: !4171, line: 154, baseType: !484, size: 64, offset: 1216)
!4203 = !DIDerivedType(tag: DW_TAG_member, scope: !4170, file: !4171, line: 156, baseType: !4204, size: 64, offset: 1280)
!4204 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4170, file: !4171, line: 156, size: 64, elements: !4205)
!4205 = !{!4206, !4207, !4208}
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4204, file: !4171, line: 158, baseType: !268, size: 16)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4204, file: !4171, line: 160, baseType: !394, size: 64)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4204, file: !4171, line: 162, baseType: !4209, size: 64)
!4209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4171, line: 69, size: 64, elements: !4210)
!4210 = !{!4211, !4212, !4213, !4214, !4215, !4216, !4217, !4218, !4219, !4220}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4209, file: !4171, line: 71, baseType: !394, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4209, file: !4171, line: 73, baseType: !394, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4209, file: !4171, line: 75, baseType: !394, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4209, file: !4171, line: 77, baseType: !394, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4209, file: !4171, line: 80, baseType: !394, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4209, file: !4171, line: 83, baseType: !394, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4209, file: !4171, line: 86, baseType: !394, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4209, file: !4171, line: 88, baseType: !394, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4209, file: !4171, line: 93, baseType: !394, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4209, file: !4171, line: 100, baseType: !394, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4146, file: !4073, line: 96, baseType: !391, size: 32, offset: 1024)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4091, file: !4073, line: 352, baseType: !4223, size: 4608, align: 512)
!4223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4073, line: 333, size: 4608, align: 512, elements: !4224)
!4224 = !{!4225, !4226, !4233}
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4223, file: !4073, line: 334, baseType: !4109, size: 4096, align: 128)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4223, file: !4073, line: 335, baseType: !4227, size: 512, offset: 4096)
!4227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4073, line: 312, size: 512, elements: !4228)
!4228 = !{!4229, !4230, !4231}
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4227, file: !4073, line: 313, baseType: !394, size: 64)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4227, file: !4073, line: 314, baseType: !394, size: 64, offset: 64)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4227, file: !4073, line: 315, baseType: !4232, size: 384, offset: 128)
!4232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !394, size: 384, elements: !1017)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4223, file: !4073, line: 336, baseType: !4234, offset: 4608)
!4234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, elements: !931)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4091, file: !4073, line: 353, baseType: !4236, size: 32768)
!4236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 32768, elements: !4237)
!4237 = !{!4238}
!4238 = !DISubrange(count: 4096)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4072, file: !4073, line: 484, baseType: !4078, size: 64, offset: 192)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4072, file: !4073, line: 491, baseType: !4241, size: 128, offset: 256)
!4241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4073, line: 404, size: 128, elements: !4242)
!4242 = !{!4243, !4244, !4245}
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4241, file: !4073, line: 424, baseType: !394, size: 64)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4241, file: !4073, line: 432, baseType: !28, size: 32, offset: 64)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4241, file: !4073, line: 440, baseType: !28, size: 32, offset: 96)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4072, file: !4073, line: 498, baseType: !4241, size: 128, offset: 384)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4072, file: !4073, line: 508, baseType: !4079, size: 33280, align: 512, offset: 512)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3130, file: !3131, line: 16, baseType: !916, size: 192, offset: 512)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3130, file: !3131, line: 17, baseType: !251, size: 32, offset: 704)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !476, file: !80, line: 1240, baseType: !194, size: 64, offset: 6912)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !476, file: !80, line: 1243, baseType: !391, size: 32, offset: 6976)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !476, file: !80, line: 1245, baseType: !221, size: 64, offset: 7040)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !476, file: !80, line: 1246, baseType: !221, size: 64, offset: 7104)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !476, file: !80, line: 1248, baseType: !202, size: 32, offset: 7168)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !476, file: !80, line: 1249, baseType: !4256, size: 64, offset: 7232)
!4256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4257, size: 64)
!4257 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !80, line: 634, flags: DIFlagFwdDecl)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !476, file: !80, line: 1252, baseType: !4259, size: 256, offset: 7296)
!4259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !403)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !476, file: !80, line: 1253, baseType: !4261, size: 128, offset: 7552)
!4261 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4262, line: 21, baseType: !4263)
!4262 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4263 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4262, line: 19, size: 128, elements: !4264)
!4264 = !{!4265}
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4263, file: !4262, line: 20, baseType: !4266, size: 128)
!4266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !261, size: 128, elements: !3498)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !476, file: !80, line: 1255, baseType: !28, size: 32, offset: 7680)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !476, file: !80, line: 1261, baseType: !864, size: 256, offset: 7744)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !476, file: !80, line: 1267, baseType: !439, size: 64, offset: 8000)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !476, file: !80, line: 1269, baseType: !419, size: 64, offset: 8064)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !476, file: !80, line: 1271, baseType: !4272, size: 448, offset: 8128)
!4272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2453, line: 63, size: 448, elements: !4273)
!4273 = !{!4274, !4279, !4280, !4281, !4282, !4283, !4284}
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4272, file: !2453, line: 64, baseType: !4275, size: 64)
!4275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4276, size: 64)
!4276 = !DISubroutineType(types: !4277)
!4277 = !{!484, !4278, !2451}
!4278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4272, size: 64)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4272, file: !2453, line: 66, baseType: !4275, size: 64, offset: 64)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4272, file: !2453, line: 69, baseType: !320, size: 64, offset: 128)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4272, file: !2453, line: 70, baseType: !117, size: 32, offset: 192)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4272, file: !2453, line: 71, baseType: !28, size: 32, offset: 224)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4272, file: !2453, line: 74, baseType: !271, size: 128, offset: 256)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4272, file: !2453, line: 85, baseType: !4285, size: 64, offset: 384)
!4285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !476, file: !80, line: 1274, baseType: !299, size: 64, offset: 8576)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !476, file: !80, line: 1280, baseType: !299, size: 64, offset: 8640)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !476, file: !80, line: 1283, baseType: !117, size: 32, offset: 8704)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !476, file: !80, line: 1286, baseType: !1400, size: 32, offset: 8736)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !476, file: !80, line: 1289, baseType: !2274, size: 64, offset: 8768)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !476, file: !80, line: 1290, baseType: !911, size: 64, offset: 8832)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !476, file: !80, line: 1297, baseType: !1111, size: 64, offset: 8896)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !476, file: !80, line: 1304, baseType: !4294, size: 64, offset: 8960)
!4294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4295, line: 49, size: 64, elements: !4296)
!4295 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4296 = !{!4297}
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4294, file: !4295, line: 50, baseType: !4298, size: 64)
!4298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4299, size: 64)
!4299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4295, line: 41, size: 512, align: 512, elements: !4300)
!4300 = !{!4301, !4302, !4307}
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4299, file: !4295, line: 43, baseType: !231, size: 32)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4299, file: !4295, line: 45, baseType: !4303, size: 192, offset: 64)
!4303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4295, line: 29, size: 192, elements: !4304)
!4304 = !{!4305, !4306}
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4303, file: !4295, line: 30, baseType: !271, size: 128)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4303, file: !4295, line: 32, baseType: !320, size: 64, offset: 128)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4299, file: !4295, line: 46, baseType: !320, size: 64, offset: 256)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !476, file: !80, line: 1305, baseType: !4294, size: 64, offset: 9024)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !476, file: !80, line: 1306, baseType: !759, size: 128, align: 64, offset: 9088)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !476, file: !80, line: 1307, baseType: !1530, size: 256, offset: 9216)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !476, file: !80, line: 1309, baseType: !864, size: 256, offset: 9472)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !476, file: !80, line: 1314, baseType: !117, size: 32, offset: 9728)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !476, file: !80, line: 1317, baseType: !231, size: 32, align: 512, offset: 10240)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !476, file: !80, line: 1318, baseType: !271, size: 128, offset: 10304)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !476, file: !80, line: 1320, baseType: !231, size: 32, offset: 10432)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !476, file: !80, line: 1321, baseType: !271, size: 128, offset: 10496)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !470, file: !471, line: 73, baseType: !117, size: 32, offset: 128)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !470, file: !471, line: 74, baseType: !4319, size: 64, offset: 192)
!4319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4320, size: 64)
!4320 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !955, line: 42, flags: DIFlagFwdDecl)
!4321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !421, file: !359, line: 141, baseType: !4323, size: 64, offset: 704)
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4324 = !DISubroutineType(types: !4325)
!4325 = !{!117, !2513, !755}
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !421, file: !359, line: 142, baseType: !4327, size: 64, offset: 768)
!4327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4328, size: 64)
!4328 = !DISubroutineType(types: !4329)
!4329 = !{!357, !357, !4330}
!4330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4331, size: 64)
!4331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !322)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !358, file: !359, line: 96, baseType: !475, size: 64, offset: 832)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !358, file: !359, line: 97, baseType: !484, size: 64, offset: 896)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !358, file: !359, line: 98, baseType: !194, size: 64, offset: 960)
!4335 = !DIDerivedType(tag: DW_TAG_member, scope: !358, file: !359, line: 100, baseType: !4336, size: 128, offset: 1024)
!4336 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !358, file: !359, line: 100, size: 128, elements: !4337)
!4337 = !{!4338, !4339}
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4336, file: !359, line: 101, baseType: !271, size: 128)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4336, file: !359, line: 102, baseType: !4340, size: 64)
!4340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !358, file: !359, line: 104, baseType: !271, size: 128, offset: 1152)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !358, file: !359, line: 105, baseType: !271, size: 128, offset: 1280)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !358, file: !359, line: 113, baseType: !4344, size: 128, offset: 1408)
!4344 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !358, file: !359, line: 109, size: 128, elements: !4345)
!4345 = !{!4346, !4347, !4348}
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4344, file: !359, line: 110, baseType: !287, size: 128)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4344, file: !359, line: 111, baseType: !373, size: 128)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4344, file: !359, line: 112, baseType: !759, size: 128, align: 64)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !351, file: !80, line: 1968, baseType: !4350, size: 64, offset: 64)
!4350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4351, size: 64)
!4351 = !DISubroutineType(types: !4352)
!4352 = !{!439, !357, !400, !4353}
!4353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4354, size: 64)
!4354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4355, line: 10, size: 128, elements: !4356)
!4355 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4356 = !{!4357, !4358}
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4354, file: !4355, line: 11, baseType: !1842, size: 64)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4354, file: !4355, line: 12, baseType: !194, size: 64, offset: 64)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !351, file: !80, line: 1969, baseType: !4360, size: 64, offset: 128)
!4360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4361, size: 64)
!4361 = !DISubroutineType(types: !4362)
!4362 = !{!117, !4319, !400, !117}
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !351, file: !80, line: 1970, baseType: !4364, size: 64, offset: 192)
!4364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4365, size: 64)
!4365 = !DISubroutineType(types: !4366)
!4366 = !{!345, !400, !117, !755}
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !351, file: !80, line: 1972, baseType: !4368, size: 64, offset: 256)
!4368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4369, size: 64)
!4369 = !DISubroutineType(types: !4370)
!4370 = !{!117, !357, !464, !117}
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !351, file: !80, line: 1974, baseType: !4372, size: 64, offset: 320)
!4372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4373, size: 64)
!4373 = !DISubroutineType(types: !4374)
!4374 = !{!117, !4319, !400, !357, !325, !755}
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !351, file: !80, line: 1976, baseType: !4376, size: 64, offset: 384)
!4376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4377, size: 64)
!4377 = !DISubroutineType(types: !4378)
!4378 = !{!117, !357, !400, !357}
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !351, file: !80, line: 1977, baseType: !4380, size: 64, offset: 448)
!4380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4381, size: 64)
!4381 = !DISubroutineType(types: !4382)
!4382 = !{!117, !400, !357}
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !351, file: !80, line: 1978, baseType: !4384, size: 64, offset: 512)
!4384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4385, size: 64)
!4385 = !DISubroutineType(types: !4386)
!4386 = !{!117, !4319, !400, !357, !439}
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !351, file: !80, line: 1980, baseType: !4388, size: 64, offset: 576)
!4388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4389, size: 64)
!4389 = !DISubroutineType(types: !4390)
!4390 = !{!117, !4319, !400, !357, !325}
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !351, file: !80, line: 1982, baseType: !4380, size: 64, offset: 640)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !351, file: !80, line: 1983, baseType: !4393, size: 64, offset: 704)
!4393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4394, size: 64)
!4394 = !DISubroutineType(types: !4395)
!4395 = !{!117, !4319, !400, !357, !325, !480}
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !351, file: !80, line: 1985, baseType: !4397, size: 64, offset: 768)
!4397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4398, size: 64)
!4398 = !DISubroutineType(types: !4399)
!4399 = !{!117, !4319, !400, !357, !400, !357, !28}
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !351, file: !80, line: 1987, baseType: !4401, size: 64, offset: 832)
!4401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4402, size: 64)
!4402 = !DISubroutineType(types: !4403)
!4403 = !{!117, !4319, !357, !4404}
!4404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4405, size: 64)
!4405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !80, line: 226, size: 640, elements: !4406)
!4406 = !{!4407, !4408, !4409, !4419, !4428, !4429, !4430, !4431, !4432}
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4405, file: !80, line: 227, baseType: !28, size: 32)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4405, file: !80, line: 228, baseType: !325, size: 16, offset: 32)
!4409 = !DIDerivedType(tag: DW_TAG_member, scope: !4405, file: !80, line: 241, baseType: !4410, size: 32, offset: 64)
!4410 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4405, file: !80, line: 241, size: 32, elements: !4411)
!4411 = !{!4412, !4413}
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4410, file: !80, line: 242, baseType: !328, size: 32)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4410, file: !80, line: 243, baseType: !4414, size: 32)
!4414 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4415, line: 16, baseType: !4416)
!4415 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4416 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4415, line: 14, size: 32, elements: !4417)
!4417 = !{!4418}
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4416, file: !4415, line: 15, baseType: !333, size: 32)
!4419 = !DIDerivedType(tag: DW_TAG_member, scope: !4405, file: !80, line: 245, baseType: !4420, size: 32, offset: 96)
!4420 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4405, file: !80, line: 245, size: 32, elements: !4421)
!4421 = !{!4422, !4423}
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4420, file: !80, line: 246, baseType: !337, size: 32)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4420, file: !80, line: 247, baseType: !4424, size: 32)
!4424 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4415, line: 20, baseType: !4425)
!4425 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4415, line: 18, size: 32, elements: !4426)
!4426 = !{!4427}
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4425, file: !4415, line: 19, baseType: !341, size: 32)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4405, file: !80, line: 249, baseType: !279, size: 64, offset: 128)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4405, file: !80, line: 250, baseType: !316, size: 128, offset: 192)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4405, file: !80, line: 251, baseType: !316, size: 128, offset: 320)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4405, file: !80, line: 252, baseType: !316, size: 128, offset: 448)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4405, file: !80, line: 259, baseType: !845, size: 64, offset: 576)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !351, file: !80, line: 1988, baseType: !4434, size: 64, offset: 896)
!4434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4435, size: 64)
!4435 = !DISubroutineType(types: !4436)
!4436 = !{!117, !4319, !2513, !4437, !391, !28}
!4437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4438, size: 64)
!4438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4439, line: 22, size: 1280, elements: !4440)
!4439 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4440 = !{!4441, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4457, !4458, !4459, !4460, !4461}
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4438, file: !4439, line: 23, baseType: !391, size: 32)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4438, file: !4439, line: 24, baseType: !325, size: 16, offset: 32)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4438, file: !4439, line: 25, baseType: !28, size: 32, offset: 64)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4438, file: !4439, line: 26, baseType: !995, size: 32, offset: 96)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4438, file: !4439, line: 27, baseType: !394, size: 64, offset: 128)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4438, file: !4439, line: 28, baseType: !394, size: 64, offset: 192)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4438, file: !4439, line: 41, baseType: !394, size: 64, offset: 256)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4438, file: !4439, line: 42, baseType: !480, size: 32, offset: 320)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4438, file: !4439, line: 43, baseType: !480, size: 32, offset: 352)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4438, file: !4439, line: 44, baseType: !328, size: 32, offset: 384)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4438, file: !4439, line: 45, baseType: !337, size: 32, offset: 416)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4438, file: !4439, line: 46, baseType: !279, size: 64, offset: 448)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4438, file: !4439, line: 47, baseType: !316, size: 128, offset: 512)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4438, file: !4439, line: 48, baseType: !316, size: 128, offset: 640)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4438, file: !4439, line: 49, baseType: !316, size: 128, offset: 768)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4438, file: !4439, line: 50, baseType: !316, size: 128, offset: 896)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4438, file: !4439, line: 51, baseType: !394, size: 64, offset: 1024)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4438, file: !4439, line: 52, baseType: !394, size: 64, offset: 1088)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4438, file: !4439, line: 53, baseType: !391, size: 32, offset: 1152)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4438, file: !4439, line: 54, baseType: !391, size: 32, offset: 1184)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4438, file: !4439, line: 55, baseType: !394, size: 64, offset: 1216)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !351, file: !80, line: 1990, baseType: !4463, size: 64, offset: 960)
!4463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4464, size: 64)
!4464 = !DISubroutineType(types: !4465)
!4465 = !{!594, !357, !464, !606}
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !351, file: !80, line: 1991, baseType: !4467, size: 64, offset: 1024)
!4467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4468, size: 64)
!4468 = !DISubroutineType(types: !4469)
!4469 = !{!117, !400, !4470, !394, !394}
!4470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4471, size: 64)
!4471 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !80, line: 55, flags: DIFlagFwdDecl)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !351, file: !80, line: 1993, baseType: !4473, size: 64, offset: 1088)
!4473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4474, size: 64)
!4474 = !DISubroutineType(types: !4475)
!4475 = !{!117, !400, !117}
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !351, file: !80, line: 1994, baseType: !4477, size: 64, offset: 1152)
!4477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4478, size: 64)
!4478 = !DISubroutineType(types: !4479)
!4479 = !{!117, !400, !357, !845, !28, !325}
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !351, file: !80, line: 1997, baseType: !4481, size: 64, offset: 1216)
!4481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4482, size: 64)
!4482 = !DISubroutineType(types: !4483)
!4483 = !{!117, !4319, !400, !845, !325}
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !351, file: !80, line: 1999, baseType: !4485, size: 64, offset: 1280)
!4485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4486, size: 64)
!4486 = !DISubroutineType(types: !4487)
!4487 = !{!345, !4319, !357, !117}
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !351, file: !80, line: 2001, baseType: !4489, size: 64, offset: 1344)
!4489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4490, size: 64)
!4490 = !DISubroutineType(types: !4491)
!4491 = !{!117, !4319, !357, !345, !117}
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !351, file: !80, line: 2003, baseType: !4493, size: 64, offset: 1408)
!4493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4494, size: 64)
!4494 = !DISubroutineType(types: !4495)
!4495 = !{!117, !4319, !357, !4496}
!4496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4497, size: 64)
!4497 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !80, line: 76, flags: DIFlagFwdDecl)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !351, file: !80, line: 2005, baseType: !4499, size: 64, offset: 1472)
!4499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4500, size: 64)
!4500 = !DISubroutineType(types: !4501)
!4501 = !{!117, !357, !4496}
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !351, file: !80, line: 2006, baseType: !4503, size: 64, offset: 1536)
!4503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4504, size: 64)
!4504 = !DISubroutineType(types: !4505)
!4505 = !{!4506, !400}
!4506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4507, size: 64)
!4507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !80, line: 3192, size: 192, elements: !4508)
!4508 = !{!4509, !4510}
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4507, file: !80, line: 3193, baseType: !639, size: 128)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4507, file: !80, line: 3194, baseType: !391, size: 32, offset: 128)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !322, file: !80, line: 655, baseType: !475, size: 64, offset: 448)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !322, file: !80, line: 656, baseType: !634, size: 64, offset: 512)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !322, file: !80, line: 659, baseType: !194, size: 64, offset: 576)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !322, file: !80, line: 663, baseType: !484, size: 64, offset: 640)
!4515 = !DIDerivedType(tag: DW_TAG_member, scope: !322, file: !80, line: 671, baseType: !4516, size: 32, offset: 704)
!4516 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !322, file: !80, line: 671, size: 32, elements: !4517)
!4517 = !{!4518, !4520}
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4516, file: !80, line: 672, baseType: !4519, size: 32)
!4519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4516, file: !80, line: 673, baseType: !28, size: 32)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !322, file: !80, line: 675, baseType: !480, size: 32, offset: 736)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !322, file: !80, line: 676, baseType: !279, size: 64, offset: 768)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !322, file: !80, line: 677, baseType: !316, size: 128, offset: 832)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !322, file: !80, line: 678, baseType: !316, size: 128, offset: 960)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !322, file: !80, line: 679, baseType: !316, size: 128, offset: 1088)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !322, file: !80, line: 680, baseType: !231, size: 32, offset: 1216)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !322, file: !80, line: 681, baseType: !219, size: 16, offset: 1248)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !322, file: !80, line: 682, baseType: !259, size: 8, offset: 1264)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !322, file: !80, line: 683, baseType: !259, size: 8, offset: 1272)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !322, file: !80, line: 684, baseType: !2586, size: 64, offset: 1280)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !322, file: !80, line: 691, baseType: !484, size: 64, offset: 1344)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !322, file: !80, line: 692, baseType: !295, size: 320, offset: 1408)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !322, file: !80, line: 694, baseType: !484, size: 64, offset: 1728)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !322, file: !80, line: 695, baseType: !484, size: 64, offset: 1792)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !322, file: !80, line: 697, baseType: !287, size: 128, offset: 1856)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !322, file: !80, line: 698, baseType: !271, size: 128, offset: 1984)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !322, file: !80, line: 707, baseType: !271, size: 128, offset: 2112)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !322, file: !80, line: 708, baseType: !271, size: 128, offset: 2240)
!4539 = !DIDerivedType(tag: DW_TAG_member, scope: !322, file: !80, line: 709, baseType: !4540, size: 128, offset: 2368)
!4540 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !322, file: !80, line: 709, size: 128, elements: !4541)
!4541 = !{!4542, !4543}
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4540, file: !80, line: 710, baseType: !911, size: 64)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4540, file: !80, line: 711, baseType: !759, size: 128, align: 64)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !322, file: !80, line: 713, baseType: !301, size: 64, offset: 2496)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !322, file: !80, line: 714, baseType: !301, size: 64, offset: 2560)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !322, file: !80, line: 715, baseType: !251, size: 32, offset: 2624)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !322, file: !80, line: 716, baseType: !251, size: 32, offset: 2656)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !322, file: !80, line: 717, baseType: !251, size: 32, offset: 2688)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !322, file: !80, line: 719, baseType: !251, size: 32, offset: 2720)
!4550 = !DIDerivedType(tag: DW_TAG_member, scope: !322, file: !80, line: 721, baseType: !4551, size: 64, offset: 2752)
!4551 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !322, file: !80, line: 721, size: 64, elements: !4552)
!4552 = !{!4553, !4554}
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4551, file: !80, line: 722, baseType: !1147, size: 64)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4551, file: !80, line: 723, baseType: !2342, size: 64)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !322, file: !80, line: 725, baseType: !4556, size: 64, offset: 2816)
!4556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4557, size: 64)
!4557 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !80, line: 725, flags: DIFlagFwdDecl)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !322, file: !80, line: 726, baseType: !635, size: 1536, align: 64, offset: 2880)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !322, file: !80, line: 727, baseType: !271, size: 128, offset: 4416)
!4560 = !DIDerivedType(tag: DW_TAG_member, scope: !322, file: !80, line: 728, baseType: !4561, size: 64, offset: 4544)
!4561 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !322, file: !80, line: 728, size: 64, elements: !4562)
!4562 = !{!4563, !4564, !4567, !4568}
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4561, file: !80, line: 729, baseType: !1347, size: 64)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4561, file: !80, line: 730, baseType: !4565, size: 64)
!4565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4566, size: 64)
!4566 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !80, line: 730, flags: DIFlagFwdDecl)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4561, file: !80, line: 731, baseType: !464, size: 64)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4561, file: !80, line: 732, baseType: !28, size: 32)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !322, file: !80, line: 735, baseType: !202, size: 32, offset: 4608)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !322, file: !80, line: 738, baseType: !202, size: 32, offset: 4640)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !322, file: !80, line: 739, baseType: !4256, size: 64, offset: 4672)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !322, file: !80, line: 750, baseType: !194, size: 64, offset: 4736)
!4573 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !226, line: 42, baseType: !484)
!4574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!4575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4576, size: 64)
!4576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4577)
!4577 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !484)
!4578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!4579 = !{!0, !7, !12, !17, !22, !4580, !4583, !4588, !4590, !4595, !4597, !4599, !4601, !4603, !4606}
!4580 = !DIGlobalVariableExpression(var: !4581, expr: !DIExpression())
!4581 = distinct !DIGlobalVariable(scope: null, file: !2, line: 62, type: !4582, isLocal: true, isDefinition: true)
!4582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !4105)
!4583 = !DIGlobalVariableExpression(var: !4584, expr: !DIExpression())
!4584 = distinct !DIGlobalVariable(scope: null, file: !2, line: 79, type: !4585, isLocal: true, isDefinition: true)
!4585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !4586)
!4586 = !{!4587}
!4587 = !DISubrange(count: 35)
!4588 = !DIGlobalVariableExpression(var: !4589, expr: !DIExpression())
!4589 = distinct !DIGlobalVariable(scope: null, file: !2, line: 86, type: !517, isLocal: true, isDefinition: true)
!4590 = !DIGlobalVariableExpression(var: !4591, expr: !DIExpression())
!4591 = distinct !DIGlobalVariable(scope: null, file: !2, line: 161, type: !4592, isLocal: true, isDefinition: true)
!4592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !4593)
!4593 = !{!4594}
!4594 = !DISubrange(count: 37)
!4595 = !DIGlobalVariableExpression(var: !4596, expr: !DIExpression())
!4596 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_fat_time_fat2unix325", scope: !24, file: !2, line: 240, type: !194, isLocal: true, isDefinition: true)
!4597 = !DIGlobalVariableExpression(var: !4598, expr: !DIExpression())
!4598 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_fat_time_unix2fat326", scope: !24, file: !2, line: 277, type: !194, isLocal: true, isDefinition: true)
!4599 = !DIGlobalVariableExpression(var: !4600, expr: !DIExpression())
!4600 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_fat_truncate_time327", scope: !24, file: !2, line: 340, type: !194, isLocal: true, isDefinition: true)
!4601 = !DIGlobalVariableExpression(var: !4602, expr: !DIExpression())
!4602 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_fat_update_time328", scope: !24, file: !2, line: 360, type: !194, isLocal: true, isDefinition: true)
!4603 = !DIGlobalVariableExpression(var: !4604, expr: !DIExpression())
!4604 = distinct !DIGlobalVariable(name: "days_in_year", scope: !24, file: !2, line: 191, type: !4605, isLocal: true, isDefinition: true)
!4605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !320, size: 1024, elements: !3498)
!4606 = !DIGlobalVariableExpression(var: !4607, expr: !DIExpression())
!4607 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__might_resched29", scope: !4608, file: !4609, line: 112, type: !194, isLocal: true, isDefinition: true)
!4608 = distinct !DISubprogram(name: "might_resched", scope: !4609, file: !4609, line: 110, type: !2317, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24)
!4609 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!4610 = !{i32 7, !"Dwarf Version", i32 5}
!4611 = !{i32 2, !"Debug Info Version", i32 3}
!4612 = !{i32 1, !"wchar_size", i32 2}
!4613 = !{i32 8, !"cf-protection-branch", i32 1}
!4614 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4615 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4616 = !{i32 1, !"Code Model", i32 2}
!4617 = !{i32 1, !"override-stack-alignment", i32 8}
!4618 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4619 = distinct !DISubprogram(name: "__fat_fs_error", scope: !2, file: !2, line: 21, type: !4620, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !4622)
!4620 = !DISubroutineType(types: !4621)
!4621 = !{null, !475, !117, !439, null}
!4622 = !{!4623, !4624, !4625, !4626, !4657, !4668}
!4623 = !DILocalVariable(name: "sb", arg: 1, scope: !4619, file: !2, line: 21, type: !475)
!4624 = !DILocalVariable(name: "report", arg: 2, scope: !4619, file: !2, line: 21, type: !117)
!4625 = !DILocalVariable(name: "fmt", arg: 3, scope: !4619, file: !2, line: 21, type: !439)
!4626 = !DILocalVariable(name: "opts", scope: !4619, file: !2, line: 23, type: !4627)
!4627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4628, size: 64)
!4628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fat_mount_options", file: !216, line: 27, size: 384, elements: !4629)
!4629 = !{!4630, !4631, !4632, !4633, !4634, !4635, !4636, !4637, !4638, !4639, !4640, !4641, !4642, !4643, !4644, !4645, !4646, !4647, !4648, !4649, !4650, !4651, !4652, !4653, !4654, !4655, !4656}
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "fs_uid", scope: !4628, file: !216, line: 28, baseType: !328, size: 32)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "fs_gid", scope: !4628, file: !216, line: 29, baseType: !337, size: 32, offset: 32)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "fs_fmask", scope: !4628, file: !216, line: 30, baseType: !219, size: 16, offset: 64)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "fs_dmask", scope: !4628, file: !216, line: 31, baseType: !219, size: 16, offset: 80)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "codepage", scope: !4628, file: !216, line: 32, baseType: !219, size: 16, offset: 96)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "time_offset", scope: !4628, file: !216, line: 33, baseType: !117, size: 32, offset: 128)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "iocharset", scope: !4628, file: !216, line: 34, baseType: !464, size: 64, offset: 192)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "shortname", scope: !4628, file: !216, line: 35, baseType: !219, size: 16, offset: 256)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "name_check", scope: !4628, file: !216, line: 36, baseType: !262, size: 8, offset: 272)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "errors", scope: !4628, file: !216, line: 37, baseType: !262, size: 8, offset: 280)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "nfs", scope: !4628, file: !216, line: 38, baseType: !262, size: 8, offset: 288)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "allow_utime", scope: !4628, file: !216, line: 39, baseType: !219, size: 16, offset: 304)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "quiet", scope: !4628, file: !216, line: 40, baseType: !28, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "showexec", scope: !4628, file: !216, line: 41, baseType: !28, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "sys_immutable", scope: !4628, file: !216, line: 42, baseType: !28, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "dotsOK", scope: !4628, file: !216, line: 43, baseType: !28, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "isvfat", scope: !4628, file: !216, line: 44, baseType: !28, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "utf8", scope: !4628, file: !216, line: 45, baseType: !28, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "unicode_xlate", scope: !4628, file: !216, line: 46, baseType: !28, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "numtail", scope: !4628, file: !216, line: 47, baseType: !28, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4628, file: !216, line: 48, baseType: !28, size: 1, offset: 328, flags: DIFlagBitField, extraData: i64 320)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "nocase", scope: !4628, file: !216, line: 49, baseType: !28, size: 1, offset: 329, flags: DIFlagBitField, extraData: i64 320)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "usefree", scope: !4628, file: !216, line: 50, baseType: !28, size: 1, offset: 330, flags: DIFlagBitField, extraData: i64 320)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "tz_set", scope: !4628, file: !216, line: 51, baseType: !28, size: 1, offset: 331, flags: DIFlagBitField, extraData: i64 320)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "rodir", scope: !4628, file: !216, line: 52, baseType: !28, size: 1, offset: 332, flags: DIFlagBitField, extraData: i64 320)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "discard", scope: !4628, file: !216, line: 53, baseType: !28, size: 1, offset: 333, flags: DIFlagBitField, extraData: i64 320)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "dos1xfloppy", scope: !4628, file: !216, line: 54, baseType: !28, size: 1, offset: 334, flags: DIFlagBitField, extraData: i64 320)
!4657 = !DILocalVariable(name: "args", scope: !4619, file: !2, line: 24, type: !4658)
!4658 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !4659, line: 5, baseType: !4660)
!4659 = !DIFile(filename: "./include/linux/stdarg.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74c88f3ccfca7f499d1744438ad1d5b5")
!4660 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2, baseType: !4661)
!4661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4662, size: 192, elements: !3311)
!4662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4663)
!4663 = !{!4664, !4665, !4666, !4667}
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4662, file: !2, line: 24, baseType: !28, size: 32)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4662, file: !2, line: 24, baseType: !28, size: 32, offset: 32)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4662, file: !2, line: 24, baseType: !194, size: 64, offset: 64)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4662, file: !2, line: 24, baseType: !194, size: 64, offset: 128)
!4668 = !DILocalVariable(name: "vaf", scope: !4619, file: !2, line: 25, type: !4669)
!4669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "va_format", file: !4670, line: 79, size: 128, elements: !4671)
!4670 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!4671 = !{!4672, !4673}
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !4669, file: !4670, line: 80, baseType: !439, size: 64)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "va", scope: !4669, file: !4670, line: 81, baseType: !4674, size: 64, offset: 64)
!4674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4658, size: 64)
!4675 = !DILocation(line: 21, column: 41, scope: !4619)
!4676 = !DILocation(line: 21, column: 49, scope: !4619)
!4677 = !DILocation(line: 21, column: 69, scope: !4619)
!4678 = !DILocation(line: 23, column: 2, scope: !4619)
!4679 = !DILocation(line: 23, column: 28, scope: !4619)
!4680 = !DILocation(line: 23, column: 45, scope: !4619)
!4681 = !DILocation(line: 23, column: 36, scope: !4619)
!4682 = !DILocation(line: 23, column: 50, scope: !4619)
!4683 = !DILocation(line: 24, column: 2, scope: !4619)
!4684 = !DILocation(line: 24, column: 10, scope: !4619)
!4685 = !DILocation(line: 25, column: 2, scope: !4619)
!4686 = !DILocation(line: 25, column: 19, scope: !4619)
!4687 = !DILocation(line: 27, column: 6, scope: !4688)
!4688 = distinct !DILexicalBlock(scope: !4619, file: !2, line: 27, column: 6)
!4689 = !DILocation(line: 27, column: 6, scope: !4619)
!4690 = !DILocation(line: 28, column: 3, scope: !4691)
!4691 = distinct !DILexicalBlock(scope: !4688, file: !2, line: 27, column: 14)
!4692 = !DILocation(line: 29, column: 13, scope: !4691)
!4693 = !DILocation(line: 29, column: 7, scope: !4691)
!4694 = !DILocation(line: 29, column: 11, scope: !4691)
!4695 = !DILocation(line: 30, column: 7, scope: !4691)
!4696 = !DILocation(line: 30, column: 10, scope: !4691)
!4697 = !DILocation(line: 31, column: 3, scope: !4691)
!4698 = !DILocation(line: 31, column: 3, scope: !4699)
!4699 = distinct !DILexicalBlock(scope: !4691, file: !2, line: 31, column: 3)
!4700 = !DILocation(line: 31, column: 3, scope: !4701)
!4701 = distinct !DILexicalBlock(scope: !4699, file: !2, line: 31, column: 3)
!4702 = !DILocation(line: 32, column: 3, scope: !4691)
!4703 = !DILocation(line: 33, column: 2, scope: !4691)
!4704 = !DILocation(line: 35, column: 6, scope: !4705)
!4705 = distinct !DILexicalBlock(scope: !4619, file: !2, line: 35, column: 6)
!4706 = !DILocation(line: 35, column: 12, scope: !4705)
!4707 = !DILocation(line: 35, column: 19, scope: !4705)
!4708 = !DILocation(line: 35, column: 6, scope: !4619)
!4709 = !DILocation(line: 36, column: 56, scope: !4705)
!4710 = !DILocation(line: 36, column: 60, scope: !4705)
!4711 = !DILocation(line: 36, column: 3, scope: !4705)
!4712 = !DILocation(line: 37, column: 11, scope: !4713)
!4713 = distinct !DILexicalBlock(scope: !4705, file: !2, line: 37, column: 11)
!4714 = !DILocation(line: 37, column: 17, scope: !4713)
!4715 = !DILocation(line: 37, column: 24, scope: !4713)
!4716 = !DILocation(line: 37, column: 41, scope: !4713)
!4717 = !DILocation(line: 37, column: 55, scope: !4713)
!4718 = !DILocation(line: 37, column: 45, scope: !4713)
!4719 = !DILocation(line: 37, column: 11, scope: !4705)
!4720 = !DILocation(line: 38, column: 3, scope: !4721)
!4721 = distinct !DILexicalBlock(scope: !4713, file: !2, line: 37, column: 60)
!4722 = !DILocation(line: 38, column: 7, scope: !4721)
!4723 = !DILocation(line: 38, column: 15, scope: !4721)
!4724 = !DILocation(line: 39, column: 3, scope: !4721)
!4725 = !DILocation(line: 39, column: 3, scope: !4726)
!4726 = distinct !DILexicalBlock(scope: !4721, file: !2, line: 39, column: 3)
!4727 = !DILocation(line: 39, column: 3, scope: !4728)
!4728 = distinct !DILexicalBlock(scope: !4726, file: !2, line: 39, column: 3)
!4729 = !DILocation(line: 40, column: 2, scope: !4721)
!4730 = !DILocation(line: 41, column: 1, scope: !4619)
!4731 = distinct !DISubprogram(name: "MSDOS_SB", scope: !216, file: !216, line: 141, type: !4732, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !4800)
!4732 = !DISubroutineType(types: !4733)
!4733 = !{!4734, !475}
!4734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4735, size: 64)
!4735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msdos_sb_info", file: !216, line: 63, size: 35776, elements: !4736)
!4736 = !{!4737, !4738, !4739, !4740, !4741, !4742, !4743, !4744, !4745, !4746, !4747, !4748, !4749, !4750, !4751, !4752, !4753, !4754, !4755, !4756, !4757, !4778, !4779, !4780, !4781, !4782, !4783, !4784, !4788, !4789, !4790, !4791, !4792, !4796, !4797, !4798, !4799}
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "sec_per_clus", scope: !4735, file: !216, line: 64, baseType: !219, size: 16)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_bits", scope: !4735, file: !216, line: 65, baseType: !219, size: 16, offset: 16)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_size", scope: !4735, file: !216, line: 66, baseType: !28, size: 32, offset: 32)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "fats", scope: !4735, file: !216, line: 67, baseType: !262, size: 8, offset: 64)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "fat_bits", scope: !4735, file: !216, line: 67, baseType: !262, size: 8, offset: 72)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "fat_start", scope: !4735, file: !216, line: 68, baseType: !219, size: 16, offset: 80)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "fat_length", scope: !4735, file: !216, line: 69, baseType: !484, size: 64, offset: 128)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "dir_start", scope: !4735, file: !216, line: 70, baseType: !484, size: 64, offset: 192)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "dir_entries", scope: !4735, file: !216, line: 71, baseType: !219, size: 16, offset: 256)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "data_start", scope: !4735, file: !216, line: 72, baseType: !484, size: 64, offset: 320)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "max_cluster", scope: !4735, file: !216, line: 73, baseType: !484, size: 64, offset: 384)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "root_cluster", scope: !4735, file: !216, line: 74, baseType: !484, size: 64, offset: 448)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "fsinfo_sector", scope: !4735, file: !216, line: 75, baseType: !484, size: 64, offset: 512)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "fat_lock", scope: !4735, file: !216, line: 76, baseType: !864, size: 256, offset: 576)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_build_inode_lock", scope: !4735, file: !216, line: 77, baseType: !864, size: 256, offset: 832)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock", scope: !4735, file: !216, line: 78, baseType: !864, size: 256, offset: 1088)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "prev_free", scope: !4735, file: !216, line: 79, baseType: !28, size: 32, offset: 1344)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "free_clusters", scope: !4735, file: !216, line: 80, baseType: !28, size: 32, offset: 1376)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "free_clus_valid", scope: !4735, file: !216, line: 81, baseType: !28, size: 32, offset: 1408)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !4735, file: !216, line: 82, baseType: !4628, size: 384, offset: 1472)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "nls_disk", scope: !4735, file: !216, line: 83, baseType: !4758, size: 64, offset: 1856)
!4758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4759, size: 64)
!4759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nls_table", file: !4760, line: 25, size: 512, elements: !4761)
!4760 = !DIFile(filename: "./include/linux/nls.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f76e83aacaae45c8b04af57df30b5af2")
!4761 = !{!4762, !4763, !4764, !4769, !4774, !4775, !4776, !4777}
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !4759, file: !4760, line: 26, baseType: !439, size: 64)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !4759, file: !4760, line: 27, baseType: !439, size: 64, offset: 64)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "uni2char", scope: !4759, file: !4760, line: 28, baseType: !4765, size: 64, offset: 128)
!4765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4766, size: 64)
!4766 = !DISubroutineType(types: !4767)
!4767 = !{!117, !4768, !4578, !117}
!4768 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !4760, line: 19, baseType: !268)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "char2uni", scope: !4759, file: !4760, line: 29, baseType: !4770, size: 64, offset: 192)
!4770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4771, size: 64)
!4771 = !DISubroutineType(types: !4772)
!4772 = !{!117, !397, !117, !4773}
!4773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4768, size: 64)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "charset2lower", scope: !4759, file: !4760, line: 31, baseType: !397, size: 64, offset: 256)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "charset2upper", scope: !4759, file: !4760, line: 32, baseType: !397, size: 64, offset: 320)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4759, file: !4760, line: 33, baseType: !511, size: 64, offset: 384)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4759, file: !4760, line: 34, baseType: !4758, size: 64, offset: 448)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "nls_io", scope: !4735, file: !216, line: 84, baseType: !4758, size: 64, offset: 1920)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "dir_ops", scope: !4735, file: !216, line: 85, baseType: !1491, size: 64, offset: 1984)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "dir_per_block", scope: !4735, file: !216, line: 86, baseType: !117, size: 32, offset: 2048)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "dir_per_block_bits", scope: !4735, file: !216, line: 87, baseType: !117, size: 32, offset: 2080)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "vol_id", scope: !4735, file: !216, line: 88, baseType: !28, size: 32, offset: 2112)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "fatent_shift", scope: !4735, file: !216, line: 90, baseType: !117, size: 32, offset: 2144)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "fatent_ops", scope: !4735, file: !216, line: 91, baseType: !4785, size: 64, offset: 2176)
!4785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4786, size: 64)
!4786 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4787)
!4787 = !DICompositeType(tag: DW_TAG_structure_type, name: "fatent_operations", file: !216, line: 91, flags: DIFlagFwdDecl)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "fat_inode", scope: !4735, file: !216, line: 92, baseType: !400, size: 64, offset: 2240)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "fsinfo_inode", scope: !4735, file: !216, line: 93, baseType: !400, size: 64, offset: 2304)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !4735, file: !216, line: 95, baseType: !1100, size: 320, offset: 2368)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "inode_hash_lock", scope: !4735, file: !216, line: 97, baseType: !231, size: 32, offset: 2688)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "inode_hashtable", scope: !4735, file: !216, line: 98, baseType: !4793, size: 16384, offset: 2752)
!4793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !911, size: 16384, elements: !4794)
!4794 = !{!4795}
!4795 = !DISubrange(count: 256)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "dir_hash_lock", scope: !4735, file: !216, line: 100, baseType: !231, size: 32, offset: 19136)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "dir_hashtable", scope: !4735, file: !216, line: 101, baseType: !4793, size: 16384, offset: 19200)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "dirty", scope: !4735, file: !216, line: 103, baseType: !28, size: 32, offset: 35584)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4735, file: !216, line: 104, baseType: !759, size: 128, align: 64, offset: 35648)
!4800 = !{!4801}
!4801 = !DILocalVariable(name: "sb", arg: 1, scope: !4731, file: !216, line: 141, type: !475)
!4802 = !DILocation(line: 141, column: 66, scope: !4731)
!4803 = !DILocation(line: 143, column: 9, scope: !4731)
!4804 = !DILocation(line: 143, column: 13, scope: !4731)
!4805 = !DILocation(line: 143, column: 2, scope: !4731)
!4806 = distinct !DISubprogram(name: "_fat_msg", scope: !2, file: !2, line: 54, type: !4807, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !4809)
!4807 = !DISubroutineType(types: !4808)
!4808 = !{null, !475, !439, !439, null}
!4809 = !{!4810, !4811, !4812, !4813, !4814}
!4810 = !DILocalVariable(name: "sb", arg: 1, scope: !4806, file: !2, line: 54, type: !475)
!4811 = !DILocalVariable(name: "level", arg: 2, scope: !4806, file: !2, line: 54, type: !439)
!4812 = !DILocalVariable(name: "fmt", arg: 3, scope: !4806, file: !2, line: 54, type: !439)
!4813 = !DILocalVariable(name: "vaf", scope: !4806, file: !2, line: 56, type: !4669)
!4814 = !DILocalVariable(name: "args", scope: !4806, file: !2, line: 57, type: !4658)
!4815 = !DILocation(line: 54, column: 35, scope: !4806)
!4816 = !DILocation(line: 54, column: 51, scope: !4806)
!4817 = !DILocation(line: 54, column: 70, scope: !4806)
!4818 = !DILocation(line: 56, column: 2, scope: !4806)
!4819 = !DILocation(line: 56, column: 19, scope: !4806)
!4820 = !DILocation(line: 57, column: 2, scope: !4806)
!4821 = !DILocation(line: 57, column: 10, scope: !4806)
!4822 = !DILocation(line: 59, column: 2, scope: !4806)
!4823 = !DILocation(line: 60, column: 12, scope: !4806)
!4824 = !DILocation(line: 60, column: 6, scope: !4806)
!4825 = !DILocation(line: 60, column: 10, scope: !4806)
!4826 = !DILocation(line: 61, column: 6, scope: !4806)
!4827 = !DILocation(line: 61, column: 9, scope: !4806)
!4828 = !DILocation(line: 62, column: 37, scope: !4806)
!4829 = !DILocation(line: 62, column: 44, scope: !4806)
!4830 = !DILocation(line: 62, column: 48, scope: !4806)
!4831 = !DILocation(line: 62, column: 2, scope: !4806)
!4832 = !DILocation(line: 63, column: 2, scope: !4806)
!4833 = !DILocation(line: 64, column: 1, scope: !4806)
!4834 = !DISubprogram(name: "panic", scope: !4835, file: !4835, line: 12, type: !4836, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!4835 = !DIFile(filename: "./include/linux/panic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3219e8109531a92b450817dd7e3cc0fb")
!4836 = !DISubroutineType(types: !4837)
!4837 = !{null, !439, null}
!4838 = distinct !DISubprogram(name: "sb_rdonly", scope: !80, file: !80, line: 2133, type: !4839, scopeLine: 2133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !4843)
!4839 = !DISubroutineType(types: !4840)
!4840 = !{!755, !4841}
!4841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4842, size: 64)
!4842 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !476)
!4843 = !{!4844}
!4844 = !DILocalVariable(name: "sb", arg: 1, scope: !4838, file: !80, line: 2133, type: !4841)
!4845 = !DILocation(line: 2133, column: 56, scope: !4838)
!4846 = !DILocation(line: 2133, column: 69, scope: !4838)
!4847 = !DILocation(line: 2133, column: 73, scope: !4838)
!4848 = !DILocation(line: 2133, column: 81, scope: !4838)
!4849 = !DILocation(line: 2133, column: 62, scope: !4838)
!4850 = !DISubprogram(name: "_printk", scope: !4670, file: !4670, line: 153, type: !4851, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4851 = !DISubroutineType(types: !4852)
!4852 = !{!117, !439, null}
!4853 = distinct !DISubprogram(name: "fat_clusters_flush", scope: !2, file: !2, line: 68, type: !2370, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !4854)
!4854 = !{!4855, !4856, !4857, !4882}
!4855 = !DILocalVariable(name: "sb", arg: 1, scope: !4853, file: !2, line: 68, type: !475)
!4856 = !DILocalVariable(name: "sbi", scope: !4853, file: !2, line: 70, type: !4734)
!4857 = !DILocalVariable(name: "bh", scope: !4853, file: !2, line: 71, type: !4858)
!4858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4859, size: 64)
!4859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "buffer_head", file: !169, line: 59, size: 832, elements: !4860)
!4860 = !{!4861, !4862, !4863, !4868, !4869, !4870, !4871, !4872, !4877, !4878, !4879, !4880, !4881}
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "b_state", scope: !4859, file: !169, line: 60, baseType: !484, size: 64)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "b_this_page", scope: !4859, file: !169, line: 61, baseType: !4858, size: 64, offset: 64)
!4863 = !DIDerivedType(tag: DW_TAG_member, scope: !4859, file: !169, line: 62, baseType: !4864, size: 64, offset: 128)
!4864 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4859, file: !169, line: 62, size: 64, elements: !4865)
!4865 = !{!4866, !4867}
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "b_page", scope: !4864, file: !169, line: 63, baseType: !674, size: 64)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "b_folio", scope: !4864, file: !169, line: 64, baseType: !1190, size: 64)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "b_blocknr", scope: !4859, file: !169, line: 67, baseType: !1748, size: 64, offset: 192)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "b_size", scope: !4859, file: !169, line: 68, baseType: !606, size: 64, offset: 256)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "b_data", scope: !4859, file: !169, line: 69, baseType: !464, size: 64, offset: 320)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "b_bdev", scope: !4859, file: !169, line: 71, baseType: !2612, size: 64, offset: 384)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "b_end_io", scope: !4859, file: !169, line: 72, baseType: !4873, size: 64, offset: 448)
!4873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4874, size: 64)
!4874 = !DIDerivedType(tag: DW_TAG_typedef, name: "bh_end_io_t", file: !169, line: 48, baseType: !4875)
!4875 = !DISubroutineType(types: !4876)
!4876 = !{null, !4858, !117}
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "b_private", scope: !4859, file: !169, line: 73, baseType: !194, size: 64, offset: 512)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "b_assoc_buffers", scope: !4859, file: !169, line: 74, baseType: !271, size: 128, offset: 576)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "b_assoc_map", scope: !4859, file: !169, line: 75, baseType: !634, size: 64, offset: 704)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "b_count", scope: !4859, file: !169, line: 77, baseType: !251, size: 32, offset: 768)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "b_uptodate_lock", scope: !4859, file: !169, line: 78, baseType: !231, size: 32, offset: 800)
!4882 = !DILocalVariable(name: "fsinfo", scope: !4853, file: !2, line: 72, type: !195)
!4883 = !DILocation(line: 68, column: 44, scope: !4853)
!4884 = !DILocation(line: 70, column: 2, scope: !4853)
!4885 = !DILocation(line: 70, column: 24, scope: !4853)
!4886 = !DILocation(line: 70, column: 39, scope: !4853)
!4887 = !DILocation(line: 70, column: 30, scope: !4853)
!4888 = !DILocation(line: 71, column: 2, scope: !4853)
!4889 = !DILocation(line: 71, column: 22, scope: !4853)
!4890 = !DILocation(line: 72, column: 2, scope: !4853)
!4891 = !DILocation(line: 72, column: 26, scope: !4853)
!4892 = !DILocation(line: 74, column: 16, scope: !4893)
!4893 = distinct !DILexicalBlock(scope: !4853, file: !2, line: 74, column: 6)
!4894 = !DILocation(line: 74, column: 7, scope: !4893)
!4895 = !DILocation(line: 74, column: 6, scope: !4853)
!4896 = !DILocation(line: 75, column: 3, scope: !4893)
!4897 = !DILocation(line: 77, column: 16, scope: !4853)
!4898 = !DILocation(line: 77, column: 20, scope: !4853)
!4899 = !DILocation(line: 77, column: 25, scope: !4853)
!4900 = !DILocation(line: 77, column: 7, scope: !4853)
!4901 = !DILocation(line: 77, column: 5, scope: !4853)
!4902 = !DILocation(line: 78, column: 6, scope: !4903)
!4903 = distinct !DILexicalBlock(scope: !4853, file: !2, line: 78, column: 6)
!4904 = !DILocation(line: 78, column: 9, scope: !4903)
!4905 = !DILocation(line: 78, column: 6, scope: !4853)
!4906 = !DILocation(line: 79, column: 3, scope: !4907)
!4907 = distinct !DILexicalBlock(scope: !4903, file: !2, line: 78, column: 18)
!4908 = !DILocation(line: 79, column: 3, scope: !4909)
!4909 = distinct !DILexicalBlock(scope: !4907, file: !2, line: 79, column: 3)
!4910 = !DILocation(line: 79, column: 3, scope: !4911)
!4911 = distinct !DILexicalBlock(scope: !4909, file: !2, line: 79, column: 3)
!4912 = !DILocation(line: 80, column: 3, scope: !4907)
!4913 = !DILocation(line: 83, column: 37, scope: !4853)
!4914 = !DILocation(line: 83, column: 41, scope: !4853)
!4915 = !DILocation(line: 83, column: 9, scope: !4853)
!4916 = !DILocation(line: 85, column: 7, scope: !4917)
!4917 = distinct !DILexicalBlock(scope: !4853, file: !2, line: 85, column: 6)
!4918 = !DILocation(line: 85, column: 6, scope: !4853)
!4919 = !DILocation(line: 86, column: 3, scope: !4920)
!4920 = distinct !DILexicalBlock(scope: !4917, file: !2, line: 85, column: 26)
!4921 = !DILocation(line: 86, column: 3, scope: !4922)
!4922 = distinct !DILexicalBlock(scope: !4920, file: !2, line: 86, column: 3)
!4923 = !DILocation(line: 86, column: 3, scope: !4924)
!4924 = distinct !DILexicalBlock(scope: !4922, file: !2, line: 86, column: 3)
!4925 = !DILocation(line: 91, column: 2, scope: !4920)
!4926 = !DILocation(line: 92, column: 7, scope: !4927)
!4927 = distinct !DILexicalBlock(scope: !4928, file: !2, line: 92, column: 7)
!4928 = distinct !DILexicalBlock(scope: !4917, file: !2, line: 91, column: 9)
!4929 = !DILocation(line: 92, column: 12, scope: !4927)
!4930 = !DILocation(line: 92, column: 26, scope: !4927)
!4931 = !DILocation(line: 92, column: 7, scope: !4928)
!4932 = !DILocation(line: 93, column: 28, scope: !4927)
!4933 = !DILocation(line: 93, column: 4, scope: !4927)
!4934 = !DILocation(line: 93, column: 12, scope: !4927)
!4935 = !DILocation(line: 93, column: 26, scope: !4927)
!4936 = !DILocation(line: 94, column: 7, scope: !4937)
!4937 = distinct !DILexicalBlock(scope: !4928, file: !2, line: 94, column: 7)
!4938 = !DILocation(line: 94, column: 12, scope: !4937)
!4939 = !DILocation(line: 94, column: 22, scope: !4937)
!4940 = !DILocation(line: 94, column: 7, scope: !4928)
!4941 = !DILocation(line: 95, column: 27, scope: !4937)
!4942 = !DILocation(line: 95, column: 4, scope: !4937)
!4943 = !DILocation(line: 95, column: 12, scope: !4937)
!4944 = !DILocation(line: 95, column: 25, scope: !4937)
!4945 = !DILocation(line: 96, column: 21, scope: !4928)
!4946 = !DILocation(line: 96, column: 3, scope: !4928)
!4947 = !DILocation(line: 98, column: 9, scope: !4853)
!4948 = !DILocation(line: 98, column: 2, scope: !4853)
!4949 = !DILocation(line: 100, column: 2, scope: !4853)
!4950 = !DILocation(line: 101, column: 1, scope: !4853)
!4951 = distinct !DISubprogram(name: "is_fat32", scope: !216, file: !216, line: 160, type: !4952, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !4956)
!4952 = !DISubroutineType(types: !4953)
!4953 = !{!755, !4954}
!4954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4955, size: 64)
!4955 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4735)
!4956 = !{!4957}
!4957 = !DILocalVariable(name: "sbi", arg: 1, scope: !4951, file: !216, line: 160, type: !4954)
!4958 = !DILocation(line: 160, column: 57, scope: !4951)
!4959 = !DILocation(line: 162, column: 9, scope: !4951)
!4960 = !DILocation(line: 162, column: 14, scope: !4951)
!4961 = !DILocation(line: 162, column: 23, scope: !4951)
!4962 = !DILocation(line: 162, column: 2, scope: !4951)
!4963 = distinct !DISubprogram(name: "sb_bread", scope: !169, file: !169, line: 324, type: !4964, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !4966)
!4964 = !DISubroutineType(types: !4965)
!4965 = !{!4858, !475, !1748}
!4966 = !{!4967, !4968}
!4967 = !DILocalVariable(name: "sb", arg: 1, scope: !4963, file: !169, line: 324, type: !475)
!4968 = !DILocalVariable(name: "block", arg: 2, scope: !4963, file: !169, line: 324, type: !1748)
!4969 = !DILocation(line: 324, column: 30, scope: !4963)
!4970 = !DILocation(line: 324, column: 43, scope: !4963)
!4971 = !DILocation(line: 326, column: 21, scope: !4963)
!4972 = !DILocation(line: 326, column: 25, scope: !4963)
!4973 = !DILocation(line: 326, column: 33, scope: !4963)
!4974 = !DILocation(line: 326, column: 40, scope: !4963)
!4975 = !DILocation(line: 326, column: 44, scope: !4963)
!4976 = !DILocation(line: 326, column: 9, scope: !4963)
!4977 = !DILocation(line: 326, column: 2, scope: !4963)
!4978 = !DISubprogram(name: "mark_buffer_dirty", scope: !169, file: !169, line: 195, type: !4979, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4979 = !DISubroutineType(types: !4980)
!4980 = !{null, !4858}
!4981 = distinct !DISubprogram(name: "brelse", scope: !169, file: !169, line: 311, type: !4979, scopeLine: 312, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !4982)
!4982 = !{!4983}
!4983 = !DILocalVariable(name: "bh", arg: 1, scope: !4981, file: !169, line: 311, type: !4858)
!4984 = !DILocation(line: 311, column: 47, scope: !4981)
!4985 = !DILocation(line: 313, column: 6, scope: !4986)
!4986 = distinct !DILexicalBlock(scope: !4981, file: !169, line: 313, column: 6)
!4987 = !DILocation(line: 313, column: 6, scope: !4981)
!4988 = !DILocation(line: 314, column: 12, scope: !4986)
!4989 = !DILocation(line: 314, column: 3, scope: !4986)
!4990 = !DILocation(line: 315, column: 1, scope: !4981)
!4991 = distinct !DISubprogram(name: "fat_chain_add", scope: !2, file: !2, line: 107, type: !4992, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !4994)
!4992 = !DISubroutineType(types: !4993)
!4993 = !{!117, !400, !117, !117}
!4994 = !{!4995, !4996, !4997, !4998, !4999, !5000, !5001, !5002, !5003, !5006, !5007, !5027}
!4995 = !DILocalVariable(name: "inode", arg: 1, scope: !4991, file: !2, line: 107, type: !400)
!4996 = !DILocalVariable(name: "new_dclus", arg: 2, scope: !4991, file: !2, line: 107, type: !117)
!4997 = !DILocalVariable(name: "nr_cluster", arg: 3, scope: !4991, file: !2, line: 107, type: !117)
!4998 = !DILocalVariable(name: "sb", scope: !4991, file: !2, line: 109, type: !475)
!4999 = !DILocalVariable(name: "sbi", scope: !4991, file: !2, line: 110, type: !4734)
!5000 = !DILocalVariable(name: "ret", scope: !4991, file: !2, line: 111, type: !117)
!5001 = !DILocalVariable(name: "new_fclus", scope: !4991, file: !2, line: 111, type: !117)
!5002 = !DILocalVariable(name: "last", scope: !4991, file: !2, line: 111, type: !117)
!5003 = !DILocalVariable(name: "fclus", scope: !5004, file: !2, line: 119, type: !117)
!5004 = distinct !DILexicalBlock(scope: !5005, file: !2, line: 118, column: 31)
!5005 = distinct !DILexicalBlock(scope: !4991, file: !2, line: 118, column: 6)
!5006 = !DILocalVariable(name: "dclus", scope: !5004, file: !2, line: 119, type: !117)
!5007 = !DILocalVariable(name: "fatent", scope: !5008, file: !2, line: 130, type: !5010)
!5008 = distinct !DILexicalBlock(scope: !5009, file: !2, line: 129, column: 12)
!5009 = distinct !DILexicalBlock(scope: !4991, file: !2, line: 129, column: 6)
!5010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fat_entry", file: !216, line: 342, size: 448, elements: !5011)
!5011 = !{!5012, !5013, !5023, !5024, !5026}
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !5010, file: !216, line: 343, baseType: !117, size: 32)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !5010, file: !216, line: 348, baseType: !5014, size: 128, offset: 64)
!5014 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5010, file: !216, line: 344, size: 128, elements: !5015)
!5015 = !{!5016, !5019, !5021}
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "ent12_p", scope: !5014, file: !216, line: 345, baseType: !5017, size: 128)
!5017 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5018, size: 128, elements: !2102)
!5018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "ent16_p", scope: !5014, file: !216, line: 346, baseType: !5020, size: 64)
!5020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "ent32_p", scope: !5014, file: !216, line: 347, baseType: !5022, size: 64)
!5022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "nr_bhs", scope: !5010, file: !216, line: 349, baseType: !117, size: 32, offset: 192)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "bhs", scope: !5010, file: !216, line: 350, baseType: !5025, size: 128, offset: 256)
!5025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4858, size: 128, elements: !2102)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "fat_inode", scope: !5010, file: !216, line: 351, baseType: !400, size: 64, offset: 384)
!5027 = !DILocalVariable(name: "wait", scope: !5028, file: !2, line: 135, type: !117)
!5028 = distinct !DILexicalBlock(scope: !5029, file: !2, line: 134, column: 17)
!5029 = distinct !DILexicalBlock(scope: !5008, file: !2, line: 134, column: 7)
!5030 = !DILocation(line: 107, column: 33, scope: !4991)
!5031 = !DILocation(line: 107, column: 44, scope: !4991)
!5032 = !DILocation(line: 107, column: 59, scope: !4991)
!5033 = !DILocation(line: 109, column: 2, scope: !4991)
!5034 = !DILocation(line: 109, column: 22, scope: !4991)
!5035 = !DILocation(line: 109, column: 27, scope: !4991)
!5036 = !DILocation(line: 109, column: 34, scope: !4991)
!5037 = !DILocation(line: 110, column: 2, scope: !4991)
!5038 = !DILocation(line: 110, column: 24, scope: !4991)
!5039 = !DILocation(line: 110, column: 39, scope: !4991)
!5040 = !DILocation(line: 110, column: 30, scope: !4991)
!5041 = !DILocation(line: 111, column: 2, scope: !4991)
!5042 = !DILocation(line: 111, column: 6, scope: !4991)
!5043 = !DILocation(line: 111, column: 11, scope: !4991)
!5044 = !DILocation(line: 111, column: 22, scope: !4991)
!5045 = !DILocation(line: 117, column: 19, scope: !4991)
!5046 = !DILocation(line: 117, column: 7, scope: !4991)
!5047 = !DILocation(line: 118, column: 14, scope: !5005)
!5048 = !DILocation(line: 118, column: 6, scope: !5005)
!5049 = !DILocation(line: 118, column: 22, scope: !5005)
!5050 = !DILocation(line: 118, column: 6, scope: !4991)
!5051 = !DILocation(line: 119, column: 3, scope: !5004)
!5052 = !DILocation(line: 119, column: 7, scope: !5004)
!5053 = !DILocation(line: 119, column: 14, scope: !5004)
!5054 = !DILocation(line: 121, column: 25, scope: !5004)
!5055 = !DILocation(line: 121, column: 9, scope: !5004)
!5056 = !DILocation(line: 121, column: 7, scope: !5004)
!5057 = !DILocation(line: 122, column: 7, scope: !5058)
!5058 = distinct !DILexicalBlock(scope: !5004, file: !2, line: 122, column: 7)
!5059 = !DILocation(line: 122, column: 11, scope: !5058)
!5060 = !DILocation(line: 122, column: 7, scope: !5004)
!5061 = !DILocation(line: 123, column: 11, scope: !5058)
!5062 = !DILocation(line: 123, column: 4, scope: !5058)
!5063 = !DILocation(line: 124, column: 15, scope: !5004)
!5064 = !DILocation(line: 124, column: 21, scope: !5004)
!5065 = !DILocation(line: 124, column: 13, scope: !5004)
!5066 = !DILocation(line: 125, column: 10, scope: !5004)
!5067 = !DILocation(line: 125, column: 8, scope: !5004)
!5068 = !DILocation(line: 126, column: 2, scope: !5005)
!5069 = !DILocation(line: 126, column: 2, scope: !5004)
!5070 = !DILocation(line: 129, column: 6, scope: !5009)
!5071 = !DILocation(line: 129, column: 6, scope: !4991)
!5072 = !DILocation(line: 130, column: 3, scope: !5008)
!5073 = !DILocation(line: 130, column: 20, scope: !5008)
!5074 = !DILocation(line: 132, column: 3, scope: !5008)
!5075 = !DILocation(line: 133, column: 22, scope: !5008)
!5076 = !DILocation(line: 133, column: 38, scope: !5008)
!5077 = !DILocation(line: 133, column: 9, scope: !5008)
!5078 = !DILocation(line: 133, column: 7, scope: !5008)
!5079 = !DILocation(line: 134, column: 7, scope: !5029)
!5080 = !DILocation(line: 134, column: 11, scope: !5029)
!5081 = !DILocation(line: 134, column: 7, scope: !5008)
!5082 = !DILocation(line: 135, column: 4, scope: !5028)
!5083 = !DILocation(line: 135, column: 8, scope: !5028)
!5084 = !DILocation(line: 135, column: 32, scope: !5028)
!5085 = !DILocation(line: 135, column: 15, scope: !5028)
!5086 = !DILocation(line: 136, column: 24, scope: !5028)
!5087 = !DILocation(line: 136, column: 40, scope: !5028)
!5088 = !DILocation(line: 136, column: 51, scope: !5028)
!5089 = !DILocation(line: 136, column: 10, scope: !5028)
!5090 = !DILocation(line: 136, column: 8, scope: !5028)
!5091 = !DILocation(line: 137, column: 4, scope: !5028)
!5092 = !DILocation(line: 138, column: 3, scope: !5029)
!5093 = !DILocation(line: 138, column: 3, scope: !5028)
!5094 = !DILocation(line: 139, column: 7, scope: !5095)
!5095 = distinct !DILexicalBlock(scope: !5008, file: !2, line: 139, column: 7)
!5096 = !DILocation(line: 139, column: 11, scope: !5095)
!5097 = !DILocation(line: 139, column: 7, scope: !5008)
!5098 = !DILocation(line: 140, column: 11, scope: !5095)
!5099 = !DILocation(line: 140, column: 4, scope: !5095)
!5100 = !DILocation(line: 146, column: 2, scope: !5009)
!5101 = !DILocation(line: 146, column: 2, scope: !5008)
!5102 = !DILocation(line: 147, column: 29, scope: !5103)
!5103 = distinct !DILexicalBlock(scope: !5009, file: !2, line: 146, column: 9)
!5104 = !DILocation(line: 147, column: 11, scope: !5103)
!5105 = !DILocation(line: 147, column: 3, scope: !5103)
!5106 = !DILocation(line: 147, column: 19, scope: !5103)
!5107 = !DILocation(line: 147, column: 27, scope: !5103)
!5108 = !DILocation(line: 148, column: 32, scope: !5103)
!5109 = !DILocation(line: 148, column: 11, scope: !5103)
!5110 = !DILocation(line: 148, column: 3, scope: !5103)
!5111 = !DILocation(line: 148, column: 19, scope: !5103)
!5112 = !DILocation(line: 148, column: 30, scope: !5103)
!5113 = !DILocation(line: 153, column: 7, scope: !5114)
!5114 = distinct !DILexicalBlock(scope: !5103, file: !2, line: 153, column: 7)
!5115 = !DILocation(line: 153, column: 30, scope: !5114)
!5116 = !DILocation(line: 153, column: 33, scope: !5114)
!5117 = !DILocation(line: 153, column: 7, scope: !5103)
!5118 = !DILocation(line: 154, column: 25, scope: !5119)
!5119 = distinct !DILexicalBlock(scope: !5114, file: !2, line: 153, column: 52)
!5120 = !DILocation(line: 154, column: 10, scope: !5119)
!5121 = !DILocation(line: 154, column: 8, scope: !5119)
!5122 = !DILocation(line: 155, column: 8, scope: !5123)
!5123 = distinct !DILexicalBlock(scope: !5119, file: !2, line: 155, column: 8)
!5124 = !DILocation(line: 155, column: 8, scope: !5119)
!5125 = !DILocation(line: 156, column: 12, scope: !5123)
!5126 = !DILocation(line: 156, column: 5, scope: !5123)
!5127 = !DILocation(line: 157, column: 3, scope: !5119)
!5128 = !DILocation(line: 158, column: 21, scope: !5114)
!5129 = !DILocation(line: 158, column: 4, scope: !5114)
!5130 = !DILocation(line: 160, column: 6, scope: !5131)
!5131 = distinct !DILexicalBlock(scope: !4991, file: !2, line: 160, column: 6)
!5132 = !DILocation(line: 160, column: 20, scope: !5131)
!5133 = !DILocation(line: 160, column: 27, scope: !5131)
!5134 = !DILocation(line: 160, column: 40, scope: !5131)
!5135 = !DILocation(line: 160, column: 45, scope: !5131)
!5136 = !DILocation(line: 160, column: 58, scope: !5131)
!5137 = !DILocation(line: 160, column: 36, scope: !5131)
!5138 = !DILocation(line: 160, column: 16, scope: !5131)
!5139 = !DILocation(line: 160, column: 6, scope: !4991)
!5140 = !DILocation(line: 161, column: 3, scope: !5141)
!5141 = distinct !DILexicalBlock(scope: !5131, file: !2, line: 160, column: 65)
!5142 = !DILocation(line: 164, column: 25, scope: !5141)
!5143 = !DILocation(line: 164, column: 3, scope: !5141)
!5144 = !DILocation(line: 165, column: 2, scope: !5141)
!5145 = !DILocation(line: 166, column: 21, scope: !4991)
!5146 = !DILocation(line: 166, column: 36, scope: !4991)
!5147 = !DILocation(line: 166, column: 41, scope: !4991)
!5148 = !DILocation(line: 166, column: 54, scope: !4991)
!5149 = !DILocation(line: 166, column: 32, scope: !4991)
!5150 = !DILocation(line: 166, column: 2, scope: !4991)
!5151 = !DILocation(line: 166, column: 9, scope: !4991)
!5152 = !DILocation(line: 166, column: 18, scope: !4991)
!5153 = !DILocation(line: 168, column: 2, scope: !4991)
!5154 = !DILocation(line: 169, column: 1, scope: !4991)
!5155 = distinct !DISubprogram(name: "MSDOS_I", scope: !216, file: !216, line: 174, type: !5156, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5158)
!5156 = !DISubroutineType(types: !5157)
!5157 = !{!227, !400}
!5158 = !{!5159, !5160}
!5159 = !DILocalVariable(name: "inode", arg: 1, scope: !5155, file: !216, line: 174, type: !400)
!5160 = !DILocalVariable(name: "__mptr", scope: !5161, file: !216, line: 176, type: !194)
!5161 = distinct !DILexicalBlock(scope: !5155, file: !216, line: 176, column: 9)
!5162 = !DILocation(line: 174, column: 62, scope: !5155)
!5163 = !DILocation(line: 176, column: 9, scope: !5161)
!5164 = !DILocation(line: 176, column: 9, scope: !5155)
!5165 = !DILocation(line: 176, column: 2, scope: !5155)
!5166 = !DISubprogram(name: "fat_get_cluster", scope: !216, file: !216, line: 316, type: !5167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5167 = !DISubroutineType(types: !5168)
!5168 = !{!117, !400, !117, !2112, !2112}
!5169 = distinct !DISubprogram(name: "fatent_init", scope: !216, file: !216, line: 354, type: !5170, scopeLine: 355, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5173)
!5170 = !DISubroutineType(types: !5171)
!5171 = !{null, !5172}
!5172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5010, size: 64)
!5173 = !{!5174}
!5174 = !DILocalVariable(name: "fatent", arg: 1, scope: !5169, file: !216, line: 354, type: !5172)
!5175 = !DILocation(line: 354, column: 50, scope: !5169)
!5176 = !DILocation(line: 356, column: 2, scope: !5169)
!5177 = !DILocation(line: 356, column: 10, scope: !5169)
!5178 = !DILocation(line: 356, column: 17, scope: !5169)
!5179 = !DILocation(line: 357, column: 2, scope: !5169)
!5180 = !DILocation(line: 357, column: 10, scope: !5169)
!5181 = !DILocation(line: 357, column: 16, scope: !5169)
!5182 = !DILocation(line: 358, column: 2, scope: !5169)
!5183 = !DILocation(line: 358, column: 10, scope: !5169)
!5184 = !DILocation(line: 358, column: 20, scope: !5169)
!5185 = !DILocation(line: 359, column: 19, scope: !5169)
!5186 = !DILocation(line: 359, column: 27, scope: !5169)
!5187 = !DILocation(line: 359, column: 34, scope: !5169)
!5188 = !DILocation(line: 359, column: 2, scope: !5169)
!5189 = !DILocation(line: 359, column: 10, scope: !5169)
!5190 = !DILocation(line: 359, column: 17, scope: !5169)
!5191 = !DILocation(line: 360, column: 2, scope: !5169)
!5192 = !DILocation(line: 360, column: 10, scope: !5169)
!5193 = !DILocation(line: 360, column: 20, scope: !5169)
!5194 = !DILocation(line: 361, column: 1, scope: !5169)
!5195 = !DISubprogram(name: "fat_ent_read", scope: !216, file: !216, line: 386, type: !5196, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5196 = !DISubroutineType(types: !5197)
!5197 = !{!117, !400, !5172, !117}
!5198 = !DISubprogram(name: "inode_needs_sync", scope: !80, file: !80, line: 2870, type: !2356, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5199 = !DISubprogram(name: "fat_ent_write", scope: !216, file: !216, line: 388, type: !5200, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5200 = !DISubroutineType(types: !5201)
!5201 = !{!117, !400, !5172, !117, !117}
!5202 = distinct !DISubprogram(name: "fatent_brelse", scope: !216, file: !216, line: 369, type: !5170, scopeLine: 370, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5203)
!5203 = !{!5204, !5205}
!5204 = !DILocalVariable(name: "fatent", arg: 1, scope: !5202, file: !216, line: 369, type: !5172)
!5205 = !DILocalVariable(name: "i", scope: !5202, file: !216, line: 371, type: !117)
!5206 = !DILocation(line: 369, column: 52, scope: !5202)
!5207 = !DILocation(line: 371, column: 2, scope: !5202)
!5208 = !DILocation(line: 371, column: 6, scope: !5202)
!5209 = !DILocation(line: 372, column: 2, scope: !5202)
!5210 = !DILocation(line: 372, column: 10, scope: !5202)
!5211 = !DILocation(line: 372, column: 20, scope: !5202)
!5212 = !DILocation(line: 373, column: 9, scope: !5213)
!5213 = distinct !DILexicalBlock(scope: !5202, file: !216, line: 373, column: 2)
!5214 = !DILocation(line: 373, column: 7, scope: !5213)
!5215 = !DILocation(line: 373, column: 14, scope: !5216)
!5216 = distinct !DILexicalBlock(scope: !5213, file: !216, line: 373, column: 2)
!5217 = !DILocation(line: 373, column: 18, scope: !5216)
!5218 = !DILocation(line: 373, column: 26, scope: !5216)
!5219 = !DILocation(line: 373, column: 16, scope: !5216)
!5220 = !DILocation(line: 373, column: 2, scope: !5213)
!5221 = !DILocation(line: 374, column: 10, scope: !5216)
!5222 = !DILocation(line: 374, column: 18, scope: !5216)
!5223 = !DILocation(line: 374, column: 22, scope: !5216)
!5224 = !DILocation(line: 374, column: 3, scope: !5216)
!5225 = !DILocation(line: 373, column: 35, scope: !5216)
!5226 = !DILocation(line: 373, column: 2, scope: !5216)
!5227 = distinct !{!5227, !5220, !5228, !5229, !5230}
!5228 = !DILocation(line: 374, column: 24, scope: !5213)
!5229 = !{!"llvm.loop.mustprogress"}
!5230 = !{!"llvm.loop.unroll.disable"}
!5231 = !DILocation(line: 375, column: 2, scope: !5202)
!5232 = !DILocation(line: 375, column: 10, scope: !5202)
!5233 = !DILocation(line: 375, column: 17, scope: !5202)
!5234 = !DILocation(line: 376, column: 19, scope: !5202)
!5235 = !DILocation(line: 376, column: 27, scope: !5202)
!5236 = !DILocation(line: 376, column: 34, scope: !5202)
!5237 = !DILocation(line: 376, column: 2, scope: !5202)
!5238 = !DILocation(line: 376, column: 10, scope: !5202)
!5239 = !DILocation(line: 376, column: 17, scope: !5202)
!5240 = !DILocation(line: 377, column: 2, scope: !5202)
!5241 = !DILocation(line: 377, column: 10, scope: !5202)
!5242 = !DILocation(line: 377, column: 20, scope: !5202)
!5243 = !DILocation(line: 378, column: 1, scope: !5202)
!5244 = !DISubprogram(name: "fat_sync_inode", scope: !216, file: !216, line: 417, type: !2356, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5245 = distinct !DISubprogram(name: "mark_inode_dirty", scope: !80, file: !80, line: 2302, type: !2343, scopeLine: 2303, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5246)
!5246 = !{!5247}
!5247 = !DILocalVariable(name: "inode", arg: 1, scope: !5245, file: !80, line: 2302, type: !400)
!5248 = !DILocation(line: 2302, column: 51, scope: !5245)
!5249 = !DILocation(line: 2304, column: 21, scope: !5245)
!5250 = !DILocation(line: 2304, column: 2, scope: !5245)
!5251 = !DILocation(line: 2305, column: 1, scope: !5245)
!5252 = !DISubprogram(name: "fat_cache_inval_inode", scope: !216, file: !216, line: 315, type: !2343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5253 = distinct !DISubprogram(name: "fat_time_fat2unix", scope: !2, file: !2, line: 204, type: !5254, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5257)
!5254 = !DISubroutineType(types: !5255)
!5255 = !{null, !4734, !5256, !220, !220, !259}
!5256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!5257 = !{!5258, !5259, !5260, !5261, !5262, !5263, !5264, !5265, !5266, !5267, !5268, !5269, !5270, !5272, !5273, !5275}
!5258 = !DILocalVariable(name: "sbi", arg: 1, scope: !5253, file: !2, line: 204, type: !4734)
!5259 = !DILocalVariable(name: "ts", arg: 2, scope: !5253, file: !2, line: 204, type: !5256)
!5260 = !DILocalVariable(name: "__time", arg: 3, scope: !5253, file: !2, line: 205, type: !220)
!5261 = !DILocalVariable(name: "__date", arg: 4, scope: !5253, file: !2, line: 205, type: !220)
!5262 = !DILocalVariable(name: "time_cs", arg: 5, scope: !5253, file: !2, line: 205, type: !259)
!5263 = !DILocalVariable(name: "time", scope: !5253, file: !2, line: 207, type: !268)
!5264 = !DILocalVariable(name: "date", scope: !5253, file: !2, line: 207, type: !268)
!5265 = !DILocalVariable(name: "second", scope: !5253, file: !2, line: 208, type: !221)
!5266 = !DILocalVariable(name: "day", scope: !5253, file: !2, line: 209, type: !320)
!5267 = !DILocalVariable(name: "leap_day", scope: !5253, file: !2, line: 209, type: !320)
!5268 = !DILocalVariable(name: "month", scope: !5253, file: !2, line: 209, type: !320)
!5269 = !DILocalVariable(name: "year", scope: !5253, file: !2, line: 209, type: !320)
!5270 = !DILocalVariable(name: "__UNIQUE_ID___x321", scope: !5271, file: !2, line: 212, type: !117)
!5271 = distinct !DILexicalBlock(scope: !5253, file: !2, line: 212, column: 10)
!5272 = !DILocalVariable(name: "__UNIQUE_ID___y322", scope: !5271, file: !2, line: 212, type: !117)
!5273 = !DILocalVariable(name: "__UNIQUE_ID___x323", scope: !5274, file: !2, line: 213, type: !117)
!5274 = distinct !DILexicalBlock(scope: !5253, file: !2, line: 213, column: 10)
!5275 = !DILocalVariable(name: "__UNIQUE_ID___y324", scope: !5274, file: !2, line: 213, type: !117)
!5276 = !DILocation(line: 204, column: 46, scope: !5253)
!5277 = !DILocation(line: 204, column: 70, scope: !5253)
!5278 = !DILocation(line: 205, column: 17, scope: !5253)
!5279 = !DILocation(line: 205, column: 32, scope: !5253)
!5280 = !DILocation(line: 205, column: 43, scope: !5253)
!5281 = !DILocation(line: 207, column: 2, scope: !5253)
!5282 = !DILocation(line: 207, column: 6, scope: !5253)
!5283 = !DILocation(line: 207, column: 13, scope: !5253)
!5284 = !DILocation(line: 207, column: 34, scope: !5253)
!5285 = !DILocation(line: 207, column: 41, scope: !5253)
!5286 = !DILocation(line: 208, column: 2, scope: !5253)
!5287 = !DILocation(line: 208, column: 11, scope: !5253)
!5288 = !DILocation(line: 209, column: 2, scope: !5253)
!5289 = !DILocation(line: 209, column: 7, scope: !5253)
!5290 = !DILocation(line: 209, column: 12, scope: !5253)
!5291 = !DILocation(line: 209, column: 22, scope: !5253)
!5292 = !DILocation(line: 209, column: 29, scope: !5253)
!5293 = !DILocation(line: 211, column: 10, scope: !5253)
!5294 = !DILocation(line: 211, column: 15, scope: !5253)
!5295 = !DILocation(line: 211, column: 8, scope: !5253)
!5296 = !DILocation(line: 212, column: 10, scope: !5271)
!5297 = !DILocation(line: 212, column: 10, scope: !5253)
!5298 = !DILocation(line: 212, column: 8, scope: !5253)
!5299 = !DILocation(line: 213, column: 10, scope: !5274)
!5300 = !DILocation(line: 213, column: 10, scope: !5253)
!5301 = !DILocation(line: 213, column: 30, scope: !5253)
!5302 = !DILocation(line: 213, column: 8, scope: !5253)
!5303 = !DILocation(line: 215, column: 14, scope: !5253)
!5304 = !DILocation(line: 215, column: 19, scope: !5253)
!5305 = !DILocation(line: 215, column: 24, scope: !5253)
!5306 = !DILocation(line: 215, column: 11, scope: !5253)
!5307 = !DILocation(line: 216, column: 6, scope: !5308)
!5308 = distinct !DILexicalBlock(scope: !5253, file: !2, line: 216, column: 6)
!5309 = !DILocation(line: 216, column: 11, scope: !5308)
!5310 = !DILocation(line: 216, column: 6, scope: !5253)
!5311 = !DILocation(line: 217, column: 11, scope: !5308)
!5312 = !DILocation(line: 217, column: 3, scope: !5308)
!5313 = !DILocation(line: 218, column: 6, scope: !5314)
!5314 = distinct !DILexicalBlock(scope: !5253, file: !2, line: 218, column: 6)
!5315 = !DILocation(line: 218, column: 25, scope: !5314)
!5316 = !DILocation(line: 218, column: 28, scope: !5314)
!5317 = !DILocation(line: 218, column: 34, scope: !5314)
!5318 = !DILocation(line: 218, column: 6, scope: !5253)
!5319 = !DILocation(line: 219, column: 11, scope: !5314)
!5320 = !DILocation(line: 219, column: 3, scope: !5314)
!5321 = !DILocation(line: 221, column: 13, scope: !5253)
!5322 = !DILocation(line: 221, column: 18, scope: !5253)
!5323 = !DILocation(line: 221, column: 26, scope: !5253)
!5324 = !DILocation(line: 221, column: 12, scope: !5253)
!5325 = !DILocation(line: 221, column: 9, scope: !5253)
!5326 = !DILocation(line: 222, column: 14, scope: !5253)
!5327 = !DILocation(line: 222, column: 19, scope: !5253)
!5328 = !DILocation(line: 222, column: 25, scope: !5253)
!5329 = !DILocation(line: 222, column: 33, scope: !5253)
!5330 = !DILocation(line: 222, column: 12, scope: !5253)
!5331 = !DILocation(line: 222, column: 9, scope: !5253)
!5332 = !DILocation(line: 223, column: 13, scope: !5253)
!5333 = !DILocation(line: 223, column: 18, scope: !5253)
!5334 = !DILocation(line: 223, column: 25, scope: !5253)
!5335 = !DILocation(line: 223, column: 12, scope: !5253)
!5336 = !DILocation(line: 223, column: 9, scope: !5253)
!5337 = !DILocation(line: 224, column: 23, scope: !5253)
!5338 = !DILocation(line: 224, column: 28, scope: !5253)
!5339 = !DILocation(line: 224, column: 36, scope: !5253)
!5340 = !DILocation(line: 224, column: 34, scope: !5253)
!5341 = !DILocation(line: 225, column: 21, scope: !5253)
!5342 = !DILocation(line: 225, column: 8, scope: !5253)
!5343 = !DILocation(line: 225, column: 6, scope: !5253)
!5344 = !DILocation(line: 225, column: 30, scope: !5253)
!5345 = !DILocation(line: 225, column: 28, scope: !5253)
!5346 = !DILocation(line: 226, column: 6, scope: !5253)
!5347 = !DILocation(line: 226, column: 20, scope: !5253)
!5348 = !DILocation(line: 224, column: 9, scope: !5253)
!5349 = !DILocation(line: 228, column: 26, scope: !5253)
!5350 = !DILocation(line: 228, column: 12, scope: !5253)
!5351 = !DILocation(line: 228, column: 9, scope: !5253)
!5352 = !DILocation(line: 230, column: 6, scope: !5353)
!5353 = distinct !DILexicalBlock(scope: !5253, file: !2, line: 230, column: 6)
!5354 = !DILocation(line: 230, column: 6, scope: !5253)
!5355 = !DILocation(line: 231, column: 16, scope: !5356)
!5356 = distinct !DILexicalBlock(scope: !5353, file: !2, line: 230, column: 15)
!5357 = !DILocation(line: 231, column: 26, scope: !5356)
!5358 = !DILocation(line: 231, column: 34, scope: !5356)
!5359 = !DILocation(line: 231, column: 25, scope: !5356)
!5360 = !DILocation(line: 231, column: 23, scope: !5356)
!5361 = !DILocation(line: 231, column: 3, scope: !5356)
!5362 = !DILocation(line: 231, column: 7, scope: !5356)
!5363 = !DILocation(line: 231, column: 14, scope: !5356)
!5364 = !DILocation(line: 232, column: 18, scope: !5356)
!5365 = !DILocation(line: 232, column: 26, scope: !5356)
!5366 = !DILocation(line: 232, column: 33, scope: !5356)
!5367 = !DILocation(line: 232, column: 17, scope: !5356)
!5368 = !DILocation(line: 232, column: 3, scope: !5356)
!5369 = !DILocation(line: 232, column: 7, scope: !5356)
!5370 = !DILocation(line: 232, column: 15, scope: !5356)
!5371 = !DILocation(line: 233, column: 2, scope: !5356)
!5372 = !DILocation(line: 234, column: 16, scope: !5373)
!5373 = distinct !DILexicalBlock(scope: !5353, file: !2, line: 233, column: 9)
!5374 = !DILocation(line: 234, column: 3, scope: !5373)
!5375 = !DILocation(line: 234, column: 7, scope: !5373)
!5376 = !DILocation(line: 234, column: 14, scope: !5373)
!5377 = !DILocation(line: 235, column: 3, scope: !5373)
!5378 = !DILocation(line: 235, column: 7, scope: !5373)
!5379 = !DILocation(line: 235, column: 15, scope: !5373)
!5380 = !DILocation(line: 237, column: 1, scope: !5253)
!5381 = distinct !DISubprogram(name: "fat_tz_offset", scope: !2, file: !2, line: 196, type: !5382, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5384)
!5382 = !DISubroutineType(types: !5383)
!5383 = !{!117, !4954}
!5384 = !{!5385}
!5385 = !DILocalVariable(name: "sbi", arg: 1, scope: !5381, file: !2, line: 196, type: !4954)
!5386 = !DILocation(line: 196, column: 61, scope: !5381)
!5387 = !DILocation(line: 198, column: 10, scope: !5381)
!5388 = !DILocation(line: 198, column: 15, scope: !5381)
!5389 = !DILocation(line: 198, column: 23, scope: !5381)
!5390 = !DILocation(line: 199, column: 10, scope: !5381)
!5391 = !DILocation(line: 199, column: 15, scope: !5381)
!5392 = !DILocation(line: 199, column: 23, scope: !5381)
!5393 = !DILocation(line: 199, column: 9, scope: !5381)
!5394 = !DILocation(line: 200, column: 16, scope: !5381)
!5395 = !DILocation(line: 200, column: 32, scope: !5381)
!5396 = !DILocation(line: 198, column: 2, scope: !5381)
!5397 = distinct !DISubprogram(name: "fat_time_unix2fat", scope: !2, file: !2, line: 243, type: !5398, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5400)
!5398 = !DISubroutineType(types: !5399)
!5399 = !{null, !4734, !5256, !5020, !5020, !5018}
!5400 = !{!5401, !5402, !5403, !5404, !5405, !5406}
!5401 = !DILocalVariable(name: "sbi", arg: 1, scope: !5397, file: !2, line: 243, type: !4734)
!5402 = !DILocalVariable(name: "ts", arg: 2, scope: !5397, file: !2, line: 243, type: !5256)
!5403 = !DILocalVariable(name: "time", arg: 3, scope: !5397, file: !2, line: 244, type: !5020)
!5404 = !DILocalVariable(name: "date", arg: 4, scope: !5397, file: !2, line: 244, type: !5020)
!5405 = !DILocalVariable(name: "time_cs", arg: 5, scope: !5397, file: !2, line: 244, type: !5018)
!5406 = !DILocalVariable(name: "tm", scope: !5397, file: !2, line: 246, type: !5407)
!5407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !5408, line: 36, size: 320, elements: !5409)
!5408 = !DIFile(filename: "./include/linux/time.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f33592c8760b58e8aacec1e4121b19fc")
!5409 = !{!5410, !5411, !5412, !5413, !5414, !5415, !5416, !5417}
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !5407, file: !5408, line: 41, baseType: !117, size: 32)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !5407, file: !5408, line: 43, baseType: !117, size: 32, offset: 32)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !5407, file: !5408, line: 45, baseType: !117, size: 32, offset: 64)
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !5407, file: !5408, line: 47, baseType: !117, size: 32, offset: 96)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !5407, file: !5408, line: 49, baseType: !117, size: 32, offset: 128)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !5407, file: !5408, line: 51, baseType: !320, size: 64, offset: 192)
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !5407, file: !5408, line: 53, baseType: !117, size: 32, offset: 256)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !5407, file: !5408, line: 55, baseType: !117, size: 32, offset: 288)
!5418 = !DILocation(line: 243, column: 46, scope: !5397)
!5419 = !DILocation(line: 243, column: 70, scope: !5397)
!5420 = !DILocation(line: 244, column: 18, scope: !5397)
!5421 = !DILocation(line: 244, column: 32, scope: !5397)
!5422 = !DILocation(line: 244, column: 42, scope: !5397)
!5423 = !DILocation(line: 246, column: 2, scope: !5397)
!5424 = !DILocation(line: 246, column: 12, scope: !5397)
!5425 = !DILocation(line: 247, column: 15, scope: !5397)
!5426 = !DILocation(line: 247, column: 19, scope: !5397)
!5427 = !DILocation(line: 247, column: 42, scope: !5397)
!5428 = !DILocation(line: 247, column: 28, scope: !5397)
!5429 = !DILocation(line: 247, column: 27, scope: !5397)
!5430 = !DILocation(line: 247, column: 2, scope: !5397)
!5431 = !DILocation(line: 250, column: 9, scope: !5432)
!5432 = distinct !DILexicalBlock(scope: !5397, file: !2, line: 250, column: 6)
!5433 = !DILocation(line: 250, column: 17, scope: !5432)
!5434 = !DILocation(line: 250, column: 6, scope: !5397)
!5435 = !DILocation(line: 251, column: 4, scope: !5436)
!5436 = distinct !DILexicalBlock(scope: !5432, file: !2, line: 250, column: 32)
!5437 = !DILocation(line: 251, column: 9, scope: !5436)
!5438 = !DILocation(line: 252, column: 4, scope: !5436)
!5439 = !DILocation(line: 252, column: 9, scope: !5436)
!5440 = !DILocation(line: 253, column: 7, scope: !5441)
!5441 = distinct !DILexicalBlock(scope: !5436, file: !2, line: 253, column: 7)
!5442 = !DILocation(line: 253, column: 7, scope: !5436)
!5443 = !DILocation(line: 254, column: 5, scope: !5441)
!5444 = !DILocation(line: 254, column: 13, scope: !5441)
!5445 = !DILocation(line: 254, column: 4, scope: !5441)
!5446 = !DILocation(line: 255, column: 3, scope: !5436)
!5447 = !DILocation(line: 257, column: 9, scope: !5448)
!5448 = distinct !DILexicalBlock(scope: !5397, file: !2, line: 257, column: 6)
!5449 = !DILocation(line: 257, column: 17, scope: !5448)
!5450 = !DILocation(line: 257, column: 6, scope: !5397)
!5451 = !DILocation(line: 258, column: 4, scope: !5452)
!5452 = distinct !DILexicalBlock(scope: !5448, file: !2, line: 257, column: 32)
!5453 = !DILocation(line: 258, column: 9, scope: !5452)
!5454 = !DILocation(line: 259, column: 4, scope: !5452)
!5455 = !DILocation(line: 259, column: 9, scope: !5452)
!5456 = !DILocation(line: 260, column: 7, scope: !5457)
!5457 = distinct !DILexicalBlock(scope: !5452, file: !2, line: 260, column: 7)
!5458 = !DILocation(line: 260, column: 7, scope: !5452)
!5459 = !DILocation(line: 261, column: 5, scope: !5457)
!5460 = !DILocation(line: 261, column: 13, scope: !5457)
!5461 = !DILocation(line: 261, column: 4, scope: !5457)
!5462 = !DILocation(line: 262, column: 3, scope: !5452)
!5463 = !DILocation(line: 266, column: 5, scope: !5397)
!5464 = !DILocation(line: 266, column: 13, scope: !5397)
!5465 = !DILocation(line: 268, column: 5, scope: !5397)
!5466 = !DILocation(line: 268, column: 11, scope: !5397)
!5467 = !DILocation(line: 270, column: 5, scope: !5397)
!5468 = !DILocation(line: 270, column: 12, scope: !5397)
!5469 = !DILocation(line: 272, column: 10, scope: !5397)
!5470 = !DILocation(line: 272, column: 3, scope: !5397)
!5471 = !DILocation(line: 272, column: 8, scope: !5397)
!5472 = !DILocation(line: 273, column: 10, scope: !5397)
!5473 = !DILocation(line: 273, column: 3, scope: !5397)
!5474 = !DILocation(line: 273, column: 8, scope: !5397)
!5475 = !DILocation(line: 274, column: 6, scope: !5476)
!5476 = distinct !DILexicalBlock(scope: !5397, file: !2, line: 274, column: 6)
!5477 = !DILocation(line: 274, column: 6, scope: !5397)
!5478 = !DILocation(line: 275, column: 15, scope: !5476)
!5479 = !DILocation(line: 275, column: 19, scope: !5476)
!5480 = !DILocation(line: 275, column: 26, scope: !5476)
!5481 = !DILocation(line: 275, column: 31, scope: !5476)
!5482 = !DILocation(line: 275, column: 39, scope: !5476)
!5483 = !DILocation(line: 275, column: 43, scope: !5476)
!5484 = !DILocation(line: 275, column: 51, scope: !5476)
!5485 = !DILocation(line: 275, column: 37, scope: !5476)
!5486 = !DILocation(line: 275, column: 14, scope: !5476)
!5487 = !DILocation(line: 275, column: 4, scope: !5476)
!5488 = !DILocation(line: 275, column: 12, scope: !5476)
!5489 = !DILocation(line: 275, column: 3, scope: !5476)
!5490 = !DILocation(line: 276, column: 1, scope: !5397)
!5491 = !DISubprogram(name: "time64_to_tm", scope: !5408, file: !5408, line: 58, type: !5492, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5492 = !DISubroutineType(types: !5493)
!5493 = !{null, !221, !117, !5494}
!5494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5407, size: 64)
!5495 = distinct !DISubprogram(name: "fat_truncate_atime", scope: !2, file: !2, line: 287, type: !5496, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5500)
!5496 = !DISubroutineType(types: !5497)
!5497 = !{!316, !4954, !5498}
!5498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5499, size: 64)
!5499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !316)
!5500 = !{!5501, !5502, !5503, !5504}
!5501 = !DILocalVariable(name: "sbi", arg: 1, scope: !5495, file: !2, line: 287, type: !4954)
!5502 = !DILocalVariable(name: "ts", arg: 2, scope: !5495, file: !2, line: 288, type: !5498)
!5503 = !DILocalVariable(name: "seconds", scope: !5495, file: !2, line: 291, type: !221)
!5504 = !DILocalVariable(name: "remainder", scope: !5495, file: !2, line: 292, type: !973)
!5505 = !DILocation(line: 287, column: 66, scope: !5495)
!5506 = !DILocation(line: 288, column: 35, scope: !5495)
!5507 = !DILocation(line: 291, column: 2, scope: !5495)
!5508 = !DILocation(line: 291, column: 11, scope: !5495)
!5509 = !DILocation(line: 291, column: 21, scope: !5495)
!5510 = !DILocation(line: 291, column: 25, scope: !5495)
!5511 = !DILocation(line: 291, column: 48, scope: !5495)
!5512 = !DILocation(line: 291, column: 34, scope: !5495)
!5513 = !DILocation(line: 291, column: 32, scope: !5495)
!5514 = !DILocation(line: 292, column: 2, scope: !5495)
!5515 = !DILocation(line: 292, column: 6, scope: !5495)
!5516 = !DILocation(line: 294, column: 14, scope: !5495)
!5517 = !DILocation(line: 294, column: 2, scope: !5495)
!5518 = !DILocation(line: 296, column: 12, scope: !5495)
!5519 = !DILocation(line: 296, column: 36, scope: !5495)
!5520 = !DILocation(line: 296, column: 22, scope: !5495)
!5521 = !DILocation(line: 296, column: 20, scope: !5495)
!5522 = !DILocation(line: 296, column: 43, scope: !5495)
!5523 = !DILocation(line: 296, column: 41, scope: !5495)
!5524 = !DILocation(line: 296, column: 10, scope: !5495)
!5525 = !DILocation(line: 298, column: 28, scope: !5495)
!5526 = !DILocation(line: 298, column: 30, scope: !5495)
!5527 = !DILocation(line: 299, column: 1, scope: !5495)
!5528 = distinct !DISubprogram(name: "div_s64_rem", scope: !5529, file: !5529, line: 40, type: !5530, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5532)
!5529 = !DIFile(filename: "./include/linux/math64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d8ed26cb78f71dd5066a07a0684eae84")
!5530 = !DISubroutineType(types: !5531)
!5531 = !{!305, !305, !973, !1093}
!5532 = !{!5533, !5534, !5535}
!5533 = !DILocalVariable(name: "dividend", arg: 1, scope: !5528, file: !5529, line: 40, type: !305)
!5534 = !DILocalVariable(name: "divisor", arg: 2, scope: !5528, file: !5529, line: 40, type: !973)
!5535 = !DILocalVariable(name: "remainder", arg: 3, scope: !5528, file: !5529, line: 40, type: !1093)
!5536 = !DILocation(line: 40, column: 35, scope: !5528)
!5537 = !DILocation(line: 40, column: 49, scope: !5528)
!5538 = !DILocation(line: 40, column: 63, scope: !5528)
!5539 = !DILocation(line: 42, column: 15, scope: !5528)
!5540 = !DILocation(line: 42, column: 26, scope: !5528)
!5541 = !DILocation(line: 42, column: 24, scope: !5528)
!5542 = !DILocation(line: 42, column: 3, scope: !5528)
!5543 = !DILocation(line: 42, column: 13, scope: !5528)
!5544 = !DILocation(line: 43, column: 9, scope: !5528)
!5545 = !DILocation(line: 43, column: 20, scope: !5528)
!5546 = !DILocation(line: 43, column: 18, scope: !5528)
!5547 = !DILocation(line: 43, column: 2, scope: !5528)
!5548 = distinct !DISubprogram(name: "fat_truncate_mtime", scope: !2, file: !2, line: 304, type: !5496, scopeLine: 306, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5549)
!5549 = !{!5550, !5551}
!5550 = !DILocalVariable(name: "sbi", arg: 1, scope: !5548, file: !2, line: 304, type: !4954)
!5551 = !DILocalVariable(name: "ts", arg: 2, scope: !5548, file: !2, line: 305, type: !5498)
!5552 = !DILocation(line: 304, column: 66, scope: !5548)
!5553 = !DILocation(line: 305, column: 35, scope: !5548)
!5554 = !DILocation(line: 307, column: 37, scope: !5548)
!5555 = !DILocation(line: 307, column: 9, scope: !5548)
!5556 = !DILocation(line: 307, column: 2, scope: !5548)
!5557 = distinct !DISubprogram(name: "fat_timespec64_trunc_2secs", scope: !2, file: !2, line: 279, type: !5558, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5560)
!5558 = !DISubroutineType(types: !5559)
!5559 = !{!316, !316}
!5560 = !{!5561}
!5561 = !DILocalVariable(name: "ts", arg: 1, scope: !5557, file: !2, line: 279, type: !316)
!5562 = !DILocation(line: 279, column: 78, scope: !5557)
!5563 = !DILocation(line: 281, column: 28, scope: !5557)
!5564 = !DILocation(line: 281, column: 33, scope: !5557)
!5565 = !DILocation(line: 281, column: 40, scope: !5557)
!5566 = !DILocation(line: 281, column: 2, scope: !5557)
!5567 = distinct !DISubprogram(name: "fat_truncate_time", scope: !2, file: !2, line: 314, type: !5568, scopeLine: 315, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5570)
!5568 = !DISubroutineType(types: !5569)
!5569 = !{!117, !400, !5256, !117}
!5570 = !{!5571, !5572, !5573, !5574, !5575}
!5571 = !DILocalVariable(name: "inode", arg: 1, scope: !5567, file: !2, line: 314, type: !400)
!5572 = !DILocalVariable(name: "now", arg: 2, scope: !5567, file: !2, line: 314, type: !5256)
!5573 = !DILocalVariable(name: "flags", arg: 3, scope: !5567, file: !2, line: 314, type: !117)
!5574 = !DILocalVariable(name: "sbi", scope: !5567, file: !2, line: 316, type: !4734)
!5575 = !DILocalVariable(name: "ts", scope: !5567, file: !2, line: 317, type: !316)
!5576 = !DILocation(line: 314, column: 37, scope: !5567)
!5577 = !DILocation(line: 314, column: 63, scope: !5567)
!5578 = !DILocation(line: 314, column: 72, scope: !5567)
!5579 = !DILocation(line: 316, column: 2, scope: !5567)
!5580 = !DILocation(line: 316, column: 24, scope: !5567)
!5581 = !DILocation(line: 316, column: 39, scope: !5567)
!5582 = !DILocation(line: 316, column: 46, scope: !5567)
!5583 = !DILocation(line: 316, column: 30, scope: !5567)
!5584 = !DILocation(line: 317, column: 2, scope: !5567)
!5585 = !DILocation(line: 317, column: 20, scope: !5567)
!5586 = !DILocation(line: 319, column: 6, scope: !5587)
!5587 = distinct !DILexicalBlock(scope: !5567, file: !2, line: 319, column: 6)
!5588 = !DILocation(line: 319, column: 13, scope: !5587)
!5589 = !DILocation(line: 319, column: 19, scope: !5587)
!5590 = !DILocation(line: 319, column: 6, scope: !5567)
!5591 = !DILocation(line: 320, column: 3, scope: !5587)
!5592 = !DILocation(line: 322, column: 6, scope: !5593)
!5593 = distinct !DILexicalBlock(scope: !5567, file: !2, line: 322, column: 6)
!5594 = !DILocation(line: 322, column: 10, scope: !5593)
!5595 = !DILocation(line: 322, column: 6, scope: !5567)
!5596 = !DILocation(line: 323, column: 7, scope: !5597)
!5597 = distinct !DILexicalBlock(scope: !5593, file: !2, line: 322, column: 19)
!5598 = !DILocation(line: 324, column: 8, scope: !5597)
!5599 = !DILocation(line: 324, column: 21, scope: !5597)
!5600 = !DILocation(line: 325, column: 2, scope: !5597)
!5601 = !DILocation(line: 327, column: 6, scope: !5602)
!5602 = distinct !DILexicalBlock(scope: !5567, file: !2, line: 327, column: 6)
!5603 = !DILocation(line: 327, column: 12, scope: !5602)
!5604 = !DILocation(line: 327, column: 6, scope: !5567)
!5605 = !DILocation(line: 328, column: 3, scope: !5602)
!5606 = !DILocation(line: 328, column: 10, scope: !5602)
!5607 = !DILocation(line: 328, column: 20, scope: !5602)
!5608 = !DILocation(line: 328, column: 39, scope: !5602)
!5609 = !DILocation(line: 328, column: 44, scope: !5602)
!5610 = !DILocation(line: 334, column: 6, scope: !5611)
!5611 = distinct !DILexicalBlock(scope: !5567, file: !2, line: 334, column: 6)
!5612 = !DILocation(line: 334, column: 12, scope: !5611)
!5613 = !DILocation(line: 334, column: 6, scope: !5567)
!5614 = !DILocation(line: 335, column: 3, scope: !5611)
!5615 = !DILocation(line: 335, column: 10, scope: !5611)
!5616 = !DILocation(line: 335, column: 20, scope: !5611)
!5617 = !DILocation(line: 335, column: 42, scope: !5611)
!5618 = !DILocation(line: 336, column: 33, scope: !5611)
!5619 = !DILocation(line: 336, column: 38, scope: !5611)
!5620 = !DILocation(line: 336, column: 14, scope: !5611)
!5621 = !DILocation(line: 338, column: 2, scope: !5567)
!5622 = !DILocation(line: 339, column: 1, scope: !5567)
!5623 = !DISubprogram(name: "current_time", scope: !80, file: !80, line: 1514, type: !5624, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5624 = !DISubroutineType(types: !5625)
!5625 = !{!316, !400}
!5626 = distinct !DISubprogram(name: "inode_set_ctime_to_ts", scope: !80, file: !80, line: 1592, type: !5627, scopeLine: 1594, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5629)
!5627 = !DISubroutineType(types: !5628)
!5628 = !{!316, !400, !316}
!5629 = !{!5630, !5631}
!5630 = !DILocalVariable(name: "inode", arg: 1, scope: !5626, file: !80, line: 1592, type: !400)
!5631 = !DILocalVariable(name: "ts", arg: 2, scope: !5626, file: !80, line: 1593, type: !316)
!5632 = !DILocation(line: 1592, column: 69, scope: !5626)
!5633 = !DILocation(line: 1593, column: 31, scope: !5626)
!5634 = !DILocation(line: 1595, column: 2, scope: !5626)
!5635 = !DILocation(line: 1595, column: 9, scope: !5626)
!5636 = !DILocation(line: 1595, column: 21, scope: !5626)
!5637 = !DILocation(line: 1596, column: 9, scope: !5626)
!5638 = !DILocation(line: 1596, column: 2, scope: !5626)
!5639 = distinct !DISubprogram(name: "fat_update_time", scope: !2, file: !2, line: 342, type: !4474, scopeLine: 343, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5640)
!5640 = !{!5641, !5642, !5643}
!5641 = !DILocalVariable(name: "inode", arg: 1, scope: !5639, file: !2, line: 342, type: !400)
!5642 = !DILocalVariable(name: "flags", arg: 2, scope: !5639, file: !2, line: 342, type: !117)
!5643 = !DILocalVariable(name: "dirty_flags", scope: !5639, file: !2, line: 344, type: !117)
!5644 = !DILocation(line: 342, column: 35, scope: !5639)
!5645 = !DILocation(line: 342, column: 46, scope: !5639)
!5646 = !DILocation(line: 344, column: 2, scope: !5639)
!5647 = !DILocation(line: 344, column: 6, scope: !5639)
!5648 = !DILocation(line: 346, column: 6, scope: !5649)
!5649 = distinct !DILexicalBlock(scope: !5639, file: !2, line: 346, column: 6)
!5650 = !DILocation(line: 346, column: 13, scope: !5649)
!5651 = !DILocation(line: 346, column: 19, scope: !5649)
!5652 = !DILocation(line: 346, column: 6, scope: !5639)
!5653 = !DILocation(line: 347, column: 3, scope: !5649)
!5654 = !DILocation(line: 349, column: 6, scope: !5655)
!5655 = distinct !DILexicalBlock(scope: !5639, file: !2, line: 349, column: 6)
!5656 = !DILocation(line: 349, column: 12, scope: !5655)
!5657 = !DILocation(line: 349, column: 6, scope: !5639)
!5658 = !DILocation(line: 350, column: 21, scope: !5659)
!5659 = distinct !DILexicalBlock(scope: !5655, file: !2, line: 349, column: 45)
!5660 = !DILocation(line: 350, column: 34, scope: !5659)
!5661 = !DILocation(line: 350, column: 3, scope: !5659)
!5662 = !DILocation(line: 351, column: 7, scope: !5663)
!5663 = distinct !DILexicalBlock(scope: !5659, file: !2, line: 351, column: 7)
!5664 = !DILocation(line: 351, column: 14, scope: !5663)
!5665 = !DILocation(line: 351, column: 20, scope: !5663)
!5666 = !DILocation(line: 351, column: 28, scope: !5663)
!5667 = !DILocation(line: 351, column: 7, scope: !5659)
!5668 = !DILocation(line: 352, column: 16, scope: !5663)
!5669 = !DILocation(line: 352, column: 4, scope: !5663)
!5670 = !DILocation(line: 354, column: 16, scope: !5663)
!5671 = !DILocation(line: 355, column: 2, scope: !5659)
!5672 = !DILocation(line: 357, column: 21, scope: !5639)
!5673 = !DILocation(line: 357, column: 28, scope: !5639)
!5674 = !DILocation(line: 357, column: 2, scope: !5639)
!5675 = !DILocation(line: 358, column: 2, scope: !5639)
!5676 = !DILocation(line: 359, column: 1, scope: !5639)
!5677 = !DISubprogram(name: "__mark_inode_dirty", scope: !80, file: !80, line: 2301, type: !2348, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5678 = distinct !DISubprogram(name: "fat_sync_bhs", scope: !2, file: !2, line: 362, type: !5679, scopeLine: 363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5682)
!5679 = !DISubroutineType(types: !5680)
!5680 = !{!117, !5681, !117}
!5681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4858, size: 64)
!5682 = !{!5683, !5684, !5685, !5686}
!5683 = !DILocalVariable(name: "bhs", arg: 1, scope: !5678, file: !2, line: 362, type: !5681)
!5684 = !DILocalVariable(name: "nr_bhs", arg: 2, scope: !5678, file: !2, line: 362, type: !117)
!5685 = !DILocalVariable(name: "i", scope: !5678, file: !2, line: 364, type: !117)
!5686 = !DILocalVariable(name: "err", scope: !5678, file: !2, line: 364, type: !117)
!5687 = !DILocation(line: 362, column: 39, scope: !5678)
!5688 = !DILocation(line: 362, column: 48, scope: !5678)
!5689 = !DILocation(line: 364, column: 2, scope: !5678)
!5690 = !DILocation(line: 364, column: 6, scope: !5678)
!5691 = !DILocation(line: 364, column: 9, scope: !5678)
!5692 = !DILocation(line: 366, column: 9, scope: !5693)
!5693 = distinct !DILexicalBlock(scope: !5678, file: !2, line: 366, column: 2)
!5694 = !DILocation(line: 366, column: 7, scope: !5693)
!5695 = !DILocation(line: 366, column: 14, scope: !5696)
!5696 = distinct !DILexicalBlock(scope: !5693, file: !2, line: 366, column: 2)
!5697 = !DILocation(line: 366, column: 18, scope: !5696)
!5698 = !DILocation(line: 366, column: 16, scope: !5696)
!5699 = !DILocation(line: 366, column: 2, scope: !5693)
!5700 = !DILocation(line: 367, column: 22, scope: !5696)
!5701 = !DILocation(line: 367, column: 26, scope: !5696)
!5702 = !DILocation(line: 367, column: 3, scope: !5696)
!5703 = !DILocation(line: 366, column: 27, scope: !5696)
!5704 = !DILocation(line: 366, column: 2, scope: !5696)
!5705 = distinct !{!5705, !5699, !5706, !5229, !5230}
!5706 = !DILocation(line: 367, column: 31, scope: !5693)
!5707 = !DILocation(line: 369, column: 9, scope: !5708)
!5708 = distinct !DILexicalBlock(scope: !5678, file: !2, line: 369, column: 2)
!5709 = !DILocation(line: 369, column: 7, scope: !5708)
!5710 = !DILocation(line: 369, column: 14, scope: !5711)
!5711 = distinct !DILexicalBlock(scope: !5708, file: !2, line: 369, column: 2)
!5712 = !DILocation(line: 369, column: 18, scope: !5711)
!5713 = !DILocation(line: 369, column: 16, scope: !5711)
!5714 = !DILocation(line: 369, column: 2, scope: !5708)
!5715 = !DILocation(line: 370, column: 18, scope: !5716)
!5716 = distinct !DILexicalBlock(scope: !5711, file: !2, line: 369, column: 31)
!5717 = !DILocation(line: 370, column: 22, scope: !5716)
!5718 = !DILocation(line: 370, column: 3, scope: !5716)
!5719 = !DILocation(line: 371, column: 8, scope: !5720)
!5720 = distinct !DILexicalBlock(scope: !5716, file: !2, line: 371, column: 7)
!5721 = !DILocation(line: 371, column: 12, scope: !5720)
!5722 = !DILocation(line: 371, column: 32, scope: !5720)
!5723 = !DILocation(line: 371, column: 36, scope: !5720)
!5724 = !DILocation(line: 371, column: 16, scope: !5720)
!5725 = !DILocation(line: 371, column: 7, scope: !5716)
!5726 = !DILocation(line: 372, column: 8, scope: !5720)
!5727 = !DILocation(line: 372, column: 4, scope: !5720)
!5728 = !DILocation(line: 373, column: 2, scope: !5716)
!5729 = !DILocation(line: 369, column: 27, scope: !5711)
!5730 = !DILocation(line: 369, column: 2, scope: !5711)
!5731 = distinct !{!5731, !5714, !5732, !5229, !5230}
!5732 = !DILocation(line: 373, column: 2, scope: !5708)
!5733 = !DILocation(line: 374, column: 9, scope: !5678)
!5734 = !DILocation(line: 375, column: 1, scope: !5678)
!5735 = !DILocation(line: 374, column: 2, scope: !5678)
!5736 = !DISubprogram(name: "write_dirty_buffer", scope: !169, file: !169, line: 243, type: !5737, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5737 = !DISubroutineType(types: !5738)
!5738 = !{null, !4858, !5739}
!5739 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_opf_t", file: !2614, line: 256, baseType: !202)
!5740 = distinct !DISubprogram(name: "wait_on_buffer", scope: !169, file: !169, line: 369, type: !4979, scopeLine: 370, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5741)
!5741 = !{!5742}
!5742 = !DILocalVariable(name: "bh", arg: 1, scope: !5740, file: !169, line: 369, type: !4858)
!5743 = !DILocation(line: 369, column: 55, scope: !5740)
!5744 = !DILocation(line: 371, column: 2, scope: !5740)
!5745 = !DILocation(line: 371, column: 2, scope: !5746)
!5746 = distinct !DILexicalBlock(scope: !5740, file: !169, line: 371, column: 2)
!5747 = !DILocation(line: 372, column: 20, scope: !5748)
!5748 = distinct !DILexicalBlock(scope: !5740, file: !169, line: 372, column: 6)
!5749 = !DILocation(line: 372, column: 6, scope: !5748)
!5750 = !DILocation(line: 372, column: 6, scope: !5740)
!5751 = !DILocation(line: 373, column: 20, scope: !5748)
!5752 = !DILocation(line: 373, column: 3, scope: !5748)
!5753 = !DILocation(line: 374, column: 1, scope: !5740)
!5754 = distinct !DISubprogram(name: "buffer_uptodate", scope: !169, file: !169, line: 165, type: !5755, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5759)
!5755 = !DISubroutineType(types: !5756)
!5756 = !{!117, !5757}
!5757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5758, size: 64)
!5758 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4859)
!5759 = !{!5760}
!5760 = !DILocalVariable(name: "bh", arg: 1, scope: !5754, file: !169, line: 165, type: !5757)
!5761 = !DILocation(line: 165, column: 70, scope: !5754)
!5762 = !DILocation(line: 171, column: 9, scope: !5754)
!5763 = !DILocation(line: 171, column: 2, scope: !5754)
!5764 = !DISubprogram(name: "__bread_gfp", scope: !169, file: !169, line: 235, type: !5765, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5765 = !DISubroutineType(types: !5766)
!5766 = !{!4858, !2612, !1748, !28, !225}
!5767 = !DISubprogram(name: "__brelse", scope: !169, file: !169, line: 232, type: !4979, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5768 = !DILocation(line: 112, column: 2, scope: !5769)
!5769 = distinct !DILexicalBlock(scope: !4608, file: !4609, line: 112, column: 2)
!5770 = !DILocation(line: 112, column: 2, scope: !4608)
!5771 = !DILocation(line: 113, column: 1, scope: !4608)
!5772 = distinct !DISubprogram(name: "buffer_locked", scope: !169, file: !169, line: 124, type: !5755, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5773)
!5773 = !{!5774}
!5774 = !DILocalVariable(name: "bh", arg: 1, scope: !5772, file: !169, line: 124, type: !5757)
!5775 = !DILocation(line: 124, column: 1, scope: !5772)
!5776 = !DISubprogram(name: "__wait_on_buffer", scope: !169, file: !169, line: 226, type: !4979, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5777 = distinct !DISubprogram(name: "const_test_bit", scope: !5778, file: !5778, line: 166, type: !5779, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5781)
!5778 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!5779 = !DISubroutineType(types: !5780)
!5780 = !{!755, !484, !4575}
!5781 = !{!5782, !5783, !5784, !5785, !5786}
!5782 = !DILocalVariable(name: "nr", arg: 1, scope: !5777, file: !5778, line: 166, type: !484)
!5783 = !DILocalVariable(name: "addr", arg: 2, scope: !5777, file: !5778, line: 166, type: !4575)
!5784 = !DILocalVariable(name: "p", scope: !5777, file: !5778, line: 168, type: !4574)
!5785 = !DILocalVariable(name: "mask", scope: !5777, file: !5778, line: 169, type: !484)
!5786 = !DILocalVariable(name: "val", scope: !5777, file: !5778, line: 170, type: !484)
!5787 = !DILocation(line: 166, column: 30, scope: !5777)
!5788 = !DILocation(line: 166, column: 64, scope: !5777)
!5789 = !DILocation(line: 168, column: 2, scope: !5777)
!5790 = !DILocation(line: 168, column: 23, scope: !5777)
!5791 = !DILocation(line: 168, column: 50, scope: !5777)
!5792 = !DILocation(line: 168, column: 57, scope: !5777)
!5793 = !DILocation(line: 168, column: 55, scope: !5777)
!5794 = !DILocation(line: 169, column: 2, scope: !5777)
!5795 = !DILocation(line: 169, column: 16, scope: !5777)
!5796 = !DILocation(line: 169, column: 23, scope: !5777)
!5797 = !DILocation(line: 170, column: 2, scope: !5777)
!5798 = !DILocation(line: 170, column: 16, scope: !5777)
!5799 = !DILocation(line: 170, column: 23, scope: !5777)
!5800 = !DILocation(line: 170, column: 22, scope: !5777)
!5801 = !DILocation(line: 172, column: 12, scope: !5777)
!5802 = !DILocation(line: 172, column: 18, scope: !5777)
!5803 = !DILocation(line: 172, column: 16, scope: !5777)
!5804 = !DILocation(line: 172, column: 10, scope: !5777)
!5805 = !DILocation(line: 172, column: 9, scope: !5777)
!5806 = !DILocation(line: 173, column: 1, scope: !5777)
!5807 = !DILocation(line: 172, column: 2, scope: !5777)
!5808 = distinct !DISubprogram(name: "_test_bit", scope: !5809, file: !5809, line: 139, type: !5779, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5810)
!5809 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!5810 = !{!5811, !5812}
!5811 = !DILocalVariable(name: "nr", arg: 1, scope: !5808, file: !5809, line: 139, type: !484)
!5812 = !DILocalVariable(name: "addr", arg: 2, scope: !5808, file: !5809, line: 139, type: !4575)
!5813 = !DILocation(line: 139, column: 25, scope: !5808)
!5814 = !DILocation(line: 139, column: 59, scope: !5808)
!5815 = !DILocation(line: 141, column: 25, scope: !5808)
!5816 = !DILocation(line: 141, column: 32, scope: !5808)
!5817 = !DILocation(line: 141, column: 30, scope: !5808)
!5818 = !DILocation(line: 141, column: 2, scope: !5808)
!5819 = !DILocation(line: 142, column: 23, scope: !5808)
!5820 = !DILocation(line: 142, column: 27, scope: !5808)
!5821 = !DILocation(line: 142, column: 9, scope: !5808)
!5822 = !DILocation(line: 142, column: 2, scope: !5808)
!5823 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5824, file: !5824, line: 66, type: !5825, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5830)
!5824 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5825 = !DISubroutineType(types: !5826)
!5826 = !{null, !5827, !606}
!5827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5828, size: 64)
!5828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5829)
!5829 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5830 = !{!5831, !5832}
!5831 = !DILocalVariable(name: "v", arg: 1, scope: !5823, file: !5824, line: 66, type: !5827)
!5832 = !DILocalVariable(name: "size", arg: 2, scope: !5823, file: !5824, line: 66, type: !606)
!5833 = !DILocation(line: 66, column: 73, scope: !5823)
!5834 = !DILocation(line: 66, column: 83, scope: !5823)
!5835 = !DILocation(line: 68, column: 19, scope: !5823)
!5836 = !DILocation(line: 68, column: 22, scope: !5823)
!5837 = !DILocation(line: 68, column: 2, scope: !5823)
!5838 = !DILocation(line: 69, column: 2, scope: !5823)
!5839 = !DILocation(line: 70, column: 1, scope: !5823)
!5840 = distinct !DISubprogram(name: "arch_test_bit", scope: !5841, file: !5841, line: 237, type: !5779, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5842)
!5841 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!5842 = !{!5843, !5844}
!5843 = !DILocalVariable(name: "nr", arg: 1, scope: !5840, file: !5841, line: 237, type: !484)
!5844 = !DILocalVariable(name: "addr", arg: 2, scope: !5840, file: !5841, line: 237, type: !4575)
!5845 = !DILocation(line: 237, column: 29, scope: !5840)
!5846 = !DILocation(line: 237, column: 63, scope: !5840)
!5847 = !DILocation(line: 239, column: 30, scope: !5840)
!5848 = !DILocation(line: 239, column: 9, scope: !5840)
!5849 = !DILocation(line: 239, column: 54, scope: !5840)
!5850 = !DILocation(line: 239, column: 58, scope: !5840)
!5851 = !DILocation(line: 239, column: 36, scope: !5840)
!5852 = !DILocation(line: 240, column: 26, scope: !5840)
!5853 = !DILocation(line: 240, column: 30, scope: !5840)
!5854 = !DILocation(line: 240, column: 8, scope: !5840)
!5855 = !DILocation(line: 239, column: 2, scope: !5840)
!5856 = distinct !DISubprogram(name: "kasan_check_read", scope: !5857, file: !5857, line: 40, type: !5858, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5860)
!5857 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5858 = !DISubroutineType(types: !5859)
!5859 = !{!755, !5827, !28}
!5860 = !{!5861, !5862}
!5861 = !DILocalVariable(name: "p", arg: 1, scope: !5856, file: !5857, line: 40, type: !5827)
!5862 = !DILocalVariable(name: "size", arg: 2, scope: !5856, file: !5857, line: 40, type: !28)
!5863 = !DILocation(line: 40, column: 58, scope: !5856)
!5864 = !DILocation(line: 40, column: 74, scope: !5856)
!5865 = !DILocation(line: 42, column: 2, scope: !5856)
!5866 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5867, file: !5867, line: 229, type: !5868, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5870)
!5867 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5868 = !DISubroutineType(types: !5869)
!5869 = !{null, !5827, !606, !117}
!5870 = !{!5871, !5872, !5873}
!5871 = !DILocalVariable(name: "ptr", arg: 1, scope: !5866, file: !5867, line: 229, type: !5827)
!5872 = !DILocalVariable(name: "size", arg: 2, scope: !5866, file: !5867, line: 229, type: !606)
!5873 = !DILocalVariable(name: "type", arg: 3, scope: !5866, file: !5867, line: 230, type: !117)
!5874 = !DILocation(line: 229, column: 60, scope: !5866)
!5875 = !DILocation(line: 229, column: 72, scope: !5866)
!5876 = !DILocation(line: 230, column: 15, scope: !5866)
!5877 = !DILocation(line: 230, column: 23, scope: !5866)
!5878 = distinct !DISubprogram(name: "constant_test_bit", scope: !5841, file: !5841, line: 204, type: !5879, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5881)
!5879 = !DISubroutineType(types: !5880)
!5880 = !{!755, !320, !4575}
!5881 = !{!5882, !5883}
!5882 = !DILocalVariable(name: "nr", arg: 1, scope: !5878, file: !5841, line: 204, type: !320)
!5883 = !DILocalVariable(name: "addr", arg: 2, scope: !5878, file: !5841, line: 204, type: !4575)
!5884 = !DILocation(line: 204, column: 52, scope: !5878)
!5885 = !DILocation(line: 204, column: 86, scope: !5878)
!5886 = !DILocation(line: 206, column: 19, scope: !5878)
!5887 = !DILocation(line: 206, column: 22, scope: !5878)
!5888 = !DILocation(line: 206, column: 15, scope: !5878)
!5889 = !DILocation(line: 207, column: 4, scope: !5878)
!5890 = !DILocation(line: 207, column: 9, scope: !5878)
!5891 = !DILocation(line: 207, column: 12, scope: !5878)
!5892 = !DILocation(line: 206, column: 44, scope: !5878)
!5893 = !DILocation(line: 207, column: 37, scope: !5878)
!5894 = !DILocation(line: 206, column: 2, scope: !5878)
!5895 = distinct !DISubprogram(name: "variable_test_bit", scope: !5841, file: !5841, line: 224, type: !5879, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5896)
!5896 = !{!5897, !5898, !5899}
!5897 = !DILocalVariable(name: "nr", arg: 1, scope: !5895, file: !5841, line: 224, type: !320)
!5898 = !DILocalVariable(name: "addr", arg: 2, scope: !5895, file: !5841, line: 224, type: !4575)
!5899 = !DILocalVariable(name: "oldbit", scope: !5895, file: !5841, line: 226, type: !755)
!5900 = !DILocation(line: 224, column: 52, scope: !5895)
!5901 = !DILocation(line: 224, column: 86, scope: !5895)
!5902 = !DILocation(line: 226, column: 2, scope: !5895)
!5903 = !DILocation(line: 226, column: 7, scope: !5895)
!5904 = !DILocation(line: 231, column: 33, scope: !5895)
!5905 = !DILocation(line: 231, column: 46, scope: !5895)
!5906 = !DILocation(line: 228, column: 2, scope: !5895)
!5907 = !{i64 2148218599, i64 2148218673}
!5908 = !DILocation(line: 233, column: 9, scope: !5895)
!5909 = !{i8 0, i8 2}
!5910 = !DILocation(line: 234, column: 1, scope: !5895)
!5911 = !DILocation(line: 233, column: 2, scope: !5895)
!5912 = distinct !DISubprogram(name: "generic_test_bit_acquire", scope: !5778, file: !5778, line: 137, type: !5779, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5913)
!5913 = !{!5914, !5915, !5916, !5917}
!5914 = !DILocalVariable(name: "nr", arg: 1, scope: !5912, file: !5778, line: 137, type: !484)
!5915 = !DILocalVariable(name: "addr", arg: 2, scope: !5912, file: !5778, line: 137, type: !4575)
!5916 = !DILocalVariable(name: "p", scope: !5912, file: !5778, line: 139, type: !2303)
!5917 = !DILocalVariable(name: "___p1", scope: !5918, file: !5778, line: 140, type: !484)
!5918 = distinct !DILexicalBlock(scope: !5912, file: !5778, line: 140, column: 16)
!5919 = !DILocation(line: 137, column: 40, scope: !5912)
!5920 = !DILocation(line: 137, column: 74, scope: !5912)
!5921 = !DILocation(line: 139, column: 2, scope: !5912)
!5922 = !DILocation(line: 139, column: 17, scope: !5912)
!5923 = !DILocation(line: 139, column: 39, scope: !5912)
!5924 = !DILocation(line: 139, column: 47, scope: !5912)
!5925 = !DILocation(line: 139, column: 45, scope: !5912)
!5926 = !DILocation(line: 140, column: 16, scope: !5918)
!5927 = !DILocation(line: 140, column: 16, scope: !5928)
!5928 = distinct !DILexicalBlock(scope: !5918, file: !5778, line: 140, column: 16)
!5929 = !DILocation(line: 140, column: 16, scope: !5930)
!5930 = distinct !DILexicalBlock(scope: !5928, file: !5778, line: 140, column: 16)
!5931 = !DILocation(line: 140, column: 16, scope: !5932)
!5932 = distinct !DILexicalBlock(scope: !5918, file: !5778, line: 140, column: 16)
!5933 = !{i64 2148193288}
!5934 = !DILocation(line: 140, column: 16, scope: !5912)
!5935 = !DILocation(line: 140, column: 40, scope: !5912)
!5936 = !DILocation(line: 140, column: 43, scope: !5912)
!5937 = !DILocation(line: 140, column: 36, scope: !5912)
!5938 = !DILocation(line: 140, column: 13, scope: !5912)
!5939 = !DILocation(line: 140, column: 9, scope: !5912)
!5940 = !DILocation(line: 141, column: 1, scope: !5912)
!5941 = !DILocation(line: 140, column: 2, scope: !5912)
!5942 = distinct !DISubprogram(name: "_test_bit_acquire", scope: !5809, file: !5809, line: 151, type: !5779, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5943)
!5943 = !{!5944, !5945}
!5944 = !DILocalVariable(name: "nr", arg: 1, scope: !5942, file: !5809, line: 151, type: !484)
!5945 = !DILocalVariable(name: "addr", arg: 2, scope: !5942, file: !5809, line: 151, type: !4575)
!5946 = !DILocation(line: 151, column: 33, scope: !5942)
!5947 = !DILocation(line: 151, column: 67, scope: !5942)
!5948 = !DILocation(line: 153, column: 25, scope: !5942)
!5949 = !DILocation(line: 153, column: 32, scope: !5942)
!5950 = !DILocation(line: 153, column: 30, scope: !5942)
!5951 = !DILocation(line: 153, column: 2, scope: !5942)
!5952 = !DILocation(line: 154, column: 31, scope: !5942)
!5953 = !DILocation(line: 154, column: 35, scope: !5942)
!5954 = !DILocation(line: 154, column: 9, scope: !5942)
!5955 = !DILocation(line: 154, column: 2, scope: !5942)
!5956 = distinct !DISubprogram(name: "arch_test_bit_acquire", scope: !5841, file: !5841, line: 244, type: !5779, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5957)
!5957 = !{!5958, !5959}
!5958 = !DILocalVariable(name: "nr", arg: 1, scope: !5956, file: !5841, line: 244, type: !484)
!5959 = !DILocalVariable(name: "addr", arg: 2, scope: !5956, file: !5841, line: 244, type: !4575)
!5960 = !DILocation(line: 244, column: 37, scope: !5956)
!5961 = !DILocation(line: 244, column: 71, scope: !5956)
!5962 = !DILocation(line: 246, column: 30, scope: !5956)
!5963 = !DILocation(line: 246, column: 9, scope: !5956)
!5964 = !DILocation(line: 246, column: 62, scope: !5956)
!5965 = !DILocation(line: 246, column: 66, scope: !5956)
!5966 = !DILocation(line: 246, column: 36, scope: !5956)
!5967 = !DILocation(line: 247, column: 26, scope: !5956)
!5968 = !DILocation(line: 247, column: 30, scope: !5956)
!5969 = !DILocation(line: 247, column: 8, scope: !5956)
!5970 = !DILocation(line: 246, column: 2, scope: !5956)
!5971 = distinct !DISubprogram(name: "constant_test_bit_acquire", scope: !5841, file: !5841, line: 210, type: !5879, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !5972)
!5972 = !{!5973, !5974, !5975}
!5973 = !DILocalVariable(name: "nr", arg: 1, scope: !5971, file: !5841, line: 210, type: !320)
!5974 = !DILocalVariable(name: "addr", arg: 2, scope: !5971, file: !5841, line: 210, type: !4575)
!5975 = !DILocalVariable(name: "oldbit", scope: !5971, file: !5841, line: 212, type: !755)
!5976 = !DILocation(line: 210, column: 60, scope: !5971)
!5977 = !DILocation(line: 210, column: 94, scope: !5971)
!5978 = !DILocation(line: 212, column: 2, scope: !5971)
!5979 = !DILocation(line: 212, column: 7, scope: !5971)
!5980 = !DILocation(line: 217, column: 33, scope: !5971)
!5981 = !DILocation(line: 217, column: 39, scope: !5971)
!5982 = !DILocation(line: 217, column: 42, scope: !5971)
!5983 = !DILocation(line: 217, column: 15, scope: !5971)
!5984 = !DILocation(line: 218, column: 21, scope: !5971)
!5985 = !DILocation(line: 218, column: 24, scope: !5971)
!5986 = !DILocation(line: 218, column: 17, scope: !5971)
!5987 = !DILocation(line: 214, column: 2, scope: !5971)
!5988 = !{i64 715572, i64 2148218238}
!5989 = !DILocation(line: 221, column: 9, scope: !5971)
!5990 = !DILocation(line: 222, column: 1, scope: !5971)
!5991 = !DILocation(line: 221, column: 2, scope: !5971)
