; ModuleID = 'drivers/gpu/drm/drm_modeset_lock.c'
source_filename = "drivers/gpu/drm/drm_modeset_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_modeset_lock_all: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_modeset_lock_all ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_modeset_unlock_all: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_modeset_unlock_all ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_warn_on_modeset_not_all_locked: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_warn_on_modeset_not_all_locked ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_modeset_acquire_init: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_modeset_acquire_init ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_modeset_acquire_fini: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_modeset_acquire_fini ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_modeset_drop_locks: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_modeset_drop_locks ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_modeset_backoff: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_modeset_backoff ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_modeset_lock_init: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_modeset_lock_init ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_modeset_lock: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_modeset_lock ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_modeset_lock_single_interruptible: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_modeset_lock_single_interruptible ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_modeset_unlock: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_modeset_unlock ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_modeset_lock_all_ctx: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_modeset_lock_all_ctx ; .previous"

%struct.ww_class = type { %struct.atomic64_t, %struct.lock_class_key, %struct.lock_class_key, ptr, ptr, i32 }
%struct.atomic64_t = type { i64 }
%struct.lock_class_key = type {}
%struct.pcpu_hot = type { %union.anon.14 }
%union.anon.14 = type { %struct.anon.15, [16 x i8] }
%struct.anon.15 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.13, ptr, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.mutex, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.13 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.drm_modeset_acquire_ctx = type { %struct.ww_acquire_ctx, ptr, i32, %struct.list_head, i8, i8 }
%struct.ww_acquire_ctx = type { ptr, i64, i32, i16, i16 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i64, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i64, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }

@.str = private unnamed_addr constant [35 x i8] c"drivers/gpu/drm/drm_modeset_lock.c\00", align 1, !dbg !0
@__UNIQUE_ID___addressable_drm_modeset_lock_all308 = internal global ptr @drm_modeset_lock_all, section ".discard.addressable", align 8, !dbg !7
@__UNIQUE_ID___addressable_drm_modeset_unlock_all309 = internal global ptr @drm_modeset_unlock_all, section ".discard.addressable", align 8, !dbg !5843
@oops_in_progress = external dso_local global i32, align 4
@__UNIQUE_ID___addressable_drm_warn_on_modeset_not_all_locked310 = internal global ptr @drm_warn_on_modeset_not_all_locked, section ".discard.addressable", align 8, !dbg !5845
@crtc_ww_class = internal global %struct.ww_class { %struct.atomic64_t zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, ptr @.str.2, ptr @.str.3, i32 0 }, align 8, !dbg !5878
@__UNIQUE_ID___addressable_drm_modeset_acquire_init311 = internal global ptr @drm_modeset_acquire_init, section ".discard.addressable", align 8, !dbg !5847
@__UNIQUE_ID___addressable_drm_modeset_acquire_fini312 = internal global ptr @drm_modeset_acquire_fini, section ".discard.addressable", align 8, !dbg !5849
@__UNIQUE_ID___addressable_drm_modeset_drop_locks313 = internal global ptr @drm_modeset_drop_locks, section ".discard.addressable", align 8, !dbg !5851
@__UNIQUE_ID___addressable_drm_modeset_backoff314 = internal global ptr @drm_modeset_backoff, section ".discard.addressable", align 8, !dbg !5853
@__UNIQUE_ID___addressable_drm_modeset_lock_init315 = internal global ptr @drm_modeset_lock_init, section ".discard.addressable", align 8, !dbg !5855
@__UNIQUE_ID___addressable_drm_modeset_lock316 = internal global ptr @drm_modeset_lock, section ".discard.addressable", align 8, !dbg !5857
@__UNIQUE_ID___addressable_drm_modeset_lock_single_interruptible317 = internal global ptr @drm_modeset_lock_single_interruptible, section ".discard.addressable", align 8, !dbg !5859
@__UNIQUE_ID___addressable_drm_modeset_unlock318 = internal global ptr @drm_modeset_unlock, section ".discard.addressable", align 8, !dbg !5861
@__UNIQUE_ID___addressable_drm_modeset_lock_all_ctx319 = internal global ptr @drm_modeset_lock_all_ctx, section ".discard.addressable", align 8, !dbg !5863
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5865
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str.2 = private unnamed_addr constant [22 x i8] c"crtc_ww_class_acquire\00", align 1, !dbg !5870
@.str.3 = private unnamed_addr constant [20 x i8] c"crtc_ww_class_mutex\00", align 1, !dbg !5875
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID___addressable_drm_modeset_lock_all308, ptr @__UNIQUE_ID___addressable_drm_modeset_unlock_all309, ptr @__UNIQUE_ID___addressable_drm_warn_on_modeset_not_all_locked310, ptr @__UNIQUE_ID___addressable_drm_modeset_acquire_init311, ptr @__UNIQUE_ID___addressable_drm_modeset_acquire_fini312, ptr @__UNIQUE_ID___addressable_drm_modeset_drop_locks313, ptr @__UNIQUE_ID___addressable_drm_modeset_backoff314, ptr @__UNIQUE_ID___addressable_drm_modeset_lock_init315, ptr @__UNIQUE_ID___addressable_drm_modeset_lock316, ptr @__UNIQUE_ID___addressable_drm_modeset_lock_single_interruptible317, ptr @__UNIQUE_ID___addressable_drm_modeset_unlock318, ptr @__UNIQUE_ID___addressable_drm_modeset_lock_all_ctx319], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_modeset_lock_all(ptr noundef %dev) #0 align 16 !dbg !5897 {
entry:
  %dev.addr = alloca ptr, align 8
  %config = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %ret = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on37 = alloca i32, align 4
  %__flags53 = alloca i32, align 4
  %tmp66 = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5899, metadata !DIExpression()), !dbg !5916
  call void @llvm.lifetime.start.p0(i64 8, ptr %config) #14, !dbg !5917
  call void @llvm.dbg.declare(metadata ptr %config, metadata !5900, metadata !DIExpression()), !dbg !5918
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5919
  %mode_config = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 31, !dbg !5920
  store ptr %mode_config, ptr %config, align 8, !dbg !5918
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #14, !dbg !5921
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !5902, metadata !DIExpression()), !dbg !5922
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !5923
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5903, metadata !DIExpression()), !dbg !5924
  %call = call noalias ptr @kzalloc(i64 noundef 64, i32 noundef 36032) #15, !dbg !5925
  store ptr %call, ptr %ctx, align 8, !dbg !5926
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !5927
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5904, metadata !DIExpression()), !dbg !5927
  %1 = load ptr, ptr %ctx, align 8, !dbg !5927
  %tobool = icmp ne ptr %1, null, !dbg !5927
  %lnot = xor i1 %tobool, true, !dbg !5927
  %lnot1 = xor i1 %lnot, true, !dbg !5927
  %lnot2 = xor i1 %lnot1, true, !dbg !5927
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5927
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5927
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !5928
  %tobool3 = icmp ne i32 %2, 0, !dbg !5928
  %lnot4 = xor i1 %tobool3, true, !dbg !5928
  %lnot6 = xor i1 %lnot4, true, !dbg !5928
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !5928
  %conv = sext i32 %lnot.ext7 to i64, !dbg !5928
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5928
  %tobool8 = icmp ne i64 %expval, 0, !dbg !5928
  br i1 %tobool8, label %if.then, label %if.end, !dbg !5927

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5928

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !5929
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5907, metadata !DIExpression()), !dbg !5929
  store i32 2305, ptr %__flags, align 4, !dbg !5929
  br label %do.body9, !dbg !5929

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !5930

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !5930

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !5929

do.body10:                                        ; preds = %do.end
  %3 = load i32, ptr %__flags, align 4, !dbg !5932
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 150, i32 %3, i64 12) #14, !dbg !5932, !srcloc !5934
  br label %do.cond11, !dbg !5932

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !5932

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !5929

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !5935

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !5935

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !5928
  br label %do.cond16, !dbg !5929

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !5929

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !5929

if.end:                                           ; preds = %do.end17, %entry
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !5927
  %tobool18 = icmp ne i32 %4, 0, !dbg !5927
  %lnot19 = xor i1 %tobool18, true, !dbg !5927
  %lnot21 = xor i1 %lnot19, true, !dbg !5927
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !5927
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !5927
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !5927
  store i64 %expval24, ptr %tmp, align 8, !dbg !5928
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !5937
  %5 = load i64, ptr %tmp, align 8, !dbg !5927
  %tobool25 = icmp ne i64 %5, 0, !dbg !5937
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !5938

if.then26:                                        ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5939

if.end27:                                         ; preds = %if.end
  %6 = load ptr, ptr %config, align 8, !dbg !5940
  %mutex = getelementptr inbounds %struct.drm_mode_config, ptr %6, i32 0, i32 0, !dbg !5941
  call void @mutex_lock(ptr noundef %mutex) #16, !dbg !5942
  %7 = load ptr, ptr %ctx, align 8, !dbg !5943
  call void @drm_modeset_acquire_init(ptr noundef %7, i32 noundef 0) #16, !dbg !5944
  br label %retry, !dbg !5944

retry:                                            ; preds = %if.then33, %if.end27
  call void @llvm.dbg.label(metadata !5910), !dbg !5945
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !5946
  %9 = load ptr, ptr %ctx, align 8, !dbg !5947
  %call28 = call i32 @drm_modeset_lock_all_ctx(ptr noundef %8, ptr noundef %9) #16, !dbg !5948
  store i32 %call28, ptr %ret, align 4, !dbg !5949
  %10 = load i32, ptr %ret, align 4, !dbg !5950
  %cmp = icmp slt i32 %10, 0, !dbg !5952
  br i1 %cmp, label %if.then30, label %if.end36, !dbg !5953

if.then30:                                        ; preds = %retry
  %11 = load i32, ptr %ret, align 4, !dbg !5954
  %cmp31 = icmp eq i32 %11, -35, !dbg !5957
  br i1 %cmp31, label %if.then33, label %if.end35, !dbg !5958

if.then33:                                        ; preds = %if.then30
  %12 = load ptr, ptr %ctx, align 8, !dbg !5959
  %call34 = call i32 @drm_modeset_backoff(ptr noundef %12) #16, !dbg !5961
  br label %retry, !dbg !5962

if.end35:                                         ; preds = %if.then30
  %13 = load ptr, ptr %ctx, align 8, !dbg !5963
  call void @drm_modeset_acquire_fini(ptr noundef %13) #16, !dbg !5964
  %14 = load ptr, ptr %ctx, align 8, !dbg !5965
  call void @kfree(ptr noundef %14) #16, !dbg !5966
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5967

if.end36:                                         ; preds = %retry
  %15 = load ptr, ptr %ctx, align 8, !dbg !5968
  %ww_ctx = getelementptr inbounds %struct.drm_modeset_acquire_ctx, ptr %15, i32 0, i32 0, !dbg !5969
  call void @ww_acquire_done(ptr noundef %ww_ctx) #16, !dbg !5970
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on37) #14, !dbg !5971
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on37, metadata !5911, metadata !DIExpression()), !dbg !5971
  %16 = load ptr, ptr %config, align 8, !dbg !5971
  %acquire_ctx = getelementptr inbounds %struct.drm_mode_config, ptr %16, i32 0, i32 2, !dbg !5971
  %17 = load ptr, ptr %acquire_ctx, align 8, !dbg !5971
  %tobool38 = icmp ne ptr %17, null, !dbg !5971
  %lnot39 = xor i1 %tobool38, true, !dbg !5971
  %lnot41 = xor i1 %lnot39, true, !dbg !5971
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !5971
  store i32 %lnot.ext42, ptr %__ret_warn_on37, align 4, !dbg !5971
  %18 = load i32, ptr %__ret_warn_on37, align 4, !dbg !5972
  %tobool43 = icmp ne i32 %18, 0, !dbg !5972
  %lnot44 = xor i1 %tobool43, true, !dbg !5972
  %lnot46 = xor i1 %lnot44, true, !dbg !5972
  %lnot.ext47 = zext i1 %lnot46 to i32, !dbg !5972
  %conv48 = sext i32 %lnot.ext47 to i64, !dbg !5972
  %expval49 = call i64 @llvm.expect.i64(i64 %conv48, i64 0), !dbg !5972
  %tobool50 = icmp ne i64 %expval49, 0, !dbg !5972
  br i1 %tobool50, label %if.then51, label %if.end65, !dbg !5971

if.then51:                                        ; preds = %if.end36
  br label %do.body52, !dbg !5972

do.body52:                                        ; preds = %if.then51
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags53) #14, !dbg !5973
  call void @llvm.dbg.declare(metadata ptr %__flags53, metadata !5913, metadata !DIExpression()), !dbg !5973
  store i32 2305, ptr %__flags53, align 4, !dbg !5973
  br label %do.body54, !dbg !5973

do.body54:                                        ; preds = %do.body52
  br label %do.cond55, !dbg !5974

do.cond55:                                        ; preds = %do.body54
  br label %do.end56, !dbg !5974

do.end56:                                         ; preds = %do.cond55
  br label %do.body57, !dbg !5973

do.body57:                                        ; preds = %do.end56
  %19 = load i32, ptr %__flags53, align 4, !dbg !5976
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 171, i32 %19, i64 12) #14, !dbg !5976, !srcloc !5978
  br label %do.cond58, !dbg !5976

do.cond58:                                        ; preds = %do.body57
  br label %do.end59, !dbg !5976

do.end59:                                         ; preds = %do.cond58
  br label %do.body60, !dbg !5973

do.body60:                                        ; preds = %do.end59
  br label %do.cond61, !dbg !5979

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !5979

do.end62:                                         ; preds = %do.cond61
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags53) #14, !dbg !5972
  br label %do.cond63, !dbg !5973

do.cond63:                                        ; preds = %do.end62
  br label %do.end64, !dbg !5973

do.end64:                                         ; preds = %do.cond63
  br label %if.end65, !dbg !5973

if.end65:                                         ; preds = %do.end64, %if.end36
  %20 = load i32, ptr %__ret_warn_on37, align 4, !dbg !5971
  %tobool67 = icmp ne i32 %20, 0, !dbg !5971
  %lnot68 = xor i1 %tobool67, true, !dbg !5971
  %lnot70 = xor i1 %lnot68, true, !dbg !5971
  %lnot.ext71 = zext i1 %lnot70 to i32, !dbg !5971
  %conv72 = sext i32 %lnot.ext71 to i64, !dbg !5971
  %expval73 = call i64 @llvm.expect.i64(i64 %conv72, i64 0), !dbg !5971
  store i64 %expval73, ptr %tmp66, align 8, !dbg !5972
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on37) #14, !dbg !5981
  %21 = load i64, ptr %tmp66, align 8, !dbg !5971
  %22 = load ptr, ptr %ctx, align 8, !dbg !5982
  %23 = load ptr, ptr %config, align 8, !dbg !5983
  %acquire_ctx74 = getelementptr inbounds %struct.drm_mode_config, ptr %23, i32 0, i32 2, !dbg !5984
  store ptr %22, ptr %acquire_ctx74, align 8, !dbg !5985
  %24 = load ptr, ptr %dev.addr, align 8, !dbg !5986
  call void @drm_warn_on_modeset_not_all_locked(ptr noundef %24) #16, !dbg !5987
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5988
  br label %cleanup, !dbg !5988

cleanup:                                          ; preds = %if.end65, %if.end35, %if.then26
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !5988
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #14, !dbg !5988
  call void @llvm.lifetime.end.p0(i64 8, ptr %config) #14, !dbg !5988
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5988

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #3 align 16 !dbg !5989 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5993, metadata !DIExpression()), !dbg !5995
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5994, metadata !DIExpression()), !dbg !5996
  %0 = load i64, ptr %size.addr, align 8, !dbg !5997
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5998
  %or = or i32 %1, 256, !dbg !5999
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #15, !dbg !6000
  ret ptr %call, !dbg !6001
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6002 dso_local void @mutex_lock(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_modeset_acquire_init(ptr noundef %ctx, i32 noundef %flags) #0 align 16 !dbg !6006 {
entry:
  %ctx.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !6010, metadata !DIExpression()), !dbg !6012
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6011, metadata !DIExpression()), !dbg !6013
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !6014
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 64, i1 false), !dbg !6015
  %1 = load ptr, ptr %ctx.addr, align 8, !dbg !6016
  %ww_ctx = getelementptr inbounds %struct.drm_modeset_acquire_ctx, ptr %1, i32 0, i32 0, !dbg !6017
  call void @ww_acquire_init(ptr noundef %ww_ctx, ptr noundef @crtc_ww_class) #16, !dbg !6018
  %2 = load ptr, ptr %ctx.addr, align 8, !dbg !6019
  %locked = getelementptr inbounds %struct.drm_modeset_acquire_ctx, ptr %2, i32 0, i32 3, !dbg !6020
  call void @INIT_LIST_HEAD(ptr noundef %locked) #16, !dbg !6021
  %3 = load i32, ptr %flags.addr, align 4, !dbg !6022
  %conv = zext i32 %3 to i64, !dbg !6022
  %and = and i64 %conv, 1, !dbg !6024
  %tobool = icmp ne i64 %and, 0, !dbg !6024
  br i1 %tobool, label %if.then, label %if.end, !dbg !6025

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %ctx.addr, align 8, !dbg !6026
  %interruptible = getelementptr inbounds %struct.drm_modeset_acquire_ctx, ptr %4, i32 0, i32 5, !dbg !6027
  store i8 1, ptr %interruptible, align 1, !dbg !6028
  br label %if.end, !dbg !6026

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6029
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_modeset_lock_all_ctx(ptr noundef %dev, ptr noundef %ctx) #0 align 16 !dbg !6030 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %privobj = alloca ptr, align 8
  %crtc = alloca ptr, align 8
  %plane = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr8 = alloca ptr, align 8
  %tmp11 = alloca ptr, align 8
  %__mptr13 = alloca ptr, align 8
  %tmp16 = alloca ptr, align 8
  %__mptr31 = alloca ptr, align 8
  %tmp34 = alloca ptr, align 8
  %__mptr37 = alloca ptr, align 8
  %tmp40 = alloca ptr, align 8
  %__mptr54 = alloca ptr, align 8
  %tmp57 = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6034, metadata !DIExpression()), !dbg !6058
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !6035, metadata !DIExpression()), !dbg !6059
  call void @llvm.lifetime.start.p0(i64 8, ptr %privobj) #14, !dbg !6060
  call void @llvm.dbg.declare(metadata ptr %privobj, metadata !6036, metadata !DIExpression()), !dbg !6061
  call void @llvm.lifetime.start.p0(i64 8, ptr %crtc) #14, !dbg !6062
  call void @llvm.dbg.declare(metadata ptr %crtc, metadata !6037, metadata !DIExpression()), !dbg !6063
  call void @llvm.lifetime.start.p0(i64 8, ptr %plane) #14, !dbg !6064
  call void @llvm.dbg.declare(metadata ptr %plane, metadata !6038, metadata !DIExpression()), !dbg !6065
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !6066
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6039, metadata !DIExpression()), !dbg !6067
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6068
  %mode_config = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 31, !dbg !6069
  %connection_mutex = getelementptr inbounds %struct.drm_mode_config, ptr %mode_config, i32 0, i32 1, !dbg !6070
  %1 = load ptr, ptr %ctx.addr, align 8, !dbg !6071
  %call = call i32 @drm_modeset_lock(ptr noundef %connection_mutex, ptr noundef %1) #16, !dbg !6072
  store i32 %call, ptr %ret, align 4, !dbg !6073
  %2 = load i32, ptr %ret, align 4, !dbg !6074
  %tobool = icmp ne i32 %2, 0, !dbg !6074
  br i1 %tobool, label %if.then, label %if.end, !dbg !6076

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %ret, align 4, !dbg !6077
  store i32 %3, ptr %retval, align 4, !dbg !6078
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6078

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !6079
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6040, metadata !DIExpression()), !dbg !6079
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !6079
  %mode_config1 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 31, !dbg !6079
  %crtc_list = getelementptr inbounds %struct.drm_mode_config, ptr %mode_config1, i32 0, i32 20, !dbg !6079
  %next = getelementptr inbounds %struct.list_head, ptr %crtc_list, i32 0, i32 0, !dbg !6079
  %5 = load ptr, ptr %next, align 8, !dbg !6079
  store ptr %5, ptr %__mptr, align 8, !dbg !6079
  %6 = load ptr, ptr %__mptr, align 8, !dbg !6079
  %add.ptr = getelementptr i8, ptr %6, i64 -16, !dbg !6079
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6079
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !6080
  %7 = load ptr, ptr %tmp, align 8, !dbg !6079
  store ptr %7, ptr %crtc, align 8, !dbg !6080
  br label %for.cond, !dbg !6080

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load ptr, ptr %crtc, align 8, !dbg !6081
  %head = getelementptr inbounds %struct.drm_crtc, ptr %8, i32 0, i32 2, !dbg !6081
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !6081
  %mode_config2 = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 31, !dbg !6081
  %crtc_list3 = getelementptr inbounds %struct.drm_mode_config, ptr %mode_config2, i32 0, i32 20, !dbg !6081
  %cmp = icmp eq ptr %head, %crtc_list3, !dbg !6081
  %lnot = xor i1 %cmp, true, !dbg !6081
  br i1 %lnot, label %for.body, label %for.end, !dbg !6080

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %crtc, align 8, !dbg !6082
  %mutex = getelementptr inbounds %struct.drm_crtc, ptr %10, i32 0, i32 4, !dbg !6084
  %11 = load ptr, ptr %ctx.addr, align 8, !dbg !6085
  %call4 = call i32 @drm_modeset_lock(ptr noundef %mutex, ptr noundef %11) #16, !dbg !6086
  store i32 %call4, ptr %ret, align 4, !dbg !6087
  %12 = load i32, ptr %ret, align 4, !dbg !6088
  %tobool5 = icmp ne i32 %12, 0, !dbg !6088
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !6090

if.then6:                                         ; preds = %for.body
  %13 = load i32, ptr %ret, align 4, !dbg !6091
  store i32 %13, ptr %retval, align 4, !dbg !6092
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6092

if.end7:                                          ; preds = %for.body
  br label %for.inc, !dbg !6093

for.inc:                                          ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr8) #14, !dbg !6094
  call void @llvm.dbg.declare(metadata ptr %__mptr8, metadata !6043, metadata !DIExpression()), !dbg !6094
  %14 = load ptr, ptr %crtc, align 8, !dbg !6094
  %head9 = getelementptr inbounds %struct.drm_crtc, ptr %14, i32 0, i32 2, !dbg !6094
  %next10 = getelementptr inbounds %struct.list_head, ptr %head9, i32 0, i32 0, !dbg !6094
  %15 = load ptr, ptr %next10, align 8, !dbg !6094
  store ptr %15, ptr %__mptr8, align 8, !dbg !6094
  %16 = load ptr, ptr %__mptr8, align 8, !dbg !6094
  %add.ptr12 = getelementptr i8, ptr %16, i64 -16, !dbg !6094
  store ptr %add.ptr12, ptr %tmp11, align 8, !dbg !6094
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr8) #14, !dbg !6081
  %17 = load ptr, ptr %tmp11, align 8, !dbg !6094
  store ptr %17, ptr %crtc, align 8, !dbg !6081
  br label %for.cond, !dbg !6081, !llvm.loop !6095

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr13) #14, !dbg !6099
  call void @llvm.dbg.declare(metadata ptr %__mptr13, metadata !6046, metadata !DIExpression()), !dbg !6099
  %18 = load ptr, ptr %dev.addr, align 8, !dbg !6099
  %mode_config14 = getelementptr inbounds %struct.drm_device, ptr %18, i32 0, i32 31, !dbg !6099
  %plane_list = getelementptr inbounds %struct.drm_mode_config, ptr %mode_config14, i32 0, i32 18, !dbg !6099
  %next15 = getelementptr inbounds %struct.list_head, ptr %plane_list, i32 0, i32 0, !dbg !6099
  %19 = load ptr, ptr %next15, align 8, !dbg !6099
  store ptr %19, ptr %__mptr13, align 8, !dbg !6099
  %20 = load ptr, ptr %__mptr13, align 8, !dbg !6099
  %add.ptr17 = getelementptr i8, ptr %20, i64 -8, !dbg !6099
  store ptr %add.ptr17, ptr %tmp16, align 8, !dbg !6099
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr13) #14, !dbg !6100
  %21 = load ptr, ptr %tmp16, align 8, !dbg !6099
  store ptr %21, ptr %plane, align 8, !dbg !6100
  br label %for.cond18, !dbg !6100

for.cond18:                                       ; preds = %for.inc30, %for.end
  %22 = load ptr, ptr %plane, align 8, !dbg !6101
  %head19 = getelementptr inbounds %struct.drm_plane, ptr %22, i32 0, i32 1, !dbg !6101
  %23 = load ptr, ptr %dev.addr, align 8, !dbg !6101
  %mode_config20 = getelementptr inbounds %struct.drm_device, ptr %23, i32 0, i32 31, !dbg !6101
  %plane_list21 = getelementptr inbounds %struct.drm_mode_config, ptr %mode_config20, i32 0, i32 18, !dbg !6101
  %cmp22 = icmp eq ptr %head19, %plane_list21, !dbg !6101
  %lnot23 = xor i1 %cmp22, true, !dbg !6101
  br i1 %lnot23, label %for.body24, label %for.end36, !dbg !6100

for.body24:                                       ; preds = %for.cond18
  %24 = load ptr, ptr %plane, align 8, !dbg !6102
  %mutex25 = getelementptr inbounds %struct.drm_plane, ptr %24, i32 0, i32 3, !dbg !6104
  %25 = load ptr, ptr %ctx.addr, align 8, !dbg !6105
  %call26 = call i32 @drm_modeset_lock(ptr noundef %mutex25, ptr noundef %25) #16, !dbg !6106
  store i32 %call26, ptr %ret, align 4, !dbg !6107
  %26 = load i32, ptr %ret, align 4, !dbg !6108
  %tobool27 = icmp ne i32 %26, 0, !dbg !6108
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !6110

if.then28:                                        ; preds = %for.body24
  %27 = load i32, ptr %ret, align 4, !dbg !6111
  store i32 %27, ptr %retval, align 4, !dbg !6112
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6112

if.end29:                                         ; preds = %for.body24
  br label %for.inc30, !dbg !6113

for.inc30:                                        ; preds = %if.end29
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr31) #14, !dbg !6114
  call void @llvm.dbg.declare(metadata ptr %__mptr31, metadata !6049, metadata !DIExpression()), !dbg !6114
  %28 = load ptr, ptr %plane, align 8, !dbg !6114
  %head32 = getelementptr inbounds %struct.drm_plane, ptr %28, i32 0, i32 1, !dbg !6114
  %next33 = getelementptr inbounds %struct.list_head, ptr %head32, i32 0, i32 0, !dbg !6114
  %29 = load ptr, ptr %next33, align 8, !dbg !6114
  store ptr %29, ptr %__mptr31, align 8, !dbg !6114
  %30 = load ptr, ptr %__mptr31, align 8, !dbg !6114
  %add.ptr35 = getelementptr i8, ptr %30, i64 -8, !dbg !6114
  store ptr %add.ptr35, ptr %tmp34, align 8, !dbg !6114
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr31) #14, !dbg !6101
  %31 = load ptr, ptr %tmp34, align 8, !dbg !6114
  store ptr %31, ptr %plane, align 8, !dbg !6101
  br label %for.cond18, !dbg !6101, !llvm.loop !6115

for.end36:                                        ; preds = %for.cond18
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr37) #14, !dbg !6117
  call void @llvm.dbg.declare(metadata ptr %__mptr37, metadata !6052, metadata !DIExpression()), !dbg !6117
  %32 = load ptr, ptr %dev.addr, align 8, !dbg !6117
  %mode_config38 = getelementptr inbounds %struct.drm_device, ptr %32, i32 0, i32 31, !dbg !6117
  %privobj_list = getelementptr inbounds %struct.drm_mode_config, ptr %mode_config38, i32 0, i32 22, !dbg !6117
  %next39 = getelementptr inbounds %struct.list_head, ptr %privobj_list, i32 0, i32 0, !dbg !6117
  %33 = load ptr, ptr %next39, align 8, !dbg !6117
  store ptr %33, ptr %__mptr37, align 8, !dbg !6117
  %34 = load ptr, ptr %__mptr37, align 8, !dbg !6117
  %add.ptr41 = getelementptr i8, ptr %34, i64 0, !dbg !6117
  store ptr %add.ptr41, ptr %tmp40, align 8, !dbg !6117
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr37) #14, !dbg !6118
  %35 = load ptr, ptr %tmp40, align 8, !dbg !6117
  store ptr %35, ptr %privobj, align 8, !dbg !6118
  br label %for.cond42, !dbg !6118

for.cond42:                                       ; preds = %for.inc53, %for.end36
  %36 = load ptr, ptr %privobj, align 8, !dbg !6119
  %head43 = getelementptr inbounds %struct.drm_private_obj, ptr %36, i32 0, i32 0, !dbg !6119
  %37 = load ptr, ptr %dev.addr, align 8, !dbg !6119
  %mode_config44 = getelementptr inbounds %struct.drm_device, ptr %37, i32 0, i32 31, !dbg !6119
  %privobj_list45 = getelementptr inbounds %struct.drm_mode_config, ptr %mode_config44, i32 0, i32 22, !dbg !6119
  %cmp46 = icmp eq ptr %head43, %privobj_list45, !dbg !6119
  %lnot47 = xor i1 %cmp46, true, !dbg !6119
  br i1 %lnot47, label %for.body48, label %for.end59, !dbg !6118

for.body48:                                       ; preds = %for.cond42
  %38 = load ptr, ptr %privobj, align 8, !dbg !6120
  %lock = getelementptr inbounds %struct.drm_private_obj, ptr %38, i32 0, i32 1, !dbg !6122
  %39 = load ptr, ptr %ctx.addr, align 8, !dbg !6123
  %call49 = call i32 @drm_modeset_lock(ptr noundef %lock, ptr noundef %39) #16, !dbg !6124
  store i32 %call49, ptr %ret, align 4, !dbg !6125
  %40 = load i32, ptr %ret, align 4, !dbg !6126
  %tobool50 = icmp ne i32 %40, 0, !dbg !6126
  br i1 %tobool50, label %if.then51, label %if.end52, !dbg !6128

if.then51:                                        ; preds = %for.body48
  %41 = load i32, ptr %ret, align 4, !dbg !6129
  store i32 %41, ptr %retval, align 4, !dbg !6130
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6130

if.end52:                                         ; preds = %for.body48
  br label %for.inc53, !dbg !6131

for.inc53:                                        ; preds = %if.end52
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr54) #14, !dbg !6132
  call void @llvm.dbg.declare(metadata ptr %__mptr54, metadata !6055, metadata !DIExpression()), !dbg !6132
  %42 = load ptr, ptr %privobj, align 8, !dbg !6132
  %head55 = getelementptr inbounds %struct.drm_private_obj, ptr %42, i32 0, i32 0, !dbg !6132
  %next56 = getelementptr inbounds %struct.list_head, ptr %head55, i32 0, i32 0, !dbg !6132
  %43 = load ptr, ptr %next56, align 8, !dbg !6132
  store ptr %43, ptr %__mptr54, align 8, !dbg !6132
  %44 = load ptr, ptr %__mptr54, align 8, !dbg !6132
  %add.ptr58 = getelementptr i8, ptr %44, i64 0, !dbg !6132
  store ptr %add.ptr58, ptr %tmp57, align 8, !dbg !6132
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr54) #14, !dbg !6119
  %45 = load ptr, ptr %tmp57, align 8, !dbg !6132
  store ptr %45, ptr %privobj, align 8, !dbg !6119
  br label %for.cond42, !dbg !6119, !llvm.loop !6133

for.end59:                                        ; preds = %for.cond42
  store i32 0, ptr %retval, align 4, !dbg !6135
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6135

cleanup:                                          ; preds = %for.end59, %if.then51, %if.then28, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !6136
  call void @llvm.lifetime.end.p0(i64 8, ptr %plane) #14, !dbg !6136
  call void @llvm.lifetime.end.p0(i64 8, ptr %crtc) #14, !dbg !6136
  call void @llvm.lifetime.end.p0(i64 8, ptr %privobj) #14, !dbg !6136
  %46 = load i32, ptr %retval, align 4, !dbg !6136
  ret i32 %46, !dbg !6136
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_modeset_backoff(ptr noundef %ctx) #0 align 16 !dbg !6137 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %contended = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !6141, metadata !DIExpression()), !dbg !6149
  call void @llvm.lifetime.start.p0(i64 8, ptr %contended) #14, !dbg !6150
  call void @llvm.dbg.declare(metadata ptr %contended, metadata !6142, metadata !DIExpression()), !dbg !6151
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !6152
  %contended1 = getelementptr inbounds %struct.drm_modeset_acquire_ctx, ptr %0, i32 0, i32 1, !dbg !6153
  %1 = load ptr, ptr %contended1, align 8, !dbg !6153
  store ptr %1, ptr %contended, align 8, !dbg !6151
  %2 = load ptr, ptr %ctx.addr, align 8, !dbg !6154
  %contended2 = getelementptr inbounds %struct.drm_modeset_acquire_ctx, ptr %2, i32 0, i32 1, !dbg !6155
  store ptr null, ptr %contended2, align 8, !dbg !6156
  %3 = load ptr, ptr %ctx.addr, align 8, !dbg !6157
  %stack_depot = getelementptr inbounds %struct.drm_modeset_acquire_ctx, ptr %3, i32 0, i32 2, !dbg !6158
  store i32 0, ptr %stack_depot, align 8, !dbg !6159
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !6160
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6143, metadata !DIExpression()), !dbg !6160
  %4 = load ptr, ptr %contended, align 8, !dbg !6160
  %tobool = icmp ne ptr %4, null, !dbg !6160
  %lnot = xor i1 %tobool, true, !dbg !6160
  %lnot3 = xor i1 %lnot, true, !dbg !6160
  %lnot4 = xor i1 %lnot3, true, !dbg !6160
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !6160
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6160
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !6161
  %tobool5 = icmp ne i32 %5, 0, !dbg !6161
  %lnot6 = xor i1 %tobool5, true, !dbg !6161
  %lnot8 = xor i1 %lnot6, true, !dbg !6161
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !6161
  %conv = sext i32 %lnot.ext9 to i64, !dbg !6161
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6161
  %tobool10 = icmp ne i64 %expval, 0, !dbg !6161
  br i1 %tobool10, label %if.then, label %if.end, !dbg !6160

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6161

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !6162
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6146, metadata !DIExpression()), !dbg !6162
  store i32 2305, ptr %__flags, align 4, !dbg !6162
  br label %do.body11, !dbg !6162

do.body11:                                        ; preds = %do.body
  br label %do.cond, !dbg !6163

do.cond:                                          ; preds = %do.body11
  br label %do.end, !dbg !6163

do.end:                                           ; preds = %do.cond
  br label %do.body12, !dbg !6162

do.body12:                                        ; preds = %do.end
  %6 = load i32, ptr %__flags, align 4, !dbg !6165
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 353, i32 %6, i64 12) #14, !dbg !6165, !srcloc !6167
  br label %do.cond13, !dbg !6165

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !6165

do.end14:                                         ; preds = %do.cond13
  br label %do.body15, !dbg !6162

do.body15:                                        ; preds = %do.end14
  br label %do.cond16, !dbg !6168

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !6168

do.end17:                                         ; preds = %do.cond16
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !6161
  br label %do.cond18, !dbg !6162

do.cond18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !6162

do.end19:                                         ; preds = %do.cond18
  br label %if.end, !dbg !6162

if.end:                                           ; preds = %do.end19, %entry
  %7 = load i32, ptr %__ret_warn_on, align 4, !dbg !6160
  %tobool20 = icmp ne i32 %7, 0, !dbg !6160
  %lnot21 = xor i1 %tobool20, true, !dbg !6160
  %lnot23 = xor i1 %lnot21, true, !dbg !6160
  %lnot.ext24 = zext i1 %lnot23 to i32, !dbg !6160
  %conv25 = sext i32 %lnot.ext24 to i64, !dbg !6160
  %expval26 = call i64 @llvm.expect.i64(i64 %conv25, i64 0), !dbg !6160
  store i64 %expval26, ptr %tmp, align 8, !dbg !6161
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !6170
  %8 = load i64, ptr %tmp, align 8, !dbg !6160
  %tobool27 = icmp ne i64 %8, 0, !dbg !6170
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !6171

if.then28:                                        ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !6172
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6172

if.end29:                                         ; preds = %if.end
  %9 = load ptr, ptr %ctx.addr, align 8, !dbg !6173
  call void @drm_modeset_drop_locks(ptr noundef %9) #16, !dbg !6174
  %10 = load ptr, ptr %contended, align 8, !dbg !6175
  %11 = load ptr, ptr %ctx.addr, align 8, !dbg !6176
  %12 = load ptr, ptr %ctx.addr, align 8, !dbg !6177
  %interruptible = getelementptr inbounds %struct.drm_modeset_acquire_ctx, ptr %12, i32 0, i32 5, !dbg !6178
  %13 = load i8, ptr %interruptible, align 1, !dbg !6178, !range !6179, !noundef !1079
  %tobool30 = trunc i8 %13 to i1, !dbg !6178
  %call = call i32 @modeset_lock(ptr noundef %10, ptr noundef %11, i1 noundef zeroext %tobool30, i1 noundef zeroext true) #16, !dbg !6180
  store i32 %call, ptr %retval, align 4, !dbg !6181
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6181

cleanup:                                          ; preds = %if.end29, %if.then28
  call void @llvm.lifetime.end.p0(i64 8, ptr %contended) #14, !dbg !6182
  %14 = load i32, ptr %retval, align 4, !dbg !6182
  ret i32 %14, !dbg !6182
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_modeset_acquire_fini(ptr noundef %ctx) #0 align 16 !dbg !6183 {
entry:
  %ctx.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !6187, metadata !DIExpression()), !dbg !6188
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !6189
  %ww_ctx = getelementptr inbounds %struct.drm_modeset_acquire_ctx, ptr %0, i32 0, i32 0, !dbg !6190
  call void @ww_acquire_fini(ptr noundef %ww_ctx) #16, !dbg !6191
  ret void, !dbg !6192
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6193 dso_local void @kfree(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ww_acquire_done(ptr noundef %ctx) #6 align 16 !dbg !6196 {
entry:
  %ctx.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !6200, metadata !DIExpression()), !dbg !6201
  ret void, !dbg !6202
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_warn_on_modeset_not_all_locked(ptr noundef %dev) #0 align 16 !dbg !6203 {
entry:
  %dev.addr = alloca ptr, align 8
  %crtc = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp23 = alloca i64, align 8
  %__mptr31 = alloca ptr, align 8
  %tmp34 = alloca ptr, align 8
  %__ret_warn_on36 = alloca i32, align 4
  %__flags55 = alloca i32, align 4
  %tmp68 = alloca i64, align 8
  %__ret_warn_on76 = alloca i32, align 4
  %__flags96 = alloca i32, align 4
  %tmp109 = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6205, metadata !DIExpression()), !dbg !6228
  call void @llvm.lifetime.start.p0(i64 8, ptr %crtc) #14, !dbg !6229
  call void @llvm.dbg.declare(metadata ptr %crtc, metadata !6206, metadata !DIExpression()), !dbg !6230
  %0 = load i32, ptr @oops_in_progress, align 4, !dbg !6231
  %tobool = icmp ne i32 %0, 0, !dbg !6231
  br i1 %tobool, label %if.then, label %if.end, !dbg !6233

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6234

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !6235
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6207, metadata !DIExpression()), !dbg !6235
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !6235
  %mode_config = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 31, !dbg !6235
  %crtc_list = getelementptr inbounds %struct.drm_mode_config, ptr %mode_config, i32 0, i32 20, !dbg !6235
  %next = getelementptr inbounds %struct.list_head, ptr %crtc_list, i32 0, i32 0, !dbg !6235
  %2 = load ptr, ptr %next, align 8, !dbg !6235
  store ptr %2, ptr %__mptr, align 8, !dbg !6235
  %3 = load ptr, ptr %__mptr, align 8, !dbg !6235
  %add.ptr = getelementptr i8, ptr %3, i64 -16, !dbg !6235
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6235
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !6236
  %4 = load ptr, ptr %tmp, align 8, !dbg !6235
  store ptr %4, ptr %crtc, align 8, !dbg !6236
  br label %for.cond, !dbg !6236

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load ptr, ptr %crtc, align 8, !dbg !6237
  %head = getelementptr inbounds %struct.drm_crtc, ptr %5, i32 0, i32 2, !dbg !6237
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !6237
  %mode_config1 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 31, !dbg !6237
  %crtc_list2 = getelementptr inbounds %struct.drm_mode_config, ptr %mode_config1, i32 0, i32 20, !dbg !6237
  %cmp = icmp eq ptr %head, %crtc_list2, !dbg !6237
  %lnot = xor i1 %cmp, true, !dbg !6237
  br i1 %lnot, label %for.body, label %for.end, !dbg !6236

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !6238
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6210, metadata !DIExpression()), !dbg !6238
  %7 = load ptr, ptr %crtc, align 8, !dbg !6238
  %mutex = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 4, !dbg !6238
  %call = call zeroext i1 @drm_modeset_is_locked(ptr noundef %mutex) #16, !dbg !6238
  %lnot3 = xor i1 %call, true, !dbg !6238
  %lnot4 = xor i1 %lnot3, true, !dbg !6238
  %lnot5 = xor i1 %lnot4, true, !dbg !6238
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !6238
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6238
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !6239
  %tobool6 = icmp ne i32 %8, 0, !dbg !6239
  %lnot7 = xor i1 %tobool6, true, !dbg !6239
  %lnot9 = xor i1 %lnot7, true, !dbg !6239
  %lnot.ext10 = zext i1 %lnot9 to i32, !dbg !6239
  %conv = sext i32 %lnot.ext10 to i64, !dbg !6239
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6239
  %tobool11 = icmp ne i64 %expval, 0, !dbg !6239
  br i1 %tobool11, label %if.then12, label %if.end22, !dbg !6238

if.then12:                                        ; preds = %for.body
  br label %do.body, !dbg !6239

do.body:                                          ; preds = %if.then12
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !6240
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6213, metadata !DIExpression()), !dbg !6240
  store i32 2305, ptr %__flags, align 4, !dbg !6240
  br label %do.body13, !dbg !6240

do.body13:                                        ; preds = %do.body
  br label %do.cond, !dbg !6241

do.cond:                                          ; preds = %do.body13
  br label %do.end, !dbg !6241

do.end:                                           ; preds = %do.cond
  br label %do.body14, !dbg !6240

do.body14:                                        ; preds = %do.end
  %9 = load i32, ptr %__flags, align 4, !dbg !6243
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 230, i32 %9, i64 12) #14, !dbg !6243, !srcloc !6245
  br label %do.cond15, !dbg !6243

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !6243

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !6240

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !6246

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !6246

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !6239
  br label %do.cond20, !dbg !6240

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !6240

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !6240

if.end22:                                         ; preds = %do.end21, %for.body
  %10 = load i32, ptr %__ret_warn_on, align 4, !dbg !6238
  %tobool24 = icmp ne i32 %10, 0, !dbg !6238
  %lnot25 = xor i1 %tobool24, true, !dbg !6238
  %lnot27 = xor i1 %lnot25, true, !dbg !6238
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !6238
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !6238
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !6238
  store i64 %expval30, ptr %tmp23, align 8, !dbg !6239
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !6248
  %11 = load i64, ptr %tmp23, align 8, !dbg !6238
  br label %for.inc, !dbg !6248

for.inc:                                          ; preds = %if.end22
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr31) #14, !dbg !6249
  call void @llvm.dbg.declare(metadata ptr %__mptr31, metadata !6216, metadata !DIExpression()), !dbg !6249
  %12 = load ptr, ptr %crtc, align 8, !dbg !6249
  %head32 = getelementptr inbounds %struct.drm_crtc, ptr %12, i32 0, i32 2, !dbg !6249
  %next33 = getelementptr inbounds %struct.list_head, ptr %head32, i32 0, i32 0, !dbg !6249
  %13 = load ptr, ptr %next33, align 8, !dbg !6249
  store ptr %13, ptr %__mptr31, align 8, !dbg !6249
  %14 = load ptr, ptr %__mptr31, align 8, !dbg !6249
  %add.ptr35 = getelementptr i8, ptr %14, i64 -16, !dbg !6249
  store ptr %add.ptr35, ptr %tmp34, align 8, !dbg !6249
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr31) #14, !dbg !6237
  %15 = load ptr, ptr %tmp34, align 8, !dbg !6249
  store ptr %15, ptr %crtc, align 8, !dbg !6237
  br label %for.cond, !dbg !6237, !llvm.loop !6250

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on36) #14, !dbg !6252
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on36, metadata !6218, metadata !DIExpression()), !dbg !6252
  %16 = load ptr, ptr %dev.addr, align 8, !dbg !6252
  %mode_config37 = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 31, !dbg !6252
  %connection_mutex = getelementptr inbounds %struct.drm_mode_config, ptr %mode_config37, i32 0, i32 1, !dbg !6252
  %call38 = call zeroext i1 @drm_modeset_is_locked(ptr noundef %connection_mutex) #16, !dbg !6252
  %lnot39 = xor i1 %call38, true, !dbg !6252
  %lnot41 = xor i1 %lnot39, true, !dbg !6252
  %lnot43 = xor i1 %lnot41, true, !dbg !6252
  %lnot.ext44 = zext i1 %lnot43 to i32, !dbg !6252
  store i32 %lnot.ext44, ptr %__ret_warn_on36, align 4, !dbg !6252
  %17 = load i32, ptr %__ret_warn_on36, align 4, !dbg !6253
  %tobool45 = icmp ne i32 %17, 0, !dbg !6253
  %lnot46 = xor i1 %tobool45, true, !dbg !6253
  %lnot48 = xor i1 %lnot46, true, !dbg !6253
  %lnot.ext49 = zext i1 %lnot48 to i32, !dbg !6253
  %conv50 = sext i32 %lnot.ext49 to i64, !dbg !6253
  %expval51 = call i64 @llvm.expect.i64(i64 %conv50, i64 0), !dbg !6253
  %tobool52 = icmp ne i64 %expval51, 0, !dbg !6253
  br i1 %tobool52, label %if.then53, label %if.end67, !dbg !6252

if.then53:                                        ; preds = %for.end
  br label %do.body54, !dbg !6253

do.body54:                                        ; preds = %if.then53
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags55) #14, !dbg !6254
  call void @llvm.dbg.declare(metadata ptr %__flags55, metadata !6220, metadata !DIExpression()), !dbg !6254
  store i32 2305, ptr %__flags55, align 4, !dbg !6254
  br label %do.body56, !dbg !6254

do.body56:                                        ; preds = %do.body54
  br label %do.cond57, !dbg !6255

do.cond57:                                        ; preds = %do.body56
  br label %do.end58, !dbg !6255

do.end58:                                         ; preds = %do.cond57
  br label %do.body59, !dbg !6254

do.body59:                                        ; preds = %do.end58
  %18 = load i32, ptr %__flags55, align 4, !dbg !6257
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 232, i32 %18, i64 12) #14, !dbg !6257, !srcloc !6259
  br label %do.cond60, !dbg !6257

do.cond60:                                        ; preds = %do.body59
  br label %do.end61, !dbg !6257

do.end61:                                         ; preds = %do.cond60
  br label %do.body62, !dbg !6254

do.body62:                                        ; preds = %do.end61
  br label %do.cond63, !dbg !6260

do.cond63:                                        ; preds = %do.body62
  br label %do.end64, !dbg !6260

do.end64:                                         ; preds = %do.cond63
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags55) #14, !dbg !6253
  br label %do.cond65, !dbg !6254

do.cond65:                                        ; preds = %do.end64
  br label %do.end66, !dbg !6254

do.end66:                                         ; preds = %do.cond65
  br label %if.end67, !dbg !6254

if.end67:                                         ; preds = %do.end66, %for.end
  %19 = load i32, ptr %__ret_warn_on36, align 4, !dbg !6252
  %tobool69 = icmp ne i32 %19, 0, !dbg !6252
  %lnot70 = xor i1 %tobool69, true, !dbg !6252
  %lnot72 = xor i1 %lnot70, true, !dbg !6252
  %lnot.ext73 = zext i1 %lnot72 to i32, !dbg !6252
  %conv74 = sext i32 %lnot.ext73 to i64, !dbg !6252
  %expval75 = call i64 @llvm.expect.i64(i64 %conv74, i64 0), !dbg !6252
  store i64 %expval75, ptr %tmp68, align 8, !dbg !6253
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on36) #14, !dbg !6262
  %20 = load i64, ptr %tmp68, align 8, !dbg !6252
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on76) #14, !dbg !6263
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on76, metadata !6223, metadata !DIExpression()), !dbg !6263
  %21 = load ptr, ptr %dev.addr, align 8, !dbg !6263
  %mode_config77 = getelementptr inbounds %struct.drm_device, ptr %21, i32 0, i32 31, !dbg !6263
  %mutex78 = getelementptr inbounds %struct.drm_mode_config, ptr %mode_config77, i32 0, i32 0, !dbg !6263
  %call79 = call zeroext i1 @mutex_is_locked(ptr noundef %mutex78) #16, !dbg !6263
  %lnot80 = xor i1 %call79, true, !dbg !6263
  %lnot82 = xor i1 %lnot80, true, !dbg !6263
  %lnot84 = xor i1 %lnot82, true, !dbg !6263
  %lnot.ext85 = zext i1 %lnot84 to i32, !dbg !6263
  store i32 %lnot.ext85, ptr %__ret_warn_on76, align 4, !dbg !6263
  %22 = load i32, ptr %__ret_warn_on76, align 4, !dbg !6264
  %tobool86 = icmp ne i32 %22, 0, !dbg !6264
  %lnot87 = xor i1 %tobool86, true, !dbg !6264
  %lnot89 = xor i1 %lnot87, true, !dbg !6264
  %lnot.ext90 = zext i1 %lnot89 to i32, !dbg !6264
  %conv91 = sext i32 %lnot.ext90 to i64, !dbg !6264
  %expval92 = call i64 @llvm.expect.i64(i64 %conv91, i64 0), !dbg !6264
  %tobool93 = icmp ne i64 %expval92, 0, !dbg !6264
  br i1 %tobool93, label %if.then94, label %if.end108, !dbg !6263

if.then94:                                        ; preds = %if.end67
  br label %do.body95, !dbg !6264

do.body95:                                        ; preds = %if.then94
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags96) #14, !dbg !6265
  call void @llvm.dbg.declare(metadata ptr %__flags96, metadata !6225, metadata !DIExpression()), !dbg !6265
  store i32 2305, ptr %__flags96, align 4, !dbg !6265
  br label %do.body97, !dbg !6265

do.body97:                                        ; preds = %do.body95
  br label %do.cond98, !dbg !6266

do.cond98:                                        ; preds = %do.body97
  br label %do.end99, !dbg !6266

do.end99:                                         ; preds = %do.cond98
  br label %do.body100, !dbg !6265

do.body100:                                       ; preds = %do.end99
  %23 = load i32, ptr %__flags96, align 4, !dbg !6268
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 233, i32 %23, i64 12) #14, !dbg !6268, !srcloc !6270
  br label %do.cond101, !dbg !6268

do.cond101:                                       ; preds = %do.body100
  br label %do.end102, !dbg !6268

do.end102:                                        ; preds = %do.cond101
  br label %do.body103, !dbg !6265

do.body103:                                       ; preds = %do.end102
  br label %do.cond104, !dbg !6271

do.cond104:                                       ; preds = %do.body103
  br label %do.end105, !dbg !6271

do.end105:                                        ; preds = %do.cond104
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags96) #14, !dbg !6264
  br label %do.cond106, !dbg !6265

do.cond106:                                       ; preds = %do.end105
  br label %do.end107, !dbg !6265

do.end107:                                        ; preds = %do.cond106
  br label %if.end108, !dbg !6265

if.end108:                                        ; preds = %do.end107, %if.end67
  %24 = load i32, ptr %__ret_warn_on76, align 4, !dbg !6263
  %tobool110 = icmp ne i32 %24, 0, !dbg !6263
  %lnot111 = xor i1 %tobool110, true, !dbg !6263
  %lnot113 = xor i1 %lnot111, true, !dbg !6263
  %lnot.ext114 = zext i1 %lnot113 to i32, !dbg !6263
  %conv115 = sext i32 %lnot.ext114 to i64, !dbg !6263
  %expval116 = call i64 @llvm.expect.i64(i64 %conv115, i64 0), !dbg !6263
  store i64 %expval116, ptr %tmp109, align 8, !dbg !6264
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on76) #14, !dbg !6273
  %25 = load i64, ptr %tmp109, align 8, !dbg !6263
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6274
  br label %cleanup, !dbg !6274

cleanup:                                          ; preds = %if.end108, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %crtc) #14, !dbg !6274
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6274

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_modeset_unlock_all(ptr noundef %dev) #0 align 16 !dbg !6275 {
entry:
  %dev.addr = alloca ptr, align 8
  %config = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6277, metadata !DIExpression()), !dbg !6286
  call void @llvm.lifetime.start.p0(i64 8, ptr %config) #14, !dbg !6287
  call void @llvm.dbg.declare(metadata ptr %config, metadata !6278, metadata !DIExpression()), !dbg !6288
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6289
  %mode_config = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 31, !dbg !6290
  store ptr %mode_config, ptr %config, align 8, !dbg !6288
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #14, !dbg !6291
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !6279, metadata !DIExpression()), !dbg !6292
  %1 = load ptr, ptr %config, align 8, !dbg !6293
  %acquire_ctx = getelementptr inbounds %struct.drm_mode_config, ptr %1, i32 0, i32 2, !dbg !6294
  %2 = load ptr, ptr %acquire_ctx, align 8, !dbg !6294
  store ptr %2, ptr %ctx, align 8, !dbg !6292
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !6295
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6280, metadata !DIExpression()), !dbg !6295
  %3 = load ptr, ptr %ctx, align 8, !dbg !6295
  %tobool = icmp ne ptr %3, null, !dbg !6295
  %lnot = xor i1 %tobool, true, !dbg !6295
  %lnot1 = xor i1 %lnot, true, !dbg !6295
  %lnot2 = xor i1 %lnot1, true, !dbg !6295
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !6295
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6295
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !6296
  %tobool3 = icmp ne i32 %4, 0, !dbg !6296
  %lnot4 = xor i1 %tobool3, true, !dbg !6296
  %lnot6 = xor i1 %lnot4, true, !dbg !6296
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !6296
  %conv = sext i32 %lnot.ext7 to i64, !dbg !6296
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6296
  %tobool8 = icmp ne i64 %expval, 0, !dbg !6296
  br i1 %tobool8, label %if.then, label %if.end, !dbg !6295

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6296

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !6297
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6283, metadata !DIExpression()), !dbg !6297
  store i32 2305, ptr %__flags, align 4, !dbg !6297
  br label %do.body9, !dbg !6297

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !6298

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !6298

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !6297

do.body10:                                        ; preds = %do.end
  %5 = load i32, ptr %__flags, align 4, !dbg !6300
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 202, i32 %5, i64 12) #14, !dbg !6300, !srcloc !6302
  br label %do.cond11, !dbg !6300

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !6300

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !6297

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !6303

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !6303

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !6296
  br label %do.cond16, !dbg !6297

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !6297

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !6297

if.end:                                           ; preds = %do.end17, %entry
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !6295
  %tobool18 = icmp ne i32 %6, 0, !dbg !6295
  %lnot19 = xor i1 %tobool18, true, !dbg !6295
  %lnot21 = xor i1 %lnot19, true, !dbg !6295
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !6295
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !6295
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !6295
  store i64 %expval24, ptr %tmp, align 8, !dbg !6296
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !6305
  %7 = load i64, ptr %tmp, align 8, !dbg !6295
  %tobool25 = icmp ne i64 %7, 0, !dbg !6305
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !6306

if.then26:                                        ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6307

if.end27:                                         ; preds = %if.end
  %8 = load ptr, ptr %config, align 8, !dbg !6308
  %acquire_ctx28 = getelementptr inbounds %struct.drm_mode_config, ptr %8, i32 0, i32 2, !dbg !6309
  store ptr null, ptr %acquire_ctx28, align 8, !dbg !6310
  %9 = load ptr, ptr %ctx, align 8, !dbg !6311
  call void @drm_modeset_drop_locks(ptr noundef %9) #16, !dbg !6312
  %10 = load ptr, ptr %ctx, align 8, !dbg !6313
  call void @drm_modeset_acquire_fini(ptr noundef %10) #16, !dbg !6314
  %11 = load ptr, ptr %ctx, align 8, !dbg !6315
  call void @kfree(ptr noundef %11) #16, !dbg !6316
  %12 = load ptr, ptr %dev.addr, align 8, !dbg !6317
  %mode_config29 = getelementptr inbounds %struct.drm_device, ptr %12, i32 0, i32 31, !dbg !6318
  %mutex = getelementptr inbounds %struct.drm_mode_config, ptr %mode_config29, i32 0, i32 0, !dbg !6319
  call void @mutex_unlock(ptr noundef %mutex) #16, !dbg !6320
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6321
  br label %cleanup, !dbg !6321

cleanup:                                          ; preds = %if.end27, %if.then26
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #14, !dbg !6321
  call void @llvm.lifetime.end.p0(i64 8, ptr %config) #14, !dbg !6321
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6321

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_modeset_drop_locks(ptr noundef %ctx) #0 align 16 !dbg !6322 {
entry:
  %ctx.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %lock = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp31 = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !6324, metadata !DIExpression()), !dbg !6335
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !6336
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6325, metadata !DIExpression()), !dbg !6336
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !6336
  %contended = getelementptr inbounds %struct.drm_modeset_acquire_ctx, ptr %0, i32 0, i32 1, !dbg !6336
  %1 = load ptr, ptr %contended, align 8, !dbg !6336
  %tobool = icmp ne ptr %1, null, !dbg !6336
  %lnot = xor i1 %tobool, true, !dbg !6336
  %lnot1 = xor i1 %lnot, true, !dbg !6336
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6336
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6336
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !6337
  %tobool2 = icmp ne i32 %2, 0, !dbg !6337
  %lnot3 = xor i1 %tobool2, true, !dbg !6337
  %lnot5 = xor i1 %lnot3, true, !dbg !6337
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !6337
  %conv = sext i32 %lnot.ext6 to i64, !dbg !6337
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6337
  %tobool7 = icmp ne i64 %expval, 0, !dbg !6337
  br i1 %tobool7, label %if.then, label %if.end, !dbg !6336

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6337

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !6338
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6328, metadata !DIExpression()), !dbg !6338
  store i32 2305, ptr %__flags, align 4, !dbg !6338
  br label %do.body8, !dbg !6338

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !6339

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !6339

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !6338

do.body9:                                         ; preds = %do.end
  %3 = load i32, ptr %__flags, align 4, !dbg !6341
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 276, i32 %3, i64 12) #14, !dbg !6341, !srcloc !6343
  br label %do.cond10, !dbg !6341

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !6341

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !6338

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !6344

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !6344

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !6337
  br label %do.cond15, !dbg !6338

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !6338

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !6338

if.end:                                           ; preds = %do.end16, %entry
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !6336
  %tobool17 = icmp ne i32 %4, 0, !dbg !6336
  %lnot18 = xor i1 %tobool17, true, !dbg !6336
  %lnot20 = xor i1 %lnot18, true, !dbg !6336
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !6336
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !6336
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !6336
  store i64 %expval23, ptr %tmp, align 8, !dbg !6337
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !6346
  %5 = load i64, ptr %tmp, align 8, !dbg !6336
  %tobool24 = icmp ne i64 %5, 0, !dbg !6346
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !6347

if.then25:                                        ; preds = %if.end
  %6 = load ptr, ptr %ctx.addr, align 8, !dbg !6348
  %stack_depot = getelementptr inbounds %struct.drm_modeset_acquire_ctx, ptr %6, i32 0, i32 2, !dbg !6349
  %7 = load i32, ptr %stack_depot, align 8, !dbg !6349
  call void @__drm_stack_depot_print(i32 noundef %7) #16, !dbg !6350
  br label %if.end26, !dbg !6350

if.end26:                                         ; preds = %if.then25, %if.end
  br label %while.cond, !dbg !6351

while.cond:                                       ; preds = %while.body, %if.end26
  %8 = load ptr, ptr %ctx.addr, align 8, !dbg !6352
  %locked = getelementptr inbounds %struct.drm_modeset_acquire_ctx, ptr %8, i32 0, i32 3, !dbg !6353
  %call = call i32 @list_empty(ptr noundef %locked) #16, !dbg !6354
  %tobool27 = icmp ne i32 %call, 0, !dbg !6355
  %lnot28 = xor i1 %tobool27, true, !dbg !6355
  br i1 %lnot28, label %while.body, label %while.end, !dbg !6351

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %lock) #14, !dbg !6356
  call void @llvm.dbg.declare(metadata ptr %lock, metadata !6331, metadata !DIExpression()), !dbg !6357
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !6358
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6333, metadata !DIExpression()), !dbg !6358
  %9 = load ptr, ptr %ctx.addr, align 8, !dbg !6358
  %locked30 = getelementptr inbounds %struct.drm_modeset_acquire_ctx, ptr %9, i32 0, i32 3, !dbg !6358
  %next = getelementptr inbounds %struct.list_head, ptr %locked30, i32 0, i32 0, !dbg !6358
  %10 = load ptr, ptr %next, align 8, !dbg !6358
  store ptr %10, ptr %__mptr, align 8, !dbg !6358
  %11 = load ptr, ptr %__mptr, align 8, !dbg !6358
  %add.ptr = getelementptr i8, ptr %11, i64 -40, !dbg !6358
  store ptr %add.ptr, ptr %tmp31, align 8, !dbg !6358
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !6359
  %12 = load ptr, ptr %tmp31, align 8, !dbg !6358
  store ptr %12, ptr %lock, align 8, !dbg !6360
  %13 = load ptr, ptr %lock, align 8, !dbg !6361
  call void @drm_modeset_unlock(ptr noundef %13) #16, !dbg !6362
  call void @llvm.lifetime.end.p0(i64 8, ptr %lock) #14, !dbg !6363
  br label %while.cond, !dbg !6351, !llvm.loop !6364

while.end:                                        ; preds = %while.cond
  ret void, !dbg !6365
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6366 dso_local void @mutex_unlock(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @drm_modeset_is_locked(ptr noundef %lock) #6 align 16 !dbg !6367 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6371, metadata !DIExpression()), !dbg !6372
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6373
  %mutex = getelementptr inbounds %struct.drm_modeset_lock, ptr %0, i32 0, i32 0, !dbg !6374
  %call = call zeroext i1 @ww_mutex_is_locked(ptr noundef %mutex) #16, !dbg !6375
  ret i1 %call, !dbg !6376
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6377 dso_local zeroext i1 @mutex_is_locked(ptr noundef) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ww_acquire_init(ptr noundef %ctx, ptr noundef %ww_class) #6 align 16 !dbg !6380 {
entry:
  %ctx.addr = alloca ptr, align 8
  %ww_class.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !6385, metadata !DIExpression()), !dbg !6387
  store ptr %ww_class, ptr %ww_class.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ww_class.addr, metadata !6386, metadata !DIExpression()), !dbg !6388
  %call = call ptr @get_current() #16, !dbg !6389
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !6390
  %task = getelementptr inbounds %struct.ww_acquire_ctx, ptr %0, i32 0, i32 0, !dbg !6391
  store ptr %call, ptr %task, align 8, !dbg !6392
  %1 = load ptr, ptr %ww_class.addr, align 8, !dbg !6393
  %stamp = getelementptr inbounds %struct.ww_class, ptr %1, i32 0, i32 0, !dbg !6394
  %call1 = call i64 @atomic_long_inc_return_relaxed(ptr noundef %stamp) #16, !dbg !6395
  %2 = load ptr, ptr %ctx.addr, align 8, !dbg !6396
  %stamp2 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %2, i32 0, i32 1, !dbg !6397
  store i64 %call1, ptr %stamp2, align 8, !dbg !6398
  %3 = load ptr, ptr %ctx.addr, align 8, !dbg !6399
  %acquired = getelementptr inbounds %struct.ww_acquire_ctx, ptr %3, i32 0, i32 2, !dbg !6400
  store i32 0, ptr %acquired, align 8, !dbg !6401
  %4 = load ptr, ptr %ctx.addr, align 8, !dbg !6402
  %wounded = getelementptr inbounds %struct.ww_acquire_ctx, ptr %4, i32 0, i32 3, !dbg !6403
  store i16 0, ptr %wounded, align 4, !dbg !6404
  %5 = load ptr, ptr %ww_class.addr, align 8, !dbg !6405
  %is_wait_die = getelementptr inbounds %struct.ww_class, ptr %5, i32 0, i32 5, !dbg !6406
  %6 = load i32, ptr %is_wait_die, align 8, !dbg !6406
  %conv = trunc i32 %6 to i16, !dbg !6405
  %7 = load ptr, ptr %ctx.addr, align 8, !dbg !6407
  %is_wait_die3 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %7, i32 0, i32 4, !dbg !6408
  store i16 %conv, ptr %is_wait_die3, align 2, !dbg !6409
  ret void, !dbg !6410
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #6 align 16 !dbg !6411 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !6416, metadata !DIExpression()), !dbg !6417
  br label %do.body, !dbg !6418

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6419

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !6421

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !6419

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !6423
  %1 = load ptr, ptr %list.addr, align 8, !dbg !6423
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !6423
  store volatile ptr %0, ptr %next, align 8, !dbg !6423
  br label %do.end3, !dbg !6423

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !6419

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !6425

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !6426

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !6428

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !6426

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !6430
  %3 = load ptr, ptr %list.addr, align 8, !dbg !6430
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !6430
  store volatile ptr %2, ptr %prev, align 8, !dbg !6430
  br label %do.end9, !dbg !6430

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !6426

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !6432
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ww_acquire_fini(ptr noundef %ctx) #6 align 16 !dbg !6433 {
entry:
  %ctx.addr = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !6435, metadata !DIExpression()), !dbg !6436
  ret void, !dbg !6437
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__drm_stack_depot_print(i32 noundef %stack_depot) #0 align 16 !dbg !6438 {
entry:
  %stack_depot.addr = alloca i32, align 4
  store i32 %stack_depot, ptr %stack_depot.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %stack_depot.addr, metadata !6442, metadata !DIExpression()), !dbg !6443
  ret void, !dbg !6444
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #6 align 16 !dbg !6445 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6451, metadata !DIExpression()), !dbg !6452
  br label %do.body, !dbg !6453

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6455

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !6453
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !6453
  %1 = load volatile ptr, ptr %next, align 8, !dbg !6453
  store ptr %1, ptr %tmp, align 8, !dbg !6455
  %2 = load ptr, ptr %tmp, align 8, !dbg !6453
  %3 = load ptr, ptr %head.addr, align 8, !dbg !6457
  %cmp = icmp eq ptr %2, %3, !dbg !6458
  %conv = zext i1 %cmp to i32, !dbg !6458
  ret i32 %conv, !dbg !6459
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_modeset_unlock(ptr noundef %lock) #0 align 16 !dbg !6460 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6464, metadata !DIExpression()), !dbg !6465
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6466
  %head = getelementptr inbounds %struct.drm_modeset_lock, ptr %0, i32 0, i32 1, !dbg !6467
  call void @list_del_init(ptr noundef %head) #16, !dbg !6468
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !6469
  %mutex = getelementptr inbounds %struct.drm_modeset_lock, ptr %1, i32 0, i32 0, !dbg !6470
  call void @ww_mutex_unlock(ptr noundef %mutex) #16, !dbg !6471
  ret void, !dbg !6472
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @modeset_lock(ptr noundef %lock, ptr noundef %ctx, i1 noundef zeroext %interruptible, i1 noundef zeroext %slow) #6 align 16 !dbg !6473 {
entry:
  %retval = alloca i32, align 4
  %lock.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %interruptible.addr = alloca i8, align 1
  %slow.addr = alloca i8, align 1
  %ret = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on65 = alloca i32, align 4
  %__flags84 = alloca i32, align 4
  %tmp97 = alloca i64, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6477, metadata !DIExpression()), !dbg !6495
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !6478, metadata !DIExpression()), !dbg !6496
  %frombool = zext i1 %interruptible to i8
  store i8 %frombool, ptr %interruptible.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %interruptible.addr, metadata !6479, metadata !DIExpression()), !dbg !6497
  %frombool1 = zext i1 %slow to i8
  store i8 %frombool1, ptr %slow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %slow.addr, metadata !6480, metadata !DIExpression()), !dbg !6498
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !6499
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6481, metadata !DIExpression()), !dbg !6500
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !6501
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6482, metadata !DIExpression()), !dbg !6501
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !6501
  %contended = getelementptr inbounds %struct.drm_modeset_acquire_ctx, ptr %0, i32 0, i32 1, !dbg !6501
  %1 = load ptr, ptr %contended, align 8, !dbg !6501
  %tobool = icmp ne ptr %1, null, !dbg !6501
  %lnot = xor i1 %tobool, true, !dbg !6501
  %lnot2 = xor i1 %lnot, true, !dbg !6501
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !6501
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6501
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !6502
  %tobool3 = icmp ne i32 %2, 0, !dbg !6502
  %lnot4 = xor i1 %tobool3, true, !dbg !6502
  %lnot6 = xor i1 %lnot4, true, !dbg !6502
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !6502
  %conv = sext i32 %lnot.ext7 to i64, !dbg !6502
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6502
  %tobool8 = icmp ne i64 %expval, 0, !dbg !6502
  br i1 %tobool8, label %if.then, label %if.end, !dbg !6501

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6502

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !6503
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6485, metadata !DIExpression()), !dbg !6503
  store i32 2305, ptr %__flags, align 4, !dbg !6503
  br label %do.body9, !dbg !6503

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !6504

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !6504

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !6503

do.body10:                                        ; preds = %do.end
  %3 = load i32, ptr %__flags, align 4, !dbg !6506
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 296, i32 %3, i64 12) #14, !dbg !6506, !srcloc !6508
  br label %do.cond11, !dbg !6506

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !6506

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !6503

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !6509

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !6509

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !6502
  br label %do.cond16, !dbg !6503

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !6503

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !6503

if.end:                                           ; preds = %do.end17, %entry
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !6501
  %tobool18 = icmp ne i32 %4, 0, !dbg !6501
  %lnot19 = xor i1 %tobool18, true, !dbg !6501
  %lnot21 = xor i1 %lnot19, true, !dbg !6501
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !6501
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !6501
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !6501
  store i64 %expval24, ptr %tmp, align 8, !dbg !6502
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !6511
  %5 = load i64, ptr %tmp, align 8, !dbg !6501
  %tobool25 = icmp ne i64 %5, 0, !dbg !6511
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !6512

if.then26:                                        ; preds = %if.end
  %6 = load ptr, ptr %ctx.addr, align 8, !dbg !6513
  %stack_depot = getelementptr inbounds %struct.drm_modeset_acquire_ctx, ptr %6, i32 0, i32 2, !dbg !6514
  %7 = load i32, ptr %stack_depot, align 8, !dbg !6514
  call void @__drm_stack_depot_print(i32 noundef %7) #16, !dbg !6515
  br label %if.end27, !dbg !6515

if.end27:                                         ; preds = %if.then26, %if.end
  %8 = load ptr, ptr %ctx.addr, align 8, !dbg !6516
  %trylock_only = getelementptr inbounds %struct.drm_modeset_acquire_ctx, ptr %8, i32 0, i32 4, !dbg !6518
  %9 = load i8, ptr %trylock_only, align 8, !dbg !6518, !range !6179, !noundef !1079
  %tobool28 = trunc i8 %9 to i1, !dbg !6518
  br i1 %tobool28, label %if.then29, label %if.else35, !dbg !6519

if.then29:                                        ; preds = %if.end27
  br label %do.body30, !dbg !6520

do.body30:                                        ; preds = %if.then29
  %10 = load ptr, ptr %ctx.addr, align 8, !dbg !6522
  %ww_ctx = getelementptr inbounds %struct.drm_modeset_acquire_ctx, ptr %10, i32 0, i32 0, !dbg !6522
  br label %do.cond31, !dbg !6522

do.cond31:                                        ; preds = %do.body30
  br label %do.end32, !dbg !6522

do.end32:                                         ; preds = %do.cond31
  %11 = load ptr, ptr %lock.addr, align 8, !dbg !6524
  %mutex = getelementptr inbounds %struct.drm_modeset_lock, ptr %11, i32 0, i32 0, !dbg !6526
  %call = call i32 @ww_mutex_trylock(ptr noundef %mutex, ptr noundef null) #16, !dbg !6527
  %tobool33 = icmp ne i32 %call, 0, !dbg !6527
  br i1 %tobool33, label %if.else, label %if.then34, !dbg !6528

if.then34:                                        ; preds = %do.end32
  store i32 -16, ptr %retval, align 4, !dbg !6529
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6529

if.else:                                          ; preds = %do.end32
  store i32 0, ptr %retval, align 4, !dbg !6530
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6530

if.else35:                                        ; preds = %if.end27
  %12 = load i8, ptr %interruptible.addr, align 1, !dbg !6531, !range !6179, !noundef !1079
  %tobool36 = trunc i8 %12 to i1, !dbg !6531
  br i1 %tobool36, label %land.lhs.true, label %if.else44, !dbg !6533

land.lhs.true:                                    ; preds = %if.else35
  %13 = load i8, ptr %slow.addr, align 1, !dbg !6534, !range !6179, !noundef !1079
  %tobool38 = trunc i8 %13 to i1, !dbg !6534
  br i1 %tobool38, label %if.then40, label %if.else44, !dbg !6535

if.then40:                                        ; preds = %land.lhs.true
  %14 = load ptr, ptr %lock.addr, align 8, !dbg !6536
  %mutex41 = getelementptr inbounds %struct.drm_modeset_lock, ptr %14, i32 0, i32 0, !dbg !6538
  %15 = load ptr, ptr %ctx.addr, align 8, !dbg !6539
  %ww_ctx42 = getelementptr inbounds %struct.drm_modeset_acquire_ctx, ptr %15, i32 0, i32 0, !dbg !6540
  %call43 = call i32 @ww_mutex_lock_slow_interruptible(ptr noundef %mutex41, ptr noundef %ww_ctx42) #16, !dbg !6541
  store i32 %call43, ptr %ret, align 4, !dbg !6542
  br label %if.end61, !dbg !6543

if.else44:                                        ; preds = %land.lhs.true, %if.else35
  %16 = load i8, ptr %interruptible.addr, align 1, !dbg !6544, !range !6179, !noundef !1079
  %tobool45 = trunc i8 %16 to i1, !dbg !6544
  br i1 %tobool45, label %if.then46, label %if.else50, !dbg !6546

if.then46:                                        ; preds = %if.else44
  %17 = load ptr, ptr %lock.addr, align 8, !dbg !6547
  %mutex47 = getelementptr inbounds %struct.drm_modeset_lock, ptr %17, i32 0, i32 0, !dbg !6549
  %18 = load ptr, ptr %ctx.addr, align 8, !dbg !6550
  %ww_ctx48 = getelementptr inbounds %struct.drm_modeset_acquire_ctx, ptr %18, i32 0, i32 0, !dbg !6551
  %call49 = call i32 @ww_mutex_lock_interruptible(ptr noundef %mutex47, ptr noundef %ww_ctx48) #16, !dbg !6552
  store i32 %call49, ptr %ret, align 4, !dbg !6553
  br label %if.end60, !dbg !6554

if.else50:                                        ; preds = %if.else44
  %19 = load i8, ptr %slow.addr, align 1, !dbg !6555, !range !6179, !noundef !1079
  %tobool51 = trunc i8 %19 to i1, !dbg !6555
  br i1 %tobool51, label %if.then52, label %if.else55, !dbg !6557

if.then52:                                        ; preds = %if.else50
  %20 = load ptr, ptr %lock.addr, align 8, !dbg !6558
  %mutex53 = getelementptr inbounds %struct.drm_modeset_lock, ptr %20, i32 0, i32 0, !dbg !6560
  %21 = load ptr, ptr %ctx.addr, align 8, !dbg !6561
  %ww_ctx54 = getelementptr inbounds %struct.drm_modeset_acquire_ctx, ptr %21, i32 0, i32 0, !dbg !6562
  call void @ww_mutex_lock_slow(ptr noundef %mutex53, ptr noundef %ww_ctx54) #16, !dbg !6563
  store i32 0, ptr %ret, align 4, !dbg !6564
  br label %if.end59, !dbg !6565

if.else55:                                        ; preds = %if.else50
  %22 = load ptr, ptr %lock.addr, align 8, !dbg !6566
  %mutex56 = getelementptr inbounds %struct.drm_modeset_lock, ptr %22, i32 0, i32 0, !dbg !6568
  %23 = load ptr, ptr %ctx.addr, align 8, !dbg !6569
  %ww_ctx57 = getelementptr inbounds %struct.drm_modeset_acquire_ctx, ptr %23, i32 0, i32 0, !dbg !6570
  %call58 = call i32 @ww_mutex_lock(ptr noundef %mutex56, ptr noundef %ww_ctx57) #16, !dbg !6571
  store i32 %call58, ptr %ret, align 4, !dbg !6572
  br label %if.end59

if.end59:                                         ; preds = %if.else55, %if.then52
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.then46
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.then40
  br label %if.end62

if.end62:                                         ; preds = %if.end61
  %24 = load i32, ptr %ret, align 4, !dbg !6573
  %tobool63 = icmp ne i32 %24, 0, !dbg !6573
  br i1 %tobool63, label %if.else106, label %if.then64, !dbg !6574

if.then64:                                        ; preds = %if.end62
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on65) #14, !dbg !6575
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on65, metadata !6488, metadata !DIExpression()), !dbg !6575
  %25 = load ptr, ptr %lock.addr, align 8, !dbg !6575
  %head = getelementptr inbounds %struct.drm_modeset_lock, ptr %25, i32 0, i32 1, !dbg !6575
  %call66 = call i32 @list_empty(ptr noundef %head) #16, !dbg !6575
  %tobool67 = icmp ne i32 %call66, 0, !dbg !6575
  %lnot68 = xor i1 %tobool67, true, !dbg !6575
  %lnot70 = xor i1 %lnot68, true, !dbg !6575
  %lnot72 = xor i1 %lnot70, true, !dbg !6575
  %lnot.ext73 = zext i1 %lnot72 to i32, !dbg !6575
  store i32 %lnot.ext73, ptr %__ret_warn_on65, align 4, !dbg !6575
  %26 = load i32, ptr %__ret_warn_on65, align 4, !dbg !6576
  %tobool74 = icmp ne i32 %26, 0, !dbg !6576
  %lnot75 = xor i1 %tobool74, true, !dbg !6576
  %lnot77 = xor i1 %lnot75, true, !dbg !6576
  %lnot.ext78 = zext i1 %lnot77 to i32, !dbg !6576
  %conv79 = sext i32 %lnot.ext78 to i64, !dbg !6576
  %expval80 = call i64 @llvm.expect.i64(i64 %conv79, i64 0), !dbg !6576
  %tobool81 = icmp ne i64 %expval80, 0, !dbg !6576
  br i1 %tobool81, label %if.then82, label %if.end96, !dbg !6575

if.then82:                                        ; preds = %if.then64
  br label %do.body83, !dbg !6576

do.body83:                                        ; preds = %if.then82
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags84) #14, !dbg !6577
  call void @llvm.dbg.declare(metadata ptr %__flags84, metadata !6492, metadata !DIExpression()), !dbg !6577
  store i32 2305, ptr %__flags84, align 4, !dbg !6577
  br label %do.body85, !dbg !6577

do.body85:                                        ; preds = %do.body83
  br label %do.cond86, !dbg !6578

do.cond86:                                        ; preds = %do.body85
  br label %do.end87, !dbg !6578

do.end87:                                         ; preds = %do.cond86
  br label %do.body88, !dbg !6577

do.body88:                                        ; preds = %do.end87
  %27 = load i32, ptr %__flags84, align 4, !dbg !6580
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 317, i32 %27, i64 12) #14, !dbg !6580, !srcloc !6582
  br label %do.cond89, !dbg !6580

do.cond89:                                        ; preds = %do.body88
  br label %do.end90, !dbg !6580

do.end90:                                         ; preds = %do.cond89
  br label %do.body91, !dbg !6577

do.body91:                                        ; preds = %do.end90
  br label %do.cond92, !dbg !6583

do.cond92:                                        ; preds = %do.body91
  br label %do.end93, !dbg !6583

do.end93:                                         ; preds = %do.cond92
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags84) #14, !dbg !6576
  br label %do.cond94, !dbg !6577

do.cond94:                                        ; preds = %do.end93
  br label %do.end95, !dbg !6577

do.end95:                                         ; preds = %do.cond94
  br label %if.end96, !dbg !6577

if.end96:                                         ; preds = %do.end95, %if.then64
  %28 = load i32, ptr %__ret_warn_on65, align 4, !dbg !6575
  %tobool98 = icmp ne i32 %28, 0, !dbg !6575
  %lnot99 = xor i1 %tobool98, true, !dbg !6575
  %lnot101 = xor i1 %lnot99, true, !dbg !6575
  %lnot.ext102 = zext i1 %lnot101 to i32, !dbg !6575
  %conv103 = sext i32 %lnot.ext102 to i64, !dbg !6575
  %expval104 = call i64 @llvm.expect.i64(i64 %conv103, i64 0), !dbg !6575
  store i64 %expval104, ptr %tmp97, align 8, !dbg !6576
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on65) #14, !dbg !6585
  %29 = load i64, ptr %tmp97, align 8, !dbg !6575
  %30 = load ptr, ptr %lock.addr, align 8, !dbg !6586
  %head105 = getelementptr inbounds %struct.drm_modeset_lock, ptr %30, i32 0, i32 1, !dbg !6587
  %31 = load ptr, ptr %ctx.addr, align 8, !dbg !6588
  %locked = getelementptr inbounds %struct.drm_modeset_acquire_ctx, ptr %31, i32 0, i32 3, !dbg !6589
  call void @list_add(ptr noundef %head105, ptr noundef %locked) #16, !dbg !6590
  br label %if.end118, !dbg !6591

if.else106:                                       ; preds = %if.end62
  %32 = load i32, ptr %ret, align 4, !dbg !6592
  %cmp = icmp eq i32 %32, -114, !dbg !6594
  br i1 %cmp, label %if.then108, label %if.else109, !dbg !6595

if.then108:                                       ; preds = %if.else106
  store i32 0, ptr %ret, align 4, !dbg !6596
  br label %if.end117, !dbg !6598

if.else109:                                       ; preds = %if.else106
  %33 = load i32, ptr %ret, align 4, !dbg !6599
  %cmp110 = icmp eq i32 %33, -35, !dbg !6601
  br i1 %cmp110, label %if.then112, label %if.end116, !dbg !6602

if.then112:                                       ; preds = %if.else109
  %34 = load ptr, ptr %lock.addr, align 8, !dbg !6603
  %35 = load ptr, ptr %ctx.addr, align 8, !dbg !6605
  %contended113 = getelementptr inbounds %struct.drm_modeset_acquire_ctx, ptr %35, i32 0, i32 1, !dbg !6606
  store ptr %34, ptr %contended113, align 8, !dbg !6607
  %call114 = call i32 @__drm_stack_depot_save() #16, !dbg !6608
  %36 = load ptr, ptr %ctx.addr, align 8, !dbg !6609
  %stack_depot115 = getelementptr inbounds %struct.drm_modeset_acquire_ctx, ptr %36, i32 0, i32 2, !dbg !6610
  store i32 %call114, ptr %stack_depot115, align 8, !dbg !6611
  br label %if.end116, !dbg !6612

if.end116:                                        ; preds = %if.then112, %if.else109
  br label %if.end117

if.end117:                                        ; preds = %if.end116, %if.then108
  br label %if.end118

if.end118:                                        ; preds = %if.end117, %if.end96
  %37 = load i32, ptr %ret, align 4, !dbg !6613
  store i32 %37, ptr %retval, align 4, !dbg !6614
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6614

cleanup:                                          ; preds = %if.end118, %if.else, %if.then34
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !6615
  %38 = load i32, ptr %retval, align 4, !dbg !6615
  ret i32 %38, !dbg !6615
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_modeset_lock_init(ptr noundef %lock) #0 align 16 !dbg !6616 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6618, metadata !DIExpression()), !dbg !6619
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6620
  %mutex = getelementptr inbounds %struct.drm_modeset_lock, ptr %0, i32 0, i32 0, !dbg !6621
  call void @ww_mutex_init(ptr noundef %mutex, ptr noundef @crtc_ww_class) #16, !dbg !6622
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !6623
  %head = getelementptr inbounds %struct.drm_modeset_lock, ptr %1, i32 0, i32 1, !dbg !6624
  call void @INIT_LIST_HEAD(ptr noundef %head) #16, !dbg !6625
  call void @__drm_stack_depot_init() #16, !dbg !6626
  ret void, !dbg !6627
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ww_mutex_init(ptr noundef %lock, ptr noundef %ww_class) #6 align 16 !dbg !6628 {
entry:
  %lock.addr = alloca ptr, align 8
  %ww_class.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6633, metadata !DIExpression()), !dbg !6635
  store ptr %ww_class, ptr %ww_class.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ww_class.addr, metadata !6634, metadata !DIExpression()), !dbg !6636
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6637
  %base = getelementptr inbounds %struct.ww_mutex, ptr %0, i32 0, i32 0, !dbg !6637
  %1 = load ptr, ptr %ww_class.addr, align 8, !dbg !6637
  %mutex_name = getelementptr inbounds %struct.ww_class, ptr %1, i32 0, i32 4, !dbg !6637
  %2 = load ptr, ptr %mutex_name, align 8, !dbg !6637
  %3 = load ptr, ptr %ww_class.addr, align 8, !dbg !6637
  %mutex_key = getelementptr inbounds %struct.ww_class, ptr %3, i32 0, i32 2, !dbg !6637
  call void @__mutex_init(ptr noundef %base, ptr noundef %2, ptr noundef %mutex_key) #16, !dbg !6637
  %4 = load ptr, ptr %lock.addr, align 8, !dbg !6638
  %ctx = getelementptr inbounds %struct.ww_mutex, ptr %4, i32 0, i32 1, !dbg !6639
  store ptr null, ptr %ctx, align 8, !dbg !6640
  ret void, !dbg !6641
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__drm_stack_depot_init() #0 align 16 !dbg !6642 {
entry:
  ret void, !dbg !6643
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_modeset_lock(ptr noundef %lock, ptr noundef %ctx) #0 align 16 !dbg !6644 {
entry:
  %retval = alloca i32, align 4
  %lock.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6648, metadata !DIExpression()), !dbg !6650
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !6649, metadata !DIExpression()), !dbg !6651
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !6652
  %tobool = icmp ne ptr %0, null, !dbg !6652
  br i1 %tobool, label %if.then, label %if.end, !dbg !6654

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !6655
  %2 = load ptr, ptr %ctx.addr, align 8, !dbg !6656
  %3 = load ptr, ptr %ctx.addr, align 8, !dbg !6657
  %interruptible = getelementptr inbounds %struct.drm_modeset_acquire_ctx, ptr %3, i32 0, i32 5, !dbg !6658
  %4 = load i8, ptr %interruptible, align 1, !dbg !6658, !range !6179, !noundef !1079
  %tobool1 = trunc i8 %4 to i1, !dbg !6658
  %call = call i32 @modeset_lock(ptr noundef %1, ptr noundef %2, i1 noundef zeroext %tobool1, i1 noundef zeroext false) #16, !dbg !6659
  store i32 %call, ptr %retval, align 4, !dbg !6660
  br label %return, !dbg !6660

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %lock.addr, align 8, !dbg !6661
  %mutex = getelementptr inbounds %struct.drm_modeset_lock, ptr %5, i32 0, i32 0, !dbg !6662
  %call2 = call i32 @ww_mutex_lock(ptr noundef %mutex, ptr noundef null) #16, !dbg !6663
  store i32 0, ptr %retval, align 4, !dbg !6664
  br label %return, !dbg !6664

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, ptr %retval, align 4, !dbg !6665
  ret i32 %6, !dbg !6665
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6666 dso_local i32 @ww_mutex_lock(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_modeset_lock_single_interruptible(ptr noundef %lock) #0 align 16 !dbg !6669 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6673, metadata !DIExpression()), !dbg !6674
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6675
  %mutex = getelementptr inbounds %struct.drm_modeset_lock, ptr %0, i32 0, i32 0, !dbg !6676
  %call = call i32 @ww_mutex_lock_interruptible(ptr noundef %mutex, ptr noundef null) #16, !dbg !6677
  ret i32 %call, !dbg !6678
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6679 dso_local i32 @ww_mutex_lock_interruptible(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del_init(ptr noundef %entry1) #6 align 16 !dbg !6680 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6682, metadata !DIExpression()), !dbg !6683
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6684
  call void @__list_del_entry(ptr noundef %0) #16, !dbg !6685
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6686
  call void @INIT_LIST_HEAD(ptr noundef %1) #16, !dbg !6687
  ret void, !dbg !6688
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6689 dso_local void @ww_mutex_unlock(ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !6692 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6694, metadata !DIExpression()), !dbg !6699
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6695, metadata !DIExpression()), !dbg !6700
  %0 = load i64, ptr %size.addr, align 8, !dbg !6701
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6702
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6703

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6704
  %tobool = icmp ne i64 %2, 0, !dbg !6704
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6705

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #14, !dbg !6706
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6696, metadata !DIExpression()), !dbg !6707
  %3 = load i64, ptr %size.addr, align 8, !dbg !6708
  %cmp = icmp ugt i64 %3, 8192, !dbg !6710
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6711

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6712
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6713
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #15, !dbg !6714
  store ptr %call, ptr %retval, align 8, !dbg !6715
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6715

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6716
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !6716
  store i32 %call2, ptr %index, align 4, !dbg !6717
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6718
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6719
  %9 = ptrtoint ptr %8 to i64, !dbg !6719
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !6720
  %idxprom = zext i32 %call3 to i64, !dbg !6721
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6721
  %10 = load i32, ptr %index, align 4, !dbg !6722
  %idxprom4 = zext i32 %10 to i64, !dbg !6721
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6721
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6721
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6723
  %13 = load i64, ptr %size.addr, align 8, !dbg !6724
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #17, !dbg !6725
  store ptr %call6, ptr %retval, align 8, !dbg !6726
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6726

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #14, !dbg !6727
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6728
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6729
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #15, !dbg !6730
  store ptr %call8, ptr %retval, align 8, !dbg !6731
  br label %return, !dbg !6731

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6732
  ret ptr %16, !dbg !6732
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6733 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #11 align 16 !dbg !6734 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6738, metadata !DIExpression()), !dbg !6740
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6739, metadata !DIExpression()), !dbg !6741
  %0 = load i64, ptr %size.addr, align 8, !dbg !6742
  %tobool = icmp ne i64 %0, 0, !dbg !6742
  br i1 %tobool, label %if.end, label %if.then, !dbg !6744

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6745
  br label %return, !dbg !6745

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6746
  %cmp = icmp ule i64 %1, 8, !dbg !6748
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6749

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6750
  br label %return, !dbg !6750

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6751
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6753
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6754

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6755
  %cmp4 = icmp ule i64 %3, 96, !dbg !6756
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6757

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6758
  br label %return, !dbg !6758

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6759
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6761
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6762

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6763
  %cmp9 = icmp ule i64 %5, 192, !dbg !6764
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6765

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6766
  br label %return, !dbg !6766

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6767
  %cmp12 = icmp ule i64 %6, 8, !dbg !6769
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6770

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6771
  br label %return, !dbg !6771

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6772
  %cmp15 = icmp ule i64 %7, 16, !dbg !6774
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6775

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6776
  br label %return, !dbg !6776

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6777
  %cmp18 = icmp ule i64 %8, 32, !dbg !6779
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6780

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6781
  br label %return, !dbg !6781

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6782
  %cmp21 = icmp ule i64 %9, 64, !dbg !6784
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6785

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6786
  br label %return, !dbg !6786

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6787
  %cmp24 = icmp ule i64 %10, 128, !dbg !6789
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6790

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6791
  br label %return, !dbg !6791

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6792
  %cmp27 = icmp ule i64 %11, 256, !dbg !6794
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6795

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6796
  br label %return, !dbg !6796

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6797
  %cmp30 = icmp ule i64 %12, 512, !dbg !6799
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6800

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6801
  br label %return, !dbg !6801

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6802
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6804
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6805

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6806
  br label %return, !dbg !6806

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6807
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6809
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6810

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6811
  br label %return, !dbg !6811

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6812
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6814
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6815

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6816
  br label %return, !dbg !6816

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6817
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6819
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6820

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6821
  br label %return, !dbg !6821

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6822
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6824
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6825

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6826
  br label %return, !dbg !6826

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6827
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6829
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6830

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6831
  br label %return, !dbg !6831

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6832
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6834
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6835

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6836
  br label %return, !dbg !6836

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6837
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6839
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6840

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6841
  br label %return, !dbg !6841

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6842
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6844
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6845

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6846
  br label %return, !dbg !6846

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6847
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6849
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6850

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6851
  br label %return, !dbg !6851

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6852
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6854
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6855

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6856
  br label %return, !dbg !6856

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6857
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6859
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6860

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6861
  br label %return, !dbg !6861

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6862, !range !6179, !noundef !1079
  %tobool69 = trunc i8 %25 to i1, !dbg !6862
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6864

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6865

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_232() #18, !dbg !6866, !srcloc !6869
  unreachable, !dbg !6866

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6870

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6871

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6872

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6874

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6872

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 480, i32 0, i64 12) #14, !dbg !6876, !srcloc !6878
  br label %do.end75, !dbg !6876

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6872

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6879
  br label %return, !dbg !6879

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6880
  ret i32 %26, !dbg !6880
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6881 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #11 align 16 !dbg !6884 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6888, metadata !DIExpression()), !dbg !6890
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6889, metadata !DIExpression()), !dbg !6891
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6892
  %and = and i32 %0, 17, !dbg !6892
  %cmp = icmp eq i32 %and, 0, !dbg !6892
  %lnot = xor i1 %cmp, true, !dbg !6892
  %lnot1 = xor i1 %lnot, true, !dbg !6892
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6892
  %conv = sext i32 %lnot.ext to i64, !dbg !6892
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6892
  %tobool = icmp ne i64 %expval, 0, !dbg !6892
  br i1 %tobool, label %if.then, label %if.end, !dbg !6894

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6895
  br label %return, !dbg !6895

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6896
  %and2 = and i32 %1, 1, !dbg !6898
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6898
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6899

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6900
  br label %return, !dbg !6900

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6901
  br label %return, !dbg !6901

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6903
  ret i32 %2, !dbg !6903
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6904 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6905 dso_local void @__compiletime_assert_232() #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @ww_mutex_is_locked(ptr noundef %lock) #6 align 16 !dbg !6906 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6910, metadata !DIExpression()), !dbg !6911
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6912
  %base = getelementptr inbounds %struct.ww_mutex, ptr %0, i32 0, i32 0, !dbg !6912
  %call = call zeroext i1 @mutex_is_locked(ptr noundef %base) #16, !dbg !6912
  ret i1 %call, !dbg !6913
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #11 align 16 !dbg !6914 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #14, !dbg !6925
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6919, metadata !DIExpression()), !dbg !6925
  br label %do.body, !dbg !6925

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !6926
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6921, metadata !DIExpression()), !dbg !6926
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6926
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6926
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !6925
  br label %do.cond, !dbg !6926

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6926

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #14, !dbg !6927
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6923, metadata !DIExpression()), !dbg !6927
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #19, !dbg !6927, !srcloc !6928
  store i64 %1, ptr %pfo_val__, align 8, !dbg !6927
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !6927
  %3 = inttoptr i64 %2 to ptr, !dbg !6927
  store ptr %3, ptr %tmp, align 8, !dbg !6927
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #14, !dbg !6925
  %4 = load ptr, ptr %tmp, align 8, !dbg !6927
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !6925
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !6925
  store ptr %5, ptr %tmp1, align 8, !dbg !6925
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #14, !dbg !6929
  %6 = load ptr, ptr %tmp1, align 8, !dbg !6925
  ret ptr %6, !dbg !6930
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @atomic_long_inc_return_relaxed(ptr noundef %v) #11 align 16 !dbg !6931 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6936, metadata !DIExpression()), !dbg !6937
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6938
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #16, !dbg !6939
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6940
  %call = call i64 @raw_atomic_long_inc_return_relaxed(ptr noundef %1) #16, !dbg !6941
  ret i64 %call, !dbg !6942
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #11 align 16 !dbg !6943 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6951, metadata !DIExpression()), !dbg !6953
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6952, metadata !DIExpression()), !dbg !6954
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6955
  %1 = load i64, ptr %size.addr, align 8, !dbg !6956
  %conv = trunc i64 %1 to i32, !dbg !6956
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #16, !dbg !6957
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6958
  %3 = load i64, ptr %size.addr, align 8, !dbg !6958
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #16, !dbg !6958
  ret void, !dbg !6959
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic_long_inc_return_relaxed(ptr noundef %v) #11 align 16 !dbg !6960 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6962, metadata !DIExpression()), !dbg !6963
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6964
  %call = call i64 @raw_atomic64_inc_return_relaxed(ptr noundef %0) #16, !dbg !6965
  ret i64 %call, !dbg !6966
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !6967 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6972, metadata !DIExpression()), !dbg !6974
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6973, metadata !DIExpression()), !dbg !6975
  ret i1 true, !dbg !6976
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #6 align 16 !dbg !6977 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6982, metadata !DIExpression()), !dbg !6985
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6983, metadata !DIExpression()), !dbg !6986
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6984, metadata !DIExpression()), !dbg !6987
  ret void, !dbg !6988
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_inc_return_relaxed(ptr noundef %v) #11 align 16 !dbg !6989 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6995, metadata !DIExpression()), !dbg !6996
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6997
  %call = call i64 @raw_atomic64_add_return_relaxed(i64 noundef 1, ptr noundef %0) #16, !dbg !6998
  ret i64 %call, !dbg !6999
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_add_return_relaxed(i64 noundef %i, ptr noundef %v) #11 align 16 !dbg !7000 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7004, metadata !DIExpression()), !dbg !7006
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7005, metadata !DIExpression()), !dbg !7007
  %0 = load i64, ptr %i.addr, align 8, !dbg !7008
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7009
  %call = call i64 @arch_atomic64_add_return(i64 noundef %0, ptr noundef %1) #16, !dbg !7010
  ret i64 %call, !dbg !7011
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_atomic64_add_return(i64 noundef %i, ptr noundef %v) #11 align 16 !dbg !7012 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  %__ret = alloca i64, align 8
  %tmp = alloca i64, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7015, metadata !DIExpression()), !dbg !7019
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7016, metadata !DIExpression()), !dbg !7020
  %0 = load i64, ptr %i.addr, align 8, !dbg !7021
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #14, !dbg !7022
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !7017, metadata !DIExpression()), !dbg !7022
  %1 = load i64, ptr %i.addr, align 8, !dbg !7022
  store i64 %1, ptr %__ret, align 8, !dbg !7022
  %2 = load i64, ptr %__ret, align 8, !dbg !7022
  %3 = load ptr, ptr %v.addr, align 8, !dbg !7022
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %3, i32 0, i32 0, !dbg !7022
  %4 = call i64 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddq ${0:q}, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %counter, i64 %2, ptr elementtype(i64) %counter) #14, !dbg !7022, !srcloc !7023
  store i64 %4, ptr %__ret, align 8, !dbg !7022
  %5 = load i64, ptr %__ret, align 8, !dbg !7022
  store i64 %5, ptr %tmp, align 8, !dbg !7022
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #14, !dbg !7024
  %6 = load i64, ptr %tmp, align 8, !dbg !7022
  %add = add i64 %0, %6, !dbg !7025
  ret i64 %add, !dbg !7026
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7027 dso_local i32 @ww_mutex_trylock(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ww_mutex_lock_slow_interruptible(ptr noundef %lock, ptr noundef %ctx) #6 align 16 !dbg !7028 {
entry:
  %lock.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !7030, metadata !DIExpression()), !dbg !7032
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !7031, metadata !DIExpression()), !dbg !7033
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !7034
  %1 = load ptr, ptr %ctx.addr, align 8, !dbg !7035
  %call = call i32 @ww_mutex_lock_interruptible(ptr noundef %0, ptr noundef %1) #16, !dbg !7036
  ret i32 %call, !dbg !7037
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ww_mutex_lock_slow(ptr noundef %lock, ptr noundef %ctx) #6 align 16 !dbg !7038 {
entry:
  %lock.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !7042, metadata !DIExpression()), !dbg !7045
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !7043, metadata !DIExpression()), !dbg !7046
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !7047
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !7044, metadata !DIExpression()), !dbg !7048
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !7049
  %1 = load ptr, ptr %ctx.addr, align 8, !dbg !7050
  %call = call i32 @ww_mutex_lock(ptr noundef %0, ptr noundef %1) #16, !dbg !7051
  store i32 %call, ptr %ret, align 4, !dbg !7052
  %2 = load i32, ptr %ret, align 4, !dbg !7053
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !7054
  ret void, !dbg !7054
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add(ptr noundef %new, ptr noundef %head) #6 align 16 !dbg !7055 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !7059, metadata !DIExpression()), !dbg !7061
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !7060, metadata !DIExpression()), !dbg !7062
  %0 = load ptr, ptr %new.addr, align 8, !dbg !7063
  %1 = load ptr, ptr %head.addr, align 8, !dbg !7064
  %2 = load ptr, ptr %head.addr, align 8, !dbg !7065
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !7066
  %3 = load ptr, ptr %next, align 8, !dbg !7066
  call void @__list_add(ptr noundef %0, ptr noundef %1, ptr noundef %3) #16, !dbg !7067
  ret void, !dbg !7068
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__drm_stack_depot_save() #0 align 16 !dbg !7069 {
entry:
  ret i32 0, !dbg !7072
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #6 align 16 !dbg !7073 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !7077, metadata !DIExpression()), !dbg !7080
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !7078, metadata !DIExpression()), !dbg !7081
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !7079, metadata !DIExpression()), !dbg !7082
  %0 = load ptr, ptr %new.addr, align 8, !dbg !7083
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !7085
  %2 = load ptr, ptr %next.addr, align 8, !dbg !7086
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16, !dbg !7087
  br i1 %call, label %if.end, label %if.then, !dbg !7088

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !7089

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !7090
  %4 = load ptr, ptr %next.addr, align 8, !dbg !7091
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !7092
  store ptr %3, ptr %prev1, align 8, !dbg !7093
  %5 = load ptr, ptr %next.addr, align 8, !dbg !7094
  %6 = load ptr, ptr %new.addr, align 8, !dbg !7095
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !7096
  store ptr %5, ptr %next2, align 8, !dbg !7097
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !7098
  %8 = load ptr, ptr %new.addr, align 8, !dbg !7099
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !7100
  store ptr %7, ptr %prev3, align 8, !dbg !7101
  br label %do.body, !dbg !7102

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !7103

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !7105

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !7103

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !7107
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !7107
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !7107
  store volatile ptr %9, ptr %next6, align 8, !dbg !7107
  br label %do.end7, !dbg !7107

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !7103

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !7109
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #6 align 16 !dbg !7110 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !7114, metadata !DIExpression()), !dbg !7117
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !7115, metadata !DIExpression()), !dbg !7118
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !7116, metadata !DIExpression()), !dbg !7119
  ret i1 true, !dbg !7120
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7121 dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #6 align 16 !dbg !7125 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !7127, metadata !DIExpression()), !dbg !7128
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !7129
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #16, !dbg !7131
  br i1 %call, label %if.end, label %if.then, !dbg !7132

if.then:                                          ; preds = %entry
  br label %return, !dbg !7133

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !7134
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !7135
  %2 = load ptr, ptr %prev, align 8, !dbg !7135
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !7136
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !7137
  %4 = load ptr, ptr %next, align 8, !dbg !7137
  call void @__list_del(ptr noundef %2, ptr noundef %4) #16, !dbg !7138
  br label %return, !dbg !7139

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !7139
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #6 align 16 !dbg !7140 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !7144, metadata !DIExpression()), !dbg !7145
  ret i1 true, !dbg !7146
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #6 align 16 !dbg !7147 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !7149, metadata !DIExpression()), !dbg !7151
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !7150, metadata !DIExpression()), !dbg !7152
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !7153
  %1 = load ptr, ptr %next.addr, align 8, !dbg !7154
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !7155
  store ptr %0, ptr %prev1, align 8, !dbg !7156
  br label %do.body, !dbg !7157

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !7158

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !7160

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !7158

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !7162
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !7162
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !7162
  store volatile ptr %2, ptr %next4, align 8, !dbg !7162
  br label %do.end5, !dbg !7162

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !7158

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !7164
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { noredzone allocsize(0) }
attributes #16 = { noredzone }
attributes #17 = { noredzone allocsize(2) }
attributes #18 = { noredzone noreturn }
attributes #19 = { nounwind memory(none) }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!5888, !5889, !5890, !5891, !5892, !5893, !5894, !5895}
!llvm.ident = !{!5896}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 150, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/gpu/drm/drm_modeset_lock.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c013d9b84a492f24161c1160aa9dfaeb")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 35)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_modeset_lock_all308", scope: !9, file: !2, line: 181, type: !334, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/gpu/drm/.drm_modeset_lock.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/gpu/drm/drm\22 -D KBUILD_BASENAME=\22drm_modeset_lock\22 -D KBUILD_MODNAME=\22drm\22 -D __KBUILD_MODNAME=kmod_drm -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/gpu/drm/drm_modeset_lock.ll drivers/gpu/drm/drm_modeset_lock.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !331, globals: !5842, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !19, !24, !29, !35, !43, !59, !66, !74, !80, !87, !93, !99, !106, !114, !122, !131, !136, !141, !147, !190, !199, !205, !210, !218, !222, !238, !258, !264, !270, !277, !287, !292, !299, !304, !309, !316, !321}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !12, line: 312, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !17, !18}
!15 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!16 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!17 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!18 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !20, line: 2052, baseType: !13, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!21 = !{!22, !23}
!22 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!23 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !25, line: 65, baseType: !13, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!26 = !{!27, !28}
!27 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!28 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !30, line: 16, baseType: !13, size: 32, elements: !31)
!30 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!31 = !{!32, !33, !34}
!32 = !DIEnumerator(name: "TT_NONE", value: 0)
!33 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!34 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !36, line: 68, baseType: !13, size: 32, elements: !37)
!36 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!37 = !{!38, !39, !40, !41, !42}
!38 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!39 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!40 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!41 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!42 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !44, line: 1325, baseType: !13, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!45 = !{!46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58}
!46 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!47 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!48 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!49 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!50 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!51 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!52 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!53 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!54 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!55 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!56 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!57 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!58 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !60, line: 51, baseType: !13, size: 32, elements: !61)
!60 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!61 = !{!62, !63, !64, !65}
!62 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!63 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!64 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!65 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !67, line: 9, baseType: !13, size: 32, elements: !68)
!67 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!68 = !{!69, !70, !71, !72, !73}
!69 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!70 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!71 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!72 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!73 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !75, line: 54, baseType: !13, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!76 = !{!77, !78, !79}
!77 = !DIEnumerator(name: "USRQUOTA", value: 0)
!78 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!79 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !81, line: 15, baseType: !13, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!82 = !{!83, !84, !85, !86}
!83 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!84 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!85 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!86 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !88, line: 26, baseType: !13, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!89 = !{!90, !91, !92}
!90 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!91 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!92 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !94, line: 45, baseType: !13, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!95 = !{!96, !97, !98}
!96 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!97 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!98 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !100, line: 487, baseType: !13, size: 32, elements: !101)
!100 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!101 = !{!102, !103, !104, !105}
!102 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!103 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!104 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!105 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!106 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !107, line: 620, baseType: !13, size: 32, elements: !108)
!107 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!108 = !{!109, !110, !111, !112, !113}
!109 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!110 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!111 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!112 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!113 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !107, line: 597, baseType: !115, size: 32, elements: !116)
!115 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!116 = !{!117, !118, !119, !120, !121}
!117 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!118 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!119 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!120 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!121 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !100, line: 547, baseType: !13, size: 32, elements: !123)
!123 = !{!124, !125, !126, !127, !128, !129, !130}
!124 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!125 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!126 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!127 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!128 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!129 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!130 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!131 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !100, line: 564, baseType: !13, size: 32, elements: !132)
!132 = !{!133, !134, !135}
!133 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!134 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!135 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!136 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !100, line: 577, baseType: !13, size: 32, elements: !137)
!137 = !{!138, !139, !140}
!138 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!139 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!140 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !100, line: 503, baseType: !13, size: 32, elements: !142)
!142 = !{!143, !144, !145, !146}
!143 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!144 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!145 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!146 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_mode_status", file: !148, line: 91, baseType: !115, size: 32, elements: !149)
!148 = !DIFile(filename: "./include/drm/drm_modes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9464b1418570a46bf1ac7fbe26140ef4")
!149 = !{!150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189}
!150 = !DIEnumerator(name: "MODE_OK", value: 0)
!151 = !DIEnumerator(name: "MODE_HSYNC", value: 1)
!152 = !DIEnumerator(name: "MODE_VSYNC", value: 2)
!153 = !DIEnumerator(name: "MODE_H_ILLEGAL", value: 3)
!154 = !DIEnumerator(name: "MODE_V_ILLEGAL", value: 4)
!155 = !DIEnumerator(name: "MODE_BAD_WIDTH", value: 5)
!156 = !DIEnumerator(name: "MODE_NOMODE", value: 6)
!157 = !DIEnumerator(name: "MODE_NO_INTERLACE", value: 7)
!158 = !DIEnumerator(name: "MODE_NO_DBLESCAN", value: 8)
!159 = !DIEnumerator(name: "MODE_NO_VSCAN", value: 9)
!160 = !DIEnumerator(name: "MODE_MEM", value: 10)
!161 = !DIEnumerator(name: "MODE_VIRTUAL_X", value: 11)
!162 = !DIEnumerator(name: "MODE_VIRTUAL_Y", value: 12)
!163 = !DIEnumerator(name: "MODE_MEM_VIRT", value: 13)
!164 = !DIEnumerator(name: "MODE_NOCLOCK", value: 14)
!165 = !DIEnumerator(name: "MODE_CLOCK_HIGH", value: 15)
!166 = !DIEnumerator(name: "MODE_CLOCK_LOW", value: 16)
!167 = !DIEnumerator(name: "MODE_CLOCK_RANGE", value: 17)
!168 = !DIEnumerator(name: "MODE_BAD_HVALUE", value: 18)
!169 = !DIEnumerator(name: "MODE_BAD_VVALUE", value: 19)
!170 = !DIEnumerator(name: "MODE_BAD_VSCAN", value: 20)
!171 = !DIEnumerator(name: "MODE_HSYNC_NARROW", value: 21)
!172 = !DIEnumerator(name: "MODE_HSYNC_WIDE", value: 22)
!173 = !DIEnumerator(name: "MODE_HBLANK_NARROW", value: 23)
!174 = !DIEnumerator(name: "MODE_HBLANK_WIDE", value: 24)
!175 = !DIEnumerator(name: "MODE_VSYNC_NARROW", value: 25)
!176 = !DIEnumerator(name: "MODE_VSYNC_WIDE", value: 26)
!177 = !DIEnumerator(name: "MODE_VBLANK_NARROW", value: 27)
!178 = !DIEnumerator(name: "MODE_VBLANK_WIDE", value: 28)
!179 = !DIEnumerator(name: "MODE_PANEL", value: 29)
!180 = !DIEnumerator(name: "MODE_INTERLACE_WIDTH", value: 30)
!181 = !DIEnumerator(name: "MODE_ONE_WIDTH", value: 31)
!182 = !DIEnumerator(name: "MODE_ONE_HEIGHT", value: 32)
!183 = !DIEnumerator(name: "MODE_ONE_SIZE", value: 33)
!184 = !DIEnumerator(name: "MODE_NO_REDUCED", value: 34)
!185 = !DIEnumerator(name: "MODE_NO_STEREO", value: 35)
!186 = !DIEnumerator(name: "MODE_NO_420", value: 36)
!187 = !DIEnumerator(name: "MODE_STALE", value: -3)
!188 = !DIEnumerator(name: "MODE_BAD", value: -2)
!189 = !DIEnumerator(name: "MODE_ERROR", value: -1)
!190 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hdmi_picture_aspect", file: !191, line: 96, baseType: !13, size: 32, elements: !192)
!191 = !DIFile(filename: "./include/linux/hdmi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "47f4ac8f6225c51a6d030bad9086771f")
!192 = !{!193, !194, !195, !196, !197, !198}
!193 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_NONE", value: 0)
!194 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_4_3", value: 1)
!195 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_16_9", value: 2)
!196 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_64_27", value: 3)
!197 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_256_135", value: 4)
!198 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_RESERVED", value: 5)
!199 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_connector_registration_state", file: !200, line: 98, baseType: !13, size: 32, elements: !201)
!200 = !DIFile(filename: "./include/drm/drm_connector.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63c858da11ce2de4f038056be4cf749")
!201 = !{!202, !203, !204}
!202 = !DIEnumerator(name: "DRM_CONNECTOR_INITIALIZING", value: 0)
!203 = !DIEnumerator(name: "DRM_CONNECTOR_REGISTERED", value: 1)
!204 = !DIEnumerator(name: "DRM_CONNECTOR_UNREGISTERED", value: 2)
!205 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_connector_status", file: !200, line: 63, baseType: !13, size: 32, elements: !206)
!206 = !{!207, !208, !209}
!207 = !DIEnumerator(name: "connector_status_connected", value: 1)
!208 = !DIEnumerator(name: "connector_status_disconnected", value: 2)
!209 = !DIEnumerator(name: "connector_status_unknown", value: 3)
!210 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "subpixel_order", file: !200, line: 137, baseType: !13, size: 32, elements: !211)
!211 = !{!212, !213, !214, !215, !216, !217}
!212 = !DIEnumerator(name: "SubPixelUnknown", value: 0)
!213 = !DIEnumerator(name: "SubPixelHorizontalRGB", value: 1)
!214 = !DIEnumerator(name: "SubPixelHorizontalBGR", value: 2)
!215 = !DIEnumerator(name: "SubPixelVerticalRGB", value: 3)
!216 = !DIEnumerator(name: "SubPixelVerticalBGR", value: 4)
!217 = !DIEnumerator(name: "SubPixelNone", value: 5)
!218 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_link_status", file: !200, line: 337, baseType: !13, size: 32, elements: !219)
!219 = !{!220, !221}
!220 = !DIEnumerator(name: "DRM_LINK_STATUS_GOOD", value: 0)
!221 = !DIEnumerator(name: "DRM_LINK_STATUS_BAD", value: 1)
!222 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_mode_subconnector", file: !223, line: 387, baseType: !13, size: 32, elements: !224)
!223 = !DIFile(filename: "./include/uapi/drm/drm_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "357a7211aa80668185b31e7330dddd63")
!224 = !{!225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237}
!225 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Automatic", value: 0)
!226 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Unknown", value: 0)
!227 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_VGA", value: 1)
!228 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_DVID", value: 3)
!229 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_DVIA", value: 4)
!230 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Composite", value: 5)
!231 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_SVIDEO", value: 6)
!232 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Component", value: 8)
!233 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_SCART", value: 9)
!234 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_DisplayPort", value: 10)
!235 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_HDMIA", value: 11)
!236 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Native", value: 15)
!237 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Wireless", value: 18)
!238 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_colorspace", file: !200, line: 502, baseType: !13, size: 32, elements: !239)
!239 = !{!240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257}
!240 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_DEFAULT", value: 0)
!241 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_NO_DATA", value: 0)
!242 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_SMPTE_170M_YCC", value: 1)
!243 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_BT709_YCC", value: 2)
!244 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_XVYCC_601", value: 3)
!245 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_XVYCC_709", value: 4)
!246 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_SYCC_601", value: 5)
!247 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_OPYCC_601", value: 6)
!248 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_OPRGB", value: 7)
!249 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_BT2020_CYCC", value: 8)
!250 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_BT2020_RGB", value: 9)
!251 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_BT2020_YCC", value: 10)
!252 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_DCI_P3_RGB_D65", value: 11)
!253 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_DCI_P3_RGB_THEATER", value: 12)
!254 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_RGB_WIDE_FIXED", value: 13)
!255 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_RGB_WIDE_FLOAT", value: 14)
!256 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_BT601_YCC", value: 15)
!257 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_COUNT", value: 16)
!258 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_privacy_screen_status", file: !200, line: 421, baseType: !13, size: 32, elements: !259)
!259 = !{!260, !261, !262, !263}
!260 = !DIEnumerator(name: "PRIVACY_SCREEN_DISABLED", value: 0)
!261 = !DIEnumerator(name: "PRIVACY_SCREEN_ENABLED", value: 1)
!262 = !DIEnumerator(name: "PRIVACY_SCREEN_DISABLED_LOCKED", value: 2)
!263 = !DIEnumerator(name: "PRIVACY_SCREEN_ENABLED_LOCKED", value: 3)
!264 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_connector_force", file: !200, line: 50, baseType: !13, size: 32, elements: !265)
!265 = !{!266, !267, !268, !269}
!266 = !DIEnumerator(name: "DRM_FORCE_UNSPECIFIED", value: 0)
!267 = !DIEnumerator(name: "DRM_FORCE_OFF", value: 1)
!268 = !DIEnumerator(name: "DRM_FORCE_ON", value: 2)
!269 = !DIEnumerator(name: "DRM_FORCE_ON_DIGITAL", value: 3)
!270 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_panel_orientation", file: !200, line: 363, baseType: !115, size: 32, elements: !271)
!271 = !{!272, !273, !274, !275, !276}
!272 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_UNKNOWN", value: -1)
!273 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_NORMAL", value: 0)
!274 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_BOTTOM_UP", value: 1)
!275 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_LEFT_UP", value: 2)
!276 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_RIGHT_UP", value: 3)
!277 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_connector_tv_mode", file: !200, line: 156, baseType: !13, size: 32, elements: !278)
!278 = !{!279, !280, !281, !282, !283, !284, !285, !286}
!279 = !DIEnumerator(name: "DRM_MODE_TV_MODE_NTSC", value: 0)
!280 = !DIEnumerator(name: "DRM_MODE_TV_MODE_NTSC_443", value: 1)
!281 = !DIEnumerator(name: "DRM_MODE_TV_MODE_NTSC_J", value: 2)
!282 = !DIEnumerator(name: "DRM_MODE_TV_MODE_PAL", value: 3)
!283 = !DIEnumerator(name: "DRM_MODE_TV_MODE_PAL_M", value: 4)
!284 = !DIEnumerator(name: "DRM_MODE_TV_MODE_PAL_N", value: 5)
!285 = !DIEnumerator(name: "DRM_MODE_TV_MODE_SECAM", value: 6)
!286 = !DIEnumerator(name: "DRM_MODE_TV_MODE_MAX", value: 7)
!287 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_scaling_filter", file: !288, line: 38, baseType: !13, size: 32, elements: !289)
!288 = !DIFile(filename: "./include/drm/drm_plane.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "45cb1a1ff150429e63de6789c017e03a")
!289 = !{!290, !291}
!290 = !DIEnumerator(name: "DRM_SCALING_FILTER_DEFAULT", value: 0)
!291 = !DIEnumerator(name: "DRM_SCALING_FILTER_NEAREST_NEIGHBOR", value: 1)
!292 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_color_encoding", file: !293, line: 78, baseType: !13, size: 32, elements: !294)
!293 = !DIFile(filename: "./include/drm/drm_color_mgmt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b92cd49d1b3f8dcc5c490e9b8b1a997a")
!294 = !{!295, !296, !297, !298}
!295 = !DIEnumerator(name: "DRM_COLOR_YCBCR_BT601", value: 0)
!296 = !DIEnumerator(name: "DRM_COLOR_YCBCR_BT709", value: 1)
!297 = !DIEnumerator(name: "DRM_COLOR_YCBCR_BT2020", value: 2)
!298 = !DIEnumerator(name: "DRM_COLOR_ENCODING_MAX", value: 3)
!299 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_color_range", file: !293, line: 85, baseType: !13, size: 32, elements: !300)
!300 = !{!301, !302, !303}
!301 = !DIEnumerator(name: "DRM_COLOR_YCBCR_LIMITED_RANGE", value: 0)
!302 = !DIEnumerator(name: "DRM_COLOR_YCBCR_FULL_RANGE", value: 1)
!303 = !DIEnumerator(name: "DRM_COLOR_RANGE_MAX", value: 2)
!304 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_plane_type", file: !288, line: 563, baseType: !13, size: 32, elements: !305)
!305 = !{!306, !307, !308}
!306 = !DIEnumerator(name: "DRM_PLANE_TYPE_OVERLAY", value: 0)
!307 = !DIEnumerator(name: "DRM_PLANE_TYPE_PRIMARY", value: 1)
!308 = !DIEnumerator(name: "DRM_PLANE_TYPE_CURSOR", value: 2)
!309 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "switch_power_state", file: !310, line: 30, baseType: !13, size: 32, elements: !311)
!310 = !DIFile(filename: "./include/drm/drm_device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9743f4a84c342e86d9e79f688e9c49c5")
!311 = !{!312, !313, !314, !315}
!312 = !DIEnumerator(name: "DRM_SWITCH_POWER_ON", value: 0)
!313 = !DIEnumerator(name: "DRM_SWITCH_POWER_OFF", value: 1)
!314 = !DIEnumerator(name: "DRM_SWITCH_POWER_CHANGING", value: 2)
!315 = !DIEnumerator(name: "DRM_SWITCH_POWER_DYNAMIC_OFF", value: 3)
!316 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !317, line: 10, baseType: !13, size: 32, elements: !318)
!317 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!318 = !{!319, !320}
!319 = !DIEnumerator(name: "false", value: 0)
!320 = !DIEnumerator(name: "true", value: 1)
!321 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !322, line: 364, baseType: !13, size: 32, elements: !323)
!322 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!323 = !{!324, !325, !326, !327, !328, !329, !330}
!324 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!325 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!326 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!327 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!328 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!329 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!330 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!331 = !{!332, !334, !335, !4796, !4931, !5531, !499, !5837, !1358, !5838, !5840}
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !333, line: 154, baseType: !13)
!333 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc", file: !337, line: 932, size: 8064, elements: !338)
!337 = !DIFile(filename: "./include/drm/drm_crtc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99ea98da3699d3be12a3062031f96ca9")
!338 = !{!339, !5672, !5673, !5674, !5675, !5676, !5677, !5678, !5679, !5680, !5681, !5682, !5683, !5684, !5685, !5686, !5687, !5795, !5796, !5798, !5802, !5803, !5804, !5805, !5806, !5807, !5808, !5830, !5831, !5832, !5833, !5834}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !336, file: !337, line: 934, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_device", file: !310, line: 50, size: 12736, elements: !342)
!342 = !{!343, !344, !358, !4709, !4715, !4720, !4721, !4724, !4725, !4726, !4727, !4744, !4745, !4746, !4747, !4748, !4749, !4750, !4751, !4752, !4753, !4754, !4755, !4756, !4757, !4760, !4761, !4762, !4763, !4764, !4765, !4766, !5658, !5659, !5660, !5663, !5666, !5667, !5670, !5671}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "if_version", scope: !341, file: !310, line: 52, baseType: !115, size: 32)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !341, file: !310, line: 55, baseType: !345, size: 32, offset: 32)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !346, line: 19, size: 32, elements: !347)
!346 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!347 = !{!348}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !345, file: !346, line: 20, baseType: !349, size: 32)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !350, line: 113, baseType: !351)
!350 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !350, line: 111, size: 32, elements: !352)
!352 = !{!353}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !351, file: !350, line: 112, baseType: !354, size: 32)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !333, line: 174, baseType: !355)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !333, line: 172, size: 32, elements: !356)
!356 = !{!357}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !355, file: !333, line: 173, baseType: !115, size: 32)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !341, file: !310, line: 58, baseType: !359, size: 64, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !100, line: 705, size: 5824, elements: !361)
!361 = !{!362, !4364, !4365, !4368, !4369, !4422, !4492, !4493, !4494, !4495, !4496, !4503, !4595, !4608, !4618, !4622, !4624, !4625, !4626, !4630, !4637, !4638, !4641, !4644, !4648, !4651, !4652, !4653, !4654, !4655, !4656, !4686, !4687, !4688, !4691, !4694, !4703, !4704, !4705, !4706, !4707, !4708}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !360, file: !100, line: 706, baseType: !363, size: 512)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !364, line: 64, size: 512, elements: !365)
!364 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!365 = !{!366, !369, !375, !377, !462, !4267, !4358, !4359, !4360, !4361, !4362, !4363}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !363, file: !364, line: 65, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !363, file: !364, line: 66, baseType: !370, size: 128, offset: 64)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !333, line: 190, size: 128, elements: !371)
!371 = !{!372, !374}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !370, file: !333, line: 191, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !370, file: !333, line: 191, baseType: !373, size: 64, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !363, file: !364, line: 67, baseType: !376, size: 64, offset: 192)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !363, file: !364, line: 68, baseType: !378, size: 64, offset: 256)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !364, line: 168, size: 768, elements: !380)
!380 = !{!381, !382, !421, !422}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !379, file: !364, line: 169, baseType: !370, size: 128)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !379, file: !364, line: 170, baseType: !383, size: 32, offset: 128)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !384, line: 29, baseType: !385)
!384 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !384, line: 17, size: 32, elements: !386)
!386 = !{!387}
!387 = !DIDerivedType(tag: DW_TAG_member, scope: !385, file: !384, line: 18, baseType: !388, size: 32)
!388 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !385, file: !384, line: 18, size: 32, elements: !389)
!389 = !{!390}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !388, file: !384, line: 19, baseType: !391, size: 32)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !392, line: 14, size: 32, elements: !393)
!392 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!393 = !{!394}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !391, file: !392, line: 15, baseType: !395, size: 32)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !396, line: 44, baseType: !397)
!396 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !396, line: 14, size: 32, elements: !398)
!398 = !{!399}
!399 = !DIDerivedType(tag: DW_TAG_member, scope: !397, file: !396, line: 15, baseType: !400, size: 32)
!400 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !397, file: !396, line: 15, size: 32, elements: !401)
!401 = !{!402, !403, !413}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !400, file: !396, line: 16, baseType: !354, size: 32)
!403 = !DIDerivedType(tag: DW_TAG_member, scope: !400, file: !396, line: 24, baseType: !404, size: 16)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !400, file: !396, line: 24, size: 16, elements: !405)
!405 = !{!406, !412}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !404, file: !396, line: 25, baseType: !407, size: 8)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !408, line: 17, baseType: !409)
!408 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !410, line: 21, baseType: !411)
!410 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!411 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !404, file: !396, line: 26, baseType: !407, size: 8, offset: 8)
!413 = !DIDerivedType(tag: DW_TAG_member, scope: !400, file: !396, line: 28, baseType: !414, size: 32)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !400, file: !396, line: 28, size: 32, elements: !415)
!415 = !{!416, !420}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !414, file: !396, line: 29, baseType: !417, size: 16)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !408, line: 19, baseType: !418)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !410, line: 24, baseType: !419)
!419 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !414, file: !396, line: 30, baseType: !417, size: 16, offset: 16)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !379, file: !364, line: 171, baseType: !363, size: 512, offset: 192)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !379, file: !364, line: 172, baseType: !423, size: 64, offset: 704)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !425)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !364, line: 133, size: 192, elements: !426)
!426 = !{!427, !434, !439}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !425, file: !364, line: 134, baseType: !428, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !429)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{!115, !432}
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !363)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !425, file: !364, line: 135, baseType: !435, size: 64, offset: 64)
!435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !436)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DISubroutineType(types: !438)
!438 = !{!367, !432}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !425, file: !364, line: 136, baseType: !440, size: 64, offset: 128)
!440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !441)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DISubroutineType(types: !443)
!443 = !{!115, !432, !444}
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !364, line: 125, size: 20736, elements: !446)
!446 = !{!447, !452, !456, !457, !461}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !445, file: !364, line: 126, baseType: !448, size: 192)
!448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !449, size: 192, elements: !450)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!450 = !{!451}
!451 = !DISubrange(count: 3)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !445, file: !364, line: 127, baseType: !453, size: 4096, offset: 192)
!453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !449, size: 4096, elements: !454)
!454 = !{!455}
!455 = !DISubrange(count: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !445, file: !364, line: 128, baseType: !115, size: 32, offset: 4288)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !445, file: !364, line: 129, baseType: !458, size: 16384, offset: 4320)
!458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !459)
!459 = !{!460}
!460 = !DISubrange(count: 2048)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !445, file: !364, line: 130, baseType: !115, size: 32, offset: 20704)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !363, file: !364, line: 69, baseType: !463, size: 64, offset: 320)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !465)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !364, line: 116, size: 384, elements: !466)
!466 = !{!467, !471, !500, !4229, !4257, !4261}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !465, file: !364, line: 117, baseType: !468, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{null, !376}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !465, file: !364, line: 118, baseType: !472, size: 64, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !474)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !475, line: 254, size: 128, elements: !476)
!475 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!476 = !{!477, !492}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !474, file: !475, line: 255, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DISubroutineType(types: !480)
!480 = !{!481, !376, !486, !449}
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !333, line: 66, baseType: !482)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !483, line: 73, baseType: !484)
!483 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !483, line: 15, baseType: !485)
!485 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !475, line: 30, size: 128, elements: !488)
!488 = !{!489, !490}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !487, file: !475, line: 31, baseType: !367, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !487, file: !475, line: 32, baseType: !491, size: 16, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !333, line: 24, baseType: !419)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !474, file: !475, line: 256, baseType: !493, size: 64, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{!481, !376, !486, !367, !496}
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !333, line: 61, baseType: !497)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !483, line: 72, baseType: !498)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !483, line: 16, baseType: !499)
!499 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !465, file: !364, line: 119, baseType: !501, size: 64, offset: 128)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !504)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !475, line: 84, size: 320, elements: !505)
!505 = !{!506, !507, !511, !4225, !4227}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !504, file: !475, line: 85, baseType: !367, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !504, file: !475, line: 86, baseType: !508, size: 64, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{!491, !376, !486, !115}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !504, file: !475, line: 88, baseType: !512, size: 64, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{!491, !376, !515, !115}
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !475, line: 175, size: 512, elements: !517)
!517 = !{!518, !519, !520, !521, !4216, !4220, !4221}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !516, file: !475, line: 176, baseType: !487, size: 128)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !516, file: !475, line: 177, baseType: !496, size: 64, offset: 128)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !516, file: !475, line: 178, baseType: !334, size: 64, offset: 192)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !516, file: !475, line: 179, baseType: !522, size: 64, offset: 256)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{!525}
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !20, line: 472, size: 1536, align: 64, elements: !527)
!527 = !{!528, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4210, !4211, !4212, !4213, !4214, !4215}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !526, file: !20, line: 473, baseType: !529, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !20, line: 641, size: 4800, elements: !531)
!531 = !{!532, !533, !534, !542, !543, !550, !551, !554, !555, !3988, !3989, !3990, !3991, !3992, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4021, !4022, !4023, !4024, !4025, !4026, !4027, !4032, !4035, !4036, !4037, !4046, !4047, !4048, !4049}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !530, file: !20, line: 642, baseType: !491, size: 16)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !530, file: !20, line: 643, baseType: !419, size: 16, offset: 16)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !530, file: !20, line: 644, baseType: !535, size: 32, offset: 32)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !536, line: 23, baseType: !537)
!536 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !536, line: 21, size: 32, elements: !538)
!538 = !{!539}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !537, file: !536, line: 22, baseType: !540, size: 32)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !333, line: 37, baseType: !541)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !483, line: 49, baseType: !13)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !530, file: !20, line: 645, baseType: !370, size: 128, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !530, file: !20, line: 646, baseType: !544, size: 32, offset: 192)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !536, line: 28, baseType: !545)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !536, line: 26, size: 32, elements: !546)
!546 = !{!547}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !545, file: !536, line: 27, baseType: !548, size: 32)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !333, line: 38, baseType: !549)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !483, line: 50, baseType: !13)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !530, file: !20, line: 647, baseType: !13, size: 32, offset: 224)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !530, file: !20, line: 650, baseType: !552, size: 64, offset: 256)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !20, line: 607, flags: DIFlagFwdDecl)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !530, file: !20, line: 651, baseType: !552, size: 64, offset: 320)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !530, file: !20, line: 654, baseType: !556, size: 64, offset: 384)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !558)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !20, line: 1966, size: 2048, align: 512, elements: !559)
!559 = !{!560, !3822, !3832, !3836, !3840, !3844, !3848, !3852, !3856, !3860, !3864, !3865, !3869, !3873, !3910, !3939, !3943, !3949, !3953, !3957, !3961, !3965, !3969, !3975, !3979}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !558, file: !20, line: 1967, baseType: !561, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DISubroutineType(types: !563)
!563 = !{!564, !529, !564, !13}
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !566, line: 82, size: 1536, elements: !567)
!566 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!567 = !{!568, !569, !579, !587, !588, !608, !609, !613, !626, !3805, !3806, !3807, !3808, !3814, !3815, !3816}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !565, file: !566, line: 84, baseType: !13, size: 32)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !565, file: !566, line: 85, baseType: !570, size: 32, offset: 32)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !571, line: 275, baseType: !572)
!571 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !571, line: 275, size: 32, elements: !573)
!573 = !{!574}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !572, file: !571, line: 275, baseType: !575, size: 32)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !571, line: 69, baseType: !576)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !571, line: 64, size: 32, elements: !577)
!577 = !{!578}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !576, file: !571, line: 65, baseType: !13, size: 32)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !565, file: !566, line: 86, baseType: !580, size: 128, offset: 64)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !581, line: 38, size: 128, elements: !582)
!581 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!582 = !{!583, !585}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !580, file: !581, line: 39, baseType: !584, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !580, file: !581, line: 39, baseType: !586, size: 64, offset: 64)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !565, file: !566, line: 87, baseType: !564, size: 64, offset: 192)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !565, file: !566, line: 88, baseType: !589, size: 128, offset: 256)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !566, line: 49, size: 128, elements: !590)
!590 = !{!591, !605}
!591 = !DIDerivedType(tag: DW_TAG_member, scope: !589, file: !566, line: 50, baseType: !592, size: 64)
!592 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !589, file: !566, line: 50, size: 64, elements: !593)
!593 = !{!594, !601}
!594 = !DIDerivedType(tag: DW_TAG_member, scope: !592, file: !566, line: 51, baseType: !595, size: 64)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !592, file: !566, line: 51, size: 64, elements: !596)
!596 = !{!597, !600}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !595, file: !566, line: 52, baseType: !598, size: 32)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !408, line: 21, baseType: !599)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !410, line: 27, baseType: !13)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !595, file: !566, line: 52, baseType: !598, size: 32, offset: 32)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !592, file: !566, line: 54, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !408, line: 23, baseType: !603)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !410, line: 31, baseType: !604)
!604 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !589, file: !566, line: 56, baseType: !606, size: 64, offset: 64)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !411)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !565, file: !566, line: 89, baseType: !529, size: 64, offset: 384)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !565, file: !566, line: 91, baseType: !610, size: 256, offset: 448)
!610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !411, size: 256, elements: !611)
!611 = !{!612}
!612 = !DISubrange(count: 32)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !565, file: !566, line: 94, baseType: !614, size: 64, offset: 704)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !615, line: 25, size: 64, elements: !616)
!615 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!616 = !{!617}
!617 = !DIDerivedType(tag: DW_TAG_member, scope: !614, file: !615, line: 26, baseType: !618, size: 64)
!618 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !614, file: !615, line: 26, size: 64, elements: !619)
!619 = !{!620, !621}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !618, file: !615, line: 28, baseType: !603, size: 64, align: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, scope: !618, file: !615, line: 30, baseType: !622, size: 64)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !618, file: !615, line: 30, size: 64, elements: !623)
!623 = !{!624, !625}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !622, file: !615, line: 31, baseType: !383, size: 32)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !622, file: !615, line: 32, baseType: !115, size: 32, offset: 32)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !565, file: !566, line: 95, baseType: !627, size: 64, offset: 768)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !629)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !566, line: 128, size: 1024, align: 512, elements: !630)
!630 = !{!631, !635, !636, !643, !649, !653, !657, !661, !662, !666, !670, !3795, !3799}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !629, file: !566, line: 129, baseType: !632, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DISubroutineType(types: !634)
!634 = !{!115, !564, !13}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !629, file: !566, line: 130, baseType: !632, size: 64, offset: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !629, file: !566, line: 131, baseType: !637, size: 64, offset: 128)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!115, !640, !642}
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !565)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !629, file: !566, line: 132, baseType: !644, size: 64, offset: 192)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DISubroutineType(types: !646)
!646 = !{!115, !640, !13, !367, !647}
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !589)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !629, file: !566, line: 134, baseType: !650, size: 64, offset: 256)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DISubroutineType(types: !652)
!652 = !{!115, !640}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !629, file: !566, line: 135, baseType: !654, size: 64, offset: 320)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{!115, !564}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !629, file: !566, line: 136, baseType: !658, size: 64, offset: 384)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DISubroutineType(types: !660)
!660 = !{null, !564}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !629, file: !566, line: 137, baseType: !658, size: 64, offset: 448)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !629, file: !566, line: 138, baseType: !663, size: 64, offset: 512)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DISubroutineType(types: !665)
!665 = !{null, !564, !529}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !629, file: !566, line: 139, baseType: !667, size: 64, offset: 576)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DISubroutineType(types: !669)
!669 = !{!449, !564, !449, !115}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !629, file: !566, line: 140, baseType: !671, size: 64, offset: 640)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DISubroutineType(types: !673)
!673 = !{!674, !3794}
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !676, line: 70, size: 256, elements: !677)
!676 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!677 = !{!678, !679, !3790, !3791}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !675, file: !676, line: 71, baseType: !564, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !675, file: !676, line: 72, baseType: !680, size: 64, offset: 64)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !20, line: 1190, size: 10752, elements: !682)
!682 = !{!683, !684, !687, !688, !689, !693, !1173, !3495, !3535, !3620, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3637, !3641, !3642, !3645, !3648, !3651, !3654, !3655, !3656, !3697, !3723, !3724, !3725, !3726, !3727, !3728, !3731, !3733, !3740, !3741, !3742, !3743, !3744, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !681, file: !20, line: 1191, baseType: !370, size: 128)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !681, file: !20, line: 1192, baseType: !685, size: 32, offset: 128)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !333, line: 21, baseType: !686)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !333, line: 18, baseType: !598)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !681, file: !20, line: 1193, baseType: !411, size: 8, offset: 160)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !681, file: !20, line: 1194, baseType: !499, size: 64, offset: 192)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !681, file: !20, line: 1195, baseType: !690, size: 64, offset: 256)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !333, line: 52, baseType: !691)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !483, line: 88, baseType: !692)
!692 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !681, file: !20, line: 1196, baseType: !694, size: 64, offset: 320)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !20, line: 2366, size: 576, elements: !696)
!696 = !{!697, !698, !699, !706, !710, !714, !718, !1158, !1159, !1163, !1165, !1166, !1167, !1169, !1170, !1171, !1172}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !695, file: !20, line: 2367, baseType: !367, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !695, file: !20, line: 2368, baseType: !115, size: 32, offset: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !695, file: !20, line: 2376, baseType: !700, size: 64, offset: 128)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{!115, !703}
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !705, line: 32, flags: DIFlagFwdDecl)
!705 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!706 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !695, file: !20, line: 2377, baseType: !707, size: 64, offset: 192)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !709)
!709 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !20, line: 75, flags: DIFlagFwdDecl)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !695, file: !20, line: 2378, baseType: !711, size: 64, offset: 256)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DISubroutineType(types: !713)
!713 = !{!564, !694, !115, !367, !334}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !695, file: !20, line: 2380, baseType: !715, size: 64, offset: 320)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DISubroutineType(types: !717)
!717 = !{null, !680}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !695, file: !20, line: 2381, baseType: !719, size: 64, offset: 384)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !12, line: 402, size: 9216, align: 512, elements: !721)
!721 = !{!722, !723, !724, !728, !750, !776, !777, !778, !779, !783, !788, !789, !809, !865, !866, !867, !868, !869, !872, !873, !874, !882, !886, !913, !934, !935, !936, !937, !946, !969, !970, !973, !976, !977, !978, !979, !980, !981, !982, !987, !988, !1116, !1124, !1125, !1126, !1128, !1132, !1133, !1137, !1138, !1139, !1140, !1142, !1143, !1144, !1151, !1152, !1153, !1157}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !720, file: !12, line: 403, baseType: !11, size: 32)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !720, file: !12, line: 406, baseType: !370, size: 128, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !720, file: !12, line: 409, baseType: !725, size: 448, offset: 192)
!725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !726)
!726 = !{!727}
!727 = !DISubrange(count: 56)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !720, file: !12, line: 417, baseType: !729, size: 768, offset: 640)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !12, line: 45, size: 768, elements: !730)
!730 = !{!731, !732, !733, !734, !737}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !729, file: !12, line: 46, baseType: !363, size: 512)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !729, file: !12, line: 47, baseType: !719, size: 64, offset: 512)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !729, file: !12, line: 48, baseType: !376, size: 64, offset: 576)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !729, file: !12, line: 49, baseType: !735, size: 64, offset: 640)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !12, line: 49, flags: DIFlagFwdDecl)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !729, file: !12, line: 50, baseType: !738, size: 64, offset: 704)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !740, line: 26, size: 256, elements: !741)
!740 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!741 = !{!742, !743}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !739, file: !740, line: 27, baseType: !13, size: 32)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !739, file: !740, line: 28, baseType: !744, size: 192, offset: 64)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !745, line: 43, size: 192, elements: !746)
!745 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!746 = !{!747, !749}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !744, file: !745, line: 44, baseType: !748, size: 32)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !392, line: 23, baseType: !391)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !744, file: !745, line: 45, baseType: !370, size: 128, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !720, file: !12, line: 418, baseType: !751, size: 64, offset: 1408)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !12, line: 53, size: 448, elements: !753)
!753 = !{!754, !755, !760, !764, !768, !772}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !752, file: !12, line: 54, baseType: !487, size: 128)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !752, file: !12, line: 55, baseType: !756, size: 64, offset: 128)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{!481, !751, !759, !449}
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !752, file: !12, line: 57, baseType: !761, size: 64, offset: 192)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DISubroutineType(types: !763)
!763 = !{!481, !751, !759, !367, !496}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !752, file: !12, line: 59, baseType: !765, size: 64, offset: 256)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DISubroutineType(types: !767)
!767 = !{null, !719, !367}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !752, file: !12, line: 60, baseType: !769, size: 64, offset: 320)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DISubroutineType(types: !771)
!771 = !{!115, !719}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !752, file: !12, line: 61, baseType: !773, size: 64, offset: 384)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DISubroutineType(types: !775)
!775 = !{null, !719}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !720, file: !12, line: 419, baseType: !367, size: 64, offset: 1472)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !720, file: !12, line: 420, baseType: !367, size: 64, offset: 1536)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !720, file: !12, line: 421, baseType: !376, size: 64, offset: 1600)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !720, file: !12, line: 424, baseType: !780, size: 64, offset: 1664)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !782)
!782 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !12, line: 424, flags: DIFlagFwdDecl)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !720, file: !12, line: 425, baseType: !784, size: 64, offset: 1728)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !786)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !408, line: 20, baseType: !787)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !410, line: 26, baseType: !115)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !720, file: !12, line: 426, baseType: !13, size: 32, offset: 1792)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !720, file: !12, line: 435, baseType: !790, size: 256, offset: 1856)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !791, line: 66, size: 256, elements: !792)
!791 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!792 = !{!793, !802, !803, !808}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !790, file: !791, line: 67, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !795, line: 13, baseType: !796)
!795 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !333, line: 181, baseType: !797)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !333, line: 179, size: 64, elements: !798)
!798 = !{!799}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !797, file: !333, line: 180, baseType: !800, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !408, line: 22, baseType: !801)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !410, line: 30, baseType: !692)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !790, file: !791, line: 68, baseType: !748, size: 32, offset: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !790, file: !791, line: 70, baseType: !804, size: 32, offset: 96)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !805, line: 15, size: 32, elements: !806)
!805 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!806 = !{!807}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !804, file: !805, line: 20, baseType: !354, size: 32)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !790, file: !791, line: 72, baseType: !370, size: 128, offset: 128)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !720, file: !12, line: 437, baseType: !810, size: 64, offset: 2112)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !812, line: 69, size: 320, elements: !813)
!812 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!813 = !{!814, !815, !816, !836, !838, !842, !843}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !811, file: !812, line: 70, baseType: !367, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !811, file: !812, line: 71, baseType: !719, size: 64, offset: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !811, file: !812, line: 72, baseType: !817, size: 64, offset: 128)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !819)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !812, line: 47, size: 256, elements: !820)
!820 = !{!821, !822, !828, !832}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !819, file: !812, line: 49, baseType: !13, size: 32)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !819, file: !812, line: 51, baseType: !823, size: 64, offset: 64)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DISubroutineType(types: !825)
!825 = !{!115, !367, !826}
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !811)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !819, file: !812, line: 53, baseType: !829, size: 64, offset: 128)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{!115, !449, !826}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !819, file: !812, line: 55, baseType: !833, size: 64, offset: 192)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{null, !334}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !811, file: !812, line: 73, baseType: !837, size: 16, offset: 192)
!837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !417)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !811, file: !812, line: 74, baseType: !839, size: 8, offset: 208)
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !408, line: 16, baseType: !840)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !410, line: 20, baseType: !841)
!841 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !811, file: !812, line: 75, baseType: !407, size: 8, offset: 216)
!843 = !DIDerivedType(tag: DW_TAG_member, scope: !811, file: !812, line: 76, baseType: !844, size: 64, offset: 256)
!844 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !811, file: !812, line: 76, size: 64, elements: !845)
!845 = !{!846, !847, !854}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !844, file: !812, line: 77, baseType: !334, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !844, file: !812, line: 78, baseType: !848, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !850)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !812, line: 86, size: 128, elements: !851)
!851 = !{!852, !853}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !850, file: !812, line: 87, baseType: !13, size: 32)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !850, file: !812, line: 88, baseType: !449, size: 64, offset: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !844, file: !812, line: 79, baseType: !855, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !857)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !812, line: 92, size: 256, elements: !858)
!858 = !{!859, !860, !861, !863, !864}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !857, file: !812, line: 94, baseType: !13, size: 32)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !857, file: !812, line: 95, baseType: !13, size: 32, offset: 32)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !857, file: !812, line: 96, baseType: !862, size: 64, offset: 64)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !857, file: !812, line: 97, baseType: !817, size: 64, offset: 128)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !857, file: !812, line: 98, baseType: !334, size: 64, offset: 192)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !720, file: !12, line: 438, baseType: !13, size: 32, offset: 2176)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !720, file: !12, line: 441, baseType: !13, size: 32, offset: 2208)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !720, file: !12, line: 442, baseType: !780, size: 64, offset: 2240)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !720, file: !12, line: 443, baseType: !784, size: 64, offset: 2304)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !720, file: !12, line: 444, baseType: !870, size: 8, offset: 2368)
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !333, line: 35, baseType: !871)
!871 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !720, file: !12, line: 451, baseType: !870, size: 8, offset: 2376)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !720, file: !12, line: 454, baseType: !13, size: 32, offset: 2400)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !720, file: !12, line: 455, baseType: !875, size: 64, offset: 2432)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !877, line: 23, size: 96, elements: !878)
!877 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!878 = !{!879, !880, !881}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !876, file: !877, line: 24, baseType: !115, size: 32)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !876, file: !877, line: 24, baseType: !115, size: 32, offset: 32)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !876, file: !877, line: 24, baseType: !115, size: 32, offset: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !720, file: !12, line: 458, baseType: !883, size: 64, offset: 2496)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DISubroutineType(types: !885)
!885 = !{!115}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !720, file: !12, line: 460, baseType: !887, size: 4032, align: 512, offset: 2560)
!887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !888, size: 4032, elements: !911)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !12, line: 362, size: 576, elements: !889)
!889 = !{!890, !891, !892}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !888, file: !12, line: 363, baseType: !334, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !888, file: !12, line: 364, baseType: !13, size: 32, offset: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !888, file: !12, line: 367, baseType: !893, size: 448, offset: 128)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !12, line: 319, size: 448, elements: !894)
!894 = !{!895, !896}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !893, file: !12, line: 320, baseType: !719, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !893, file: !12, line: 321, baseType: !897, size: 384, offset: 64)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !898, line: 40, size: 384, elements: !899)
!898 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!899 = !{!900}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !897, file: !898, line: 41, baseType: !901, size: 384, align: 64)
!901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !902, size: 384, align: 64, elements: !909)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !903, line: 5, size: 192, align: 64, elements: !904)
!903 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!904 = !{!905, !906, !908}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !902, file: !903, line: 6, baseType: !499, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !902, file: !903, line: 7, baseType: !907, size: 64, offset: 64)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !902, file: !903, line: 8, baseType: !907, size: 64, offset: 128)
!909 = !{!910}
!910 = !DISubrange(count: 2)
!911 = !{!912}
!912 = !DISubrange(count: 7)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !720, file: !12, line: 463, baseType: !914, size: 192, offset: 6592)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !915, line: 8, size: 192, elements: !916)
!915 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!916 = !{!917, !918, !920}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !914, file: !915, line: 10, baseType: !13, size: 32)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !914, file: !915, line: 11, baseType: !919, size: 64, offset: 64)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !914, file: !915, line: 12, baseType: !921, size: 64, offset: 128)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !923, line: 59, size: 48, elements: !924)
!923 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!924 = !{!925, !929, !930, !931, !932, !933}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !922, file: !923, line: 60, baseType: !926, size: 16)
!926 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !408, line: 18, baseType: !927)
!927 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !410, line: 23, baseType: !928)
!928 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !922, file: !923, line: 61, baseType: !926, size: 16, offset: 16)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !922, file: !923, line: 63, baseType: !13, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !922, file: !923, line: 64, baseType: !13, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !922, file: !923, line: 65, baseType: !13, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !922, file: !923, line: 66, baseType: !13, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !720, file: !12, line: 465, baseType: !499, size: 64, offset: 6784)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !720, file: !12, line: 469, baseType: !13, size: 32, offset: 6848)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !720, file: !12, line: 470, baseType: !370, size: 128, offset: 6912)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !720, file: !12, line: 471, baseType: !938, size: 64, offset: 7040)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !940, line: 33, size: 96, elements: !941)
!940 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!941 = !{!942, !943, !944, !945}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !939, file: !940, line: 37, baseType: !115, size: 32)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !939, file: !940, line: 43, baseType: !115, size: 32, offset: 32)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !939, file: !940, line: 45, baseType: !419, size: 16, offset: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !939, file: !940, line: 47, baseType: !419, size: 16, offset: 80)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !720, file: !12, line: 476, baseType: !947, size: 64, offset: 7104)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !12, line: 378, size: 256, elements: !949)
!949 = !{!950, !966, !967, !968}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !948, file: !12, line: 379, baseType: !951, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !953, line: 204, baseType: !954)
!953 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !953, line: 197, size: 192, elements: !955)
!955 = !{!956, !958, !959, !960, !962, !964}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !954, file: !953, line: 198, baseType: !957, size: 32)
!957 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !953, line: 21, baseType: !599)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !954, file: !953, line: 199, baseType: !411, size: 8, offset: 32)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !954, file: !953, line: 200, baseType: !411, size: 8, offset: 40)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !954, file: !953, line: 201, baseType: !961, size: 16, offset: 48)
!961 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !953, line: 17, baseType: !418)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !954, file: !953, line: 202, baseType: !963, size: 64, offset: 64)
!963 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !953, line: 16, baseType: !603)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !954, file: !953, line: 203, baseType: !965, size: 64, offset: 128)
!965 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !953, line: 22, baseType: !603)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !948, file: !12, line: 380, baseType: !13, size: 32, offset: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !948, file: !12, line: 381, baseType: !449, size: 64, offset: 128)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !948, file: !12, line: 382, baseType: !449, size: 64, offset: 192)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !720, file: !12, line: 477, baseType: !948, size: 256, offset: 7168)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !720, file: !12, line: 480, baseType: !971, size: 64, offset: 7424)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !12, line: 480, flags: DIFlagFwdDecl)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !720, file: !12, line: 483, baseType: !974, size: 64, offset: 7488)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !12, line: 483, flags: DIFlagFwdDecl)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !720, file: !12, line: 488, baseType: !449, size: 64, offset: 7552)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !720, file: !12, line: 492, baseType: !334, size: 64, offset: 7616)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !720, file: !12, line: 493, baseType: !13, size: 32, offset: 7680)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !720, file: !12, line: 495, baseType: !334, size: 64, offset: 7744)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !720, file: !12, line: 496, baseType: !13, size: 32, offset: 7808)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !720, file: !12, line: 499, baseType: !13, size: 32, offset: 7840)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !720, file: !12, line: 500, baseType: !983, size: 64, offset: 7872)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !985, line: 45, baseType: !986)
!985 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!986 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !720, file: !12, line: 503, baseType: !13, size: 32, offset: 7936)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !720, file: !12, line: 504, baseType: !989, size: 64, offset: 8000)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !992, line: 96, size: 192, elements: !993)
!992 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!993 = !{!994, !995, !1076, !1080}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !991, file: !992, line: 97, baseType: !13, size: 32)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !991, file: !992, line: 98, baseType: !996, size: 64, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !992, line: 24, size: 3072, elements: !998)
!998 = !{!999, !1001, !1002, !1003, !1004, !1028, !1029, !1030, !1031, !1049, !1061, !1062, !1073, !1074, !1075}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !997, file: !992, line: 26, baseType: !1000, size: 128)
!1000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !794, size: 128, elements: !909)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !997, file: !992, line: 27, baseType: !1000, size: 128, offset: 128)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !997, file: !992, line: 28, baseType: !115, size: 32, offset: 256)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !997, file: !992, line: 31, baseType: !383, size: 32, align: 512, offset: 512)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !997, file: !992, line: 32, baseType: !1005, size: 960, offset: 576)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1006, line: 206, size: 960, elements: !1007)
!1006 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1007 = !{!1008, !1017, !1022, !1024, !1025, !1027}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1005, file: !1006, line: 207, baseType: !1009, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !333, line: 232, size: 128, align: 64, elements: !1011)
!1011 = !{!1012, !1013}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1010, file: !333, line: 233, baseType: !1009, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1010, file: !333, line: 234, baseType: !1014, size: 64, offset: 64)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{null, !1009}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1005, file: !1006, line: 208, baseType: !1018, size: 256, offset: 64)
!1018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1019, size: 256, elements: !1020)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1020 = !{!1021}
!1021 = !DISubrange(count: 4)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1005, file: !1006, line: 209, baseType: !1023, size: 256, offset: 320)
!1023 = !DICompositeType(tag: DW_TAG_array_type, baseType: !499, size: 256, elements: !1020)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1005, file: !1006, line: 213, baseType: !485, size: 64, offset: 576)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1005, file: !1006, line: 215, baseType: !1026, size: 256, offset: 640)
!1026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !485, size: 256, elements: !1020)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1005, file: !1006, line: 216, baseType: !407, size: 8, offset: 896)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !997, file: !992, line: 33, baseType: !499, size: 64, offset: 1536)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !997, file: !992, line: 34, baseType: !499, size: 64, offset: 1600)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !997, file: !992, line: 35, baseType: !870, size: 8, offset: 1664)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !997, file: !992, line: 36, baseType: !1032, size: 320, offset: 1728)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1033, line: 11, size: 320, elements: !1034)
!1033 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1034 = !{!1035, !1042, !1043, !1048}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1032, file: !1033, line: 16, baseType: !1036, size: 128)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !333, line: 198, size: 128, elements: !1037)
!1037 = !{!1038, !1040}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1036, file: !333, line: 199, baseType: !1039, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1036, file: !333, line: 199, baseType: !1041, size: 64, offset: 64)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1032, file: !1033, line: 17, baseType: !499, size: 64, offset: 128)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1032, file: !1033, line: 18, baseType: !1044, size: 64, offset: 192)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{null, !1047}
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1032, file: !1033, line: 19, baseType: !598, size: 32, offset: 256)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !997, file: !992, line: 37, baseType: !1050, size: 256, offset: 2048)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1051, line: 98, size: 256, elements: !1052)
!1051 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1052 = !{!1053, !1054, !1055}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1050, file: !1051, line: 99, baseType: !794, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1050, file: !1051, line: 100, baseType: !370, size: 128, offset: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1050, file: !1051, line: 101, baseType: !1056, size: 64, offset: 192)
!1056 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1051, line: 21, baseType: !1057)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{null, !1060}
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !997, file: !992, line: 38, baseType: !1010, size: 128, align: 64, offset: 2304)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !997, file: !992, line: 39, baseType: !1063, size: 64, offset: 2432)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !992, line: 49, size: 768, elements: !1065)
!1065 = !{!1066, !1067, !1068, !1069, !1070, !1071, !1072}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1064, file: !992, line: 50, baseType: !383, size: 32)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1064, file: !992, line: 51, baseType: !1023, size: 256, offset: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1064, file: !992, line: 53, baseType: !1023, size: 256, offset: 320)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1064, file: !992, line: 54, baseType: !499, size: 64, offset: 576)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1064, file: !992, line: 55, baseType: !1063, size: 64, offset: 640)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1064, file: !992, line: 56, baseType: !115, size: 32, offset: 704)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1064, file: !992, line: 57, baseType: !115, size: 32, offset: 736)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !997, file: !992, line: 40, baseType: !499, size: 64, offset: 2496)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !997, file: !992, line: 42, baseType: !115, size: 32, offset: 2560)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !997, file: !992, line: 43, baseType: !990, size: 64, offset: 2624)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !991, file: !992, line: 99, baseType: !1077, offset: 128)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1078, line: 211, elements: !1079)
!1078 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1079 = !{}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !991, file: !992, line: 100, baseType: !1081, size: 64, offset: 128)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !992, line: 63, size: 3008, elements: !1083)
!1083 = !{!1084, !1085, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1115}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1082, file: !992, line: 64, baseType: !1063, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1082, file: !992, line: 65, baseType: !1086, size: 192, offset: 64)
!1086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1063, size: 192, elements: !450)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1082, file: !992, line: 67, baseType: !115, size: 32, offset: 256)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1082, file: !992, line: 68, baseType: !790, size: 256, offset: 320)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1082, file: !992, line: 69, baseType: !383, size: 32, offset: 576)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1082, file: !992, line: 70, baseType: !790, size: 256, offset: 640)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1082, file: !992, line: 71, baseType: !499, size: 64, offset: 896)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1082, file: !992, line: 72, baseType: !499, size: 64, offset: 960)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1082, file: !992, line: 73, baseType: !499, size: 64, offset: 1024)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1082, file: !992, line: 74, baseType: !499, size: 64, offset: 1088)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1082, file: !992, line: 75, baseType: !499, size: 64, offset: 1152)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1082, file: !992, line: 76, baseType: !499, size: 64, offset: 1216)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1082, file: !992, line: 77, baseType: !499, size: 64, offset: 1280)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1082, file: !992, line: 78, baseType: !499, size: 64, offset: 1344)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1082, file: !992, line: 79, baseType: !870, size: 8, offset: 1408)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1082, file: !992, line: 80, baseType: !499, size: 64, offset: 1472)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1082, file: !992, line: 81, baseType: !790, size: 256, offset: 1536)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1082, file: !992, line: 82, baseType: !739, size: 256, offset: 1792)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1082, file: !992, line: 84, baseType: !354, size: 32, offset: 2048)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1082, file: !992, line: 87, baseType: !499, size: 64, offset: 2112)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1082, file: !992, line: 88, baseType: !499, size: 64, offset: 2176)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1082, file: !992, line: 89, baseType: !1107, size: 704, offset: 2240)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1051, line: 111, size: 704, elements: !1108)
!1108 = !{!1109, !1110, !1111, !1114}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1107, file: !1051, line: 112, baseType: !1050, size: 256)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1107, file: !1051, line: 113, baseType: !1032, size: 320, offset: 256)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1107, file: !1051, line: 116, baseType: !1112, size: 64, offset: 576)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1051, line: 18, flags: DIFlagFwdDecl)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1107, file: !1051, line: 117, baseType: !115, size: 32, offset: 640)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1082, file: !992, line: 90, baseType: !990, size: 64, offset: 2944)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !720, file: !12, line: 515, baseType: !1117, size: 64, offset: 8064)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1119, line: 117, size: 128, elements: !1120)
!1119 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1120 = !{!1121, !1122, !1123}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1118, file: !1119, line: 118, baseType: !786, size: 32)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1118, file: !1119, line: 119, baseType: !786, size: 32, offset: 32)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1118, file: !1119, line: 120, baseType: !485, size: 64, offset: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !720, file: !12, line: 516, baseType: !13, size: 32, offset: 8128)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !720, file: !12, line: 519, baseType: !13, size: 32, offset: 8160)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !720, file: !12, line: 520, baseType: !1127, size: 64, offset: 8192)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !720, file: !12, line: 523, baseType: !1129, size: 64, offset: 8256)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !12, line: 523, flags: DIFlagFwdDecl)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !720, file: !12, line: 524, baseType: !13, size: 32, offset: 8320)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !720, file: !12, line: 525, baseType: !1134, size: 64, offset: 8384)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !12, line: 525, flags: DIFlagFwdDecl)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !720, file: !12, line: 526, baseType: !13, size: 32, offset: 8448)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !720, file: !12, line: 533, baseType: !334, size: 64, offset: 8512)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !720, file: !12, line: 534, baseType: !13, size: 32, offset: 8576)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !720, file: !12, line: 535, baseType: !1141, size: 64, offset: 8640)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !720, file: !12, line: 536, baseType: !13, size: 32, offset: 8704)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !720, file: !12, line: 539, baseType: !115, size: 32, offset: 8736)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !720, file: !12, line: 540, baseType: !1145, size: 64, offset: 8768)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1147, line: 32, size: 64, elements: !1148)
!1147 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1148 = !{!1149, !1150}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1146, file: !1147, line: 33, baseType: !786, size: 32)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1146, file: !1147, line: 34, baseType: !786, size: 32, offset: 32)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !720, file: !12, line: 563, baseType: !370, size: 128, offset: 8832)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !720, file: !12, line: 565, baseType: !370, size: 128, offset: 8960)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !720, file: !12, line: 568, baseType: !1154, size: 64, offset: 9088)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{null}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !720, file: !12, line: 570, baseType: !354, size: 32, offset: 9152)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !695, file: !20, line: 2382, baseType: !694, size: 64, offset: 448)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !695, file: !20, line: 2383, baseType: !1160, size: 64, offset: 512)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !333, line: 194, size: 64, elements: !1161)
!1161 = !{!1162}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1160, file: !333, line: 195, baseType: !1039, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !695, file: !20, line: 2385, baseType: !1164, offset: 576)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1078, line: 206, elements: !1079)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !695, file: !20, line: 2386, baseType: !1164, offset: 576)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !695, file: !20, line: 2387, baseType: !1164, offset: 576)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !695, file: !20, line: 2388, baseType: !1168, offset: 576)
!1168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1164, elements: !450)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !695, file: !20, line: 2390, baseType: !1164, offset: 576)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !695, file: !20, line: 2391, baseType: !1164, offset: 576)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !695, file: !20, line: 2392, baseType: !1164, offset: 576)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !695, file: !20, line: 2393, baseType: !1164, offset: 576)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !681, file: !20, line: 1197, baseType: !1174, size: 64, offset: 384)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1176)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !20, line: 2057, size: 1664, elements: !1177)
!1177 = !{!1178, !1182, !1186, !1187, !1191, !1197, !1201, !1202, !1203, !1207, !1211, !1215, !1216, !1217, !1223, !1227, !1228, !3420, !3421, !3422, !3423, !3427, !3431, !3478, !3493, !3494}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1176, file: !20, line: 2058, baseType: !1179, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!529, !680}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1176, file: !20, line: 2059, baseType: !1183, size: 64, offset: 64)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{null, !529}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1176, file: !20, line: 2060, baseType: !1183, size: 64, offset: 128)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1176, file: !20, line: 2062, baseType: !1188, size: 64, offset: 192)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{null, !529, !115}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1176, file: !20, line: 2063, baseType: !1192, size: 64, offset: 256)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{!115, !529, !1195}
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !20, line: 309, flags: DIFlagFwdDecl)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1176, file: !20, line: 2064, baseType: !1198, size: 64, offset: 320)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!115, !529}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1176, file: !20, line: 2065, baseType: !1183, size: 64, offset: 384)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1176, file: !20, line: 2066, baseType: !715, size: 64, offset: 448)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1176, file: !20, line: 2067, baseType: !1204, size: 64, offset: 512)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!115, !680, !115}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1176, file: !20, line: 2068, baseType: !1208, size: 64, offset: 576)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!115, !680, !19}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1176, file: !20, line: 2069, baseType: !1212, size: 64, offset: 640)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{!115, !680}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1176, file: !20, line: 2070, baseType: !1208, size: 64, offset: 704)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1176, file: !20, line: 2071, baseType: !1212, size: 64, offset: 768)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1176, file: !20, line: 2072, baseType: !1218, size: 64, offset: 832)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!115, !564, !1221}
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !20, line: 62, flags: DIFlagFwdDecl)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1176, file: !20, line: 2073, baseType: !1224, size: 64, offset: 896)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!115, !680, !919, !449}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1176, file: !20, line: 2074, baseType: !715, size: 64, offset: 960)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1176, file: !20, line: 2076, baseType: !1229, size: 64, offset: 1024)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{!115, !1232, !564}
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1234, line: 17, size: 960, elements: !1235)
!1234 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1235 = !{!1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1266, !1267, !3419}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1233, file: !1234, line: 18, baseType: !449, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1233, file: !1234, line: 19, baseType: !496, size: 64, offset: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1233, file: !1234, line: 20, baseType: !496, size: 64, offset: 128)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1233, file: !1234, line: 21, baseType: !496, size: 64, offset: 192)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1233, file: !1234, line: 22, baseType: !496, size: 64, offset: 256)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1233, file: !1234, line: 23, baseType: !690, size: 64, offset: 320)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1233, file: !1234, line: 24, baseType: !690, size: 64, offset: 384)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1233, file: !1234, line: 25, baseType: !790, size: 256, offset: 448)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1233, file: !1234, line: 26, baseType: !1245, size: 64, offset: 704)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1247)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1234, line: 32, size: 256, elements: !1248)
!1248 = !{!1249, !1254, !1258, !1262}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1247, file: !1234, line: 33, baseType: !1250, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!334, !1232, !1253}
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1247, file: !1234, line: 34, baseType: !1255, size: 64, offset: 64)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{null, !1232, !334}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1247, file: !1234, line: 35, baseType: !1259, size: 64, offset: 128)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!334, !1232, !334, !1253}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1247, file: !1234, line: 36, baseType: !1263, size: 64, offset: 192)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!115, !1232, !334}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1233, file: !1234, line: 27, baseType: !115, size: 32, offset: 768)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1233, file: !1234, line: 28, baseType: !1268, size: 64, offset: 832)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1270)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !20, line: 994, size: 1856, align: 64, elements: !1271)
!1271 = !{!1272, !1283, !1284, !1286, !1287, !1288, !1289, !1290, !3233, !3234, !3243, !3249, !3250, !3409, !3410, !3411, !3412, !3414, !3415, !3418}
!1272 = !DIDerivedType(tag: DW_TAG_member, scope: !1270, file: !20, line: 995, baseType: !1273, size: 128)
!1273 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1270, file: !20, line: 995, size: 128, elements: !1274)
!1274 = !{!1275, !1281, !1282}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1273, file: !20, line: 996, baseType: !1276, size: 64)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1277, line: 60, size: 64, elements: !1278)
!1277 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1278 = !{!1279}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1276, file: !1277, line: 61, baseType: !1280, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1273, file: !20, line: 997, baseType: !1010, size: 128, align: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1273, file: !20, line: 998, baseType: !13, size: 32)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1270, file: !20, line: 1005, baseType: !383, size: 32, offset: 128)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1270, file: !20, line: 1006, baseType: !1285, size: 32, offset: 160)
!1285 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !333, line: 156, baseType: !13)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1270, file: !20, line: 1007, baseType: !794, size: 64, offset: 192)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1270, file: !20, line: 1008, baseType: !790, size: 256, offset: 256)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1270, file: !20, line: 1009, baseType: !690, size: 64, offset: 512)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1270, file: !20, line: 1010, baseType: !13, size: 32, offset: 576)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1270, file: !20, line: 1011, baseType: !1291, size: 256, offset: 640)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !20, line: 948, size: 256, elements: !1292)
!1292 = !{!1293, !1314, !3229, !3230, !3231, !3232}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1291, file: !20, line: 949, baseType: !1294, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1295, line: 34, baseType: !1296)
!1295 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1295, line: 25, size: 64, elements: !1297)
!1297 = !{!1298}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1296, file: !1295, line: 26, baseType: !1299, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1300, line: 27, baseType: !1301)
!1300 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1300, line: 13, size: 64, elements: !1302)
!1302 = !{!1303, !1313}
!1303 = !DIDerivedType(tag: DW_TAG_member, scope: !1301, file: !1300, line: 14, baseType: !1304, size: 32)
!1304 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1301, file: !1300, line: 14, size: 32, elements: !1305)
!1305 = !{!1306, !1307}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1304, file: !1300, line: 15, baseType: !354, size: 32)
!1307 = !DIDerivedType(tag: DW_TAG_member, scope: !1304, file: !1300, line: 16, baseType: !1308, size: 32)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1304, file: !1300, line: 16, size: 32, elements: !1309)
!1309 = !{!1310, !1311}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1308, file: !1300, line: 18, baseType: !407, size: 8)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1308, file: !1300, line: 19, baseType: !1312, size: 24, offset: 8)
!1312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !407, size: 24, elements: !450)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1301, file: !1300, line: 26, baseType: !395, size: 32, offset: 32)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1291, file: !20, line: 950, baseType: !1315, size: 64, offset: 64)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !67, line: 59, size: 768, elements: !1317)
!1317 = !{!1318, !1319, !1320, !1321, !1323, !1324, !1331, !1332}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1316, file: !67, line: 61, baseType: !349, size: 32)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1316, file: !67, line: 62, baseType: !13, size: 32, offset: 32)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1316, file: !67, line: 63, baseType: !383, size: 32, offset: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1316, file: !67, line: 65, baseType: !1322, size: 256, offset: 128)
!1322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1160, size: 256, elements: !1020)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1316, file: !67, line: 66, baseType: !1160, size: 64, offset: 384)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1316, file: !67, line: 68, baseType: !1325, size: 192, offset: 448)
!1325 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1326, line: 41, baseType: !1327)
!1326 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1326, line: 37, size: 192, elements: !1328)
!1328 = !{!1329, !1330}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1327, file: !1326, line: 38, baseType: !383, size: 32)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1327, file: !1326, line: 39, baseType: !370, size: 128, offset: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1316, file: !67, line: 69, baseType: !1010, size: 128, align: 64, offset: 640)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1316, file: !67, line: 70, baseType: !1333, offset: 768)
!1333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1334, elements: !1819)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !67, line: 54, size: 128, elements: !1335)
!1335 = !{!1336, !1337}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1334, file: !67, line: 55, baseType: !115, size: 32)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1334, file: !67, line: 56, baseType: !1338, size: 64, offset: 64)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1340, line: 26, size: 1152, elements: !1341)
!1340 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!1341 = !{!1342, !1355, !1356, !1357, !3205, !3209, !3210, !3211, !3214, !3215, !3216, !3217, !3228}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !1339, file: !1340, line: 27, baseType: !1343, size: 192)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1344, line: 19, size: 192, elements: !1345)
!1344 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!1345 = !{!1346, !1353, !1354}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1343, file: !1344, line: 20, baseType: !1347, size: 128)
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1348, line: 296, size: 128, elements: !1349)
!1348 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1349 = !{!1350, !1351, !1352}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1347, file: !1348, line: 297, baseType: !383, size: 32)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1347, file: !1348, line: 299, baseType: !332, size: 32, offset: 32)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1347, file: !1348, line: 300, baseType: !334, size: 64, offset: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1343, file: !1344, line: 21, baseType: !13, size: 32, offset: 128)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1343, file: !1344, line: 22, baseType: !13, size: 32, offset: 160)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1339, file: !1340, line: 28, baseType: !1010, size: 128, align: 64, offset: 192)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !1339, file: !1340, line: 29, baseType: !13, size: 32, offset: 320)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !1339, file: !1340, line: 30, baseType: !1358, size: 64, offset: 384)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1360, line: 746, size: 58368, elements: !1361)
!1360 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1361 = !{!1362, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1442, !1453, !1548, !1552, !1555, !1586, !1587, !1588, !1589, !1600, !1602, !1603, !1604, !1605, !1606, !1607, !1618, !1619, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1636, !1637, !1644, !1645, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1900, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1948, !1954, !2136, !2137, !2138, !2139, !2143, !2146, !2153, !2158, !2161, !2164, !2167, !2193, !2331, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2369, !2370, !2371, !2380, !2388, !2389, !2390, !2391, !2392, !2397, !2398, !2399, !2403, !2404, !2407, !2410, !2413, !2421, !2424, !2425, !2511, !2512, !2513, !2514, !2515, !2521, !2522, !2523, !2524, !2527, !2528, !2531, !2534, !2535, !2538, !2539, !2540, !2543, !2544, !2545, !2548, !2549, !2550, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2582, !2585, !2874, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2886, !2958, !2960, !2961, !2962, !2963, !2964, !2965, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2982, !2983, !2984}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1359, file: !1360, line: 752, baseType: !1363, size: 192)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1364, line: 56, size: 192, elements: !1365)
!1364 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1365 = !{!1366, !1367, !1368, !1369}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1363, file: !1364, line: 57, baseType: !499, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1363, file: !1364, line: 58, baseType: !499, size: 64, offset: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1363, file: !1364, line: 59, baseType: !598, size: 32, offset: 128)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1363, file: !1364, line: 61, baseType: !598, size: 32, offset: 160)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1359, file: !1360, line: 754, baseType: !13, size: 32, offset: 192)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1359, file: !1360, line: 767, baseType: !334, size: 64, offset: 256)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1359, file: !1360, line: 768, baseType: !349, size: 32, offset: 320)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1359, file: !1360, line: 770, baseType: !13, size: 32, offset: 352)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1359, file: !1360, line: 771, baseType: !13, size: 32, offset: 384)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1359, file: !1360, line: 774, baseType: !115, size: 32, offset: 416)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1359, file: !1360, line: 775, baseType: !1377, size: 128, offset: 448)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1378, line: 58, size: 128, elements: !1379)
!1378 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1379 = !{!1380, !1381, !1386, !1387}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1377, file: !1378, line: 59, baseType: !1276, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, scope: !1377, file: !1378, line: 60, baseType: !1382, size: 32, offset: 64)
!1382 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1377, file: !1378, line: 60, size: 32, elements: !1383)
!1383 = !{!1384, !1385}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1382, file: !1378, line: 61, baseType: !13, size: 32)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1382, file: !1378, line: 62, baseType: !354, size: 32)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1377, file: !1378, line: 65, baseType: !417, size: 16, offset: 96)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1377, file: !1378, line: 65, baseType: !417, size: 16, offset: 112)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1359, file: !1360, line: 776, baseType: !13, size: 32, offset: 576)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1359, file: !1360, line: 777, baseType: !499, size: 64, offset: 640)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1359, file: !1360, line: 778, baseType: !1358, size: 64, offset: 704)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1359, file: !1360, line: 787, baseType: !115, size: 32, offset: 768)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1359, file: !1360, line: 788, baseType: !115, size: 32, offset: 800)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1359, file: !1360, line: 790, baseType: !115, size: 32, offset: 832)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1359, file: !1360, line: 792, baseType: !115, size: 32, offset: 864)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1359, file: !1360, line: 793, baseType: !115, size: 32, offset: 896)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1359, file: !1360, line: 794, baseType: !115, size: 32, offset: 928)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1359, file: !1360, line: 795, baseType: !13, size: 32, offset: 960)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1359, file: !1360, line: 797, baseType: !1399, size: 2048, offset: 1024)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1360, line: 551, size: 2048, elements: !1400)
!1400 = !{!1401, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1421, !1424, !1425, !1426}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1399, file: !1360, line: 553, baseType: !1402, size: 128)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1360, line: 411, size: 128, elements: !1403)
!1403 = !{!1404, !1405}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1402, file: !1360, line: 412, baseType: !499, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1402, file: !1360, line: 413, baseType: !598, size: 32, offset: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1399, file: !1360, line: 554, baseType: !902, size: 192, align: 64, offset: 128)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1399, file: !1360, line: 555, baseType: !602, size: 64, offset: 320)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1399, file: !1360, line: 556, baseType: !602, size: 64, offset: 384)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1399, file: !1360, line: 558, baseType: !370, size: 128, offset: 448)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1399, file: !1360, line: 559, baseType: !13, size: 32, offset: 576)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1399, file: !1360, line: 561, baseType: !602, size: 64, offset: 640)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1399, file: !1360, line: 562, baseType: !602, size: 64, offset: 704)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1399, file: !1360, line: 563, baseType: !602, size: 64, offset: 768)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1399, file: !1360, line: 564, baseType: !602, size: 64, offset: 832)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1399, file: !1360, line: 565, baseType: !800, size: 64, offset: 896)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1399, file: !1360, line: 566, baseType: !602, size: 64, offset: 960)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1399, file: !1360, line: 568, baseType: !602, size: 64, offset: 1024)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1399, file: !1360, line: 571, baseType: !115, size: 32, offset: 1088)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1399, file: !1360, line: 572, baseType: !1420, size: 64, offset: 1152)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1399, file: !1360, line: 574, baseType: !1422, size: 64, offset: 1216)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1360, line: 49, flags: DIFlagFwdDecl)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1399, file: !1360, line: 576, baseType: !1422, size: 64, offset: 1280)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1399, file: !1360, line: 578, baseType: !499, size: 64, offset: 1344)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1399, file: !1360, line: 588, baseType: !1427, size: 512, align: 512, offset: 1536)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1360, line: 497, size: 512, align: 512, elements: !1428)
!1428 = !{!1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1427, file: !1360, line: 498, baseType: !602, size: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1427, file: !1360, line: 499, baseType: !602, size: 64, offset: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1427, file: !1360, line: 500, baseType: !602, size: 64, offset: 128)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1427, file: !1360, line: 501, baseType: !598, size: 32, offset: 192)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1427, file: !1360, line: 502, baseType: !598, size: 32, offset: 224)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1427, file: !1360, line: 503, baseType: !499, size: 64, offset: 256)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1427, file: !1360, line: 504, baseType: !499, size: 64, offset: 320)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1427, file: !1360, line: 505, baseType: !499, size: 64, offset: 384)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1427, file: !1360, line: 506, baseType: !1438, size: 64, align: 64, offset: 448)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1360, line: 445, size: 64, align: 64, elements: !1439)
!1439 = !{!1440, !1441}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1438, file: !1360, line: 446, baseType: !13, size: 32)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1438, file: !1360, line: 447, baseType: !13, size: 32, offset: 32)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1359, file: !1360, line: 798, baseType: !1443, size: 384, offset: 3072)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1360, line: 592, size: 384, elements: !1444)
!1444 = !{!1445, !1446, !1447, !1448, !1449, !1450, !1451}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1443, file: !1360, line: 593, baseType: !370, size: 128)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1443, file: !1360, line: 594, baseType: !499, size: 64, offset: 128)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1443, file: !1360, line: 595, baseType: !499, size: 64, offset: 192)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1443, file: !1360, line: 596, baseType: !13, size: 32, offset: 256)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1443, file: !1360, line: 597, baseType: !419, size: 16, offset: 288)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1443, file: !1360, line: 598, baseType: !419, size: 16, offset: 304)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1443, file: !1360, line: 600, baseType: !1452, size: 64, offset: 320)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1359, file: !1360, line: 799, baseType: !1454, size: 1792, offset: 3456)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1360, line: 610, size: 1792, elements: !1455)
!1455 = !{!1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1545, !1546}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1454, file: !1360, line: 611, baseType: !902, size: 192, align: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1454, file: !1360, line: 618, baseType: !602, size: 64, offset: 192)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1454, file: !1360, line: 619, baseType: !602, size: 64, offset: 256)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1454, file: !1360, line: 620, baseType: !602, size: 64, offset: 320)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1454, file: !1360, line: 621, baseType: !602, size: 64, offset: 384)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1454, file: !1360, line: 622, baseType: !602, size: 64, offset: 448)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1454, file: !1360, line: 629, baseType: !800, size: 64, offset: 512)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1454, file: !1360, line: 630, baseType: !602, size: 64, offset: 576)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1454, file: !1360, line: 631, baseType: !13, size: 32, offset: 640)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1454, file: !1360, line: 653, baseType: !13, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1454, file: !1360, line: 654, baseType: !13, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1454, file: !1360, line: 655, baseType: !13, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1454, file: !1360, line: 656, baseType: !13, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1454, file: !1360, line: 662, baseType: !1470, size: 512, offset: 704)
!1470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !25, line: 118, size: 512, elements: !1471)
!1471 = !{!1472, !1480, !1481, !1486, !1541, !1542, !1543, !1544}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1470, file: !25, line: 119, baseType: !1473, size: 256)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1474, line: 9, size: 256, elements: !1475)
!1474 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1475 = !{!1476, !1477}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1473, file: !1474, line: 10, baseType: !902, size: 192, align: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1473, file: !1474, line: 11, baseType: !1478, size: 64, offset: 192)
!1478 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1479, line: 29, baseType: !800)
!1479 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1470, file: !25, line: 120, baseType: !1478, size: 64, offset: 256)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1470, file: !25, line: 121, baseType: !1482, size: 64, offset: 320)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{!24, !1485}
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1470, file: !25, line: 122, baseType: !1487, size: 64, offset: 384)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !25, line: 159, size: 512, align: 512, elements: !1489)
!1489 = !{!1490, !1515, !1516, !1519, !1524, !1525, !1536, !1540}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1488, file: !25, line: 160, baseType: !1491, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !25, line: 215, size: 4608, align: 512, elements: !1493)
!1493 = !{!1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1492, file: !25, line: 216, baseType: !748, size: 32)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1492, file: !25, line: 217, baseType: !13, size: 32, offset: 32)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1492, file: !25, line: 218, baseType: !13, size: 32, offset: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1492, file: !25, line: 219, baseType: !13, size: 32, offset: 96)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1492, file: !25, line: 220, baseType: !13, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1492, file: !25, line: 221, baseType: !13, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1492, file: !25, line: 222, baseType: !13, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1492, file: !25, line: 223, baseType: !13, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1492, file: !25, line: 224, baseType: !13, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1492, file: !25, line: 226, baseType: !13, size: 32, offset: 160)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1492, file: !25, line: 227, baseType: !419, size: 16, offset: 192)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1492, file: !25, line: 228, baseType: !419, size: 16, offset: 208)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1492, file: !25, line: 229, baseType: !13, size: 32, offset: 224)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1492, file: !25, line: 235, baseType: !1478, size: 64, offset: 256)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1492, file: !25, line: 236, baseType: !1485, size: 64, offset: 320)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1492, file: !25, line: 237, baseType: !1478, size: 64, offset: 384)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1492, file: !25, line: 238, baseType: !1485, size: 64, offset: 448)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1492, file: !25, line: 239, baseType: !1512, size: 4096, align: 512, offset: 512)
!1512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1488, size: 4096, align: 512, elements: !1513)
!1513 = !{!1514}
!1514 = !DISubrange(count: 8)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1488, file: !25, line: 161, baseType: !13, size: 32, offset: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1488, file: !25, line: 162, baseType: !1517, size: 32, offset: 96)
!1517 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !333, line: 32, baseType: !1518)
!1518 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !483, line: 96, baseType: !115)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1488, file: !25, line: 163, baseType: !1520, size: 32, offset: 128)
!1520 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !571, line: 274, baseType: !1521)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !571, line: 274, size: 32, elements: !1522)
!1522 = !{!1523}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1521, file: !571, line: 274, baseType: !575, size: 32)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1488, file: !25, line: 164, baseType: !1485, size: 64, offset: 192)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1488, file: !25, line: 165, baseType: !1526, size: 128, offset: 256)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1474, line: 14, size: 128, elements: !1527)
!1527 = !{!1528}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1526, file: !1474, line: 15, baseType: !1529, size: 128)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !903, line: 26, size: 128, elements: !1530)
!1530 = !{!1531, !1535}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1529, file: !903, line: 27, baseType: !1532, size: 64)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !903, line: 12, size: 64, elements: !1533)
!1533 = !{!1534}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1532, file: !903, line: 13, baseType: !907, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1529, file: !903, line: 28, baseType: !907, size: 64, offset: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1488, file: !25, line: 166, baseType: !1537, size: 64, offset: 384)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!1478}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1488, file: !25, line: 167, baseType: !1478, size: 64, offset: 448)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1470, file: !25, line: 123, baseType: !407, size: 8, offset: 448)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1470, file: !25, line: 124, baseType: !407, size: 8, offset: 456)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1470, file: !25, line: 125, baseType: !407, size: 8, offset: 464)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1470, file: !25, line: 126, baseType: !407, size: 8, offset: 472)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1454, file: !1360, line: 671, baseType: !1470, size: 512, offset: 1216)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1454, file: !1360, line: 679, baseType: !1547, size: 64, offset: 1728)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1359, file: !1360, line: 800, baseType: !1549, size: 64, offset: 5248)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1551)
!1551 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1360, line: 800, flags: DIFlagFwdDecl)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1359, file: !1360, line: 809, baseType: !1553, size: 64, offset: 5312)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1360, line: 70, flags: DIFlagFwdDecl)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1359, file: !1360, line: 825, baseType: !1556, size: 2048, align: 512, offset: 5632)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1360, line: 509, size: 2048, align: 512, elements: !1557)
!1557 = !{!1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1556, file: !1360, line: 511, baseType: !602, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1556, file: !1360, line: 512, baseType: !602, size: 64, offset: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1556, file: !1360, line: 513, baseType: !602, size: 64, offset: 128)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1556, file: !1360, line: 514, baseType: !602, size: 64, offset: 192)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1556, file: !1360, line: 515, baseType: !602, size: 64, offset: 256)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1556, file: !1360, line: 516, baseType: !602, size: 64, offset: 320)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1556, file: !1360, line: 518, baseType: !602, size: 64, offset: 384)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1556, file: !1360, line: 519, baseType: !602, size: 64, offset: 448)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1556, file: !1360, line: 520, baseType: !800, size: 64, offset: 512)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1556, file: !1360, line: 522, baseType: !602, size: 64, offset: 576)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1556, file: !1360, line: 523, baseType: !602, size: 64, offset: 640)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1556, file: !1360, line: 524, baseType: !800, size: 64, offset: 704)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1556, file: !1360, line: 526, baseType: !800, size: 64, offset: 768)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1556, file: !1360, line: 527, baseType: !602, size: 64, offset: 832)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1556, file: !1360, line: 529, baseType: !602, size: 64, offset: 896)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1556, file: !1360, line: 530, baseType: !602, size: 64, offset: 960)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1556, file: !1360, line: 531, baseType: !602, size: 64, offset: 1024)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1556, file: !1360, line: 532, baseType: !602, size: 64, offset: 1088)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1556, file: !1360, line: 533, baseType: !602, size: 64, offset: 1152)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1556, file: !1360, line: 535, baseType: !602, size: 64, offset: 1216)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1556, file: !1360, line: 536, baseType: !602, size: 64, offset: 1280)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1556, file: !1360, line: 537, baseType: !602, size: 64, offset: 1344)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1556, file: !1360, line: 538, baseType: !602, size: 64, offset: 1408)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1556, file: !1360, line: 539, baseType: !602, size: 64, offset: 1472)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1556, file: !1360, line: 540, baseType: !602, size: 64, offset: 1536)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1556, file: !1360, line: 541, baseType: !602, size: 64, offset: 1600)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1556, file: !1360, line: 542, baseType: !602, size: 64, offset: 1664)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1556, file: !1360, line: 543, baseType: !602, size: 64, offset: 1728)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1359, file: !1360, line: 833, baseType: !13, size: 32, offset: 7680)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1359, file: !1360, line: 836, baseType: !13, size: 32, offset: 7712)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1359, file: !1360, line: 837, baseType: !115, size: 32, offset: 7744)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1359, file: !1360, line: 838, baseType: !1590, size: 64, offset: 7808)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1592)
!1592 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1593, line: 19, baseType: !1594)
!1593 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1593, line: 19, size: 64, elements: !1595)
!1595 = !{!1596}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1594, file: !1593, line: 19, baseType: !1597, size: 64)
!1597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !499, size: 64, elements: !1598)
!1598 = !{!1599}
!1599 = !DISubrange(count: 1)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1359, file: !1360, line: 839, baseType: !1601, size: 64, offset: 7872)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1359, file: !1360, line: 840, baseType: !1592, size: 64, offset: 7936)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1359, file: !1360, line: 841, baseType: !334, size: 64, offset: 8000)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1359, file: !1360, line: 843, baseType: !419, size: 16, offset: 8064)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1359, file: !1360, line: 845, baseType: !419, size: 16, offset: 8080)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1359, file: !1360, line: 848, baseType: !115, size: 32, offset: 8096)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1359, file: !1360, line: 849, baseType: !1608, size: 32, offset: 8128)
!1608 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1360, line: 718, size: 32, elements: !1609)
!1609 = !{!1610, !1617}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1608, file: !1360, line: 724, baseType: !1611, size: 32)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1608, file: !1360, line: 719, size: 32, elements: !1612)
!1612 = !{!1613, !1614, !1615, !1616}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1611, file: !1360, line: 720, baseType: !407, size: 8)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1611, file: !1360, line: 721, baseType: !407, size: 8, offset: 8)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1611, file: !1360, line: 722, baseType: !407, size: 8, offset: 16)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1611, file: !1360, line: 723, baseType: !407, size: 8, offset: 24)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1608, file: !1360, line: 725, baseType: !598, size: 32)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1359, file: !1360, line: 850, baseType: !370, size: 128, offset: 8192)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1359, file: !1360, line: 851, baseType: !1620, size: 64, offset: 8320)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1360, line: 60, flags: DIFlagFwdDecl)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1359, file: !1360, line: 855, baseType: !499, size: 64, offset: 8384)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1359, file: !1360, line: 856, baseType: !407, size: 8, offset: 8448)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1359, file: !1360, line: 857, baseType: !407, size: 8, offset: 8456)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1359, file: !1360, line: 858, baseType: !115, size: 32, offset: 8480)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1359, file: !1360, line: 859, baseType: !370, size: 128, offset: 8512)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1359, file: !1360, line: 860, baseType: !115, size: 32, offset: 8640)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1359, file: !1360, line: 861, baseType: !370, size: 128, offset: 8704)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1359, file: !1360, line: 873, baseType: !1630, size: 256, offset: 8832)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1360, line: 376, size: 256, elements: !1631)
!1631 = !{!1632, !1633, !1634, !1635}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1630, file: !1360, line: 381, baseType: !499, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1630, file: !1360, line: 384, baseType: !604, size: 64, offset: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1630, file: !1360, line: 389, baseType: !604, size: 64, offset: 128)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1630, file: !1360, line: 392, baseType: !604, size: 64, offset: 192)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1359, file: !1360, line: 875, baseType: !370, size: 128, offset: 9088)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1359, file: !1360, line: 877, baseType: !1638, size: 320, offset: 9216)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1639, line: 86, size: 320, elements: !1640)
!1639 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1640 = !{!1641, !1642, !1643}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1638, file: !1639, line: 87, baseType: !115, size: 32)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1638, file: !1639, line: 88, baseType: !370, size: 128, offset: 64)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1638, file: !1639, line: 89, baseType: !370, size: 128, offset: 192)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1359, file: !1360, line: 878, baseType: !902, size: 192, align: 64, offset: 9536)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1359, file: !1360, line: 881, baseType: !1646, size: 64, offset: 9728)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !44, line: 733, size: 10240, elements: !1648)
!1648 = !{!1649, !1817}
!1649 = !DIDerivedType(tag: DW_TAG_member, scope: !1647, file: !44, line: 734, baseType: !1650, size: 10240)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1647, file: !44, line: 734, size: 10240, elements: !1651)
!1651 = !{!1652, !1656, !1669, !1674, !1675, !1676, !1677, !1678, !1679, !1688, !1689, !1690, !1696, !1697, !1698, !1699, !1700, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1737, !1747, !1750, !1795, !1796, !1797, !1800, !1803, !1804, !1807, !1808, !1809, !1815, !1816}
!1652 = !DIDerivedType(tag: DW_TAG_member, scope: !1650, file: !44, line: 739, baseType: !1653, size: 512, align: 512)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1650, file: !44, line: 739, size: 512, align: 512, elements: !1654)
!1654 = !{!1655}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1653, file: !44, line: 747, baseType: !354, size: 32)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1650, file: !44, line: 750, baseType: !1657, size: 128, offset: 512)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1658, line: 218, size: 128, elements: !1659)
!1658 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1659 = !{!1660, !1667, !1668}
!1660 = !DIDerivedType(tag: DW_TAG_member, scope: !1657, file: !1658, line: 219, baseType: !1661, size: 32)
!1661 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1657, file: !1658, line: 219, size: 32, elements: !1662)
!1662 = !{!1663, !1664}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1661, file: !1658, line: 220, baseType: !383, size: 32)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1661, file: !1658, line: 221, baseType: !1665)
!1665 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1658, line: 197, baseType: !1666)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1658, line: 197, elements: !1079)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1657, file: !1658, line: 223, baseType: !13, size: 32, offset: 32)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1657, file: !1658, line: 224, baseType: !334, size: 64, offset: 64)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1650, file: !44, line: 752, baseType: !1670, size: 64, offset: 640)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{!499, !1673, !499, !499, !499, !499}
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1650, file: !44, line: 756, baseType: !499, size: 64, offset: 704)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1650, file: !44, line: 757, baseType: !499, size: 64, offset: 768)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1650, file: !44, line: 760, baseType: !499, size: 64, offset: 832)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1650, file: !44, line: 761, baseType: !499, size: 64, offset: 896)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1650, file: !44, line: 763, baseType: !499, size: 64, offset: 960)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1650, file: !44, line: 764, baseType: !1680, size: 64, offset: 1024)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1682, line: 299, baseType: !1683)
!1682 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1682, line: 299, size: 64, elements: !1684)
!1684 = !{!1685}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1683, file: !1682, line: 299, baseType: !1686, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1687, line: 18, baseType: !499)
!1687 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1650, file: !44, line: 773, baseType: !354, size: 32, offset: 1088)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1650, file: !44, line: 785, baseType: !354, size: 32, offset: 1120)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1650, file: !44, line: 795, baseType: !1691, size: 64, offset: 1152)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !44, line: 726, size: 128, elements: !1693)
!1693 = !{!1694, !1695}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1692, file: !44, line: 727, baseType: !602, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1692, file: !44, line: 728, baseType: !115, size: 32, offset: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1650, file: !44, line: 801, baseType: !499, size: 64, offset: 1216)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1650, file: !44, line: 804, baseType: !794, size: 64, offset: 1280)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1650, file: !44, line: 806, baseType: !115, size: 32, offset: 1344)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1650, file: !44, line: 808, baseType: !383, size: 32, offset: 1376)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1650, file: !44, line: 823, baseType: !1701, size: 320, offset: 1408)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1702, line: 48, size: 320, elements: !1703)
!1702 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1703 = !{!1704, !1705, !1706, !1707, !1708}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1701, file: !1702, line: 49, baseType: !794, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1701, file: !1702, line: 55, baseType: !794, size: 64, offset: 64)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1701, file: !1702, line: 57, baseType: !804, size: 32, offset: 128)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1701, file: !1702, line: 59, baseType: !748, size: 32, offset: 160)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1701, file: !1702, line: 60, baseType: !370, size: 128, offset: 192)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1650, file: !44, line: 825, baseType: !370, size: 128, offset: 1728)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1650, file: !44, line: 845, baseType: !115, size: 32, offset: 1856)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1650, file: !44, line: 849, baseType: !499, size: 64, offset: 1920)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1650, file: !44, line: 850, baseType: !499, size: 64, offset: 1984)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1650, file: !44, line: 852, baseType: !499, size: 64, offset: 2048)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1650, file: !44, line: 853, baseType: !499, size: 64, offset: 2112)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1650, file: !44, line: 854, baseType: !796, size: 64, offset: 2176)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1650, file: !44, line: 855, baseType: !499, size: 64, offset: 2240)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1650, file: !44, line: 856, baseType: !499, size: 64, offset: 2304)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1650, file: !44, line: 857, baseType: !499, size: 64, offset: 2368)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1650, file: !44, line: 858, baseType: !499, size: 64, offset: 2432)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1650, file: !44, line: 865, baseType: !575, size: 32, offset: 2496)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1650, file: !44, line: 867, baseType: !383, size: 32, offset: 2528)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1650, file: !44, line: 869, baseType: !499, size: 64, offset: 2560)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1650, file: !44, line: 869, baseType: !499, size: 64, offset: 2624)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1650, file: !44, line: 869, baseType: !499, size: 64, offset: 2688)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1650, file: !44, line: 869, baseType: !499, size: 64, offset: 2752)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1650, file: !44, line: 870, baseType: !499, size: 64, offset: 2816)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1650, file: !44, line: 870, baseType: !499, size: 64, offset: 2880)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1650, file: !44, line: 870, baseType: !499, size: 64, offset: 2944)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1650, file: !44, line: 871, baseType: !499, size: 64, offset: 3008)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1650, file: !44, line: 871, baseType: !499, size: 64, offset: 3072)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1650, file: !44, line: 871, baseType: !499, size: 64, offset: 3136)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1650, file: !44, line: 871, baseType: !499, size: 64, offset: 3200)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1650, file: !44, line: 873, baseType: !1734, size: 3328, offset: 3264)
!1734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !499, size: 3328, elements: !1735)
!1735 = !{!1736}
!1736 = !DISubrange(count: 52)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1650, file: !44, line: 875, baseType: !1738, size: 1280, offset: 6592)
!1738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1739, size: 1280, elements: !1020)
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1740, line: 22, size: 320, elements: !1741)
!1740 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1741 = !{!1742, !1743, !1744, !1745}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1739, file: !1740, line: 23, baseType: !748, size: 32)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1739, file: !1740, line: 24, baseType: !800, size: 64, offset: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1739, file: !1740, line: 26, baseType: !370, size: 128, offset: 128)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1739, file: !1740, line: 28, baseType: !1746, size: 64, offset: 256)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1650, file: !44, line: 877, baseType: !1748, size: 64, offset: 7872)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !44, line: 877, flags: DIFlagFwdDecl)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1650, file: !44, line: 880, baseType: !1751, size: 1088, offset: 7936)
!1751 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1752, line: 72, baseType: !1753)
!1752 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1753 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1752, line: 23, size: 1088, elements: !1754)
!1754 = !{!1755, !1756, !1757, !1758, !1759, !1762, !1763, !1764, !1765, !1792, !1793, !1794}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1753, file: !1752, line: 28, baseType: !602, size: 64)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1753, file: !1752, line: 38, baseType: !796, size: 64, offset: 64)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1753, file: !1752, line: 40, baseType: !499, size: 64, offset: 128)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1753, file: !1752, line: 43, baseType: !1701, size: 320, offset: 192)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1753, file: !1752, line: 44, baseType: !1760, size: 64, offset: 512)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1752, line: 44, flags: DIFlagFwdDecl)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1753, file: !1752, line: 48, baseType: !499, size: 64, offset: 576)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1753, file: !1752, line: 59, baseType: !790, size: 256, offset: 640)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1753, file: !1752, line: 60, baseType: !334, size: 64, offset: 896)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1753, file: !1752, line: 61, baseType: !1766, size: 64, offset: 960)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1768)
!1768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1769, line: 13, size: 1216, elements: !1770)
!1769 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1770 = !{!1771, !1772, !1773, !1774, !1775, !1776, !1777, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1768, file: !1769, line: 14, baseType: !334, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1768, file: !1769, line: 15, baseType: !499, size: 64, offset: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1768, file: !1769, line: 17, baseType: !499, size: 64, offset: 128)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1768, file: !1769, line: 17, baseType: !499, size: 64, offset: 192)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1768, file: !1769, line: 18, baseType: !499, size: 64, offset: 256)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1768, file: !1769, line: 18, baseType: !499, size: 64, offset: 320)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1768, file: !1769, line: 19, baseType: !1778, size: 64, offset: 384)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1768, file: !1769, line: 21, baseType: !485, size: 64, offset: 448)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1768, file: !1769, line: 23, baseType: !485, size: 64, offset: 512)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1768, file: !1769, line: 24, baseType: !485, size: 64, offset: 576)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1768, file: !1769, line: 25, baseType: !485, size: 64, offset: 640)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1768, file: !1769, line: 26, baseType: !485, size: 64, offset: 704)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1768, file: !1769, line: 27, baseType: !485, size: 64, offset: 768)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1768, file: !1769, line: 28, baseType: !485, size: 64, offset: 832)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1768, file: !1769, line: 29, baseType: !485, size: 64, offset: 896)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1768, file: !1769, line: 30, baseType: !485, size: 64, offset: 960)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1768, file: !1769, line: 31, baseType: !485, size: 64, offset: 1024)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1768, file: !1769, line: 32, baseType: !485, size: 64, offset: 1088)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1768, file: !1769, line: 33, baseType: !485, size: 64, offset: 1152)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1753, file: !1752, line: 63, baseType: !354, size: 32, offset: 1024)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1753, file: !1752, line: 69, baseType: !417, size: 16, offset: 1056)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1753, file: !1752, line: 70, baseType: !926, size: 16, offset: 1072)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1650, file: !44, line: 882, baseType: !499, size: 64, offset: 9024)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1650, file: !44, line: 885, baseType: !383, size: 32, offset: 9088)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1650, file: !44, line: 886, baseType: !1798, size: 64, offset: 9152)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !44, line: 732, flags: DIFlagFwdDecl)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1650, file: !44, line: 901, baseType: !1801, size: 64, offset: 9216)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !44, line: 901, flags: DIFlagFwdDecl)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1650, file: !44, line: 904, baseType: !1673, size: 64, offset: 9280)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1650, file: !44, line: 906, baseType: !1805, size: 64, offset: 9344)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !44, line: 906, flags: DIFlagFwdDecl)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1650, file: !44, line: 930, baseType: !354, size: 32, offset: 9408)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1650, file: !44, line: 933, baseType: !354, size: 32, offset: 9440)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1650, file: !44, line: 935, baseType: !1810, size: 64, offset: 9472)
!1810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !60, line: 103, size: 64, elements: !1811)
!1811 = !{!1812}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1810, file: !60, line: 104, baseType: !1813, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !60, line: 101, flags: DIFlagFwdDecl)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1650, file: !44, line: 940, baseType: !794, size: 64, offset: 9536)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1650, file: !44, line: 942, baseType: !1050, size: 256, offset: 9600)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1647, file: !44, line: 986, baseType: !1818, offset: 10240)
!1818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !499, elements: !1819)
!1819 = !{!1820}
!1820 = !DISubrange(count: -1)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1359, file: !1360, line: 882, baseType: !1646, size: 64, offset: 9792)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1359, file: !1360, line: 884, baseType: !115, size: 32, offset: 9856)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1359, file: !1360, line: 885, baseType: !115, size: 32, offset: 9888)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1359, file: !1360, line: 886, baseType: !115, size: 32, offset: 9920)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1359, file: !1360, line: 888, baseType: !115, size: 32, offset: 9952)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1359, file: !1360, line: 890, baseType: !499, size: 64, offset: 9984)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1359, file: !1360, line: 893, baseType: !13, size: 32, offset: 10048)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1359, file: !1360, line: 896, baseType: !13, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1359, file: !1360, line: 897, baseType: !13, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1359, file: !1360, line: 898, baseType: !13, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1359, file: !1360, line: 899, baseType: !13, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1359, file: !1360, line: 919, baseType: !13, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1359, file: !1360, line: 922, baseType: !13, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1359, file: !1360, line: 923, baseType: !13, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1359, file: !1360, line: 925, baseType: !13, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1359, file: !1360, line: 939, baseType: !13, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1359, file: !1360, line: 941, baseType: !13, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1359, file: !1360, line: 944, baseType: !13, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1359, file: !1360, line: 956, baseType: !13, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1359, file: !1360, line: 962, baseType: !13, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1359, file: !1360, line: 966, baseType: !13, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1359, file: !1360, line: 969, baseType: !499, size: 64, offset: 10176)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1359, file: !1360, line: 971, baseType: !1844, size: 448, offset: 10240)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !30, line: 25, size: 448, elements: !1845)
!1845 = !{!1846, !1847, !1852}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1844, file: !30, line: 26, baseType: !499, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1844, file: !30, line: 27, baseType: !1848, size: 64, offset: 64)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{!485, !1851}
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, scope: !1844, file: !30, line: 28, baseType: !1853, size: 320, offset: 128)
!1853 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1844, file: !30, line: 28, size: 320, elements: !1854)
!1854 = !{!1855, !1865, !1890}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1853, file: !30, line: 37, baseType: !1856, size: 320)
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1853, file: !30, line: 30, size: 320, elements: !1857)
!1857 = !{!1858, !1860, !1861, !1862, !1863, !1864}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1856, file: !30, line: 31, baseType: !1859, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1856, file: !30, line: 32, baseType: !598, size: 32, offset: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1856, file: !30, line: 33, baseType: !598, size: 32, offset: 96)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1856, file: !30, line: 34, baseType: !598, size: 32, offset: 128)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1856, file: !30, line: 35, baseType: !602, size: 64, offset: 192)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1856, file: !30, line: 36, baseType: !1859, size: 64, offset: 256)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1853, file: !30, line: 47, baseType: !1866, size: 192)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1853, file: !30, line: 39, size: 192, elements: !1867)
!1867 = !{!1868, !1869, !1870, !1889}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1866, file: !30, line: 40, baseType: !1517, size: 32)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1866, file: !30, line: 41, baseType: !29, size: 32, offset: 32)
!1870 = !DIDerivedType(tag: DW_TAG_member, scope: !1866, file: !30, line: 42, baseType: !1871, size: 64, offset: 64)
!1871 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1866, file: !30, line: 42, size: 64, elements: !1872)
!1872 = !{!1873, !1881}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1871, file: !30, line: 43, baseType: !1874, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1876, line: 7, size: 128, elements: !1877)
!1876 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1877 = !{!1878, !1880}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1875, file: !1876, line: 8, baseType: !1879, size: 64)
!1879 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !483, line: 93, baseType: !692)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1875, file: !1876, line: 9, baseType: !692, size: 64, offset: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1871, file: !30, line: 44, baseType: !1882, size: 64)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1884, line: 7, size: 64, elements: !1885)
!1884 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1885 = !{!1886, !1888}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1883, file: !1884, line: 8, baseType: !1887, size: 32)
!1887 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1884, line: 5, baseType: !786)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1883, file: !1884, line: 9, baseType: !786, size: 32, offset: 32)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1866, file: !30, line: 46, baseType: !602, size: 64, offset: 128)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1853, file: !30, line: 55, baseType: !1891, size: 256)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1853, file: !30, line: 49, size: 256, elements: !1892)
!1892 = !{!1893, !1896, !1897, !1898, !1899}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1891, file: !30, line: 50, baseType: !1894, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !30, line: 14, flags: DIFlagFwdDecl)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1891, file: !30, line: 51, baseType: !115, size: 32, offset: 64)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1891, file: !30, line: 52, baseType: !115, size: 32, offset: 96)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1891, file: !30, line: 53, baseType: !499, size: 64, offset: 128)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1891, file: !30, line: 54, baseType: !499, size: 64, offset: 192)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1359, file: !1360, line: 973, baseType: !1901, size: 32, offset: 10688)
!1901 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !333, line: 27, baseType: !1902)
!1902 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !483, line: 28, baseType: !115)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1359, file: !1360, line: 974, baseType: !1901, size: 32, offset: 10720)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1359, file: !1360, line: 978, baseType: !499, size: 64, offset: 10752)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1359, file: !1360, line: 987, baseType: !1358, size: 64, offset: 10816)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1359, file: !1360, line: 990, baseType: !1358, size: 64, offset: 10880)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1359, file: !1360, line: 995, baseType: !370, size: 128, offset: 10944)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1359, file: !1360, line: 996, baseType: !370, size: 128, offset: 11072)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1359, file: !1360, line: 997, baseType: !1358, size: 64, offset: 11200)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1359, file: !1360, line: 1005, baseType: !370, size: 128, offset: 11264)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1359, file: !1360, line: 1006, baseType: !370, size: 128, offset: 11392)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1359, file: !1360, line: 1009, baseType: !1315, size: 64, offset: 11520)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1359, file: !1360, line: 1010, baseType: !1914, size: 512, offset: 11584)
!1914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1036, size: 512, elements: !1020)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1359, file: !1360, line: 1011, baseType: !370, size: 128, offset: 12096)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1359, file: !1360, line: 1012, baseType: !370, size: 128, offset: 12224)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1359, file: !1360, line: 1014, baseType: !738, size: 64, offset: 12352)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1359, file: !1360, line: 1017, baseType: !919, size: 64, offset: 12416)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1359, file: !1360, line: 1020, baseType: !919, size: 64, offset: 12480)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1359, file: !1360, line: 1023, baseType: !334, size: 64, offset: 12544)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1359, file: !1360, line: 1025, baseType: !602, size: 64, offset: 12608)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1359, file: !1360, line: 1026, baseType: !602, size: 64, offset: 12672)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1359, file: !1360, line: 1031, baseType: !602, size: 64, offset: 12736)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1359, file: !1360, line: 1032, baseType: !1925, size: 192, offset: 12800)
!1925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1360, line: 324, size: 192, elements: !1926)
!1926 = !{!1927, !1928, !1929}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1925, file: !1360, line: 326, baseType: !602, size: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1925, file: !1360, line: 327, baseType: !602, size: 64, offset: 64)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1925, file: !1360, line: 328, baseType: !748, size: 32, offset: 128)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1359, file: !1360, line: 1041, baseType: !499, size: 64, offset: 12992)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1359, file: !1360, line: 1042, baseType: !499, size: 64, offset: 13056)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1359, file: !1360, line: 1045, baseType: !602, size: 64, offset: 13120)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1359, file: !1360, line: 1048, baseType: !602, size: 64, offset: 13184)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1359, file: !1360, line: 1051, baseType: !499, size: 64, offset: 13248)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1359, file: !1360, line: 1052, baseType: !499, size: 64, offset: 13312)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1359, file: !1360, line: 1055, baseType: !1937, size: 640, offset: 13376)
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1938, line: 132, size: 640, elements: !1939)
!1938 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1939 = !{!1940, !1946, !1947}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1937, file: !1938, line: 133, baseType: !1941, size: 576)
!1941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1942, size: 576, elements: !450)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1938, line: 117, size: 192, elements: !1943)
!1943 = !{!1944, !1945}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1942, file: !1938, line: 118, baseType: !602, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1942, file: !1938, line: 119, baseType: !1526, size: 128, offset: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1937, file: !1938, line: 134, baseType: !13, size: 32, offset: 576)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1937, file: !1938, line: 135, baseType: !13, size: 32, offset: 608)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1359, file: !1360, line: 1058, baseType: !1949, size: 448, offset: 14016)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1938, line: 144, size: 448, elements: !1950)
!1950 = !{!1951, !1952, !1953}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1949, file: !1938, line: 145, baseType: !1010, size: 128, align: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1949, file: !1938, line: 146, baseType: !790, size: 256, offset: 128)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1949, file: !1938, line: 147, baseType: !13, size: 32, offset: 384)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1359, file: !1360, line: 1064, baseType: !1955, size: 64, offset: 14464)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1957)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1958, line: 110, size: 1472, elements: !1959)
!1958 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1959 = !{!1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1976, !1977, !1978, !1979, !1980, !1981, !2091, !2092, !2093, !2094, !2095, !2118, !2119, !2123, !2131}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1957, file: !1958, line: 111, baseType: !794, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1957, file: !1958, line: 112, baseType: !535, size: 32, offset: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1957, file: !1958, line: 113, baseType: !544, size: 32, offset: 96)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1957, file: !1958, line: 114, baseType: !535, size: 32, offset: 128)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1957, file: !1958, line: 115, baseType: !544, size: 32, offset: 160)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1957, file: !1958, line: 116, baseType: !535, size: 32, offset: 192)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1957, file: !1958, line: 117, baseType: !544, size: 32, offset: 224)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1957, file: !1958, line: 118, baseType: !535, size: 32, offset: 256)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1957, file: !1958, line: 119, baseType: !544, size: 32, offset: 288)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1957, file: !1958, line: 120, baseType: !13, size: 32, offset: 320)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1957, file: !1958, line: 121, baseType: !1971, size: 64, offset: 384)
!1971 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1972, line: 24, baseType: !1973)
!1972 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1973 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1972, line: 24, size: 64, elements: !1974)
!1974 = !{!1975}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1973, file: !1972, line: 24, baseType: !602, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1957, file: !1958, line: 122, baseType: !1971, size: 64, offset: 448)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1957, file: !1958, line: 123, baseType: !1971, size: 64, offset: 512)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1957, file: !1958, line: 124, baseType: !1971, size: 64, offset: 576)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1957, file: !1958, line: 125, baseType: !1971, size: 64, offset: 640)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1957, file: !1958, line: 127, baseType: !411, size: 8, offset: 704)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1957, file: !1958, line: 129, baseType: !1982, size: 64, offset: 768)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1984, line: 195, size: 1728, elements: !1985)
!1984 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1985 = !{!1986, !1987, !1990, !1995, !1996, !1999, !2000, !2007, !2008, !2009, !2010, !2013, !2014, !2015, !2016, !2017, !2055, !2076}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1983, file: !1984, line: 196, baseType: !349, size: 32)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1983, file: !1984, line: 197, baseType: !1988, size: 32, offset: 32)
!1988 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1984, line: 28, baseType: !1989)
!1989 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !333, line: 104, baseType: !786)
!1990 = !DIDerivedType(tag: DW_TAG_member, scope: !1983, file: !1984, line: 198, baseType: !1991, size: 192, offset: 64)
!1991 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1983, file: !1984, line: 198, size: 192, elements: !1992)
!1992 = !{!1993, !1994}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1991, file: !1984, line: 199, baseType: !370, size: 128)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1991, file: !1984, line: 200, baseType: !902, size: 192, align: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1983, file: !1984, line: 205, baseType: !1701, size: 320, offset: 256)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1983, file: !1984, line: 206, baseType: !1997, size: 64, offset: 576)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1984, line: 206, flags: DIFlagFwdDecl)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1983, file: !1984, line: 207, baseType: !334, size: 64, offset: 640)
!2000 = !DIDerivedType(tag: DW_TAG_member, scope: !1983, file: !1984, line: 208, baseType: !2001, size: 64, offset: 704)
!2001 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1983, file: !1984, line: 208, size: 64, elements: !2002)
!2002 = !{!2003, !2006}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !2001, file: !1984, line: 209, baseType: !2004, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !2005, line: 8, baseType: !801)
!2005 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !2001, file: !1984, line: 210, baseType: !2004, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1983, file: !1984, line: 212, baseType: !2004, size: 64, offset: 768)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1983, file: !1984, line: 213, baseType: !535, size: 32, offset: 832)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1983, file: !1984, line: 214, baseType: !544, size: 32, offset: 864)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1983, file: !1984, line: 215, baseType: !2011, size: 32, offset: 896)
!2011 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1984, line: 31, baseType: !2012)
!2012 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !333, line: 110, baseType: !598)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1983, file: !1984, line: 216, baseType: !419, size: 16, offset: 928)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1983, file: !1984, line: 217, baseType: !419, size: 16, offset: 944)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1983, file: !1984, line: 221, baseType: !928, size: 16, offset: 960)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1983, file: !1984, line: 228, baseType: !499, size: 64, offset: 1024)
!2017 = !DIDerivedType(tag: DW_TAG_member, scope: !1983, file: !1984, line: 245, baseType: !2018, size: 320, offset: 1088)
!2018 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1983, file: !1984, line: 245, size: 320, elements: !2019)
!2019 = !{!2020, !2047}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !2018, file: !1984, line: 246, baseType: !2021, size: 320)
!2021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1984, line: 114, size: 320, elements: !2022)
!2022 = !{!2023, !2024, !2036, !2039, !2046}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2021, file: !1984, line: 116, baseType: !499, size: 64)
!2024 = !DIDerivedType(tag: DW_TAG_member, scope: !2021, file: !1984, line: 117, baseType: !2025, size: 64, offset: 64)
!2025 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2021, file: !1984, line: 117, size: 64, elements: !2026)
!2026 = !{!2027, !2035}
!2027 = !DIDerivedType(tag: DW_TAG_member, scope: !2025, file: !1984, line: 118, baseType: !2028, size: 64)
!2028 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2025, file: !1984, line: 118, size: 64, elements: !2029)
!2029 = !{!2030, !2031}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !2028, file: !1984, line: 120, baseType: !417, size: 16)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2028, file: !1984, line: 121, baseType: !2032, size: 48, offset: 16)
!2032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !2033)
!2033 = !{!2034}
!2034 = !DISubrange(count: 6)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !2025, file: !1984, line: 127, baseType: !499, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2021, file: !1984, line: 129, baseType: !2037, size: 64, offset: 128)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1984, line: 102, flags: DIFlagFwdDecl)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2021, file: !1984, line: 130, baseType: !2040, size: 64, offset: 192)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1984, line: 108, size: 192, elements: !2042)
!2042 = !{!2043, !2044, !2045}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2041, file: !1984, line: 109, baseType: !1010, size: 128, align: 64)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2041, file: !1984, line: 110, baseType: !349, size: 32, offset: 128)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !2041, file: !1984, line: 111, baseType: !870, size: 8, offset: 160)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2021, file: !1984, line: 131, baseType: !367, size: 64, offset: 256)
!2047 = !DIDerivedType(tag: DW_TAG_member, scope: !2018, file: !1984, line: 247, baseType: !2048, size: 320)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2018, file: !1984, line: 247, size: 320, elements: !2049)
!2049 = !{!2050, !2051, !2052, !2053, !2054}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2048, file: !1984, line: 248, baseType: !499, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !2048, file: !1984, line: 249, baseType: !499, size: 64, offset: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2048, file: !1984, line: 250, baseType: !2037, size: 64, offset: 128)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2048, file: !1984, line: 251, baseType: !2040, size: 64, offset: 192)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2048, file: !1984, line: 252, baseType: !449, size: 64, offset: 256)
!2055 = !DIDerivedType(tag: DW_TAG_member, scope: !1983, file: !1984, line: 260, baseType: !2056, size: 256, offset: 1408)
!2056 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1983, file: !1984, line: 260, size: 256, elements: !2057)
!2057 = !{!2058, !2064}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !2056, file: !1984, line: 261, baseType: !2059, size: 256)
!2059 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1984, line: 134, size: 256, elements: !2060)
!2060 = !{!2061, !2062}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !2059, file: !1984, line: 135, baseType: !334, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2059, file: !1984, line: 136, baseType: !2063, size: 256)
!2063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !334, size: 256, elements: !1020)
!2064 = !DIDerivedType(tag: DW_TAG_member, scope: !2056, file: !1984, line: 262, baseType: !2065, size: 256)
!2065 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2056, file: !1984, line: 262, size: 256, elements: !2066)
!2066 = !{!2067, !2068}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !2065, file: !1984, line: 264, baseType: !370, size: 128)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !2065, file: !1984, line: 265, baseType: !2069, size: 128, offset: 128)
!2069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !2070, line: 22, size: 128, elements: !2071)
!2070 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!2071 = !{!2072, !2075}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2069, file: !2070, line: 23, baseType: !2073, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !2070, line: 23, flags: DIFlagFwdDecl)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !2069, file: !2070, line: 24, baseType: !499, size: 64, offset: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1983, file: !1984, line: 280, baseType: !2077, size: 64, offset: 1664)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1984, line: 176, size: 192, elements: !2079)
!2079 = !{!2080, !2089, !2090}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !2078, file: !1984, line: 177, baseType: !2081, size: 64)
!2081 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1984, line: 171, baseType: !2082)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DISubroutineType(types: !2084)
!2084 = !{!115, !1982, !2085, !2087, !1982}
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2038)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2059)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2078, file: !1984, line: 178, baseType: !1982, size: 64, offset: 64)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !2078, file: !1984, line: 179, baseType: !2037, size: 64, offset: 128)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1957, file: !1958, line: 130, baseType: !1982, size: 64, offset: 832)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1957, file: !1958, line: 131, baseType: !1982, size: 64, offset: 896)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1957, file: !1958, line: 132, baseType: !1982, size: 64, offset: 960)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1957, file: !1958, line: 135, baseType: !334, size: 64, offset: 1024)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1957, file: !1958, line: 137, baseType: !2096, size: 64, offset: 1088)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2098, line: 14, size: 1088, elements: !2099)
!2098 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!2099 = !{!2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2097, file: !2098, line: 15, baseType: !349, size: 32)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2097, file: !2098, line: 17, baseType: !1739, size: 320, offset: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2097, file: !2098, line: 19, baseType: !499, size: 64, offset: 384)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2097, file: !2098, line: 20, baseType: !794, size: 64, offset: 448)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2097, file: !2098, line: 23, baseType: !1036, size: 128, offset: 512)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2097, file: !2098, line: 24, baseType: !535, size: 32, offset: 640)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2097, file: !2098, line: 29, baseType: !794, size: 64, offset: 704)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2097, file: !2098, line: 36, baseType: !2108, size: 320, offset: 768)
!2108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2109, line: 15, size: 320, elements: !2110)
!2109 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!2110 = !{!2111, !2112, !2113, !2114, !2115, !2116, !2117}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2108, file: !2109, line: 16, baseType: !748, size: 32)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2108, file: !2109, line: 18, baseType: !115, size: 32, offset: 32)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2108, file: !2109, line: 19, baseType: !115, size: 32, offset: 64)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2108, file: !2109, line: 20, baseType: !115, size: 32, offset: 96)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2108, file: !2109, line: 21, baseType: !115, size: 32, offset: 128)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2108, file: !2109, line: 22, baseType: !499, size: 64, offset: 192)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2108, file: !2109, line: 23, baseType: !499, size: 64, offset: 256)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1957, file: !1958, line: 138, baseType: !1801, size: 64, offset: 1152)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1957, file: !1958, line: 139, baseType: !2120, size: 64, offset: 1216)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !2122, line: 16, flags: DIFlagFwdDecl)
!2122 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1957, file: !1958, line: 140, baseType: !2124, size: 64, offset: 1280)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1958, line: 25, size: 64, elements: !2126)
!2126 = !{!2127, !2128, !2129}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2125, file: !1958, line: 26, baseType: !354, size: 32)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2125, file: !1958, line: 27, baseType: !115, size: 32, offset: 32)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2125, file: !1958, line: 28, baseType: !2130, offset: 64)
!2130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !544, elements: !1819)
!2131 = !DIDerivedType(tag: DW_TAG_member, scope: !1957, file: !1958, line: 142, baseType: !2132, size: 128, offset: 1344)
!2132 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1957, file: !1958, line: 142, size: 128, elements: !2133)
!2133 = !{!2134, !2135}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2132, file: !1958, line: 143, baseType: !115, size: 32)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2132, file: !1958, line: 144, baseType: !1010, size: 128, align: 64)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1359, file: !1360, line: 1067, baseType: !1955, size: 64, offset: 14528)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1359, file: !1360, line: 1070, baseType: !1955, size: 64, offset: 14592)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1359, file: !1360, line: 1074, baseType: !1982, size: 64, offset: 14656)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1359, file: !1360, line: 1084, baseType: !2140, size: 128, offset: 14720)
!2140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !2141)
!2141 = !{!2142}
!2142 = !DISubrange(count: 16)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1359, file: !1360, line: 1086, baseType: !2144, size: 64, offset: 14848)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1360, line: 55, flags: DIFlagFwdDecl)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1359, file: !1360, line: 1089, baseType: !2147, size: 64, offset: 14912)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2148, line: 12, size: 64, elements: !2149)
!2148 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2149 = !{!2150}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2147, file: !2148, line: 13, baseType: !2151, size: 64)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2148, line: 8, flags: DIFlagFwdDecl)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1359, file: !1360, line: 1090, baseType: !2154, size: 128, offset: 14976)
!2154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2155, line: 13, size: 128, elements: !2156)
!2155 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2156 = !{!2157}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2154, file: !2155, line: 14, baseType: !370, size: 128)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1359, file: !1360, line: 1097, baseType: !2159, size: 64, offset: 15104)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1360, line: 50, flags: DIFlagFwdDecl)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1359, file: !1360, line: 1100, baseType: !2162, size: 64, offset: 15168)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1360, line: 1100, flags: DIFlagFwdDecl)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1359, file: !1360, line: 1103, baseType: !2165, size: 64, offset: 15232)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1360, line: 53, flags: DIFlagFwdDecl)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1359, file: !1360, line: 1107, baseType: !2168, size: 64, offset: 15296)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2170, line: 31, size: 576, elements: !2171)
!2170 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!2171 = !{!2172, !2173, !2176, !2179, !2182, !2183, !2186, !2189, !2190}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2169, file: !2170, line: 32, baseType: !349, size: 32)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !2169, file: !2170, line: 33, baseType: !2174, size: 64, offset: 64)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !2170, line: 9, flags: DIFlagFwdDecl)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !2169, file: !2170, line: 34, baseType: !2177, size: 64, offset: 128)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !2170, line: 10, flags: DIFlagFwdDecl)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !2169, file: !2170, line: 35, baseType: !2180, size: 64, offset: 192)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !2170, line: 8, flags: DIFlagFwdDecl)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !2169, file: !2170, line: 36, baseType: !1338, size: 64, offset: 256)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !2169, file: !2170, line: 37, baseType: !2184, size: 64, offset: 320)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1984, line: 34, flags: DIFlagFwdDecl)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !2169, file: !2170, line: 38, baseType: !2187, size: 64, offset: 384)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !2170, line: 38, flags: DIFlagFwdDecl)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !2169, file: !2170, line: 39, baseType: !2187, size: 64, offset: 448)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !2169, file: !2170, line: 40, baseType: !2191, size: 64, offset: 512)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !2170, line: 12, flags: DIFlagFwdDecl)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1359, file: !1360, line: 1110, baseType: !2194, size: 64, offset: 15360)
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2196, line: 93, size: 8768, elements: !2197)
!2196 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2197 = !{!2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2245, !2254, !2255, !2257, !2258, !2259, !2262, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2300, !2301, !2308, !2318, !2321, !2322, !2325, !2326, !2327, !2328, !2329, !2330}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2195, file: !2196, line: 94, baseType: !349, size: 32)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2195, file: !2196, line: 95, baseType: !354, size: 32, offset: 32)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2195, file: !2196, line: 96, baseType: !115, size: 32, offset: 64)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2195, file: !2196, line: 97, baseType: !115, size: 32, offset: 96)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2195, file: !2196, line: 98, baseType: !370, size: 128, offset: 128)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2195, file: !2196, line: 100, baseType: !1325, size: 192, offset: 256)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2195, file: !2196, line: 103, baseType: !1358, size: 64, offset: 448)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2195, file: !2196, line: 106, baseType: !2206, size: 192, offset: 512)
!2206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2122, line: 32, size: 192, elements: !2207)
!2207 = !{!2208, !2209}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2206, file: !2122, line: 33, baseType: !370, size: 128)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2206, file: !2122, line: 34, baseType: !2210, size: 64, offset: 128)
!2210 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2211, line: 25, baseType: !2212)
!2211 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2212 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2211, line: 23, size: 64, elements: !2213)
!2213 = !{!2214}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2212, file: !2211, line: 24, baseType: !1597, size: 64)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2195, file: !2196, line: 109, baseType: !1160, size: 64, offset: 704)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2195, file: !2196, line: 112, baseType: !115, size: 32, offset: 768)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2195, file: !2196, line: 114, baseType: !115, size: 32, offset: 800)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2195, file: !2196, line: 115, baseType: !1358, size: 64, offset: 832)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2195, file: !2196, line: 118, baseType: !115, size: 32, offset: 896)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2195, file: !2196, line: 119, baseType: !13, size: 32, offset: 928)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2195, file: !2196, line: 121, baseType: !2222, size: 64, offset: 960)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2196, line: 80, size: 448, elements: !2224)
!2224 = !{!2225, !2226, !2232}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2223, file: !2196, line: 81, baseType: !354, size: 32)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2223, file: !2196, line: 82, baseType: !2227, size: 128, offset: 64)
!2227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2196, line: 75, size: 128, elements: !2228)
!2228 = !{!2229, !2230}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2227, file: !2196, line: 76, baseType: !1358, size: 64)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2227, file: !2196, line: 77, baseType: !2231, size: 64, offset: 64)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2223, file: !2196, line: 83, baseType: !739, size: 256, offset: 192)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2195, file: !2196, line: 132, baseType: !13, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2195, file: !2196, line: 133, baseType: !13, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2195, file: !2196, line: 138, baseType: !13, size: 32, offset: 1056)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2195, file: !2196, line: 139, baseType: !370, size: 128, offset: 1088)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2195, file: !2196, line: 142, baseType: !1470, size: 512, offset: 1216)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2195, file: !2196, line: 143, baseType: !1478, size: 64, offset: 1728)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2195, file: !2196, line: 150, baseType: !2240, size: 256, offset: 1792)
!2240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2241, size: 256, elements: !909)
!2241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2196, line: 38, size: 128, elements: !2242)
!2242 = !{!2243, !2244}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2241, file: !2196, line: 39, baseType: !602, size: 64)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2241, file: !2196, line: 40, baseType: !602, size: 64, offset: 64)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2195, file: !2196, line: 156, baseType: !2246, size: 192, offset: 2048)
!2246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2196, line: 66, size: 192, elements: !2247)
!2247 = !{!2248}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2246, file: !2196, line: 67, baseType: !2249, size: 192)
!2249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2196, line: 47, size: 192, elements: !2250)
!2250 = !{!2251, !2252, !2253}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2249, file: !2196, line: 48, baseType: !796, size: 64)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2249, file: !2196, line: 49, baseType: !796, size: 64, offset: 64)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2249, file: !2196, line: 50, baseType: !796, size: 64, offset: 128)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2195, file: !2196, line: 160, baseType: !1937, size: 640, offset: 2240)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2195, file: !2196, line: 163, baseType: !2256, size: 256, offset: 2880)
!2256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1315, size: 256, elements: !1020)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2195, file: !2196, line: 169, baseType: !1315, size: 64, offset: 3136)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2195, file: !2196, line: 172, baseType: !115, size: 32, offset: 3200)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2195, file: !2196, line: 174, baseType: !2260, size: 64, offset: 3264)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2261 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2196, line: 174, flags: DIFlagFwdDecl)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2195, file: !2196, line: 185, baseType: !2263, size: 64, offset: 3328)
!2263 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !571, line: 860, baseType: !2264)
!2264 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !571, line: 853, size: 64, elements: !2265)
!2265 = !{!2266, !2267}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2264, file: !571, line: 858, baseType: !570, size: 32)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2264, file: !571, line: 859, baseType: !383, size: 32, offset: 32)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2195, file: !2196, line: 186, baseType: !602, size: 64, offset: 3392)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2195, file: !2196, line: 186, baseType: !602, size: 64, offset: 3456)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2195, file: !2196, line: 186, baseType: !602, size: 64, offset: 3520)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2195, file: !2196, line: 186, baseType: !602, size: 64, offset: 3584)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2195, file: !2196, line: 187, baseType: !602, size: 64, offset: 3648)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2195, file: !2196, line: 188, baseType: !602, size: 64, offset: 3712)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2195, file: !2196, line: 189, baseType: !1925, size: 192, offset: 3776)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2195, file: !2196, line: 190, baseType: !499, size: 64, offset: 3968)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2195, file: !2196, line: 190, baseType: !499, size: 64, offset: 4032)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2195, file: !2196, line: 190, baseType: !499, size: 64, offset: 4096)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2195, file: !2196, line: 190, baseType: !499, size: 64, offset: 4160)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2195, file: !2196, line: 191, baseType: !499, size: 64, offset: 4224)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2195, file: !2196, line: 191, baseType: !499, size: 64, offset: 4288)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2195, file: !2196, line: 191, baseType: !499, size: 64, offset: 4352)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2195, file: !2196, line: 191, baseType: !499, size: 64, offset: 4416)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2195, file: !2196, line: 192, baseType: !499, size: 64, offset: 4480)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2195, file: !2196, line: 192, baseType: !499, size: 64, offset: 4544)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2195, file: !2196, line: 192, baseType: !499, size: 64, offset: 4608)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2195, file: !2196, line: 192, baseType: !499, size: 64, offset: 4672)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2195, file: !2196, line: 193, baseType: !499, size: 64, offset: 4736)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2195, file: !2196, line: 193, baseType: !499, size: 64, offset: 4800)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2195, file: !2196, line: 194, baseType: !2290, size: 448, offset: 4864)
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2291, line: 12, size: 448, elements: !2292)
!2291 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2292 = !{!2293, !2294, !2295, !2296, !2297, !2298, !2299}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2290, file: !2291, line: 15, baseType: !602, size: 64)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2290, file: !2291, line: 17, baseType: !602, size: 64, offset: 64)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2290, file: !2291, line: 19, baseType: !602, size: 64, offset: 128)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2290, file: !2291, line: 21, baseType: !602, size: 64, offset: 192)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2290, file: !2291, line: 29, baseType: !602, size: 64, offset: 256)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2290, file: !2291, line: 35, baseType: !602, size: 64, offset: 320)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2290, file: !2291, line: 44, baseType: !602, size: 64, offset: 384)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2195, file: !2196, line: 202, baseType: !604, size: 64, offset: 5312)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2195, file: !2196, line: 213, baseType: !2302, size: 2048, offset: 5376)
!2302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2303, size: 2048, elements: !2141)
!2303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2304, line: 43, size: 128, elements: !2305)
!2304 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2305 = !{!2306, !2307}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2303, file: !2304, line: 44, baseType: !498, size: 64)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2303, file: !2304, line: 45, baseType: !498, size: 64, offset: 64)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2195, file: !2196, line: 216, baseType: !2309, size: 448, offset: 7424)
!2309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2196, line: 30, size: 448, elements: !2310)
!2310 = !{!2311, !2312, !2313, !2314, !2315, !2316, !2317}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2309, file: !2196, line: 31, baseType: !115, size: 32)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2309, file: !2196, line: 32, baseType: !485, size: 64, offset: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2309, file: !2196, line: 33, baseType: !499, size: 64, offset: 128)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2309, file: !2196, line: 34, baseType: !602, size: 64, offset: 192)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2309, file: !2196, line: 34, baseType: !602, size: 64, offset: 256)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2309, file: !2196, line: 35, baseType: !499, size: 64, offset: 320)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2309, file: !2196, line: 35, baseType: !499, size: 64, offset: 384)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2195, file: !2196, line: 219, baseType: !2319, size: 64, offset: 7872)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2196, line: 219, flags: DIFlagFwdDecl)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2195, file: !2196, line: 222, baseType: !13, size: 32, offset: 7936)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2195, file: !2196, line: 223, baseType: !2323, size: 64, offset: 8000)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2196, line: 223, flags: DIFlagFwdDecl)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2195, file: !2196, line: 230, baseType: !870, size: 8, offset: 8064)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2195, file: !2196, line: 231, baseType: !928, size: 16, offset: 8080)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2195, file: !2196, line: 232, baseType: !928, size: 16, offset: 8096)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2195, file: !2196, line: 234, baseType: !1646, size: 64, offset: 8128)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2195, file: !2196, line: 237, baseType: !790, size: 256, offset: 8192)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2195, file: !2196, line: 243, baseType: !1701, size: 320, offset: 8448)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1359, file: !1360, line: 1111, baseType: !2332, size: 64, offset: 15424)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2196, line: 20, size: 16640, elements: !2334)
!2334 = !{!2335, !2336, !2337, !2338}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2333, file: !2196, line: 21, baseType: !383, size: 32)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2333, file: !2196, line: 22, baseType: !349, size: 32, offset: 32)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2333, file: !2196, line: 23, baseType: !1325, size: 192, offset: 64)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2333, file: !2196, line: 24, baseType: !2339, size: 16384, offset: 256)
!2339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2340, size: 16384, elements: !454)
!2340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2122, line: 51, size: 256, elements: !2341)
!2341 = !{!2342}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2340, file: !2122, line: 52, baseType: !2343, size: 256)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2122, line: 37, size: 256, elements: !2344)
!2344 = !{!2345, !2352, !2353, !2357}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2343, file: !2122, line: 39, baseType: !2346, size: 64)
!2346 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2347, line: 83, baseType: !2348)
!2347 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2347, line: 82, baseType: !2350)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{null, !115}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2343, file: !2122, line: 40, baseType: !499, size: 64, offset: 64)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2343, file: !2122, line: 46, baseType: !2354, size: 64, offset: 128)
!2354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2347, line: 86, baseType: !2355)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2347, line: 85, baseType: !1155)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2343, file: !2122, line: 48, baseType: !2210, size: 64, offset: 192)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1359, file: !1360, line: 1112, baseType: !2210, size: 64, offset: 15488)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1359, file: !1360, line: 1113, baseType: !2210, size: 64, offset: 15552)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1359, file: !1360, line: 1115, baseType: !2210, size: 64, offset: 15616)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1359, file: !1360, line: 1116, baseType: !2206, size: 192, offset: 15680)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1359, file: !1360, line: 1117, baseType: !499, size: 64, offset: 15872)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1359, file: !1360, line: 1118, baseType: !496, size: 64, offset: 15936)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1359, file: !1360, line: 1119, baseType: !13, size: 32, offset: 16000)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1359, file: !1360, line: 1121, baseType: !1009, size: 64, offset: 16064)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1359, file: !1360, line: 1125, baseType: !2367, size: 64, offset: 16128)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1360, line: 43, flags: DIFlagFwdDecl)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1359, file: !1360, line: 1127, baseType: !535, size: 32, offset: 16192)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1359, file: !1360, line: 1128, baseType: !13, size: 32, offset: 16224)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1359, file: !1360, line: 1130, baseType: !2372, size: 128, offset: 16256)
!2372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2373, line: 37, size: 128, elements: !2374)
!2373 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2374 = !{!2375, !2376, !2377}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2372, file: !2373, line: 38, baseType: !115, size: 32)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2372, file: !2373, line: 39, baseType: !354, size: 32, offset: 32)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2372, file: !2373, line: 40, baseType: !2378, size: 64, offset: 64)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2373, line: 24, flags: DIFlagFwdDecl)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1359, file: !1360, line: 1131, baseType: !2381, size: 256, offset: 16384)
!2381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2382, line: 12, size: 256, elements: !2383)
!2382 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2383 = !{!2384, !2385, !2386, !2387}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2381, file: !2382, line: 13, baseType: !449, size: 64)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2381, file: !2382, line: 14, baseType: !499, size: 64, offset: 64)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2381, file: !2382, line: 15, baseType: !499, size: 64, offset: 128)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2381, file: !2382, line: 16, baseType: !870, size: 8, offset: 192)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1359, file: !1360, line: 1134, baseType: !602, size: 64, offset: 16640)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1359, file: !1360, line: 1135, baseType: !602, size: 64, offset: 16704)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1359, file: !1360, line: 1138, baseType: !383, size: 32, offset: 16768)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1359, file: !1360, line: 1141, baseType: !748, size: 32, offset: 16800)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1359, file: !1360, line: 1143, baseType: !2393, size: 64, offset: 16832)
!2393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1360, line: 735, size: 64, elements: !2394)
!2394 = !{!2395}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2393, file: !1360, line: 736, baseType: !2396, size: 64)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1359, file: !1360, line: 1147, baseType: !1529, size: 128, offset: 16896)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1359, file: !1360, line: 1149, baseType: !1358, size: 64, offset: 17024)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1359, file: !1360, line: 1151, baseType: !2400, size: 64, offset: 17088)
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2401 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !2402, line: 64, flags: DIFlagFwdDecl)
!2402 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c3b60a10bef9e89c790a516317bab43b")
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1359, file: !1360, line: 1188, baseType: !334, size: 64, offset: 17152)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1359, file: !1360, line: 1191, baseType: !2405, size: 64, offset: 17216)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1360, line: 44, flags: DIFlagFwdDecl)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1359, file: !1360, line: 1194, baseType: !2408, size: 64, offset: 17280)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1360, line: 45, flags: DIFlagFwdDecl)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1359, file: !1360, line: 1197, baseType: !2411, size: 64, offset: 17344)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1360, line: 61, flags: DIFlagFwdDecl)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1359, file: !1360, line: 1199, baseType: !2414, size: 64, offset: 17408)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2416, line: 99, size: 128, elements: !2417)
!2416 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2417 = !{!2418, !2419, !2420}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2415, file: !2416, line: 100, baseType: !794, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2415, file: !2416, line: 101, baseType: !354, size: 32, offset: 64)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2415, file: !2416, line: 103, baseType: !419, size: 16, offset: 96)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1359, file: !1360, line: 1202, baseType: !2422, size: 64, offset: 17472)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1360, line: 48, flags: DIFlagFwdDecl)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1359, file: !1360, line: 1205, baseType: !499, size: 64, offset: 17536)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1359, file: !1360, line: 1206, baseType: !2426, size: 64, offset: 17600)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2122, line: 14, baseType: !2428)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2122, line: 12, size: 384, elements: !2429)
!2429 = !{!2430}
!2430 = !DIDerivedType(tag: DW_TAG_member, scope: !2428, file: !2122, line: 13, baseType: !2431, size: 384)
!2431 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2428, file: !2122, line: 13, size: 384, elements: !2432)
!2432 = !{!2433, !2434, !2435, !2436}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2431, file: !2122, line: 13, baseType: !115, size: 32)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2431, file: !2122, line: 13, baseType: !115, size: 32, offset: 32)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2431, file: !2122, line: 13, baseType: !115, size: 32, offset: 64)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2431, file: !2122, line: 13, baseType: !2437, size: 256, offset: 128)
!2437 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2438, line: 37, size: 256, elements: !2439)
!2438 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2439 = !{!2440, !2445, !2458, !2464, !2473, !2500, !2505}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2437, file: !2438, line: 42, baseType: !2441, size: 64)
!2441 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2437, file: !2438, line: 39, size: 64, elements: !2442)
!2442 = !{!2443, !2444}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2441, file: !2438, line: 40, baseType: !1902, size: 32)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2441, file: !2438, line: 41, baseType: !541, size: 32, offset: 32)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2437, file: !2438, line: 50, baseType: !2446, size: 192)
!2446 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2437, file: !2438, line: 45, size: 192, elements: !2447)
!2447 = !{!2448, !2450, !2451, !2457}
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2446, file: !2438, line: 46, baseType: !2449, size: 32)
!2449 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !483, line: 95, baseType: !115)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2446, file: !2438, line: 47, baseType: !115, size: 32, offset: 32)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2446, file: !2438, line: 48, baseType: !2452, size: 64, offset: 64)
!2452 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2438, line: 11, baseType: !2453)
!2453 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2438, line: 8, size: 64, elements: !2454)
!2454 = !{!2455, !2456}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2453, file: !2438, line: 9, baseType: !115, size: 32)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2453, file: !2438, line: 10, baseType: !334, size: 64)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2446, file: !2438, line: 49, baseType: !115, size: 32, offset: 128)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2437, file: !2438, line: 57, baseType: !2459, size: 128)
!2459 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2437, file: !2438, line: 53, size: 128, elements: !2460)
!2460 = !{!2461, !2462, !2463}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2459, file: !2438, line: 54, baseType: !1902, size: 32)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2459, file: !2438, line: 55, baseType: !541, size: 32, offset: 32)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2459, file: !2438, line: 56, baseType: !2452, size: 64, offset: 64)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2437, file: !2438, line: 66, baseType: !2465, size: 256)
!2465 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2437, file: !2438, line: 60, size: 256, elements: !2466)
!2466 = !{!2467, !2468, !2469, !2470, !2472}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2465, file: !2438, line: 61, baseType: !1902, size: 32)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2465, file: !2438, line: 62, baseType: !541, size: 32, offset: 32)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2465, file: !2438, line: 63, baseType: !115, size: 32, offset: 64)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2465, file: !2438, line: 64, baseType: !2471, size: 64, offset: 128)
!2471 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !483, line: 94, baseType: !484)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2465, file: !2438, line: 65, baseType: !2471, size: 64, offset: 192)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2437, file: !2438, line: 105, baseType: !2474, size: 256)
!2474 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2437, file: !2438, line: 69, size: 256, elements: !2475)
!2475 = !{!2476, !2477}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2474, file: !2438, line: 70, baseType: !334, size: 64)
!2477 = !DIDerivedType(tag: DW_TAG_member, scope: !2474, file: !2438, line: 79, baseType: !2478, size: 192, offset: 64)
!2478 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2474, file: !2438, line: 79, size: 192, elements: !2479)
!2479 = !{!2480, !2481, !2482, !2489, !2494}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2478, file: !2438, line: 81, baseType: !115, size: 32)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2478, file: !2438, line: 86, baseType: !928, size: 16)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2478, file: !2438, line: 92, baseType: !2483, size: 192)
!2483 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2478, file: !2438, line: 88, size: 192, elements: !2484)
!2484 = !{!2485, !2487, !2488}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2483, file: !2438, line: 89, baseType: !2486, size: 64)
!2486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !1513)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2483, file: !2438, line: 90, baseType: !334, size: 64, offset: 64)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2483, file: !2438, line: 91, baseType: !334, size: 64, offset: 128)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2478, file: !2438, line: 97, baseType: !2490, size: 96)
!2490 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2478, file: !2438, line: 94, size: 96, elements: !2491)
!2491 = !{!2492, !2493}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2490, file: !2438, line: 95, baseType: !2486, size: 64)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2490, file: !2438, line: 96, baseType: !599, size: 32, offset: 64)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2478, file: !2438, line: 103, baseType: !2495, size: 128)
!2495 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2478, file: !2438, line: 99, size: 128, elements: !2496)
!2496 = !{!2497, !2498, !2499}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2495, file: !2438, line: 100, baseType: !499, size: 64)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2495, file: !2438, line: 101, baseType: !599, size: 32, offset: 64)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2495, file: !2438, line: 102, baseType: !599, size: 32, offset: 96)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2437, file: !2438, line: 111, baseType: !2501, size: 128)
!2501 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2437, file: !2438, line: 108, size: 128, elements: !2502)
!2502 = !{!2503, !2504}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2501, file: !2438, line: 109, baseType: !485, size: 64)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2501, file: !2438, line: 110, baseType: !115, size: 32, offset: 64)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2437, file: !2438, line: 118, baseType: !2506, size: 128)
!2506 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2437, file: !2438, line: 114, size: 128, elements: !2507)
!2507 = !{!2508, !2509, !2510}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2506, file: !2438, line: 115, baseType: !334, size: 64)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2506, file: !2438, line: 116, baseType: !115, size: 32, offset: 64)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2506, file: !2438, line: 117, baseType: !13, size: 32, offset: 96)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1359, file: !1360, line: 1208, baseType: !2290, size: 448, offset: 17664)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1359, file: !1360, line: 1215, baseType: !602, size: 64, offset: 18112)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1359, file: !1360, line: 1217, baseType: !602, size: 64, offset: 18176)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1359, file: !1360, line: 1219, baseType: !602, size: 64, offset: 18240)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1359, file: !1360, line: 1223, baseType: !2516, size: 64, offset: 18304)
!2516 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2517, line: 99, baseType: !2518)
!2517 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2518 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2517, line: 99, size: 64, elements: !2519)
!2519 = !{!2520}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2518, file: !2517, line: 99, baseType: !1597, size: 64)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1359, file: !1360, line: 1225, baseType: !570, size: 32, offset: 18368)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1359, file: !1360, line: 1226, baseType: !115, size: 32, offset: 18400)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1359, file: !1360, line: 1227, baseType: !115, size: 32, offset: 18432)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1359, file: !1360, line: 1231, baseType: !2525, size: 64, offset: 18496)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1360, line: 1231, flags: DIFlagFwdDecl)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1359, file: !1360, line: 1233, baseType: !370, size: 128, offset: 18560)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1359, file: !1360, line: 1240, baseType: !2529, size: 64, offset: 18688)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1360, line: 62, flags: DIFlagFwdDecl)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1359, file: !1360, line: 1242, baseType: !2532, size: 64, offset: 18752)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1360, line: 1242, flags: DIFlagFwdDecl)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1359, file: !1360, line: 1244, baseType: !370, size: 128, offset: 18816)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1359, file: !1360, line: 1245, baseType: !2536, size: 64, offset: 18944)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1360, line: 51, flags: DIFlagFwdDecl)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1359, file: !1360, line: 1246, baseType: !790, size: 256, offset: 19008)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1359, file: !1360, line: 1247, baseType: !13, size: 32, offset: 19264)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1359, file: !1360, line: 1250, baseType: !2541, size: 64, offset: 19328)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1360, line: 57, flags: DIFlagFwdDecl)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1359, file: !1360, line: 1251, baseType: !790, size: 256, offset: 19392)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1359, file: !1360, line: 1252, baseType: !370, size: 128, offset: 19648)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1359, file: !1360, line: 1259, baseType: !2546, size: 64, offset: 19776)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !44, line: 717, flags: DIFlagFwdDecl)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1359, file: !1360, line: 1260, baseType: !928, size: 16, offset: 19840)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1359, file: !1360, line: 1261, baseType: !928, size: 16, offset: 19856)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1359, file: !1360, line: 1314, baseType: !2551, size: 64, offset: 19904)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2553, line: 62, size: 256, align: 256, elements: !2554)
!2553 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2554 = !{!2555, !2556, !2557, !2558, !2559, !2560, !2561}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2552, file: !2553, line: 75, baseType: !599, size: 32)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2552, file: !2553, line: 90, baseType: !599, size: 32, offset: 32)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2552, file: !2553, line: 112, baseType: !603, size: 64, offset: 64)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2552, file: !2553, line: 132, baseType: !599, size: 32, offset: 128)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2552, file: !2553, line: 140, baseType: !599, size: 32, offset: 160)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2552, file: !2553, line: 149, baseType: !599, size: 32, offset: 192)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2552, file: !2553, line: 154, baseType: !2562, offset: 224)
!2562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !1819)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1359, file: !1360, line: 1315, baseType: !598, size: 32, offset: 19968)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1359, file: !1360, line: 1316, baseType: !598, size: 32, offset: 20000)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1359, file: !1360, line: 1321, baseType: !499, size: 64, offset: 20032)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1359, file: !1360, line: 1325, baseType: !115, size: 32, offset: 20096)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1359, file: !1360, line: 1326, baseType: !115, size: 32, offset: 20128)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1359, file: !1360, line: 1327, baseType: !115, size: 32, offset: 20160)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1359, file: !1360, line: 1328, baseType: !115, size: 32, offset: 20192)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1359, file: !1360, line: 1329, baseType: !1010, size: 128, align: 64, offset: 20224)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1359, file: !1360, line: 1332, baseType: !2572, size: 128, offset: 20352)
!2572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2573, line: 51, size: 128, elements: !2574)
!2573 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2574 = !{!2575, !2580, !2581}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2572, file: !2573, line: 60, baseType: !2576, size: 64)
!2576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2577, line: 7, size: 64, elements: !2578)
!2577 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2578 = !{!2579}
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2576, file: !2577, line: 12, baseType: !1594, size: 64)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2572, file: !2573, line: 63, baseType: !870, size: 8, offset: 64)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2572, file: !2573, line: 70, baseType: !870, size: 8, offset: 72)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1359, file: !1360, line: 1335, baseType: !2583, size: 64, offset: 20480)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1360, line: 59, flags: DIFlagFwdDecl)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1359, file: !1360, line: 1337, baseType: !2586, size: 128, offset: 20544)
!2586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2573, line: 39, size: 128, elements: !2587)
!2587 = !{!2588, !2872, !2873}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2586, file: !2573, line: 40, baseType: !2589, size: 64)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !44, line: 74, size: 512, align: 128, elements: !2591)
!2591 = !{!2592, !2593, !2866, !2871}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2590, file: !44, line: 75, baseType: !499, size: 64)
!2593 = !DIDerivedType(tag: DW_TAG_member, scope: !2590, file: !44, line: 83, baseType: !2594, size: 320, offset: 64)
!2594 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2590, file: !44, line: 83, size: 320, elements: !2595)
!2595 = !{!2596, !2617, !2631, !2635, !2865}
!2596 = !DIDerivedType(tag: DW_TAG_member, scope: !2594, file: !44, line: 84, baseType: !2597, size: 320)
!2597 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2594, file: !44, line: 84, size: 320, elements: !2598)
!2598 = !{!2599, !2610, !2611, !2616}
!2599 = !DIDerivedType(tag: DW_TAG_member, scope: !2597, file: !44, line: 90, baseType: !2600, size: 128)
!2600 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2597, file: !44, line: 90, size: 128, elements: !2601)
!2601 = !{!2602, !2603, !2608, !2609}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2600, file: !44, line: 91, baseType: !370, size: 128)
!2603 = !DIDerivedType(tag: DW_TAG_member, scope: !2600, file: !44, line: 94, baseType: !2604, size: 128)
!2604 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2600, file: !44, line: 94, size: 128, elements: !2605)
!2605 = !{!2606, !2607}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2604, file: !44, line: 96, baseType: !334, size: 64)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2604, file: !44, line: 98, baseType: !13, size: 32, offset: 64)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2600, file: !44, line: 102, baseType: !370, size: 128)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2600, file: !44, line: 103, baseType: !370, size: 128)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2597, file: !44, line: 106, baseType: !525, size: 64, offset: 128)
!2611 = !DIDerivedType(tag: DW_TAG_member, scope: !2597, file: !44, line: 107, baseType: !2612, size: 64, offset: 192)
!2612 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2597, file: !44, line: 107, size: 64, elements: !2613)
!2613 = !{!2614, !2615}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2612, file: !44, line: 108, baseType: !499, size: 64)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2612, file: !44, line: 109, baseType: !499, size: 64)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2597, file: !44, line: 117, baseType: !499, size: 64, offset: 256)
!2617 = !DIDerivedType(tag: DW_TAG_member, scope: !2594, file: !44, line: 119, baseType: !2618, size: 320)
!2618 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2594, file: !44, line: 119, size: 320, elements: !2619)
!2619 = !{!2620, !2621, !2624, !2625, !2626}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2618, file: !44, line: 124, baseType: !499, size: 64)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2618, file: !44, line: 125, baseType: !2622, size: 64, offset: 64)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !44, line: 125, flags: DIFlagFwdDecl)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2618, file: !44, line: 126, baseType: !499, size: 64, offset: 128)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2618, file: !44, line: 127, baseType: !499, size: 64, offset: 192)
!2626 = !DIDerivedType(tag: DW_TAG_member, scope: !2618, file: !44, line: 128, baseType: !2627, size: 64, offset: 256)
!2627 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2618, file: !44, line: 128, size: 64, elements: !2628)
!2628 = !{!2629, !2630}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2627, file: !44, line: 133, baseType: !499, size: 64)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2627, file: !44, line: 138, baseType: !794, size: 64)
!2631 = !DIDerivedType(tag: DW_TAG_member, scope: !2594, file: !44, line: 141, baseType: !2632, size: 64)
!2632 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2594, file: !44, line: 141, size: 64, elements: !2633)
!2633 = !{!2634}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2632, file: !44, line: 142, baseType: !499, size: 64)
!2635 = !DIDerivedType(tag: DW_TAG_member, scope: !2594, file: !44, line: 144, baseType: !2636, size: 128)
!2636 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2594, file: !44, line: 144, size: 128, elements: !2637)
!2637 = !{!2638, !2864}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2636, file: !44, line: 146, baseType: !2639, size: 64)
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !36, line: 126, size: 1216, elements: !2641)
!2641 = !{!2642, !2652, !2673, !2674, !2675, !2676, !2677, !2846, !2847, !2848}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2640, file: !36, line: 127, baseType: !2643, size: 384)
!2643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !36, line: 21, size: 384, elements: !2644)
!2644 = !{!2645, !2646, !2648, !2649, !2650, !2651}
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2643, file: !36, line: 22, baseType: !499, size: 64)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2643, file: !36, line: 23, baseType: !2647, size: 64, offset: 64)
!2647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !499)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2643, file: !36, line: 24, baseType: !2647, size: 64, offset: 128)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2643, file: !36, line: 25, baseType: !499, size: 64, offset: 192)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2643, file: !36, line: 26, baseType: !499, size: 64, offset: 256)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2643, file: !36, line: 27, baseType: !499, size: 64, offset: 320)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2640, file: !36, line: 128, baseType: !2653, size: 128, offset: 384)
!2653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2654, line: 105, size: 128, elements: !2655)
!2654 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2655 = !{!2656, !2657}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2653, file: !2654, line: 110, baseType: !499, size: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2653, file: !2654, line: 118, baseType: !2658, size: 64, offset: 64)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2654, line: 95, size: 448, elements: !2660)
!2660 = !{!2661, !2662, !2668, !2669, !2670, !2671, !2672}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2659, file: !2654, line: 96, baseType: !794, size: 64)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2659, file: !2654, line: 97, baseType: !2663, size: 64, offset: 64)
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2664, size: 64)
!2664 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2654, line: 60, baseType: !2665)
!2665 = !DISubroutineType(types: !2666)
!2666 = !{null, !2667}
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2659, file: !2654, line: 98, baseType: !2663, size: 64, offset: 128)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2659, file: !2654, line: 99, baseType: !870, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2659, file: !2654, line: 100, baseType: !870, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2659, file: !2654, line: 101, baseType: !1010, size: 128, align: 64, offset: 256)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2659, file: !2654, line: 102, baseType: !2667, size: 64, offset: 384)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2640, file: !36, line: 129, baseType: !739, size: 256, offset: 512)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2640, file: !36, line: 130, baseType: !35, size: 32, offset: 768)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2640, file: !36, line: 131, baseType: !13, size: 32, offset: 800)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2640, file: !36, line: 132, baseType: !499, size: 64, offset: 832)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2640, file: !36, line: 133, baseType: !2678, size: 64, offset: 896)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2680)
!2680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !36, line: 77, size: 192, elements: !2681)
!2681 = !{!2682, !2686, !2842}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2680, file: !36, line: 83, baseType: !2683, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2684, size: 64)
!2684 = !DISubroutineType(types: !2685)
!2685 = !{null, !2589}
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2680, file: !36, line: 89, baseType: !2687, size: 64, offset: 64)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2688 = !DISubroutineType(types: !2689)
!2689 = !{!2690, !2691}
!2690 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !44, line: 1184, baseType: !13)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2693, line: 512, size: 896, elements: !2694)
!2693 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2694 = !{!2695, !2809, !2810, !2817, !2824, !2834, !2835, !2836, !2838, !2840}
!2695 = !DIDerivedType(tag: DW_TAG_member, scope: !2692, file: !2693, line: 513, baseType: !2696, size: 320)
!2696 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2692, file: !2693, line: 513, size: 320, elements: !2697)
!2697 = !{!2698, !2805, !2806, !2807, !2808}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2696, file: !2693, line: 514, baseType: !2699, size: 64)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !44, line: 625, size: 1344, elements: !2701)
!2701 = !{!2702, !2711, !2712, !2718, !2725, !2726, !2731, !2732, !2737, !2738, !2741, !2798, !2799, !2800, !2801, !2802, !2803}
!2702 = !DIDerivedType(tag: DW_TAG_member, scope: !2700, file: !44, line: 628, baseType: !2703, size: 128)
!2703 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2700, file: !44, line: 628, size: 128, elements: !2704)
!2704 = !{!2705, !2710}
!2705 = !DIDerivedType(tag: DW_TAG_member, scope: !2703, file: !44, line: 629, baseType: !2706, size: 128)
!2706 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2703, file: !44, line: 629, size: 128, elements: !2707)
!2707 = !{!2708, !2709}
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2706, file: !44, line: 631, baseType: !499, size: 64)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2706, file: !44, line: 632, baseType: !499, size: 64, offset: 64)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2703, file: !44, line: 635, baseType: !1010, size: 128, align: 64)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2700, file: !44, line: 639, baseType: !1646, size: 64, offset: 128)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2700, file: !44, line: 640, baseType: !2713, size: 64, offset: 192)
!2713 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1682, line: 297, baseType: !2714)
!2714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1682, line: 297, size: 64, elements: !2715)
!2715 = !{!2716}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2714, file: !1682, line: 297, baseType: !2717, size: 64)
!2717 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1687, line: 19, baseType: !499)
!2718 = !DIDerivedType(tag: DW_TAG_member, scope: !2700, file: !44, line: 646, baseType: !2719, size: 64, offset: 256)
!2719 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2700, file: !44, line: 646, size: 64, elements: !2720)
!2720 = !{!2721, !2724}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2719, file: !44, line: 647, baseType: !2722, size: 64)
!2722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2723)
!2723 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !44, line: 542, baseType: !499)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2719, file: !44, line: 648, baseType: !2723, size: 64)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2700, file: !44, line: 666, baseType: !115, size: 32, offset: 320)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2700, file: !44, line: 667, baseType: !2727, size: 64, offset: 384)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !44, line: 579, size: 320, elements: !2729)
!2729 = !{!2730}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2728, file: !44, line: 580, baseType: !1701, size: 320)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2700, file: !44, line: 670, baseType: !870, size: 8, offset: 448)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2700, file: !44, line: 681, baseType: !2733, size: 256, offset: 512)
!2733 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2700, file: !44, line: 678, size: 256, elements: !2734)
!2734 = !{!2735, !2736}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2733, file: !44, line: 679, baseType: !902, size: 192, align: 64)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2733, file: !44, line: 680, baseType: !499, size: 64, offset: 192)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2700, file: !44, line: 689, baseType: !370, size: 128, offset: 768)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2700, file: !44, line: 691, baseType: !2739, size: 64, offset: 896)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !44, line: 691, flags: DIFlagFwdDecl)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2700, file: !44, line: 694, baseType: !2742, size: 64, offset: 960)
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2744)
!2744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2693, line: 563, size: 1024, elements: !2745)
!2745 = !{!2746, !2750, !2751, !2755, !2759, !2763, !2764, !2768, !2772, !2776, !2777, !2778, !2782, !2786, !2790, !2794}
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2744, file: !2693, line: 564, baseType: !2747, size: 64)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DISubroutineType(types: !2749)
!2749 = !{null, !2699}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2744, file: !2693, line: 569, baseType: !2747, size: 64, offset: 64)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2744, file: !2693, line: 571, baseType: !2752, size: 64, offset: 128)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{!115, !2699, !499}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2744, file: !2693, line: 572, baseType: !2756, size: 64, offset: 192)
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2757 = !DISubroutineType(types: !2758)
!2758 = !{!115, !2699}
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2744, file: !2693, line: 578, baseType: !2760, size: 64, offset: 256)
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{!115, !2699, !499, !499, !499}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2744, file: !2693, line: 580, baseType: !2687, size: 64, offset: 320)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2744, file: !2693, line: 581, baseType: !2765, size: 64, offset: 384)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{!2690, !2691, !13}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2744, file: !2693, line: 582, baseType: !2769, size: 64, offset: 448)
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = !DISubroutineType(types: !2771)
!2771 = !{!2690, !2691, !499, !499}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2744, file: !2693, line: 584, baseType: !2773, size: 64, offset: 512)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = !DISubroutineType(types: !2775)
!2775 = !{!499, !2699}
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2744, file: !2693, line: 588, baseType: !2687, size: 64, offset: 576)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2744, file: !2693, line: 591, baseType: !2687, size: 64, offset: 640)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2744, file: !2693, line: 597, baseType: !2779, size: 64, offset: 704)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{!115, !2699, !499, !334, !115, !115}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2744, file: !2693, line: 603, baseType: !2783, size: 64, offset: 768)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = !DISubroutineType(types: !2785)
!2785 = !{!367, !2699}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2744, file: !2693, line: 613, baseType: !2787, size: 64, offset: 832)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = !DISubroutineType(types: !2789)
!2789 = !{!115, !2699, !2546}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2744, file: !2693, line: 625, baseType: !2791, size: 64, offset: 896)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2792 = !DISubroutineType(types: !2793)
!2793 = !{!2546, !2699, !499}
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2744, file: !2693, line: 633, baseType: !2795, size: 64, offset: 960)
!2795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2796, size: 64)
!2796 = !DISubroutineType(types: !2797)
!2797 = !{!2589, !2699, !499}
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2700, file: !44, line: 697, baseType: !499, size: 64, offset: 1024)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2700, file: !44, line: 699, baseType: !1673, size: 64, offset: 1088)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2700, file: !44, line: 700, baseType: !334, size: 64, offset: 1152)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2700, file: !44, line: 711, baseType: !794, size: 64, offset: 1216)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2700, file: !44, line: 717, baseType: !2546, size: 64, offset: 1280)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2700, file: !44, line: 722, baseType: !2804, offset: 1344)
!2804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !44, line: 570, elements: !1079)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2696, file: !2693, line: 515, baseType: !332, size: 32, offset: 64)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2696, file: !2693, line: 516, baseType: !499, size: 64, offset: 128)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2696, file: !2693, line: 517, baseType: !499, size: 64, offset: 192)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2696, file: !2693, line: 518, baseType: !499, size: 64, offset: 256)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2692, file: !2693, line: 520, baseType: !43, size: 32, offset: 320)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2692, file: !2693, line: 522, baseType: !2811, size: 64, offset: 384)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1687, line: 22, baseType: !2813)
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1687, line: 22, size: 64, elements: !2814)
!2814 = !{!2815}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2813, file: !1687, line: 22, baseType: !2816, size: 64)
!2816 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1687, line: 15, baseType: !499)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2692, file: !2693, line: 524, baseType: !2818, size: 64, offset: 448)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1682, line: 372, baseType: !2820)
!2820 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1682, line: 372, size: 64, elements: !2821)
!2821 = !{!2822}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2820, file: !1682, line: 372, baseType: !2823, size: 64)
!2823 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1687, line: 16, baseType: !499)
!2824 = !DIDerivedType(tag: DW_TAG_member, scope: !2692, file: !2693, line: 527, baseType: !2825, size: 64, offset: 512)
!2825 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2692, file: !2693, line: 527, size: 64, elements: !2826)
!2826 = !{!2827, !2833}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2825, file: !2693, line: 528, baseType: !2828, size: 64)
!2828 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1687, line: 21, baseType: !2829)
!2829 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1687, line: 21, size: 64, elements: !2830)
!2830 = !{!2831}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2829, file: !1687, line: 21, baseType: !2832, size: 64)
!2832 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1687, line: 14, baseType: !499)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2825, file: !2693, line: 529, baseType: !2812, size: 64)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2692, file: !2693, line: 534, baseType: !2589, size: 64, offset: 576)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2692, file: !2693, line: 535, baseType: !2589, size: 64, offset: 640)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2692, file: !2693, line: 541, baseType: !2837, size: 64, offset: 704)
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2828, size: 64)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2692, file: !2693, line: 545, baseType: !2839, size: 64, offset: 768)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2692, file: !2693, line: 549, baseType: !2841, size: 64, offset: 832)
!2841 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1682, line: 520, baseType: !2589)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2680, file: !36, line: 100, baseType: !2843, size: 64, offset: 128)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DISubroutineType(types: !2845)
!2845 = !{!115, !2639, !499, !499, !115}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2640, file: !36, line: 134, baseType: !334, size: 64, offset: 960)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2640, file: !36, line: 135, baseType: !115, size: 32, offset: 1024)
!2848 = !DIDerivedType(tag: DW_TAG_member, scope: !2640, file: !36, line: 136, baseType: !2849, size: 128, offset: 1088)
!2849 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2640, file: !36, line: 136, size: 128, elements: !2850)
!2850 = !{!2851, !2857}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2849, file: !36, line: 137, baseType: !2852, size: 128)
!2852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2853, line: 6, size: 128, elements: !2854)
!2853 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2854 = !{!2855, !2856}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2852, file: !2853, line: 7, baseType: !602, size: 64)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2852, file: !2853, line: 8, baseType: !602, size: 64, offset: 64)
!2857 = !DIDerivedType(tag: DW_TAG_member, scope: !2849, file: !36, line: 138, baseType: !2858)
!2858 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2849, file: !36, line: 138, elements: !2859)
!2859 = !{!2860, !2862}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2858, file: !36, line: 138, baseType: !2861)
!2861 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2858, file: !36, line: 138, elements: !1079)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2858, file: !36, line: 138, baseType: !2863)
!2863 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2852, elements: !1819)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2636, file: !44, line: 147, baseType: !334, size: 64, offset: 64)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2594, file: !44, line: 161, baseType: !1010, size: 128, align: 64)
!2866 = !DIDerivedType(tag: DW_TAG_member, scope: !2590, file: !44, line: 164, baseType: !2867, size: 32, offset: 384)
!2867 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2590, file: !44, line: 164, size: 32, elements: !2868)
!2868 = !{!2869, !2870}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2867, file: !44, line: 169, baseType: !354, size: 32)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2867, file: !44, line: 177, baseType: !13, size: 32)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2590, file: !44, line: 181, baseType: !354, size: 32, offset: 416)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2586, file: !2573, line: 42, baseType: !599, size: 32, offset: 64)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2586, file: !2573, line: 43, baseType: !599, size: 32, offset: 96)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1359, file: !1360, line: 1340, baseType: !2875, size: 64, offset: 20672)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1360, line: 69, flags: DIFlagFwdDecl)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1359, file: !1360, line: 1351, baseType: !115, size: 32, offset: 20736)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1359, file: !1360, line: 1352, baseType: !115, size: 32, offset: 20768)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1359, file: !1360, line: 1354, baseType: !499, size: 64, offset: 20800)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1359, file: !1360, line: 1364, baseType: !602, size: 64, offset: 20864)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1359, file: !1360, line: 1365, baseType: !602, size: 64, offset: 20928)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1359, file: !1360, line: 1412, baseType: !499, size: 64, offset: 20992)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1359, file: !1360, line: 1453, baseType: !2884, size: 64, offset: 21056)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1360, line: 1453, flags: DIFlagFwdDecl)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1359, file: !1360, line: 1457, baseType: !2887, size: 64, offset: 21120)
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2888, size: 64)
!2888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !60, line: 61, size: 576, elements: !2889)
!2889 = !{!2890, !2891, !2910, !2913, !2914, !2947, !2957}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2888, file: !60, line: 62, baseType: !59, size: 32)
!2891 = !DIDerivedType(tag: DW_TAG_member, scope: !2888, file: !60, line: 64, baseType: !2892, size: 192, offset: 64)
!2892 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2888, file: !60, line: 64, size: 192, elements: !2893)
!2893 = !{!2894, !2905}
!2894 = !DIDerivedType(tag: DW_TAG_member, scope: !2892, file: !60, line: 65, baseType: !2895, size: 192)
!2895 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2892, file: !60, line: 65, size: 192, elements: !2896)
!2896 = !{!2897, !2904}
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2895, file: !60, line: 66, baseType: !2898, size: 128)
!2898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2899, line: 50, size: 128, elements: !2900)
!2899 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2900 = !{!2901, !2902, !2903}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2898, file: !2899, line: 52, baseType: !499, size: 64)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2898, file: !2899, line: 54, baseType: !13, size: 32, offset: 64)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2898, file: !2899, line: 55, baseType: !13, size: 32, offset: 96)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2895, file: !60, line: 67, baseType: !499, size: 64, offset: 128)
!2905 = !DIDerivedType(tag: DW_TAG_member, scope: !2892, file: !60, line: 70, baseType: !2906, size: 192)
!2906 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2892, file: !60, line: 70, size: 192, elements: !2907)
!2907 = !{!2908, !2909}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2906, file: !60, line: 71, baseType: !1010, size: 128, align: 64)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2906, file: !60, line: 72, baseType: !499, size: 64, offset: 128)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2888, file: !60, line: 76, baseType: !2911, size: 64, offset: 256)
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2912 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !60, line: 76, flags: DIFlagFwdDecl)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2888, file: !60, line: 77, baseType: !499, size: 64, offset: 320)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2888, file: !60, line: 79, baseType: !2915, size: 64, offset: 384)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2899, line: 25, size: 256, elements: !2917)
!2917 = !{!2918, !2924, !2928}
!2918 = !DIDerivedType(tag: DW_TAG_member, scope: !2916, file: !2899, line: 26, baseType: !2919, size: 128)
!2919 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2916, file: !2899, line: 26, size: 128, elements: !2920)
!2920 = !{!2921, !2923}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2919, file: !2899, line: 27, baseType: !2922, size: 128)
!2922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !407, size: 128, elements: !2141)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2919, file: !2899, line: 28, baseType: !2922, size: 128)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2916, file: !2899, line: 31, baseType: !2925, size: 64, offset: 128)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2927)
!2927 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2899, line: 23, flags: DIFlagFwdDecl)
!2928 = !DIDerivedType(tag: DW_TAG_member, scope: !2916, file: !2899, line: 33, baseType: !2929, size: 64, offset: 192)
!2929 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2916, file: !2899, line: 33, size: 64, elements: !2930)
!2930 = !{!2931, !2937, !2942}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2929, file: !2899, line: 38, baseType: !2932, size: 64)
!2932 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2929, file: !2899, line: 34, size: 64, elements: !2933)
!2933 = !{!2934, !2935, !2936}
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2932, file: !2899, line: 35, baseType: !786, size: 32)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2932, file: !2899, line: 36, baseType: !407, size: 8, offset: 32)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2932, file: !2899, line: 37, baseType: !407, size: 8, offset: 40)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2929, file: !2899, line: 42, baseType: !2938, size: 16)
!2938 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2929, file: !2899, line: 39, size: 16, elements: !2939)
!2939 = !{!2940, !2941}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2938, file: !2899, line: 40, baseType: !407, size: 8)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2938, file: !2899, line: 41, baseType: !407, size: 8, offset: 8)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2929, file: !2899, line: 46, baseType: !2943, size: 16)
!2943 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2929, file: !2899, line: 43, size: 16, elements: !2944)
!2944 = !{!2945, !2946}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2943, file: !2899, line: 44, baseType: !407, size: 8)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2943, file: !2899, line: 45, baseType: !407, size: 8, offset: 8)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2888, file: !60, line: 81, baseType: !2948, size: 64, offset: 448)
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !60, line: 85, size: 384, elements: !2950)
!2950 = !{!2951, !2952, !2953, !2954, !2955, !2956}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2949, file: !60, line: 86, baseType: !2911, size: 64)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2949, file: !60, line: 87, baseType: !499, size: 64, offset: 64)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2949, file: !60, line: 88, baseType: !499, size: 64, offset: 128)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2949, file: !60, line: 89, baseType: !499, size: 64, offset: 192)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2949, file: !60, line: 90, baseType: !870, size: 8, offset: 256)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2949, file: !60, line: 92, baseType: !2948, size: 64, offset: 320)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2888, file: !60, line: 82, baseType: !13, size: 32, offset: 512)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1359, file: !1360, line: 1463, baseType: !2959, offset: 21184)
!2959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1360, line: 739, elements: !1079)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1359, file: !1360, line: 1470, baseType: !1010, size: 128, align: 64, offset: 21184)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1359, file: !1360, line: 1471, baseType: !349, size: 32, offset: 21312)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1359, file: !1360, line: 1472, baseType: !115, size: 32, offset: 21344)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1359, file: !1360, line: 1474, baseType: !1358, size: 64, offset: 21376)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1359, file: !1360, line: 1475, baseType: !1032, size: 320, offset: 21440)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1359, file: !1360, line: 1478, baseType: !2966, size: 64, offset: 21760)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1360, line: 1478, flags: DIFlagFwdDecl)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1359, file: !1360, line: 1482, baseType: !349, size: 32, offset: 21824)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1359, file: !1360, line: 1489, baseType: !334, size: 64, offset: 21888)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1359, file: !1360, line: 1504, baseType: !334, size: 64, offset: 21952)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1359, file: !1360, line: 1505, baseType: !603, size: 64, offset: 22016)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1359, file: !1360, line: 1506, baseType: !602, size: 64, offset: 22080)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1359, file: !1360, line: 1507, baseType: !603, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1359, file: !1360, line: 1508, baseType: !603, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1359, file: !1360, line: 1509, baseType: !603, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1359, file: !1360, line: 1510, baseType: !1010, size: 128, align: 64, offset: 22208)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1359, file: !1360, line: 1511, baseType: !115, size: 32, offset: 22336)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1359, file: !1360, line: 1515, baseType: !2979, size: 64, offset: 22400)
!2979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1277, line: 56, size: 64, elements: !2980)
!2980 = !{!2981}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2979, file: !1277, line: 57, baseType: !1280, size: 64)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1359, file: !1360, line: 1518, baseType: !2979, size: 64, offset: 22464)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1359, file: !1360, line: 1528, baseType: !1010, size: 128, align: 64, offset: 22528)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1359, file: !1360, line: 1552, baseType: !2985, size: 35328, offset: 23040)
!2985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2986, line: 430, size: 35328, elements: !2987)
!2986 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2987 = !{!2988, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3017, !3018, !3019, !3020, !3021, !3022, !3025, !3026, !3027, !3028}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2985, file: !2986, line: 432, baseType: !2989, size: 192)
!2989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2990, size: 192, elements: !450)
!2990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2991, line: 16, size: 64, elements: !2992)
!2991 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2992 = !{!2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2990, file: !2991, line: 17, baseType: !417, size: 16)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2990, file: !2991, line: 18, baseType: !417, size: 16, offset: 16)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2990, file: !2991, line: 19, baseType: !417, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2990, file: !2991, line: 19, baseType: !417, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2990, file: !2991, line: 19, baseType: !417, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2990, file: !2991, line: 19, baseType: !417, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2990, file: !2991, line: 19, baseType: !417, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2990, file: !2991, line: 20, baseType: !417, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2990, file: !2991, line: 20, baseType: !417, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2990, file: !2991, line: 20, baseType: !417, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2990, file: !2991, line: 20, baseType: !417, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2990, file: !2991, line: 20, baseType: !417, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2990, file: !2991, line: 20, baseType: !417, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2985, file: !2986, line: 436, baseType: !499, size: 64, offset: 192)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2985, file: !2986, line: 440, baseType: !419, size: 16, offset: 256)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2985, file: !2986, line: 441, baseType: !419, size: 16, offset: 272)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2985, file: !2986, line: 442, baseType: !419, size: 16, offset: 288)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2985, file: !2986, line: 443, baseType: !419, size: 16, offset: 304)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2985, file: !2986, line: 447, baseType: !499, size: 64, offset: 320)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2985, file: !2986, line: 448, baseType: !499, size: 64, offset: 384)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2985, file: !2986, line: 459, baseType: !3014, size: 256, offset: 448)
!3014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3015, size: 256, elements: !1020)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3016 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2986, line: 428, flags: DIFlagFwdDecl)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2985, file: !2986, line: 461, baseType: !499, size: 64, offset: 704)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2985, file: !2986, line: 463, baseType: !499, size: 64, offset: 768)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2985, file: !2986, line: 465, baseType: !499, size: 64, offset: 832)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2985, file: !2986, line: 466, baseType: !499, size: 64, offset: 896)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2985, file: !2986, line: 467, baseType: !499, size: 64, offset: 960)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2985, file: !2986, line: 473, baseType: !3023, size: 64, offset: 1024)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2986, line: 10, flags: DIFlagFwdDecl)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2985, file: !2986, line: 480, baseType: !499, size: 64, offset: 1088)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2985, file: !2986, line: 482, baseType: !13, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2985, file: !2986, line: 491, baseType: !598, size: 32, offset: 1184)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2985, file: !2986, line: 501, baseType: !3029, size: 33792, offset: 1536)
!3029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3030, line: 448, size: 33792, elements: !3031)
!3030 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3031 = !{!3032, !3033, !3034, !3196, !3197, !3203, !3204}
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3029, file: !3030, line: 461, baseType: !13, size: 32)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3029, file: !3030, line: 468, baseType: !499, size: 64, offset: 64)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3029, file: !3030, line: 476, baseType: !3035, size: 64, offset: 128)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3030, line: 356, size: 33280, align: 512, elements: !3037)
!3037 = !{!3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3036, file: !3030, line: 358, baseType: !13, size: 32)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3036, file: !3030, line: 361, baseType: !13, size: 32, offset: 32)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3036, file: !3030, line: 364, baseType: !602, size: 64, offset: 64)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3036, file: !3030, line: 367, baseType: !602, size: 64, offset: 128)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3036, file: !3030, line: 370, baseType: !602, size: 64, offset: 192)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3036, file: !3030, line: 373, baseType: !13, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3036, file: !3030, line: 376, baseType: !13, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3036, file: !3030, line: 391, baseType: !13, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3036, file: !3030, line: 394, baseType: !13, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3036, file: !3030, line: 397, baseType: !3048, size: 32768, offset: 512)
!3048 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3030, line: 348, size: 32768, elements: !3049)
!3049 = !{!3050, !3065, !3102, !3179, !3192}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3048, file: !3030, line: 349, baseType: !3051, size: 896)
!3051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3030, line: 12, size: 896, elements: !3052)
!3052 = !{!3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3064}
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3051, file: !3030, line: 13, baseType: !598, size: 32)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3051, file: !3030, line: 14, baseType: !598, size: 32, offset: 32)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3051, file: !3030, line: 15, baseType: !598, size: 32, offset: 64)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3051, file: !3030, line: 16, baseType: !598, size: 32, offset: 96)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3051, file: !3030, line: 17, baseType: !598, size: 32, offset: 128)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3051, file: !3030, line: 18, baseType: !598, size: 32, offset: 160)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3051, file: !3030, line: 19, baseType: !598, size: 32, offset: 192)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3051, file: !3030, line: 22, baseType: !3061, size: 640, offset: 224)
!3061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !598, size: 640, elements: !3062)
!3062 = !{!3063}
!3063 = !DISubrange(count: 20)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3051, file: !3030, line: 25, baseType: !598, size: 32, offset: 864)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3048, file: !3030, line: 350, baseType: !3066, size: 4096, align: 128)
!3066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3030, line: 34, size: 4096, align: 128, elements: !3067)
!3067 = !{!3068, !3069, !3070, !3071, !3072, !3087, !3088, !3089, !3091, !3093, !3097}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3066, file: !3030, line: 35, baseType: !417, size: 16)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3066, file: !3030, line: 36, baseType: !417, size: 16, offset: 16)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3066, file: !3030, line: 37, baseType: !417, size: 16, offset: 32)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3066, file: !3030, line: 38, baseType: !417, size: 16, offset: 48)
!3072 = !DIDerivedType(tag: DW_TAG_member, scope: !3066, file: !3030, line: 39, baseType: !3073, size: 128, offset: 64)
!3073 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3066, file: !3030, line: 39, size: 128, elements: !3074)
!3074 = !{!3075, !3080}
!3075 = !DIDerivedType(tag: DW_TAG_member, scope: !3073, file: !3030, line: 40, baseType: !3076, size: 128)
!3076 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3073, file: !3030, line: 40, size: 128, elements: !3077)
!3077 = !{!3078, !3079}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3076, file: !3030, line: 41, baseType: !602, size: 64)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3076, file: !3030, line: 42, baseType: !602, size: 64, offset: 64)
!3080 = !DIDerivedType(tag: DW_TAG_member, scope: !3073, file: !3030, line: 44, baseType: !3081, size: 128)
!3081 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3073, file: !3030, line: 44, size: 128, elements: !3082)
!3082 = !{!3083, !3084, !3085, !3086}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3081, file: !3030, line: 45, baseType: !598, size: 32)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3081, file: !3030, line: 46, baseType: !598, size: 32, offset: 32)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3081, file: !3030, line: 47, baseType: !598, size: 32, offset: 64)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3081, file: !3030, line: 48, baseType: !598, size: 32, offset: 96)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3066, file: !3030, line: 51, baseType: !598, size: 32, offset: 192)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3066, file: !3030, line: 52, baseType: !598, size: 32, offset: 224)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3066, file: !3030, line: 55, baseType: !3090, size: 1024, offset: 256)
!3090 = !DICompositeType(tag: DW_TAG_array_type, baseType: !598, size: 1024, elements: !611)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3066, file: !3030, line: 58, baseType: !3092, size: 2048, offset: 1280)
!3092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !598, size: 2048, elements: !454)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3066, file: !3030, line: 60, baseType: !3094, size: 384, offset: 3328)
!3094 = !DICompositeType(tag: DW_TAG_array_type, baseType: !598, size: 384, elements: !3095)
!3095 = !{!3096}
!3096 = !DISubrange(count: 12)
!3097 = !DIDerivedType(tag: DW_TAG_member, scope: !3066, file: !3030, line: 62, baseType: !3098, size: 384, offset: 3712)
!3098 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3066, file: !3030, line: 62, size: 384, elements: !3099)
!3099 = !{!3100, !3101}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3098, file: !3030, line: 63, baseType: !3094, size: 384)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3098, file: !3030, line: 64, baseType: !3094, size: 384)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3048, file: !3030, line: 351, baseType: !3103, size: 1088)
!3103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3030, line: 79, size: 1088, elements: !3104)
!3104 = !{!3105, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3178}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3103, file: !3030, line: 80, baseType: !598, size: 32)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3103, file: !3030, line: 81, baseType: !598, size: 32, offset: 32)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3103, file: !3030, line: 82, baseType: !598, size: 32, offset: 64)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3103, file: !3030, line: 83, baseType: !598, size: 32, offset: 96)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3103, file: !3030, line: 84, baseType: !598, size: 32, offset: 128)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3103, file: !3030, line: 85, baseType: !598, size: 32, offset: 160)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3103, file: !3030, line: 86, baseType: !598, size: 32, offset: 192)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3103, file: !3030, line: 88, baseType: !3061, size: 640, offset: 224)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3103, file: !3030, line: 89, baseType: !407, size: 8, offset: 864)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3103, file: !3030, line: 90, baseType: !407, size: 8, offset: 872)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3103, file: !3030, line: 91, baseType: !407, size: 8, offset: 880)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3103, file: !3030, line: 92, baseType: !407, size: 8, offset: 888)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3103, file: !3030, line: 93, baseType: !407, size: 8, offset: 896)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3103, file: !3030, line: 94, baseType: !407, size: 8, offset: 904)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3103, file: !3030, line: 95, baseType: !3120, size: 64, offset: 960)
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3122, line: 11, size: 128, elements: !3123)
!3122 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3123 = !{!3124, !3125}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3121, file: !3122, line: 12, baseType: !485, size: 64)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3121, file: !3122, line: 13, baseType: !3126, size: 64, offset: 64)
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3127, size: 64)
!3127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3128, line: 103, size: 1344, elements: !3129)
!3128 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3129 = !{!3130, !3131, !3132, !3133, !3134, !3135, !3136, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3158, !3159, !3160}
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3127, file: !3128, line: 109, baseType: !499, size: 64)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3127, file: !3128, line: 110, baseType: !499, size: 64, offset: 64)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3127, file: !3128, line: 111, baseType: !499, size: 64, offset: 128)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3127, file: !3128, line: 112, baseType: !499, size: 64, offset: 192)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3127, file: !3128, line: 113, baseType: !499, size: 64, offset: 256)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3127, file: !3128, line: 114, baseType: !499, size: 64, offset: 320)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3127, file: !3128, line: 117, baseType: !499, size: 64, offset: 384)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3127, file: !3128, line: 118, baseType: !499, size: 64, offset: 448)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3127, file: !3128, line: 119, baseType: !499, size: 64, offset: 512)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3127, file: !3128, line: 120, baseType: !499, size: 64, offset: 576)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3127, file: !3128, line: 121, baseType: !499, size: 64, offset: 640)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3127, file: !3128, line: 122, baseType: !499, size: 64, offset: 704)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3127, file: !3128, line: 123, baseType: !499, size: 64, offset: 768)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3127, file: !3128, line: 124, baseType: !499, size: 64, offset: 832)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3127, file: !3128, line: 125, baseType: !499, size: 64, offset: 896)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3127, file: !3128, line: 139, baseType: !499, size: 64, offset: 960)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3127, file: !3128, line: 142, baseType: !499, size: 64, offset: 1024)
!3147 = !DIDerivedType(tag: DW_TAG_member, scope: !3127, file: !3128, line: 144, baseType: !3148, size: 64, offset: 1088)
!3148 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3127, file: !3128, line: 144, size: 64, elements: !3149)
!3149 = !{!3150, !3151, !3152}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3148, file: !3128, line: 146, baseType: !417, size: 16)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3148, file: !3128, line: 148, baseType: !602, size: 64)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3148, file: !3128, line: 150, baseType: !3153, size: 64)
!3153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3128, line: 59, size: 64, elements: !3154)
!3154 = !{!3155, !3156, !3157}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3153, file: !3128, line: 61, baseType: !602, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3153, file: !3128, line: 63, baseType: !602, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3153, file: !3128, line: 65, baseType: !602, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3127, file: !3128, line: 153, baseType: !499, size: 64, offset: 1152)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3127, file: !3128, line: 154, baseType: !499, size: 64, offset: 1216)
!3160 = !DIDerivedType(tag: DW_TAG_member, scope: !3127, file: !3128, line: 156, baseType: !3161, size: 64, offset: 1280)
!3161 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3127, file: !3128, line: 156, size: 64, elements: !3162)
!3162 = !{!3163, !3164, !3165}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3161, file: !3128, line: 158, baseType: !417, size: 16)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3161, file: !3128, line: 160, baseType: !602, size: 64)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3161, file: !3128, line: 162, baseType: !3166, size: 64)
!3166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3128, line: 69, size: 64, elements: !3167)
!3167 = !{!3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3166, file: !3128, line: 71, baseType: !602, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3166, file: !3128, line: 73, baseType: !602, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3166, file: !3128, line: 75, baseType: !602, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3166, file: !3128, line: 77, baseType: !602, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3166, file: !3128, line: 80, baseType: !602, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3166, file: !3128, line: 83, baseType: !602, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3166, file: !3128, line: 86, baseType: !602, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3166, file: !3128, line: 88, baseType: !602, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3166, file: !3128, line: 93, baseType: !602, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3166, file: !3128, line: 100, baseType: !602, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3103, file: !3030, line: 96, baseType: !598, size: 32, offset: 1024)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3048, file: !3030, line: 352, baseType: !3180, size: 4608, align: 512)
!3180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3030, line: 333, size: 4608, align: 512, elements: !3181)
!3181 = !{!3182, !3183, !3190}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3180, file: !3030, line: 334, baseType: !3066, size: 4096, align: 128)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3180, file: !3030, line: 335, baseType: !3184, size: 512, offset: 4096)
!3184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3030, line: 312, size: 512, elements: !3185)
!3185 = !{!3186, !3187, !3188}
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3184, file: !3030, line: 313, baseType: !602, size: 64)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3184, file: !3030, line: 314, baseType: !602, size: 64, offset: 64)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3184, file: !3030, line: 315, baseType: !3189, size: 384, offset: 128)
!3189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !602, size: 384, elements: !2033)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3180, file: !3030, line: 336, baseType: !3191, offset: 4608)
!3191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !407, elements: !1819)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3048, file: !3030, line: 353, baseType: !3193, size: 32768)
!3193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !407, size: 32768, elements: !3194)
!3194 = !{!3195}
!3195 = !DISubrange(count: 4096)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3029, file: !3030, line: 484, baseType: !3035, size: 64, offset: 192)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3029, file: !3030, line: 491, baseType: !3198, size: 128, offset: 256)
!3198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3030, line: 404, size: 128, elements: !3199)
!3199 = !{!3200, !3201, !3202}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3198, file: !3030, line: 424, baseType: !602, size: 64)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3198, file: !3030, line: 432, baseType: !13, size: 32, offset: 64)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3198, file: !3030, line: 440, baseType: !13, size: 32, offset: 96)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3029, file: !3030, line: 498, baseType: !3198, size: 128, offset: 384)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3029, file: !3030, line: 508, baseType: !3036, size: 33280, align: 512, offset: 512)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !1339, file: !1340, line: 31, baseType: !3206, size: 64, offset: 448)
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64)
!3207 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3208, line: 11, flags: DIFlagFwdDecl)
!3208 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1339, file: !1340, line: 32, baseType: !13, size: 32, offset: 512)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1339, file: !1340, line: 33, baseType: !1338, size: 64, offset: 576)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !1339, file: !1340, line: 35, baseType: !3212, size: 64, offset: 640)
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !1340, line: 17, flags: DIFlagFwdDecl)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1339, file: !1340, line: 37, baseType: !1801, size: 64, offset: 704)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1339, file: !1340, line: 38, baseType: !2120, size: 64, offset: 768)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !1339, file: !1340, line: 39, baseType: !115, size: 32, offset: 832)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1339, file: !1340, line: 40, baseType: !3218, size: 192, offset: 896)
!3218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !3219, line: 9, size: 192, elements: !3220)
!3219 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!3220 = !{!3221, !3222, !3226, !3227}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !3218, file: !3219, line: 10, baseType: !794, size: 64)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3218, file: !3219, line: 11, baseType: !3223, size: 64, offset: 64)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3225)
!3225 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !3219, line: 7, flags: DIFlagFwdDecl)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !3218, file: !3219, line: 12, baseType: !13, size: 32, offset: 128)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3218, file: !3219, line: 13, baseType: !349, size: 32, offset: 160)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !1339, file: !1340, line: 42, baseType: !115, size: 32, offset: 1088)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1291, file: !20, line: 951, baseType: !66, size: 32, offset: 128)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1291, file: !20, line: 952, baseType: !535, size: 32, offset: 160)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1291, file: !20, line: 952, baseType: !535, size: 32, offset: 192)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1291, file: !20, line: 953, baseType: !115, size: 32, offset: 224)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1270, file: !20, line: 1012, baseType: !1955, size: 64, offset: 896)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1270, file: !20, line: 1013, baseType: !3235, size: 256, offset: 960)
!3235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !20, line: 970, size: 256, elements: !3236)
!3236 = !{!3237, !3238, !3239, !3240, !3241, !3242}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3235, file: !20, line: 971, baseType: !499, size: 64)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3235, file: !20, line: 972, baseType: !13, size: 32, offset: 64)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3235, file: !20, line: 973, baseType: !13, size: 32, offset: 96)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3235, file: !20, line: 974, baseType: !13, size: 32, offset: 128)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3235, file: !20, line: 975, baseType: !13, size: 32, offset: 160)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3235, file: !20, line: 976, baseType: !690, size: 64, offset: 192)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1270, file: !20, line: 1014, baseType: !3244, size: 128, offset: 1216)
!3244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !3245, line: 8, size: 128, elements: !3246)
!3245 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!3246 = !{!3247, !3248}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !3244, file: !3245, line: 9, baseType: !674, size: 64)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !3244, file: !3245, line: 10, baseType: !564, size: 64, offset: 64)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1270, file: !20, line: 1015, baseType: !529, size: 64, offset: 1344)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1270, file: !20, line: 1016, baseType: !3251, size: 64, offset: 1408)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3253)
!3253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !20, line: 1914, size: 2112, elements: !3254)
!3254 = !{!3255, !3256, !3260, !3264, !3268, !3296, !3297, !3303, !3316, !3324, !3328, !3329, !3333, !3334, !3338, !3343, !3344, !3348, !3352, !3358, !3359, !3363, !3364, !3368, !3372, !3376, !3382, !3386, !3390, !3394, !3398, !3399, !3405}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3253, file: !20, line: 1915, baseType: !719, size: 64)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3253, file: !20, line: 1916, baseType: !3257, size: 64, offset: 64)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{!690, !1673, !690, !115}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3253, file: !20, line: 1917, baseType: !3261, size: 64, offset: 128)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!481, !1673, !449, !496, !1253}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3253, file: !20, line: 1918, baseType: !3265, size: 64, offset: 192)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{!481, !1673, !367, !496, !1253}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3253, file: !20, line: 1919, baseType: !3269, size: 64, offset: 256)
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3270, size: 64)
!3270 = !DISubroutineType(types: !3271)
!3271 = !{!481, !3272, !3294}
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !20, line: 373, size: 384, elements: !3274)
!3274 = !{!3275, !3276, !3277, !3281, !3282, !3283, !3284}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !3273, file: !20, line: 374, baseType: !1673, size: 64)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !3273, file: !20, line: 375, baseType: !690, size: 64, offset: 64)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !3273, file: !20, line: 376, baseType: !3278, size: 64, offset: 128)
!3278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3279, size: 64)
!3279 = !DISubroutineType(types: !3280)
!3280 = !{null, !3272, !485}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3273, file: !20, line: 377, baseType: !334, size: 64, offset: 192)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !3273, file: !20, line: 378, baseType: !115, size: 32, offset: 256)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !3273, file: !20, line: 379, baseType: !417, size: 16, offset: 288)
!3284 = !DIDerivedType(tag: DW_TAG_member, scope: !3273, file: !20, line: 380, baseType: !3285, size: 64, offset: 320)
!3285 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3273, file: !20, line: 380, size: 64, elements: !3286)
!3286 = !{!3287, !3290}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !3285, file: !20, line: 386, baseType: !3288, size: 64)
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3289 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !20, line: 386, flags: DIFlagFwdDecl)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !3285, file: !20, line: 395, baseType: !3291, size: 64)
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3292, size: 64)
!3292 = !DISubroutineType(types: !3293)
!3293 = !{!481, !334}
!3294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3295, size: 64)
!3295 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !20, line: 69, flags: DIFlagFwdDecl)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3253, file: !20, line: 1920, baseType: !3269, size: 64, offset: 320)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3253, file: !20, line: 1921, baseType: !3298, size: 64, offset: 384)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = !DISubroutineType(types: !3300)
!3300 = !{!115, !3272, !3301, !13}
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !20, line: 53, flags: DIFlagFwdDecl)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3253, file: !20, line: 1923, baseType: !3304, size: 64, offset: 448)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = !DISubroutineType(types: !3306)
!3306 = !{!115, !1673, !3307}
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3308, size: 64)
!3308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !20, line: 1858, size: 128, elements: !3309)
!3309 = !{!3310, !3315}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3308, file: !20, line: 1859, baseType: !3311, size: 64)
!3311 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !20, line: 1855, baseType: !3312)
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = !DISubroutineType(types: !3314)
!3314 = !{!870, !3307, !367, !115, !690, !602, !13}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3308, file: !20, line: 1860, baseType: !690, size: 64, offset: 64)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3253, file: !20, line: 1924, baseType: !3317, size: 64, offset: 512)
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3318, size: 64)
!3318 = !DISubroutineType(types: !3319)
!3319 = !{!3320, !1673, !3322}
!3320 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3321, line: 59, baseType: !13)
!3321 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !705, line: 31, flags: DIFlagFwdDecl)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3253, file: !20, line: 1925, baseType: !3325, size: 64, offset: 576)
!3325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3326, size: 64)
!3326 = !DISubroutineType(types: !3327)
!3327 = !{!485, !1673, !13, !499}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3253, file: !20, line: 1926, baseType: !3325, size: 64, offset: 640)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3253, file: !20, line: 1927, baseType: !3330, size: 64, offset: 704)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{!115, !1673, !2699}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3253, file: !20, line: 1928, baseType: !499, size: 64, offset: 768)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3253, file: !20, line: 1929, baseType: !3335, size: 64, offset: 832)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = !DISubroutineType(types: !3337)
!3337 = !{!115, !529, !1673}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3253, file: !20, line: 1930, baseType: !3339, size: 64, offset: 896)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{!115, !1673, !3342}
!3342 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !20, line: 1061, baseType: !334)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3253, file: !20, line: 1931, baseType: !3335, size: 64, offset: 960)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3253, file: !20, line: 1932, baseType: !3345, size: 64, offset: 1024)
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3346 = !DISubroutineType(types: !3347)
!3347 = !{!115, !1673, !690, !690, !115}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3253, file: !20, line: 1933, baseType: !3349, size: 64, offset: 1088)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = !DISubroutineType(types: !3351)
!3351 = !{!115, !115, !1673, !115}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3253, file: !20, line: 1934, baseType: !3353, size: 64, offset: 1152)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = !DISubroutineType(types: !3355)
!3355 = !{!115, !1673, !115, !3356}
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3357 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !20, line: 1063, flags: DIFlagFwdDecl)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3253, file: !20, line: 1935, baseType: !1670, size: 64, offset: 1216)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3253, file: !20, line: 1936, baseType: !3360, size: 64, offset: 1280)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = !DISubroutineType(types: !3362)
!3362 = !{!115, !115}
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3253, file: !20, line: 1937, baseType: !3353, size: 64, offset: 1344)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3253, file: !20, line: 1938, baseType: !3365, size: 64, offset: 1408)
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3366, size: 64)
!3366 = !DISubroutineType(types: !3367)
!3367 = !{!481, !2583, !1673, !1253, !496, !13}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3253, file: !20, line: 1939, baseType: !3369, size: 64, offset: 1472)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = !DISubroutineType(types: !3371)
!3371 = !{!481, !1673, !1253, !2583, !496, !13}
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3253, file: !20, line: 1940, baseType: !3373, size: 64, offset: 1536)
!3373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3374, size: 64)
!3374 = !DISubroutineType(types: !3375)
!3375 = !{null, !1673}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3253, file: !20, line: 1941, baseType: !3377, size: 64, offset: 1600)
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3378, size: 64)
!3378 = !DISubroutineType(types: !3379)
!3379 = !{!115, !1673, !115, !3380, !3381}
!3380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3253, file: !20, line: 1942, baseType: !3383, size: 64, offset: 1664)
!3383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3384, size: 64)
!3384 = !DISubroutineType(types: !3385)
!3385 = !{!485, !1673, !115, !690, !690}
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3253, file: !20, line: 1944, baseType: !3387, size: 64, offset: 1728)
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3388, size: 64)
!3388 = !DISubroutineType(types: !3389)
!3389 = !{null, !1232, !1673}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3253, file: !20, line: 1948, baseType: !3391, size: 64, offset: 1792)
!3391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3392, size: 64)
!3392 = !DISubroutineType(types: !3393)
!3393 = !{!481, !1673, !690, !1673, !690, !496, !13}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3253, file: !20, line: 1950, baseType: !3395, size: 64, offset: 1856)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = !DISubroutineType(types: !3397)
!3397 = !{!690, !1673, !690, !1673, !690, !690, !13}
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3253, file: !20, line: 1953, baseType: !3345, size: 64, offset: 1920)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3253, file: !20, line: 1954, baseType: !3400, size: 64, offset: 1984)
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3401 = !DISubroutineType(types: !3402)
!3402 = !{!115, !3403, !13}
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64)
!3404 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !20, line: 1911, flags: DIFlagFwdDecl)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3253, file: !20, line: 1955, baseType: !3406, size: 64, offset: 2048)
!3406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3407, size: 64)
!3407 = !DISubroutineType(types: !3408)
!3408 = !{!115, !3403, !3301, !13}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1270, file: !20, line: 1018, baseType: !602, size: 64, offset: 1472)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1270, file: !20, line: 1020, baseType: !334, size: 64, offset: 1536)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1270, file: !20, line: 1023, baseType: !334, size: 64, offset: 1600)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1270, file: !20, line: 1027, baseType: !3413, size: 64, offset: 1664)
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1270, file: !20, line: 1029, baseType: !525, size: 64, offset: 1728)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1270, file: !20, line: 1030, baseType: !3416, size: 32, offset: 1792)
!3416 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !3417, line: 8, baseType: !598)
!3417 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1270, file: !20, line: 1031, baseType: !3416, size: 32, offset: 1824)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1233, file: !1234, line: 29, baseType: !334, size: 64, offset: 896)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1176, file: !20, line: 2077, baseType: !1229, size: 64, offset: 1088)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1176, file: !20, line: 2078, baseType: !1229, size: 64, offset: 1152)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1176, file: !20, line: 2079, baseType: !1229, size: 64, offset: 1216)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1176, file: !20, line: 2081, baseType: !3424, size: 64, offset: 1280)
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3425 = !DISubroutineType(types: !3426)
!3426 = !{!481, !680, !115, !449, !496, !690}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1176, file: !20, line: 2082, baseType: !3428, size: 64, offset: 1344)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = !DISubroutineType(types: !3430)
!3430 = !{!481, !680, !115, !367, !496, !690}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1176, file: !20, line: 2083, baseType: !3432, size: 64, offset: 1408)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = !DISubroutineType(types: !3434)
!3434 = !{!3435, !529}
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3436, size: 64)
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3437, size: 64)
!3437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !75, line: 296, size: 1664, elements: !3438)
!3438 = !{!3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3463, !3464, !3465}
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !3437, file: !75, line: 297, baseType: !1036, size: 128)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !3437, file: !75, line: 298, baseType: !370, size: 128, offset: 128)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !3437, file: !75, line: 299, baseType: !370, size: 128, offset: 256)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !3437, file: !75, line: 300, baseType: !370, size: 128, offset: 384)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !3437, file: !75, line: 301, baseType: !790, size: 256, offset: 512)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !3437, file: !75, line: 302, baseType: !383, size: 32, offset: 768)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !3437, file: !75, line: 303, baseType: !354, size: 32, offset: 800)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !3437, file: !75, line: 304, baseType: !680, size: 64, offset: 832)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !3437, file: !75, line: 305, baseType: !3448, size: 64, offset: 896)
!3448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !75, line: 68, size: 64, elements: !3449)
!3449 = !{!3450, !3462}
!3450 = !DIDerivedType(tag: DW_TAG_member, scope: !3448, file: !75, line: 69, baseType: !3451, size: 32)
!3451 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3448, file: !75, line: 69, size: 32, elements: !3452)
!3452 = !{!3453, !3454, !3455}
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3451, file: !75, line: 70, baseType: !535, size: 32)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3451, file: !75, line: 71, baseType: !544, size: 32)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !3451, file: !75, line: 72, baseType: !3456, size: 32)
!3456 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !3457, line: 24, baseType: !3458)
!3457 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!3458 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3457, line: 22, size: 32, elements: !3459)
!3459 = !{!3460}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3458, file: !3457, line: 23, baseType: !3461, size: 32)
!3461 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !3457, line: 20, baseType: !541)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3448, file: !75, line: 74, baseType: !74, size: 32, offset: 32)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !3437, file: !75, line: 306, baseType: !690, size: 64, offset: 960)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !3437, file: !75, line: 307, baseType: !499, size: 64, offset: 1024)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !3437, file: !75, line: 308, baseType: !3466, size: 576, offset: 1088)
!3466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !75, line: 205, size: 576, elements: !3467)
!3467 = !{!3468, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477}
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !3466, file: !75, line: 206, baseType: !3469, size: 64)
!3469 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !75, line: 66, baseType: !692)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !3466, file: !75, line: 207, baseType: !3469, size: 64, offset: 64)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !3466, file: !75, line: 208, baseType: !3469, size: 64, offset: 128)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !3466, file: !75, line: 209, baseType: !3469, size: 64, offset: 192)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !3466, file: !75, line: 210, baseType: !3469, size: 64, offset: 256)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !3466, file: !75, line: 211, baseType: !3469, size: 64, offset: 320)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !3466, file: !75, line: 212, baseType: !3469, size: 64, offset: 384)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !3466, file: !75, line: 213, baseType: !2004, size: 64, offset: 448)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !3466, file: !75, line: 214, baseType: !2004, size: 64, offset: 512)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1176, file: !20, line: 2085, baseType: !3479, size: 64, offset: 1472)
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3480, size: 64)
!3480 = !DISubroutineType(types: !3481)
!3481 = !{!485, !680, !3482}
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !3484, line: 15, size: 256, elements: !3485)
!3484 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!3485 = !{!3486, !3487, !3488, !3489, !3490}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3483, file: !3484, line: 16, baseType: !332, size: 32)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !3483, file: !3484, line: 19, baseType: !115, size: 32, offset: 32)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !3483, file: !3484, line: 26, baseType: !499, size: 64, offset: 64)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !3483, file: !3484, line: 33, baseType: !499, size: 64, offset: 128)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !3483, file: !3484, line: 36, baseType: !3491, size: 64, offset: 192)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !44, line: 33, flags: DIFlagFwdDecl)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1176, file: !20, line: 2087, baseType: !3479, size: 64, offset: 1536)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1176, file: !20, line: 2089, baseType: !715, size: 64, offset: 1600)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !681, file: !20, line: 1198, baseType: !3496, size: 64, offset: 448)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3498)
!3498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !75, line: 324, size: 704, elements: !3499)
!3499 = !{!3500, !3504, !3508, !3512, !3513, !3514, !3515, !3516, !3521, !3526, !3530}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !3498, file: !75, line: 325, baseType: !3501, size: 64)
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3502, size: 64)
!3502 = !DISubroutineType(types: !3503)
!3503 = !{!115, !3436}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !3498, file: !75, line: 326, baseType: !3505, size: 64, offset: 64)
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3506 = !DISubroutineType(types: !3507)
!3507 = !{!3436, !680, !115}
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !3498, file: !75, line: 327, baseType: !3509, size: 64, offset: 128)
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3510 = !DISubroutineType(types: !3511)
!3511 = !{null, !3436}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !3498, file: !75, line: 328, baseType: !3501, size: 64, offset: 192)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !3498, file: !75, line: 329, baseType: !3501, size: 64, offset: 256)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !3498, file: !75, line: 330, baseType: !3501, size: 64, offset: 320)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !3498, file: !75, line: 331, baseType: !1204, size: 64, offset: 384)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !3498, file: !75, line: 334, baseType: !3517, size: 64, offset: 448)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = !DISubroutineType(types: !3519)
!3519 = !{!3520, !529}
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !3498, file: !75, line: 335, baseType: !3522, size: 64, offset: 512)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = !DISubroutineType(types: !3524)
!3524 = !{!115, !529, !3525}
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !3498, file: !75, line: 337, baseType: !3527, size: 64, offset: 576)
!3527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3528, size: 64)
!3528 = !DISubroutineType(types: !3529)
!3529 = !{!115, !529, !3520}
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3498, file: !75, line: 339, baseType: !3531, size: 64, offset: 640)
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3532, size: 64)
!3532 = !DISubroutineType(types: !3533)
!3533 = !{!115, !680, !3534}
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !681, file: !20, line: 1199, baseType: !3536, size: 64, offset: 512)
!3536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3537, size: 64)
!3537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3538)
!3538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !75, line: 430, size: 704, elements: !3539)
!3539 = !{!3540, !3546, !3547, !3551, !3552, !3553, !3568, !3591, !3595, !3596, !3619}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !3538, file: !75, line: 431, baseType: !3541, size: 64)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = !DISubroutineType(types: !3543)
!3543 = !{!115, !680, !115, !115, !3544}
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3545, size: 64)
!3545 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3244)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !3538, file: !75, line: 432, baseType: !1204, size: 64, offset: 64)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !3538, file: !75, line: 433, baseType: !3548, size: 64, offset: 128)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3549 = !DISubroutineType(types: !3550)
!3550 = !{!115, !680, !13}
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !3538, file: !75, line: 434, baseType: !3548, size: 64, offset: 192)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !3538, file: !75, line: 435, baseType: !1204, size: 64, offset: 256)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !3538, file: !75, line: 436, baseType: !3554, size: 64, offset: 320)
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = !DISubroutineType(types: !3556)
!3556 = !{!115, !680, !115, !3557}
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !75, line: 417, size: 256, elements: !3559)
!3559 = !{!3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567}
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !3558, file: !75, line: 418, baseType: !115, size: 32)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !3558, file: !75, line: 419, baseType: !13, size: 32, offset: 32)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !3558, file: !75, line: 420, baseType: !13, size: 32, offset: 64)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !3558, file: !75, line: 422, baseType: !13, size: 32, offset: 96)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !3558, file: !75, line: 423, baseType: !13, size: 32, offset: 128)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !3558, file: !75, line: 424, baseType: !13, size: 32, offset: 160)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !3558, file: !75, line: 425, baseType: !13, size: 32, offset: 192)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !3558, file: !75, line: 426, baseType: !13, size: 32, offset: 224)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !3538, file: !75, line: 437, baseType: !3569, size: 64, offset: 384)
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3570 = !DISubroutineType(types: !3571)
!3571 = !{!115, !680, !3448, !3572}
!3572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3573, size: 64)
!3573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !75, line: 345, size: 960, elements: !3574)
!3574 = !{!3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !3573, file: !75, line: 346, baseType: !115, size: 32)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !3573, file: !75, line: 347, baseType: !602, size: 64, offset: 64)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !3573, file: !75, line: 348, baseType: !602, size: 64, offset: 128)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !3573, file: !75, line: 349, baseType: !602, size: 64, offset: 192)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !3573, file: !75, line: 350, baseType: !602, size: 64, offset: 256)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !3573, file: !75, line: 351, baseType: !602, size: 64, offset: 320)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !3573, file: !75, line: 352, baseType: !602, size: 64, offset: 384)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !3573, file: !75, line: 353, baseType: !800, size: 64, offset: 448)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !3573, file: !75, line: 355, baseType: !800, size: 64, offset: 512)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !3573, file: !75, line: 356, baseType: !115, size: 32, offset: 576)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !3573, file: !75, line: 357, baseType: !115, size: 32, offset: 608)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !3573, file: !75, line: 358, baseType: !602, size: 64, offset: 640)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !3573, file: !75, line: 359, baseType: !602, size: 64, offset: 704)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !3573, file: !75, line: 360, baseType: !602, size: 64, offset: 768)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !3573, file: !75, line: 361, baseType: !800, size: 64, offset: 832)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !3573, file: !75, line: 362, baseType: !115, size: 32, offset: 896)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !3538, file: !75, line: 438, baseType: !3592, size: 64, offset: 448)
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3593, size: 64)
!3593 = !DISubroutineType(types: !3594)
!3594 = !{!115, !680, !3534, !3572}
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !3538, file: !75, line: 440, baseType: !3569, size: 64, offset: 512)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !3538, file: !75, line: 441, baseType: !3597, size: 64, offset: 576)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = !DISubroutineType(types: !3599)
!3599 = !{!115, !680, !3600}
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3601, size: 64)
!3601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !75, line: 411, size: 1408, elements: !3602)
!3602 = !{!3603, !3604}
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !3601, file: !75, line: 412, baseType: !13, size: 32)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !3601, file: !75, line: 413, baseType: !3605, size: 1344, offset: 64)
!3605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3606, size: 1344, elements: !450)
!3606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !75, line: 397, size: 448, elements: !3607)
!3607 = !{!3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3618}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3606, file: !75, line: 398, baseType: !13, size: 32)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !3606, file: !75, line: 399, baseType: !13, size: 32, offset: 32)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !3606, file: !75, line: 401, baseType: !13, size: 32, offset: 64)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !3606, file: !75, line: 402, baseType: !13, size: 32, offset: 96)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !3606, file: !75, line: 403, baseType: !13, size: 32, offset: 128)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !3606, file: !75, line: 404, baseType: !13, size: 32, offset: 160)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !3606, file: !75, line: 405, baseType: !13, size: 32, offset: 192)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3606, file: !75, line: 406, baseType: !604, size: 64, offset: 256)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3606, file: !75, line: 407, baseType: !3617, size: 64, offset: 320)
!3617 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !333, line: 132, baseType: !602)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !3606, file: !75, line: 408, baseType: !3617, size: 64, offset: 384)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !3538, file: !75, line: 442, baseType: !3548, size: 64, offset: 640)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !681, file: !20, line: 1200, baseType: !3621, size: 64, offset: 576)
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3623)
!3623 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !20, line: 54, flags: DIFlagFwdDecl)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !681, file: !20, line: 1201, baseType: !499, size: 64, offset: 640)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !681, file: !20, line: 1202, baseType: !499, size: 64, offset: 704)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !681, file: !20, line: 1203, baseType: !499, size: 64, offset: 768)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !681, file: !20, line: 1204, baseType: !564, size: 64, offset: 832)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !681, file: !20, line: 1205, baseType: !1701, size: 320, offset: 896)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !681, file: !20, line: 1206, baseType: !115, size: 32, offset: 1216)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !681, file: !20, line: 1207, baseType: !354, size: 32, offset: 1248)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !681, file: !20, line: 1209, baseType: !334, size: 64, offset: 1280)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !681, file: !20, line: 1211, baseType: !3633, size: 64, offset: 1344)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3636)
!3636 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !20, line: 1211, flags: DIFlagFwdDecl)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !681, file: !20, line: 1223, baseType: !3638, size: 64, offset: 1408)
!3638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !581, line: 34, size: 64, elements: !3639)
!3639 = !{!3640}
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3638, file: !581, line: 35, baseType: !584, size: 64)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !681, file: !20, line: 1224, baseType: !370, size: 128, offset: 1472)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !681, file: !20, line: 1225, baseType: !3643, size: 64, offset: 1600)
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3644, size: 64)
!3644 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !20, line: 1225, flags: DIFlagFwdDecl)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !681, file: !20, line: 1226, baseType: !3646, size: 64, offset: 1664)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !20, line: 1226, flags: DIFlagFwdDecl)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !681, file: !20, line: 1227, baseType: !3649, size: 64, offset: 1728)
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64)
!3650 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !20, line: 50, flags: DIFlagFwdDecl)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !681, file: !20, line: 1228, baseType: !3652, size: 64, offset: 1792)
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3653, size: 64)
!3653 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !20, line: 1228, flags: DIFlagFwdDecl)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !681, file: !20, line: 1229, baseType: !1036, size: 128, offset: 1856)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !681, file: !20, line: 1230, baseType: !13, size: 32, offset: 1984)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !681, file: !20, line: 1231, baseType: !3657, size: 2496, offset: 2048)
!3657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !75, line: 521, size: 2496, elements: !3658)
!3658 = !{!3659, !3660, !3661, !3663, !3695}
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3657, file: !75, line: 522, baseType: !13, size: 32)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3657, file: !75, line: 523, baseType: !1701, size: 320, offset: 64)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3657, file: !75, line: 524, baseType: !3662, size: 192, offset: 384)
!3662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !529, size: 192, elements: !450)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3657, file: !75, line: 525, baseType: !3664, size: 1728, offset: 576)
!3664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3665, size: 1728, elements: !450)
!3665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !75, line: 222, size: 576, elements: !3666)
!3666 = !{!3667, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3665, file: !75, line: 223, baseType: !3668, size: 64)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !75, line: 445, size: 256, elements: !3670)
!3670 = !{!3671, !3672, !3685, !3686}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3669, file: !75, line: 446, baseType: !115, size: 32)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3669, file: !75, line: 447, baseType: !3673, size: 64, offset: 64)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3675)
!3675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !75, line: 312, size: 512, elements: !3676)
!3676 = !{!3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684}
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3675, file: !75, line: 313, baseType: !1204, size: 64)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3675, file: !75, line: 314, baseType: !1204, size: 64, offset: 64)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3675, file: !75, line: 315, baseType: !1204, size: 64, offset: 128)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3675, file: !75, line: 316, baseType: !1204, size: 64, offset: 192)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3675, file: !75, line: 317, baseType: !3501, size: 64, offset: 256)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3675, file: !75, line: 318, baseType: !3501, size: 64, offset: 320)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3675, file: !75, line: 319, baseType: !3501, size: 64, offset: 384)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3675, file: !75, line: 320, baseType: !3531, size: 64, offset: 448)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3669, file: !75, line: 448, baseType: !719, size: 64, offset: 128)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3669, file: !75, line: 449, baseType: !3668, size: 64, offset: 192)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3665, file: !75, line: 224, baseType: !115, size: 32, offset: 64)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3665, file: !75, line: 226, baseType: !370, size: 128, offset: 128)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3665, file: !75, line: 227, baseType: !499, size: 64, offset: 256)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3665, file: !75, line: 228, baseType: !13, size: 32, offset: 320)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3665, file: !75, line: 229, baseType: !13, size: 32, offset: 352)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3665, file: !75, line: 230, baseType: !3469, size: 64, offset: 384)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3665, file: !75, line: 231, baseType: !3469, size: 64, offset: 448)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3665, file: !75, line: 232, baseType: !334, size: 64, offset: 512)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3657, file: !75, line: 526, baseType: !3696, size: 192, offset: 2304)
!3696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3673, size: 192, elements: !450)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !681, file: !20, line: 1233, baseType: !3698, size: 2368, offset: 4544)
!3698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !20, line: 1184, size: 2368, elements: !3699)
!3699 = !{!3700, !3701, !3702}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3698, file: !20, line: 1185, baseType: !419, size: 16)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3698, file: !20, line: 1186, baseType: !419, size: 16, offset: 16)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3698, file: !20, line: 1187, baseType: !3703, size: 2304, offset: 64)
!3703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3704, size: 2304, elements: !450)
!3704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3705, line: 12, size: 768, elements: !3706)
!3705 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3706 = !{!3707, !3715, !3716, !3721, !3722}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3704, file: !3705, line: 13, baseType: !3708, size: 384)
!3708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3709, line: 17, size: 384, elements: !3710)
!3709 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3710 = !{!3711, !3712, !3713, !3714}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3708, file: !3709, line: 18, baseType: !115, size: 32)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3708, file: !3709, line: 19, baseType: !115, size: 32, offset: 32)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3708, file: !3709, line: 20, baseType: !1325, size: 192, offset: 64)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3708, file: !3709, line: 22, baseType: !1010, size: 128, align: 64, offset: 256)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3704, file: !3705, line: 14, baseType: !862, size: 64, offset: 384)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3704, file: !3705, line: 15, baseType: !3717, size: 64, offset: 448)
!3717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3718, line: 16, size: 64, elements: !3719)
!3718 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3719 = !{!3720}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3717, file: !3718, line: 17, baseType: !1358, size: 64)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3704, file: !3705, line: 16, baseType: !1325, size: 192, offset: 512)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3704, file: !3705, line: 17, baseType: !354, size: 32, offset: 704)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !681, file: !20, line: 1240, baseType: !334, size: 64, offset: 6912)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !681, file: !20, line: 1243, baseType: !598, size: 32, offset: 6976)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !681, file: !20, line: 1245, baseType: !2004, size: 64, offset: 7040)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !681, file: !20, line: 1246, baseType: !2004, size: 64, offset: 7104)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !681, file: !20, line: 1248, baseType: !599, size: 32, offset: 7168)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !681, file: !20, line: 1249, baseType: !3729, size: 64, offset: 7232)
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !20, line: 634, flags: DIFlagFwdDecl)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !681, file: !20, line: 1252, baseType: !3732, size: 256, offset: 7296)
!3732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !611)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !681, file: !20, line: 1253, baseType: !3734, size: 128, offset: 7552)
!3734 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3735, line: 21, baseType: !3736)
!3735 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3736 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3735, line: 19, size: 128, elements: !3737)
!3737 = !{!3738}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3736, file: !3735, line: 20, baseType: !3739, size: 128)
!3739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !409, size: 128, elements: !2141)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !681, file: !20, line: 1255, baseType: !13, size: 32, offset: 7680)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !681, file: !20, line: 1261, baseType: !790, size: 256, offset: 7744)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !681, file: !20, line: 1267, baseType: !367, size: 64, offset: 8000)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !681, file: !20, line: 1269, baseType: !627, size: 64, offset: 8064)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !681, file: !20, line: 1271, baseType: !3745, size: 448, offset: 8128)
!3745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !3484, line: 63, size: 448, elements: !3746)
!3746 = !{!3747, !3752, !3753, !3754, !3755, !3756, !3757}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3745, file: !3484, line: 64, baseType: !3748, size: 64)
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3749 = !DISubroutineType(types: !3750)
!3750 = !{!499, !3751, !3482}
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3745, file: !3484, line: 66, baseType: !3748, size: 64, offset: 64)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3745, file: !3484, line: 69, baseType: !485, size: 64, offset: 128)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3745, file: !3484, line: 70, baseType: !115, size: 32, offset: 192)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3745, file: !3484, line: 71, baseType: !13, size: 32, offset: 224)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3745, file: !3484, line: 74, baseType: !370, size: 128, offset: 256)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3745, file: !3484, line: 85, baseType: !3758, size: 64, offset: 384)
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !681, file: !20, line: 1274, baseType: !794, size: 64, offset: 8576)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !681, file: !20, line: 1280, baseType: !794, size: 64, offset: 8640)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !681, file: !20, line: 1283, baseType: !115, size: 32, offset: 8704)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !681, file: !20, line: 1286, baseType: !3416, size: 32, offset: 8736)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !681, file: !20, line: 1289, baseType: !1112, size: 64, offset: 8768)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !681, file: !20, line: 1290, baseType: !1160, size: 64, offset: 8832)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !681, file: !20, line: 1297, baseType: !1801, size: 64, offset: 8896)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !681, file: !20, line: 1304, baseType: !3767, size: 64, offset: 8960)
!3767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3768, line: 49, size: 64, elements: !3769)
!3768 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3769 = !{!3770}
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3767, file: !3768, line: 50, baseType: !3771, size: 64)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3768, line: 41, size: 512, align: 512, elements: !3773)
!3773 = !{!3774, !3775, !3780}
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3772, file: !3768, line: 43, baseType: !383, size: 32)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3772, file: !3768, line: 45, baseType: !3776, size: 192, offset: 64)
!3776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3768, line: 29, size: 192, elements: !3777)
!3777 = !{!3778, !3779}
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3776, file: !3768, line: 30, baseType: !370, size: 128)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3776, file: !3768, line: 32, baseType: !485, size: 64, offset: 128)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3772, file: !3768, line: 46, baseType: !485, size: 64, offset: 256)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !681, file: !20, line: 1305, baseType: !3767, size: 64, offset: 9024)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !681, file: !20, line: 1306, baseType: !1010, size: 128, align: 64, offset: 9088)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !681, file: !20, line: 1307, baseType: !1050, size: 256, offset: 9216)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !681, file: !20, line: 1309, baseType: !790, size: 256, offset: 9472)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !681, file: !20, line: 1314, baseType: !115, size: 32, offset: 9728)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !681, file: !20, line: 1317, baseType: !383, size: 32, align: 512, offset: 10240)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !681, file: !20, line: 1318, baseType: !370, size: 128, offset: 10304)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !681, file: !20, line: 1320, baseType: !383, size: 32, offset: 10432)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !681, file: !20, line: 1321, baseType: !370, size: 128, offset: 10496)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !675, file: !676, line: 73, baseType: !115, size: 32, offset: 128)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !675, file: !676, line: 74, baseType: !3792, size: 64, offset: 192)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1972, line: 42, flags: DIFlagFwdDecl)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3244, size: 64)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !629, file: !566, line: 141, baseType: !3796, size: 64, offset: 704)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = !DISubroutineType(types: !3798)
!3798 = !{!115, !3544, !870}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !629, file: !566, line: 142, baseType: !3800, size: 64, offset: 768)
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = !DISubroutineType(types: !3802)
!3802 = !{!564, !564, !3803}
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !530)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !565, file: !566, line: 96, baseType: !680, size: 64, offset: 832)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !565, file: !566, line: 97, baseType: !499, size: 64, offset: 896)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !565, file: !566, line: 98, baseType: !334, size: 64, offset: 960)
!3808 = !DIDerivedType(tag: DW_TAG_member, scope: !565, file: !566, line: 100, baseType: !3809, size: 128, offset: 1024)
!3809 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !565, file: !566, line: 100, size: 128, elements: !3810)
!3810 = !{!3811, !3812}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3809, file: !566, line: 101, baseType: !370, size: 128)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3809, file: !566, line: 102, baseType: !3813, size: 64)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !565, file: !566, line: 104, baseType: !370, size: 128, offset: 1152)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !565, file: !566, line: 105, baseType: !370, size: 128, offset: 1280)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !565, file: !566, line: 113, baseType: !3817, size: 128, offset: 1408)
!3817 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !565, file: !566, line: 109, size: 128, elements: !3818)
!3818 = !{!3819, !3820, !3821}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3817, file: !566, line: 110, baseType: !1036, size: 128)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3817, file: !566, line: 111, baseType: !580, size: 128)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3817, file: !566, line: 112, baseType: !1010, size: 128, align: 64)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !558, file: !20, line: 1968, baseType: !3823, size: 64, offset: 64)
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3824, size: 64)
!3824 = !DISubroutineType(types: !3825)
!3825 = !{!367, !564, !529, !3826}
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3828, line: 10, size: 128, elements: !3829)
!3828 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3829 = !{!3830, !3831}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3827, file: !3828, line: 11, baseType: !833, size: 64)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3827, file: !3828, line: 12, baseType: !334, size: 64, offset: 64)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !558, file: !20, line: 1969, baseType: !3833, size: 64, offset: 128)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = !DISubroutineType(types: !3835)
!3835 = !{!115, !3792, !529, !115}
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !558, file: !20, line: 1970, baseType: !3837, size: 64, offset: 192)
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3838, size: 64)
!3838 = !DISubroutineType(types: !3839)
!3839 = !{!552, !529, !115, !870}
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !558, file: !20, line: 1972, baseType: !3841, size: 64, offset: 256)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = !DISubroutineType(types: !3843)
!3843 = !{!115, !564, !449, !115}
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !558, file: !20, line: 1974, baseType: !3845, size: 64, offset: 320)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = !DISubroutineType(types: !3847)
!3847 = !{!115, !3792, !529, !564, !491, !870}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !558, file: !20, line: 1976, baseType: !3849, size: 64, offset: 384)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = !DISubroutineType(types: !3851)
!3851 = !{!115, !564, !529, !564}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !558, file: !20, line: 1977, baseType: !3853, size: 64, offset: 448)
!3853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3854, size: 64)
!3854 = !DISubroutineType(types: !3855)
!3855 = !{!115, !529, !564}
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !558, file: !20, line: 1978, baseType: !3857, size: 64, offset: 512)
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3858 = !DISubroutineType(types: !3859)
!3859 = !{!115, !3792, !529, !564, !367}
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !558, file: !20, line: 1980, baseType: !3861, size: 64, offset: 576)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = !DISubroutineType(types: !3863)
!3863 = !{!115, !3792, !529, !564, !491}
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !558, file: !20, line: 1982, baseType: !3853, size: 64, offset: 640)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !558, file: !20, line: 1983, baseType: !3866, size: 64, offset: 704)
!3866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3867, size: 64)
!3867 = !DISubroutineType(types: !3868)
!3868 = !{!115, !3792, !529, !564, !491, !685}
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !558, file: !20, line: 1985, baseType: !3870, size: 64, offset: 768)
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3871 = !DISubroutineType(types: !3872)
!3872 = !{!115, !3792, !529, !564, !529, !564, !13}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !558, file: !20, line: 1987, baseType: !3874, size: 64, offset: 832)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = !DISubroutineType(types: !3876)
!3876 = !{!115, !3792, !564, !3877}
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !20, line: 226, size: 640, elements: !3879)
!3879 = !{!3880, !3881, !3882, !3892, !3901, !3902, !3907, !3908, !3909}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3878, file: !20, line: 227, baseType: !13, size: 32)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3878, file: !20, line: 228, baseType: !491, size: 16, offset: 32)
!3882 = !DIDerivedType(tag: DW_TAG_member, scope: !3878, file: !20, line: 241, baseType: !3883, size: 32, offset: 64)
!3883 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3878, file: !20, line: 241, size: 32, elements: !3884)
!3884 = !{!3885, !3886}
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3883, file: !20, line: 242, baseType: !535, size: 32)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3883, file: !20, line: 243, baseType: !3887, size: 32)
!3887 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3888, line: 16, baseType: !3889)
!3888 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3889 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3888, line: 14, size: 32, elements: !3890)
!3890 = !{!3891}
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3889, file: !3888, line: 15, baseType: !540, size: 32)
!3892 = !DIDerivedType(tag: DW_TAG_member, scope: !3878, file: !20, line: 245, baseType: !3893, size: 32, offset: 96)
!3893 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3878, file: !20, line: 245, size: 32, elements: !3894)
!3894 = !{!3895, !3896}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3893, file: !20, line: 246, baseType: !544, size: 32)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3893, file: !20, line: 247, baseType: !3897, size: 32)
!3897 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3888, line: 20, baseType: !3898)
!3898 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3888, line: 18, size: 32, elements: !3899)
!3899 = !{!3900}
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3898, file: !3888, line: 19, baseType: !548, size: 32)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3878, file: !20, line: 249, baseType: !690, size: 64, offset: 128)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3878, file: !20, line: 250, baseType: !3903, size: 128, offset: 192)
!3903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !2005, line: 13, size: 128, elements: !3904)
!3904 = !{!3905, !3906}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3903, file: !2005, line: 14, baseType: !2004, size: 64)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3903, file: !2005, line: 15, baseType: !485, size: 64, offset: 64)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3878, file: !20, line: 251, baseType: !3903, size: 128, offset: 320)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3878, file: !20, line: 252, baseType: !3903, size: 128, offset: 448)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3878, file: !20, line: 259, baseType: !1673, size: 64, offset: 576)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !558, file: !20, line: 1988, baseType: !3911, size: 64, offset: 896)
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64)
!3912 = !DISubroutineType(types: !3913)
!3913 = !{!115, !3792, !3544, !3914, !598, !13}
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3916, line: 22, size: 1280, elements: !3917)
!3916 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3917 = !{!3918, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3915, file: !3916, line: 23, baseType: !598, size: 32)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3915, file: !3916, line: 24, baseType: !491, size: 16, offset: 32)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3915, file: !3916, line: 25, baseType: !13, size: 32, offset: 64)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3915, file: !3916, line: 26, baseType: !2012, size: 32, offset: 96)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3915, file: !3916, line: 27, baseType: !602, size: 64, offset: 128)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3915, file: !3916, line: 28, baseType: !602, size: 64, offset: 192)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3915, file: !3916, line: 41, baseType: !602, size: 64, offset: 256)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3915, file: !3916, line: 42, baseType: !685, size: 32, offset: 320)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3915, file: !3916, line: 43, baseType: !685, size: 32, offset: 352)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3915, file: !3916, line: 44, baseType: !535, size: 32, offset: 384)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3915, file: !3916, line: 45, baseType: !544, size: 32, offset: 416)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3915, file: !3916, line: 46, baseType: !690, size: 64, offset: 448)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3915, file: !3916, line: 47, baseType: !3903, size: 128, offset: 512)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3915, file: !3916, line: 48, baseType: !3903, size: 128, offset: 640)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3915, file: !3916, line: 49, baseType: !3903, size: 128, offset: 768)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3915, file: !3916, line: 50, baseType: !3903, size: 128, offset: 896)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3915, file: !3916, line: 51, baseType: !602, size: 64, offset: 1024)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3915, file: !3916, line: 52, baseType: !602, size: 64, offset: 1088)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3915, file: !3916, line: 53, baseType: !598, size: 32, offset: 1152)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3915, file: !3916, line: 54, baseType: !598, size: 32, offset: 1184)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3915, file: !3916, line: 55, baseType: !602, size: 64, offset: 1216)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !558, file: !20, line: 1990, baseType: !3940, size: 64, offset: 960)
!3940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3941, size: 64)
!3941 = !DISubroutineType(types: !3942)
!3942 = !{!481, !564, !449, !496}
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !558, file: !20, line: 1991, baseType: !3944, size: 64, offset: 1024)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = !DISubroutineType(types: !3946)
!3946 = !{!115, !529, !3947, !602, !602}
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !20, line: 55, flags: DIFlagFwdDecl)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !558, file: !20, line: 1993, baseType: !3950, size: 64, offset: 1088)
!3950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3951, size: 64)
!3951 = !DISubroutineType(types: !3952)
!3952 = !{!115, !529, !115}
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !558, file: !20, line: 1994, baseType: !3954, size: 64, offset: 1152)
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3955, size: 64)
!3955 = !DISubroutineType(types: !3956)
!3956 = !{!115, !529, !564, !1673, !13, !491}
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !558, file: !20, line: 1997, baseType: !3958, size: 64, offset: 1216)
!3958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3959, size: 64)
!3959 = !DISubroutineType(types: !3960)
!3960 = !{!115, !3792, !529, !1673, !491}
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !558, file: !20, line: 1999, baseType: !3962, size: 64, offset: 1280)
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!3963 = !DISubroutineType(types: !3964)
!3964 = !{!552, !3792, !564, !115}
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !558, file: !20, line: 2001, baseType: !3966, size: 64, offset: 1344)
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3967 = !DISubroutineType(types: !3968)
!3968 = !{!115, !3792, !564, !552, !115}
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !558, file: !20, line: 2003, baseType: !3970, size: 64, offset: 1408)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{!115, !3792, !564, !3973}
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3974, size: 64)
!3974 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !20, line: 76, flags: DIFlagFwdDecl)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !558, file: !20, line: 2005, baseType: !3976, size: 64, offset: 1472)
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!3977 = !DISubroutineType(types: !3978)
!3978 = !{!115, !564, !3973}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !558, file: !20, line: 2006, baseType: !3980, size: 64, offset: 1536)
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3981, size: 64)
!3981 = !DISubroutineType(types: !3982)
!3982 = !{!3983, !529}
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !20, line: 3192, size: 192, elements: !3985)
!3985 = !{!3986, !3987}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3984, file: !20, line: 3193, baseType: !1347, size: 128)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3984, file: !20, line: 3194, baseType: !598, size: 32, offset: 128)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !530, file: !20, line: 655, baseType: !680, size: 64, offset: 448)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !530, file: !20, line: 656, baseType: !525, size: 64, offset: 512)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !530, file: !20, line: 659, baseType: !334, size: 64, offset: 576)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !530, file: !20, line: 663, baseType: !499, size: 64, offset: 640)
!3992 = !DIDerivedType(tag: DW_TAG_member, scope: !530, file: !20, line: 671, baseType: !3993, size: 32, offset: 704)
!3993 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !530, file: !20, line: 671, size: 32, elements: !3994)
!3994 = !{!3995, !3997}
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3993, file: !20, line: 672, baseType: !3996, size: 32)
!3996 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3993, file: !20, line: 673, baseType: !13, size: 32)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !530, file: !20, line: 675, baseType: !685, size: 32, offset: 736)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !530, file: !20, line: 676, baseType: !690, size: 64, offset: 768)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !530, file: !20, line: 677, baseType: !3903, size: 128, offset: 832)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !530, file: !20, line: 678, baseType: !3903, size: 128, offset: 960)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !530, file: !20, line: 679, baseType: !3903, size: 128, offset: 1088)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !530, file: !20, line: 680, baseType: !383, size: 32, offset: 1216)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !530, file: !20, line: 681, baseType: !419, size: 16, offset: 1248)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !530, file: !20, line: 682, baseType: !407, size: 8, offset: 1264)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !530, file: !20, line: 683, baseType: !407, size: 8, offset: 1272)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !530, file: !20, line: 684, baseType: !3617, size: 64, offset: 1280)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !530, file: !20, line: 691, baseType: !499, size: 64, offset: 1344)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !530, file: !20, line: 692, baseType: !1701, size: 320, offset: 1408)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !530, file: !20, line: 694, baseType: !499, size: 64, offset: 1728)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !530, file: !20, line: 695, baseType: !499, size: 64, offset: 1792)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !530, file: !20, line: 697, baseType: !1036, size: 128, offset: 1856)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !530, file: !20, line: 698, baseType: !370, size: 128, offset: 1984)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !530, file: !20, line: 707, baseType: !370, size: 128, offset: 2112)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !530, file: !20, line: 708, baseType: !370, size: 128, offset: 2240)
!4016 = !DIDerivedType(tag: DW_TAG_member, scope: !530, file: !20, line: 709, baseType: !4017, size: 128, offset: 2368)
!4017 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !530, file: !20, line: 709, size: 128, elements: !4018)
!4018 = !{!4019, !4020}
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4017, file: !20, line: 710, baseType: !1160, size: 64)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4017, file: !20, line: 711, baseType: !1010, size: 128, align: 64)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !530, file: !20, line: 713, baseType: !796, size: 64, offset: 2496)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !530, file: !20, line: 714, baseType: !796, size: 64, offset: 2560)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !530, file: !20, line: 715, baseType: !354, size: 32, offset: 2624)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !530, file: !20, line: 716, baseType: !354, size: 32, offset: 2656)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !530, file: !20, line: 717, baseType: !354, size: 32, offset: 2688)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !530, file: !20, line: 719, baseType: !354, size: 32, offset: 2720)
!4027 = !DIDerivedType(tag: DW_TAG_member, scope: !530, file: !20, line: 721, baseType: !4028, size: 64, offset: 2752)
!4028 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !530, file: !20, line: 721, size: 64, elements: !4029)
!4029 = !{!4030, !4031}
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4028, file: !20, line: 722, baseType: !3251, size: 64)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4028, file: !20, line: 723, baseType: !1183, size: 64)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !530, file: !20, line: 725, baseType: !4033, size: 64, offset: 2816)
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4034, size: 64)
!4034 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !20, line: 725, flags: DIFlagFwdDecl)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !530, file: !20, line: 726, baseType: !526, size: 1536, align: 64, offset: 2880)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !530, file: !20, line: 727, baseType: !370, size: 128, offset: 4416)
!4037 = !DIDerivedType(tag: DW_TAG_member, scope: !530, file: !20, line: 728, baseType: !4038, size: 64, offset: 4544)
!4038 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !530, file: !20, line: 728, size: 64, elements: !4039)
!4039 = !{!4040, !4041, !4044, !4045}
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4038, file: !20, line: 729, baseType: !2583, size: 64)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4038, file: !20, line: 730, baseType: !4042, size: 64)
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4043, size: 64)
!4043 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !20, line: 730, flags: DIFlagFwdDecl)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4038, file: !20, line: 731, baseType: !449, size: 64)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4038, file: !20, line: 732, baseType: !13, size: 32)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !530, file: !20, line: 735, baseType: !599, size: 32, offset: 4608)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !530, file: !20, line: 738, baseType: !599, size: 32, offset: 4640)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !530, file: !20, line: 739, baseType: !3729, size: 64, offset: 4672)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !530, file: !20, line: 750, baseType: !334, size: 64, offset: 4736)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !526, file: !20, line: 474, baseType: !1347, size: 128, offset: 64)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !526, file: !20, line: 475, baseType: !1701, size: 320, offset: 192)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !526, file: !20, line: 476, baseType: !332, size: 32, offset: 512)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !526, file: !20, line: 477, baseType: !354, size: 32, offset: 544)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !526, file: !20, line: 482, baseType: !1529, size: 128, offset: 576)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !526, file: !20, line: 483, baseType: !499, size: 64, offset: 704)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !526, file: !20, line: 484, baseType: !499, size: 64, offset: 768)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !526, file: !20, line: 485, baseType: !4058, size: 64, offset: 832)
!4058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4059, size: 64)
!4059 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4060)
!4060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !20, line: 404, size: 1280, elements: !4061)
!4061 = !{!4062, !4066, !4136, !4140, !4144, !4150, !4155, !4159, !4164, !4168, !4172, !4176, !4177, !4181, !4185, !4189, !4194, !4198, !4205, !4206}
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !4060, file: !20, line: 405, baseType: !4063, size: 64)
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4064, size: 64)
!4064 = !DISubroutineType(types: !4065)
!4065 = !{!115, !2589, !1195}
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !4060, file: !20, line: 406, baseType: !4067, size: 64, offset: 64)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = !DISubroutineType(types: !4069)
!4069 = !{!115, !1673, !4070}
!4070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4071, size: 64)
!4071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !44, line: 293, size: 1536, elements: !4072)
!4072 = !{!4073, !4103, !4117}
!4073 = !DIDerivedType(tag: DW_TAG_member, scope: !4071, file: !44, line: 295, baseType: !4074, size: 512)
!4074 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4071, file: !44, line: 295, size: 512, elements: !4075)
!4075 = !{!4076, !4102}
!4076 = !DIDerivedType(tag: DW_TAG_member, scope: !4074, file: !44, line: 296, baseType: !4077, size: 448)
!4077 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4074, file: !44, line: 296, size: 448, elements: !4078)
!4078 = !{!4079, !4080, !4089, !4090, !4091, !4100, !4101}
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4077, file: !44, line: 298, baseType: !499, size: 64)
!4080 = !DIDerivedType(tag: DW_TAG_member, scope: !4077, file: !44, line: 299, baseType: !4081, size: 128, offset: 64)
!4081 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4077, file: !44, line: 299, size: 128, elements: !4082)
!4082 = !{!4083, !4084}
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4081, file: !44, line: 300, baseType: !370, size: 128)
!4084 = !DIDerivedType(tag: DW_TAG_member, scope: !4081, file: !44, line: 302, baseType: !4085, size: 128)
!4085 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4081, file: !44, line: 302, size: 128, elements: !4086)
!4086 = !{!4087, !4088}
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !4085, file: !44, line: 303, baseType: !334, size: 64)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !4085, file: !44, line: 305, baseType: !13, size: 32, offset: 64)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4077, file: !44, line: 310, baseType: !525, size: 64, offset: 192)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4077, file: !44, line: 311, baseType: !499, size: 64, offset: 256)
!4091 = !DIDerivedType(tag: DW_TAG_member, scope: !4077, file: !44, line: 312, baseType: !4092, size: 64, offset: 320)
!4092 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4077, file: !44, line: 312, size: 64, elements: !4093)
!4093 = !{!4094, !4095}
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4092, file: !44, line: 313, baseType: !334, size: 64)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !4092, file: !44, line: 314, baseType: !4096, size: 64)
!4096 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !44, line: 257, baseType: !4097)
!4097 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !44, line: 255, size: 64, elements: !4098)
!4098 = !{!4099}
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4097, file: !44, line: 256, baseType: !499, size: 64)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4077, file: !44, line: 316, baseType: !354, size: 32, offset: 384)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !4077, file: !44, line: 317, baseType: !354, size: 32, offset: 416)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4074, file: !44, line: 323, baseType: !2590, size: 512, align: 128)
!4103 = !DIDerivedType(tag: DW_TAG_member, scope: !4071, file: !44, line: 325, baseType: !4104, size: 512, offset: 512)
!4104 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4071, file: !44, line: 325, size: 512, elements: !4105)
!4105 = !{!4106, !4116}
!4106 = !DIDerivedType(tag: DW_TAG_member, scope: !4104, file: !44, line: 326, baseType: !4107, size: 320)
!4107 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4104, file: !44, line: 326, size: 320, elements: !4108)
!4108 = !{!4109, !4110, !4111, !4112, !4113, !4114, !4115}
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !4107, file: !44, line: 327, baseType: !499, size: 64)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !4107, file: !44, line: 328, baseType: !499, size: 64, offset: 64)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !4107, file: !44, line: 329, baseType: !499, size: 64, offset: 128)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !4107, file: !44, line: 331, baseType: !354, size: 32, offset: 192)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !4107, file: !44, line: 332, baseType: !354, size: 32, offset: 224)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !4107, file: !44, line: 333, baseType: !354, size: 32, offset: 256)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !4107, file: !44, line: 335, baseType: !13, size: 32, offset: 288)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !4104, file: !44, line: 339, baseType: !2590, size: 512, align: 128)
!4117 = !DIDerivedType(tag: DW_TAG_member, scope: !4071, file: !44, line: 341, baseType: !4118, size: 512, offset: 1024)
!4118 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4071, file: !44, line: 341, size: 512, elements: !4119)
!4119 = !{!4120, !4129, !4135}
!4120 = !DIDerivedType(tag: DW_TAG_member, scope: !4118, file: !44, line: 342, baseType: !4121, size: 384)
!4121 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4118, file: !44, line: 342, size: 384, elements: !4122)
!4122 = !{!4123, !4124, !4125, !4126, !4127, !4128}
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !4121, file: !44, line: 343, baseType: !499, size: 64)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !4121, file: !44, line: 344, baseType: !499, size: 64, offset: 64)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !4121, file: !44, line: 346, baseType: !334, size: 64, offset: 128)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !4121, file: !44, line: 347, baseType: !334, size: 64, offset: 192)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !4121, file: !44, line: 348, baseType: !334, size: 64, offset: 256)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !4121, file: !44, line: 349, baseType: !334, size: 64, offset: 320)
!4129 = !DIDerivedType(tag: DW_TAG_member, scope: !4118, file: !44, line: 352, baseType: !4130, size: 256)
!4130 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4118, file: !44, line: 352, size: 256, elements: !4131)
!4131 = !{!4132, !4133, !4134}
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !4130, file: !44, line: 353, baseType: !499, size: 64)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !4130, file: !44, line: 354, baseType: !499, size: 64, offset: 64)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !4130, file: !44, line: 356, baseType: !370, size: 128, offset: 128)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !4118, file: !44, line: 359, baseType: !2590, size: 512, align: 128)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !4060, file: !20, line: 409, baseType: !4137, size: 64, offset: 128)
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = !DISubroutineType(types: !4139)
!4139 = !{!115, !525, !1195}
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !4060, file: !20, line: 412, baseType: !4141, size: 64, offset: 192)
!4141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4142, size: 64)
!4142 = !DISubroutineType(types: !4143)
!4143 = !{!870, !525, !4070}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !4060, file: !20, line: 414, baseType: !4145, size: 64, offset: 256)
!4145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4146, size: 64)
!4146 = !DISubroutineType(types: !4147)
!4147 = !{null, !4148}
!4148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4149, size: 64)
!4149 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !20, line: 310, flags: DIFlagFwdDecl)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !4060, file: !20, line: 416, baseType: !4151, size: 64, offset: 320)
!4151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4152, size: 64)
!4152 = !DISubroutineType(types: !4153)
!4153 = !{!115, !1673, !525, !690, !13, !4154, !3381}
!4154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2589, size: 64)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !4060, file: !20, line: 419, baseType: !4156, size: 64, offset: 384)
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4157, size: 64)
!4157 = !DISubroutineType(types: !4158)
!4158 = !{!115, !1673, !525, !690, !13, !13, !2589, !334}
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4060, file: !20, line: 424, baseType: !4160, size: 64, offset: 448)
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4161, size: 64)
!4161 = !DISubroutineType(types: !4162)
!4162 = !{!4163, !525, !4163}
!4163 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !333, line: 131, baseType: !602)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !4060, file: !20, line: 425, baseType: !4165, size: 64, offset: 512)
!4165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4166, size: 64)
!4166 = !DISubroutineType(types: !4167)
!4167 = !{null, !4070, !496, !496}
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !4060, file: !20, line: 426, baseType: !4169, size: 64, offset: 576)
!4169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4170, size: 64)
!4170 = !DISubroutineType(types: !4171)
!4171 = !{!870, !4070, !332}
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !4060, file: !20, line: 427, baseType: !4173, size: 64, offset: 640)
!4173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4174, size: 64)
!4174 = !DISubroutineType(types: !4175)
!4175 = !{null, !4070}
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !4060, file: !20, line: 428, baseType: !3269, size: 64, offset: 704)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !4060, file: !20, line: 433, baseType: !4178, size: 64, offset: 768)
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 64)
!4179 = !DISubroutineType(types: !4180)
!4180 = !{!115, !525, !4070, !4070, !80}
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !4060, file: !20, line: 435, baseType: !4182, size: 64, offset: 832)
!4182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4183, size: 64)
!4183 = !DISubroutineType(types: !4184)
!4184 = !{!115, !4070}
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !4060, file: !20, line: 436, baseType: !4186, size: 64, offset: 896)
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4187, size: 64)
!4187 = !DISubroutineType(types: !4188)
!4188 = !{!870, !4070, !496, !496}
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !4060, file: !20, line: 438, baseType: !4190, size: 64, offset: 960)
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4191, size: 64)
!4191 = !DISubroutineType(types: !4192)
!4192 = !{null, !4070, !4193, !4193}
!4193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !4060, file: !20, line: 439, baseType: !4195, size: 64, offset: 1024)
!4195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4196, size: 64)
!4196 = !DISubroutineType(types: !4197)
!4197 = !{!115, !525, !2589}
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !4060, file: !20, line: 442, baseType: !4199, size: 64, offset: 1088)
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4200, size: 64)
!4200 = !DISubroutineType(types: !4201)
!4201 = !{!115, !4202, !1673, !4204}
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4203 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !20, line: 66, flags: DIFlagFwdDecl)
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4163, size: 64)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !4060, file: !20, line: 444, baseType: !3373, size: 64, offset: 1152)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !4060, file: !20, line: 445, baseType: !4207, size: 64, offset: 1216)
!4207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4208, size: 64)
!4208 = !DISubroutineType(types: !4209)
!4209 = !{!115, !3272, !3294}
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !526, file: !20, line: 486, baseType: !499, size: 64, offset: 896)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !526, file: !20, line: 487, baseType: !1701, size: 320, offset: 960)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !526, file: !20, line: 488, baseType: !3416, size: 32, offset: 1280)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !526, file: !20, line: 489, baseType: !383, size: 32, offset: 1312)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !526, file: !20, line: 490, baseType: !370, size: 128, offset: 1344)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !526, file: !20, line: 491, baseType: !334, size: 64, offset: 1472)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !516, file: !475, line: 180, baseType: !4217, size: 64, offset: 320)
!4217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4218, size: 64)
!4218 = !DISubroutineType(types: !4219)
!4219 = !{!481, !1673, !376, !515, !449, !690, !496}
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !516, file: !475, line: 182, baseType: !4217, size: 64, offset: 384)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !516, file: !475, line: 184, baseType: !4222, size: 64, offset: 448)
!4222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4223, size: 64)
!4223 = !DISubroutineType(types: !4224)
!4224 = !{!115, !1673, !376, !515, !2699}
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !504, file: !475, line: 90, baseType: !4226, size: 64, offset: 192)
!4226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !504, file: !475, line: 91, baseType: !4228, size: 64, offset: 256)
!4228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !465, file: !364, line: 120, baseType: !4230, size: 64, offset: 192)
!4230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4231, size: 64)
!4231 = !DISubroutineType(types: !4232)
!4232 = !{!4233, !432}
!4233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4234, size: 64)
!4234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4235)
!4235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !88, line: 39, size: 384, elements: !4236)
!4236 = !{!4237, !4238, !4242, !4246, !4252, !4256}
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4235, file: !88, line: 40, baseType: !87, size: 32)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4235, file: !88, line: 41, baseType: !4239, size: 64, offset: 64)
!4239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4240, size: 64)
!4240 = !DISubroutineType(types: !4241)
!4241 = !{!870}
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4235, file: !88, line: 42, baseType: !4243, size: 64, offset: 128)
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4244 = !DISubroutineType(types: !4245)
!4245 = !{!334}
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4235, file: !88, line: 43, baseType: !4247, size: 64, offset: 192)
!4247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4248, size: 64)
!4248 = !DISubroutineType(types: !4249)
!4249 = !{!1778, !4250}
!4250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4251, size: 64)
!4251 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !88, line: 19, flags: DIFlagFwdDecl)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4235, file: !88, line: 44, baseType: !4253, size: 64, offset: 256)
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4254 = !DISubroutineType(types: !4255)
!4255 = !{!1778}
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4235, file: !88, line: 45, baseType: !833, size: 64, offset: 320)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !465, file: !364, line: 121, baseType: !4258, size: 64, offset: 256)
!4258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4259, size: 64)
!4259 = !DISubroutineType(types: !4260)
!4260 = !{!1778, !432}
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !465, file: !364, line: 122, baseType: !4262, size: 64, offset: 320)
!4262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4263, size: 64)
!4263 = !DISubroutineType(types: !4264)
!4264 = !{null, !432, !4265, !4266}
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!4266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !363, file: !364, line: 70, baseType: !4268, size: 64, offset: 384)
!4268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4269, size: 64)
!4269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !705, line: 190, size: 1152, elements: !4270)
!4270 = !{!4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4350, !4351, !4352, !4353, !4354, !4357}
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4269, file: !705, line: 191, baseType: !354, size: 32)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4269, file: !705, line: 192, baseType: !354, size: 32, offset: 32)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4269, file: !705, line: 202, baseType: !4268, size: 64, offset: 64)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4269, file: !705, line: 203, baseType: !367, size: 64, offset: 128)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4269, file: !705, line: 205, baseType: !902, size: 192, align: 64, offset: 192)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4269, file: !705, line: 207, baseType: !1778, size: 64, offset: 384)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4269, file: !705, line: 208, baseType: !13, size: 32, offset: 448)
!4278 = !DIDerivedType(tag: DW_TAG_member, scope: !4269, file: !705, line: 209, baseType: !4279, size: 256, offset: 512)
!4279 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4269, file: !705, line: 209, size: 256, elements: !4280)
!4280 = !{!4281, !4290, !4294}
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4279, file: !705, line: 210, baseType: !4282, size: 256)
!4282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !705, line: 153, size: 256, elements: !4283)
!4283 = !{!4284, !4285, !4286, !4289}
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4282, file: !705, line: 154, baseType: !499, size: 64)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4282, file: !705, line: 156, baseType: !1532, size: 64, offset: 64)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4282, file: !705, line: 162, baseType: !4287, size: 64, offset: 128)
!4287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4288, size: 64)
!4288 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !705, line: 162, flags: DIFlagFwdDecl)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4282, file: !705, line: 167, baseType: !499, size: 64, offset: 192)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4279, file: !705, line: 211, baseType: !4291, size: 64)
!4291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !705, line: 170, size: 64, elements: !4292)
!4292 = !{!4293}
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4291, file: !705, line: 171, baseType: !4268, size: 64)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4279, file: !705, line: 212, baseType: !4295, size: 256)
!4295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !705, line: 174, size: 256, elements: !4296)
!4296 = !{!4297, !4345, !4348, !4349}
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4295, file: !705, line: 175, baseType: !4298, size: 64)
!4298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4299, size: 64)
!4299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4300)
!4300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !705, line: 271, size: 768, elements: !4301)
!4301 = !{!4302, !4322, !4326, !4327, !4328, !4329, !4330, !4334, !4335, !4336, !4337, !4341}
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4300, file: !705, line: 276, baseType: !4303, size: 64)
!4303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4304, size: 64)
!4304 = !DISubroutineType(types: !4305)
!4305 = !{!115, !4306}
!4306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4307, size: 64)
!4307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !705, line: 251, size: 1216, elements: !4308)
!4308 = !{!4309, !4310, !4311, !4312, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321}
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4307, file: !705, line: 253, baseType: !4268, size: 64)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4307, file: !705, line: 254, baseType: !1673, size: 64, offset: 64)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4307, file: !705, line: 255, baseType: !1232, size: 64, offset: 128)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4307, file: !705, line: 256, baseType: !334, size: 64, offset: 192)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4307, file: !705, line: 259, baseType: !790, size: 256, offset: 256)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4307, file: !705, line: 260, baseType: !790, size: 256, offset: 512)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4307, file: !705, line: 261, baseType: !115, size: 32, offset: 768)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4307, file: !705, line: 262, baseType: !370, size: 128, offset: 832)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4307, file: !705, line: 263, baseType: !449, size: 64, offset: 960)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4307, file: !705, line: 265, baseType: !496, size: 64, offset: 1024)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4307, file: !705, line: 266, baseType: !870, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4307, file: !705, line: 267, baseType: !870, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4307, file: !705, line: 268, baseType: !2742, size: 64, offset: 1152)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4300, file: !705, line: 277, baseType: !4323, size: 64, offset: 64)
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4324 = !DISubroutineType(types: !4325)
!4325 = !{null, !4306}
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4300, file: !705, line: 290, baseType: !1263, size: 64, offset: 128)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4300, file: !705, line: 292, baseType: !1250, size: 64, offset: 192)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4300, file: !705, line: 293, baseType: !1259, size: 64, offset: 256)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4300, file: !705, line: 294, baseType: !1255, size: 64, offset: 320)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4300, file: !705, line: 296, baseType: !4331, size: 64, offset: 384)
!4331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4332, size: 64)
!4332 = !DISubroutineType(types: !4333)
!4333 = !{!481, !4306, !449, !496, !690}
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4300, file: !705, line: 306, baseType: !496, size: 64, offset: 448)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4300, file: !705, line: 313, baseType: !870, size: 8, offset: 512)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4300, file: !705, line: 314, baseType: !4331, size: 64, offset: 576)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4300, file: !705, line: 317, baseType: !4338, size: 64, offset: 640)
!4338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4339, size: 64)
!4339 = !DISubroutineType(types: !4340)
!4340 = !{!3320, !4306, !3322}
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4300, file: !705, line: 320, baseType: !4342, size: 64, offset: 704)
!4342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4343, size: 64)
!4343 = !DISubroutineType(types: !4344)
!4344 = !{!115, !4306, !2699}
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4295, file: !705, line: 176, baseType: !4346, size: 64, offset: 64)
!4346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4347, size: 64)
!4347 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !705, line: 35, flags: DIFlagFwdDecl)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4295, file: !705, line: 177, baseType: !690, size: 64, offset: 128)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4295, file: !705, line: 178, baseType: !4268, size: 64, offset: 192)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4269, file: !705, line: 215, baseType: !334, size: 64, offset: 768)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4269, file: !705, line: 221, baseType: !602, size: 64, offset: 832)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4269, file: !705, line: 223, baseType: !419, size: 16, offset: 896)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4269, file: !705, line: 224, baseType: !491, size: 16, offset: 912)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4269, file: !705, line: 225, baseType: !4355, size: 64, offset: 960)
!4355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4356, size: 64)
!4356 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !705, line: 36, flags: DIFlagFwdDecl)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4269, file: !705, line: 227, baseType: !1010, size: 128, align: 64, offset: 1024)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !363, file: !364, line: 71, baseType: !345, size: 32, offset: 448)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !363, file: !364, line: 73, baseType: !13, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !363, file: !364, line: 74, baseType: !13, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !363, file: !364, line: 75, baseType: !13, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !363, file: !364, line: 76, baseType: !13, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !363, file: !364, line: 77, baseType: !13, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !360, file: !100, line: 707, baseType: !359, size: 64, offset: 512)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !360, file: !100, line: 709, baseType: !4366, size: 64, offset: 576)
!4366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4367, size: 64)
!4367 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !100, line: 37, flags: DIFlagFwdDecl)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !360, file: !100, line: 711, baseType: !367, size: 64, offset: 640)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !360, file: !100, line: 712, baseType: !4370, size: 64, offset: 704)
!4370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4371, size: 64)
!4371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4372)
!4372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !100, line: 89, size: 384, elements: !4373)
!4373 = !{!4374, !4375, !4376, !4382, !4387, !4391}
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4372, file: !100, line: 90, baseType: !367, size: 64)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4372, file: !100, line: 91, baseType: !501, size: 64, offset: 64)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4372, file: !100, line: 92, baseType: !4377, size: 64, offset: 128)
!4377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4378, size: 64)
!4378 = !DISubroutineType(types: !4379)
!4379 = !{!115, !4380, !444}
!4380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4381, size: 64)
!4381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !360)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4372, file: !100, line: 93, baseType: !4383, size: 64, offset: 192)
!4383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4384, size: 64)
!4384 = !DISubroutineType(types: !4385)
!4385 = !{!449, !4380, !4386, !4265, !4266}
!4386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4372, file: !100, line: 95, baseType: !4388, size: 64, offset: 256)
!4388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4389, size: 64)
!4389 = !DISubroutineType(types: !4390)
!4390 = !{null, !359}
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4372, file: !100, line: 97, baseType: !4392, size: 64, offset: 320)
!4392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4393, size: 64)
!4393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4394)
!4394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !107, line: 286, size: 1472, elements: !4395)
!4395 = !{!4396, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421}
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4394, file: !107, line: 287, baseType: !4397, size: 64)
!4397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4398, size: 64)
!4398 = !DISubroutineType(types: !4399)
!4399 = !{!115, !359}
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4394, file: !107, line: 288, baseType: !4388, size: 64, offset: 64)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4394, file: !107, line: 289, baseType: !4397, size: 64, offset: 128)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4394, file: !107, line: 290, baseType: !4397, size: 64, offset: 192)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4394, file: !107, line: 291, baseType: !4397, size: 64, offset: 256)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4394, file: !107, line: 292, baseType: !4397, size: 64, offset: 320)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4394, file: !107, line: 293, baseType: !4397, size: 64, offset: 384)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4394, file: !107, line: 294, baseType: !4397, size: 64, offset: 448)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4394, file: !107, line: 295, baseType: !4397, size: 64, offset: 512)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4394, file: !107, line: 296, baseType: !4397, size: 64, offset: 576)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4394, file: !107, line: 297, baseType: !4397, size: 64, offset: 640)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4394, file: !107, line: 298, baseType: !4397, size: 64, offset: 704)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4394, file: !107, line: 299, baseType: !4397, size: 64, offset: 768)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4394, file: !107, line: 300, baseType: !4397, size: 64, offset: 832)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4394, file: !107, line: 301, baseType: !4397, size: 64, offset: 896)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4394, file: !107, line: 302, baseType: !4397, size: 64, offset: 960)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4394, file: !107, line: 303, baseType: !4397, size: 64, offset: 1024)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4394, file: !107, line: 304, baseType: !4397, size: 64, offset: 1088)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4394, file: !107, line: 305, baseType: !4397, size: 64, offset: 1152)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4394, file: !107, line: 306, baseType: !4397, size: 64, offset: 1216)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4394, file: !107, line: 307, baseType: !4397, size: 64, offset: 1280)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4394, file: !107, line: 308, baseType: !4397, size: 64, offset: 1344)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4394, file: !107, line: 309, baseType: !4397, size: 64, offset: 1408)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !360, file: !100, line: 714, baseType: !4423, size: 64, offset: 768)
!4423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4424, size: 64)
!4424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4425)
!4425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4426, line: 80, size: 1344, elements: !4427)
!4426 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4427 = !{!4428, !4429, !4430, !4431, !4432, !4433, !4474, !4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482, !4483, !4484, !4485, !4486, !4487, !4491}
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4425, file: !4426, line: 81, baseType: !367, size: 64)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4425, file: !4426, line: 82, baseType: !367, size: 64, offset: 64)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4425, file: !4426, line: 83, baseType: !501, size: 64, offset: 128)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4425, file: !4426, line: 84, baseType: !501, size: 64, offset: 192)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4425, file: !4426, line: 85, baseType: !501, size: 64, offset: 256)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4425, file: !4426, line: 87, baseType: !4434, size: 64, offset: 320)
!4434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4435, size: 64)
!4435 = !DISubroutineType(types: !4436)
!4436 = !{!115, !359, !4437}
!4437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4438, size: 64)
!4438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !94, line: 96, size: 1152, elements: !4439)
!4439 = !{!4440, !4441, !4442, !4443, !4444, !4445, !4446, !4450, !4454, !4455, !4456, !4457, !4458, !4466, !4467, !4468, !4469, !4470, !4471}
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4438, file: !94, line: 97, baseType: !367, size: 64)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4438, file: !94, line: 98, baseType: !4423, size: 64, offset: 64)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4438, file: !94, line: 100, baseType: !719, size: 64, offset: 128)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4438, file: !94, line: 101, baseType: !367, size: 64, offset: 192)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4438, file: !94, line: 103, baseType: !870, size: 8, offset: 256)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4438, file: !94, line: 104, baseType: !93, size: 32, offset: 288)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4438, file: !94, line: 106, baseType: !4447, size: 64, offset: 320)
!4447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4448, size: 64)
!4448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4449)
!4449 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !94, line: 106, flags: DIFlagFwdDecl)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4438, file: !94, line: 107, baseType: !4451, size: 64, offset: 384)
!4451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4452, size: 64)
!4452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4453)
!4453 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !94, line: 107, flags: DIFlagFwdDecl)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4438, file: !94, line: 109, baseType: !4397, size: 64, offset: 448)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4438, file: !94, line: 110, baseType: !4388, size: 64, offset: 512)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4438, file: !94, line: 111, baseType: !4397, size: 64, offset: 576)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4438, file: !94, line: 112, baseType: !4388, size: 64, offset: 640)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4438, file: !94, line: 113, baseType: !4459, size: 64, offset: 704)
!4459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4460, size: 64)
!4460 = !DISubroutineType(types: !4461)
!4461 = !{!115, !359, !4462}
!4462 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !107, line: 60, baseType: !4463)
!4463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !107, line: 58, size: 32, elements: !4464)
!4464 = !{!4465}
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4463, file: !107, line: 59, baseType: !115, size: 32)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4438, file: !94, line: 114, baseType: !4397, size: 64, offset: 768)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4438, file: !94, line: 115, baseType: !501, size: 64, offset: 832)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4438, file: !94, line: 116, baseType: !501, size: 64, offset: 896)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4438, file: !94, line: 118, baseType: !4392, size: 64, offset: 960)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4438, file: !94, line: 119, baseType: !4388, size: 64, offset: 1024)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4438, file: !94, line: 121, baseType: !4472, size: 64, offset: 1088)
!4472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4473, size: 64)
!4473 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !94, line: 121, flags: DIFlagFwdDecl)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4425, file: !4426, line: 88, baseType: !4377, size: 64, offset: 384)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4425, file: !4426, line: 89, baseType: !4397, size: 64, offset: 448)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4425, file: !4426, line: 90, baseType: !4388, size: 64, offset: 512)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4425, file: !4426, line: 91, baseType: !4388, size: 64, offset: 576)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4425, file: !4426, line: 92, baseType: !4388, size: 64, offset: 640)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4425, file: !4426, line: 94, baseType: !4397, size: 64, offset: 704)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4425, file: !4426, line: 95, baseType: !4397, size: 64, offset: 768)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4425, file: !4426, line: 97, baseType: !4459, size: 64, offset: 832)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4425, file: !4426, line: 98, baseType: !4397, size: 64, offset: 896)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4425, file: !4426, line: 100, baseType: !4397, size: 64, offset: 960)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4425, file: !4426, line: 102, baseType: !4397, size: 64, offset: 1024)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4425, file: !4426, line: 103, baseType: !4388, size: 64, offset: 1088)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4425, file: !4426, line: 105, baseType: !4392, size: 64, offset: 1152)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4425, file: !4426, line: 107, baseType: !4488, size: 64, offset: 1216)
!4488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4489, size: 64)
!4489 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4490)
!4490 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4426, line: 107, flags: DIFlagFwdDecl)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4425, file: !4426, line: 109, baseType: !870, size: 8, offset: 1280)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !360, file: !100, line: 715, baseType: !4437, size: 64, offset: 832)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !360, file: !100, line: 717, baseType: !334, size: 64, offset: 896)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !360, file: !100, line: 719, baseType: !334, size: 64, offset: 960)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !360, file: !100, line: 721, baseType: !790, size: 256, offset: 1024)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !360, file: !100, line: 725, baseType: !4497, size: 448, offset: 1280)
!4497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !100, line: 517, size: 448, elements: !4498)
!4498 = !{!4499, !4500, !4501, !4502}
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4497, file: !100, line: 518, baseType: !370, size: 128)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4497, file: !100, line: 519, baseType: !370, size: 128, offset: 128)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4497, file: !100, line: 520, baseType: !370, size: 128, offset: 256)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4497, file: !100, line: 521, baseType: !99, size: 32, offset: 384)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !360, file: !100, line: 726, baseType: !4504, size: 2496, offset: 1728)
!4504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !107, line: 663, size: 2496, elements: !4505)
!4505 = !{!4506, !4507, !4508, !4509, !4510, !4511, !4512, !4513, !4514, !4515, !4516, !4517, !4518, !4519, !4520, !4521, !4548, !4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4558, !4559, !4560, !4561, !4562, !4563, !4564, !4565, !4566, !4567, !4568, !4569, !4570, !4571, !4572, !4573, !4574, !4575, !4576, !4577, !4578, !4579, !4580, !4581, !4582, !4588, !4592}
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4504, file: !107, line: 664, baseType: !4462, size: 32)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4504, file: !107, line: 665, baseType: !13, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4504, file: !107, line: 666, baseType: !13, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4504, file: !107, line: 667, baseType: !870, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4504, file: !107, line: 668, baseType: !870, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4504, file: !107, line: 669, baseType: !870, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4504, file: !107, line: 670, baseType: !870, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4504, file: !107, line: 671, baseType: !870, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4504, file: !107, line: 672, baseType: !870, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4504, file: !107, line: 673, baseType: !870, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4504, file: !107, line: 674, baseType: !870, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4504, file: !107, line: 675, baseType: !598, size: 32, offset: 64)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4504, file: !107, line: 676, baseType: !383, size: 32, offset: 96)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4504, file: !107, line: 678, baseType: !370, size: 128, offset: 128)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4504, file: !107, line: 679, baseType: !739, size: 256, offset: 256)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4504, file: !107, line: 680, baseType: !4522, size: 64, offset: 512)
!4522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4523, size: 64)
!4523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4524, line: 43, size: 1536, elements: !4525)
!4524 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4525 = !{!4526, !4527, !4528, !4529, !4530, !4533, !4534, !4535, !4536, !4537, !4538, !4539, !4540, !4541, !4542, !4543, !4544, !4545, !4546, !4547}
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4523, file: !4524, line: 44, baseType: !367, size: 64)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4523, file: !4524, line: 45, baseType: !115, size: 32, offset: 64)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4523, file: !4524, line: 46, baseType: !370, size: 128, offset: 128)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4523, file: !4524, line: 47, baseType: !383, size: 32, offset: 256)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4523, file: !4524, line: 48, baseType: !4531, size: 64, offset: 320)
!4531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4532, size: 64)
!4532 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !107, line: 629, flags: DIFlagFwdDecl)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4523, file: !4524, line: 49, baseType: !1032, size: 320, offset: 384)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4523, file: !4524, line: 50, baseType: !499, size: 64, offset: 704)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4523, file: !4524, line: 51, baseType: !1478, size: 64, offset: 768)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4523, file: !4524, line: 52, baseType: !1478, size: 64, offset: 832)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4523, file: !4524, line: 53, baseType: !1478, size: 64, offset: 896)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4523, file: !4524, line: 54, baseType: !1478, size: 64, offset: 960)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4523, file: !4524, line: 55, baseType: !1478, size: 64, offset: 1024)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4523, file: !4524, line: 56, baseType: !499, size: 64, offset: 1088)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4523, file: !4524, line: 57, baseType: !499, size: 64, offset: 1152)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4523, file: !4524, line: 58, baseType: !499, size: 64, offset: 1216)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4523, file: !4524, line: 59, baseType: !499, size: 64, offset: 1280)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4523, file: !4524, line: 60, baseType: !499, size: 64, offset: 1344)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4523, file: !4524, line: 61, baseType: !359, size: 64, offset: 1408)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4523, file: !4524, line: 62, baseType: !870, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4523, file: !4524, line: 63, baseType: !870, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4504, file: !107, line: 681, baseType: !870, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4504, file: !107, line: 682, baseType: !870, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4504, file: !107, line: 683, baseType: !870, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4504, file: !107, line: 684, baseType: !13, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4504, file: !107, line: 685, baseType: !13, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4504, file: !107, line: 690, baseType: !1470, size: 512, offset: 640)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4504, file: !107, line: 691, baseType: !602, size: 64, offset: 1152)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4504, file: !107, line: 692, baseType: !1050, size: 256, offset: 1216)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4504, file: !107, line: 693, baseType: !1325, size: 192, offset: 1472)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4504, file: !107, line: 694, baseType: !4531, size: 64, offset: 1664)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4504, file: !107, line: 695, baseType: !354, size: 32, offset: 1728)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4504, file: !107, line: 696, baseType: !354, size: 32, offset: 1760)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4504, file: !107, line: 697, baseType: !13, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4504, file: !107, line: 698, baseType: !13, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4504, file: !107, line: 699, baseType: !13, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4504, file: !107, line: 700, baseType: !13, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4504, file: !107, line: 701, baseType: !13, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4504, file: !107, line: 702, baseType: !13, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4504, file: !107, line: 703, baseType: !870, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4504, file: !107, line: 704, baseType: !13, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4504, file: !107, line: 705, baseType: !13, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4504, file: !107, line: 706, baseType: !13, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4504, file: !107, line: 707, baseType: !13, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4504, file: !107, line: 708, baseType: !13, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4504, file: !107, line: 709, baseType: !13, size: 32, offset: 1824)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4504, file: !107, line: 710, baseType: !106, size: 32, offset: 1856)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4504, file: !107, line: 711, baseType: !114, size: 32, offset: 1888)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4504, file: !107, line: 712, baseType: !114, size: 32, offset: 1920)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4504, file: !107, line: 713, baseType: !115, size: 32, offset: 1952)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4504, file: !107, line: 714, baseType: !115, size: 32, offset: 1984)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4504, file: !107, line: 715, baseType: !602, size: 64, offset: 2048)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4504, file: !107, line: 716, baseType: !602, size: 64, offset: 2112)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4504, file: !107, line: 717, baseType: !602, size: 64, offset: 2176)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4504, file: !107, line: 718, baseType: !602, size: 64, offset: 2240)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4504, file: !107, line: 720, baseType: !4583, size: 64, offset: 2304)
!4583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4584, size: 64)
!4584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !107, line: 632, size: 64, elements: !4585)
!4585 = !{!4586, !4587}
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4584, file: !107, line: 633, baseType: !383, size: 32)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4584, file: !107, line: 634, baseType: !13, size: 32, offset: 32)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4504, file: !107, line: 721, baseType: !4589, size: 64, offset: 2368)
!4589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4590, size: 64)
!4590 = !DISubroutineType(types: !4591)
!4591 = !{null, !359, !786}
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4504, file: !107, line: 722, baseType: !4593, size: 64, offset: 2432)
!4593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4594, size: 64)
!4594 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !107, line: 722, flags: DIFlagFwdDecl)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !360, file: !100, line: 727, baseType: !4596, size: 64, offset: 4224)
!4596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4597, size: 64)
!4597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !107, line: 742, size: 1792, elements: !4598)
!4598 = !{!4599, !4600, !4601, !4605, !4606, !4607}
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4597, file: !107, line: 743, baseType: !4394, size: 1472)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4597, file: !107, line: 744, baseType: !4397, size: 64, offset: 1472)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4597, file: !107, line: 745, baseType: !4602, size: 64, offset: 1536)
!4602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4603, size: 64)
!4603 = !DISubroutineType(types: !4604)
!4604 = !{null, !359, !870}
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4597, file: !107, line: 746, baseType: !4397, size: 64, offset: 1600)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4597, file: !107, line: 747, baseType: !4388, size: 64, offset: 1664)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4597, file: !107, line: 748, baseType: !4388, size: 64, offset: 1728)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !360, file: !100, line: 736, baseType: !4609, size: 128, offset: 4288)
!4609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !100, line: 529, size: 128, elements: !4610)
!4610 = !{!4611, !4615}
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4609, file: !100, line: 531, baseType: !4612, size: 64)
!4612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4613, size: 64)
!4613 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4614, line: 13, flags: DIFlagFwdDecl)
!4614 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4609, file: !100, line: 532, baseType: !4616, size: 64, offset: 64)
!4616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4617, size: 64)
!4617 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !100, line: 49, flags: DIFlagFwdDecl)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !360, file: !100, line: 738, baseType: !4619, size: 64, offset: 4416)
!4619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4620, size: 64)
!4620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4621)
!4621 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !100, line: 738, flags: DIFlagFwdDecl)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !360, file: !100, line: 740, baseType: !4623, size: 64, offset: 4480)
!4623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !360, file: !100, line: 741, baseType: !602, size: 64, offset: 4544)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !360, file: !100, line: 746, baseType: !602, size: 64, offset: 4608)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !360, file: !100, line: 747, baseType: !4627, size: 64, offset: 4672)
!4627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4628, size: 64)
!4628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4629)
!4629 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !100, line: 747, flags: DIFlagFwdDecl)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !360, file: !100, line: 749, baseType: !4631, size: 64, offset: 4736)
!4631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4632, size: 64)
!4632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !100, line: 428, size: 128, elements: !4633)
!4633 = !{!4634, !4635, !4636}
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4632, file: !100, line: 433, baseType: !13, size: 32)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4632, file: !100, line: 434, baseType: !13, size: 32, offset: 32)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4632, file: !100, line: 435, baseType: !499, size: 64, offset: 64)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !360, file: !100, line: 751, baseType: !370, size: 128, offset: 4800)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !360, file: !100, line: 762, baseType: !4639, size: 64, offset: 4928)
!4639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4640, size: 64)
!4640 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !100, line: 762, flags: DIFlagFwdDecl)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !360, file: !100, line: 770, baseType: !4642, offset: 4992)
!4642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4643, line: 5, elements: !1079)
!4643 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !360, file: !100, line: 772, baseType: !4645, size: 64, offset: 4992)
!4645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4646, size: 64)
!4646 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4647, line: 18, flags: DIFlagFwdDecl)
!4647 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !360, file: !100, line: 773, baseType: !4649, size: 64, offset: 5056)
!4649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4650, size: 64)
!4650 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4426, line: 22, flags: DIFlagFwdDecl)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !360, file: !100, line: 776, baseType: !115, size: 32, offset: 5120)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !360, file: !100, line: 778, baseType: !685, size: 32, offset: 5152)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !360, file: !100, line: 779, baseType: !598, size: 32, offset: 5184)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !360, file: !100, line: 781, baseType: !383, size: 32, offset: 5216)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !360, file: !100, line: 782, baseType: !370, size: 128, offset: 5248)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !360, file: !100, line: 784, baseType: !4657, size: 64, offset: 5376)
!4657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4658, size: 64)
!4658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4659)
!4659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4660, line: 52, size: 768, elements: !4661)
!4660 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4661 = !{!4662, !4663, !4664, !4665, !4666, !4670, !4674, !4675, !4676, !4677, !4681, !4685}
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4659, file: !4660, line: 53, baseType: !367, size: 64)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4659, file: !4660, line: 55, baseType: !501, size: 64, offset: 64)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4659, file: !4660, line: 56, baseType: !501, size: 64, offset: 128)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4659, file: !4660, line: 58, baseType: !4377, size: 64, offset: 192)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4659, file: !4660, line: 59, baseType: !4667, size: 64, offset: 256)
!4667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4668, size: 64)
!4668 = !DISubroutineType(types: !4669)
!4669 = !{!449, !4380, !4386}
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4659, file: !4660, line: 61, baseType: !4671, size: 64, offset: 320)
!4671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4672, size: 64)
!4672 = !DISubroutineType(types: !4673)
!4673 = !{null, !4657}
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4659, file: !4660, line: 62, baseType: !4388, size: 64, offset: 384)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4659, file: !4660, line: 64, baseType: !4397, size: 64, offset: 448)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4659, file: !4660, line: 66, baseType: !4233, size: 64, offset: 512)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4659, file: !4660, line: 67, baseType: !4678, size: 64, offset: 576)
!4678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4679, size: 64)
!4679 = !DISubroutineType(types: !4680)
!4680 = !{!1778, !4380}
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4659, file: !4660, line: 69, baseType: !4682, size: 64, offset: 640)
!4682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4683, size: 64)
!4683 = !DISubroutineType(types: !4684)
!4684 = !{null, !4380, !4265, !4266}
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4659, file: !4660, line: 71, baseType: !4392, size: 64, offset: 704)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !360, file: !100, line: 785, baseType: !501, size: 64, offset: 5440)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !360, file: !100, line: 787, baseType: !4388, size: 64, offset: 5504)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !360, file: !100, line: 788, baseType: !4689, size: 64, offset: 5568)
!4689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4690, size: 64)
!4690 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !100, line: 46, flags: DIFlagFwdDecl)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !360, file: !100, line: 789, baseType: !4692, size: 64, offset: 5632)
!4692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4693, size: 64)
!4693 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !100, line: 48, flags: DIFlagFwdDecl)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !360, file: !100, line: 791, baseType: !4695, size: 64, offset: 5696)
!4695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4696, size: 64)
!4696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !100, line: 597, size: 128, elements: !4697)
!4697 = !{!4698, !4699, !4700, !4701, !4702}
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4696, file: !100, line: 598, baseType: !122, size: 32)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4696, file: !100, line: 599, baseType: !131, size: 32, offset: 32)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4696, file: !100, line: 600, baseType: !136, size: 32, offset: 64)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4696, file: !100, line: 601, baseType: !870, size: 8, offset: 96)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4696, file: !100, line: 602, baseType: !870, size: 8, offset: 104)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !360, file: !100, line: 793, baseType: !141, size: 32, offset: 5760)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !360, file: !100, line: 795, baseType: !870, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !360, file: !100, line: 796, baseType: !870, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !360, file: !100, line: 797, baseType: !870, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !360, file: !100, line: 798, baseType: !870, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !360, file: !100, line: 799, baseType: !870, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "managed", scope: !341, file: !310, line: 73, baseType: !4710, size: 256, offset: 128)
!4710 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !341, file: !310, line: 66, size: 256, elements: !4711)
!4711 = !{!4712, !4713, !4714}
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4710, file: !310, line: 68, baseType: !370, size: 128)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "final_kfree", scope: !4710, file: !310, line: 70, baseType: !334, size: 64, offset: 128)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4710, file: !310, line: 72, baseType: !383, size: 32, offset: 192)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !341, file: !310, line: 76, baseType: !4716, size: 64, offset: 384)
!4716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4717, size: 64)
!4717 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4718)
!4718 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_driver", file: !4719, line: 42, flags: DIFlagFwdDecl)
!4719 = !DIFile(filename: "./include/drm/drm_legacy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0a48cbf735602b48f7f8b8e0cbee53a7")
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "dev_private", scope: !341, file: !310, line: 88, baseType: !334, size: 64, offset: 448)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !341, file: !310, line: 98, baseType: !4722, size: 64, offset: 512)
!4722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4723, size: 64)
!4723 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_minor", file: !310, line: 13, flags: DIFlagFwdDecl)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "render", scope: !341, file: !310, line: 107, baseType: !4722, size: 64, offset: 576)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "accel", scope: !341, file: !310, line: 110, baseType: !4722, size: 64, offset: 640)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !341, file: !310, line: 117, baseType: !870, size: 8, offset: 704)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !341, file: !310, line: 125, baseType: !4728, size: 64, offset: 768)
!4728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4729, size: 64)
!4729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_master", file: !4730, line: 65, size: 1280, elements: !4731)
!4730 = !DIFile(filename: "./include/drm/drm_auth.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10e944a391afc2612335b30db18d0dee")
!4731 = !{!4732, !4733, !4734, !4735, !4736, !4737, !4738, !4739, !4740, !4741, !4742, !4743}
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4729, file: !4730, line: 66, baseType: !345, size: 32)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4729, file: !4730, line: 67, baseType: !340, size: 64, offset: 64)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !4729, file: !4730, line: 72, baseType: !449, size: 64, offset: 128)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "unique_len", scope: !4729, file: !4730, line: 77, baseType: !115, size: 32, offset: 192)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "magic_map", scope: !4729, file: !4730, line: 82, baseType: !1343, size: 192, offset: 256)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "driver_priv", scope: !4729, file: !4730, line: 83, baseType: !334, size: 64, offset: 448)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "lessor", scope: !4729, file: !4730, line: 99, baseType: !4728, size: 64, offset: 512)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_id", scope: !4729, file: !4730, line: 107, baseType: !115, size: 32, offset: 576)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_list", scope: !4729, file: !4730, line: 116, baseType: !370, size: 128, offset: 640)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "lessees", scope: !4729, file: !4730, line: 128, baseType: !370, size: 128, offset: 768)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "leases", scope: !4729, file: !4730, line: 139, baseType: !1343, size: 192, offset: 896)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_idr", scope: !4729, file: !4730, line: 147, baseType: !1343, size: 192, offset: 1088)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "driver_features", scope: !341, file: !310, line: 135, baseType: !598, size: 32, offset: 832)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "unplugged", scope: !341, file: !310, line: 143, baseType: !870, size: 8, offset: 864)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "anon_inode", scope: !341, file: !310, line: 146, baseType: !529, size: 64, offset: 896)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !341, file: !310, line: 149, baseType: !449, size: 64, offset: 960)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "struct_mutex", scope: !341, file: !310, line: 159, baseType: !790, size: 256, offset: 1024)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "master_mutex", scope: !341, file: !310, line: 166, baseType: !790, size: 256, offset: 1280)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "open_count", scope: !341, file: !310, line: 174, baseType: !354, size: 32, offset: 1536)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_mutex", scope: !341, file: !310, line: 177, baseType: !790, size: 256, offset: 1600)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !341, file: !310, line: 183, baseType: !370, size: 128, offset: 1856)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_internal", scope: !341, file: !310, line: 191, baseType: !370, size: 128, offset: 1984)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist_mutex", scope: !341, file: !310, line: 198, baseType: !790, size: 256, offset: 2112)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist", scope: !341, file: !310, line: 205, baseType: !370, size: 128, offset: 2368)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_disable_immediate", scope: !341, file: !310, line: 220, baseType: !870, size: 8, offset: 2496)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "vblank", scope: !341, file: !310, line: 230, baseType: !4758, size: 64, offset: 2560)
!4758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4759, size: 64)
!4759 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vblank_crtc", file: !310, line: 15, flags: DIFlagFwdDecl)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_time_lock", scope: !341, file: !310, line: 237, baseType: !383, size: 32, offset: 2624)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "vbl_lock", scope: !341, file: !310, line: 242, baseType: !383, size: 32, offset: 2656)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "max_vblank_count", scope: !341, file: !310, line: 265, baseType: !598, size: 32, offset: 2688)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_event_list", scope: !341, file: !310, line: 268, baseType: !370, size: 128, offset: 2752)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !341, file: !310, line: 276, baseType: !383, size: 32, offset: 2880)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtcs", scope: !341, file: !310, line: 279, baseType: !13, size: 32, offset: 2912)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "mode_config", scope: !341, file: !310, line: 282, baseType: !4767, size: 8704, offset: 2944)
!4767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config", file: !4768, line: 375, size: 8704, elements: !4769)
!4768 = !DIFile(filename: "./include/drm/drm_mode_config.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3fe2bd3e9391801689324df8a16c9607")
!4769 = !{!4770, !4771, !4790, !4803, !4804, !4805, !4806, !4807, !4808, !4809, !4810, !4811, !4815, !4816, !4817, !4818, !4819, !4820, !4821, !4822, !4823, !4824, !4825, !4826, !4827, !4828, !4829, !4830, !5580, !5581, !5582, !5583, !5584, !5585, !5586, !5587, !5588, !5589, !5590, !5591, !5592, !5593, !5594, !5595, !5596, !5597, !5598, !5599, !5600, !5601, !5602, !5603, !5604, !5605, !5606, !5607, !5608, !5609, !5610, !5611, !5612, !5613, !5614, !5615, !5616, !5617, !5618, !5619, !5620, !5621, !5622, !5623, !5624, !5625, !5626, !5627, !5628, !5629, !5630, !5631, !5632, !5633, !5634, !5635, !5636, !5637, !5638, !5639, !5640, !5641, !5642, !5643, !5644, !5645, !5646, !5647, !5648, !5649, !5650, !5651, !5652, !5653, !5654}
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4767, file: !4768, line: 386, baseType: !790, size: 256)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "connection_mutex", scope: !4767, file: !4768, line: 396, baseType: !4772, size: 448, offset: 256)
!4772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_lock", file: !4773, line: 85, size: 448, elements: !4774)
!4773 = !DIFile(filename: "./include/drm/drm_modeset_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90e902ea14584677125d9e33023828e6")
!4774 = !{!4775, !4789}
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4772, file: !4773, line: 89, baseType: !4776, size: 320)
!4776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_mutex", file: !4777, line: 47, size: 320, elements: !4778)
!4777 = !DIFile(filename: "./include/linux/ww_mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a05845e2a030669ed50c8f228f8c6582")
!4778 = !{!4779, !4780}
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4776, file: !4777, line: 48, baseType: !790, size: 256)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4776, file: !4777, line: 49, baseType: !4781, size: 64, offset: 256)
!4781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4782, size: 64)
!4782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_acquire_ctx", file: !4777, line: 55, size: 192, elements: !4783)
!4783 = !{!4784, !4785, !4786, !4787, !4788}
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4782, file: !4777, line: 56, baseType: !1358, size: 64)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !4782, file: !4777, line: 57, baseType: !499, size: 64, offset: 64)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "acquired", scope: !4782, file: !4777, line: 58, baseType: !13, size: 32, offset: 128)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "wounded", scope: !4782, file: !4777, line: 59, baseType: !419, size: 16, offset: 160)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "is_wait_die", scope: !4782, file: !4777, line: 60, baseType: !419, size: 16, offset: 176)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4772, file: !4773, line: 95, baseType: !370, size: 128, offset: 320)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_ctx", scope: !4767, file: !4768, line: 406, baseType: !4791, size: 64, offset: 704)
!4791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4792, size: 64)
!4792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_acquire_ctx", file: !4773, line: 46, size: 512, elements: !4793)
!4793 = !{!4794, !4795, !4797, !4800, !4801, !4802}
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "ww_ctx", scope: !4792, file: !4773, line: 48, baseType: !4782, size: 192)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "contended", scope: !4792, file: !4773, line: 55, baseType: !4796, size: 64, offset: 192)
!4796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4772, size: 64)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "stack_depot", scope: !4792, file: !4773, line: 61, baseType: !4798, size: 32, offset: 256)
!4798 = !DIDerivedType(tag: DW_TAG_typedef, name: "depot_stack_handle_t", file: !4799, line: 27, baseType: !598)
!4799 = !DIFile(filename: "./include/linux/stackdepot.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "787fdf2c1a48da25b4d7ecc2db077a40")
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !4792, file: !4773, line: 66, baseType: !370, size: 128, offset: 320)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_only", scope: !4792, file: !4773, line: 71, baseType: !870, size: 8, offset: 448)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "interruptible", scope: !4792, file: !4773, line: 74, baseType: !870, size: 8, offset: 456)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "idr_mutex", scope: !4767, file: !4768, line: 414, baseType: !790, size: 256, offset: 768)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "object_idr", scope: !4767, file: !4768, line: 422, baseType: !1343, size: 192, offset: 1024)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "tile_idr", scope: !4767, file: !4768, line: 430, baseType: !1343, size: 192, offset: 1216)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "fb_lock", scope: !4767, file: !4768, line: 433, baseType: !790, size: 256, offset: 1408)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "num_fb", scope: !4767, file: !4768, line: 435, baseType: !115, size: 32, offset: 1664)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "fb_list", scope: !4767, file: !4768, line: 437, baseType: !370, size: 128, offset: 1728)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list_lock", scope: !4767, file: !4768, line: 443, baseType: !383, size: 32, offset: 1856)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "num_connector", scope: !4767, file: !4768, line: 448, baseType: !115, size: 32, offset: 1888)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "connector_ida", scope: !4767, file: !4768, line: 452, baseType: !4812, size: 128, offset: 1920)
!4812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !1344, line: 246, size: 128, elements: !4813)
!4813 = !{!4814}
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4812, file: !1344, line: 247, baseType: !1347, size: 128)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list", scope: !4767, file: !4768, line: 460, baseType: !370, size: 128, offset: 2048)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_list", scope: !4767, file: !4768, line: 470, baseType: !2979, size: 64, offset: 2176)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_work", scope: !4767, file: !4768, line: 474, baseType: !1050, size: 256, offset: 2240)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "num_encoder", scope: !4767, file: !4768, line: 482, baseType: !115, size: 32, offset: 2496)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "encoder_list", scope: !4767, file: !4768, line: 490, baseType: !370, size: 128, offset: 2560)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "num_total_plane", scope: !4767, file: !4768, line: 499, baseType: !115, size: 32, offset: 2688)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "plane_list", scope: !4767, file: !4768, line: 506, baseType: !370, size: 128, offset: 2752)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtc", scope: !4767, file: !4768, line: 514, baseType: !115, size: 32, offset: 2880)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_list", scope: !4767, file: !4768, line: 521, baseType: !370, size: 128, offset: 2944)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "property_list", scope: !4767, file: !4768, line: 530, baseType: !370, size: 128, offset: 3072)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "privobj_list", scope: !4767, file: !4768, line: 539, baseType: !370, size: 128, offset: 3200)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "min_width", scope: !4767, file: !4768, line: 541, baseType: !115, size: 32, offset: 3328)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "min_height", scope: !4767, file: !4768, line: 541, baseType: !115, size: 32, offset: 3360)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "max_width", scope: !4767, file: !4768, line: 542, baseType: !115, size: 32, offset: 3392)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "max_height", scope: !4767, file: !4768, line: 542, baseType: !115, size: 32, offset: 3424)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !4767, file: !4768, line: 543, baseType: !4831, size: 64, offset: 3456)
!4831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4832, size: 64)
!4832 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4833)
!4833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_funcs", file: !4768, line: 47, size: 576, elements: !4834)
!4834 = !{!4835, !4859, !4866, !4870, !4912, !5567, !5571, !5575, !5579}
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "fb_create", scope: !4833, file: !4768, line: 83, baseType: !4836, size: 64)
!4836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4837, size: 64)
!4837 = !DISubroutineType(types: !4838)
!4838 = !{!4839, !340, !4841, !4844}
!4839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4840, size: 64)
!4840 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_framebuffer", file: !4768, line: 83, flags: DIFlagFwdDecl)
!4841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4842, size: 64)
!4842 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_file", file: !4843, line: 9, flags: DIFlagFwdDecl)
!4843 = !DIFile(filename: "./include/drm/drm_lease.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f6d675704e04807ddd52843c3d74a46")
!4844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4845, size: 64)
!4845 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4846)
!4846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_fb_cmd2", file: !223, line: 703, size: 832, elements: !4847)
!4847 = !{!4848, !4849, !4850, !4851, !4852, !4853, !4855, !4856, !4857}
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "fb_id", scope: !4846, file: !223, line: 705, baseType: !599, size: 32)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4846, file: !223, line: 707, baseType: !599, size: 32, offset: 32)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4846, file: !223, line: 709, baseType: !599, size: 32, offset: 64)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_format", scope: !4846, file: !223, line: 714, baseType: !599, size: 32, offset: 96)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4846, file: !223, line: 719, baseType: !599, size: 32, offset: 128)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "handles", scope: !4846, file: !223, line: 725, baseType: !4854, size: 128, offset: 160)
!4854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !599, size: 128, elements: !1020)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "pitches", scope: !4846, file: !223, line: 727, baseType: !4854, size: 128, offset: 288)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !4846, file: !223, line: 729, baseType: !4854, size: 128, offset: 416)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "modifier", scope: !4846, file: !223, line: 735, baseType: !4858, size: 256, offset: 576)
!4858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !603, size: 256, elements: !1020)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "get_format_info", scope: !4833, file: !4768, line: 98, baseType: !4860, size: 64, offset: 64)
!4860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4861, size: 64)
!4861 = !DISubroutineType(types: !4862)
!4862 = !{!4863, !4844}
!4863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4864, size: 64)
!4864 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4865)
!4865 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_format_info", file: !4768, line: 38, flags: DIFlagFwdDecl)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_changed", scope: !4833, file: !4768, line: 114, baseType: !4867, size: 64, offset: 128)
!4867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4868, size: 64)
!4868 = !DISubroutineType(types: !4869)
!4869 = !{null, !340}
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "mode_valid", scope: !4833, file: !4768, line: 124, baseType: !4871, size: 64, offset: 192)
!4871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4872, size: 64)
!4872 = !DISubroutineType(types: !4873)
!4873 = !{!147, !340, !4874}
!4874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4875, size: 64)
!4875 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4876)
!4876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_display_mode", file: !148, line: 252, size: 960, elements: !4877)
!4877 = !{!4878, !4879, !4880, !4881, !4882, !4883, !4884, !4885, !4886, !4887, !4888, !4889, !4890, !4891, !4892, !4893, !4894, !4895, !4896, !4897, !4898, !4899, !4900, !4901, !4902, !4903, !4904, !4905, !4906, !4907, !4908, !4909, !4910, !4911}
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !4876, file: !148, line: 258, baseType: !115, size: 32)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "hdisplay", scope: !4876, file: !148, line: 259, baseType: !417, size: 16, offset: 32)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_start", scope: !4876, file: !148, line: 260, baseType: !417, size: 16, offset: 48)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_end", scope: !4876, file: !148, line: 261, baseType: !417, size: 16, offset: 64)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "htotal", scope: !4876, file: !148, line: 262, baseType: !417, size: 16, offset: 80)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "hskew", scope: !4876, file: !148, line: 263, baseType: !417, size: 16, offset: 96)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "vdisplay", scope: !4876, file: !148, line: 264, baseType: !417, size: 16, offset: 112)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_start", scope: !4876, file: !148, line: 265, baseType: !417, size: 16, offset: 128)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_end", scope: !4876, file: !148, line: 266, baseType: !417, size: 16, offset: 144)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "vtotal", scope: !4876, file: !148, line: 267, baseType: !417, size: 16, offset: 160)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "vscan", scope: !4876, file: !148, line: 268, baseType: !417, size: 16, offset: 176)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4876, file: !148, line: 303, baseType: !598, size: 32, offset: 192)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_clock", scope: !4876, file: !148, line: 320, baseType: !115, size: 32, offset: 224)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hdisplay", scope: !4876, file: !148, line: 321, baseType: !417, size: 16, offset: 256)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hblank_start", scope: !4876, file: !148, line: 322, baseType: !417, size: 16, offset: 272)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hblank_end", scope: !4876, file: !148, line: 323, baseType: !417, size: 16, offset: 288)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hsync_start", scope: !4876, file: !148, line: 324, baseType: !417, size: 16, offset: 304)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hsync_end", scope: !4876, file: !148, line: 325, baseType: !417, size: 16, offset: 320)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_htotal", scope: !4876, file: !148, line: 326, baseType: !417, size: 16, offset: 336)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hskew", scope: !4876, file: !148, line: 327, baseType: !417, size: 16, offset: 352)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vdisplay", scope: !4876, file: !148, line: 328, baseType: !417, size: 16, offset: 368)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vblank_start", scope: !4876, file: !148, line: 329, baseType: !417, size: 16, offset: 384)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vblank_end", scope: !4876, file: !148, line: 330, baseType: !417, size: 16, offset: 400)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vsync_start", scope: !4876, file: !148, line: 331, baseType: !417, size: 16, offset: 416)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vsync_end", scope: !4876, file: !148, line: 332, baseType: !417, size: 16, offset: 432)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vtotal", scope: !4876, file: !148, line: 333, baseType: !417, size: 16, offset: 448)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "width_mm", scope: !4876, file: !148, line: 341, baseType: !417, size: 16, offset: 464)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "height_mm", scope: !4876, file: !148, line: 349, baseType: !417, size: 16, offset: 480)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4876, file: !148, line: 378, baseType: !407, size: 8, offset: 496)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "expose_to_userspace", scope: !4876, file: !148, line: 389, baseType: !870, size: 8, offset: 504)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4876, file: !148, line: 396, baseType: !370, size: 128, offset: 512)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4876, file: !148, line: 403, baseType: !3732, size: 256, offset: 640)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4876, file: !148, line: 411, baseType: !147, size: 32, offset: 896)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "picture_aspect_ratio", scope: !4876, file: !148, line: 418, baseType: !190, size: 32, offset: 928)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_check", scope: !4833, file: !4768, line: 201, baseType: !4913, size: 64, offset: 256)
!4913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4914, size: 64)
!4914 = !DISubroutineType(types: !4915)
!4915 = !{!115, !340, !4916}
!4916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4917, size: 64)
!4917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_atomic_state", file: !4918, line: 365, size: 960, elements: !4919)
!4918 = !DIFile(filename: "./include/drm/drm_atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28de65f10f2586a2044f2cca3eae067c")
!4919 = !{!4920, !4921, !4922, !4923, !4924, !4925, !4926, !5149, !5190, !5191, !5525, !5526, !5564, !5565, !5566}
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4917, file: !4918, line: 366, baseType: !345, size: 32)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4917, file: !4918, line: 368, baseType: !340, size: 64, offset: 64)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "allow_modeset", scope: !4917, file: !4918, line: 378, baseType: !870, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cursor_update", scope: !4917, file: !4918, line: 390, baseType: !870, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "async_update", scope: !4917, file: !4918, line: 391, baseType: !870, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "duplicated", scope: !4917, file: !4918, line: 400, baseType: !870, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "planes", scope: !4917, file: !4918, line: 401, baseType: !4927, size: 64, offset: 192)
!4927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4928, size: 64)
!4928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__drm_planes_state", file: !4918, line: 160, size: 256, elements: !4929)
!4929 = !{!4930, !5146, !5147, !5148}
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !4928, file: !4918, line: 161, baseType: !4931, size: 64)
!4931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4932, size: 64)
!4932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane", file: !288, line: 603, size: 5312, elements: !4933)
!4933 = !{!4934, !4935, !4936, !4937, !4938, !4975, !4976, !4978, !4979, !4980, !4981, !4982, !4983, !4984, !4985, !5131, !5132, !5133, !5134, !5138, !5139, !5140, !5141, !5142, !5143, !5144, !5145}
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4932, file: !288, line: 605, baseType: !340, size: 64)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4932, file: !288, line: 614, baseType: !370, size: 128, offset: 64)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4932, file: !288, line: 617, baseType: !449, size: 64, offset: 192)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4932, file: !288, line: 628, baseType: !4772, size: 448, offset: 256)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4932, file: !288, line: 631, baseType: !4939, size: 256, offset: 704)
!4939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_object", file: !4940, line: 55, size: 256, elements: !4941)
!4940 = !DIFile(filename: "./include/drm/drm_mode_object.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ffaf2d776d1d6cf92a08dd44b890967f")
!4941 = !{!4942, !4943, !4944, !4969, !4970}
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4939, file: !4940, line: 56, baseType: !2012, size: 32)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4939, file: !4940, line: 57, baseType: !2012, size: 32, offset: 32)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4939, file: !4940, line: 58, baseType: !4945, size: 64, offset: 64)
!4945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4946, size: 64)
!4946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_object_properties", file: !4940, line: 67, size: 3136, elements: !4947)
!4947 = !{!4948, !4949, !4967}
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4946, file: !4940, line: 73, baseType: !115, size: 32)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4946, file: !4940, line: 82, baseType: !4950, size: 1536, offset: 64)
!4950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4951, size: 1536, elements: !4965)
!4951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4952, size: 64)
!4952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_property", file: !4953, line: 80, size: 960, elements: !4954)
!4953 = !DIFile(filename: "./include/drm/drm_property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "320ae008033d09c99df86eb5eb8877c7")
!4954 = !{!4955, !4956, !4957, !4958, !4959, !4960, !4963, !4964}
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4952, file: !4953, line: 84, baseType: !370, size: 128)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4952, file: !4953, line: 89, baseType: !4939, size: 256, offset: 128)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4952, file: !4953, line: 166, baseType: !2012, size: 32, offset: 384)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4952, file: !4953, line: 171, baseType: !3732, size: 256, offset: 416)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "num_values", scope: !4952, file: !4953, line: 176, baseType: !2012, size: 32, offset: 672)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !4952, file: !4953, line: 184, baseType: !4961, size: 64, offset: 704)
!4961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4962, size: 64)
!4962 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !333, line: 113, baseType: !602)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4952, file: !4953, line: 189, baseType: !340, size: 64, offset: 768)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "enum_list", scope: !4952, file: !4953, line: 197, baseType: !370, size: 128, offset: 832)
!4965 = !{!4966}
!4966 = !DISubrange(count: 24)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !4946, file: !4940, line: 106, baseType: !4968, size: 1536, offset: 1600)
!4968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4962, size: 1536, elements: !4965)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4939, file: !4940, line: 59, baseType: !345, size: 32, offset: 128)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "free_cb", scope: !4939, file: !4940, line: 60, baseType: !4971, size: 64, offset: 192)
!4971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4972, size: 64)
!4972 = !DISubroutineType(types: !4973)
!4973 = !{null, !4974}
!4974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "possible_crtcs", scope: !4932, file: !288, line: 637, baseType: !2012, size: 32, offset: 960)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "format_types", scope: !4932, file: !288, line: 639, baseType: !4977, size: 64, offset: 1024)
!4977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "format_count", scope: !4932, file: !288, line: 641, baseType: !13, size: 32, offset: 1088)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "format_default", scope: !4932, file: !288, line: 646, baseType: !870, size: 8, offset: 1120)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "modifiers", scope: !4932, file: !288, line: 649, baseType: !4961, size: 64, offset: 1152)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "modifier_count", scope: !4932, file: !288, line: 651, baseType: !13, size: 32, offset: 1216)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !4932, file: !288, line: 660, baseType: !335, size: 64, offset: 1280)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "fb", scope: !4932, file: !288, line: 669, baseType: !4839, size: 64, offset: 1344)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "old_fb", scope: !4932, file: !288, line: 677, baseType: !4839, size: 64, offset: 1408)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !4932, file: !288, line: 680, baseType: !4986, size: 64, offset: 1472)
!4986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4987, size: 64)
!4987 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4988)
!4988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane_funcs", file: !288, line: 279, size: 832, elements: !4989)
!4989 = !{!4990, !4994, !4998, !5002, !5003, !5007, !5073, !5077, !5081, !5087, !5091, !5092, !5127}
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "update_plane", scope: !4988, file: !288, line: 306, baseType: !4991, size: 64)
!4991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4992, size: 64)
!4992 = !DISubroutineType(types: !4993)
!4993 = !{!115, !4931, !335, !4839, !115, !115, !13, !13, !2012, !2012, !2012, !2012, !4791}
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "disable_plane", scope: !4988, file: !288, line: 329, baseType: !4995, size: 64, offset: 64)
!4995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4996, size: 64)
!4996 = !DISubroutineType(types: !4997)
!4997 = !{!115, !4931, !4791}
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !4988, file: !288, line: 339, baseType: !4999, size: 64, offset: 128)
!4999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5000, size: 64)
!5000 = !DISubroutineType(types: !5001)
!5001 = !{null, !4931}
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !4988, file: !288, line: 351, baseType: !4999, size: 64, offset: 192)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "set_property", scope: !4988, file: !288, line: 367, baseType: !5004, size: 64, offset: 256)
!5004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5005, size: 64)
!5005 = !DISubroutineType(types: !5006)
!5006 = !{!115, !4931, !4951, !4962}
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !4988, file: !288, line: 401, baseType: !5008, size: 64, offset: 320)
!5008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5009, size: 64)
!5009 = !DISubroutineType(types: !5010)
!5010 = !{!5011, !4931}
!5011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5012, size: 64)
!5012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane_state", file: !288, line: 52, size: 1280, elements: !5013)
!5013 = !{!5014, !5015, !5016, !5017, !5020, !5021, !5022, !5023, !5024, !5025, !5026, !5027, !5028, !5029, !5031, !5032, !5033, !5034, !5035, !5036, !5046, !5047, !5055, !5056, !5057, !5058, !5072}
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !5012, file: !288, line: 54, baseType: !4931, size: 64)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5012, file: !288, line: 62, baseType: !335, size: 64, offset: 64)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "fb", scope: !5012, file: !288, line: 70, baseType: !4839, size: 64, offset: 128)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "fence", scope: !5012, file: !288, line: 83, baseType: !5018, size: 64, offset: 192)
!5018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5019, size: 64)
!5019 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence", file: !288, line: 83, flags: DIFlagFwdDecl)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_x", scope: !5012, file: !288, line: 92, baseType: !1989, size: 32, offset: 256)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_y", scope: !5012, file: !288, line: 99, baseType: !1989, size: 32, offset: 288)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_w", scope: !5012, file: !288, line: 103, baseType: !2012, size: 32, offset: 320)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_h", scope: !5012, file: !288, line: 103, baseType: !2012, size: 32, offset: 352)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "src_x", scope: !5012, file: !288, line: 109, baseType: !2012, size: 32, offset: 384)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "src_y", scope: !5012, file: !288, line: 114, baseType: !2012, size: 32, offset: 416)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "src_h", scope: !5012, file: !288, line: 117, baseType: !2012, size: 32, offset: 448)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "src_w", scope: !5012, file: !288, line: 117, baseType: !2012, size: 32, offset: 480)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "alpha", scope: !5012, file: !288, line: 125, baseType: !417, size: 16, offset: 512)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_blend_mode", scope: !5012, file: !288, line: 133, baseType: !5030, size: 16, offset: 528)
!5030 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !333, line: 109, baseType: !417)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "rotation", scope: !5012, file: !288, line: 140, baseType: !13, size: 32, offset: 544)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "zpos", scope: !5012, file: !288, line: 155, baseType: !13, size: 32, offset: 576)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_zpos", scope: !5012, file: !288, line: 164, baseType: !13, size: 32, offset: 608)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "color_encoding", scope: !5012, file: !288, line: 171, baseType: !292, size: 32, offset: 640)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "color_range", scope: !5012, file: !288, line: 178, baseType: !299, size: 32, offset: 672)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "fb_damage_clips", scope: !5012, file: !288, line: 191, baseType: !5037, size: 64, offset: 704)
!5037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5038, size: 64)
!5038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_property_blob", file: !4953, line: 216, size: 704, elements: !5039)
!5039 = !{!5040, !5041, !5042, !5043, !5044, !5045}
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5038, file: !4953, line: 217, baseType: !4939, size: 256)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5038, file: !4953, line: 218, baseType: !340, size: 64, offset: 256)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "head_global", scope: !5038, file: !4953, line: 219, baseType: !370, size: 128, offset: 320)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "head_file", scope: !5038, file: !4953, line: 220, baseType: !370, size: 128, offset: 448)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5038, file: !4953, line: 221, baseType: !496, size: 64, offset: 576)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5038, file: !4953, line: 222, baseType: !334, size: 64, offset: 640)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_damage_clips", scope: !5012, file: !288, line: 201, baseType: !870, size: 8, offset: 768)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !5012, file: !288, line: 223, baseType: !5048, size: 128, offset: 800)
!5048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_rect", file: !5049, line: 46, size: 128, elements: !5050)
!5049 = !DIFile(filename: "./include/drm/drm_rect.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "16c059bec9955b5d3fc8d798e393cc6b")
!5050 = !{!5051, !5052, !5053, !5054}
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "x1", scope: !5048, file: !5049, line: 47, baseType: !115, size: 32)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "y1", scope: !5048, file: !5049, line: 47, baseType: !115, size: 32, offset: 32)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "x2", scope: !5048, file: !5049, line: 47, baseType: !115, size: 32, offset: 64)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "y2", scope: !5048, file: !5049, line: 47, baseType: !115, size: 32, offset: 96)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !5012, file: !288, line: 223, baseType: !5048, size: 128, offset: 928)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "visible", scope: !5012, file: !288, line: 231, baseType: !870, size: 8, offset: 1056)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_filter", scope: !5012, file: !288, line: 238, baseType: !287, size: 32, offset: 1088)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !5012, file: !288, line: 246, baseType: !5059, size: 64, offset: 1152)
!5059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5060, size: 64)
!5060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_commit", file: !4918, line: 72, size: 1152, elements: !5061)
!5061 = !{!5062, !5063, !5064, !5065, !5066, !5067, !5068, !5071}
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5060, file: !4918, line: 78, baseType: !335, size: 64)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !5060, file: !4918, line: 87, baseType: !345, size: 32, offset: 64)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "flip_done", scope: !5060, file: !4918, line: 101, baseType: !739, size: 256, offset: 128)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "hw_done", scope: !5060, file: !4918, line: 119, baseType: !739, size: 256, offset: 384)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_done", scope: !5060, file: !4918, line: 133, baseType: !739, size: 256, offset: 640)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "commit_entry", scope: !5060, file: !4918, line: 141, baseType: !370, size: 128, offset: 896)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !5060, file: !4918, line: 148, baseType: !5069, size: 64, offset: 1024)
!5069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5070, size: 64)
!5070 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_pending_vblank_event", file: !337, line: 58, flags: DIFlagFwdDecl)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "abort_completion", scope: !5060, file: !4918, line: 157, baseType: !870, size: 8, offset: 1088)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5012, file: !288, line: 249, baseType: !4916, size: 64, offset: 1216)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !4988, file: !288, line: 411, baseType: !5074, size: 64, offset: 384)
!5074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5075, size: 64)
!5075 = !DISubroutineType(types: !5076)
!5076 = !{null, !4931, !5011}
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_set_property", scope: !4988, file: !288, line: 456, baseType: !5078, size: 64, offset: 448)
!5078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5079, size: 64)
!5079 = !DISubroutineType(types: !5080)
!5080 = !{!115, !4931, !5011, !4951, !4962}
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_get_property", scope: !4988, file: !288, line: 479, baseType: !5082, size: 64, offset: 512)
!5082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5083, size: 64)
!5083 = !DISubroutineType(types: !5084)
!5084 = !{!115, !4931, !5085, !4951, !4961}
!5085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5086, size: 64)
!5086 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5012)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "late_register", scope: !4988, file: !288, line: 496, baseType: !5088, size: 64, offset: 576)
!5088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5089, size: 64)
!5089 = !DISubroutineType(types: !5090)
!5090 = !{!115, !4931}
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "early_unregister", scope: !4988, file: !288, line: 507, baseType: !4999, size: 64, offset: 640)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_print_state", scope: !4988, file: !288, line: 518, baseType: !5093, size: 64, offset: 704)
!5093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5094, size: 64)
!5094 = !DISubroutineType(types: !5095)
!5095 = !{null, !5096, !5085}
!5096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5097, size: 64)
!5097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_printer", file: !5098, line: 76, size: 256, elements: !5099)
!5098 = !DIFile(filename: "./include/drm/drm_print.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8183d9b00573922c1c038b9801bc144f")
!5099 = !{!5100, !5121, !5125, !5126}
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "printfn", scope: !5097, file: !5098, line: 78, baseType: !5101, size: 64)
!5101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5102, size: 64)
!5102 = !DISubroutineType(types: !5103)
!5103 = !{null, !5096, !5104}
!5104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5105, size: 64)
!5105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "va_format", file: !5106, line: 79, size: 128, elements: !5107)
!5106 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!5107 = !{!5108, !5109}
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !5105, file: !5106, line: 80, baseType: !367, size: 64)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "va", scope: !5105, file: !5106, line: 81, baseType: !5110, size: 64, offset: 64)
!5110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5111, size: 64)
!5111 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !5112, line: 5, baseType: !5113)
!5112 = !DIFile(filename: "./include/linux/stdarg.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74c88f3ccfca7f499d1744438ad1d5b5")
!5113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2, baseType: !5114)
!5114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5115, size: 192, elements: !1598)
!5115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !5116)
!5116 = !{!5117, !5118, !5119, !5120}
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !5115, file: !2, baseType: !13, size: 32)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !5115, file: !2, baseType: !13, size: 32, offset: 32)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !5115, file: !2, baseType: !334, size: 64, offset: 64)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !5115, file: !2, baseType: !334, size: 64, offset: 128)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "puts", scope: !5097, file: !5098, line: 79, baseType: !5122, size: 64, offset: 64)
!5122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5123, size: 64)
!5123 = !DISubroutineType(types: !5124)
!5124 = !{null, !5096, !367}
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !5097, file: !5098, line: 80, baseType: !334, size: 64, offset: 128)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !5097, file: !5098, line: 81, baseType: !367, size: 64, offset: 192)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "format_mod_supported", scope: !4988, file: !288, line: 537, baseType: !5128, size: 64, offset: 768)
!5128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5129, size: 64)
!5129 = !DISubroutineType(types: !5130)
!5130 = !{!870, !4931, !2012, !4962}
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4932, file: !288, line: 683, baseType: !4946, size: 3136, offset: 1536)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4932, file: !288, line: 686, baseType: !304, size: 32, offset: 4672)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4932, file: !288, line: 692, baseType: !13, size: 32, offset: 4704)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !4932, file: !288, line: 695, baseType: !5135, size: 64, offset: 4736)
!5135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5136, size: 64)
!5136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5137)
!5137 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane_helper_funcs", file: !288, line: 695, flags: DIFlagFwdDecl)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4932, file: !288, line: 710, baseType: !5011, size: 64, offset: 4800)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "alpha_property", scope: !4932, file: !288, line: 717, baseType: !4951, size: 64, offset: 4864)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "zpos_property", scope: !4932, file: !288, line: 723, baseType: !4951, size: 64, offset: 4928)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "rotation_property", scope: !4932, file: !288, line: 729, baseType: !4951, size: 64, offset: 4992)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "blend_mode_property", scope: !4932, file: !288, line: 737, baseType: !4951, size: 64, offset: 5056)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "color_encoding_property", scope: !4932, file: !288, line: 746, baseType: !4951, size: 64, offset: 5120)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "color_range_property", scope: !4932, file: !288, line: 754, baseType: !4951, size: 64, offset: 5184)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_filter_property", scope: !4932, file: !288, line: 760, baseType: !4951, size: 64, offset: 5248)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4928, file: !4918, line: 162, baseType: !5011, size: 64, offset: 64)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "old_state", scope: !4928, file: !4918, line: 162, baseType: !5011, size: 64, offset: 128)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "new_state", scope: !4928, file: !4918, line: 162, baseType: !5011, size: 64, offset: 192)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "crtcs", scope: !4917, file: !4918, line: 402, baseType: !5150, size: 64, offset: 256)
!5150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5151, size: 64)
!5151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__drm_crtcs_state", file: !4918, line: 165, size: 448, elements: !5152)
!5152 = !{!5153, !5154, !5185, !5186, !5187, !5188, !5189}
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !5151, file: !4918, line: 166, baseType: !335, size: 64)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5151, file: !4918, line: 167, baseType: !5155, size: 64, offset: 64)
!5155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5156, size: 64)
!5156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_state", file: !337, line: 81, size: 2688, elements: !5157)
!5157 = !{!5158, !5159, !5160, !5161, !5162, !5163, !5164, !5165, !5166, !5167, !5168, !5169, !5170, !5171, !5172, !5173, !5174, !5175, !5176, !5177, !5178, !5179, !5180, !5181, !5182, !5183, !5184}
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5156, file: !337, line: 83, baseType: !335, size: 64)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !5156, file: !337, line: 90, baseType: !870, size: 8, offset: 64)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !5156, file: !337, line: 105, baseType: !870, size: 8, offset: 72)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "planes_changed", scope: !5156, file: !337, line: 111, baseType: !870, size: 1, offset: 80, flags: DIFlagBitField, extraData: i64 80)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "mode_changed", scope: !5156, file: !337, line: 123, baseType: !870, size: 1, offset: 81, flags: DIFlagBitField, extraData: i64 80)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "active_changed", scope: !5156, file: !337, line: 130, baseType: !870, size: 1, offset: 82, flags: DIFlagBitField, extraData: i64 80)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "connectors_changed", scope: !5156, file: !337, line: 141, baseType: !870, size: 1, offset: 83, flags: DIFlagBitField, extraData: i64 80)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "zpos_changed", scope: !5156, file: !337, line: 147, baseType: !870, size: 1, offset: 84, flags: DIFlagBitField, extraData: i64 80)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "color_mgmt_changed", scope: !5156, file: !337, line: 153, baseType: !870, size: 1, offset: 85, flags: DIFlagBitField, extraData: i64 80)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "no_vblank", scope: !5156, file: !337, line: 189, baseType: !870, size: 1, offset: 86, flags: DIFlagBitField, extraData: i64 80)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "plane_mask", scope: !5156, file: !337, line: 195, baseType: !598, size: 32, offset: 96)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "connector_mask", scope: !5156, file: !337, line: 201, baseType: !598, size: 32, offset: 128)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "encoder_mask", scope: !5156, file: !337, line: 207, baseType: !598, size: 32, offset: 160)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "adjusted_mode", scope: !5156, file: !337, line: 222, baseType: !4876, size: 960, offset: 192)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5156, file: !337, line: 239, baseType: !4876, size: 960, offset: 1152)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "mode_blob", scope: !5156, file: !337, line: 245, baseType: !5037, size: 64, offset: 2112)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut", scope: !5156, file: !337, line: 254, baseType: !5037, size: 64, offset: 2176)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "ctm", scope: !5156, file: !337, line: 262, baseType: !5037, size: 64, offset: 2240)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut", scope: !5156, file: !337, line: 275, baseType: !5037, size: 64, offset: 2304)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "target_vblank", scope: !5156, file: !337, line: 283, baseType: !598, size: 32, offset: 2368)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "async_flip", scope: !5156, file: !337, line: 291, baseType: !870, size: 8, offset: 2400)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "vrr_enabled", scope: !5156, file: !337, line: 300, baseType: !870, size: 8, offset: 2408)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "self_refresh_active", scope: !5156, file: !337, line: 311, baseType: !870, size: 8, offset: 2416)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_filter", scope: !5156, file: !337, line: 318, baseType: !287, size: 32, offset: 2432)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !5156, file: !337, line: 375, baseType: !5069, size: 64, offset: 2496)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !5156, file: !337, line: 384, baseType: !5059, size: 64, offset: 2560)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5156, file: !337, line: 387, baseType: !4916, size: 64, offset: 2624)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "old_state", scope: !5151, file: !4918, line: 167, baseType: !5155, size: 64, offset: 128)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "new_state", scope: !5151, file: !4918, line: 167, baseType: !5155, size: 64, offset: 192)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !5151, file: !4918, line: 177, baseType: !5059, size: 64, offset: 256)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "out_fence_ptr", scope: !5151, file: !4918, line: 179, baseType: !1746, size: 64, offset: 320)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "last_vblank_count", scope: !5151, file: !4918, line: 180, baseType: !602, size: 64, offset: 384)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "num_connector", scope: !4917, file: !4918, line: 403, baseType: !115, size: 32, offset: 320)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "connectors", scope: !4917, file: !4918, line: 404, baseType: !5192, size: 64, offset: 384)
!5192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5193, size: 64)
!5193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__drm_connnectors_state", file: !4918, line: 183, size: 320, elements: !5194)
!5194 = !{!5195, !5521, !5522, !5523, !5524}
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !5193, file: !4918, line: 184, baseType: !5196, size: 64)
!5196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5197, size: 64)
!5197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector", file: !200, line: 1494, size: 10880, elements: !5198)
!5198 = !{!5199, !5200, !5201, !5214, !5215, !5216, !5217, !5218, !5219, !5220, !5221, !5222, !5223, !5224, !5225, !5226, !5227, !5228, !5229, !5230, !5231, !5302, !5406, !5407, !5408, !5409, !5410, !5411, !5412, !5413, !5416, !5428, !5429, !5430, !5432, !5433, !5437, !5459, !5460, !5464, !5465, !5466, !5467, !5468, !5472, !5473, !5475, !5477, !5478, !5481, !5482, !5483, !5484, !5485, !5486, !5487, !5488, !5489, !5498, !5499, !5500, !5501, !5502, !5503, !5504, !5505, !5506}
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5197, file: !200, line: 1496, baseType: !340, size: 64)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "kdev", scope: !5197, file: !200, line: 1498, baseType: !359, size: 64, offset: 64)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5197, file: !200, line: 1500, baseType: !5202, size: 64, offset: 128)
!5202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5203, size: 64)
!5203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !100, line: 106, size: 256, elements: !5204)
!5204 = !{!5205, !5206, !5210}
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5203, file: !100, line: 107, baseType: !487, size: 128)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !5203, file: !100, line: 108, baseType: !5207, size: 64, offset: 128)
!5207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5208, size: 64)
!5208 = !DISubroutineType(types: !5209)
!5209 = !{!481, !359, !5202, !449}
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !5203, file: !100, line: 110, baseType: !5211, size: 64, offset: 192)
!5211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5212, size: 64)
!5212 = !DISubroutineType(types: !5213)
!5213 = !{!481, !359, !5202, !367, !496}
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !5197, file: !200, line: 1508, baseType: !4649, size: 64, offset: 192)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5197, file: !200, line: 1518, baseType: !370, size: 128, offset: 256)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "global_connector_list_entry", scope: !5197, file: !200, line: 1526, baseType: !370, size: 128, offset: 384)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5197, file: !200, line: 1529, baseType: !4939, size: 256, offset: 512)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5197, file: !200, line: 1532, baseType: !449, size: 64, offset: 768)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5197, file: !200, line: 1539, baseType: !790, size: 256, offset: 832)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5197, file: !200, line: 1547, baseType: !13, size: 32, offset: 1088)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "connector_type", scope: !5197, file: !200, line: 1553, baseType: !115, size: 32, offset: 1120)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "connector_type_id", scope: !5197, file: !200, line: 1555, baseType: !115, size: 32, offset: 1152)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "interlace_allowed", scope: !5197, file: !200, line: 1561, baseType: !870, size: 8, offset: 1184)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "doublescan_allowed", scope: !5197, file: !200, line: 1567, baseType: !870, size: 8, offset: 1192)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "stereo_allowed", scope: !5197, file: !200, line: 1573, baseType: !870, size: 8, offset: 1200)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "ycbcr_420_allowed", scope: !5197, file: !200, line: 1581, baseType: !870, size: 8, offset: 1208)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "registration_state", scope: !5197, file: !200, line: 1589, baseType: !199, size: 32, offset: 1216)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !5197, file: !200, line: 1596, baseType: !370, size: 128, offset: 1280)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5197, file: !200, line: 1603, baseType: !205, size: 32, offset: 1408)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "probed_modes", scope: !5197, file: !200, line: 1611, baseType: !370, size: 128, offset: 1472)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "display_info", scope: !5197, file: !200, line: 1622, baseType: !5232, size: 1536, offset: 1600)
!5232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_display_info", file: !200, line: 651, size: 1536, elements: !5233)
!5233 = !{!5234, !5235, !5236, !5237, !5238, !5239, !5240, !5243, !5244, !5245, !5246, !5247, !5248, !5249, !5250, !5251, !5252, !5253, !5254, !5284, !5285, !5290, !5295, !5296, !5297, !5298, !5300, !5301}
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "width_mm", scope: !5232, file: !200, line: 655, baseType: !13, size: 32)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "height_mm", scope: !5232, file: !200, line: 660, baseType: !13, size: 32, offset: 32)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "bpc", scope: !5232, file: !200, line: 665, baseType: !13, size: 32, offset: 64)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "subpixel_order", scope: !5232, file: !200, line: 670, baseType: !210, size: 32, offset: 96)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation", scope: !5232, file: !200, line: 684, baseType: !115, size: 32, offset: 128)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "color_formats", scope: !5232, file: !200, line: 692, baseType: !598, size: 32, offset: 160)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "bus_formats", scope: !5232, file: !200, line: 699, baseType: !5241, size: 64, offset: 192)
!5241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5242, size: 64)
!5242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !598)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "num_bus_formats", scope: !5232, file: !200, line: 703, baseType: !13, size: 32, offset: 256)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !5232, file: !200, line: 710, baseType: !598, size: 32, offset: 288)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "max_tmds_clock", scope: !5232, file: !200, line: 716, baseType: !115, size: 32, offset: 320)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_dual", scope: !5232, file: !200, line: 721, baseType: !870, size: 8, offset: 352)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "is_hdmi", scope: !5232, file: !200, line: 729, baseType: !870, size: 8, offset: 360)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "has_audio", scope: !5232, file: !200, line: 737, baseType: !870, size: 8, offset: 368)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "has_hdmi_infoframe", scope: !5232, file: !200, line: 742, baseType: !870, size: 8, offset: 376)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "rgb_quant_range_selectable", scope: !5232, file: !200, line: 748, baseType: !870, size: 8, offset: 384)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "edid_hdmi_rgb444_dc_modes", scope: !5232, file: !200, line: 754, baseType: !407, size: 8, offset: 392)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "edid_hdmi_ycbcr444_dc_modes", scope: !5232, file: !200, line: 760, baseType: !407, size: 8, offset: 400)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "cea_rev", scope: !5232, file: !200, line: 765, baseType: !407, size: 8, offset: 408)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "hdmi", scope: !5232, file: !200, line: 770, baseType: !5255, size: 768, offset: 448)
!5255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_hdmi_info", file: !200, line: 293, size: 768, elements: !5256)
!5256 = !{!5257, !5267, !5268, !5269, !5270, !5271, !5272}
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "scdc", scope: !5255, file: !200, line: 295, baseType: !5258, size: 32)
!5258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_scdc", file: !200, line: 231, size: 32, elements: !5259)
!5259 = !{!5260, !5261, !5262}
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "supported", scope: !5258, file: !200, line: 235, baseType: !870, size: 8)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "read_request", scope: !5258, file: !200, line: 239, baseType: !870, size: 8, offset: 8)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "scrambling", scope: !5258, file: !200, line: 243, baseType: !5263, size: 16, offset: 16)
!5263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_scrambling", file: !200, line: 214, size: 16, elements: !5264)
!5264 = !{!5265, !5266}
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "supported", scope: !5263, file: !200, line: 218, baseType: !870, size: 8)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "low_rates", scope: !5263, file: !200, line: 222, baseType: !870, size: 8, offset: 8)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "y420_vdb_modes", scope: !5255, file: !200, line: 303, baseType: !1023, size: 256, offset: 64)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "y420_cmdb_modes", scope: !5255, file: !200, line: 311, baseType: !1023, size: 256, offset: 320)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "y420_dc_modes", scope: !5255, file: !200, line: 314, baseType: !407, size: 8, offset: 576)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "max_frl_rate_per_lane", scope: !5255, file: !200, line: 317, baseType: !407, size: 8, offset: 584)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "max_lanes", scope: !5255, file: !200, line: 320, baseType: !407, size: 8, offset: 592)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "dsc_cap", scope: !5255, file: !200, line: 323, baseType: !5273, size: 128, offset: 608)
!5273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_hdmi_dsc_cap", file: !200, line: 253, size: 128, elements: !5274)
!5274 = !{!5275, !5276, !5277, !5278, !5279, !5280, !5281, !5282, !5283}
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "v_1p2", scope: !5273, file: !200, line: 255, baseType: !870, size: 8)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "native_420", scope: !5273, file: !200, line: 258, baseType: !870, size: 8, offset: 8)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "all_bpp", scope: !5273, file: !200, line: 264, baseType: !870, size: 8, offset: 16)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "bpc_supported", scope: !5273, file: !200, line: 269, baseType: !407, size: 8, offset: 24)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "max_slices", scope: !5273, file: !200, line: 272, baseType: !407, size: 8, offset: 32)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "clk_per_slice", scope: !5273, file: !200, line: 275, baseType: !115, size: 32, offset: 64)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "max_lanes", scope: !5273, file: !200, line: 278, baseType: !407, size: 8, offset: 96)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "max_frl_rate_per_lane", scope: !5273, file: !200, line: 281, baseType: !407, size: 8, offset: 104)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "total_chunk_kbytes", scope: !5273, file: !200, line: 284, baseType: !407, size: 8, offset: 112)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "non_desktop", scope: !5232, file: !200, line: 775, baseType: !870, size: 8, offset: 1216)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "monitor_range", scope: !5232, file: !200, line: 780, baseType: !5286, size: 32, offset: 1232)
!5286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_monitor_range_info", file: !200, line: 383, size: 32, elements: !5287)
!5287 = !{!5288, !5289}
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "min_vfreq", scope: !5286, file: !200, line: 384, baseType: !417, size: 16)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "max_vfreq", scope: !5286, file: !200, line: 385, baseType: !417, size: 16, offset: 16)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "luminance_range", scope: !5232, file: !200, line: 785, baseType: !5291, size: 64, offset: 1280)
!5291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_luminance_range_info", file: !200, line: 399, size: 64, elements: !5292)
!5292 = !{!5293, !5294}
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "min_luminance", scope: !5291, file: !200, line: 400, baseType: !598, size: 32)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "max_luminance", scope: !5291, file: !200, line: 401, baseType: !598, size: 32, offset: 32)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "mso_stream_count", scope: !5232, file: !200, line: 792, baseType: !407, size: 8, offset: 1344)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "mso_pixel_overlap", scope: !5232, file: !200, line: 797, baseType: !407, size: 8, offset: 1352)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "max_dsc_bpp", scope: !5232, file: !200, line: 803, baseType: !598, size: 32, offset: 1376)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "vics", scope: !5232, file: !200, line: 808, baseType: !5299, size: 64, offset: 1408)
!5299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "vics_len", scope: !5232, file: !200, line: 813, baseType: !115, size: 32, offset: 1472)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !5232, file: !200, line: 818, baseType: !598, size: 32, offset: 1504)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !5197, file: !200, line: 1625, baseType: !5303, size: 64, offset: 3136)
!5303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5304, size: 64)
!5304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5305)
!5305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_funcs", file: !200, line: 1034, size: 1024, elements: !5306)
!5306 = !{!5307, !5311, !5315, !5319, !5320, !5324, !5328, !5332, !5333, !5334, !5383, !5387, !5391, !5397, !5401, !5402}
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "dpms", scope: !5305, file: !200, line: 1051, baseType: !5308, size: 64)
!5308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5309, size: 64)
!5309 = !DISubroutineType(types: !5310)
!5310 = !{!115, !5196, !115}
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5305, file: !200, line: 1063, baseType: !5312, size: 64, offset: 64)
!5312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5313, size: 64)
!5313 = !DISubroutineType(types: !5314)
!5314 = !{null, !5196}
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !5305, file: !200, line: 1096, baseType: !5316, size: 64, offset: 128)
!5316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5317, size: 64)
!5317 = !DISubroutineType(types: !5318)
!5318 = !{!205, !5196, !870}
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "force", scope: !5305, file: !200, line: 1113, baseType: !5312, size: 64, offset: 192)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "fill_modes", scope: !5305, file: !200, line: 1138, baseType: !5321, size: 64, offset: 256)
!5321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5322, size: 64)
!5322 = !DISubroutineType(types: !5323)
!5323 = !{!115, !5196, !2012, !2012}
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "set_property", scope: !5305, file: !200, line: 1154, baseType: !5325, size: 64, offset: 320)
!5325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5326, size: 64)
!5326 = !DISubroutineType(types: !5327)
!5327 = !{!115, !5196, !4951, !4962}
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "late_register", scope: !5305, file: !200, line: 1173, baseType: !5329, size: 64, offset: 384)
!5329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5330, size: 64)
!5330 = !DISubroutineType(types: !5331)
!5331 = !{!115, !5196}
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "early_unregister", scope: !5305, file: !200, line: 1186, baseType: !5312, size: 64, offset: 448)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !5305, file: !200, line: 1196, baseType: !5312, size: 64, offset: 512)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !5305, file: !200, line: 1229, baseType: !5335, size: 64, offset: 576)
!5335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5336, size: 64)
!5336 = !DISubroutineType(types: !5337)
!5337 = !{!5338, !5196}
!5338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5339, size: 64)
!5339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_state", file: !200, line: 884, size: 1280, elements: !5340)
!5340 = !{!5341, !5342, !5343, !5346, !5347, !5348, !5349, !5369, !5370, !5371, !5372, !5373, !5374, !5375, !5376, !5379, !5380, !5381, !5382}
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "connector", scope: !5339, file: !200, line: 886, baseType: !5196, size: 64)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5339, file: !200, line: 894, baseType: !335, size: 64, offset: 64)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "best_encoder", scope: !5339, file: !200, line: 912, baseType: !5344, size: 64, offset: 128)
!5344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5345, size: 64)
!5345 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_encoder", file: !200, line: 41, flags: DIFlagFwdDecl)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "link_status", scope: !5339, file: !200, line: 918, baseType: !218, size: 32, offset: 192)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5339, file: !200, line: 921, baseType: !4916, size: 64, offset: 256)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !5339, file: !200, line: 928, baseType: !5059, size: 64, offset: 320)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "tv", scope: !5339, file: !200, line: 931, baseType: !5350, size: 448, offset: 384)
!5350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_tv_connector_state", file: !200, line: 867, size: 448, elements: !5351)
!5351 = !{!5352, !5353, !5354, !5361, !5362, !5363, !5364, !5365, !5366, !5367, !5368}
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "select_subconnector", scope: !5350, file: !200, line: 868, baseType: !222, size: 32)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "subconnector", scope: !5350, file: !200, line: 869, baseType: !222, size: 32, offset: 32)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "margins", scope: !5350, file: !200, line: 870, baseType: !5355, size: 128, offset: 64)
!5355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_tv_margins", file: !200, line: 831, size: 128, elements: !5356)
!5356 = !{!5357, !5358, !5359, !5360}
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "bottom", scope: !5355, file: !200, line: 835, baseType: !13, size: 32)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !5355, file: !200, line: 840, baseType: !13, size: 32, offset: 32)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !5355, file: !200, line: 845, baseType: !13, size: 32, offset: 64)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !5355, file: !200, line: 850, baseType: !13, size: 32, offset: 96)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mode", scope: !5350, file: !200, line: 871, baseType: !13, size: 32, offset: 192)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5350, file: !200, line: 872, baseType: !13, size: 32, offset: 224)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !5350, file: !200, line: 873, baseType: !13, size: 32, offset: 256)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "contrast", scope: !5350, file: !200, line: 874, baseType: !13, size: 32, offset: 288)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "flicker_reduction", scope: !5350, file: !200, line: 875, baseType: !13, size: 32, offset: 320)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "overscan", scope: !5350, file: !200, line: 876, baseType: !13, size: 32, offset: 352)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "saturation", scope: !5350, file: !200, line: 877, baseType: !13, size: 32, offset: 384)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "hue", scope: !5350, file: !200, line: 878, baseType: !13, size: 32, offset: 416)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "self_refresh_aware", scope: !5339, file: !200, line: 945, baseType: !870, size: 8, offset: 832)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "picture_aspect_ratio", scope: !5339, file: !200, line: 954, baseType: !190, size: 32, offset: 864)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "content_type", scope: !5339, file: !200, line: 962, baseType: !13, size: 32, offset: 896)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "hdcp_content_type", scope: !5339, file: !200, line: 968, baseType: !13, size: 32, offset: 928)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode", scope: !5339, file: !200, line: 974, baseType: !13, size: 32, offset: 960)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "content_protection", scope: !5339, file: !200, line: 980, baseType: !13, size: 32, offset: 992)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !5339, file: !200, line: 987, baseType: !238, size: 32, offset: 1024)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_job", scope: !5339, file: !200, line: 1000, baseType: !5377, size: 64, offset: 1088)
!5377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5378, size: 64)
!5378 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_writeback_job", file: !200, line: 1000, flags: DIFlagFwdDecl)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "max_requested_bpc", scope: !5339, file: !200, line: 1006, baseType: !407, size: 8, offset: 1152)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "max_bpc", scope: !5339, file: !200, line: 1012, baseType: !407, size: 8, offset: 1160)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "privacy_screen_sw_state", scope: !5339, file: !200, line: 1018, baseType: !258, size: 32, offset: 1184)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_output_metadata", scope: !5339, file: !200, line: 1024, baseType: !5037, size: 64, offset: 1216)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !5305, file: !200, line: 1239, baseType: !5384, size: 64, offset: 640)
!5384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5385, size: 64)
!5385 = !DISubroutineType(types: !5386)
!5386 = !{null, !5196, !5338}
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_set_property", scope: !5305, file: !200, line: 1284, baseType: !5388, size: 64, offset: 704)
!5388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5389, size: 64)
!5389 = !DISubroutineType(types: !5390)
!5390 = !{!115, !5196, !5338, !4951, !4962}
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_get_property", scope: !5305, file: !200, line: 1307, baseType: !5392, size: 64, offset: 768)
!5392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5393, size: 64)
!5393 = !DISubroutineType(types: !5394)
!5394 = !{!115, !5196, !5395, !4951, !4961}
!5395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5396, size: 64)
!5396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5339)
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_print_state", scope: !5305, file: !200, line: 1321, baseType: !5398, size: 64, offset: 832)
!5398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5399, size: 64)
!5399 = !DISubroutineType(types: !5400)
!5400 = !{null, !5096, !5395}
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "oob_hotplug_event", scope: !5305, file: !200, line: 1330, baseType: !5312, size: 64, offset: 896)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_init", scope: !5305, file: !200, line: 1337, baseType: !5403, size: 64, offset: 960)
!5403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5404, size: 64)
!5404 = !DISubroutineType(types: !5405)
!5405 = !{null, !5196, !564}
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "edid_blob_ptr", scope: !5197, file: !200, line: 1632, baseType: !5037, size: 64, offset: 3200)
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5197, file: !200, line: 1635, baseType: !4946, size: 3136, offset: 3264)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode_property", scope: !5197, file: !200, line: 1641, baseType: !4951, size: 64, offset: 6400)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "vrr_capable_property", scope: !5197, file: !200, line: 1652, baseType: !4951, size: 64, offset: 6464)
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace_property", scope: !5197, file: !200, line: 1658, baseType: !4951, size: 64, offset: 6528)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "path_blob_ptr", scope: !5197, file: !200, line: 1666, baseType: !5037, size: 64, offset: 6592)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "max_bpc_property", scope: !5197, file: !200, line: 1672, baseType: !4951, size: 64, offset: 6656)
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "privacy_screen", scope: !5197, file: !200, line: 1675, baseType: !5414, size: 64, offset: 6720)
!5414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5415, size: 64)
!5415 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_privacy_screen", file: !200, line: 46, flags: DIFlagFwdDecl)
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "privacy_screen_notifier", scope: !5197, file: !200, line: 1678, baseType: !5417, size: 192, offset: 6784)
!5417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !5418, line: 54, size: 192, elements: !5419)
!5418 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!5419 = !{!5420, !5426, !5427}
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !5417, file: !5418, line: 55, baseType: !5421, size: 64)
!5421 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !5418, line: 51, baseType: !5422)
!5422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5423, size: 64)
!5423 = !DISubroutineType(types: !5424)
!5424 = !{!115, !5425, !499, !334}
!5425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5417, size: 64)
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5417, file: !5418, line: 56, baseType: !5425, size: 64, offset: 64)
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !5417, file: !5418, line: 57, baseType: !115, size: 32, offset: 128)
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "privacy_screen_sw_state_property", scope: !5197, file: !200, line: 1684, baseType: !4951, size: 64, offset: 6976)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "privacy_screen_hw_state_property", scope: !5197, file: !200, line: 1690, baseType: !4951, size: 64, offset: 7040)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "polled", scope: !5197, file: !200, line: 1717, baseType: !5431, size: 8, offset: 7104)
!5431 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !333, line: 108, baseType: !407)
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "dpms", scope: !5197, file: !200, line: 1725, baseType: !115, size: 32, offset: 7136)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !5197, file: !200, line: 1728, baseType: !5434, size: 64, offset: 7168)
!5434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5435, size: 64)
!5435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5436)
!5436 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_helper_funcs", file: !200, line: 37, flags: DIFlagFwdDecl)
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "cmdline_mode", scope: !5197, file: !200, line: 1731, baseType: !5438, size: 768, offset: 7232)
!5438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_cmdline_mode", file: !200, line: 1348, size: 768, elements: !5439)
!5439 = !{!5440, !5441, !5442, !5443, !5444, !5445, !5446, !5447, !5448, !5449, !5450, !5451, !5452, !5453, !5454, !5455, !5456, !5457, !5458}
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5438, file: !200, line: 1354, baseType: !3732, size: 256)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "specified", scope: !5438, file: !200, line: 1361, baseType: !870, size: 8, offset: 256)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "refresh_specified", scope: !5438, file: !200, line: 1368, baseType: !870, size: 8, offset: 264)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "bpp_specified", scope: !5438, file: !200, line: 1375, baseType: !870, size: 8, offset: 272)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_clock", scope: !5438, file: !200, line: 1382, baseType: !13, size: 32, offset: 288)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "xres", scope: !5438, file: !200, line: 1389, baseType: !115, size: 32, offset: 320)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "yres", scope: !5438, file: !200, line: 1396, baseType: !115, size: 32, offset: 352)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "bpp", scope: !5438, file: !200, line: 1403, baseType: !115, size: 32, offset: 384)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "refresh", scope: !5438, file: !200, line: 1410, baseType: !115, size: 32, offset: 416)
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !5438, file: !200, line: 1417, baseType: !870, size: 8, offset: 448)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !5438, file: !200, line: 1424, baseType: !870, size: 8, offset: 456)
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "cvt", scope: !5438, file: !200, line: 1432, baseType: !870, size: 8, offset: 464)
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "margins", scope: !5438, file: !200, line: 1440, baseType: !870, size: 8, offset: 472)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "force", scope: !5438, file: !200, line: 1448, baseType: !264, size: 32, offset: 480)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "rotation_reflection", scope: !5438, file: !200, line: 1458, baseType: !13, size: 32, offset: 512)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation", scope: !5438, file: !200, line: 1466, baseType: !270, size: 32, offset: 544)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "tv_margins", scope: !5438, file: !200, line: 1471, baseType: !5355, size: 128, offset: 576)
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "tv_mode", scope: !5438, file: !200, line: 1476, baseType: !277, size: 32, offset: 704)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "tv_mode_specified", scope: !5438, file: !200, line: 1483, baseType: !870, size: 8, offset: 736)
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "force", scope: !5197, file: !200, line: 1733, baseType: !264, size: 32, offset: 8000)
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "edid_override", scope: !5197, file: !200, line: 1741, baseType: !5461, size: 64, offset: 8064)
!5461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5462, size: 64)
!5462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5463)
!5463 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_edid", file: !200, line: 1741, flags: DIFlagFwdDecl)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "edid_override_mutex", scope: !5197, file: !200, line: 1746, baseType: !790, size: 256, offset: 8128)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "epoch_counter", scope: !5197, file: !200, line: 1749, baseType: !602, size: 64, offset: 8384)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "possible_encoders", scope: !5197, file: !200, line: 1756, baseType: !598, size: 32, offset: 8448)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "encoder", scope: !5197, file: !200, line: 1764, baseType: !5344, size: 64, offset: 8512)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "eld", scope: !5197, file: !200, line: 1768, baseType: !5469, size: 1024, offset: 8576)
!5469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5431, size: 1024, elements: !5470)
!5470 = !{!5471}
!5471 = !DISubrange(count: 128)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "eld_mutex", scope: !5197, file: !200, line: 1770, baseType: !790, size: 256, offset: 9600)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "latency_present", scope: !5197, file: !200, line: 1773, baseType: !5474, size: 16, offset: 9856)
!5474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !870, size: 16, elements: !909)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "video_latency", scope: !5197, file: !200, line: 1778, baseType: !5476, size: 64, offset: 9888)
!5476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 64, elements: !909)
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "audio_latency", scope: !5197, file: !200, line: 1783, baseType: !5476, size: 64, offset: 9952)
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "ddc", scope: !5197, file: !200, line: 1794, baseType: !5479, size: 64, offset: 10048)
!5479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5480, size: 64)
!5480 = !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !200, line: 48, flags: DIFlagFwdDecl)
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "null_edid_counter", scope: !5197, file: !200, line: 1800, baseType: !115, size: 32, offset: 10112)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "bad_edid_counter", scope: !5197, file: !200, line: 1803, baseType: !13, size: 32, offset: 10144)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "edid_corrupt", scope: !5197, file: !200, line: 1810, baseType: !870, size: 8, offset: 10176)
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "real_edid_checksum", scope: !5197, file: !200, line: 1816, baseType: !407, size: 8, offset: 10184)
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_entry", scope: !5197, file: !200, line: 1819, baseType: !564, size: 64, offset: 10240)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5197, file: !200, line: 1835, baseType: !5338, size: 64, offset: 10304)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "tile_blob_ptr", scope: !5197, file: !200, line: 1852, baseType: !5037, size: 64, offset: 10368)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "has_tile", scope: !5197, file: !200, line: 1855, baseType: !870, size: 8, offset: 10432)
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "tile_group", scope: !5197, file: !200, line: 1857, baseType: !5490, size: 64, offset: 10496)
!5490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5491, size: 64)
!5491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_tile_group", file: !200, line: 2058, size: 256, elements: !5492)
!5492 = !{!5493, !5494, !5495, !5496}
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5491, file: !200, line: 2059, baseType: !345, size: 32)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5491, file: !200, line: 2060, baseType: !340, size: 64, offset: 64)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5491, file: !200, line: 2061, baseType: !115, size: 32, offset: 128)
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "group_data", scope: !5491, file: !200, line: 2062, baseType: !5497, size: 64, offset: 160)
!5497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !407, size: 64, elements: !1513)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "tile_is_single_monitor", scope: !5197, file: !200, line: 1859, baseType: !870, size: 8, offset: 10560)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "num_h_tile", scope: !5197, file: !200, line: 1863, baseType: !5431, size: 8, offset: 10568)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "num_v_tile", scope: !5197, file: !200, line: 1863, baseType: !5431, size: 8, offset: 10576)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "tile_h_loc", scope: !5197, file: !200, line: 1866, baseType: !5431, size: 8, offset: 10584)
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "tile_v_loc", scope: !5197, file: !200, line: 1866, baseType: !5431, size: 8, offset: 10592)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "tile_h_size", scope: !5197, file: !200, line: 1869, baseType: !5030, size: 16, offset: 10608)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "tile_v_size", scope: !5197, file: !200, line: 1869, baseType: !5030, size: 16, offset: 10624)
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "free_node", scope: !5197, file: !200, line: 1878, baseType: !1276, size: 64, offset: 10688)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_sink_metadata", scope: !5197, file: !200, line: 1881, baseType: !5507, size: 96, offset: 10752)
!5507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdr_sink_metadata", file: !191, line: 383, size: 96, elements: !5508)
!5508 = !{!5509, !5510}
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "metadata_type", scope: !5507, file: !191, line: 387, baseType: !599, size: 32)
!5510 = !DIDerivedType(tag: DW_TAG_member, scope: !5507, file: !191, line: 391, baseType: !5511, size: 64, offset: 32)
!5511 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5507, file: !191, line: 391, size: 64, elements: !5512)
!5512 = !{!5513}
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "hdmi_type1", scope: !5511, file: !191, line: 392, baseType: !5514, size: 64)
!5514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdr_static_metadata", file: !191, line: 370, size: 64, elements: !5515)
!5515 = !{!5516, !5517, !5518, !5519, !5520}
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "eotf", scope: !5514, file: !191, line: 371, baseType: !409, size: 8)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "metadata_type", scope: !5514, file: !191, line: 372, baseType: !409, size: 8, offset: 8)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "max_cll", scope: !5514, file: !191, line: 373, baseType: !418, size: 16, offset: 16)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "max_fall", scope: !5514, file: !191, line: 374, baseType: !418, size: 16, offset: 32)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "min_cll", scope: !5514, file: !191, line: 375, baseType: !418, size: 16, offset: 48)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5193, file: !4918, line: 185, baseType: !5338, size: 64, offset: 64)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "old_state", scope: !5193, file: !4918, line: 185, baseType: !5338, size: 64, offset: 128)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "new_state", scope: !5193, file: !4918, line: 185, baseType: !5338, size: 64, offset: 192)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "out_fence_ptr", scope: !5193, file: !4918, line: 193, baseType: !1746, size: 64, offset: 256)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "num_private_objs", scope: !4917, file: !4918, line: 405, baseType: !115, size: 32, offset: 448)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "private_objs", scope: !4917, file: !4918, line: 406, baseType: !5527, size: 64, offset: 512)
!5527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5528, size: 64)
!5528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__drm_private_objs_state", file: !4918, line: 343, size: 256, elements: !5529)
!5529 = !{!5530, !5561, !5562, !5563}
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !5528, file: !4918, line: 344, baseType: !5531, size: 64)
!5531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5532, size: 64)
!5532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_private_obj", file: !4918, line: 286, size: 704, elements: !5533)
!5533 = !{!5534, !5535, !5536, !5542}
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5532, file: !4918, line: 291, baseType: !370, size: 128)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5532, file: !4918, line: 296, baseType: !4772, size: 448, offset: 128)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5532, file: !4918, line: 301, baseType: !5537, size: 64, offset: 576)
!5537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5538, size: 64)
!5538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_private_state", file: !4918, line: 331, size: 128, elements: !5539)
!5539 = !{!5540, !5541}
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5538, file: !4918, line: 335, baseType: !4916, size: 64)
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !5538, file: !4918, line: 340, baseType: !5531, size: 64, offset: 64)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !5532, file: !4918, line: 309, baseType: !5543, size: 64, offset: 640)
!5543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5544, size: 64)
!5544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5545)
!5545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_private_state_funcs", file: !4918, line: 209, size: 192, elements: !5546)
!5546 = !{!5547, !5551, !5555}
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !5545, file: !4918, line: 221, baseType: !5548, size: 64)
!5548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5549, size: 64)
!5549 = !DISubroutineType(types: !5550)
!5550 = !{!5537, !5531}
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !5545, file: !4918, line: 228, baseType: !5552, size: 64, offset: 64)
!5552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5553, size: 64)
!5553 = !DISubroutineType(types: !5554)
!5554 = !{null, !5531, !5537}
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_print_state", scope: !5545, file: !4918, line: 240, baseType: !5556, size: 64, offset: 128)
!5556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5557, size: 64)
!5557 = !DISubroutineType(types: !5558)
!5558 = !{null, !5096, !5559}
!5559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5560, size: 64)
!5560 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5538)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5528, file: !4918, line: 345, baseType: !5537, size: 64, offset: 64)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "old_state", scope: !5528, file: !4918, line: 345, baseType: !5537, size: 64, offset: 128)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "new_state", scope: !5528, file: !4918, line: 345, baseType: !5537, size: 64, offset: 192)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_ctx", scope: !4917, file: !4918, line: 408, baseType: !4791, size: 64, offset: 576)
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "fake_commit", scope: !4917, file: !4918, line: 420, baseType: !5059, size: 64, offset: 640)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "commit_work", scope: !4917, file: !4918, line: 428, baseType: !1050, size: 256, offset: 704)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_commit", scope: !4833, file: !4768, line: 283, baseType: !5568, size: 64, offset: 320)
!5568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5569, size: 64)
!5569 = !DISubroutineType(types: !5570)
!5570 = !{!115, !340, !4916, !870}
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_alloc", scope: !4833, file: !4768, line: 302, baseType: !5572, size: 64, offset: 384)
!5572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5573, size: 64)
!5573 = !DISubroutineType(types: !5574)
!5574 = !{!4916, !340}
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_clear", scope: !4833, file: !4768, line: 323, baseType: !5576, size: 64, offset: 448)
!5576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5577, size: 64)
!5577 = !DISubroutineType(types: !5578)
!5578 = !{null, !4916}
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_free", scope: !4833, file: !4768, line: 338, baseType: !5576, size: 64, offset: 512)
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "poll_enabled", scope: !4767, file: !4768, line: 546, baseType: !870, size: 8, offset: 3520)
!5581 = !DIDerivedType(tag: DW_TAG_member, name: "poll_running", scope: !4767, file: !4768, line: 547, baseType: !870, size: 8, offset: 3528)
!5582 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_event", scope: !4767, file: !4768, line: 548, baseType: !870, size: 8, offset: 3536)
!5583 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_work", scope: !4767, file: !4768, line: 549, baseType: !1107, size: 704, offset: 3584)
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "blob_lock", scope: !4767, file: !4768, line: 557, baseType: !790, size: 256, offset: 4288)
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "property_blob_list", scope: !4767, file: !4768, line: 565, baseType: !370, size: 128, offset: 4544)
!5586 = !DIDerivedType(tag: DW_TAG_member, name: "edid_property", scope: !4767, file: !4768, line: 573, baseType: !4951, size: 64, offset: 4672)
!5587 = !DIDerivedType(tag: DW_TAG_member, name: "dpms_property", scope: !4767, file: !4768, line: 578, baseType: !4951, size: 64, offset: 4736)
!5588 = !DIDerivedType(tag: DW_TAG_member, name: "path_property", scope: !4767, file: !4768, line: 583, baseType: !4951, size: 64, offset: 4800)
!5589 = !DIDerivedType(tag: DW_TAG_member, name: "tile_property", scope: !4767, file: !4768, line: 589, baseType: !4951, size: 64, offset: 4864)
!5590 = !DIDerivedType(tag: DW_TAG_member, name: "link_status_property", scope: !4767, file: !4768, line: 594, baseType: !4951, size: 64, offset: 4928)
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "plane_type_property", scope: !4767, file: !4768, line: 599, baseType: !4951, size: 64, offset: 4992)
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_x", scope: !4767, file: !4768, line: 604, baseType: !4951, size: 64, offset: 5056)
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_y", scope: !4767, file: !4768, line: 609, baseType: !4951, size: 64, offset: 5120)
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_w", scope: !4767, file: !4768, line: 614, baseType: !4951, size: 64, offset: 5184)
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_h", scope: !4767, file: !4768, line: 619, baseType: !4951, size: 64, offset: 5248)
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_x", scope: !4767, file: !4768, line: 624, baseType: !4951, size: 64, offset: 5312)
!5597 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_y", scope: !4767, file: !4768, line: 629, baseType: !4951, size: 64, offset: 5376)
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_w", scope: !4767, file: !4768, line: 634, baseType: !4951, size: 64, offset: 5440)
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_h", scope: !4767, file: !4768, line: 639, baseType: !4951, size: 64, offset: 5504)
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_id", scope: !4767, file: !4768, line: 644, baseType: !4951, size: 64, offset: 5568)
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "prop_in_fence_fd", scope: !4767, file: !4768, line: 649, baseType: !4951, size: 64, offset: 5632)
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "prop_out_fence_ptr", scope: !4767, file: !4768, line: 655, baseType: !4951, size: 64, offset: 5696)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_id", scope: !4767, file: !4768, line: 660, baseType: !4951, size: 64, offset: 5760)
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_damage_clips", scope: !4767, file: !4768, line: 669, baseType: !4951, size: 64, offset: 5824)
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "prop_active", scope: !4767, file: !4768, line: 675, baseType: !4951, size: 64, offset: 5888)
!5606 = !DIDerivedType(tag: DW_TAG_member, name: "prop_mode_id", scope: !4767, file: !4768, line: 681, baseType: !4951, size: 64, offset: 5952)
!5607 = !DIDerivedType(tag: DW_TAG_member, name: "prop_vrr_enabled", scope: !4767, file: !4768, line: 686, baseType: !4951, size: 64, offset: 6016)
!5608 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_subconnector_property", scope: !4767, file: !4768, line: 692, baseType: !4951, size: 64, offset: 6080)
!5609 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_select_subconnector_property", scope: !4767, file: !4768, line: 697, baseType: !4951, size: 64, offset: 6144)
!5610 = !DIDerivedType(tag: DW_TAG_member, name: "dp_subconnector_property", scope: !4767, file: !4768, line: 703, baseType: !4951, size: 64, offset: 6208)
!5611 = !DIDerivedType(tag: DW_TAG_member, name: "tv_subconnector_property", scope: !4767, file: !4768, line: 709, baseType: !4951, size: 64, offset: 6272)
!5612 = !DIDerivedType(tag: DW_TAG_member, name: "tv_select_subconnector_property", scope: !4767, file: !4768, line: 714, baseType: !4951, size: 64, offset: 6336)
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_tv_mode_property", scope: !4767, file: !4768, line: 722, baseType: !4951, size: 64, offset: 6400)
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "tv_mode_property", scope: !4767, file: !4768, line: 728, baseType: !4951, size: 64, offset: 6464)
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "tv_left_margin_property", scope: !4767, file: !4768, line: 734, baseType: !4951, size: 64, offset: 6528)
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "tv_right_margin_property", scope: !4767, file: !4768, line: 739, baseType: !4951, size: 64, offset: 6592)
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "tv_top_margin_property", scope: !4767, file: !4768, line: 744, baseType: !4951, size: 64, offset: 6656)
!5618 = !DIDerivedType(tag: DW_TAG_member, name: "tv_bottom_margin_property", scope: !4767, file: !4768, line: 749, baseType: !4951, size: 64, offset: 6720)
!5619 = !DIDerivedType(tag: DW_TAG_member, name: "tv_brightness_property", scope: !4767, file: !4768, line: 754, baseType: !4951, size: 64, offset: 6784)
!5620 = !DIDerivedType(tag: DW_TAG_member, name: "tv_contrast_property", scope: !4767, file: !4768, line: 759, baseType: !4951, size: 64, offset: 6848)
!5621 = !DIDerivedType(tag: DW_TAG_member, name: "tv_flicker_reduction_property", scope: !4767, file: !4768, line: 764, baseType: !4951, size: 64, offset: 6912)
!5622 = !DIDerivedType(tag: DW_TAG_member, name: "tv_overscan_property", scope: !4767, file: !4768, line: 769, baseType: !4951, size: 64, offset: 6976)
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "tv_saturation_property", scope: !4767, file: !4768, line: 774, baseType: !4951, size: 64, offset: 7040)
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "tv_hue_property", scope: !4767, file: !4768, line: 778, baseType: !4951, size: 64, offset: 7104)
!5625 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode_property", scope: !4767, file: !4768, line: 784, baseType: !4951, size: 64, offset: 7168)
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_property", scope: !4767, file: !4768, line: 789, baseType: !4951, size: 64, offset: 7232)
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "content_type_property", scope: !4767, file: !4768, line: 794, baseType: !4951, size: 64, offset: 7296)
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_property", scope: !4767, file: !4768, line: 799, baseType: !4951, size: 64, offset: 7360)
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_size_property", scope: !4767, file: !4768, line: 804, baseType: !4951, size: 64, offset: 7424)
!5630 = !DIDerivedType(tag: DW_TAG_member, name: "ctm_property", scope: !4767, file: !4768, line: 810, baseType: !4951, size: 64, offset: 7488)
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_property", scope: !4767, file: !4768, line: 816, baseType: !4951, size: 64, offset: 7552)
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_size_property", scope: !4767, file: !4768, line: 821, baseType: !4951, size: 64, offset: 7616)
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_x_property", scope: !4767, file: !4768, line: 827, baseType: !4951, size: 64, offset: 7680)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_y_property", scope: !4767, file: !4768, line: 832, baseType: !4951, size: 64, offset: 7744)
!5635 = !DIDerivedType(tag: DW_TAG_member, name: "non_desktop_property", scope: !4767, file: !4768, line: 839, baseType: !4951, size: 64, offset: 7808)
!5636 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation_property", scope: !4767, file: !4768, line: 846, baseType: !4951, size: 64, offset: 7872)
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_fb_id_property", scope: !4767, file: !4768, line: 853, baseType: !4951, size: 64, offset: 7936)
!5638 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_pixel_formats_property", scope: !4767, file: !4768, line: 861, baseType: !4951, size: 64, offset: 8000)
!5639 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_out_fence_ptr_property", scope: !4767, file: !4768, line: 869, baseType: !4951, size: 64, offset: 8064)
!5640 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_output_metadata_property", scope: !4767, file: !4768, line: 876, baseType: !4951, size: 64, offset: 8128)
!5641 = !DIDerivedType(tag: DW_TAG_member, name: "content_protection_property", scope: !4767, file: !4768, line: 882, baseType: !4951, size: 64, offset: 8192)
!5642 = !DIDerivedType(tag: DW_TAG_member, name: "hdcp_content_type_property", scope: !4767, file: !4768, line: 888, baseType: !4951, size: 64, offset: 8256)
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "preferred_depth", scope: !4767, file: !4768, line: 891, baseType: !2012, size: 32, offset: 8320)
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "prefer_shadow", scope: !4767, file: !4768, line: 891, baseType: !2012, size: 32, offset: 8352)
!5645 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_xbgr_30bpp", scope: !4767, file: !4768, line: 899, baseType: !870, size: 8, offset: 8384)
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_host_byte_order", scope: !4767, file: !4768, line: 913, baseType: !870, size: 8, offset: 8392)
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "async_page_flip", scope: !4767, file: !4768, line: 919, baseType: !870, size: 8, offset: 8400)
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "fb_modifiers_not_supported", scope: !4767, file: !4768, line: 929, baseType: !870, size: 8, offset: 8408)
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "normalize_zpos", scope: !4767, file: !4768, line: 937, baseType: !870, size: 8, offset: 8416)
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "modifiers_property", scope: !4767, file: !4768, line: 943, baseType: !4951, size: 64, offset: 8448)
!5651 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_width", scope: !4767, file: !4768, line: 946, baseType: !2012, size: 32, offset: 8512)
!5652 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_height", scope: !4767, file: !4768, line: 946, baseType: !2012, size: 32, offset: 8544)
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_state", scope: !4767, file: !4768, line: 955, baseType: !4916, size: 64, offset: 8576)
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !4767, file: !4768, line: 957, baseType: !5655, size: 64, offset: 8640)
!5655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5656, size: 64)
!5656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5657)
!5657 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_helper_funcs", file: !4768, line: 957, flags: DIFlagFwdDecl)
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_lock", scope: !341, file: !310, line: 285, baseType: !790, size: 256, offset: 11648)
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_idr", scope: !341, file: !310, line: 288, baseType: !1343, size: 192, offset: 11904)
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "vma_offset_manager", scope: !341, file: !310, line: 291, baseType: !5661, size: 64, offset: 12096)
!5661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5662, size: 64)
!5662 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vma_offset_manager", file: !310, line: 16, flags: DIFlagFwdDecl)
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "vram_mm", scope: !341, file: !310, line: 294, baseType: !5664, size: 64, offset: 12160)
!5664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5665, size: 64)
!5665 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vram_mm", file: !310, line: 17, flags: DIFlagFwdDecl)
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "switch_power_state", scope: !341, file: !310, line: 304, baseType: !309, size: 32, offset: 12224)
!5667 = !DIDerivedType(tag: DW_TAG_member, name: "fb_helper", scope: !341, file: !310, line: 312, baseType: !5668, size: 64, offset: 12288)
!5668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5669, size: 64)
!5669 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_fb_helper", file: !310, line: 18, flags: DIFlagFwdDecl)
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !341, file: !310, line: 319, baseType: !790, size: 256, offset: 12352)
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_list", scope: !341, file: !310, line: 327, baseType: !370, size: 128, offset: 12608)
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !336, file: !337, line: 936, baseType: !4645, size: 64, offset: 64)
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !336, file: !337, line: 944, baseType: !370, size: 128, offset: 128)
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !336, file: !337, line: 947, baseType: !449, size: 64, offset: 256)
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !336, file: !337, line: 959, baseType: !4772, size: 448, offset: 320)
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !336, file: !337, line: 962, baseType: !4939, size: 256, offset: 768)
!5677 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !336, file: !337, line: 971, baseType: !4931, size: 64, offset: 1024)
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "cursor", scope: !336, file: !337, line: 980, baseType: !4931, size: 64, offset: 1088)
!5679 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !336, file: !337, line: 986, baseType: !13, size: 32, offset: 1152)
!5680 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_x", scope: !336, file: !337, line: 995, baseType: !115, size: 32, offset: 1184)
!5681 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_y", scope: !336, file: !337, line: 1003, baseType: !115, size: 32, offset: 1216)
!5682 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !336, file: !337, line: 1013, baseType: !870, size: 8, offset: 1248)
!5683 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !336, file: !337, line: 1023, baseType: !4876, size: 960, offset: 1280)
!5684 = !DIDerivedType(tag: DW_TAG_member, name: "hwmode", scope: !336, file: !337, line: 1039, baseType: !4876, size: 960, offset: 2240)
!5685 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !336, file: !337, line: 1048, baseType: !115, size: 32, offset: 3200)
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !336, file: !337, line: 1056, baseType: !115, size: 32, offset: 3232)
!5687 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !336, file: !337, line: 1059, baseType: !5688, size: 64, offset: 3264)
!5688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5689, size: 64)
!5689 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5690)
!5690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_funcs", file: !337, line: 402, size: 1536, elements: !5691)
!5691 = !{!5692, !5696, !5700, !5704, !5708, !5713, !5714, !5730, !5734, !5738, !5742, !5746, !5750, !5754, !5760, !5764, !5765, !5769, !5774, !5780, !5784, !5788, !5789, !5790}
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5690, file: !337, line: 413, baseType: !5693, size: 64)
!5693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5694, size: 64)
!5694 = !DISubroutineType(types: !5695)
!5695 = !{null, !335}
!5696 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_set", scope: !5690, file: !337, line: 436, baseType: !5697, size: 64, offset: 64)
!5697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5698, size: 64)
!5698 = !DISubroutineType(types: !5699)
!5699 = !{!115, !335, !4841, !2012, !2012, !2012}
!5700 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_set2", scope: !5690, file: !337, line: 458, baseType: !5701, size: 64, offset: 128)
!5701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5702, size: 64)
!5702 = !DISubroutineType(types: !5703)
!5703 = !{!115, !335, !4841, !2012, !2012, !2012, !1989, !1989}
!5704 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_move", scope: !5690, file: !337, line: 478, baseType: !5705, size: 64, offset: 192)
!5705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5706, size: 64)
!5706 = !DISubroutineType(types: !5707)
!5707 = !{!115, !335, !115, !115}
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_set", scope: !5690, file: !337, line: 493, baseType: !5709, size: 64, offset: 256)
!5709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5710, size: 64)
!5710 = !DISubroutineType(types: !5711)
!5711 = !{!115, !335, !5712, !5712, !5712, !2012, !4791}
!5712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!5713 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !5690, file: !337, line: 504, baseType: !5693, size: 64, offset: 320)
!5714 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !5690, file: !337, line: 520, baseType: !5715, size: 64, offset: 384)
!5715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5716, size: 64)
!5716 = !DISubroutineType(types: !5717)
!5717 = !{!115, !5718, !4791}
!5718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5719, size: 64)
!5719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_set", file: !337, line: 1193, size: 384, elements: !5720)
!5720 = !{!5721, !5722, !5723, !5725, !5726, !5727, !5729}
!5721 = !DIDerivedType(tag: DW_TAG_member, name: "fb", scope: !5719, file: !337, line: 1194, baseType: !4839, size: 64)
!5722 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5719, file: !337, line: 1195, baseType: !335, size: 64, offset: 64)
!5723 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5719, file: !337, line: 1196, baseType: !5724, size: 64, offset: 128)
!5724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4876, size: 64)
!5725 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !5719, file: !337, line: 1198, baseType: !2012, size: 32, offset: 192)
!5726 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !5719, file: !337, line: 1199, baseType: !2012, size: 32, offset: 224)
!5727 = !DIDerivedType(tag: DW_TAG_member, name: "connectors", scope: !5719, file: !337, line: 1201, baseType: !5728, size: 64, offset: 256)
!5728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5196, size: 64)
!5729 = !DIDerivedType(tag: DW_TAG_member, name: "num_connectors", scope: !5719, file: !337, line: 1202, baseType: !496, size: 64, offset: 320)
!5730 = !DIDerivedType(tag: DW_TAG_member, name: "page_flip", scope: !5690, file: !337, line: 576, baseType: !5731, size: 64, offset: 448)
!5731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5732, size: 64)
!5732 = !DISubroutineType(types: !5733)
!5733 = !{!115, !335, !4839, !5069, !2012, !4791}
!5734 = !DIDerivedType(tag: DW_TAG_member, name: "page_flip_target", scope: !5690, file: !337, line: 595, baseType: !5735, size: 64, offset: 512)
!5735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5736, size: 64)
!5736 = !DISubroutineType(types: !5737)
!5737 = !{!115, !335, !4839, !5069, !2012, !2012, !4791}
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "set_property", scope: !5690, file: !337, line: 615, baseType: !5739, size: 64, offset: 576)
!5739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5740, size: 64)
!5740 = !DISubroutineType(types: !5741)
!5741 = !{!115, !335, !4951, !4962}
!5742 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !5690, file: !337, line: 649, baseType: !5743, size: 64, offset: 640)
!5743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5744, size: 64)
!5744 = !DISubroutineType(types: !5745)
!5745 = !{!5155, !335}
!5746 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !5690, file: !337, line: 659, baseType: !5747, size: 64, offset: 704)
!5747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5748, size: 64)
!5748 = !DISubroutineType(types: !5749)
!5749 = !{null, !335, !5155}
!5750 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_set_property", scope: !5690, file: !337, line: 704, baseType: !5751, size: 64, offset: 768)
!5751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5752, size: 64)
!5752 = !DISubroutineType(types: !5753)
!5753 = !{!115, !335, !5155, !4951, !4962}
!5754 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_get_property", scope: !5690, file: !337, line: 726, baseType: !5755, size: 64, offset: 832)
!5755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5756, size: 64)
!5756 = !DISubroutineType(types: !5757)
!5757 = !{!115, !335, !5758, !4951, !4961}
!5758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5759, size: 64)
!5759 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5156)
!5760 = !DIDerivedType(tag: DW_TAG_member, name: "late_register", scope: !5690, file: !337, line: 744, baseType: !5761, size: 64, offset: 896)
!5761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5762, size: 64)
!5762 = !DISubroutineType(types: !5763)
!5763 = !{!115, !335}
!5764 = !DIDerivedType(tag: DW_TAG_member, name: "early_unregister", scope: !5690, file: !337, line: 755, baseType: !5693, size: 64, offset: 960)
!5765 = !DIDerivedType(tag: DW_TAG_member, name: "set_crc_source", scope: !5690, file: !337, line: 784, baseType: !5766, size: 64, offset: 1024)
!5766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5767, size: 64)
!5767 = !DISubroutineType(types: !5768)
!5768 = !{!115, !335, !367}
!5769 = !DIDerivedType(tag: DW_TAG_member, name: "verify_crc_source", scope: !5690, file: !337, line: 800, baseType: !5770, size: 64, offset: 1088)
!5770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5771, size: 64)
!5771 = !DISubroutineType(types: !5772)
!5772 = !{!115, !335, !367, !5773}
!5773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!5774 = !DIDerivedType(tag: DW_TAG_member, name: "get_crc_sources", scope: !5690, file: !337, line: 822, baseType: !5775, size: 64, offset: 1152)
!5775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5776, size: 64)
!5776 = !DISubroutineType(types: !5777)
!5777 = !{!5778, !335, !5773}
!5778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5779, size: 64)
!5779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !367)
!5780 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_print_state", scope: !5690, file: !337, line: 834, baseType: !5781, size: 64, offset: 1216)
!5781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5782, size: 64)
!5782 = !DISubroutineType(types: !5783)
!5783 = !{null, !5096, !5758}
!5784 = !DIDerivedType(tag: DW_TAG_member, name: "get_vblank_counter", scope: !5690, file: !337, line: 861, baseType: !5785, size: 64, offset: 1280)
!5785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5786, size: 64)
!5786 = !DISubroutineType(types: !5787)
!5787 = !{!598, !335}
!5788 = !DIDerivedType(tag: DW_TAG_member, name: "enable_vblank", scope: !5690, file: !337, line: 874, baseType: !5761, size: 64, offset: 1344)
!5789 = !DIDerivedType(tag: DW_TAG_member, name: "disable_vblank", scope: !5690, file: !337, line: 882, baseType: !5693, size: 64, offset: 1408)
!5790 = !DIDerivedType(tag: DW_TAG_member, name: "get_vblank_timestamp", scope: !5690, file: !337, line: 920, baseType: !5791, size: 64, offset: 1472)
!5791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5792, size: 64)
!5792 = !DISubroutineType(types: !5793)
!5793 = !{!870, !335, !919, !5794, !870}
!5794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!5795 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_size", scope: !336, file: !337, line: 1068, baseType: !2012, size: 32, offset: 3328)
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_store", scope: !336, file: !337, line: 1077, baseType: !5797, size: 64, offset: 3392)
!5797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5030, size: 64)
!5798 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !336, file: !337, line: 1080, baseType: !5799, size: 64, offset: 3456)
!5799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5800, size: 64)
!5800 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5801)
!5801 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_helper_funcs", file: !337, line: 63, flags: DIFlagFwdDecl)
!5802 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !336, file: !337, line: 1083, baseType: !4946, size: 3136, offset: 3520)
!5803 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_filter_property", scope: !336, file: !337, line: 1089, baseType: !4951, size: 64, offset: 6656)
!5804 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !336, file: !337, line: 1104, baseType: !5155, size: 64, offset: 6720)
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "commit_list", scope: !336, file: !337, line: 1121, baseType: !370, size: 128, offset: 6784)
!5806 = !DIDerivedType(tag: DW_TAG_member, name: "commit_lock", scope: !336, file: !337, line: 1128, baseType: !383, size: 32, offset: 6912)
!5807 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_entry", scope: !336, file: !337, line: 1135, baseType: !564, size: 64, offset: 6976)
!5808 = !DIDerivedType(tag: DW_TAG_member, name: "crc", scope: !336, file: !337, line: 1142, baseType: !5809, size: 576, offset: 7040)
!5809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_crc", file: !5810, line: 53, size: 576, elements: !5811)
!5810 = !DIFile(filename: "./include/drm/drm_debugfs_crc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e277ec0ede400e3d94103804613a92f2")
!5811 = !{!5812, !5813, !5814, !5815, !5816, !5826, !5827, !5828, !5829}
!5812 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5809, file: !5810, line: 54, baseType: !383, size: 32)
!5813 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !5809, file: !5810, line: 55, baseType: !367, size: 64, offset: 64)
!5814 = !DIDerivedType(tag: DW_TAG_member, name: "opened", scope: !5809, file: !5810, line: 56, baseType: !870, size: 8, offset: 128)
!5815 = !DIDerivedType(tag: DW_TAG_member, name: "overflow", scope: !5809, file: !5810, line: 56, baseType: !870, size: 8, offset: 136)
!5816 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !5809, file: !5810, line: 57, baseType: !5817, size: 64, offset: 192)
!5817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5818, size: 64)
!5818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_crc_entry", file: !5810, line: 33, size: 384, elements: !5819)
!5819 = !{!5820, !5821, !5822}
!5820 = !DIDerivedType(tag: DW_TAG_member, name: "has_frame_counter", scope: !5818, file: !5810, line: 34, baseType: !870, size: 8)
!5821 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !5818, file: !5810, line: 35, baseType: !2012, size: 32, offset: 32)
!5822 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !5818, file: !5810, line: 36, baseType: !5823, size: 320, offset: 64)
!5823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2012, size: 320, elements: !5824)
!5824 = !{!5825}
!5825 = !DISubrange(count: 10)
!5826 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5809, file: !5810, line: 58, baseType: !115, size: 32, offset: 256)
!5827 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !5809, file: !5810, line: 58, baseType: !115, size: 32, offset: 288)
!5828 = !DIDerivedType(tag: DW_TAG_member, name: "values_cnt", scope: !5809, file: !5810, line: 59, baseType: !496, size: 64, offset: 320)
!5829 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !5809, file: !5810, line: 60, baseType: !1325, size: 192, offset: 384)
!5830 = !DIDerivedType(tag: DW_TAG_member, name: "fence_context", scope: !336, file: !337, line: 1149, baseType: !13, size: 32, offset: 7616)
!5831 = !DIDerivedType(tag: DW_TAG_member, name: "fence_lock", scope: !336, file: !337, line: 1156, baseType: !383, size: 32, offset: 7648)
!5832 = !DIDerivedType(tag: DW_TAG_member, name: "fence_seqno", scope: !336, file: !337, line: 1163, baseType: !499, size: 64, offset: 7680)
!5833 = !DIDerivedType(tag: DW_TAG_member, name: "timeline_name", scope: !336, file: !337, line: 1170, baseType: !3732, size: 256, offset: 7744)
!5834 = !DIDerivedType(tag: DW_TAG_member, name: "self_refresh_data", scope: !336, file: !337, line: 1177, baseType: !5835, size: 64, offset: 8000)
!5835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5836, size: 64)
!5836 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_self_refresh_data", file: !337, line: 44, flags: DIFlagFwdDecl)
!5837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!5838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5839, size: 64)
!5839 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !373)
!5840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5841, size: 64)
!5841 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5839)
!5842 = !{!0, !7, !5843, !5845, !5847, !5849, !5851, !5853, !5855, !5857, !5859, !5861, !5863, !5865, !5870, !5875, !5878}
!5843 = !DIGlobalVariableExpression(var: !5844, expr: !DIExpression())
!5844 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_modeset_unlock_all309", scope: !9, file: !2, line: 213, type: !334, isLocal: true, isDefinition: true)
!5845 = !DIGlobalVariableExpression(var: !5846, expr: !DIExpression())
!5846 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_warn_on_modeset_not_all_locked310", scope: !9, file: !2, line: 235, type: !334, isLocal: true, isDefinition: true)
!5847 = !DIGlobalVariableExpression(var: !5848, expr: !DIExpression())
!5848 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_modeset_acquire_init311", scope: !9, file: !2, line: 256, type: !334, isLocal: true, isDefinition: true)
!5849 = !DIGlobalVariableExpression(var: !5850, expr: !DIExpression())
!5850 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_modeset_acquire_fini312", scope: !9, file: !2, line: 266, type: !334, isLocal: true, isDefinition: true)
!5851 = !DIGlobalVariableExpression(var: !5852, expr: !DIExpression())
!5852 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_modeset_drop_locks313", scope: !9, file: !2, line: 288, type: !334, isLocal: true, isDefinition: true)
!5853 = !DIGlobalVariableExpression(var: !5854, expr: !DIExpression())
!5854 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_modeset_backoff314", scope: !9, file: !2, line: 360, type: !334, isLocal: true, isDefinition: true)
!5855 = !DIGlobalVariableExpression(var: !5856, expr: !DIExpression())
!5856 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_modeset_lock_init315", scope: !9, file: !2, line: 372, type: !334, isLocal: true, isDefinition: true)
!5857 = !DIGlobalVariableExpression(var: !5858, expr: !DIExpression())
!5858 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_modeset_lock316", scope: !9, file: !2, line: 401, type: !334, isLocal: true, isDefinition: true)
!5859 = !DIGlobalVariableExpression(var: !5860, expr: !DIExpression())
!5860 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_modeset_lock_single_interruptible317", scope: !9, file: !2, line: 416, type: !334, isLocal: true, isDefinition: true)
!5861 = !DIGlobalVariableExpression(var: !5862, expr: !DIExpression())
!5862 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_modeset_unlock318", scope: !9, file: !2, line: 427, type: !334, isLocal: true, isDefinition: true)
!5863 = !DIGlobalVariableExpression(var: !5864, expr: !DIExpression())
!5864 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_modeset_lock_all_ctx319", scope: !9, file: !2, line: 481, type: !334, isLocal: true, isDefinition: true)
!5865 = !DIGlobalVariableExpression(var: !5866, expr: !DIExpression())
!5866 = distinct !DIGlobalVariable(scope: null, file: !322, line: 480, type: !5867, isLocal: true, isDefinition: true)
!5867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !5868)
!5868 = !{!5869}
!5869 = !DISubrange(count: 21)
!5870 = !DIGlobalVariableExpression(var: !5871, expr: !DIExpression())
!5871 = distinct !DIGlobalVariable(scope: null, file: !2, line: 79, type: !5872, isLocal: true, isDefinition: true)
!5872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !5873)
!5873 = !{!5874}
!5874 = !DISubrange(count: 22)
!5875 = !DIGlobalVariableExpression(var: !5876, expr: !DIExpression())
!5876 = distinct !DIGlobalVariable(scope: null, file: !2, line: 79, type: !5877, isLocal: true, isDefinition: true)
!5877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !3062)
!5878 = !DIGlobalVariableExpression(var: !5879, expr: !DIExpression())
!5879 = distinct !DIGlobalVariable(name: "crtc_ww_class", scope: !9, file: !2, line: 79, type: !5880, isLocal: true, isDefinition: true)
!5880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_class", file: !4777, line: 38, size: 256, elements: !5881)
!5881 = !{!5882, !5883, !5884, !5885, !5886, !5887}
!5882 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !5880, file: !4777, line: 39, baseType: !794, size: 64)
!5883 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_key", scope: !5880, file: !4777, line: 40, baseType: !1164, offset: 64)
!5884 = !DIDerivedType(tag: DW_TAG_member, name: "mutex_key", scope: !5880, file: !4777, line: 41, baseType: !1164, offset: 64)
!5885 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_name", scope: !5880, file: !4777, line: 42, baseType: !367, size: 64, offset: 64)
!5886 = !DIDerivedType(tag: DW_TAG_member, name: "mutex_name", scope: !5880, file: !4777, line: 43, baseType: !367, size: 64, offset: 128)
!5887 = !DIDerivedType(tag: DW_TAG_member, name: "is_wait_die", scope: !5880, file: !4777, line: 44, baseType: !13, size: 32, offset: 192)
!5888 = !{i32 7, !"Dwarf Version", i32 5}
!5889 = !{i32 2, !"Debug Info Version", i32 3}
!5890 = !{i32 1, !"wchar_size", i32 2}
!5891 = !{i32 8, !"cf-protection-branch", i32 1}
!5892 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5893 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5894 = !{i32 1, !"Code Model", i32 2}
!5895 = !{i32 1, !"override-stack-alignment", i32 8}
!5896 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5897 = distinct !DISubprogram(name: "drm_modeset_lock_all", scope: !2, file: !2, line: 143, type: !4868, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5898)
!5898 = !{!5899, !5900, !5902, !5903, !5904, !5907, !5910, !5911, !5913}
!5899 = !DILocalVariable(name: "dev", arg: 1, scope: !5897, file: !2, line: 143, type: !340)
!5900 = !DILocalVariable(name: "config", scope: !5897, file: !2, line: 145, type: !5901)
!5901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4767, size: 64)
!5902 = !DILocalVariable(name: "ctx", scope: !5897, file: !2, line: 146, type: !4791)
!5903 = !DILocalVariable(name: "ret", scope: !5897, file: !2, line: 147, type: !115)
!5904 = !DILocalVariable(name: "__ret_warn_on", scope: !5905, file: !2, line: 150, type: !115)
!5905 = distinct !DILexicalBlock(scope: !5906, file: !2, line: 150, column: 6)
!5906 = distinct !DILexicalBlock(scope: !5897, file: !2, line: 150, column: 6)
!5907 = !DILocalVariable(name: "__flags", scope: !5908, file: !2, line: 150, type: !115)
!5908 = distinct !DILexicalBlock(scope: !5909, file: !2, line: 150, column: 6)
!5909 = distinct !DILexicalBlock(scope: !5905, file: !2, line: 150, column: 6)
!5910 = !DILabel(scope: !5897, name: "retry", file: !2, line: 157)
!5911 = !DILocalVariable(name: "__ret_warn_on", scope: !5912, file: !2, line: 171, type: !115)
!5912 = distinct !DILexicalBlock(scope: !5897, file: !2, line: 171, column: 2)
!5913 = !DILocalVariable(name: "__flags", scope: !5914, file: !2, line: 171, type: !115)
!5914 = distinct !DILexicalBlock(scope: !5915, file: !2, line: 171, column: 2)
!5915 = distinct !DILexicalBlock(scope: !5912, file: !2, line: 171, column: 2)
!5916 = !DILocation(line: 143, column: 46, scope: !5897)
!5917 = !DILocation(line: 145, column: 2, scope: !5897)
!5918 = !DILocation(line: 145, column: 26, scope: !5897)
!5919 = !DILocation(line: 145, column: 36, scope: !5897)
!5920 = !DILocation(line: 145, column: 41, scope: !5897)
!5921 = !DILocation(line: 146, column: 2, scope: !5897)
!5922 = !DILocation(line: 146, column: 34, scope: !5897)
!5923 = !DILocation(line: 147, column: 2, scope: !5897)
!5924 = !DILocation(line: 147, column: 6, scope: !5897)
!5925 = !DILocation(line: 149, column: 8, scope: !5897)
!5926 = !DILocation(line: 149, column: 6, scope: !5897)
!5927 = !DILocation(line: 150, column: 6, scope: !5905)
!5928 = !DILocation(line: 150, column: 6, scope: !5909)
!5929 = !DILocation(line: 150, column: 6, scope: !5908)
!5930 = !DILocation(line: 150, column: 6, scope: !5931)
!5931 = distinct !DILexicalBlock(scope: !5908, file: !2, line: 150, column: 6)
!5932 = !DILocation(line: 150, column: 6, scope: !5933)
!5933 = distinct !DILexicalBlock(scope: !5908, file: !2, line: 150, column: 6)
!5934 = !{i64 2155359347, i64 2155359376, i64 2155359422, i64 2155359480, i64 2155359534, i64 2155359588, i64 2155359643, i64 2155359674, i64 2155359982, i64 2155359988, i64 2155360035, i64 2155360058, i64 2155360084}
!5935 = !DILocation(line: 150, column: 6, scope: !5936)
!5936 = distinct !DILexicalBlock(scope: !5908, file: !2, line: 150, column: 6)
!5937 = !DILocation(line: 150, column: 6, scope: !5906)
!5938 = !DILocation(line: 150, column: 6, scope: !5897)
!5939 = !DILocation(line: 151, column: 3, scope: !5906)
!5940 = !DILocation(line: 153, column: 14, scope: !5897)
!5941 = !DILocation(line: 153, column: 22, scope: !5897)
!5942 = !DILocation(line: 153, column: 2, scope: !5897)
!5943 = !DILocation(line: 155, column: 27, scope: !5897)
!5944 = !DILocation(line: 155, column: 2, scope: !5897)
!5945 = !DILocation(line: 157, column: 1, scope: !5897)
!5946 = !DILocation(line: 158, column: 33, scope: !5897)
!5947 = !DILocation(line: 158, column: 38, scope: !5897)
!5948 = !DILocation(line: 158, column: 8, scope: !5897)
!5949 = !DILocation(line: 158, column: 6, scope: !5897)
!5950 = !DILocation(line: 159, column: 6, scope: !5951)
!5951 = distinct !DILexicalBlock(scope: !5897, file: !2, line: 159, column: 6)
!5952 = !DILocation(line: 159, column: 10, scope: !5951)
!5953 = !DILocation(line: 159, column: 6, scope: !5897)
!5954 = !DILocation(line: 160, column: 7, scope: !5955)
!5955 = distinct !DILexicalBlock(scope: !5956, file: !2, line: 160, column: 7)
!5956 = distinct !DILexicalBlock(scope: !5951, file: !2, line: 159, column: 15)
!5957 = !DILocation(line: 160, column: 11, scope: !5955)
!5958 = !DILocation(line: 160, column: 7, scope: !5956)
!5959 = !DILocation(line: 161, column: 24, scope: !5960)
!5960 = distinct !DILexicalBlock(scope: !5955, file: !2, line: 160, column: 24)
!5961 = !DILocation(line: 161, column: 4, scope: !5960)
!5962 = !DILocation(line: 162, column: 4, scope: !5960)
!5963 = !DILocation(line: 165, column: 28, scope: !5956)
!5964 = !DILocation(line: 165, column: 3, scope: !5956)
!5965 = !DILocation(line: 166, column: 9, scope: !5956)
!5966 = !DILocation(line: 166, column: 3, scope: !5956)
!5967 = !DILocation(line: 167, column: 3, scope: !5956)
!5968 = !DILocation(line: 169, column: 19, scope: !5897)
!5969 = !DILocation(line: 169, column: 24, scope: !5897)
!5970 = !DILocation(line: 169, column: 2, scope: !5897)
!5971 = !DILocation(line: 171, column: 2, scope: !5912)
!5972 = !DILocation(line: 171, column: 2, scope: !5915)
!5973 = !DILocation(line: 171, column: 2, scope: !5914)
!5974 = !DILocation(line: 171, column: 2, scope: !5975)
!5975 = distinct !DILexicalBlock(scope: !5914, file: !2, line: 171, column: 2)
!5976 = !DILocation(line: 171, column: 2, scope: !5977)
!5977 = distinct !DILexicalBlock(scope: !5914, file: !2, line: 171, column: 2)
!5978 = !{i64 2155360867, i64 2155360896, i64 2155360942, i64 2155361000, i64 2155361054, i64 2155361108, i64 2155361163, i64 2155361194, i64 2155361502, i64 2155361508, i64 2155361555, i64 2155361578, i64 2155361604}
!5979 = !DILocation(line: 171, column: 2, scope: !5980)
!5980 = distinct !DILexicalBlock(scope: !5914, file: !2, line: 171, column: 2)
!5981 = !DILocation(line: 171, column: 2, scope: !5897)
!5982 = !DILocation(line: 177, column: 24, scope: !5897)
!5983 = !DILocation(line: 177, column: 2, scope: !5897)
!5984 = !DILocation(line: 177, column: 10, scope: !5897)
!5985 = !DILocation(line: 177, column: 22, scope: !5897)
!5986 = !DILocation(line: 179, column: 37, scope: !5897)
!5987 = !DILocation(line: 179, column: 2, scope: !5897)
!5988 = !DILocation(line: 180, column: 1, scope: !5897)
!5989 = distinct !DISubprogram(name: "kzalloc", scope: !322, file: !322, line: 719, type: !5990, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5992)
!5990 = !DISubroutineType(types: !5991)
!5991 = !{!334, !496, !332}
!5992 = !{!5993, !5994}
!5993 = !DILocalVariable(name: "size", arg: 1, scope: !5989, file: !322, line: 719, type: !496)
!5994 = !DILocalVariable(name: "flags", arg: 2, scope: !5989, file: !322, line: 719, type: !332)
!5995 = !DILocation(line: 719, column: 52, scope: !5989)
!5996 = !DILocation(line: 719, column: 64, scope: !5989)
!5997 = !DILocation(line: 721, column: 17, scope: !5989)
!5998 = !DILocation(line: 721, column: 23, scope: !5989)
!5999 = !DILocation(line: 721, column: 29, scope: !5989)
!6000 = !DILocation(line: 721, column: 9, scope: !5989)
!6001 = !DILocation(line: 721, column: 2, scope: !5989)
!6002 = !DISubprogram(name: "mutex_lock", scope: !791, file: !791, line: 227, type: !6003, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6003 = !DISubroutineType(types: !6004)
!6004 = !{null, !6005}
!6005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!6006 = distinct !DISubprogram(name: "drm_modeset_acquire_init", scope: !2, file: !2, line: 246, type: !6007, scopeLine: 248, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6009)
!6007 = !DISubroutineType(types: !6008)
!6008 = !{null, !4791, !2012}
!6009 = !{!6010, !6011}
!6010 = !DILocalVariable(name: "ctx", arg: 1, scope: !6006, file: !2, line: 246, type: !4791)
!6011 = !DILocalVariable(name: "flags", arg: 2, scope: !6006, file: !2, line: 247, type: !2012)
!6012 = !DILocation(line: 246, column: 63, scope: !6006)
!6013 = !DILocation(line: 247, column: 12, scope: !6006)
!6014 = !DILocation(line: 249, column: 9, scope: !6006)
!6015 = !DILocation(line: 249, column: 2, scope: !6006)
!6016 = !DILocation(line: 250, column: 19, scope: !6006)
!6017 = !DILocation(line: 250, column: 24, scope: !6006)
!6018 = !DILocation(line: 250, column: 2, scope: !6006)
!6019 = !DILocation(line: 251, column: 18, scope: !6006)
!6020 = !DILocation(line: 251, column: 23, scope: !6006)
!6021 = !DILocation(line: 251, column: 2, scope: !6006)
!6022 = !DILocation(line: 253, column: 6, scope: !6023)
!6023 = distinct !DILexicalBlock(scope: !6006, file: !2, line: 253, column: 6)
!6024 = !DILocation(line: 253, column: 12, scope: !6023)
!6025 = !DILocation(line: 253, column: 6, scope: !6006)
!6026 = !DILocation(line: 254, column: 3, scope: !6023)
!6027 = !DILocation(line: 254, column: 8, scope: !6023)
!6028 = !DILocation(line: 254, column: 22, scope: !6023)
!6029 = !DILocation(line: 255, column: 1, scope: !6006)
!6030 = distinct !DISubprogram(name: "drm_modeset_lock_all_ctx", scope: !2, file: !2, line: 449, type: !6031, scopeLine: 451, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6033)
!6031 = !DISubroutineType(types: !6032)
!6032 = !{!115, !340, !4791}
!6033 = !{!6034, !6035, !6036, !6037, !6038, !6039, !6040, !6043, !6046, !6049, !6052, !6055}
!6034 = !DILocalVariable(name: "dev", arg: 1, scope: !6030, file: !2, line: 449, type: !340)
!6035 = !DILocalVariable(name: "ctx", arg: 2, scope: !6030, file: !2, line: 450, type: !4791)
!6036 = !DILocalVariable(name: "privobj", scope: !6030, file: !2, line: 452, type: !5531)
!6037 = !DILocalVariable(name: "crtc", scope: !6030, file: !2, line: 453, type: !335)
!6038 = !DILocalVariable(name: "plane", scope: !6030, file: !2, line: 454, type: !4931)
!6039 = !DILocalVariable(name: "ret", scope: !6030, file: !2, line: 455, type: !115)
!6040 = !DILocalVariable(name: "__mptr", scope: !6041, file: !2, line: 461, type: !334)
!6041 = distinct !DILexicalBlock(scope: !6042, file: !2, line: 461, column: 2)
!6042 = distinct !DILexicalBlock(scope: !6030, file: !2, line: 461, column: 2)
!6043 = !DILocalVariable(name: "__mptr", scope: !6044, file: !2, line: 461, type: !334)
!6044 = distinct !DILexicalBlock(scope: !6045, file: !2, line: 461, column: 2)
!6045 = distinct !DILexicalBlock(scope: !6042, file: !2, line: 461, column: 2)
!6046 = !DILocalVariable(name: "__mptr", scope: !6047, file: !2, line: 467, type: !334)
!6047 = distinct !DILexicalBlock(scope: !6048, file: !2, line: 467, column: 2)
!6048 = distinct !DILexicalBlock(scope: !6030, file: !2, line: 467, column: 2)
!6049 = !DILocalVariable(name: "__mptr", scope: !6050, file: !2, line: 467, type: !334)
!6050 = distinct !DILexicalBlock(scope: !6051, file: !2, line: 467, column: 2)
!6051 = distinct !DILexicalBlock(scope: !6048, file: !2, line: 467, column: 2)
!6052 = !DILocalVariable(name: "__mptr", scope: !6053, file: !2, line: 473, type: !334)
!6053 = distinct !DILexicalBlock(scope: !6054, file: !2, line: 473, column: 2)
!6054 = distinct !DILexicalBlock(scope: !6030, file: !2, line: 473, column: 2)
!6055 = !DILocalVariable(name: "__mptr", scope: !6056, file: !2, line: 473, type: !334)
!6056 = distinct !DILexicalBlock(scope: !6057, file: !2, line: 473, column: 2)
!6057 = distinct !DILexicalBlock(scope: !6054, file: !2, line: 473, column: 2)
!6058 = !DILocation(line: 449, column: 49, scope: !6030)
!6059 = !DILocation(line: 450, column: 41, scope: !6030)
!6060 = !DILocation(line: 452, column: 2, scope: !6030)
!6061 = !DILocation(line: 452, column: 26, scope: !6030)
!6062 = !DILocation(line: 453, column: 2, scope: !6030)
!6063 = !DILocation(line: 453, column: 19, scope: !6030)
!6064 = !DILocation(line: 454, column: 2, scope: !6030)
!6065 = !DILocation(line: 454, column: 20, scope: !6030)
!6066 = !DILocation(line: 455, column: 2, scope: !6030)
!6067 = !DILocation(line: 455, column: 6, scope: !6030)
!6068 = !DILocation(line: 457, column: 26, scope: !6030)
!6069 = !DILocation(line: 457, column: 31, scope: !6030)
!6070 = !DILocation(line: 457, column: 43, scope: !6030)
!6071 = !DILocation(line: 457, column: 61, scope: !6030)
!6072 = !DILocation(line: 457, column: 8, scope: !6030)
!6073 = !DILocation(line: 457, column: 6, scope: !6030)
!6074 = !DILocation(line: 458, column: 6, scope: !6075)
!6075 = distinct !DILexicalBlock(scope: !6030, file: !2, line: 458, column: 6)
!6076 = !DILocation(line: 458, column: 6, scope: !6030)
!6077 = !DILocation(line: 459, column: 10, scope: !6075)
!6078 = !DILocation(line: 459, column: 3, scope: !6075)
!6079 = !DILocation(line: 461, column: 2, scope: !6041)
!6080 = !DILocation(line: 461, column: 2, scope: !6042)
!6081 = !DILocation(line: 461, column: 2, scope: !6045)
!6082 = !DILocation(line: 462, column: 27, scope: !6083)
!6083 = distinct !DILexicalBlock(scope: !6045, file: !2, line: 461, column: 31)
!6084 = !DILocation(line: 462, column: 33, scope: !6083)
!6085 = !DILocation(line: 462, column: 40, scope: !6083)
!6086 = !DILocation(line: 462, column: 9, scope: !6083)
!6087 = !DILocation(line: 462, column: 7, scope: !6083)
!6088 = !DILocation(line: 463, column: 7, scope: !6089)
!6089 = distinct !DILexicalBlock(scope: !6083, file: !2, line: 463, column: 7)
!6090 = !DILocation(line: 463, column: 7, scope: !6083)
!6091 = !DILocation(line: 464, column: 11, scope: !6089)
!6092 = !DILocation(line: 464, column: 4, scope: !6089)
!6093 = !DILocation(line: 465, column: 2, scope: !6083)
!6094 = !DILocation(line: 461, column: 2, scope: !6044)
!6095 = distinct !{!6095, !6080, !6096, !6097, !6098}
!6096 = !DILocation(line: 465, column: 2, scope: !6042)
!6097 = !{!"llvm.loop.mustprogress"}
!6098 = !{!"llvm.loop.unroll.disable"}
!6099 = !DILocation(line: 467, column: 2, scope: !6047)
!6100 = !DILocation(line: 467, column: 2, scope: !6048)
!6101 = !DILocation(line: 467, column: 2, scope: !6051)
!6102 = !DILocation(line: 468, column: 27, scope: !6103)
!6103 = distinct !DILexicalBlock(scope: !6051, file: !2, line: 467, column: 33)
!6104 = !DILocation(line: 468, column: 34, scope: !6103)
!6105 = !DILocation(line: 468, column: 41, scope: !6103)
!6106 = !DILocation(line: 468, column: 9, scope: !6103)
!6107 = !DILocation(line: 468, column: 7, scope: !6103)
!6108 = !DILocation(line: 469, column: 7, scope: !6109)
!6109 = distinct !DILexicalBlock(scope: !6103, file: !2, line: 469, column: 7)
!6110 = !DILocation(line: 469, column: 7, scope: !6103)
!6111 = !DILocation(line: 470, column: 11, scope: !6109)
!6112 = !DILocation(line: 470, column: 4, scope: !6109)
!6113 = !DILocation(line: 471, column: 2, scope: !6103)
!6114 = !DILocation(line: 467, column: 2, scope: !6050)
!6115 = distinct !{!6115, !6100, !6116, !6097, !6098}
!6116 = !DILocation(line: 471, column: 2, scope: !6048)
!6117 = !DILocation(line: 473, column: 2, scope: !6053)
!6118 = !DILocation(line: 473, column: 2, scope: !6054)
!6119 = !DILocation(line: 473, column: 2, scope: !6057)
!6120 = !DILocation(line: 474, column: 27, scope: !6121)
!6121 = distinct !DILexicalBlock(scope: !6057, file: !2, line: 473, column: 37)
!6122 = !DILocation(line: 474, column: 36, scope: !6121)
!6123 = !DILocation(line: 474, column: 42, scope: !6121)
!6124 = !DILocation(line: 474, column: 9, scope: !6121)
!6125 = !DILocation(line: 474, column: 7, scope: !6121)
!6126 = !DILocation(line: 475, column: 7, scope: !6127)
!6127 = distinct !DILexicalBlock(scope: !6121, file: !2, line: 475, column: 7)
!6128 = !DILocation(line: 475, column: 7, scope: !6121)
!6129 = !DILocation(line: 476, column: 11, scope: !6127)
!6130 = !DILocation(line: 476, column: 4, scope: !6127)
!6131 = !DILocation(line: 477, column: 2, scope: !6121)
!6132 = !DILocation(line: 473, column: 2, scope: !6056)
!6133 = distinct !{!6133, !6118, !6134, !6097, !6098}
!6134 = !DILocation(line: 477, column: 2, scope: !6054)
!6135 = !DILocation(line: 479, column: 2, scope: !6030)
!6136 = !DILocation(line: 480, column: 1, scope: !6030)
!6137 = distinct !DISubprogram(name: "drm_modeset_backoff", scope: !2, file: !2, line: 346, type: !6138, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6140)
!6138 = !DISubroutineType(types: !6139)
!6139 = !{!115, !4791}
!6140 = !{!6141, !6142, !6143, !6146}
!6141 = !DILocalVariable(name: "ctx", arg: 1, scope: !6137, file: !2, line: 346, type: !4791)
!6142 = !DILocalVariable(name: "contended", scope: !6137, file: !2, line: 348, type: !4796)
!6143 = !DILocalVariable(name: "__ret_warn_on", scope: !6144, file: !2, line: 353, type: !115)
!6144 = distinct !DILexicalBlock(scope: !6145, file: !2, line: 353, column: 6)
!6145 = distinct !DILexicalBlock(scope: !6137, file: !2, line: 353, column: 6)
!6146 = !DILocalVariable(name: "__flags", scope: !6147, file: !2, line: 353, type: !115)
!6147 = distinct !DILexicalBlock(scope: !6148, file: !2, line: 353, column: 6)
!6148 = distinct !DILexicalBlock(scope: !6144, file: !2, line: 353, column: 6)
!6149 = !DILocation(line: 346, column: 57, scope: !6137)
!6150 = !DILocation(line: 348, column: 2, scope: !6137)
!6151 = !DILocation(line: 348, column: 27, scope: !6137)
!6152 = !DILocation(line: 348, column: 39, scope: !6137)
!6153 = !DILocation(line: 348, column: 44, scope: !6137)
!6154 = !DILocation(line: 350, column: 2, scope: !6137)
!6155 = !DILocation(line: 350, column: 7, scope: !6137)
!6156 = !DILocation(line: 350, column: 17, scope: !6137)
!6157 = !DILocation(line: 351, column: 2, scope: !6137)
!6158 = !DILocation(line: 351, column: 7, scope: !6137)
!6159 = !DILocation(line: 351, column: 19, scope: !6137)
!6160 = !DILocation(line: 353, column: 6, scope: !6144)
!6161 = !DILocation(line: 353, column: 6, scope: !6148)
!6162 = !DILocation(line: 353, column: 6, scope: !6147)
!6163 = !DILocation(line: 353, column: 6, scope: !6164)
!6164 = distinct !DILexicalBlock(scope: !6147, file: !2, line: 353, column: 6)
!6165 = !DILocation(line: 353, column: 6, scope: !6166)
!6166 = distinct !DILexicalBlock(scope: !6147, file: !2, line: 353, column: 6)
!6167 = !{i64 2155394311, i64 2155394340, i64 2155394386, i64 2155394444, i64 2155394498, i64 2155394552, i64 2155394607, i64 2155394638, i64 2155394946, i64 2155394952, i64 2155394999, i64 2155395022, i64 2155395048}
!6168 = !DILocation(line: 353, column: 6, scope: !6169)
!6169 = distinct !DILexicalBlock(scope: !6147, file: !2, line: 353, column: 6)
!6170 = !DILocation(line: 353, column: 6, scope: !6145)
!6171 = !DILocation(line: 353, column: 6, scope: !6137)
!6172 = !DILocation(line: 354, column: 3, scope: !6145)
!6173 = !DILocation(line: 356, column: 25, scope: !6137)
!6174 = !DILocation(line: 356, column: 2, scope: !6137)
!6175 = !DILocation(line: 358, column: 22, scope: !6137)
!6176 = !DILocation(line: 358, column: 33, scope: !6137)
!6177 = !DILocation(line: 358, column: 38, scope: !6137)
!6178 = !DILocation(line: 358, column: 43, scope: !6137)
!6179 = !{i8 0, i8 2}
!6180 = !DILocation(line: 358, column: 9, scope: !6137)
!6181 = !DILocation(line: 358, column: 2, scope: !6137)
!6182 = !DILocation(line: 359, column: 1, scope: !6137)
!6183 = distinct !DISubprogram(name: "drm_modeset_acquire_fini", scope: !2, file: !2, line: 262, type: !6184, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6186)
!6184 = !DISubroutineType(types: !6185)
!6185 = !{null, !4791}
!6186 = !{!6187}
!6187 = !DILocalVariable(name: "ctx", arg: 1, scope: !6183, file: !2, line: 262, type: !4791)
!6188 = !DILocation(line: 262, column: 63, scope: !6183)
!6189 = !DILocation(line: 264, column: 19, scope: !6183)
!6190 = !DILocation(line: 264, column: 24, scope: !6183)
!6191 = !DILocation(line: 264, column: 2, scope: !6183)
!6192 = !DILocation(line: 265, column: 1, scope: !6183)
!6193 = !DISubprogram(name: "kfree", scope: !322, file: !322, line: 227, type: !6194, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6194 = !DISubroutineType(types: !6195)
!6195 = !{null, !1778}
!6196 = distinct !DISubprogram(name: "ww_acquire_done", scope: !4777, file: !4777, line: 168, type: !6197, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6199)
!6197 = !DISubroutineType(types: !6198)
!6198 = !{null, !4781}
!6199 = !{!6200}
!6200 = !DILocalVariable(name: "ctx", arg: 1, scope: !6196, file: !4777, line: 168, type: !4781)
!6201 = !DILocation(line: 168, column: 59, scope: !6196)
!6202 = !DILocation(line: 176, column: 1, scope: !6196)
!6203 = distinct !DISubprogram(name: "drm_warn_on_modeset_not_all_locked", scope: !2, file: !2, line: 221, type: !4868, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6204)
!6204 = !{!6205, !6206, !6207, !6210, !6213, !6216, !6218, !6220, !6223, !6225}
!6205 = !DILocalVariable(name: "dev", arg: 1, scope: !6203, file: !2, line: 221, type: !340)
!6206 = !DILocalVariable(name: "crtc", scope: !6203, file: !2, line: 223, type: !335)
!6207 = !DILocalVariable(name: "__mptr", scope: !6208, file: !2, line: 229, type: !334)
!6208 = distinct !DILexicalBlock(scope: !6209, file: !2, line: 229, column: 2)
!6209 = distinct !DILexicalBlock(scope: !6203, file: !2, line: 229, column: 2)
!6210 = !DILocalVariable(name: "__ret_warn_on", scope: !6211, file: !2, line: 230, type: !115)
!6211 = distinct !DILexicalBlock(scope: !6212, file: !2, line: 230, column: 3)
!6212 = distinct !DILexicalBlock(scope: !6209, file: !2, line: 229, column: 2)
!6213 = !DILocalVariable(name: "__flags", scope: !6214, file: !2, line: 230, type: !115)
!6214 = distinct !DILexicalBlock(scope: !6215, file: !2, line: 230, column: 3)
!6215 = distinct !DILexicalBlock(scope: !6211, file: !2, line: 230, column: 3)
!6216 = !DILocalVariable(name: "__mptr", scope: !6217, file: !2, line: 229, type: !334)
!6217 = distinct !DILexicalBlock(scope: !6212, file: !2, line: 229, column: 2)
!6218 = !DILocalVariable(name: "__ret_warn_on", scope: !6219, file: !2, line: 232, type: !115)
!6219 = distinct !DILexicalBlock(scope: !6203, file: !2, line: 232, column: 2)
!6220 = !DILocalVariable(name: "__flags", scope: !6221, file: !2, line: 232, type: !115)
!6221 = distinct !DILexicalBlock(scope: !6222, file: !2, line: 232, column: 2)
!6222 = distinct !DILexicalBlock(scope: !6219, file: !2, line: 232, column: 2)
!6223 = !DILocalVariable(name: "__ret_warn_on", scope: !6224, file: !2, line: 233, type: !115)
!6224 = distinct !DILexicalBlock(scope: !6203, file: !2, line: 233, column: 2)
!6225 = !DILocalVariable(name: "__flags", scope: !6226, file: !2, line: 233, type: !115)
!6226 = distinct !DILexicalBlock(scope: !6227, file: !2, line: 233, column: 2)
!6227 = distinct !DILexicalBlock(scope: !6224, file: !2, line: 233, column: 2)
!6228 = !DILocation(line: 221, column: 60, scope: !6203)
!6229 = !DILocation(line: 223, column: 2, scope: !6203)
!6230 = !DILocation(line: 223, column: 19, scope: !6203)
!6231 = !DILocation(line: 226, column: 6, scope: !6232)
!6232 = distinct !DILexicalBlock(scope: !6203, file: !2, line: 226, column: 6)
!6233 = !DILocation(line: 226, column: 6, scope: !6203)
!6234 = !DILocation(line: 227, column: 3, scope: !6232)
!6235 = !DILocation(line: 229, column: 2, scope: !6208)
!6236 = !DILocation(line: 229, column: 2, scope: !6209)
!6237 = !DILocation(line: 229, column: 2, scope: !6212)
!6238 = !DILocation(line: 230, column: 3, scope: !6211)
!6239 = !DILocation(line: 230, column: 3, scope: !6215)
!6240 = !DILocation(line: 230, column: 3, scope: !6214)
!6241 = !DILocation(line: 230, column: 3, scope: !6242)
!6242 = distinct !DILexicalBlock(scope: !6214, file: !2, line: 230, column: 3)
!6243 = !DILocation(line: 230, column: 3, scope: !6244)
!6244 = distinct !DILexicalBlock(scope: !6214, file: !2, line: 230, column: 3)
!6245 = !{i64 2155371189, i64 2155371218, i64 2155371264, i64 2155371322, i64 2155371376, i64 2155371430, i64 2155371485, i64 2155371516, i64 2155371824, i64 2155371830, i64 2155371877, i64 2155371900, i64 2155371926}
!6246 = !DILocation(line: 230, column: 3, scope: !6247)
!6247 = distinct !DILexicalBlock(scope: !6214, file: !2, line: 230, column: 3)
!6248 = !DILocation(line: 230, column: 3, scope: !6212)
!6249 = !DILocation(line: 229, column: 2, scope: !6217)
!6250 = distinct !{!6250, !6236, !6251, !6097, !6098}
!6251 = !DILocation(line: 230, column: 3, scope: !6209)
!6252 = !DILocation(line: 232, column: 2, scope: !6219)
!6253 = !DILocation(line: 232, column: 2, scope: !6222)
!6254 = !DILocation(line: 232, column: 2, scope: !6221)
!6255 = !DILocation(line: 232, column: 2, scope: !6256)
!6256 = distinct !DILexicalBlock(scope: !6221, file: !2, line: 232, column: 2)
!6257 = !DILocation(line: 232, column: 2, scope: !6258)
!6258 = distinct !DILexicalBlock(scope: !6221, file: !2, line: 232, column: 2)
!6259 = !{i64 2155372745, i64 2155372774, i64 2155372820, i64 2155372878, i64 2155372932, i64 2155372986, i64 2155373041, i64 2155373072, i64 2155373380, i64 2155373386, i64 2155373433, i64 2155373456, i64 2155373482}
!6260 = !DILocation(line: 232, column: 2, scope: !6261)
!6261 = distinct !DILexicalBlock(scope: !6221, file: !2, line: 232, column: 2)
!6262 = !DILocation(line: 232, column: 2, scope: !6203)
!6263 = !DILocation(line: 233, column: 2, scope: !6224)
!6264 = !DILocation(line: 233, column: 2, scope: !6227)
!6265 = !DILocation(line: 233, column: 2, scope: !6226)
!6266 = !DILocation(line: 233, column: 2, scope: !6267)
!6267 = distinct !DILexicalBlock(scope: !6226, file: !2, line: 233, column: 2)
!6268 = !DILocation(line: 233, column: 2, scope: !6269)
!6269 = distinct !DILexicalBlock(scope: !6226, file: !2, line: 233, column: 2)
!6270 = !{i64 2155374284, i64 2155374313, i64 2155374359, i64 2155374417, i64 2155374471, i64 2155374525, i64 2155374580, i64 2155374611, i64 2155374919, i64 2155374925, i64 2155374972, i64 2155374995, i64 2155375021}
!6271 = !DILocation(line: 233, column: 2, scope: !6272)
!6272 = distinct !DILexicalBlock(scope: !6226, file: !2, line: 233, column: 2)
!6273 = !DILocation(line: 233, column: 2, scope: !6203)
!6274 = !DILocation(line: 234, column: 1, scope: !6203)
!6275 = distinct !DISubprogram(name: "drm_modeset_unlock_all", scope: !2, file: !2, line: 197, type: !4868, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6276)
!6276 = !{!6277, !6278, !6279, !6280, !6283}
!6277 = !DILocalVariable(name: "dev", arg: 1, scope: !6275, file: !2, line: 197, type: !340)
!6278 = !DILocalVariable(name: "config", scope: !6275, file: !2, line: 199, type: !5901)
!6279 = !DILocalVariable(name: "ctx", scope: !6275, file: !2, line: 200, type: !4791)
!6280 = !DILocalVariable(name: "__ret_warn_on", scope: !6281, file: !2, line: 202, type: !115)
!6281 = distinct !DILexicalBlock(scope: !6282, file: !2, line: 202, column: 6)
!6282 = distinct !DILexicalBlock(scope: !6275, file: !2, line: 202, column: 6)
!6283 = !DILocalVariable(name: "__flags", scope: !6284, file: !2, line: 202, type: !115)
!6284 = distinct !DILexicalBlock(scope: !6285, file: !2, line: 202, column: 6)
!6285 = distinct !DILexicalBlock(scope: !6281, file: !2, line: 202, column: 6)
!6286 = !DILocation(line: 197, column: 48, scope: !6275)
!6287 = !DILocation(line: 199, column: 2, scope: !6275)
!6288 = !DILocation(line: 199, column: 26, scope: !6275)
!6289 = !DILocation(line: 199, column: 36, scope: !6275)
!6290 = !DILocation(line: 199, column: 41, scope: !6275)
!6291 = !DILocation(line: 200, column: 2, scope: !6275)
!6292 = !DILocation(line: 200, column: 34, scope: !6275)
!6293 = !DILocation(line: 200, column: 40, scope: !6275)
!6294 = !DILocation(line: 200, column: 48, scope: !6275)
!6295 = !DILocation(line: 202, column: 6, scope: !6281)
!6296 = !DILocation(line: 202, column: 6, scope: !6285)
!6297 = !DILocation(line: 202, column: 6, scope: !6284)
!6298 = !DILocation(line: 202, column: 6, scope: !6299)
!6299 = distinct !DILexicalBlock(scope: !6284, file: !2, line: 202, column: 6)
!6300 = !DILocation(line: 202, column: 6, scope: !6301)
!6301 = distinct !DILexicalBlock(scope: !6284, file: !2, line: 202, column: 6)
!6302 = !{i64 2155364226, i64 2155364255, i64 2155364301, i64 2155364359, i64 2155364413, i64 2155364467, i64 2155364522, i64 2155364553, i64 2155364861, i64 2155364867, i64 2155364914, i64 2155364937, i64 2155364963}
!6303 = !DILocation(line: 202, column: 6, scope: !6304)
!6304 = distinct !DILexicalBlock(scope: !6284, file: !2, line: 202, column: 6)
!6305 = !DILocation(line: 202, column: 6, scope: !6282)
!6306 = !DILocation(line: 202, column: 6, scope: !6275)
!6307 = !DILocation(line: 203, column: 3, scope: !6282)
!6308 = !DILocation(line: 205, column: 2, scope: !6275)
!6309 = !DILocation(line: 205, column: 10, scope: !6275)
!6310 = !DILocation(line: 205, column: 22, scope: !6275)
!6311 = !DILocation(line: 206, column: 25, scope: !6275)
!6312 = !DILocation(line: 206, column: 2, scope: !6275)
!6313 = !DILocation(line: 207, column: 27, scope: !6275)
!6314 = !DILocation(line: 207, column: 2, scope: !6275)
!6315 = !DILocation(line: 209, column: 8, scope: !6275)
!6316 = !DILocation(line: 209, column: 2, scope: !6275)
!6317 = !DILocation(line: 211, column: 16, scope: !6275)
!6318 = !DILocation(line: 211, column: 21, scope: !6275)
!6319 = !DILocation(line: 211, column: 33, scope: !6275)
!6320 = !DILocation(line: 211, column: 2, scope: !6275)
!6321 = !DILocation(line: 212, column: 1, scope: !6275)
!6322 = distinct !DISubprogram(name: "drm_modeset_drop_locks", scope: !2, file: !2, line: 274, type: !6184, scopeLine: 275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6323)
!6323 = !{!6324, !6325, !6328, !6331, !6333}
!6324 = !DILocalVariable(name: "ctx", arg: 1, scope: !6322, file: !2, line: 274, type: !4791)
!6325 = !DILocalVariable(name: "__ret_warn_on", scope: !6326, file: !2, line: 276, type: !115)
!6326 = distinct !DILexicalBlock(scope: !6327, file: !2, line: 276, column: 6)
!6327 = distinct !DILexicalBlock(scope: !6322, file: !2, line: 276, column: 6)
!6328 = !DILocalVariable(name: "__flags", scope: !6329, file: !2, line: 276, type: !115)
!6329 = distinct !DILexicalBlock(scope: !6330, file: !2, line: 276, column: 6)
!6330 = distinct !DILexicalBlock(scope: !6326, file: !2, line: 276, column: 6)
!6331 = !DILocalVariable(name: "lock", scope: !6332, file: !2, line: 280, type: !4796)
!6332 = distinct !DILexicalBlock(scope: !6322, file: !2, line: 279, column: 36)
!6333 = !DILocalVariable(name: "__mptr", scope: !6334, file: !2, line: 282, type: !334)
!6334 = distinct !DILexicalBlock(scope: !6332, file: !2, line: 282, column: 10)
!6335 = !DILocation(line: 274, column: 61, scope: !6322)
!6336 = !DILocation(line: 276, column: 6, scope: !6326)
!6337 = !DILocation(line: 276, column: 6, scope: !6330)
!6338 = !DILocation(line: 276, column: 6, scope: !6329)
!6339 = !DILocation(line: 276, column: 6, scope: !6340)
!6340 = distinct !DILexicalBlock(scope: !6329, file: !2, line: 276, column: 6)
!6341 = !DILocation(line: 276, column: 6, scope: !6342)
!6342 = distinct !DILexicalBlock(scope: !6329, file: !2, line: 276, column: 6)
!6343 = !{i64 2155382043, i64 2155382072, i64 2155382118, i64 2155382176, i64 2155382230, i64 2155382284, i64 2155382339, i64 2155382370, i64 2155382678, i64 2155382684, i64 2155382731, i64 2155382754, i64 2155382780}
!6344 = !DILocation(line: 276, column: 6, scope: !6345)
!6345 = distinct !DILexicalBlock(scope: !6329, file: !2, line: 276, column: 6)
!6346 = !DILocation(line: 276, column: 6, scope: !6327)
!6347 = !DILocation(line: 276, column: 6, scope: !6322)
!6348 = !DILocation(line: 277, column: 27, scope: !6327)
!6349 = !DILocation(line: 277, column: 32, scope: !6327)
!6350 = !DILocation(line: 277, column: 3, scope: !6327)
!6351 = !DILocation(line: 279, column: 2, scope: !6322)
!6352 = !DILocation(line: 279, column: 22, scope: !6322)
!6353 = !DILocation(line: 279, column: 27, scope: !6322)
!6354 = !DILocation(line: 279, column: 10, scope: !6322)
!6355 = !DILocation(line: 279, column: 9, scope: !6322)
!6356 = !DILocation(line: 280, column: 3, scope: !6332)
!6357 = !DILocation(line: 280, column: 28, scope: !6332)
!6358 = !DILocation(line: 282, column: 10, scope: !6334)
!6359 = !DILocation(line: 282, column: 10, scope: !6332)
!6360 = !DILocation(line: 282, column: 8, scope: !6332)
!6361 = !DILocation(line: 285, column: 22, scope: !6332)
!6362 = !DILocation(line: 285, column: 3, scope: !6332)
!6363 = !DILocation(line: 286, column: 2, scope: !6322)
!6364 = distinct !{!6364, !6351, !6363, !6097, !6098}
!6365 = !DILocation(line: 287, column: 1, scope: !6322)
!6366 = !DISubprogram(name: "mutex_unlock", scope: !791, file: !791, line: 246, type: !6003, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6367 = distinct !DISubprogram(name: "drm_modeset_is_locked", scope: !4773, file: !4773, line: 121, type: !6368, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6370)
!6368 = !DISubroutineType(types: !6369)
!6369 = !{!870, !4796}
!6370 = !{!6371}
!6371 = !DILocalVariable(name: "lock", arg: 1, scope: !6367, file: !4773, line: 121, type: !4796)
!6372 = !DILocation(line: 121, column: 67, scope: !6367)
!6373 = !DILocation(line: 123, column: 29, scope: !6367)
!6374 = !DILocation(line: 123, column: 35, scope: !6367)
!6375 = !DILocation(line: 123, column: 9, scope: !6367)
!6376 = !DILocation(line: 123, column: 2, scope: !6367)
!6377 = !DISubprogram(name: "mutex_is_locked", scope: !791, file: !791, line: 130, type: !6378, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6378 = !DISubroutineType(types: !6379)
!6379 = !{!870, !6005}
!6380 = distinct !DISubprogram(name: "ww_acquire_init", scope: !4777, file: !4777, line: 132, type: !6381, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6384)
!6381 = !DISubroutineType(types: !6382)
!6382 = !{null, !4781, !6383}
!6383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5880, size: 64)
!6384 = !{!6385, !6386}
!6385 = !DILocalVariable(name: "ctx", arg: 1, scope: !6380, file: !4777, line: 132, type: !4781)
!6386 = !DILocalVariable(name: "ww_class", arg: 2, scope: !6380, file: !4777, line: 133, type: !6383)
!6387 = !DILocation(line: 132, column: 59, scope: !6380)
!6388 = !DILocation(line: 133, column: 25, scope: !6380)
!6389 = !DILocation(line: 135, column: 14, scope: !6380)
!6390 = !DILocation(line: 135, column: 2, scope: !6380)
!6391 = !DILocation(line: 135, column: 7, scope: !6380)
!6392 = !DILocation(line: 135, column: 12, scope: !6380)
!6393 = !DILocation(line: 136, column: 47, scope: !6380)
!6394 = !DILocation(line: 136, column: 57, scope: !6380)
!6395 = !DILocation(line: 136, column: 15, scope: !6380)
!6396 = !DILocation(line: 136, column: 2, scope: !6380)
!6397 = !DILocation(line: 136, column: 7, scope: !6380)
!6398 = !DILocation(line: 136, column: 13, scope: !6380)
!6399 = !DILocation(line: 137, column: 2, scope: !6380)
!6400 = !DILocation(line: 137, column: 7, scope: !6380)
!6401 = !DILocation(line: 137, column: 16, scope: !6380)
!6402 = !DILocation(line: 138, column: 2, scope: !6380)
!6403 = !DILocation(line: 138, column: 7, scope: !6380)
!6404 = !DILocation(line: 138, column: 15, scope: !6380)
!6405 = !DILocation(line: 139, column: 21, scope: !6380)
!6406 = !DILocation(line: 139, column: 31, scope: !6380)
!6407 = !DILocation(line: 139, column: 2, scope: !6380)
!6408 = !DILocation(line: 139, column: 7, scope: !6380)
!6409 = !DILocation(line: 139, column: 19, scope: !6380)
!6410 = !DILocation(line: 155, column: 1, scope: !6380)
!6411 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !6412, file: !6412, line: 35, type: !6413, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6415)
!6412 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!6413 = !DISubroutineType(types: !6414)
!6414 = !{null, !373}
!6415 = !{!6416}
!6416 = !DILocalVariable(name: "list", arg: 1, scope: !6411, file: !6412, line: 35, type: !373)
!6417 = !DILocation(line: 35, column: 53, scope: !6411)
!6418 = !DILocation(line: 37, column: 2, scope: !6411)
!6419 = !DILocation(line: 37, column: 2, scope: !6420)
!6420 = distinct !DILexicalBlock(scope: !6411, file: !6412, line: 37, column: 2)
!6421 = !DILocation(line: 37, column: 2, scope: !6422)
!6422 = distinct !DILexicalBlock(scope: !6420, file: !6412, line: 37, column: 2)
!6423 = !DILocation(line: 37, column: 2, scope: !6424)
!6424 = distinct !DILexicalBlock(scope: !6420, file: !6412, line: 37, column: 2)
!6425 = !DILocation(line: 38, column: 2, scope: !6411)
!6426 = !DILocation(line: 38, column: 2, scope: !6427)
!6427 = distinct !DILexicalBlock(scope: !6411, file: !6412, line: 38, column: 2)
!6428 = !DILocation(line: 38, column: 2, scope: !6429)
!6429 = distinct !DILexicalBlock(scope: !6427, file: !6412, line: 38, column: 2)
!6430 = !DILocation(line: 38, column: 2, scope: !6431)
!6431 = distinct !DILexicalBlock(scope: !6427, file: !6412, line: 38, column: 2)
!6432 = !DILocation(line: 39, column: 1, scope: !6411)
!6433 = distinct !DISubprogram(name: "ww_acquire_fini", scope: !4777, file: !4777, line: 185, type: !6197, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6434)
!6434 = !{!6435}
!6435 = !DILocalVariable(name: "ctx", arg: 1, scope: !6433, file: !4777, line: 185, type: !4781)
!6436 = !DILocation(line: 185, column: 59, scope: !6433)
!6437 = !DILocation(line: 203, column: 1, scope: !6433)
!6438 = distinct !DISubprogram(name: "__drm_stack_depot_print", scope: !2, file: !2, line: 120, type: !6439, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6441)
!6439 = !DISubroutineType(types: !6440)
!6440 = !{null, !4798}
!6441 = !{!6442}
!6442 = !DILocalVariable(name: "stack_depot", arg: 1, scope: !6438, file: !2, line: 120, type: !4798)
!6443 = !DILocation(line: 120, column: 58, scope: !6438)
!6444 = !DILocation(line: 122, column: 1, scope: !6438)
!6445 = distinct !DISubprogram(name: "list_empty", scope: !6412, file: !6412, line: 371, type: !6446, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6450)
!6446 = !DISubroutineType(types: !6447)
!6447 = !{!115, !6448}
!6448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6449, size: 64)
!6449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !370)
!6450 = !{!6451}
!6451 = !DILocalVariable(name: "head", arg: 1, scope: !6445, file: !6412, line: 371, type: !6448)
!6452 = !DILocation(line: 371, column: 54, scope: !6445)
!6453 = !DILocation(line: 373, column: 9, scope: !6454)
!6454 = distinct !DILexicalBlock(scope: !6445, file: !6412, line: 373, column: 9)
!6455 = !DILocation(line: 373, column: 9, scope: !6456)
!6456 = distinct !DILexicalBlock(scope: !6454, file: !6412, line: 373, column: 9)
!6457 = !DILocation(line: 373, column: 34, scope: !6445)
!6458 = !DILocation(line: 373, column: 31, scope: !6445)
!6459 = !DILocation(line: 373, column: 2, scope: !6445)
!6460 = distinct !DISubprogram(name: "drm_modeset_unlock", scope: !2, file: !2, line: 422, type: !6461, scopeLine: 423, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6463)
!6461 = !DISubroutineType(types: !6462)
!6462 = !{null, !4796}
!6463 = !{!6464}
!6464 = !DILocalVariable(name: "lock", arg: 1, scope: !6460, file: !2, line: 422, type: !4796)
!6465 = !DILocation(line: 422, column: 50, scope: !6460)
!6466 = !DILocation(line: 424, column: 17, scope: !6460)
!6467 = !DILocation(line: 424, column: 23, scope: !6460)
!6468 = !DILocation(line: 424, column: 2, scope: !6460)
!6469 = !DILocation(line: 425, column: 19, scope: !6460)
!6470 = !DILocation(line: 425, column: 25, scope: !6460)
!6471 = !DILocation(line: 425, column: 2, scope: !6460)
!6472 = !DILocation(line: 426, column: 1, scope: !6460)
!6473 = distinct !DISubprogram(name: "modeset_lock", scope: !2, file: !2, line: 290, type: !6474, scopeLine: 293, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6476)
!6474 = !DISubroutineType(types: !6475)
!6475 = !{!115, !4796, !4791, !870, !870}
!6476 = !{!6477, !6478, !6479, !6480, !6481, !6482, !6485, !6488, !6492}
!6477 = !DILocalVariable(name: "lock", arg: 1, scope: !6473, file: !2, line: 290, type: !4796)
!6478 = !DILocalVariable(name: "ctx", arg: 2, scope: !6473, file: !2, line: 291, type: !4791)
!6479 = !DILocalVariable(name: "interruptible", arg: 3, scope: !6473, file: !2, line: 292, type: !870)
!6480 = !DILocalVariable(name: "slow", arg: 4, scope: !6473, file: !2, line: 292, type: !870)
!6481 = !DILocalVariable(name: "ret", scope: !6473, file: !2, line: 294, type: !115)
!6482 = !DILocalVariable(name: "__ret_warn_on", scope: !6483, file: !2, line: 296, type: !115)
!6483 = distinct !DILexicalBlock(scope: !6484, file: !2, line: 296, column: 6)
!6484 = distinct !DILexicalBlock(scope: !6473, file: !2, line: 296, column: 6)
!6485 = !DILocalVariable(name: "__flags", scope: !6486, file: !2, line: 296, type: !115)
!6486 = distinct !DILexicalBlock(scope: !6487, file: !2, line: 296, column: 6)
!6487 = distinct !DILexicalBlock(scope: !6483, file: !2, line: 296, column: 6)
!6488 = !DILocalVariable(name: "__ret_warn_on", scope: !6489, file: !2, line: 317, type: !115)
!6489 = distinct !DILexicalBlock(scope: !6490, file: !2, line: 317, column: 3)
!6490 = distinct !DILexicalBlock(scope: !6491, file: !2, line: 316, column: 12)
!6491 = distinct !DILexicalBlock(scope: !6473, file: !2, line: 316, column: 6)
!6492 = !DILocalVariable(name: "__flags", scope: !6493, file: !2, line: 317, type: !115)
!6493 = distinct !DILexicalBlock(scope: !6494, file: !2, line: 317, column: 3)
!6494 = distinct !DILexicalBlock(scope: !6489, file: !2, line: 317, column: 3)
!6495 = !DILocation(line: 290, column: 57, scope: !6473)
!6496 = !DILocation(line: 291, column: 35, scope: !6473)
!6497 = !DILocation(line: 292, column: 8, scope: !6473)
!6498 = !DILocation(line: 292, column: 28, scope: !6473)
!6499 = !DILocation(line: 294, column: 2, scope: !6473)
!6500 = !DILocation(line: 294, column: 6, scope: !6473)
!6501 = !DILocation(line: 296, column: 6, scope: !6483)
!6502 = !DILocation(line: 296, column: 6, scope: !6487)
!6503 = !DILocation(line: 296, column: 6, scope: !6486)
!6504 = !DILocation(line: 296, column: 6, scope: !6505)
!6505 = distinct !DILexicalBlock(scope: !6486, file: !2, line: 296, column: 6)
!6506 = !DILocation(line: 296, column: 6, scope: !6507)
!6507 = distinct !DILexicalBlock(scope: !6486, file: !2, line: 296, column: 6)
!6508 = !{i64 2155391206, i64 2155391235, i64 2155391281, i64 2155391339, i64 2155391393, i64 2155391447, i64 2155391502, i64 2155391533, i64 2155391841, i64 2155391847, i64 2155391894, i64 2155391917, i64 2155391943}
!6509 = !DILocation(line: 296, column: 6, scope: !6510)
!6510 = distinct !DILexicalBlock(scope: !6486, file: !2, line: 296, column: 6)
!6511 = !DILocation(line: 296, column: 6, scope: !6484)
!6512 = !DILocation(line: 296, column: 6, scope: !6473)
!6513 = !DILocation(line: 297, column: 27, scope: !6484)
!6514 = !DILocation(line: 297, column: 32, scope: !6484)
!6515 = !DILocation(line: 297, column: 3, scope: !6484)
!6516 = !DILocation(line: 299, column: 6, scope: !6517)
!6517 = distinct !DILexicalBlock(scope: !6473, file: !2, line: 299, column: 6)
!6518 = !DILocation(line: 299, column: 11, scope: !6517)
!6519 = !DILocation(line: 299, column: 6, scope: !6473)
!6520 = !DILocation(line: 300, column: 3, scope: !6521)
!6521 = distinct !DILexicalBlock(scope: !6517, file: !2, line: 299, column: 25)
!6522 = !DILocation(line: 300, column: 3, scope: !6523)
!6523 = distinct !DILexicalBlock(scope: !6521, file: !2, line: 300, column: 3)
!6524 = !DILocation(line: 302, column: 26, scope: !6525)
!6525 = distinct !DILexicalBlock(scope: !6521, file: !2, line: 302, column: 7)
!6526 = !DILocation(line: 302, column: 32, scope: !6525)
!6527 = !DILocation(line: 302, column: 8, scope: !6525)
!6528 = !DILocation(line: 302, column: 7, scope: !6521)
!6529 = !DILocation(line: 303, column: 4, scope: !6525)
!6530 = !DILocation(line: 305, column: 4, scope: !6525)
!6531 = !DILocation(line: 306, column: 13, scope: !6532)
!6532 = distinct !DILexicalBlock(scope: !6517, file: !2, line: 306, column: 13)
!6533 = !DILocation(line: 306, column: 27, scope: !6532)
!6534 = !DILocation(line: 306, column: 30, scope: !6532)
!6535 = !DILocation(line: 306, column: 13, scope: !6517)
!6536 = !DILocation(line: 307, column: 43, scope: !6537)
!6537 = distinct !DILexicalBlock(scope: !6532, file: !2, line: 306, column: 36)
!6538 = !DILocation(line: 307, column: 49, scope: !6537)
!6539 = !DILocation(line: 307, column: 57, scope: !6537)
!6540 = !DILocation(line: 307, column: 62, scope: !6537)
!6541 = !DILocation(line: 307, column: 9, scope: !6537)
!6542 = !DILocation(line: 307, column: 7, scope: !6537)
!6543 = !DILocation(line: 308, column: 2, scope: !6537)
!6544 = !DILocation(line: 308, column: 13, scope: !6545)
!6545 = distinct !DILexicalBlock(scope: !6532, file: !2, line: 308, column: 13)
!6546 = !DILocation(line: 308, column: 13, scope: !6532)
!6547 = !DILocation(line: 309, column: 38, scope: !6548)
!6548 = distinct !DILexicalBlock(scope: !6545, file: !2, line: 308, column: 28)
!6549 = !DILocation(line: 309, column: 44, scope: !6548)
!6550 = !DILocation(line: 309, column: 52, scope: !6548)
!6551 = !DILocation(line: 309, column: 57, scope: !6548)
!6552 = !DILocation(line: 309, column: 9, scope: !6548)
!6553 = !DILocation(line: 309, column: 7, scope: !6548)
!6554 = !DILocation(line: 310, column: 2, scope: !6548)
!6555 = !DILocation(line: 310, column: 13, scope: !6556)
!6556 = distinct !DILexicalBlock(scope: !6545, file: !2, line: 310, column: 13)
!6557 = !DILocation(line: 310, column: 13, scope: !6545)
!6558 = !DILocation(line: 311, column: 23, scope: !6559)
!6559 = distinct !DILexicalBlock(scope: !6556, file: !2, line: 310, column: 19)
!6560 = !DILocation(line: 311, column: 29, scope: !6559)
!6561 = !DILocation(line: 311, column: 37, scope: !6559)
!6562 = !DILocation(line: 311, column: 42, scope: !6559)
!6563 = !DILocation(line: 311, column: 3, scope: !6559)
!6564 = !DILocation(line: 312, column: 7, scope: !6559)
!6565 = !DILocation(line: 313, column: 2, scope: !6559)
!6566 = !DILocation(line: 314, column: 24, scope: !6567)
!6567 = distinct !DILexicalBlock(scope: !6556, file: !2, line: 313, column: 9)
!6568 = !DILocation(line: 314, column: 30, scope: !6567)
!6569 = !DILocation(line: 314, column: 38, scope: !6567)
!6570 = !DILocation(line: 314, column: 43, scope: !6567)
!6571 = !DILocation(line: 314, column: 9, scope: !6567)
!6572 = !DILocation(line: 314, column: 7, scope: !6567)
!6573 = !DILocation(line: 316, column: 7, scope: !6491)
!6574 = !DILocation(line: 316, column: 6, scope: !6473)
!6575 = !DILocation(line: 317, column: 3, scope: !6489)
!6576 = !DILocation(line: 317, column: 3, scope: !6494)
!6577 = !DILocation(line: 317, column: 3, scope: !6493)
!6578 = !DILocation(line: 317, column: 3, scope: !6579)
!6579 = distinct !DILexicalBlock(scope: !6493, file: !2, line: 317, column: 3)
!6580 = !DILocation(line: 317, column: 3, scope: !6581)
!6581 = distinct !DILexicalBlock(scope: !6493, file: !2, line: 317, column: 3)
!6582 = !{i64 2155392784, i64 2155392813, i64 2155392859, i64 2155392917, i64 2155392971, i64 2155393025, i64 2155393080, i64 2155393111, i64 2155393419, i64 2155393425, i64 2155393472, i64 2155393495, i64 2155393521}
!6583 = !DILocation(line: 317, column: 3, scope: !6584)
!6584 = distinct !DILexicalBlock(scope: !6493, file: !2, line: 317, column: 3)
!6585 = !DILocation(line: 317, column: 3, scope: !6490)
!6586 = !DILocation(line: 318, column: 13, scope: !6490)
!6587 = !DILocation(line: 318, column: 19, scope: !6490)
!6588 = !DILocation(line: 318, column: 26, scope: !6490)
!6589 = !DILocation(line: 318, column: 31, scope: !6490)
!6590 = !DILocation(line: 318, column: 3, scope: !6490)
!6591 = !DILocation(line: 319, column: 2, scope: !6490)
!6592 = !DILocation(line: 319, column: 13, scope: !6593)
!6593 = distinct !DILexicalBlock(scope: !6491, file: !2, line: 319, column: 13)
!6594 = !DILocation(line: 319, column: 17, scope: !6593)
!6595 = !DILocation(line: 319, column: 13, scope: !6491)
!6596 = !DILocation(line: 325, column: 7, scope: !6597)
!6597 = distinct !DILexicalBlock(scope: !6593, file: !2, line: 319, column: 31)
!6598 = !DILocation(line: 326, column: 2, scope: !6597)
!6599 = !DILocation(line: 326, column: 13, scope: !6600)
!6600 = distinct !DILexicalBlock(scope: !6593, file: !2, line: 326, column: 13)
!6601 = !DILocation(line: 326, column: 17, scope: !6600)
!6602 = !DILocation(line: 326, column: 13, scope: !6593)
!6603 = !DILocation(line: 327, column: 20, scope: !6604)
!6604 = distinct !DILexicalBlock(scope: !6600, file: !2, line: 326, column: 30)
!6605 = !DILocation(line: 327, column: 3, scope: !6604)
!6606 = !DILocation(line: 327, column: 8, scope: !6604)
!6607 = !DILocation(line: 327, column: 18, scope: !6604)
!6608 = !DILocation(line: 328, column: 22, scope: !6604)
!6609 = !DILocation(line: 328, column: 3, scope: !6604)
!6610 = !DILocation(line: 328, column: 8, scope: !6604)
!6611 = !DILocation(line: 328, column: 20, scope: !6604)
!6612 = !DILocation(line: 329, column: 2, scope: !6604)
!6613 = !DILocation(line: 331, column: 9, scope: !6473)
!6614 = !DILocation(line: 331, column: 2, scope: !6473)
!6615 = !DILocation(line: 332, column: 1, scope: !6473)
!6616 = distinct !DISubprogram(name: "drm_modeset_lock_init", scope: !2, file: !2, line: 366, type: !6461, scopeLine: 367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6617)
!6617 = !{!6618}
!6618 = !DILocalVariable(name: "lock", arg: 1, scope: !6616, file: !2, line: 366, type: !4796)
!6619 = !DILocation(line: 366, column: 53, scope: !6616)
!6620 = !DILocation(line: 368, column: 17, scope: !6616)
!6621 = !DILocation(line: 368, column: 23, scope: !6616)
!6622 = !DILocation(line: 368, column: 2, scope: !6616)
!6623 = !DILocation(line: 369, column: 18, scope: !6616)
!6624 = !DILocation(line: 369, column: 24, scope: !6616)
!6625 = !DILocation(line: 369, column: 2, scope: !6616)
!6626 = !DILocation(line: 370, column: 2, scope: !6616)
!6627 = !DILocation(line: 371, column: 1, scope: !6616)
!6628 = distinct !DISubprogram(name: "ww_mutex_init", scope: !4777, file: !4777, line: 98, type: !6629, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6632)
!6629 = !DISubroutineType(types: !6630)
!6630 = !{null, !6631, !6383}
!6631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4776, size: 64)
!6632 = !{!6633, !6634}
!6633 = !DILocalVariable(name: "lock", arg: 1, scope: !6628, file: !4777, line: 98, type: !6631)
!6634 = !DILocalVariable(name: "ww_class", arg: 2, scope: !6628, file: !4777, line: 99, type: !6383)
!6635 = !DILocation(line: 98, column: 51, scope: !6628)
!6636 = !DILocation(line: 99, column: 23, scope: !6628)
!6637 = !DILocation(line: 101, column: 2, scope: !6628)
!6638 = !DILocation(line: 102, column: 2, scope: !6628)
!6639 = !DILocation(line: 102, column: 8, scope: !6628)
!6640 = !DILocation(line: 102, column: 12, scope: !6628)
!6641 = !DILocation(line: 106, column: 1, scope: !6628)
!6642 = distinct !DISubprogram(name: "__drm_stack_depot_init", scope: !2, file: !2, line: 123, type: !1155, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!6643 = !DILocation(line: 125, column: 1, scope: !6642)
!6644 = distinct !DISubprogram(name: "drm_modeset_lock", scope: !2, file: !2, line: 392, type: !6645, scopeLine: 394, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6647)
!6645 = !DISubroutineType(types: !6646)
!6646 = !{!115, !4796, !4791}
!6647 = !{!6648, !6649}
!6648 = !DILocalVariable(name: "lock", arg: 1, scope: !6644, file: !2, line: 392, type: !4796)
!6649 = !DILocalVariable(name: "ctx", arg: 2, scope: !6644, file: !2, line: 393, type: !4791)
!6650 = !DILocation(line: 392, column: 47, scope: !6644)
!6651 = !DILocation(line: 393, column: 35, scope: !6644)
!6652 = !DILocation(line: 395, column: 6, scope: !6653)
!6653 = distinct !DILexicalBlock(scope: !6644, file: !2, line: 395, column: 6)
!6654 = !DILocation(line: 395, column: 6, scope: !6644)
!6655 = !DILocation(line: 396, column: 23, scope: !6653)
!6656 = !DILocation(line: 396, column: 29, scope: !6653)
!6657 = !DILocation(line: 396, column: 34, scope: !6653)
!6658 = !DILocation(line: 396, column: 39, scope: !6653)
!6659 = !DILocation(line: 396, column: 10, scope: !6653)
!6660 = !DILocation(line: 396, column: 3, scope: !6653)
!6661 = !DILocation(line: 398, column: 17, scope: !6644)
!6662 = !DILocation(line: 398, column: 23, scope: !6644)
!6663 = !DILocation(line: 398, column: 2, scope: !6644)
!6664 = !DILocation(line: 399, column: 2, scope: !6644)
!6665 = !DILocation(line: 400, column: 1, scope: !6644)
!6666 = !DISubprogram(name: "ww_mutex_lock", scope: !4777, file: !4777, line: 234, type: !6667, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6667 = !DISubroutineType(types: !6668)
!6668 = !{!115, !6631, !4781}
!6669 = distinct !DISubprogram(name: "drm_modeset_lock_single_interruptible", scope: !2, file: !2, line: 412, type: !6670, scopeLine: 413, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6672)
!6670 = !DISubroutineType(types: !6671)
!6671 = !{!115, !4796}
!6672 = !{!6673}
!6673 = !DILocalVariable(name: "lock", arg: 1, scope: !6669, file: !2, line: 412, type: !4796)
!6674 = !DILocation(line: 412, column: 68, scope: !6669)
!6675 = !DILocation(line: 414, column: 38, scope: !6669)
!6676 = !DILocation(line: 414, column: 44, scope: !6669)
!6677 = !DILocation(line: 414, column: 9, scope: !6669)
!6678 = !DILocation(line: 414, column: 2, scope: !6669)
!6679 = !DISubprogram(name: "ww_mutex_lock_interruptible", scope: !4777, file: !4777, line: 266, type: !6667, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6680 = distinct !DISubprogram(name: "list_del_init", scope: !6412, file: !6412, line: 285, type: !6413, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6681)
!6681 = !{!6682}
!6682 = !DILocalVariable(name: "entry", arg: 1, scope: !6680, file: !6412, line: 285, type: !373)
!6683 = !DILocation(line: 285, column: 52, scope: !6680)
!6684 = !DILocation(line: 287, column: 19, scope: !6680)
!6685 = !DILocation(line: 287, column: 2, scope: !6680)
!6686 = !DILocation(line: 288, column: 17, scope: !6680)
!6687 = !DILocation(line: 288, column: 2, scope: !6680)
!6688 = !DILocation(line: 289, column: 1, scope: !6680)
!6689 = !DISubprogram(name: "ww_mutex_unlock", scope: !4777, file: !4777, line: 338, type: !6690, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6690 = !DISubroutineType(types: !6691)
!6691 = !{null, !6631}
!6692 = distinct !DISubprogram(name: "kmalloc", scope: !322, file: !322, line: 591, type: !5990, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6693)
!6693 = !{!6694, !6695, !6696}
!6694 = !DILocalVariable(name: "size", arg: 1, scope: !6692, file: !322, line: 591, type: !496)
!6695 = !DILocalVariable(name: "flags", arg: 2, scope: !6692, file: !322, line: 591, type: !332)
!6696 = !DILocalVariable(name: "index", scope: !6697, file: !322, line: 594, type: !13)
!6697 = distinct !DILexicalBlock(scope: !6698, file: !322, line: 593, column: 42)
!6698 = distinct !DILexicalBlock(scope: !6692, file: !322, line: 593, column: 6)
!6699 = !DILocation(line: 591, column: 61, scope: !6692)
!6700 = !DILocation(line: 591, column: 73, scope: !6692)
!6701 = !DILocation(line: 593, column: 27, scope: !6698)
!6702 = !DILocation(line: 593, column: 6, scope: !6698)
!6703 = !DILocation(line: 593, column: 33, scope: !6698)
!6704 = !DILocation(line: 593, column: 36, scope: !6698)
!6705 = !DILocation(line: 593, column: 6, scope: !6692)
!6706 = !DILocation(line: 594, column: 3, scope: !6697)
!6707 = !DILocation(line: 594, column: 16, scope: !6697)
!6708 = !DILocation(line: 596, column: 7, scope: !6709)
!6709 = distinct !DILexicalBlock(scope: !6697, file: !322, line: 596, column: 7)
!6710 = !DILocation(line: 596, column: 12, scope: !6709)
!6711 = !DILocation(line: 596, column: 7, scope: !6697)
!6712 = !DILocation(line: 597, column: 25, scope: !6709)
!6713 = !DILocation(line: 597, column: 31, scope: !6709)
!6714 = !DILocation(line: 597, column: 11, scope: !6709)
!6715 = !DILocation(line: 597, column: 4, scope: !6709)
!6716 = !DILocation(line: 599, column: 11, scope: !6697)
!6717 = !DILocation(line: 599, column: 9, scope: !6697)
!6718 = !DILocation(line: 601, column: 33, scope: !6697)
!6719 = !DILocation(line: 601, column: 40, scope: !6697)
!6720 = !DILocation(line: 601, column: 20, scope: !6697)
!6721 = !DILocation(line: 601, column: 5, scope: !6697)
!6722 = !DILocation(line: 601, column: 51, scope: !6697)
!6723 = !DILocation(line: 602, column: 5, scope: !6697)
!6724 = !DILocation(line: 602, column: 12, scope: !6697)
!6725 = !DILocation(line: 600, column: 10, scope: !6697)
!6726 = !DILocation(line: 600, column: 3, scope: !6697)
!6727 = !DILocation(line: 603, column: 2, scope: !6698)
!6728 = !DILocation(line: 604, column: 19, scope: !6692)
!6729 = !DILocation(line: 604, column: 25, scope: !6692)
!6730 = !DILocation(line: 604, column: 9, scope: !6692)
!6731 = !DILocation(line: 604, column: 2, scope: !6692)
!6732 = !DILocation(line: 605, column: 1, scope: !6692)
!6733 = !DISubprogram(name: "kmalloc_large", scope: !322, file: !322, line: 531, type: !5990, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6734 = distinct !DISubprogram(name: "__kmalloc_index", scope: !322, file: !322, line: 444, type: !6735, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6737)
!6735 = !DISubroutineType(types: !6736)
!6736 = !{!13, !496, !870}
!6737 = !{!6738, !6739}
!6738 = !DILocalVariable(name: "size", arg: 1, scope: !6734, file: !322, line: 444, type: !496)
!6739 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6734, file: !322, line: 445, type: !870)
!6740 = !DILocation(line: 444, column: 60, scope: !6734)
!6741 = !DILocation(line: 445, column: 16, scope: !6734)
!6742 = !DILocation(line: 447, column: 7, scope: !6743)
!6743 = distinct !DILexicalBlock(scope: !6734, file: !322, line: 447, column: 6)
!6744 = !DILocation(line: 447, column: 6, scope: !6734)
!6745 = !DILocation(line: 448, column: 3, scope: !6743)
!6746 = !DILocation(line: 450, column: 6, scope: !6747)
!6747 = distinct !DILexicalBlock(scope: !6734, file: !322, line: 450, column: 6)
!6748 = !DILocation(line: 450, column: 11, scope: !6747)
!6749 = !DILocation(line: 450, column: 6, scope: !6734)
!6750 = !DILocation(line: 451, column: 3, scope: !6747)
!6751 = !DILocation(line: 453, column: 32, scope: !6752)
!6752 = distinct !DILexicalBlock(scope: !6734, file: !322, line: 453, column: 6)
!6753 = !DILocation(line: 453, column: 37, scope: !6752)
!6754 = !DILocation(line: 453, column: 42, scope: !6752)
!6755 = !DILocation(line: 453, column: 45, scope: !6752)
!6756 = !DILocation(line: 453, column: 50, scope: !6752)
!6757 = !DILocation(line: 453, column: 6, scope: !6734)
!6758 = !DILocation(line: 454, column: 3, scope: !6752)
!6759 = !DILocation(line: 455, column: 32, scope: !6760)
!6760 = distinct !DILexicalBlock(scope: !6734, file: !322, line: 455, column: 6)
!6761 = !DILocation(line: 455, column: 37, scope: !6760)
!6762 = !DILocation(line: 455, column: 43, scope: !6760)
!6763 = !DILocation(line: 455, column: 46, scope: !6760)
!6764 = !DILocation(line: 455, column: 51, scope: !6760)
!6765 = !DILocation(line: 455, column: 6, scope: !6734)
!6766 = !DILocation(line: 456, column: 3, scope: !6760)
!6767 = !DILocation(line: 457, column: 6, scope: !6768)
!6768 = distinct !DILexicalBlock(scope: !6734, file: !322, line: 457, column: 6)
!6769 = !DILocation(line: 457, column: 11, scope: !6768)
!6770 = !DILocation(line: 457, column: 6, scope: !6734)
!6771 = !DILocation(line: 457, column: 26, scope: !6768)
!6772 = !DILocation(line: 458, column: 6, scope: !6773)
!6773 = distinct !DILexicalBlock(scope: !6734, file: !322, line: 458, column: 6)
!6774 = !DILocation(line: 458, column: 11, scope: !6773)
!6775 = !DILocation(line: 458, column: 6, scope: !6734)
!6776 = !DILocation(line: 458, column: 26, scope: !6773)
!6777 = !DILocation(line: 459, column: 6, scope: !6778)
!6778 = distinct !DILexicalBlock(scope: !6734, file: !322, line: 459, column: 6)
!6779 = !DILocation(line: 459, column: 11, scope: !6778)
!6780 = !DILocation(line: 459, column: 6, scope: !6734)
!6781 = !DILocation(line: 459, column: 26, scope: !6778)
!6782 = !DILocation(line: 460, column: 6, scope: !6783)
!6783 = distinct !DILexicalBlock(scope: !6734, file: !322, line: 460, column: 6)
!6784 = !DILocation(line: 460, column: 11, scope: !6783)
!6785 = !DILocation(line: 460, column: 6, scope: !6734)
!6786 = !DILocation(line: 460, column: 26, scope: !6783)
!6787 = !DILocation(line: 461, column: 6, scope: !6788)
!6788 = distinct !DILexicalBlock(scope: !6734, file: !322, line: 461, column: 6)
!6789 = !DILocation(line: 461, column: 11, scope: !6788)
!6790 = !DILocation(line: 461, column: 6, scope: !6734)
!6791 = !DILocation(line: 461, column: 26, scope: !6788)
!6792 = !DILocation(line: 462, column: 6, scope: !6793)
!6793 = distinct !DILexicalBlock(scope: !6734, file: !322, line: 462, column: 6)
!6794 = !DILocation(line: 462, column: 11, scope: !6793)
!6795 = !DILocation(line: 462, column: 6, scope: !6734)
!6796 = !DILocation(line: 462, column: 26, scope: !6793)
!6797 = !DILocation(line: 463, column: 6, scope: !6798)
!6798 = distinct !DILexicalBlock(scope: !6734, file: !322, line: 463, column: 6)
!6799 = !DILocation(line: 463, column: 11, scope: !6798)
!6800 = !DILocation(line: 463, column: 6, scope: !6734)
!6801 = !DILocation(line: 463, column: 26, scope: !6798)
!6802 = !DILocation(line: 464, column: 6, scope: !6803)
!6803 = distinct !DILexicalBlock(scope: !6734, file: !322, line: 464, column: 6)
!6804 = !DILocation(line: 464, column: 11, scope: !6803)
!6805 = !DILocation(line: 464, column: 6, scope: !6734)
!6806 = !DILocation(line: 464, column: 26, scope: !6803)
!6807 = !DILocation(line: 465, column: 6, scope: !6808)
!6808 = distinct !DILexicalBlock(scope: !6734, file: !322, line: 465, column: 6)
!6809 = !DILocation(line: 465, column: 11, scope: !6808)
!6810 = !DILocation(line: 465, column: 6, scope: !6734)
!6811 = !DILocation(line: 465, column: 26, scope: !6808)
!6812 = !DILocation(line: 466, column: 6, scope: !6813)
!6813 = distinct !DILexicalBlock(scope: !6734, file: !322, line: 466, column: 6)
!6814 = !DILocation(line: 466, column: 11, scope: !6813)
!6815 = !DILocation(line: 466, column: 6, scope: !6734)
!6816 = !DILocation(line: 466, column: 26, scope: !6813)
!6817 = !DILocation(line: 467, column: 6, scope: !6818)
!6818 = distinct !DILexicalBlock(scope: !6734, file: !322, line: 467, column: 6)
!6819 = !DILocation(line: 467, column: 11, scope: !6818)
!6820 = !DILocation(line: 467, column: 6, scope: !6734)
!6821 = !DILocation(line: 467, column: 26, scope: !6818)
!6822 = !DILocation(line: 468, column: 6, scope: !6823)
!6823 = distinct !DILexicalBlock(scope: !6734, file: !322, line: 468, column: 6)
!6824 = !DILocation(line: 468, column: 11, scope: !6823)
!6825 = !DILocation(line: 468, column: 6, scope: !6734)
!6826 = !DILocation(line: 468, column: 26, scope: !6823)
!6827 = !DILocation(line: 469, column: 6, scope: !6828)
!6828 = distinct !DILexicalBlock(scope: !6734, file: !322, line: 469, column: 6)
!6829 = !DILocation(line: 469, column: 11, scope: !6828)
!6830 = !DILocation(line: 469, column: 6, scope: !6734)
!6831 = !DILocation(line: 469, column: 26, scope: !6828)
!6832 = !DILocation(line: 470, column: 6, scope: !6833)
!6833 = distinct !DILexicalBlock(scope: !6734, file: !322, line: 470, column: 6)
!6834 = !DILocation(line: 470, column: 11, scope: !6833)
!6835 = !DILocation(line: 470, column: 6, scope: !6734)
!6836 = !DILocation(line: 470, column: 26, scope: !6833)
!6837 = !DILocation(line: 471, column: 6, scope: !6838)
!6838 = distinct !DILexicalBlock(scope: !6734, file: !322, line: 471, column: 6)
!6839 = !DILocation(line: 471, column: 11, scope: !6838)
!6840 = !DILocation(line: 471, column: 6, scope: !6734)
!6841 = !DILocation(line: 471, column: 26, scope: !6838)
!6842 = !DILocation(line: 472, column: 6, scope: !6843)
!6843 = distinct !DILexicalBlock(scope: !6734, file: !322, line: 472, column: 6)
!6844 = !DILocation(line: 472, column: 11, scope: !6843)
!6845 = !DILocation(line: 472, column: 6, scope: !6734)
!6846 = !DILocation(line: 472, column: 26, scope: !6843)
!6847 = !DILocation(line: 473, column: 6, scope: !6848)
!6848 = distinct !DILexicalBlock(scope: !6734, file: !322, line: 473, column: 6)
!6849 = !DILocation(line: 473, column: 11, scope: !6848)
!6850 = !DILocation(line: 473, column: 6, scope: !6734)
!6851 = !DILocation(line: 473, column: 26, scope: !6848)
!6852 = !DILocation(line: 474, column: 6, scope: !6853)
!6853 = distinct !DILexicalBlock(scope: !6734, file: !322, line: 474, column: 6)
!6854 = !DILocation(line: 474, column: 11, scope: !6853)
!6855 = !DILocation(line: 474, column: 6, scope: !6734)
!6856 = !DILocation(line: 474, column: 27, scope: !6853)
!6857 = !DILocation(line: 475, column: 6, scope: !6858)
!6858 = distinct !DILexicalBlock(scope: !6734, file: !322, line: 475, column: 6)
!6859 = !DILocation(line: 475, column: 11, scope: !6858)
!6860 = !DILocation(line: 475, column: 6, scope: !6734)
!6861 = !DILocation(line: 475, column: 32, scope: !6858)
!6862 = !DILocation(line: 477, column: 50, scope: !6863)
!6863 = distinct !DILexicalBlock(scope: !6734, file: !322, line: 477, column: 6)
!6864 = !DILocation(line: 477, column: 6, scope: !6734)
!6865 = !DILocation(line: 478, column: 3, scope: !6863)
!6866 = !DILocation(line: 478, column: 3, scope: !6867)
!6867 = distinct !DILexicalBlock(scope: !6868, file: !322, line: 478, column: 3)
!6868 = distinct !DILexicalBlock(scope: !6863, file: !322, line: 478, column: 3)
!6869 = !{i32 -2141204237}
!6870 = !DILocation(line: 478, column: 3, scope: !6868)
!6871 = !DILocation(line: 480, column: 3, scope: !6863)
!6872 = !DILocation(line: 480, column: 3, scope: !6873)
!6873 = distinct !DILexicalBlock(scope: !6863, file: !322, line: 480, column: 3)
!6874 = !DILocation(line: 480, column: 3, scope: !6875)
!6875 = distinct !DILexicalBlock(scope: !6873, file: !322, line: 480, column: 3)
!6876 = !DILocation(line: 480, column: 3, scope: !6877)
!6877 = distinct !DILexicalBlock(scope: !6873, file: !322, line: 480, column: 3)
!6878 = !{i64 2153763262, i64 2153763291, i64 2153763337, i64 2153763395, i64 2153763449, i64 2153763503, i64 2153763558, i64 2153763589}
!6879 = !DILocation(line: 483, column: 2, scope: !6734)
!6880 = !DILocation(line: 484, column: 1, scope: !6734)
!6881 = !DISubprogram(name: "kmalloc_trace", scope: !322, file: !322, line: 525, type: !6882, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6882 = !DISubroutineType(types: !6883)
!6883 = !{!334, !3206, !332, !496}
!6884 = distinct !DISubprogram(name: "kmalloc_type", scope: !322, file: !322, line: 401, type: !6885, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6887)
!6885 = !DISubroutineType(types: !6886)
!6886 = !{!321, !332, !499}
!6887 = !{!6888, !6889}
!6888 = !DILocalVariable(name: "flags", arg: 1, scope: !6884, file: !322, line: 401, type: !332)
!6889 = !DILocalVariable(name: "caller", arg: 2, scope: !6884, file: !322, line: 401, type: !499)
!6890 = !DILocation(line: 401, column: 67, scope: !6884)
!6891 = !DILocation(line: 401, column: 88, scope: !6884)
!6892 = !DILocation(line: 407, column: 6, scope: !6893)
!6893 = distinct !DILexicalBlock(scope: !6884, file: !322, line: 407, column: 6)
!6894 = !DILocation(line: 407, column: 6, scope: !6884)
!6895 = !DILocation(line: 413, column: 3, scope: !6893)
!6896 = !DILocation(line: 423, column: 38, scope: !6897)
!6897 = distinct !DILexicalBlock(scope: !6884, file: !322, line: 423, column: 6)
!6898 = !DILocation(line: 423, column: 44, scope: !6897)
!6899 = !DILocation(line: 423, column: 6, scope: !6884)
!6900 = !DILocation(line: 424, column: 3, scope: !6897)
!6901 = !DILocation(line: 426, column: 3, scope: !6902)
!6902 = distinct !DILexicalBlock(scope: !6884, file: !322, line: 425, column: 6)
!6903 = !DILocation(line: 429, column: 1, scope: !6884)
!6904 = !DISubprogram(name: "__kmalloc", scope: !322, file: !322, line: 488, type: !5990, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6905 = !DISubprogram(name: "__compiletime_assert_232", scope: !322, file: !322, line: 478, type: !1155, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6906 = distinct !DISubprogram(name: "ww_mutex_is_locked", scope: !4777, file: !4777, line: 364, type: !6907, scopeLine: 365, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6909)
!6907 = !DISubroutineType(types: !6908)
!6908 = !{!870, !6631}
!6909 = !{!6910}
!6910 = !DILocalVariable(name: "lock", arg: 1, scope: !6906, file: !4777, line: 364, type: !6631)
!6911 = !DILocation(line: 364, column: 56, scope: !6906)
!6912 = !DILocation(line: 366, column: 9, scope: !6906)
!6913 = !DILocation(line: 366, column: 2, scope: !6906)
!6914 = distinct !DISubprogram(name: "get_current", scope: !6915, file: !6915, line: 39, type: !6916, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6918)
!6915 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!6916 = !DISubroutineType(types: !6917)
!6917 = !{!1358}
!6918 = !{!6919, !6921, !6923}
!6919 = !DILocalVariable(name: "pscr_ret__", scope: !6920, file: !6915, line: 41, type: !1358)
!6920 = distinct !DILexicalBlock(scope: !6914, file: !6915, line: 41, column: 9)
!6921 = !DILocalVariable(name: "__vpp_verify", scope: !6922, file: !6915, line: 41, type: !1778)
!6922 = distinct !DILexicalBlock(scope: !6920, file: !6915, line: 41, column: 9)
!6923 = !DILocalVariable(name: "pfo_val__", scope: !6924, file: !6915, line: 41, type: !602)
!6924 = distinct !DILexicalBlock(scope: !6920, file: !6915, line: 41, column: 9)
!6925 = !DILocation(line: 41, column: 9, scope: !6920)
!6926 = !DILocation(line: 41, column: 9, scope: !6922)
!6927 = !DILocation(line: 41, column: 9, scope: !6924)
!6928 = !{i64 2148363266}
!6929 = !DILocation(line: 41, column: 9, scope: !6914)
!6930 = !DILocation(line: 41, column: 2, scope: !6914)
!6931 = distinct !DISubprogram(name: "atomic_long_inc_return_relaxed", scope: !6932, file: !6932, line: 3631, type: !6933, scopeLine: 3632, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6935)
!6932 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!6933 = !DISubroutineType(types: !6934)
!6934 = !{!485, !3758}
!6935 = !{!6936}
!6936 = !DILocalVariable(name: "v", arg: 1, scope: !6931, file: !6932, line: 3631, type: !3758)
!6937 = !DILocation(line: 3631, column: 47, scope: !6931)
!6938 = !DILocation(line: 3633, column: 31, scope: !6931)
!6939 = !DILocation(line: 3633, column: 2, scope: !6931)
!6940 = !DILocation(line: 3634, column: 44, scope: !6931)
!6941 = !DILocation(line: 3634, column: 9, scope: !6931)
!6942 = !DILocation(line: 3634, column: 2, scope: !6931)
!6943 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6944, file: !6944, line: 94, type: !6945, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6950)
!6944 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6945 = !DISubroutineType(types: !6946)
!6946 = !{null, !6947, !496}
!6947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6948, size: 64)
!6948 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6949)
!6949 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6950 = !{!6951, !6952}
!6951 = !DILocalVariable(name: "v", arg: 1, scope: !6943, file: !6944, line: 94, type: !6947)
!6952 = !DILocalVariable(name: "size", arg: 2, scope: !6943, file: !6944, line: 94, type: !496)
!6953 = !DILocation(line: 94, column: 79, scope: !6943)
!6954 = !DILocation(line: 94, column: 89, scope: !6943)
!6955 = !DILocation(line: 96, column: 20, scope: !6943)
!6956 = !DILocation(line: 96, column: 23, scope: !6943)
!6957 = !DILocation(line: 96, column: 2, scope: !6943)
!6958 = !DILocation(line: 97, column: 2, scope: !6943)
!6959 = !DILocation(line: 98, column: 1, scope: !6943)
!6960 = distinct !DISubprogram(name: "raw_atomic_long_inc_return_relaxed", scope: !795, file: !795, line: 575, type: !6933, scopeLine: 576, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6961)
!6961 = !{!6962}
!6962 = !DILocalVariable(name: "v", arg: 1, scope: !6960, file: !795, line: 575, type: !3758)
!6963 = !DILocation(line: 575, column: 51, scope: !6960)
!6964 = !DILocation(line: 578, column: 41, scope: !6960)
!6965 = !DILocation(line: 578, column: 9, scope: !6960)
!6966 = !DILocation(line: 578, column: 2, scope: !6960)
!6967 = distinct !DISubprogram(name: "kasan_check_write", scope: !6968, file: !6968, line: 44, type: !6969, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6971)
!6968 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6969 = !DISubroutineType(types: !6970)
!6970 = !{!870, !6947, !13}
!6971 = !{!6972, !6973}
!6972 = !DILocalVariable(name: "p", arg: 1, scope: !6967, file: !6968, line: 44, type: !6947)
!6973 = !DILocalVariable(name: "size", arg: 2, scope: !6967, file: !6968, line: 44, type: !13)
!6974 = !DILocation(line: 44, column: 59, scope: !6967)
!6975 = !DILocation(line: 44, column: 75, scope: !6967)
!6976 = !DILocation(line: 46, column: 2, scope: !6967)
!6977 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6978, file: !6978, line: 229, type: !6979, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6981)
!6978 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6979 = !DISubroutineType(types: !6980)
!6980 = !{null, !6947, !496, !115}
!6981 = !{!6982, !6983, !6984}
!6982 = !DILocalVariable(name: "ptr", arg: 1, scope: !6977, file: !6978, line: 229, type: !6947)
!6983 = !DILocalVariable(name: "size", arg: 2, scope: !6977, file: !6978, line: 229, type: !496)
!6984 = !DILocalVariable(name: "type", arg: 3, scope: !6977, file: !6978, line: 230, type: !115)
!6985 = !DILocation(line: 229, column: 60, scope: !6977)
!6986 = !DILocation(line: 229, column: 72, scope: !6977)
!6987 = !DILocation(line: 230, column: 15, scope: !6977)
!6988 = !DILocation(line: 230, column: 23, scope: !6977)
!6989 = distinct !DISubprogram(name: "raw_atomic64_inc_return_relaxed", scope: !6990, file: !6990, line: 3185, type: !6991, scopeLine: 3186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6994)
!6990 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!6991 = !DISubroutineType(types: !6992)
!6992 = !{!800, !6993}
!6993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!6994 = !{!6995}
!6995 = !DILocalVariable(name: "v", arg: 1, scope: !6989, file: !6990, line: 3185, type: !6993)
!6996 = !DILocation(line: 3185, column: 45, scope: !6989)
!6997 = !DILocation(line: 3192, column: 44, scope: !6989)
!6998 = !DILocation(line: 3192, column: 9, scope: !6989)
!6999 = !DILocation(line: 3192, column: 2, scope: !6989)
!7000 = distinct !DISubprogram(name: "raw_atomic64_add_return_relaxed", scope: !6990, file: !6990, line: 2740, type: !7001, scopeLine: 2741, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7003)
!7001 = !DISubroutineType(types: !7002)
!7002 = !{!800, !800, !6993}
!7003 = !{!7004, !7005}
!7004 = !DILocalVariable(name: "i", arg: 1, scope: !7000, file: !6990, line: 2740, type: !800)
!7005 = !DILocalVariable(name: "v", arg: 2, scope: !7000, file: !6990, line: 2740, type: !6993)
!7006 = !DILocation(line: 2740, column: 37, scope: !7000)
!7007 = !DILocation(line: 2740, column: 52, scope: !7000)
!7008 = !DILocation(line: 2745, column: 34, scope: !7000)
!7009 = !DILocation(line: 2745, column: 37, scope: !7000)
!7010 = !DILocation(line: 2745, column: 9, scope: !7000)
!7011 = !DILocation(line: 2745, column: 2, scope: !7000)
!7012 = distinct !DISubprogram(name: "arch_atomic64_add_return", scope: !7013, file: !7013, line: 77, type: !7001, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7014)
!7013 = !DIFile(filename: "./arch/x86/include/asm/atomic64_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e491f305c5821f66703047d9c813539")
!7014 = !{!7015, !7016, !7017}
!7015 = !DILocalVariable(name: "i", arg: 1, scope: !7012, file: !7013, line: 77, type: !800)
!7016 = !DILocalVariable(name: "v", arg: 2, scope: !7012, file: !7013, line: 77, type: !6993)
!7017 = !DILocalVariable(name: "__ret", scope: !7018, file: !7013, line: 79, type: !800)
!7018 = distinct !DILexicalBlock(scope: !7012, file: !7013, line: 79, column: 13)
!7019 = !DILocation(line: 77, column: 57, scope: !7012)
!7020 = !DILocation(line: 77, column: 72, scope: !7012)
!7021 = !DILocation(line: 79, column: 9, scope: !7012)
!7022 = !DILocation(line: 79, column: 13, scope: !7018)
!7023 = !{i64 2148940889, i64 2148940928, i64 2148940949, i64 2148940986, i64 2148941009, i64 2148941018}
!7024 = !DILocation(line: 79, column: 13, scope: !7012)
!7025 = !DILocation(line: 79, column: 11, scope: !7012)
!7026 = !DILocation(line: 79, column: 2, scope: !7012)
!7027 = !DISubprogram(name: "ww_mutex_trylock", scope: !4777, file: !4777, line: 340, type: !6667, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7028 = distinct !DISubprogram(name: "ww_mutex_lock_slow_interruptible", scope: !4777, file: !4777, line: 329, type: !6667, scopeLine: 331, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7029)
!7029 = !{!7030, !7031}
!7030 = !DILocalVariable(name: "lock", arg: 1, scope: !7028, file: !4777, line: 329, type: !6631)
!7031 = !DILocalVariable(name: "ctx", arg: 2, scope: !7028, file: !4777, line: 330, type: !4781)
!7032 = !DILocation(line: 329, column: 51, scope: !7028)
!7033 = !DILocation(line: 330, column: 29, scope: !7028)
!7034 = !DILocation(line: 335, column: 37, scope: !7028)
!7035 = !DILocation(line: 335, column: 43, scope: !7028)
!7036 = !DILocation(line: 335, column: 9, scope: !7028)
!7037 = !DILocation(line: 335, column: 2, scope: !7028)
!7038 = distinct !DISubprogram(name: "ww_mutex_lock_slow", scope: !4777, file: !4777, line: 293, type: !7039, scopeLine: 294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7041)
!7039 = !DISubroutineType(types: !7040)
!7040 = !{null, !6631, !4781}
!7041 = !{!7042, !7043, !7044}
!7042 = !DILocalVariable(name: "lock", arg: 1, scope: !7038, file: !4777, line: 293, type: !6631)
!7043 = !DILocalVariable(name: "ctx", arg: 2, scope: !7038, file: !4777, line: 293, type: !4781)
!7044 = !DILocalVariable(name: "ret", scope: !7038, file: !4777, line: 295, type: !115)
!7045 = !DILocation(line: 293, column: 37, scope: !7038)
!7046 = !DILocation(line: 293, column: 66, scope: !7038)
!7047 = !DILocation(line: 295, column: 2, scope: !7038)
!7048 = !DILocation(line: 295, column: 6, scope: !7038)
!7049 = !DILocation(line: 299, column: 22, scope: !7038)
!7050 = !DILocation(line: 299, column: 28, scope: !7038)
!7051 = !DILocation(line: 299, column: 8, scope: !7038)
!7052 = !DILocation(line: 299, column: 6, scope: !7038)
!7053 = !DILocation(line: 300, column: 8, scope: !7038)
!7054 = !DILocation(line: 301, column: 1, scope: !7038)
!7055 = distinct !DISubprogram(name: "list_add", scope: !6412, file: !6412, line: 167, type: !7056, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7058)
!7056 = !DISubroutineType(types: !7057)
!7057 = !{null, !373, !373}
!7058 = !{!7059, !7060}
!7059 = !DILocalVariable(name: "new", arg: 1, scope: !7055, file: !6412, line: 167, type: !373)
!7060 = !DILocalVariable(name: "head", arg: 2, scope: !7055, file: !6412, line: 167, type: !373)
!7061 = !DILocation(line: 167, column: 47, scope: !7055)
!7062 = !DILocation(line: 167, column: 70, scope: !7055)
!7063 = !DILocation(line: 169, column: 13, scope: !7055)
!7064 = !DILocation(line: 169, column: 18, scope: !7055)
!7065 = !DILocation(line: 169, column: 24, scope: !7055)
!7066 = !DILocation(line: 169, column: 30, scope: !7055)
!7067 = !DILocation(line: 169, column: 2, scope: !7055)
!7068 = !DILocation(line: 170, column: 1, scope: !7055)
!7069 = distinct !DISubprogram(name: "__drm_stack_depot_save", scope: !2, file: !2, line: 116, type: !7070, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!7070 = !DISubroutineType(types: !7071)
!7071 = !{!4798}
!7072 = !DILocation(line: 118, column: 2, scope: !7069)
!7073 = distinct !DISubprogram(name: "__list_add", scope: !6412, file: !6412, line: 146, type: !7074, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7076)
!7074 = !DISubroutineType(types: !7075)
!7075 = !{null, !373, !373, !373}
!7076 = !{!7077, !7078, !7079}
!7077 = !DILocalVariable(name: "new", arg: 1, scope: !7073, file: !6412, line: 146, type: !373)
!7078 = !DILocalVariable(name: "prev", arg: 2, scope: !7073, file: !6412, line: 147, type: !373)
!7079 = !DILocalVariable(name: "next", arg: 3, scope: !7073, file: !6412, line: 148, type: !373)
!7080 = !DILocation(line: 146, column: 49, scope: !7073)
!7081 = !DILocation(line: 147, column: 28, scope: !7073)
!7082 = !DILocation(line: 148, column: 28, scope: !7073)
!7083 = !DILocation(line: 150, column: 24, scope: !7084)
!7084 = distinct !DILexicalBlock(scope: !7073, file: !6412, line: 150, column: 6)
!7085 = !DILocation(line: 150, column: 29, scope: !7084)
!7086 = !DILocation(line: 150, column: 35, scope: !7084)
!7087 = !DILocation(line: 150, column: 7, scope: !7084)
!7088 = !DILocation(line: 150, column: 6, scope: !7073)
!7089 = !DILocation(line: 151, column: 3, scope: !7084)
!7090 = !DILocation(line: 153, column: 15, scope: !7073)
!7091 = !DILocation(line: 153, column: 2, scope: !7073)
!7092 = !DILocation(line: 153, column: 8, scope: !7073)
!7093 = !DILocation(line: 153, column: 13, scope: !7073)
!7094 = !DILocation(line: 154, column: 14, scope: !7073)
!7095 = !DILocation(line: 154, column: 2, scope: !7073)
!7096 = !DILocation(line: 154, column: 7, scope: !7073)
!7097 = !DILocation(line: 154, column: 12, scope: !7073)
!7098 = !DILocation(line: 155, column: 14, scope: !7073)
!7099 = !DILocation(line: 155, column: 2, scope: !7073)
!7100 = !DILocation(line: 155, column: 7, scope: !7073)
!7101 = !DILocation(line: 155, column: 12, scope: !7073)
!7102 = !DILocation(line: 156, column: 2, scope: !7073)
!7103 = !DILocation(line: 156, column: 2, scope: !7104)
!7104 = distinct !DILexicalBlock(scope: !7073, file: !6412, line: 156, column: 2)
!7105 = !DILocation(line: 156, column: 2, scope: !7106)
!7106 = distinct !DILexicalBlock(scope: !7104, file: !6412, line: 156, column: 2)
!7107 = !DILocation(line: 156, column: 2, scope: !7108)
!7108 = distinct !DILexicalBlock(scope: !7104, file: !6412, line: 156, column: 2)
!7109 = !DILocation(line: 157, column: 1, scope: !7073)
!7110 = distinct !DISubprogram(name: "__list_add_valid", scope: !6412, file: !6412, line: 128, type: !7111, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7113)
!7111 = !DISubroutineType(types: !7112)
!7112 = !{!870, !373, !373, !373}
!7113 = !{!7114, !7115, !7116}
!7114 = !DILocalVariable(name: "new", arg: 1, scope: !7110, file: !6412, line: 128, type: !373)
!7115 = !DILocalVariable(name: "prev", arg: 2, scope: !7110, file: !6412, line: 129, type: !373)
!7116 = !DILocalVariable(name: "next", arg: 3, scope: !7110, file: !6412, line: 130, type: !373)
!7117 = !DILocation(line: 128, column: 55, scope: !7110)
!7118 = !DILocation(line: 129, column: 23, scope: !7110)
!7119 = !DILocation(line: 130, column: 23, scope: !7110)
!7120 = !DILocation(line: 132, column: 2, scope: !7110)
!7121 = !DISubprogram(name: "__mutex_init", scope: !791, file: !791, line: 121, type: !7122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7122 = !DISubroutineType(types: !7123)
!7123 = !{null, !6005, !367, !7124}
!7124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!7125 = distinct !DISubprogram(name: "__list_del_entry", scope: !6412, file: !6412, line: 213, type: !6413, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7126)
!7126 = !{!7127}
!7127 = !DILocalVariable(name: "entry", arg: 1, scope: !7125, file: !6412, line: 213, type: !373)
!7128 = !DILocation(line: 213, column: 55, scope: !7125)
!7129 = !DILocation(line: 215, column: 30, scope: !7130)
!7130 = distinct !DILexicalBlock(scope: !7125, file: !6412, line: 215, column: 6)
!7131 = !DILocation(line: 215, column: 7, scope: !7130)
!7132 = !DILocation(line: 215, column: 6, scope: !7125)
!7133 = !DILocation(line: 216, column: 3, scope: !7130)
!7134 = !DILocation(line: 218, column: 13, scope: !7125)
!7135 = !DILocation(line: 218, column: 20, scope: !7125)
!7136 = !DILocation(line: 218, column: 26, scope: !7125)
!7137 = !DILocation(line: 218, column: 33, scope: !7125)
!7138 = !DILocation(line: 218, column: 2, scope: !7125)
!7139 = !DILocation(line: 219, column: 1, scope: !7125)
!7140 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !6412, file: !6412, line: 134, type: !7141, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7143)
!7141 = !DISubroutineType(types: !7142)
!7142 = !{!870, !373}
!7143 = !{!7144}
!7144 = !DILocalVariable(name: "entry", arg: 1, scope: !7140, file: !6412, line: 134, type: !373)
!7145 = !DILocation(line: 134, column: 61, scope: !7140)
!7146 = !DILocation(line: 136, column: 2, scope: !7140)
!7147 = distinct !DISubprogram(name: "__list_del", scope: !6412, file: !6412, line: 193, type: !7056, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !7148)
!7148 = !{!7149, !7150}
!7149 = !DILocalVariable(name: "prev", arg: 1, scope: !7147, file: !6412, line: 193, type: !373)
!7150 = !DILocalVariable(name: "next", arg: 2, scope: !7147, file: !6412, line: 193, type: !373)
!7151 = !DILocation(line: 193, column: 50, scope: !7147)
!7152 = !DILocation(line: 193, column: 75, scope: !7147)
!7153 = !DILocation(line: 195, column: 15, scope: !7147)
!7154 = !DILocation(line: 195, column: 2, scope: !7147)
!7155 = !DILocation(line: 195, column: 8, scope: !7147)
!7156 = !DILocation(line: 195, column: 13, scope: !7147)
!7157 = !DILocation(line: 196, column: 2, scope: !7147)
!7158 = !DILocation(line: 196, column: 2, scope: !7159)
!7159 = distinct !DILexicalBlock(scope: !7147, file: !6412, line: 196, column: 2)
!7160 = !DILocation(line: 196, column: 2, scope: !7161)
!7161 = distinct !DILexicalBlock(scope: !7159, file: !6412, line: 196, column: 2)
!7162 = !DILocation(line: 196, column: 2, scope: !7163)
!7163 = distinct !DILexicalBlock(scope: !7159, file: !6412, line: 196, column: 2)
!7164 = !DILocation(line: 197, column: 1, scope: !7147)
