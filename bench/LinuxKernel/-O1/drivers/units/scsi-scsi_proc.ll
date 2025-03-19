; ModuleID = 'drivers/scsi/scsi_proc.c'
source_filename = "drivers/scsi/scsi_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_scsi_template_proc_dir: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad scsi_template_proc_dir ; .previous"

%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.scsi_proc_entry = type { %struct.list_head, ptr, ptr, i32 }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i64, i64, i16, i32, i8, i32, ptr, ptr, i64, i32 }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.kref, %struct.completion, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i64, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i64, i64, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i64, i64, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i64] }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.blk_mq_tag_set = type { ptr, [3 x %struct.blk_mq_queue_map], i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head, ptr }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.seq_file = type { ptr, i64, i64, i64, i64, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.13, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.14, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.15, ptr, %struct.address_space, %struct.list_head, %union.anon.16, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.13 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.14 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.15 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.16 = type { ptr }
%struct.file = type { %union.anon.17, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.17 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.18, %struct.qspinlock }
%union.anon.18 = type { %struct.atomic_t }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.path = type { ptr, ptr }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, [4 x i8], %struct.list_head, i16, i16, i16, i16, i64, i64, i64, i32, i32, i64, i32, i32, ptr, i8, i8, i8, [5 x i8], %struct.mutex, i8, [7 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i64, i32, i8, [3 x i8], %struct.atomic_t, [1 x i64], [1 x i64], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.work_struct, ptr, ptr, i64, ptr, i32, i32, ptr, i8, [7 x i8], %struct.mutex, i32, [4 x i8], ptr, [0 x i64] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.scsi_transport_template = type { %struct.transport_container, %struct.transport_container, %struct.transport_container, ptr, i32, i32, i32, i32, i32, i8, ptr }
%struct.transport_container = type { %struct.attribute_container, ptr }
%struct.attribute_container = type { %struct.list_head, %struct.klist, ptr, ptr, ptr, ptr, i64 }
%struct.klist = type { %struct.spinlock, %struct.list_head, ptr, ptr }

@__UNIQUE_ID___addressable_scsi_template_proc_dir346 = internal global ptr @scsi_template_proc_dir, section ".discard.addressable", align 8, !dbg !0
@global_host_template_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @global_host_template_mutex, i64 16), ptr getelementptr (i8, ptr @global_host_template_mutex, i64 16) } }, align 8, !dbg !5858
@proc_scsi = internal global ptr null, align 8, !dbg !5856
@.str = private unnamed_addr constant [32 x i8] c"\013%s: proc_mkdir failed for %s\0A\00", align 1, !dbg !5818
@__func__.scsi_proc_hostdir_add = private unnamed_addr constant [22 x i8] c"scsi_proc_hostdir_add\00", align 1, !dbg !5820
@scsi_proc_list = internal global %struct.list_head { ptr @scsi_proc_list, ptr @scsi_proc_list }, align 8, !dbg !5865
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1, !dbg !5825
@proc_scsi_ops = internal constant %struct.proc_ops { i32 0, ptr @proc_scsi_host_open, ptr @seq_read, ptr null, ptr @proc_scsi_host_write, ptr @seq_lseek, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !5867
@.str.2 = private unnamed_addr constant [3 x i8] c"\013\00", align 1, !dbg !5828
@.str.3 = private unnamed_addr constant [41 x i8] c"%s: Failed to register host (%s failed)\0A\00", align 1, !dbg !5830
@__func__.scsi_proc_host_add = private unnamed_addr constant [19 x i8] c"scsi_proc_host_add\00", align 1, !dbg !5835
@.str.4 = private unnamed_addr constant [19 x i8] c"proc_create_data()\00", align 1, !dbg !5840
@.str.5 = private unnamed_addr constant [24 x i8] c"scsi_proc_hostdir_add()\00", align 1, !dbg !5843
@.str.6 = private unnamed_addr constant [5 x i8] c"scsi\00", align 1, !dbg !5846
@.str.7 = private unnamed_addr constant [10 x i8] c"scsi/scsi\00", align 1, !dbg !5851
@scsi_scsi_proc_ops = internal constant %struct.proc_ops { i32 0, ptr @proc_scsi_open, ptr @seq_read, ptr null, ptr @proc_scsi_write, ptr @seq_lseek, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !5890
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.8 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5860
@.str.9 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1, !dbg !5884
@scsi_seq_ops = internal constant %struct.seq_operations { ptr @scsi_seq_start, ptr @scsi_seq_stop, ptr @scsi_seq_next, ptr @scsi_seq_show }, align 8, !dbg !5892
@scsi_bus_type = external dso_local global %struct.bus_type, align 8
@.str.10 = private unnamed_addr constant [19 x i8] c"Attached devices:\0A\00", align 1, !dbg !5894
@.str.11 = private unnamed_addr constant [59 x i8] c"Host: scsi%d Channel: %02d Id: %02d Lun: %02llu\0A  Vendor: \00", align 1, !dbg !5896
@.str.12 = private unnamed_addr constant [9 x i8] c" Model: \00", align 1, !dbg !5901
@.str.13 = private unnamed_addr constant [7 x i8] c" Rev: \00", align 1, !dbg !5906
@.str.14 = private unnamed_addr constant [14 x i8] c"  Type:   %s \00", align 1, !dbg !5909
@.str.15 = private unnamed_addr constant [41 x i8] c"               ANSI  SCSI revision: %02x\00", align 1, !dbg !5914
@.str.16 = private unnamed_addr constant [6 x i8] c" CCS\0A\00", align 1, !dbg !5916
@.str.17 = private unnamed_addr constant [23 x i8] c"scsi add-single-device\00", align 1, !dbg !5918
@.str.18 = private unnamed_addr constant [26 x i8] c"scsi remove-single-device\00", align 1, !dbg !5923
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable_scsi_template_proc_dir346], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @scsi_template_proc_dir(ptr noundef %sht) #0 align 16 !dbg !5937 {
entry:
  %sht.addr = alloca ptr, align 8
  %e = alloca ptr, align 8
  store ptr %sht, ptr %sht.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sht.addr, metadata !5941, metadata !DIExpression()), !dbg !5943
  call void @llvm.lifetime.start.p0(i64 8, ptr %e) #17, !dbg !5944
  call void @llvm.dbg.declare(metadata ptr %e, metadata !5942, metadata !DIExpression()), !dbg !5945
  %0 = load ptr, ptr %sht.addr, align 8, !dbg !5946
  %call = call ptr @scsi_lookup_proc_entry(ptr noundef %0) #18, !dbg !5947
  store ptr %call, ptr %e, align 8, !dbg !5945
  %1 = load ptr, ptr %e, align 8, !dbg !5948
  %tobool = icmp ne ptr %1, null, !dbg !5948
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5948

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %e, align 8, !dbg !5949
  %proc_dir = getelementptr inbounds %struct.scsi_proc_entry, ptr %2, i32 0, i32 2, !dbg !5950
  %3 = load ptr, ptr %proc_dir, align 8, !dbg !5950
  br label %cond.end, !dbg !5948

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5948

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %3, %cond.true ], [ null, %cond.false ], !dbg !5948
  call void @llvm.lifetime.end.p0(i64 8, ptr %e) #17, !dbg !5951
  ret ptr %cond, !dbg !5952
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @scsi_lookup_proc_entry(ptr noundef %sht) #0 align 16 !dbg !5953 {
entry:
  %sht.addr = alloca ptr, align 8
  %e = alloca ptr, align 8
  store ptr %sht, ptr %sht.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sht.addr, metadata !5957, metadata !DIExpression()), !dbg !5959
  call void @llvm.lifetime.start.p0(i64 8, ptr %e) #17, !dbg !5960
  call void @llvm.dbg.declare(metadata ptr %e, metadata !5958, metadata !DIExpression()), !dbg !5961
  call void @mutex_lock(ptr noundef @global_host_template_mutex) #18, !dbg !5962
  %0 = load ptr, ptr %sht.addr, align 8, !dbg !5963
  %call = call ptr @__scsi_lookup_proc_entry(ptr noundef %0) #18, !dbg !5964
  store ptr %call, ptr %e, align 8, !dbg !5965
  call void @mutex_unlock(ptr noundef @global_host_template_mutex) #18, !dbg !5966
  %1 = load ptr, ptr %e, align 8, !dbg !5967
  call void @llvm.lifetime.end.p0(i64 8, ptr %e) #17, !dbg !5968
  ret ptr %1, !dbg !5969
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @scsi_proc_hostdir_add(ptr noundef %sht) #0 align 16 !dbg !5970 {
entry:
  %retval = alloca i32, align 4
  %sht.addr = alloca ptr, align 8
  %e = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %sht, ptr %sht.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sht.addr, metadata !5974, metadata !DIExpression()), !dbg !5979
  call void @llvm.lifetime.start.p0(i64 8, ptr %e) #17, !dbg !5980
  call void @llvm.dbg.declare(metadata ptr %e, metadata !5975, metadata !DIExpression()), !dbg !5981
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !5982
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5976, metadata !DIExpression()), !dbg !5983
  %0 = load ptr, ptr %sht.addr, align 8, !dbg !5984
  %show_info = getelementptr inbounds %struct.scsi_host_template, ptr %0, i32 0, i32 28, !dbg !5986
  %1 = load ptr, ptr %show_info, align 8, !dbg !5986
  %tobool = icmp ne ptr %1, null, !dbg !5984
  br i1 %tobool, label %if.end, label %if.then, !dbg !5987

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5988
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5988

if.end:                                           ; preds = %entry
  call void @mutex_lock(ptr noundef @global_host_template_mutex) #18, !dbg !5989
  %2 = load ptr, ptr %sht.addr, align 8, !dbg !5990
  %call = call ptr @__scsi_lookup_proc_entry(ptr noundef %2) #18, !dbg !5991
  store ptr %call, ptr %e, align 8, !dbg !5992
  %3 = load ptr, ptr %e, align 8, !dbg !5993
  %tobool1 = icmp ne ptr %3, null, !dbg !5993
  br i1 %tobool1, label %if.end7, label %if.then2, !dbg !5995

if.then2:                                         ; preds = %if.end
  %call3 = call noalias ptr @kzalloc(i64 noundef 40, i32 noundef 3264) #19, !dbg !5996
  store ptr %call3, ptr %e, align 8, !dbg !5998
  %4 = load ptr, ptr %e, align 8, !dbg !5999
  %tobool4 = icmp ne ptr %4, null, !dbg !5999
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !6001

if.then5:                                         ; preds = %if.then2
  store i32 -12, ptr %ret, align 4, !dbg !6002
  br label %unlock, !dbg !6004

if.end6:                                          ; preds = %if.then2
  br label %if.end7, !dbg !6005

if.end7:                                          ; preds = %if.end6, %if.end
  %5 = load ptr, ptr %e, align 8, !dbg !6006
  %present = getelementptr inbounds %struct.scsi_proc_entry, ptr %5, i32 0, i32 3, !dbg !6008
  %6 = load i32, ptr %present, align 8, !dbg !6009
  %inc = add i32 %6, 1, !dbg !6009
  store i32 %inc, ptr %present, align 8, !dbg !6009
  %tobool8 = icmp ne i32 %6, 0, !dbg !6009
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !6010

if.then9:                                         ; preds = %if.end7
  br label %success, !dbg !6011

if.end10:                                         ; preds = %if.end7
  %7 = load ptr, ptr %sht.addr, align 8, !dbg !6012
  %proc_name = getelementptr inbounds %struct.scsi_host_template, ptr %7, i32 0, i32 33, !dbg !6013
  %8 = load ptr, ptr %proc_name, align 8, !dbg !6013
  %9 = load ptr, ptr @proc_scsi, align 8, !dbg !6014
  %call11 = call ptr @proc_mkdir(ptr noundef %8, ptr noundef %9) #18, !dbg !6015
  %10 = load ptr, ptr %e, align 8, !dbg !6016
  %proc_dir = getelementptr inbounds %struct.scsi_proc_entry, ptr %10, i32 0, i32 2, !dbg !6017
  store ptr %call11, ptr %proc_dir, align 8, !dbg !6018
  %11 = load ptr, ptr %e, align 8, !dbg !6019
  %proc_dir12 = getelementptr inbounds %struct.scsi_proc_entry, ptr %11, i32 0, i32 2, !dbg !6021
  %12 = load ptr, ptr %proc_dir12, align 8, !dbg !6021
  %tobool13 = icmp ne ptr %12, null, !dbg !6019
  br i1 %tobool13, label %if.end17, label %if.then14, !dbg !6022

if.then14:                                        ; preds = %if.end10
  br label %do.body, !dbg !6023

do.body:                                          ; preds = %if.then14
  br label %do.cond, !dbg !6026

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6026

do.end:                                           ; preds = %do.cond
  %13 = load ptr, ptr %sht.addr, align 8, !dbg !6023
  %proc_name15 = getelementptr inbounds %struct.scsi_host_template, ptr %13, i32 0, i32 33, !dbg !6023
  %14 = load ptr, ptr %proc_name15, align 8, !dbg !6023
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef @.str, ptr noundef @__func__.scsi_proc_hostdir_add, ptr noundef %14) #20, !dbg !6023
  store i32 %call16, ptr %tmp, align 4, !dbg !6026
  %15 = load i32, ptr %tmp, align 4, !dbg !6023
  store i32 -12, ptr %ret, align 4, !dbg !6028
  br label %unlock, !dbg !6029

if.end17:                                         ; preds = %if.end10
  %16 = load ptr, ptr %sht.addr, align 8, !dbg !6030
  %17 = load ptr, ptr %e, align 8, !dbg !6031
  %sht18 = getelementptr inbounds %struct.scsi_proc_entry, ptr %17, i32 0, i32 1, !dbg !6032
  store ptr %16, ptr %sht18, align 8, !dbg !6033
  %18 = load ptr, ptr %e, align 8, !dbg !6034
  %entry19 = getelementptr inbounds %struct.scsi_proc_entry, ptr %18, i32 0, i32 0, !dbg !6035
  call void @list_add_tail(ptr noundef %entry19, ptr noundef @scsi_proc_list) #18, !dbg !6036
  br label %success, !dbg !6036

success:                                          ; preds = %if.end17, %if.then9
  call void @llvm.dbg.label(metadata !5977), !dbg !6037
  store ptr null, ptr %e, align 8, !dbg !6038
  store i32 0, ptr %ret, align 4, !dbg !6039
  br label %unlock, !dbg !6040

unlock:                                           ; preds = %success, %do.end, %if.then5
  call void @llvm.dbg.label(metadata !5978), !dbg !6041
  call void @mutex_unlock(ptr noundef @global_host_template_mutex) #18, !dbg !6042
  %19 = load ptr, ptr %e, align 8, !dbg !6043
  call void @kfree(ptr noundef %19) #18, !dbg !6044
  %20 = load i32, ptr %ret, align 4, !dbg !6045
  store i32 %20, ptr %retval, align 4, !dbg !6046
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6046

cleanup:                                          ; preds = %unlock, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !6047
  call void @llvm.lifetime.end.p0(i64 8, ptr %e) #17, !dbg !6047
  %21 = load i32, ptr %retval, align 4, !dbg !6047
  ret i32 %21, !dbg !6047
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6048 dso_local void @mutex_lock(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__scsi_lookup_proc_entry(ptr noundef %sht) #0 align 16 !dbg !6052 {
entry:
  %retval = alloca ptr, align 8
  %sht.addr = alloca ptr, align 8
  %e = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr4 = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  store ptr %sht, ptr %sht.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sht.addr, metadata !6054, metadata !DIExpression()), !dbg !6062
  call void @llvm.lifetime.start.p0(i64 8, ptr %e) #17, !dbg !6063
  call void @llvm.dbg.declare(metadata ptr %e, metadata !6055, metadata !DIExpression()), !dbg !6064
  br label %do.body, !dbg !6065

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6066

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6066

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !6068
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6056, metadata !DIExpression()), !dbg !6068
  %0 = load ptr, ptr @scsi_proc_list, align 8, !dbg !6068
  store ptr %0, ptr %__mptr, align 8, !dbg !6068
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6068
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !6068
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6068
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !6069
  %2 = load ptr, ptr %tmp, align 8, !dbg !6068
  store ptr %2, ptr %e, align 8, !dbg !6069
  br label %for.cond, !dbg !6069

for.cond:                                         ; preds = %for.inc, %do.end
  %3 = load ptr, ptr %e, align 8, !dbg !6070
  %entry1 = getelementptr inbounds %struct.scsi_proc_entry, ptr %3, i32 0, i32 0, !dbg !6070
  %cmp = icmp eq ptr %entry1, @scsi_proc_list, !dbg !6070
  %lnot = xor i1 %cmp, true, !dbg !6070
  br i1 %lnot, label %for.body, label %for.end, !dbg !6069

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %e, align 8, !dbg !6071
  %sht2 = getelementptr inbounds %struct.scsi_proc_entry, ptr %4, i32 0, i32 1, !dbg !6073
  %5 = load ptr, ptr %sht2, align 8, !dbg !6073
  %6 = load ptr, ptr %sht.addr, align 8, !dbg !6074
  %cmp3 = icmp eq ptr %5, %6, !dbg !6075
  br i1 %cmp3, label %if.then, label %if.end, !dbg !6076

if.then:                                          ; preds = %for.body
  %7 = load ptr, ptr %e, align 8, !dbg !6077
  store ptr %7, ptr %retval, align 8, !dbg !6078
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6078

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !6074

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr4) #17, !dbg !6079
  call void @llvm.dbg.declare(metadata ptr %__mptr4, metadata !6059, metadata !DIExpression()), !dbg !6079
  %8 = load ptr, ptr %e, align 8, !dbg !6079
  %entry5 = getelementptr inbounds %struct.scsi_proc_entry, ptr %8, i32 0, i32 0, !dbg !6079
  %next = getelementptr inbounds %struct.list_head, ptr %entry5, i32 0, i32 0, !dbg !6079
  %9 = load ptr, ptr %next, align 8, !dbg !6079
  store ptr %9, ptr %__mptr4, align 8, !dbg !6079
  %10 = load ptr, ptr %__mptr4, align 8, !dbg !6079
  %add.ptr7 = getelementptr i8, ptr %10, i64 0, !dbg !6079
  store ptr %add.ptr7, ptr %tmp6, align 8, !dbg !6079
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr4) #17, !dbg !6070
  %11 = load ptr, ptr %tmp6, align 8, !dbg !6079
  store ptr %11, ptr %e, align 8, !dbg !6070
  br label %for.cond, !dbg !6070, !llvm.loop !6080

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !6084
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6084

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %e) #17, !dbg !6085
  %12 = load ptr, ptr %retval, align 8, !dbg !6085
  ret ptr %12, !dbg !6085
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #4 align 16 !dbg !6086 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6090, metadata !DIExpression()), !dbg !6092
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6091, metadata !DIExpression()), !dbg !6093
  %0 = load i64, ptr %size.addr, align 8, !dbg !6094
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6095
  %or = or i32 %1, 256, !dbg !6096
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #19, !dbg !6097
  ret ptr %call, !dbg !6098
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6099 dso_local ptr @proc_mkdir(ptr noundef, ptr noundef) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6102 dso_local i32 @_printk(ptr noundef, ...) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #6 align 16 !dbg !6106 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6111, metadata !DIExpression()), !dbg !6113
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6112, metadata !DIExpression()), !dbg !6114
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6115
  %1 = load ptr, ptr %head.addr, align 8, !dbg !6116
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6117
  %2 = load ptr, ptr %prev, align 8, !dbg !6117
  %3 = load ptr, ptr %head.addr, align 8, !dbg !6118
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #18, !dbg !6119
  ret void, !dbg !6120
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6121 dso_local void @mutex_unlock(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6122 dso_local void @kfree(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @scsi_proc_hostdir_rm(ptr noundef %sht) #0 align 16 !dbg !6125 {
entry:
  %sht.addr = alloca ptr, align 8
  %e = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %sht, ptr %sht.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sht.addr, metadata !6129, metadata !DIExpression()), !dbg !6131
  call void @llvm.lifetime.start.p0(i64 8, ptr %e) #17, !dbg !6132
  call void @llvm.dbg.declare(metadata ptr %e, metadata !6130, metadata !DIExpression()), !dbg !6133
  %0 = load ptr, ptr %sht.addr, align 8, !dbg !6134
  %show_info = getelementptr inbounds %struct.scsi_host_template, ptr %0, i32 0, i32 28, !dbg !6136
  %1 = load ptr, ptr %show_info, align 8, !dbg !6136
  %tobool = icmp ne ptr %1, null, !dbg !6134
  br i1 %tobool, label %if.end, label %if.then, !dbg !6137

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6138

if.end:                                           ; preds = %entry
  call void @mutex_lock(ptr noundef @global_host_template_mutex) #18, !dbg !6139
  %2 = load ptr, ptr %sht.addr, align 8, !dbg !6140
  %call = call ptr @__scsi_lookup_proc_entry(ptr noundef %2) #18, !dbg !6141
  store ptr %call, ptr %e, align 8, !dbg !6142
  %3 = load ptr, ptr %e, align 8, !dbg !6143
  %tobool1 = icmp ne ptr %3, null, !dbg !6143
  br i1 %tobool1, label %land.lhs.true, label %if.end5, !dbg !6145

land.lhs.true:                                    ; preds = %if.end
  %4 = load ptr, ptr %e, align 8, !dbg !6146
  %present = getelementptr inbounds %struct.scsi_proc_entry, ptr %4, i32 0, i32 3, !dbg !6147
  %5 = load i32, ptr %present, align 8, !dbg !6148
  %dec = add i32 %5, -1, !dbg !6148
  store i32 %dec, ptr %present, align 8, !dbg !6148
  %tobool2 = icmp ne i32 %dec, 0, !dbg !6148
  br i1 %tobool2, label %if.end5, label %if.then3, !dbg !6149

if.then3:                                         ; preds = %land.lhs.true
  %6 = load ptr, ptr %sht.addr, align 8, !dbg !6150
  %proc_name = getelementptr inbounds %struct.scsi_host_template, ptr %6, i32 0, i32 33, !dbg !6152
  %7 = load ptr, ptr %proc_name, align 8, !dbg !6152
  %8 = load ptr, ptr @proc_scsi, align 8, !dbg !6153
  call void @remove_proc_entry(ptr noundef %7, ptr noundef %8) #18, !dbg !6154
  %9 = load ptr, ptr %e, align 8, !dbg !6155
  %entry4 = getelementptr inbounds %struct.scsi_proc_entry, ptr %9, i32 0, i32 0, !dbg !6156
  call void @list_del(ptr noundef %entry4) #18, !dbg !6157
  %10 = load ptr, ptr %e, align 8, !dbg !6158
  call void @kfree(ptr noundef %10) #18, !dbg !6159
  br label %if.end5, !dbg !6160

if.end5:                                          ; preds = %if.then3, %land.lhs.true, %if.end
  call void @mutex_unlock(ptr noundef @global_host_template_mutex) #18, !dbg !6161
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6162
  br label %cleanup, !dbg !6162

cleanup:                                          ; preds = %if.end5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %e) #17, !dbg !6162
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6162

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6163 dso_local void @remove_proc_entry(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #6 align 16 !dbg !6166 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6170, metadata !DIExpression()), !dbg !6171
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6172
  call void @__list_del_entry(ptr noundef %0) #18, !dbg !6173
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6174
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !6175
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !6176
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !6177
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !6178
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !6179
  ret void, !dbg !6180
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @scsi_proc_host_add(ptr noundef %shost) #0 align 16 !dbg !6181 {
entry:
  %shost.addr = alloca ptr, align 8
  %sht = alloca ptr, align 8
  %e = alloca ptr, align 8
  %p = alloca ptr, align 8
  %name = alloca [10 x i8], align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %shost, ptr %shost.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %shost.addr, metadata !6183, metadata !DIExpression()), !dbg !6189
  call void @llvm.lifetime.start.p0(i64 8, ptr %sht) #17, !dbg !6190
  call void @llvm.dbg.declare(metadata ptr %sht, metadata !6184, metadata !DIExpression()), !dbg !6191
  %0 = load ptr, ptr %shost.addr, align 8, !dbg !6192
  %hostt = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 11, !dbg !6193
  %1 = load ptr, ptr %hostt, align 8, !dbg !6193
  store ptr %1, ptr %sht, align 8, !dbg !6191
  call void @llvm.lifetime.start.p0(i64 8, ptr %e) #17, !dbg !6194
  call void @llvm.dbg.declare(metadata ptr %e, metadata !6185, metadata !DIExpression()), !dbg !6195
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #17, !dbg !6196
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6186, metadata !DIExpression()), !dbg !6197
  call void @llvm.lifetime.start.p0(i64 10, ptr %name) #17, !dbg !6198
  call void @llvm.dbg.declare(metadata ptr %name, metadata !6187, metadata !DIExpression()), !dbg !6199
  %2 = load ptr, ptr %sht, align 8, !dbg !6200
  %show_info = getelementptr inbounds %struct.scsi_host_template, ptr %2, i32 0, i32 28, !dbg !6202
  %3 = load ptr, ptr %show_info, align 8, !dbg !6202
  %tobool = icmp ne ptr %3, null, !dbg !6200
  br i1 %tobool, label %if.end, label %if.then, !dbg !6203

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6204

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %sht, align 8, !dbg !6205
  %call = call ptr @scsi_lookup_proc_entry(ptr noundef %4) #18, !dbg !6206
  store ptr %call, ptr %e, align 8, !dbg !6207
  %5 = load ptr, ptr %e, align 8, !dbg !6208
  %tobool1 = icmp ne ptr %5, null, !dbg !6208
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !6210

if.then2:                                         ; preds = %if.end
  br label %err, !dbg !6211

if.end3:                                          ; preds = %if.end
  %arraydecay = getelementptr inbounds [10 x i8], ptr %name, i64 0, i64 0, !dbg !6212
  %6 = load ptr, ptr %shost.addr, align 8, !dbg !6213
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %6, i32 0, i32 19, !dbg !6214
  %7 = load i32, ptr %host_no, align 4, !dbg !6214
  %call4 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay, ptr noundef @.str.1, i32 noundef %7) #18, !dbg !6215
  %arraydecay5 = getelementptr inbounds [10 x i8], ptr %name, i64 0, i64 0, !dbg !6216
  %8 = load ptr, ptr %e, align 8, !dbg !6217
  %proc_dir = getelementptr inbounds %struct.scsi_proc_entry, ptr %8, i32 0, i32 2, !dbg !6218
  %9 = load ptr, ptr %proc_dir, align 8, !dbg !6218
  %10 = load ptr, ptr %shost.addr, align 8, !dbg !6219
  %call6 = call ptr @proc_create_data(ptr noundef %arraydecay5, i16 noundef zeroext 420, ptr noundef %9, ptr noundef @proc_scsi_ops, ptr noundef %10) #18, !dbg !6220
  store ptr %call6, ptr %p, align 8, !dbg !6221
  %11 = load ptr, ptr %p, align 8, !dbg !6222
  %tobool7 = icmp ne ptr %11, null, !dbg !6222
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !6224

if.then8:                                         ; preds = %if.end3
  br label %err, !dbg !6225

if.end9:                                          ; preds = %if.end3
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6226

err:                                              ; preds = %if.then8, %if.then2
  call void @llvm.dbg.label(metadata !6188), !dbg !6227
  br label %do.body, !dbg !6228

do.body:                                          ; preds = %err
  br label %do.cond, !dbg !6230

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6230

do.end:                                           ; preds = %do.cond
  %12 = load ptr, ptr %shost.addr, align 8, !dbg !6228
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %12, i32 0, i32 52, !dbg !6228
  %13 = load ptr, ptr %e, align 8, !dbg !6228
  %tobool10 = icmp ne ptr %13, null, !dbg !6228
  %14 = zext i1 %tobool10 to i64, !dbg !6228
  %cond = select i1 %tobool10, ptr @.str.4, ptr @.str.5, !dbg !6228
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef @.str.2, ptr noundef %shost_gendev, ptr noundef @.str.3, ptr noundef @__func__.scsi_proc_host_add, ptr noundef %cond) #20, !dbg !6228
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6232
  br label %cleanup, !dbg !6232

cleanup:                                          ; preds = %do.end, %if.end9, %if.then
  call void @llvm.lifetime.end.p0(i64 10, ptr %name) #17, !dbg !6232
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #17, !dbg !6232
  call void @llvm.lifetime.end.p0(i64 8, ptr %e) #17, !dbg !6232
  call void @llvm.lifetime.end.p0(i64 8, ptr %sht) #17, !dbg !6232
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6232

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6233 dso_local i32 @sprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6237 dso_local ptr @proc_create_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6241 dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @scsi_proc_host_rm(ptr noundef %shost) #0 align 16 !dbg !6245 {
entry:
  %shost.addr = alloca ptr, align 8
  %sht = alloca ptr, align 8
  %e = alloca ptr, align 8
  %name = alloca [10 x i8], align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %shost, ptr %shost.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %shost.addr, metadata !6247, metadata !DIExpression()), !dbg !6251
  call void @llvm.lifetime.start.p0(i64 8, ptr %sht) #17, !dbg !6252
  call void @llvm.dbg.declare(metadata ptr %sht, metadata !6248, metadata !DIExpression()), !dbg !6253
  %0 = load ptr, ptr %shost.addr, align 8, !dbg !6254
  %hostt = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 11, !dbg !6255
  %1 = load ptr, ptr %hostt, align 8, !dbg !6255
  store ptr %1, ptr %sht, align 8, !dbg !6253
  call void @llvm.lifetime.start.p0(i64 8, ptr %e) #17, !dbg !6256
  call void @llvm.dbg.declare(metadata ptr %e, metadata !6249, metadata !DIExpression()), !dbg !6257
  call void @llvm.lifetime.start.p0(i64 10, ptr %name) #17, !dbg !6258
  call void @llvm.dbg.declare(metadata ptr %name, metadata !6250, metadata !DIExpression()), !dbg !6259
  %2 = load ptr, ptr %sht, align 8, !dbg !6260
  %show_info = getelementptr inbounds %struct.scsi_host_template, ptr %2, i32 0, i32 28, !dbg !6262
  %3 = load ptr, ptr %show_info, align 8, !dbg !6262
  %tobool = icmp ne ptr %3, null, !dbg !6260
  br i1 %tobool, label %if.end, label %if.then, !dbg !6263

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6264

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %sht, align 8, !dbg !6265
  %call = call ptr @scsi_lookup_proc_entry(ptr noundef %4) #18, !dbg !6266
  store ptr %call, ptr %e, align 8, !dbg !6267
  %5 = load ptr, ptr %e, align 8, !dbg !6268
  %tobool1 = icmp ne ptr %5, null, !dbg !6268
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !6270

if.then2:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6271

if.end3:                                          ; preds = %if.end
  %arraydecay = getelementptr inbounds [10 x i8], ptr %name, i64 0, i64 0, !dbg !6272
  %6 = load ptr, ptr %shost.addr, align 8, !dbg !6273
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %6, i32 0, i32 19, !dbg !6274
  %7 = load i32, ptr %host_no, align 4, !dbg !6274
  %call4 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay, ptr noundef @.str.1, i32 noundef %7) #18, !dbg !6275
  %arraydecay5 = getelementptr inbounds [10 x i8], ptr %name, i64 0, i64 0, !dbg !6276
  %8 = load ptr, ptr %e, align 8, !dbg !6277
  %proc_dir = getelementptr inbounds %struct.scsi_proc_entry, ptr %8, i32 0, i32 2, !dbg !6278
  %9 = load ptr, ptr %proc_dir, align 8, !dbg !6278
  call void @remove_proc_entry(ptr noundef %arraydecay5, ptr noundef %9) #18, !dbg !6279
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6280
  br label %cleanup, !dbg !6280

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 10, ptr %name) #17, !dbg !6280
  call void @llvm.lifetime.end.p0(i64 8, ptr %e) #17, !dbg !6280
  call void @llvm.lifetime.end.p0(i64 8, ptr %sht) #17, !dbg !6280
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6280

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @scsi_init_procfs() #7 section ".init.text" align 16 !dbg !6281 {
entry:
  %retval = alloca i32, align 4
  %pde = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %pde) #17, !dbg !6286
  call void @llvm.dbg.declare(metadata ptr %pde, metadata !6283, metadata !DIExpression()), !dbg !6287
  %call = call ptr @proc_mkdir(ptr noundef @.str.6, ptr noundef null) #18, !dbg !6288
  store ptr %call, ptr @proc_scsi, align 8, !dbg !6289
  %0 = load ptr, ptr @proc_scsi, align 8, !dbg !6290
  %tobool = icmp ne ptr %0, null, !dbg !6290
  br i1 %tobool, label %if.end, label %if.then, !dbg !6292

if.then:                                          ; preds = %entry
  br label %err1, !dbg !6293

if.end:                                           ; preds = %entry
  %call1 = call ptr @proc_create(ptr noundef @.str.7, i16 noundef zeroext 0, ptr noundef null, ptr noundef @scsi_scsi_proc_ops) #18, !dbg !6294
  store ptr %call1, ptr %pde, align 8, !dbg !6295
  %1 = load ptr, ptr %pde, align 8, !dbg !6296
  %tobool2 = icmp ne ptr %1, null, !dbg !6296
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !6298

if.then3:                                         ; preds = %if.end
  br label %err2, !dbg !6299

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !6300
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6300

err2:                                             ; preds = %if.then3
  call void @llvm.dbg.label(metadata !6284), !dbg !6301
  call void @remove_proc_entry(ptr noundef @.str.6, ptr noundef null) #18, !dbg !6302
  br label %err1, !dbg !6302

err1:                                             ; preds = %err2, %if.then
  call void @llvm.dbg.label(metadata !6285), !dbg !6303
  store i32 -12, ptr %retval, align 4, !dbg !6304
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6304

cleanup:                                          ; preds = %err1, %if.end4
  call void @llvm.lifetime.end.p0(i64 8, ptr %pde) #17, !dbg !6305
  %2 = load i32, ptr %retval, align 4, !dbg !6305
  ret i32 %2, !dbg !6305
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6306 dso_local ptr @proc_create(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @scsi_exit_procfs() #0 align 16 !dbg !6309 {
entry:
  call void @remove_proc_entry(ptr noundef @.str.7, ptr noundef null) #18, !dbg !6310
  call void @remove_proc_entry(ptr noundef @.str.6, ptr noundef null) #18, !dbg !6311
  ret void, !dbg !6312
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !6313 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6315, metadata !DIExpression()), !dbg !6320
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6316, metadata !DIExpression()), !dbg !6321
  %0 = load i64, ptr %size.addr, align 8, !dbg !6322
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6323
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6324

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6325
  %tobool = icmp ne i64 %2, 0, !dbg !6325
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6326

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #17, !dbg !6327
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6317, metadata !DIExpression()), !dbg !6328
  %3 = load i64, ptr %size.addr, align 8, !dbg !6329
  %cmp = icmp ugt i64 %3, 8192, !dbg !6331
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6332

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6333
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6334
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #19, !dbg !6335
  store ptr %call, ptr %retval, align 8, !dbg !6336
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6336

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6337
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #18, !dbg !6337
  store i32 %call2, ptr %index, align 4, !dbg !6338
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6339
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6340
  %9 = ptrtoint ptr %8 to i64, !dbg !6340
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #18, !dbg !6341
  %idxprom = zext i32 %call3 to i64, !dbg !6342
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6342
  %10 = load i32, ptr %index, align 4, !dbg !6343
  %idxprom4 = zext i32 %10 to i64, !dbg !6342
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6342
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6342
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6344
  %13 = load i64, ptr %size.addr, align 8, !dbg !6345
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #21, !dbg !6346
  store ptr %call6, ptr %retval, align 8, !dbg !6347
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6347

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #17, !dbg !6348
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6349
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6350
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #19, !dbg !6351
  store ptr %call8, ptr %retval, align 8, !dbg !6352
  br label %return, !dbg !6352

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6353
  ret ptr %16, !dbg !6353
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6354 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #11 align 16 !dbg !6355 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6359, metadata !DIExpression()), !dbg !6361
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6360, metadata !DIExpression()), !dbg !6362
  %0 = load i64, ptr %size.addr, align 8, !dbg !6363
  %tobool = icmp ne i64 %0, 0, !dbg !6363
  br i1 %tobool, label %if.end, label %if.then, !dbg !6365

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6366
  br label %return, !dbg !6366

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6367
  %cmp = icmp ule i64 %1, 8, !dbg !6369
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6370

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6371
  br label %return, !dbg !6371

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6372
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6374
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6375

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6376
  %cmp4 = icmp ule i64 %3, 96, !dbg !6377
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6378

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6379
  br label %return, !dbg !6379

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6380
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6382
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6383

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6384
  %cmp9 = icmp ule i64 %5, 192, !dbg !6385
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6386

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6387
  br label %return, !dbg !6387

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6388
  %cmp12 = icmp ule i64 %6, 8, !dbg !6390
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6391

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6392
  br label %return, !dbg !6392

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6393
  %cmp15 = icmp ule i64 %7, 16, !dbg !6395
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6396

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6397
  br label %return, !dbg !6397

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6398
  %cmp18 = icmp ule i64 %8, 32, !dbg !6400
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6401

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6402
  br label %return, !dbg !6402

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6403
  %cmp21 = icmp ule i64 %9, 64, !dbg !6405
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6406

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6407
  br label %return, !dbg !6407

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6408
  %cmp24 = icmp ule i64 %10, 128, !dbg !6410
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6411

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6412
  br label %return, !dbg !6412

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6413
  %cmp27 = icmp ule i64 %11, 256, !dbg !6415
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6416

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6417
  br label %return, !dbg !6417

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6418
  %cmp30 = icmp ule i64 %12, 512, !dbg !6420
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6421

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6422
  br label %return, !dbg !6422

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6423
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6425
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6426

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6427
  br label %return, !dbg !6427

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6428
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6430
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6431

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6432
  br label %return, !dbg !6432

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6433
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6435
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6436

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6437
  br label %return, !dbg !6437

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6438
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6440
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6441

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6442
  br label %return, !dbg !6442

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6443
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6445
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6446

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6447
  br label %return, !dbg !6447

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6448
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6450
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6451

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6452
  br label %return, !dbg !6452

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6453
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6455
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6456

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6457
  br label %return, !dbg !6457

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6458
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6460
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6461

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6462
  br label %return, !dbg !6462

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6463
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6465
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6466

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6467
  br label %return, !dbg !6467

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6468
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6470
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6471

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6472
  br label %return, !dbg !6472

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6473
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6475
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6476

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6477
  br label %return, !dbg !6477

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6478
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6480
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6481

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6482
  br label %return, !dbg !6482

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6483, !range !6485, !noundef !661
  %tobool69 = trunc i8 %25 to i1, !dbg !6483
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6486

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6487

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_229() #22, !dbg !6488, !srcloc !6491
  unreachable, !dbg !6488

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6492

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6493

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6494

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6496

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6494

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.8, i32 480, i32 0, i64 12) #17, !dbg !6498, !srcloc !6500
  br label %do.end75, !dbg !6498

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6494

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6501
  br label %return, !dbg !6501

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6502
  ret i32 %26, !dbg !6502
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6503 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #11 align 16 !dbg !6506 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6510, metadata !DIExpression()), !dbg !6512
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6511, metadata !DIExpression()), !dbg !6513
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6514
  %and = and i32 %0, 17, !dbg !6514
  %cmp = icmp eq i32 %and, 0, !dbg !6514
  %lnot = xor i1 %cmp, true, !dbg !6514
  %lnot1 = xor i1 %lnot, true, !dbg !6514
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6514
  %conv = sext i32 %lnot.ext to i64, !dbg !6514
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6514
  %tobool = icmp ne i64 %expval, 0, !dbg !6514
  br i1 %tobool, label %if.then, label %if.end, !dbg !6516

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6517
  br label %return, !dbg !6517

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6518
  %and2 = and i32 %1, 1, !dbg !6520
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6520
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6521

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6522
  br label %return, !dbg !6522

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6523
  br label %return, !dbg !6523

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6525
  ret i32 %2, !dbg !6525
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #13

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6526 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6527 dso_local void @__compiletime_assert_229() #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #6 align 16 !dbg !6528 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6532, metadata !DIExpression()), !dbg !6535
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6533, metadata !DIExpression()), !dbg !6536
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6534, metadata !DIExpression()), !dbg !6537
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6538
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !6540
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6541
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18, !dbg !6542
  br i1 %call, label %if.end, label %if.then, !dbg !6543

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !6544

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !6545
  %4 = load ptr, ptr %next.addr, align 8, !dbg !6546
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !6547
  store ptr %3, ptr %prev1, align 8, !dbg !6548
  %5 = load ptr, ptr %next.addr, align 8, !dbg !6549
  %6 = load ptr, ptr %new.addr, align 8, !dbg !6550
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !6551
  store ptr %5, ptr %next2, align 8, !dbg !6552
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !6553
  %8 = load ptr, ptr %new.addr, align 8, !dbg !6554
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !6555
  store ptr %7, ptr %prev3, align 8, !dbg !6556
  br label %do.body, !dbg !6557

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !6558

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !6560

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !6558

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !6562
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !6562
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !6562
  store volatile ptr %9, ptr %next6, align 8, !dbg !6562
  br label %do.end7, !dbg !6562

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !6558

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !6564
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #6 align 16 !dbg !6565 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6569, metadata !DIExpression()), !dbg !6572
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6570, metadata !DIExpression()), !dbg !6573
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6571, metadata !DIExpression()), !dbg !6574
  ret i1 true, !dbg !6575
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #6 align 16 !dbg !6576 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6578, metadata !DIExpression()), !dbg !6579
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6580
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #18, !dbg !6582
  br i1 %call, label %if.end, label %if.then, !dbg !6583

if.then:                                          ; preds = %entry
  br label %return, !dbg !6584

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6585
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6586
  %2 = load ptr, ptr %prev, align 8, !dbg !6586
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !6587
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6588
  %4 = load ptr, ptr %next, align 8, !dbg !6588
  call void @__list_del(ptr noundef %2, ptr noundef %4) #18, !dbg !6589
  br label %return, !dbg !6590

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6590
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #6 align 16 !dbg !6591 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6595, metadata !DIExpression()), !dbg !6596
  ret i1 true, !dbg !6597
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #6 align 16 !dbg !6598 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6600, metadata !DIExpression()), !dbg !6602
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6601, metadata !DIExpression()), !dbg !6603
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !6604
  %1 = load ptr, ptr %next.addr, align 8, !dbg !6605
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6606
  store ptr %0, ptr %prev1, align 8, !dbg !6607
  br label %do.body, !dbg !6608

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6609

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !6611

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !6609

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6613
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !6613
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6613
  store volatile ptr %2, ptr %next4, align 8, !dbg !6613
  br label %do.end5, !dbg !6613

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !6609

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !6615
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @proc_scsi_host_open(ptr noundef %inode, ptr noundef %file) #0 align 16 !dbg !6616 {
entry:
  %inode.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6618, metadata !DIExpression()), !dbg !6620
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6619, metadata !DIExpression()), !dbg !6621
  %0 = load ptr, ptr %file.addr, align 8, !dbg !6622
  %1 = load ptr, ptr %inode.addr, align 8, !dbg !6623
  %call = call ptr @pde_data(ptr noundef %1) #18, !dbg !6624
  %call1 = call i32 @single_open_size(ptr noundef %0, ptr noundef @proc_scsi_show, ptr noundef %call, i64 noundef 16384) #18, !dbg !6625
  ret i32 %call1, !dbg !6626
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @seq_read(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @proc_scsi_host_write(ptr noundef %file, ptr noundef %buf, i64 noundef %count, ptr noundef %ppos) #0 align 16 !dbg !6627 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %ppos.addr = alloca ptr, align 8
  %shost = alloca ptr, align 8
  %ret = alloca i64, align 8
  %page = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6629, metadata !DIExpression()), !dbg !6637
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6630, metadata !DIExpression()), !dbg !6638
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6631, metadata !DIExpression()), !dbg !6639
  store ptr %ppos, ptr %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ppos.addr, metadata !6632, metadata !DIExpression()), !dbg !6640
  call void @llvm.lifetime.start.p0(i64 8, ptr %shost) #17, !dbg !6641
  call void @llvm.dbg.declare(metadata ptr %shost, metadata !6633, metadata !DIExpression()), !dbg !6642
  %0 = load ptr, ptr %file.addr, align 8, !dbg !6643
  %call = call ptr @file_inode(ptr noundef %0) #18, !dbg !6644
  %call1 = call ptr @pde_data(ptr noundef %call) #18, !dbg !6645
  store ptr %call1, ptr %shost, align 8, !dbg !6642
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #17, !dbg !6646
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6634, metadata !DIExpression()), !dbg !6647
  store i64 -12, ptr %ret, align 8, !dbg !6647
  call void @llvm.lifetime.start.p0(i64 8, ptr %page) #17, !dbg !6648
  call void @llvm.dbg.declare(metadata ptr %page, metadata !6635, metadata !DIExpression()), !dbg !6649
  %1 = load i64, ptr %count.addr, align 8, !dbg !6650
  %cmp = icmp ugt i64 %1, 3072, !dbg !6652
  br i1 %cmp, label %if.then, label %if.end, !dbg !6653

if.then:                                          ; preds = %entry
  store i64 -75, ptr %retval, align 8, !dbg !6654
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6654

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %shost, align 8, !dbg !6655
  %hostt = getelementptr inbounds %struct.Scsi_Host, ptr %2, i32 0, i32 11, !dbg !6657
  %3 = load ptr, ptr %hostt, align 8, !dbg !6657
  %write_info = getelementptr inbounds %struct.scsi_host_template, ptr %3, i32 0, i32 29, !dbg !6658
  %4 = load ptr, ptr %write_info, align 8, !dbg !6658
  %tobool = icmp ne ptr %4, null, !dbg !6655
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !6659

if.then2:                                         ; preds = %if.end
  store i64 -22, ptr %retval, align 8, !dbg !6660
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6660

if.end3:                                          ; preds = %if.end
  %call4 = call i64 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #18, !dbg !6661
  %5 = inttoptr i64 %call4 to ptr, !dbg !6662
  store ptr %5, ptr %page, align 8, !dbg !6663
  %6 = load ptr, ptr %page, align 8, !dbg !6664
  %tobool5 = icmp ne ptr %6, null, !dbg !6664
  br i1 %tobool5, label %if.then6, label %if.end15, !dbg !6666

if.then6:                                         ; preds = %if.end3
  store i64 -14, ptr %ret, align 8, !dbg !6667
  %7 = load ptr, ptr %page, align 8, !dbg !6669
  %8 = load ptr, ptr %buf.addr, align 8, !dbg !6671
  %9 = load i64, ptr %count.addr, align 8, !dbg !6672
  %call7 = call i64 @copy_from_user(ptr noundef %7, ptr noundef %8, i64 noundef %9) #18, !dbg !6673
  %tobool8 = icmp ne i64 %call7, 0, !dbg !6673
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !6674

if.then9:                                         ; preds = %if.then6
  br label %out, !dbg !6675

if.end10:                                         ; preds = %if.then6
  %10 = load ptr, ptr %shost, align 8, !dbg !6676
  %hostt11 = getelementptr inbounds %struct.Scsi_Host, ptr %10, i32 0, i32 11, !dbg !6677
  %11 = load ptr, ptr %hostt11, align 8, !dbg !6677
  %write_info12 = getelementptr inbounds %struct.scsi_host_template, ptr %11, i32 0, i32 29, !dbg !6678
  %12 = load ptr, ptr %write_info12, align 8, !dbg !6678
  %13 = load ptr, ptr %shost, align 8, !dbg !6679
  %14 = load ptr, ptr %page, align 8, !dbg !6680
  %15 = load i64, ptr %count.addr, align 8, !dbg !6681
  %conv = trunc i64 %15 to i32, !dbg !6681
  %call13 = call i32 %12(ptr noundef %13, ptr noundef %14, i32 noundef %conv) #18, !dbg !6676
  %conv14 = sext i32 %call13 to i64, !dbg !6676
  store i64 %conv14, ptr %ret, align 8, !dbg !6682
  br label %if.end15, !dbg !6683

if.end15:                                         ; preds = %if.end10, %if.end3
  br label %out, !dbg !6664

out:                                              ; preds = %if.end15, %if.then9
  call void @llvm.dbg.label(metadata !6636), !dbg !6684
  %16 = load ptr, ptr %page, align 8, !dbg !6685
  %17 = ptrtoint ptr %16 to i64, !dbg !6685
  call void @free_pages(i64 noundef %17, i32 noundef 0) #18, !dbg !6685
  %18 = load i64, ptr %ret, align 8, !dbg !6686
  store i64 %18, ptr %retval, align 8, !dbg !6687
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6687

cleanup:                                          ; preds = %out, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %page) #17, !dbg !6688
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #17, !dbg !6688
  call void @llvm.lifetime.end.p0(i64 8, ptr %shost) #17, !dbg !6688
  %19 = load i64, ptr %retval, align 8, !dbg !6688
  ret i64 %19, !dbg !6688
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6689 dso_local i32 @single_open_size(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @proc_scsi_show(ptr noundef %m, ptr noundef %v) #0 align 16 !dbg !6692 {
entry:
  %m.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %shost = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !6694, metadata !DIExpression()), !dbg !6697
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6695, metadata !DIExpression()), !dbg !6698
  call void @llvm.lifetime.start.p0(i64 8, ptr %shost) #17, !dbg !6699
  call void @llvm.dbg.declare(metadata ptr %shost, metadata !6696, metadata !DIExpression()), !dbg !6700
  %0 = load ptr, ptr %m.addr, align 8, !dbg !6701
  %private = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11, !dbg !6702
  %1 = load ptr, ptr %private, align 8, !dbg !6702
  store ptr %1, ptr %shost, align 8, !dbg !6700
  %2 = load ptr, ptr %shost, align 8, !dbg !6703
  %hostt = getelementptr inbounds %struct.Scsi_Host, ptr %2, i32 0, i32 11, !dbg !6704
  %3 = load ptr, ptr %hostt, align 8, !dbg !6704
  %show_info = getelementptr inbounds %struct.scsi_host_template, ptr %3, i32 0, i32 28, !dbg !6705
  %4 = load ptr, ptr %show_info, align 8, !dbg !6705
  %5 = load ptr, ptr %m.addr, align 8, !dbg !6706
  %6 = load ptr, ptr %shost, align 8, !dbg !6707
  %call = call i32 %4(ptr noundef %5, ptr noundef %6) #18, !dbg !6703
  call void @llvm.lifetime.end.p0(i64 8, ptr %shost) #17, !dbg !6708
  ret i32 %call, !dbg !6709
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pde_data(ptr noundef %inode) #6 align 16 !dbg !6710 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6714, metadata !DIExpression()), !dbg !6715
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !6716
  %i_private = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47, !dbg !6717
  %1 = load ptr, ptr %i_private, align 8, !dbg !6717
  ret ptr %1, !dbg !6718
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @file_inode(ptr noundef %f) #6 align 16 !dbg !6719 {
entry:
  %f.addr = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !6723, metadata !DIExpression()), !dbg !6724
  %0 = load ptr, ptr %f.addr, align 8, !dbg !6725
  %f_inode = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 11, !dbg !6726
  %1 = load ptr, ptr %f_inode, align 8, !dbg !6726
  ret ptr %1, !dbg !6727
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6728 dso_local i64 @__get_free_pages(i32 noundef, i32 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_from_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #11 align 16 !dbg !6732 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6737, metadata !DIExpression()), !dbg !6740
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6738, metadata !DIExpression()), !dbg !6741
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6739, metadata !DIExpression()), !dbg !6742
  %0 = load ptr, ptr %to.addr, align 8, !dbg !6743
  %1 = load i64, ptr %n.addr, align 8, !dbg !6745
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false) #18, !dbg !6746
  br i1 %call, label %if.then, label %if.end, !dbg !6747

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !6748
  %3 = load ptr, ptr %from.addr, align 8, !dbg !6749
  %4 = load i64, ptr %n.addr, align 8, !dbg !6750
  %call1 = call i64 @_copy_from_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #18, !dbg !6751
  store i64 %call1, ptr %n.addr, align 8, !dbg !6752
  br label %if.end, !dbg !6753

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !6754
  ret i64 %5, !dbg !6755
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6756 dso_local void @free_pages(i64 noundef, i32 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_copy_size(ptr noundef %addr, i64 noundef %bytes, i1 noundef zeroext %is_source) #11 align 16 !dbg !6759 {
entry:
  %retval = alloca i1, align 1
  %addr.addr = alloca ptr, align 8
  %bytes.addr = alloca i64, align 8
  %is_source.addr = alloca i8, align 1
  %sz = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6763, metadata !DIExpression()), !dbg !6773
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !6764, metadata !DIExpression()), !dbg !6774
  %frombool = zext i1 %is_source to i8
  store i8 %frombool, ptr %is_source.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_source.addr, metadata !6765, metadata !DIExpression()), !dbg !6775
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #17, !dbg !6776
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !6766, metadata !DIExpression()), !dbg !6777
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6778
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false), !dbg !6779
  %conv = trunc i64 %1 to i32, !dbg !6779
  store i32 %conv, ptr %sz, align 4, !dbg !6777
  %2 = load i32, ptr %sz, align 4, !dbg !6780
  %cmp = icmp sge i32 %2, 0, !dbg !6780
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !6780

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !6780
  %conv2 = sext i32 %3 to i64, !dbg !6780
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !6780
  %cmp3 = icmp ult i64 %conv2, %4, !dbg !6780
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !6782
  %lnot = xor i1 %5, true, !dbg !6780
  %lnot5 = xor i1 %lnot, true, !dbg !6780
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !6780
  %conv6 = sext i32 %lnot.ext to i64, !dbg !6780
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !6780
  %tobool = icmp ne i64 %expval, 0, !dbg !6780
  br i1 %tobool, label %if.then, label %if.end12, !dbg !6783

if.then:                                          ; preds = %land.end
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !6784
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !6787
  br i1 %7, label %if.else, label %if.then7, !dbg !6788

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %sz, align 4, !dbg !6789
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !6790
  call void @copy_overflow(i32 noundef %8, i64 noundef %9) #18, !dbg !6791
  br label %if.end11, !dbg !6791

if.else:                                          ; preds = %if.then
  %10 = load i8, ptr %is_source.addr, align 1, !dbg !6792, !range !6485, !noundef !661
  %tobool8 = trunc i8 %10 to i1, !dbg !6792
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !6794

if.then9:                                         ; preds = %if.else
  call void @__bad_copy_from() #18, !dbg !6795, !srcloc !6796
  br label %if.end, !dbg !6795

if.else10:                                        ; preds = %if.else
  call void @__bad_copy_to() #18, !dbg !6797, !srcloc !6798
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  store i1 false, ptr %retval, align 1, !dbg !6799
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6799

if.end12:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !6800
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6767, metadata !DIExpression()), !dbg !6800
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !6800
  %cmp13 = icmp ugt i64 %11, 2147483647, !dbg !6800
  %lnot15 = xor i1 %cmp13, true, !dbg !6800
  %lnot17 = xor i1 %lnot15, true, !dbg !6800
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !6800
  store i32 %lnot.ext18, ptr %__ret_warn_on, align 4, !dbg !6800
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !6801
  %tobool19 = icmp ne i32 %12, 0, !dbg !6801
  %lnot20 = xor i1 %tobool19, true, !dbg !6801
  %lnot22 = xor i1 %lnot20, true, !dbg !6801
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !6801
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !6801
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !6801
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !6801
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !6800

if.then27:                                        ; preds = %if.end12
  br label %do.body, !dbg !6801

do.body:                                          ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #17, !dbg !6802
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6770, metadata !DIExpression()), !dbg !6802
  store i32 2307, ptr %__flags, align 4, !dbg !6802
  br label %do.body28, !dbg !6802

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !6803

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !6803

do.end:                                           ; preds = %do.cond
  br label %do.body29, !dbg !6802

do.body29:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !6805
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.9, i32 249, i32 %13, i64 12) #17, !dbg !6805, !srcloc !6807
  br label %do.cond30, !dbg !6805

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !6805

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !6802

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !6808

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !6808

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #17, !dbg !6801
  br label %do.cond35, !dbg !6802

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !6802

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !6802

if.end37:                                         ; preds = %do.end36, %if.end12
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !6800
  %tobool38 = icmp ne i32 %14, 0, !dbg !6800
  %lnot39 = xor i1 %tobool38, true, !dbg !6800
  %lnot41 = xor i1 %lnot39, true, !dbg !6800
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !6800
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !6800
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !6800
  store i64 %expval44, ptr %tmp, align 8, !dbg !6801
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !6810
  %15 = load i64, ptr %tmp, align 8, !dbg !6800
  %tobool45 = icmp ne i64 %15, 0, !dbg !6810
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !6811

if.then46:                                        ; preds = %if.end37
  store i1 false, ptr %retval, align 1, !dbg !6812
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6812

if.end47:                                         ; preds = %if.end37
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !6813
  %17 = load i64, ptr %bytes.addr, align 8, !dbg !6814
  %18 = load i8, ptr %is_source.addr, align 1, !dbg !6815, !range !6485, !noundef !661
  %tobool48 = trunc i8 %18 to i1, !dbg !6815
  call void @check_object_size(ptr noundef %16, i64 noundef %17, i1 noundef zeroext %tobool48) #18, !dbg !6816
  store i1 true, ptr %retval, align 1, !dbg !6817
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6817

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #17, !dbg !6818
  %19 = load i1, ptr %retval, align 1, !dbg !6818
  ret i1 %19, !dbg !6818
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6819 dso_local i64 @_copy_from_user(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_overflow(i32 noundef %size, i64 noundef %count) #6 align 16 !dbg !6820 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6824, metadata !DIExpression()), !dbg !6826
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6825, metadata !DIExpression()), !dbg !6827
  %0 = load i32, ptr %size.addr, align 4, !dbg !6828
  %1 = load i64, ptr %count.addr, align 8, !dbg !6830
  call void @__copy_overflow(i32 noundef %0, i64 noundef %1) #18, !dbg !6831
  ret void, !dbg !6832
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6833 dso_local void @__bad_copy_from() #15

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6834 dso_local void @__bad_copy_to() #16

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #6 align 16 !dbg !6835 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6839, metadata !DIExpression()), !dbg !6842
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6840, metadata !DIExpression()), !dbg !6843
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !6841, metadata !DIExpression()), !dbg !6844
  ret void, !dbg !6845
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6846 dso_local void @__copy_overflow(i32 noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @proc_scsi_open(ptr noundef %inode, ptr noundef %file) #0 align 16 !dbg !6847 {
entry:
  %inode.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6849, metadata !DIExpression()), !dbg !6851
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6850, metadata !DIExpression()), !dbg !6852
  %0 = load ptr, ptr %file.addr, align 8, !dbg !6853
  %call = call i32 @seq_open(ptr noundef %0, ptr noundef @scsi_seq_ops) #18, !dbg !6854
  ret i32 %call, !dbg !6855
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @proc_scsi_write(ptr noundef %file, ptr noundef %buf, i64 noundef %length, ptr noundef %ppos) #0 align 16 !dbg !6856 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %length.addr = alloca i64, align 8
  %ppos.addr = alloca ptr, align 8
  %host = alloca i32, align 4
  %channel = alloca i32, align 4
  %id = alloca i32, align 4
  %lun = alloca i32, align 4
  %buffer = alloca ptr, align 8
  %end = alloca ptr, align 8
  %p = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6858, metadata !DIExpression()), !dbg !6871
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6859, metadata !DIExpression()), !dbg !6872
  store i64 %length, ptr %length.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !6860, metadata !DIExpression()), !dbg !6873
  store ptr %ppos, ptr %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ppos.addr, metadata !6861, metadata !DIExpression()), !dbg !6874
  call void @llvm.lifetime.start.p0(i64 4, ptr %host) #17, !dbg !6875
  call void @llvm.dbg.declare(metadata ptr %host, metadata !6862, metadata !DIExpression()), !dbg !6876
  call void @llvm.lifetime.start.p0(i64 4, ptr %channel) #17, !dbg !6875
  call void @llvm.dbg.declare(metadata ptr %channel, metadata !6863, metadata !DIExpression()), !dbg !6877
  call void @llvm.lifetime.start.p0(i64 4, ptr %id) #17, !dbg !6875
  call void @llvm.dbg.declare(metadata ptr %id, metadata !6864, metadata !DIExpression()), !dbg !6878
  call void @llvm.lifetime.start.p0(i64 4, ptr %lun) #17, !dbg !6875
  call void @llvm.dbg.declare(metadata ptr %lun, metadata !6865, metadata !DIExpression()), !dbg !6879
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer) #17, !dbg !6880
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !6866, metadata !DIExpression()), !dbg !6881
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #17, !dbg !6880
  call void @llvm.dbg.declare(metadata ptr %end, metadata !6867, metadata !DIExpression()), !dbg !6882
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #17, !dbg !6880
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6868, metadata !DIExpression()), !dbg !6883
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #17, !dbg !6884
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6869, metadata !DIExpression()), !dbg !6885
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !6886
  %tobool = icmp ne ptr %0, null, !dbg !6886
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !6888

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, ptr %length.addr, align 8, !dbg !6889
  %cmp = icmp ugt i64 %1, 4096, !dbg !6890
  br i1 %cmp, label %if.then, label %if.end, !dbg !6891

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i64 -22, ptr %retval, align 8, !dbg !6892
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6892

if.end:                                           ; preds = %lor.lhs.false
  %call = call i64 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #18, !dbg !6893
  %2 = inttoptr i64 %call to ptr, !dbg !6894
  store ptr %2, ptr %buffer, align 8, !dbg !6895
  %3 = load ptr, ptr %buffer, align 8, !dbg !6896
  %tobool1 = icmp ne ptr %3, null, !dbg !6896
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !6898

if.then2:                                         ; preds = %if.end
  store i64 -12, ptr %retval, align 8, !dbg !6899
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6899

if.end3:                                          ; preds = %if.end
  store i32 -14, ptr %err, align 4, !dbg !6900
  %4 = load ptr, ptr %buffer, align 8, !dbg !6901
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !6903
  %6 = load i64, ptr %length.addr, align 8, !dbg !6904
  %call4 = call i64 @copy_from_user(ptr noundef %4, ptr noundef %5, i64 noundef %6) #18, !dbg !6905
  %tobool5 = icmp ne i64 %call4, 0, !dbg !6905
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !6906

if.then6:                                         ; preds = %if.end3
  br label %out, !dbg !6907

if.end7:                                          ; preds = %if.end3
  store i32 -22, ptr %err, align 4, !dbg !6908
  %7 = load i64, ptr %length.addr, align 8, !dbg !6909
  %cmp8 = icmp ult i64 %7, 4096, !dbg !6911
  br i1 %cmp8, label %if.then9, label %if.else, !dbg !6912

if.then9:                                         ; preds = %if.end7
  %8 = load ptr, ptr %buffer, align 8, !dbg !6913
  %9 = load i64, ptr %length.addr, align 8, !dbg !6915
  %add.ptr = getelementptr i8, ptr %8, i64 %9, !dbg !6916
  store ptr %add.ptr, ptr %end, align 8, !dbg !6917
  %10 = load ptr, ptr %end, align 8, !dbg !6918
  store i8 0, ptr %10, align 1, !dbg !6919
  br label %if.end15, !dbg !6920

if.else:                                          ; preds = %if.end7
  %11 = load ptr, ptr %buffer, align 8, !dbg !6921
  %add.ptr10 = getelementptr i8, ptr %11, i64 4096, !dbg !6923
  %add.ptr11 = getelementptr i8, ptr %add.ptr10, i64 -1, !dbg !6924
  store ptr %add.ptr11, ptr %end, align 8, !dbg !6925
  %12 = load ptr, ptr %end, align 8, !dbg !6926
  %13 = load i8, ptr %12, align 1, !dbg !6928
  %tobool12 = icmp ne i8 %13, 0, !dbg !6928
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !6929

if.then13:                                        ; preds = %if.else
  br label %out, !dbg !6930

if.end14:                                         ; preds = %if.else
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then9
  %14 = load ptr, ptr %buffer, align 8, !dbg !6931
  %call16 = call i32 @strncmp(ptr noundef @.str.17, ptr noundef %14, i64 noundef 22) #18, !dbg !6933
  %tobool17 = icmp ne i32 %call16, 0, !dbg !6933
  br i1 %tobool17, label %if.else53, label %if.then18, !dbg !6934

if.then18:                                        ; preds = %if.end15
  %15 = load ptr, ptr %buffer, align 8, !dbg !6935
  %add.ptr19 = getelementptr i8, ptr %15, i64 23, !dbg !6937
  store ptr %add.ptr19, ptr %p, align 8, !dbg !6938
  %16 = load ptr, ptr %p, align 8, !dbg !6939
  %17 = load ptr, ptr %end, align 8, !dbg !6940
  %cmp20 = icmp ult ptr %16, %17, !dbg !6941
  br i1 %cmp20, label %cond.true, label %cond.false, !dbg !6942

cond.true:                                        ; preds = %if.then18
  %18 = load ptr, ptr %p, align 8, !dbg !6943
  %call21 = call i64 @simple_strtoul(ptr noundef %18, ptr noundef %p, i32 noundef 0) #18, !dbg !6944
  br label %cond.end, !dbg !6942

cond.false:                                       ; preds = %if.then18
  br label %cond.end, !dbg !6942

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call21, %cond.true ], [ 0, %cond.false ], !dbg !6942
  %conv = trunc i64 %cond to i32, !dbg !6942
  store i32 %conv, ptr %host, align 4, !dbg !6945
  %19 = load ptr, ptr %p, align 8, !dbg !6946
  %add.ptr22 = getelementptr i8, ptr %19, i64 1, !dbg !6947
  %20 = load ptr, ptr %end, align 8, !dbg !6948
  %cmp23 = icmp ult ptr %add.ptr22, %20, !dbg !6949
  br i1 %cmp23, label %cond.true25, label %cond.false28, !dbg !6950

cond.true25:                                      ; preds = %cond.end
  %21 = load ptr, ptr %p, align 8, !dbg !6951
  %add.ptr26 = getelementptr i8, ptr %21, i64 1, !dbg !6952
  %call27 = call i64 @simple_strtoul(ptr noundef %add.ptr26, ptr noundef %p, i32 noundef 0) #18, !dbg !6953
  br label %cond.end29, !dbg !6950

cond.false28:                                     ; preds = %cond.end
  br label %cond.end29, !dbg !6950

cond.end29:                                       ; preds = %cond.false28, %cond.true25
  %cond30 = phi i64 [ %call27, %cond.true25 ], [ 0, %cond.false28 ], !dbg !6950
  %conv31 = trunc i64 %cond30 to i32, !dbg !6950
  store i32 %conv31, ptr %channel, align 4, !dbg !6954
  %22 = load ptr, ptr %p, align 8, !dbg !6955
  %add.ptr32 = getelementptr i8, ptr %22, i64 1, !dbg !6956
  %23 = load ptr, ptr %end, align 8, !dbg !6957
  %cmp33 = icmp ult ptr %add.ptr32, %23, !dbg !6958
  br i1 %cmp33, label %cond.true35, label %cond.false38, !dbg !6959

cond.true35:                                      ; preds = %cond.end29
  %24 = load ptr, ptr %p, align 8, !dbg !6960
  %add.ptr36 = getelementptr i8, ptr %24, i64 1, !dbg !6961
  %call37 = call i64 @simple_strtoul(ptr noundef %add.ptr36, ptr noundef %p, i32 noundef 0) #18, !dbg !6962
  br label %cond.end39, !dbg !6959

cond.false38:                                     ; preds = %cond.end29
  br label %cond.end39, !dbg !6959

cond.end39:                                       ; preds = %cond.false38, %cond.true35
  %cond40 = phi i64 [ %call37, %cond.true35 ], [ 0, %cond.false38 ], !dbg !6959
  %conv41 = trunc i64 %cond40 to i32, !dbg !6959
  store i32 %conv41, ptr %id, align 4, !dbg !6963
  %25 = load ptr, ptr %p, align 8, !dbg !6964
  %add.ptr42 = getelementptr i8, ptr %25, i64 1, !dbg !6965
  %26 = load ptr, ptr %end, align 8, !dbg !6966
  %cmp43 = icmp ult ptr %add.ptr42, %26, !dbg !6967
  br i1 %cmp43, label %cond.true45, label %cond.false48, !dbg !6968

cond.true45:                                      ; preds = %cond.end39
  %27 = load ptr, ptr %p, align 8, !dbg !6969
  %add.ptr46 = getelementptr i8, ptr %27, i64 1, !dbg !6970
  %call47 = call i64 @simple_strtoul(ptr noundef %add.ptr46, ptr noundef %p, i32 noundef 0) #18, !dbg !6971
  br label %cond.end49, !dbg !6968

cond.false48:                                     ; preds = %cond.end39
  br label %cond.end49, !dbg !6968

cond.end49:                                       ; preds = %cond.false48, %cond.true45
  %cond50 = phi i64 [ %call47, %cond.true45 ], [ 0, %cond.false48 ], !dbg !6968
  %conv51 = trunc i64 %cond50 to i32, !dbg !6968
  store i32 %conv51, ptr %lun, align 4, !dbg !6972
  %28 = load i32, ptr %host, align 4, !dbg !6973
  %29 = load i32, ptr %channel, align 4, !dbg !6974
  %30 = load i32, ptr %id, align 4, !dbg !6975
  %31 = load i32, ptr %lun, align 4, !dbg !6976
  %call52 = call i32 @scsi_add_single_device(i32 noundef %28, i32 noundef %29, i32 noundef %30, i32 noundef %31) #18, !dbg !6977
  store i32 %call52, ptr %err, align 4, !dbg !6978
  br label %if.end98, !dbg !6979

if.else53:                                        ; preds = %if.end15
  %32 = load ptr, ptr %buffer, align 8, !dbg !6980
  %call54 = call i32 @strncmp(ptr noundef @.str.18, ptr noundef %32, i64 noundef 25) #18, !dbg !6982
  %tobool55 = icmp ne i32 %call54, 0, !dbg !6982
  br i1 %tobool55, label %if.end97, label %if.then56, !dbg !6983

if.then56:                                        ; preds = %if.else53
  %33 = load ptr, ptr %buffer, align 8, !dbg !6984
  %add.ptr57 = getelementptr i8, ptr %33, i64 26, !dbg !6986
  store ptr %add.ptr57, ptr %p, align 8, !dbg !6987
  %34 = load ptr, ptr %p, align 8, !dbg !6988
  %35 = load ptr, ptr %end, align 8, !dbg !6989
  %cmp58 = icmp ult ptr %34, %35, !dbg !6990
  br i1 %cmp58, label %cond.true60, label %cond.false62, !dbg !6991

cond.true60:                                      ; preds = %if.then56
  %36 = load ptr, ptr %p, align 8, !dbg !6992
  %call61 = call i64 @simple_strtoul(ptr noundef %36, ptr noundef %p, i32 noundef 0) #18, !dbg !6993
  br label %cond.end63, !dbg !6991

cond.false62:                                     ; preds = %if.then56
  br label %cond.end63, !dbg !6991

cond.end63:                                       ; preds = %cond.false62, %cond.true60
  %cond64 = phi i64 [ %call61, %cond.true60 ], [ 0, %cond.false62 ], !dbg !6991
  %conv65 = trunc i64 %cond64 to i32, !dbg !6991
  store i32 %conv65, ptr %host, align 4, !dbg !6994
  %37 = load ptr, ptr %p, align 8, !dbg !6995
  %add.ptr66 = getelementptr i8, ptr %37, i64 1, !dbg !6996
  %38 = load ptr, ptr %end, align 8, !dbg !6997
  %cmp67 = icmp ult ptr %add.ptr66, %38, !dbg !6998
  br i1 %cmp67, label %cond.true69, label %cond.false72, !dbg !6999

cond.true69:                                      ; preds = %cond.end63
  %39 = load ptr, ptr %p, align 8, !dbg !7000
  %add.ptr70 = getelementptr i8, ptr %39, i64 1, !dbg !7001
  %call71 = call i64 @simple_strtoul(ptr noundef %add.ptr70, ptr noundef %p, i32 noundef 0) #18, !dbg !7002
  br label %cond.end73, !dbg !6999

cond.false72:                                     ; preds = %cond.end63
  br label %cond.end73, !dbg !6999

cond.end73:                                       ; preds = %cond.false72, %cond.true69
  %cond74 = phi i64 [ %call71, %cond.true69 ], [ 0, %cond.false72 ], !dbg !6999
  %conv75 = trunc i64 %cond74 to i32, !dbg !6999
  store i32 %conv75, ptr %channel, align 4, !dbg !7003
  %40 = load ptr, ptr %p, align 8, !dbg !7004
  %add.ptr76 = getelementptr i8, ptr %40, i64 1, !dbg !7005
  %41 = load ptr, ptr %end, align 8, !dbg !7006
  %cmp77 = icmp ult ptr %add.ptr76, %41, !dbg !7007
  br i1 %cmp77, label %cond.true79, label %cond.false82, !dbg !7008

cond.true79:                                      ; preds = %cond.end73
  %42 = load ptr, ptr %p, align 8, !dbg !7009
  %add.ptr80 = getelementptr i8, ptr %42, i64 1, !dbg !7010
  %call81 = call i64 @simple_strtoul(ptr noundef %add.ptr80, ptr noundef %p, i32 noundef 0) #18, !dbg !7011
  br label %cond.end83, !dbg !7008

cond.false82:                                     ; preds = %cond.end73
  br label %cond.end83, !dbg !7008

cond.end83:                                       ; preds = %cond.false82, %cond.true79
  %cond84 = phi i64 [ %call81, %cond.true79 ], [ 0, %cond.false82 ], !dbg !7008
  %conv85 = trunc i64 %cond84 to i32, !dbg !7008
  store i32 %conv85, ptr %id, align 4, !dbg !7012
  %43 = load ptr, ptr %p, align 8, !dbg !7013
  %add.ptr86 = getelementptr i8, ptr %43, i64 1, !dbg !7014
  %44 = load ptr, ptr %end, align 8, !dbg !7015
  %cmp87 = icmp ult ptr %add.ptr86, %44, !dbg !7016
  br i1 %cmp87, label %cond.true89, label %cond.false92, !dbg !7017

cond.true89:                                      ; preds = %cond.end83
  %45 = load ptr, ptr %p, align 8, !dbg !7018
  %add.ptr90 = getelementptr i8, ptr %45, i64 1, !dbg !7019
  %call91 = call i64 @simple_strtoul(ptr noundef %add.ptr90, ptr noundef %p, i32 noundef 0) #18, !dbg !7020
  br label %cond.end93, !dbg !7017

cond.false92:                                     ; preds = %cond.end83
  br label %cond.end93, !dbg !7017

cond.end93:                                       ; preds = %cond.false92, %cond.true89
  %cond94 = phi i64 [ %call91, %cond.true89 ], [ 0, %cond.false92 ], !dbg !7017
  %conv95 = trunc i64 %cond94 to i32, !dbg !7017
  store i32 %conv95, ptr %lun, align 4, !dbg !7021
  %46 = load i32, ptr %host, align 4, !dbg !7022
  %47 = load i32, ptr %channel, align 4, !dbg !7023
  %48 = load i32, ptr %id, align 4, !dbg !7024
  %49 = load i32, ptr %lun, align 4, !dbg !7025
  %call96 = call i32 @scsi_remove_single_device(i32 noundef %46, i32 noundef %47, i32 noundef %48, i32 noundef %49) #18, !dbg !7026
  store i32 %call96, ptr %err, align 4, !dbg !7027
  br label %if.end97, !dbg !7028

if.end97:                                         ; preds = %cond.end93, %if.else53
  br label %if.end98

if.end98:                                         ; preds = %if.end97, %cond.end49
  %50 = load i32, ptr %err, align 4, !dbg !7029
  %tobool99 = icmp ne i32 %50, 0, !dbg !7029
  br i1 %tobool99, label %if.end102, label %if.then100, !dbg !7031

if.then100:                                       ; preds = %if.end98
  %51 = load i64, ptr %length.addr, align 8, !dbg !7032
  %conv101 = trunc i64 %51 to i32, !dbg !7032
  store i32 %conv101, ptr %err, align 4, !dbg !7033
  br label %if.end102, !dbg !7034

if.end102:                                        ; preds = %if.then100, %if.end98
  br label %out, !dbg !7029

out:                                              ; preds = %if.end102, %if.then13, %if.then6
  call void @llvm.dbg.label(metadata !6870), !dbg !7035
  %52 = load ptr, ptr %buffer, align 8, !dbg !7036
  %53 = ptrtoint ptr %52 to i64, !dbg !7036
  call void @free_pages(i64 noundef %53, i32 noundef 0) #18, !dbg !7036
  %54 = load i32, ptr %err, align 4, !dbg !7037
  %conv103 = sext i32 %54 to i64, !dbg !7037
  store i64 %conv103, ptr %retval, align 8, !dbg !7038
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7038

cleanup:                                          ; preds = %out, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #17, !dbg !7039
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #17, !dbg !7039
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #17, !dbg !7039
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer) #17, !dbg !7039
  call void @llvm.lifetime.end.p0(i64 4, ptr %lun) #17, !dbg !7039
  call void @llvm.lifetime.end.p0(i64 4, ptr %id) #17, !dbg !7039
  call void @llvm.lifetime.end.p0(i64 4, ptr %channel) #17, !dbg !7039
  call void @llvm.lifetime.end.p0(i64 4, ptr %host) #17, !dbg !7039
  %55 = load i64, ptr %retval, align 8, !dbg !7039
  ret i64 %55, !dbg !7039
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7040 dso_local i32 @seq_open(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @scsi_seq_start(ptr noundef %sfile, ptr noundef %pos) #0 align 16 !dbg !7043 {
entry:
  %sfile.addr = alloca ptr, align 8
  %pos.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %n = alloca i64, align 8
  store ptr %sfile, ptr %sfile.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sfile.addr, metadata !7045, metadata !DIExpression()), !dbg !7049
  store ptr %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !7046, metadata !DIExpression()), !dbg !7050
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #17, !dbg !7051
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !7047, metadata !DIExpression()), !dbg !7052
  store ptr null, ptr %dev, align 8, !dbg !7052
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #17, !dbg !7053
  call void @llvm.dbg.declare(metadata ptr %n, metadata !7048, metadata !DIExpression()), !dbg !7054
  %0 = load ptr, ptr %pos.addr, align 8, !dbg !7055
  %1 = load i64, ptr %0, align 8, !dbg !7056
  store i64 %1, ptr %n, align 8, !dbg !7054
  br label %while.cond, !dbg !7057

while.cond:                                       ; preds = %if.end, %entry
  %2 = load ptr, ptr %dev, align 8, !dbg !7058
  %call = call ptr @next_scsi_device(ptr noundef %2) #18, !dbg !7059
  store ptr %call, ptr %dev, align 8, !dbg !7060
  %tobool = icmp ne ptr %call, null, !dbg !7057
  br i1 %tobool, label %while.body, label %while.end, !dbg !7057

while.body:                                       ; preds = %while.cond
  %3 = load i64, ptr %n, align 8, !dbg !7061
  %dec = add i64 %3, -1, !dbg !7061
  store i64 %dec, ptr %n, align 8, !dbg !7061
  %tobool1 = icmp ne i64 %3, 0, !dbg !7061
  br i1 %tobool1, label %if.end, label %if.then, !dbg !7064

if.then:                                          ; preds = %while.body
  br label %while.end, !dbg !7065

if.end:                                           ; preds = %while.body
  %4 = load ptr, ptr %sfile.addr, align 8, !dbg !7066
  %private = getelementptr inbounds %struct.seq_file, ptr %4, i32 0, i32 11, !dbg !7067
  %5 = load ptr, ptr %private, align 8, !dbg !7068
  %incdec.ptr = getelementptr i8, ptr %5, i32 1, !dbg !7068
  store ptr %incdec.ptr, ptr %private, align 8, !dbg !7068
  br label %while.cond, !dbg !7057, !llvm.loop !7069

while.end:                                        ; preds = %if.then, %while.cond
  %6 = load ptr, ptr %dev, align 8, !dbg !7071
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #17, !dbg !7072
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #17, !dbg !7072
  ret ptr %6, !dbg !7073
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @scsi_seq_stop(ptr noundef %sfile, ptr noundef %v) #0 align 16 !dbg !7074 {
entry:
  %sfile.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  store ptr %sfile, ptr %sfile.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sfile.addr, metadata !7076, metadata !DIExpression()), !dbg !7078
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7077, metadata !DIExpression()), !dbg !7079
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7080
  call void @put_device(ptr noundef %0) #18, !dbg !7081
  ret void, !dbg !7082
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @scsi_seq_next(ptr noundef %sfile, ptr noundef %v, ptr noundef %pos) #0 align 16 !dbg !7083 {
entry:
  %sfile.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %pos.addr = alloca ptr, align 8
  store ptr %sfile, ptr %sfile.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sfile.addr, metadata !7085, metadata !DIExpression()), !dbg !7088
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7086, metadata !DIExpression()), !dbg !7089
  store ptr %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !7087, metadata !DIExpression()), !dbg !7090
  %0 = load ptr, ptr %pos.addr, align 8, !dbg !7091
  %1 = load i64, ptr %0, align 8, !dbg !7092
  %inc = add i64 %1, 1, !dbg !7092
  store i64 %inc, ptr %0, align 8, !dbg !7092
  %2 = load ptr, ptr %sfile.addr, align 8, !dbg !7093
  %private = getelementptr inbounds %struct.seq_file, ptr %2, i32 0, i32 11, !dbg !7094
  %3 = load ptr, ptr %private, align 8, !dbg !7095
  %incdec.ptr = getelementptr i8, ptr %3, i32 1, !dbg !7095
  store ptr %incdec.ptr, ptr %private, align 8, !dbg !7095
  %4 = load ptr, ptr %v.addr, align 8, !dbg !7096
  %call = call ptr @next_scsi_device(ptr noundef %4) #18, !dbg !7097
  ret ptr %call, !dbg !7098
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @scsi_seq_show(ptr noundef %sfile, ptr noundef %dev) #0 align 16 !dbg !7099 {
entry:
  %sfile.addr = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  store ptr %sfile, ptr %sfile.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sfile.addr, metadata !7101, metadata !DIExpression()), !dbg !7103
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7102, metadata !DIExpression()), !dbg !7104
  %0 = load ptr, ptr %sfile.addr, align 8, !dbg !7105
  %private = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11, !dbg !7107
  %1 = load ptr, ptr %private, align 8, !dbg !7107
  %tobool = icmp ne ptr %1, null, !dbg !7105
  br i1 %tobool, label %if.end, label %if.then, !dbg !7108

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %sfile.addr, align 8, !dbg !7109
  call void @seq_puts(ptr noundef %2, ptr noundef @.str.10) #18, !dbg !7110
  br label %if.end, !dbg !7110

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !7111
  %4 = load ptr, ptr %sfile.addr, align 8, !dbg !7112
  %call = call i32 @proc_print_scsidevice(ptr noundef %3, ptr noundef %4) #18, !dbg !7113
  ret i32 %call, !dbg !7114
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @next_scsi_device(ptr noundef %start) #6 align 16 !dbg !7115 {
entry:
  %start.addr = alloca ptr, align 8
  %next = alloca ptr, align 8
  store ptr %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !7119, metadata !DIExpression()), !dbg !7121
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #17, !dbg !7122
  call void @llvm.dbg.declare(metadata ptr %next, metadata !7120, metadata !DIExpression()), !dbg !7123
  %0 = load ptr, ptr %start.addr, align 8, !dbg !7124
  %call = call ptr @bus_find_next_device(ptr noundef @scsi_bus_type, ptr noundef %0) #18, !dbg !7125
  store ptr %call, ptr %next, align 8, !dbg !7123
  %1 = load ptr, ptr %start.addr, align 8, !dbg !7126
  call void @put_device(ptr noundef %1) #18, !dbg !7127
  %2 = load ptr, ptr %next, align 8, !dbg !7128
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #17, !dbg !7129
  ret ptr %2, !dbg !7130
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @bus_find_next_device(ptr noundef %bus, ptr noundef %cur) #6 align 16 !dbg !7131 {
entry:
  %bus.addr = alloca ptr, align 8
  %cur.addr = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !7135, metadata !DIExpression()), !dbg !7137
  store ptr %cur, ptr %cur.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cur.addr, metadata !7136, metadata !DIExpression()), !dbg !7138
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !7139
  %1 = load ptr, ptr %cur.addr, align 8, !dbg !7140
  %call = call ptr @bus_find_device(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef @device_match_any) #18, !dbg !7141
  ret ptr %call, !dbg !7142
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7143 dso_local void @put_device(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7144 dso_local ptr @bus_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @device_match_any(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7150 dso_local void @seq_puts(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @proc_print_scsidevice(ptr noundef %dev, ptr noundef %data) #0 align 16 !dbg !7153 {
entry:
  %dev.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %sdev = alloca ptr, align 8
  %s = alloca ptr, align 8
  %i = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7157, metadata !DIExpression()), !dbg !7165
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !7158, metadata !DIExpression()), !dbg !7166
  call void @llvm.lifetime.start.p0(i64 8, ptr %sdev) #17, !dbg !7167
  call void @llvm.dbg.declare(metadata ptr %sdev, metadata !7159, metadata !DIExpression()), !dbg !7168
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #17, !dbg !7169
  call void @llvm.dbg.declare(metadata ptr %s, metadata !7160, metadata !DIExpression()), !dbg !7170
  %0 = load ptr, ptr %data.addr, align 8, !dbg !7171
  store ptr %0, ptr %s, align 8, !dbg !7170
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !7172
  call void @llvm.dbg.declare(metadata ptr %i, metadata !7161, metadata !DIExpression()), !dbg !7173
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !7174
  %call = call i32 @scsi_is_sdev_device(ptr noundef %1) #18, !dbg !7176
  %tobool = icmp ne i32 %call, 0, !dbg !7176
  br i1 %tobool, label %if.end, label %if.then, !dbg !7177

if.then:                                          ; preds = %entry
  br label %out, !dbg !7178

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !7179
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !7162, metadata !DIExpression()), !dbg !7179
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !7179
  store ptr %2, ptr %__mptr, align 8, !dbg !7179
  %3 = load ptr, ptr %__mptr, align 8, !dbg !7179
  %add.ptr = getelementptr i8, ptr %3, i64 -440, !dbg !7179
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !7179
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !7180
  %4 = load ptr, ptr %tmp, align 8, !dbg !7179
  store ptr %4, ptr %sdev, align 8, !dbg !7181
  %5 = load ptr, ptr %s, align 8, !dbg !7182
  %6 = load ptr, ptr %sdev, align 8, !dbg !7183
  %host = getelementptr inbounds %struct.scsi_device, ptr %6, i32 0, i32 0, !dbg !7184
  %7 = load ptr, ptr %host, align 8, !dbg !7184
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 19, !dbg !7185
  %8 = load i32, ptr %host_no, align 4, !dbg !7185
  %9 = load ptr, ptr %sdev, align 8, !dbg !7186
  %channel = getelementptr inbounds %struct.scsi_device, ptr %9, i32 0, i32 18, !dbg !7187
  %10 = load i32, ptr %channel, align 4, !dbg !7187
  %11 = load ptr, ptr %sdev, align 8, !dbg !7188
  %id = getelementptr inbounds %struct.scsi_device, ptr %11, i32 0, i32 17, !dbg !7189
  %12 = load i32, ptr %id, align 8, !dbg !7189
  %13 = load ptr, ptr %sdev, align 8, !dbg !7190
  %lun = getelementptr inbounds %struct.scsi_device, ptr %13, i32 0, i32 19, !dbg !7191
  %14 = load i64, ptr %lun, align 8, !dbg !7191
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef @.str.11, i32 noundef %8, i32 noundef %10, i32 noundef %12, i64 noundef %14) #18, !dbg !7192
  store i32 0, ptr %i, align 4, !dbg !7193
  br label %for.cond, !dbg !7195

for.cond:                                         ; preds = %for.inc, %if.end
  %15 = load i32, ptr %i, align 4, !dbg !7196
  %cmp = icmp slt i32 %15, 8, !dbg !7198
  br i1 %cmp, label %for.body, label %for.end, !dbg !7199

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %sdev, align 8, !dbg !7200
  %vendor = getelementptr inbounds %struct.scsi_device, ptr %16, i32 0, i32 31, !dbg !7203
  %17 = load ptr, ptr %vendor, align 8, !dbg !7203
  %18 = load i32, ptr %i, align 4, !dbg !7204
  %idxprom = sext i32 %18 to i64, !dbg !7200
  %arrayidx = getelementptr i8, ptr %17, i64 %idxprom, !dbg !7200
  %19 = load i8, ptr %arrayidx, align 1, !dbg !7200
  %conv = zext i8 %19 to i32, !dbg !7200
  %cmp1 = icmp sge i32 %conv, 32, !dbg !7205
  br i1 %cmp1, label %if.then3, label %if.else, !dbg !7206

if.then3:                                         ; preds = %for.body
  %20 = load ptr, ptr %s, align 8, !dbg !7207
  %21 = load ptr, ptr %sdev, align 8, !dbg !7208
  %vendor4 = getelementptr inbounds %struct.scsi_device, ptr %21, i32 0, i32 31, !dbg !7209
  %22 = load ptr, ptr %vendor4, align 8, !dbg !7209
  %23 = load i32, ptr %i, align 4, !dbg !7210
  %idxprom5 = sext i32 %23 to i64, !dbg !7208
  %arrayidx6 = getelementptr i8, ptr %22, i64 %idxprom5, !dbg !7208
  %24 = load i8, ptr %arrayidx6, align 1, !dbg !7208
  call void @seq_putc(ptr noundef %20, i8 noundef zeroext %24) #18, !dbg !7211
  br label %if.end7, !dbg !7211

if.else:                                          ; preds = %for.body
  %25 = load ptr, ptr %s, align 8, !dbg !7212
  call void @seq_putc(ptr noundef %25, i8 noundef zeroext 32) #18, !dbg !7213
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then3
  br label %for.inc, !dbg !7214

for.inc:                                          ; preds = %if.end7
  %26 = load i32, ptr %i, align 4, !dbg !7215
  %inc = add i32 %26, 1, !dbg !7215
  store i32 %inc, ptr %i, align 4, !dbg !7215
  br label %for.cond, !dbg !7216, !llvm.loop !7217

for.end:                                          ; preds = %for.cond
  %27 = load ptr, ptr %s, align 8, !dbg !7219
  call void @seq_puts(ptr noundef %27, ptr noundef @.str.12) #18, !dbg !7220
  store i32 0, ptr %i, align 4, !dbg !7221
  br label %for.cond8, !dbg !7223

for.cond8:                                        ; preds = %for.inc23, %for.end
  %28 = load i32, ptr %i, align 4, !dbg !7224
  %cmp9 = icmp slt i32 %28, 16, !dbg !7226
  br i1 %cmp9, label %for.body11, label %for.end25, !dbg !7227

for.body11:                                       ; preds = %for.cond8
  %29 = load ptr, ptr %sdev, align 8, !dbg !7228
  %model = getelementptr inbounds %struct.scsi_device, ptr %29, i32 0, i32 32, !dbg !7231
  %30 = load ptr, ptr %model, align 8, !dbg !7231
  %31 = load i32, ptr %i, align 4, !dbg !7232
  %idxprom12 = sext i32 %31 to i64, !dbg !7228
  %arrayidx13 = getelementptr i8, ptr %30, i64 %idxprom12, !dbg !7228
  %32 = load i8, ptr %arrayidx13, align 1, !dbg !7228
  %conv14 = zext i8 %32 to i32, !dbg !7228
  %cmp15 = icmp sge i32 %conv14, 32, !dbg !7233
  br i1 %cmp15, label %if.then17, label %if.else21, !dbg !7234

if.then17:                                        ; preds = %for.body11
  %33 = load ptr, ptr %s, align 8, !dbg !7235
  %34 = load ptr, ptr %sdev, align 8, !dbg !7236
  %model18 = getelementptr inbounds %struct.scsi_device, ptr %34, i32 0, i32 32, !dbg !7237
  %35 = load ptr, ptr %model18, align 8, !dbg !7237
  %36 = load i32, ptr %i, align 4, !dbg !7238
  %idxprom19 = sext i32 %36 to i64, !dbg !7236
  %arrayidx20 = getelementptr i8, ptr %35, i64 %idxprom19, !dbg !7236
  %37 = load i8, ptr %arrayidx20, align 1, !dbg !7236
  call void @seq_putc(ptr noundef %33, i8 noundef zeroext %37) #18, !dbg !7239
  br label %if.end22, !dbg !7239

if.else21:                                        ; preds = %for.body11
  %38 = load ptr, ptr %s, align 8, !dbg !7240
  call void @seq_putc(ptr noundef %38, i8 noundef zeroext 32) #18, !dbg !7241
  br label %if.end22

if.end22:                                         ; preds = %if.else21, %if.then17
  br label %for.inc23, !dbg !7242

for.inc23:                                        ; preds = %if.end22
  %39 = load i32, ptr %i, align 4, !dbg !7243
  %inc24 = add i32 %39, 1, !dbg !7243
  store i32 %inc24, ptr %i, align 4, !dbg !7243
  br label %for.cond8, !dbg !7244, !llvm.loop !7245

for.end25:                                        ; preds = %for.cond8
  %40 = load ptr, ptr %s, align 8, !dbg !7247
  call void @seq_puts(ptr noundef %40, ptr noundef @.str.13) #18, !dbg !7248
  store i32 0, ptr %i, align 4, !dbg !7249
  br label %for.cond26, !dbg !7251

for.cond26:                                       ; preds = %for.inc41, %for.end25
  %41 = load i32, ptr %i, align 4, !dbg !7252
  %cmp27 = icmp slt i32 %41, 4, !dbg !7254
  br i1 %cmp27, label %for.body29, label %for.end43, !dbg !7255

for.body29:                                       ; preds = %for.cond26
  %42 = load ptr, ptr %sdev, align 8, !dbg !7256
  %rev = getelementptr inbounds %struct.scsi_device, ptr %42, i32 0, i32 33, !dbg !7259
  %43 = load ptr, ptr %rev, align 8, !dbg !7259
  %44 = load i32, ptr %i, align 4, !dbg !7260
  %idxprom30 = sext i32 %44 to i64, !dbg !7256
  %arrayidx31 = getelementptr i8, ptr %43, i64 %idxprom30, !dbg !7256
  %45 = load i8, ptr %arrayidx31, align 1, !dbg !7256
  %conv32 = zext i8 %45 to i32, !dbg !7256
  %cmp33 = icmp sge i32 %conv32, 32, !dbg !7261
  br i1 %cmp33, label %if.then35, label %if.else39, !dbg !7262

if.then35:                                        ; preds = %for.body29
  %46 = load ptr, ptr %s, align 8, !dbg !7263
  %47 = load ptr, ptr %sdev, align 8, !dbg !7264
  %rev36 = getelementptr inbounds %struct.scsi_device, ptr %47, i32 0, i32 33, !dbg !7265
  %48 = load ptr, ptr %rev36, align 8, !dbg !7265
  %49 = load i32, ptr %i, align 4, !dbg !7266
  %idxprom37 = sext i32 %49 to i64, !dbg !7264
  %arrayidx38 = getelementptr i8, ptr %48, i64 %idxprom37, !dbg !7264
  %50 = load i8, ptr %arrayidx38, align 1, !dbg !7264
  call void @seq_putc(ptr noundef %46, i8 noundef zeroext %50) #18, !dbg !7267
  br label %if.end40, !dbg !7267

if.else39:                                        ; preds = %for.body29
  %51 = load ptr, ptr %s, align 8, !dbg !7268
  call void @seq_putc(ptr noundef %51, i8 noundef zeroext 32) #18, !dbg !7269
  br label %if.end40

if.end40:                                         ; preds = %if.else39, %if.then35
  br label %for.inc41, !dbg !7270

for.inc41:                                        ; preds = %if.end40
  %52 = load i32, ptr %i, align 4, !dbg !7271
  %inc42 = add i32 %52, 1, !dbg !7271
  store i32 %inc42, ptr %i, align 4, !dbg !7271
  br label %for.cond26, !dbg !7272, !llvm.loop !7273

for.end43:                                        ; preds = %for.cond26
  %53 = load ptr, ptr %s, align 8, !dbg !7275
  call void @seq_putc(ptr noundef %53, i8 noundef zeroext 10) #18, !dbg !7276
  %54 = load ptr, ptr %s, align 8, !dbg !7277
  %55 = load ptr, ptr %sdev, align 8, !dbg !7278
  %type = getelementptr inbounds %struct.scsi_device, ptr %55, i32 0, i32 23, !dbg !7279
  %56 = load i8, ptr %type, align 8, !dbg !7279
  %conv44 = zext i8 %56 to i32, !dbg !7278
  %call45 = call ptr @scsi_device_type(i32 noundef %conv44) #18, !dbg !7280
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %54, ptr noundef @.str.14, ptr noundef %call45) #18, !dbg !7281
  %57 = load ptr, ptr %s, align 8, !dbg !7282
  %58 = load ptr, ptr %sdev, align 8, !dbg !7283
  %scsi_level = getelementptr inbounds %struct.scsi_device, ptr %58, i32 0, i32 24, !dbg !7284
  %59 = load i8, ptr %scsi_level, align 1, !dbg !7284
  %conv46 = zext i8 %59 to i32, !dbg !7283
  %60 = load ptr, ptr %sdev, align 8, !dbg !7285
  %scsi_level47 = getelementptr inbounds %struct.scsi_device, ptr %60, i32 0, i32 24, !dbg !7286
  %61 = load i8, ptr %scsi_level47, align 1, !dbg !7286
  %conv48 = zext i8 %61 to i32, !dbg !7285
  %cmp49 = icmp sgt i32 %conv48, 1, !dbg !7287
  %conv50 = zext i1 %cmp49 to i32, !dbg !7287
  %sub = sub i32 %conv46, %conv50, !dbg !7288
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %57, ptr noundef @.str.15, i32 noundef %sub) #18, !dbg !7289
  %62 = load ptr, ptr %sdev, align 8, !dbg !7290
  %scsi_level51 = getelementptr inbounds %struct.scsi_device, ptr %62, i32 0, i32 24, !dbg !7292
  %63 = load i8, ptr %scsi_level51, align 1, !dbg !7292
  %conv52 = zext i8 %63 to i32, !dbg !7290
  %cmp53 = icmp eq i32 %conv52, 2, !dbg !7293
  br i1 %cmp53, label %if.then55, label %if.else56, !dbg !7294

if.then55:                                        ; preds = %for.end43
  %64 = load ptr, ptr %s, align 8, !dbg !7295
  call void @seq_puts(ptr noundef %64, ptr noundef @.str.16) #18, !dbg !7296
  br label %if.end57, !dbg !7296

if.else56:                                        ; preds = %for.end43
  %65 = load ptr, ptr %s, align 8, !dbg !7297
  call void @seq_putc(ptr noundef %65, i8 noundef zeroext 10) #18, !dbg !7298
  br label %if.end57

if.end57:                                         ; preds = %if.else56, %if.then55
  br label %out, !dbg !7299

out:                                              ; preds = %if.end57, %if.then
  call void @llvm.dbg.label(metadata !7164), !dbg !7300
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !7301
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #17, !dbg !7301
  call void @llvm.lifetime.end.p0(i64 8, ptr %sdev) #17, !dbg !7301
  ret i32 0, !dbg !7302
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7303 dso_local i32 @scsi_is_sdev_device(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7306 dso_local void @seq_printf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7309 dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7312 dso_local ptr @scsi_device_type(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7316 dso_local i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7320 dso_local i64 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @scsi_add_single_device(i32 noundef %host, i32 noundef %channel, i32 noundef %id, i32 noundef %lun) #0 align 16 !dbg !7325 {
entry:
  %retval = alloca i32, align 4
  %host.addr = alloca i32, align 4
  %channel.addr = alloca i32, align 4
  %id.addr = alloca i32, align 4
  %lun.addr = alloca i32, align 4
  %shost = alloca ptr, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %host, ptr %host.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %host.addr, metadata !7329, metadata !DIExpression()), !dbg !7335
  store i32 %channel, ptr %channel.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %channel.addr, metadata !7330, metadata !DIExpression()), !dbg !7336
  store i32 %id, ptr %id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !7331, metadata !DIExpression()), !dbg !7337
  store i32 %lun, ptr %lun.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %lun.addr, metadata !7332, metadata !DIExpression()), !dbg !7338
  call void @llvm.lifetime.start.p0(i64 8, ptr %shost) #17, !dbg !7339
  call void @llvm.dbg.declare(metadata ptr %shost, metadata !7333, metadata !DIExpression()), !dbg !7340
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #17, !dbg !7341
  call void @llvm.dbg.declare(metadata ptr %error, metadata !7334, metadata !DIExpression()), !dbg !7342
  store i32 -6, ptr %error, align 4, !dbg !7342
  %0 = load i32, ptr %host.addr, align 4, !dbg !7343
  %call = call ptr @scsi_host_lookup(i32 noundef %0) #18, !dbg !7344
  store ptr %call, ptr %shost, align 8, !dbg !7345
  %1 = load ptr, ptr %shost, align 8, !dbg !7346
  %tobool = icmp ne ptr %1, null, !dbg !7346
  br i1 %tobool, label %if.end, label %if.then, !dbg !7348

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %error, align 4, !dbg !7349
  store i32 %2, ptr %retval, align 4, !dbg !7350
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7350

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %shost, align 8, !dbg !7351
  %transportt = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 12, !dbg !7353
  %4 = load ptr, ptr %transportt, align 8, !dbg !7353
  %user_scan = getelementptr inbounds %struct.scsi_transport_template, ptr %4, i32 0, i32 3, !dbg !7354
  %5 = load ptr, ptr %user_scan, align 8, !dbg !7354
  %tobool1 = icmp ne ptr %5, null, !dbg !7351
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !7355

if.then2:                                         ; preds = %if.end
  %6 = load ptr, ptr %shost, align 8, !dbg !7356
  %transportt3 = getelementptr inbounds %struct.Scsi_Host, ptr %6, i32 0, i32 12, !dbg !7357
  %7 = load ptr, ptr %transportt3, align 8, !dbg !7357
  %user_scan4 = getelementptr inbounds %struct.scsi_transport_template, ptr %7, i32 0, i32 3, !dbg !7358
  %8 = load ptr, ptr %user_scan4, align 8, !dbg !7358
  %9 = load ptr, ptr %shost, align 8, !dbg !7359
  %10 = load i32, ptr %channel.addr, align 4, !dbg !7360
  %11 = load i32, ptr %id.addr, align 4, !dbg !7361
  %12 = load i32, ptr %lun.addr, align 4, !dbg !7362
  %conv = zext i32 %12 to i64, !dbg !7362
  %call5 = call i32 %8(ptr noundef %9, i32 noundef %10, i32 noundef %11, i64 noundef %conv) #18, !dbg !7356
  store i32 %call5, ptr %error, align 4, !dbg !7363
  br label %if.end8, !dbg !7364

if.else:                                          ; preds = %if.end
  %13 = load ptr, ptr %shost, align 8, !dbg !7365
  %14 = load i32, ptr %channel.addr, align 4, !dbg !7366
  %15 = load i32, ptr %id.addr, align 4, !dbg !7367
  %16 = load i32, ptr %lun.addr, align 4, !dbg !7368
  %conv6 = zext i32 %16 to i64, !dbg !7368
  %call7 = call i32 @scsi_scan_host_selected(ptr noundef %13, i32 noundef %14, i32 noundef %15, i64 noundef %conv6, i32 noundef 2) #18, !dbg !7369
  store i32 %call7, ptr %error, align 4, !dbg !7370
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then2
  %17 = load ptr, ptr %shost, align 8, !dbg !7371
  call void @scsi_host_put(ptr noundef %17) #18, !dbg !7372
  %18 = load i32, ptr %error, align 4, !dbg !7373
  store i32 %18, ptr %retval, align 4, !dbg !7374
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7374

cleanup:                                          ; preds = %if.end8, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #17, !dbg !7375
  call void @llvm.lifetime.end.p0(i64 8, ptr %shost) #17, !dbg !7375
  %19 = load i32, ptr %retval, align 4, !dbg !7375
  ret i32 %19, !dbg !7375
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @scsi_remove_single_device(i32 noundef %host, i32 noundef %channel, i32 noundef %id, i32 noundef %lun) #0 align 16 !dbg !7376 {
entry:
  %retval = alloca i32, align 4
  %host.addr = alloca i32, align 4
  %channel.addr = alloca i32, align 4
  %id.addr = alloca i32, align 4
  %lun.addr = alloca i32, align 4
  %sdev = alloca ptr, align 8
  %shost = alloca ptr, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %host, ptr %host.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %host.addr, metadata !7378, metadata !DIExpression()), !dbg !7385
  store i32 %channel, ptr %channel.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %channel.addr, metadata !7379, metadata !DIExpression()), !dbg !7386
  store i32 %id, ptr %id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !7380, metadata !DIExpression()), !dbg !7387
  store i32 %lun, ptr %lun.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %lun.addr, metadata !7381, metadata !DIExpression()), !dbg !7388
  call void @llvm.lifetime.start.p0(i64 8, ptr %sdev) #17, !dbg !7389
  call void @llvm.dbg.declare(metadata ptr %sdev, metadata !7382, metadata !DIExpression()), !dbg !7390
  call void @llvm.lifetime.start.p0(i64 8, ptr %shost) #17, !dbg !7391
  call void @llvm.dbg.declare(metadata ptr %shost, metadata !7383, metadata !DIExpression()), !dbg !7392
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #17, !dbg !7393
  call void @llvm.dbg.declare(metadata ptr %error, metadata !7384, metadata !DIExpression()), !dbg !7394
  store i32 -6, ptr %error, align 4, !dbg !7394
  %0 = load i32, ptr %host.addr, align 4, !dbg !7395
  %call = call ptr @scsi_host_lookup(i32 noundef %0) #18, !dbg !7396
  store ptr %call, ptr %shost, align 8, !dbg !7397
  %1 = load ptr, ptr %shost, align 8, !dbg !7398
  %tobool = icmp ne ptr %1, null, !dbg !7398
  br i1 %tobool, label %if.end, label %if.then, !dbg !7400

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %error, align 4, !dbg !7401
  store i32 %2, ptr %retval, align 4, !dbg !7402
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7402

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %shost, align 8, !dbg !7403
  %4 = load i32, ptr %channel.addr, align 4, !dbg !7404
  %5 = load i32, ptr %id.addr, align 4, !dbg !7405
  %6 = load i32, ptr %lun.addr, align 4, !dbg !7406
  %conv = zext i32 %6 to i64, !dbg !7406
  %call1 = call ptr @scsi_device_lookup(ptr noundef %3, i32 noundef %4, i32 noundef %5, i64 noundef %conv) #18, !dbg !7407
  store ptr %call1, ptr %sdev, align 8, !dbg !7408
  %7 = load ptr, ptr %sdev, align 8, !dbg !7409
  %tobool2 = icmp ne ptr %7, null, !dbg !7409
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !7411

if.then3:                                         ; preds = %if.end
  %8 = load ptr, ptr %sdev, align 8, !dbg !7412
  call void @scsi_remove_device(ptr noundef %8) #18, !dbg !7414
  %9 = load ptr, ptr %sdev, align 8, !dbg !7415
  call void @scsi_device_put(ptr noundef %9) #18, !dbg !7416
  store i32 0, ptr %error, align 4, !dbg !7417
  br label %if.end4, !dbg !7418

if.end4:                                          ; preds = %if.then3, %if.end
  %10 = load ptr, ptr %shost, align 8, !dbg !7419
  call void @scsi_host_put(ptr noundef %10) #18, !dbg !7420
  %11 = load i32, ptr %error, align 4, !dbg !7421
  store i32 %11, ptr %retval, align 4, !dbg !7422
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7422

cleanup:                                          ; preds = %if.end4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #17, !dbg !7423
  call void @llvm.lifetime.end.p0(i64 8, ptr %shost) #17, !dbg !7423
  call void @llvm.lifetime.end.p0(i64 8, ptr %sdev) #17, !dbg !7423
  %12 = load i32, ptr %retval, align 4, !dbg !7423
  ret i32 %12, !dbg !7423
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7424 dso_local ptr @scsi_host_lookup(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7427 dso_local i32 @scsi_scan_host_selected(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7431 dso_local void @scsi_host_put(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7432 dso_local ptr @scsi_device_lookup(ptr noundef, i32 noundef, i32 noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7435 dso_local void @scsi_remove_device(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7436 dso_local void @scsi_device_put(ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone null_pointer_is_valid "dontcall-error"="copy source size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { noredzone null_pointer_is_valid "dontcall-error"="copy destination size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { nounwind }
attributes #18 = { noredzone }
attributes #19 = { noredzone allocsize(0) }
attributes #20 = { cold noredzone }
attributes #21 = { noredzone allocsize(2) }
attributes #22 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5928, !5929, !5930, !5931, !5932, !5933, !5934, !5935}
!llvm.ident = !{!5936}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_scsi_template_proc_dir346", scope: !2, file: !3, line: 138, type: !225, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/scsi/.scsi_proc.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/scsi/scsi_mod\22 -D KBUILD_BASENAME=\22scsi_proc\22 -D KBUILD_MODNAME=\22scsi_mod\22 -D __KBUILD_MODNAME=kmod_scsi_mod -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/scsi/scsi_proc.ll drivers/scsi/scsi_proc.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !224, globals: !5817, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/scsi/scsi_proc.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6a903c5c8ea0aaca69fddb0c7a4496e6")
!4 = !{!5, !11, !19, !26, !34, !50, !57, !63, !68, !74, !79, !85, !92, !100, !108, !117, !122, !127, !133, !138, !143, !148, !152, !157, !163, !170, !180, !188, !199, !204, !209, !219}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !6, line: 65, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!10 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !12, line: 9, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!13 = !{!14, !15, !16, !17, !18}
!14 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!15 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!16 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!17 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!18 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !20, line: 312, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!21 = !{!22, !23, !24, !25}
!22 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!23 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!24 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!25 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !27, line: 68, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!28 = !{!29, !30, !31, !32, !33}
!29 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!30 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!31 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!32 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!33 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !35, line: 1325, baseType: !7, size: 32, elements: !36)
!35 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!36 = !{!37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49}
!37 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!38 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!39 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!40 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!41 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!42 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!43 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!44 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!45 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!46 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!47 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!48 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!49 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !51, line: 15, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!52 = !{!53, !54, !55, !56}
!53 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!54 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!55 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!56 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !58, line: 26, baseType: !7, size: 32, elements: !59)
!58 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!59 = !{!60, !61, !62}
!60 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!61 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!62 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !64, line: 2052, baseType: !7, size: 32, elements: !65)
!64 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!65 = !{!66, !67}
!66 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!67 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !69, line: 54, baseType: !7, size: 32, elements: !70)
!69 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!70 = !{!71, !72, !73}
!71 = !DIEnumerator(name: "USRQUOTA", value: 0)
!72 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!73 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_eh_timer_return", file: !75, line: 276, baseType: !7, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/blk-mq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "62cf1706db3683ee75df9cf32a2cf47d")
!76 = !{!77, !78}
!77 = !DIEnumerator(name: "BLK_EH_DONE", value: 0)
!78 = !DIEnumerator(name: "BLK_EH_RESET_TIMER", value: 1)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !80, line: 45, baseType: !7, size: 32, elements: !81)
!80 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!81 = !{!82, !83, !84}
!82 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!83 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!84 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !86, line: 487, baseType: !7, size: 32, elements: !87)
!86 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!87 = !{!88, !89, !90, !91}
!88 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!89 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!90 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!91 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !93, line: 620, baseType: !7, size: 32, elements: !94)
!93 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!94 = !{!95, !96, !97, !98, !99}
!95 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!96 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!97 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!98 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!99 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !93, line: 597, baseType: !101, size: 32, elements: !102)
!101 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!102 = !{!103, !104, !105, !106, !107}
!103 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!104 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!105 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!106 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!107 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !86, line: 547, baseType: !7, size: 32, elements: !109)
!109 = !{!110, !111, !112, !113, !114, !115, !116}
!110 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!111 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!112 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!113 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!114 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!115 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!116 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !86, line: 564, baseType: !7, size: 32, elements: !118)
!118 = !{!119, !120, !121}
!119 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!120 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!121 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !86, line: 577, baseType: !7, size: 32, elements: !123)
!123 = !{!124, !125, !126}
!124 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!125 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!126 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !86, line: 503, baseType: !7, size: 32, elements: !128)
!128 = !{!129, !130, !131, !132}
!129 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!130 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!131 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!132 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!133 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_bounce", file: !134, line: 295, baseType: !7, size: 32, elements: !135)
!134 = !DIFile(filename: "./include/linux/blkdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "802ed60c7d9aff392515db0b7890881d")
!135 = !{!136, !137}
!136 = !DIEnumerator(name: "BLK_BOUNCE_NONE", value: 0)
!137 = !DIEnumerator(name: "BLK_BOUNCE_HIGH", value: 1)
!138 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_zoned_model", file: !134, line: 285, baseType: !7, size: 32, elements: !139)
!139 = !{!140, !141, !142}
!140 = !DIEnumerator(name: "BLK_ZONED_NONE", value: 0)
!141 = !DIEnumerator(name: "BLK_ZONED_HA", value: 1)
!142 = !DIEnumerator(name: "BLK_ZONED_HM", value: 2)
!143 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mq_rq_state", file: !75, line: 68, baseType: !7, size: 32, elements: !144)
!144 = !{!145, !146, !147}
!145 = !DIEnumerator(name: "MQ_RQ_IDLE", value: 0)
!146 = !DIEnumerator(name: "MQ_RQ_IN_FLIGHT", value: 1)
!147 = !DIEnumerator(name: "MQ_RQ_COMPLETE", value: 2)
!148 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rq_end_io_ret", file: !75, line: 18, baseType: !7, size: 32, elements: !149)
!149 = !{!150, !151}
!150 = !DIEnumerator(name: "RQ_END_IO_NONE", value: 0)
!151 = !DIEnumerator(name: "RQ_END_IO_FREE", value: 1)
!152 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_unique_id", file: !134, line: 1381, baseType: !7, size: 32, elements: !153)
!153 = !{!154, !155, !156}
!154 = !DIEnumerator(name: "BLK_UID_T10", value: 1)
!155 = !DIEnumerator(name: "BLK_UID_EUI64", value: 2)
!156 = !DIEnumerator(name: "BLK_UID_NAA", value: 3)
!157 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !158, line: 16, baseType: !7, size: 32, elements: !159)
!158 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!159 = !{!160, !161, !162}
!160 = !DIEnumerator(name: "TT_NONE", value: 0)
!161 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!162 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!163 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !164, line: 51, baseType: !7, size: 32, elements: !165)
!164 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!165 = !{!166, !167, !168, !169}
!166 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!167 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!168 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!169 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!170 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "scsi_host_state", file: !171, line: 525, baseType: !7, size: 32, elements: !172)
!171 = !DIFile(filename: "./include/scsi/scsi_host.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5cb376a812ac0cab6555a718dbe69d0b")
!172 = !{!173, !174, !175, !176, !177, !178, !179}
!173 = !DIEnumerator(name: "SHOST_CREATED", value: 1)
!174 = !DIEnumerator(name: "SHOST_RUNNING", value: 2)
!175 = !DIEnumerator(name: "SHOST_CANCEL", value: 3)
!176 = !DIEnumerator(name: "SHOST_DEL", value: 4)
!177 = !DIEnumerator(name: "SHOST_RECOVERY", value: 5)
!178 = !DIEnumerator(name: "SHOST_CANCEL_RECOVERY", value: 6)
!179 = !DIEnumerator(name: "SHOST_DEL_RECOVERY", value: 7)
!180 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "scsi_target_state", file: !181, line: 321, baseType: !7, size: 32, elements: !182)
!181 = !DIFile(filename: "./include/scsi/scsi_device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8532a04b33bfb2793a57cbb23a970be9")
!182 = !{!183, !184, !185, !186, !187}
!183 = !DIEnumerator(name: "STARGET_CREATED", value: 1)
!184 = !DIEnumerator(name: "STARGET_RUNNING", value: 2)
!185 = !DIEnumerator(name: "STARGET_REMOVE", value: 3)
!186 = !DIEnumerator(name: "STARGET_CREATED_REMOVE", value: 4)
!187 = !DIEnumerator(name: "STARGET_DEL", value: 5)
!188 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "scsi_device_state", file: !181, line: 38, baseType: !7, size: 32, elements: !189)
!189 = !{!190, !191, !192, !193, !194, !195, !196, !197, !198}
!190 = !DIEnumerator(name: "SDEV_CREATED", value: 1)
!191 = !DIEnumerator(name: "SDEV_RUNNING", value: 2)
!192 = !DIEnumerator(name: "SDEV_CANCEL", value: 3)
!193 = !DIEnumerator(name: "SDEV_DEL", value: 4)
!194 = !DIEnumerator(name: "SDEV_QUIESCE", value: 5)
!195 = !DIEnumerator(name: "SDEV_OFFLINE", value: 6)
!196 = !DIEnumerator(name: "SDEV_TRANSPORT_OFFLINE", value: 7)
!197 = !DIEnumerator(name: "SDEV_BLOCK", value: 8)
!198 = !DIEnumerator(name: "SDEV_CREATED_BLOCK", value: 9)
!199 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "scsi_timeout_action", file: !171, line: 36, baseType: !7, size: 32, elements: !200)
!200 = !{!201, !202, !203}
!201 = !DIEnumerator(name: "SCSI_EH_DONE", value: 0)
!202 = !DIEnumerator(name: "SCSI_EH_RESET_TIMER", value: 1)
!203 = !DIEnumerator(name: "SCSI_EH_NOT_HANDLED", value: 2)
!204 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !205, line: 10, baseType: !7, size: 32, elements: !206)
!205 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!206 = !{!207, !208}
!207 = !DIEnumerator(name: "false", value: 0)
!208 = !DIEnumerator(name: "true", value: 1)
!209 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !210, line: 364, baseType: !7, size: 32, elements: !211)
!210 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!211 = !{!212, !213, !214, !215, !216, !217, !218}
!212 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!213 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!214 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!215 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!216 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!217 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!218 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!219 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "scsi_scan_mode", file: !181, line: 60, baseType: !7, size: 32, elements: !220)
!220 = !{!221, !222, !223}
!221 = !DIEnumerator(name: "SCSI_SCAN_INITIAL", value: 0)
!222 = !DIEnumerator(name: "SCSI_SCAN_RESCAN", value: 1)
!223 = !DIEnumerator(name: "SCSI_SCAN_MANUAL", value: 2)
!224 = !{!225, !226, !228, !332, !5815, !893, !101, !5552}
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !227, line: 154, baseType: !7)
!227 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scsi_proc_entry", file: !3, line: 57, size: 320, elements: !230)
!230 = !{!231, !237, !5810, !5814}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !229, file: !3, line: 58, baseType: !232, size: 128)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !227, line: 190, size: 128, elements: !233)
!233 = !{!234, !236}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !232, file: !227, line: 191, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !232, file: !227, line: 191, baseType: !235, size: 64, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "sht", scope: !229, file: !3, line: 59, baseType: !238, size: 64, offset: 128)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !240)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scsi_host_template", file: !171, line: 42, size: 2880, elements: !241)
!241 = !{!242, !243, !5538, !5542, !5543, !5544, !5548, !5716, !5717, !5718, !5719, !5723, !5724, !5725, !5726, !5727, !5731, !5732, !5736, !5740, !5744, !5748, !5749, !5753, !5754, !5758, !5762, !5766, !5767, !5771, !5775, !5779, !5783, !5787, !5788, !5789, !5790, !5791, !5792, !5793, !5794, !5795, !5796, !5797, !5798, !5799, !5800, !5801, !5802, !5803, !5804, !5805, !5806, !5807, !5808, !5809}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_size", scope: !240, file: !171, line: 51, baseType: !7, size: 32)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "queuecommand", scope: !240, file: !171, line: 87, baseType: !244, size: 64, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!101, !247, !5535}
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Scsi_Host", file: !171, line: 535, size: 16512, elements: !249)
!249 = !{!250, !251, !252, !253, !296, !298, !320, !321, !322, !5405, !5406, !5407, !5408, !5480, !5481, !5482, !5483, !5484, !5485, !5486, !5487, !5488, !5489, !5490, !5491, !5492, !5493, !5494, !5495, !5496, !5497, !5498, !5499, !5500, !5501, !5502, !5503, !5504, !5505, !5506, !5507, !5508, !5509, !5510, !5511, !5512, !5513, !5514, !5515, !5516, !5517, !5519, !5520, !5521, !5522, !5523, !5524, !5525, !5526, !5527, !5528, !5529, !5530, !5531, !5532, !5533, !5534}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "__devices", scope: !248, file: !171, line: 544, baseType: !232, size: 128)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "__targets", scope: !248, file: !171, line: 545, baseType: !232, size: 128, offset: 128)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "starved_list", scope: !248, file: !171, line: 547, baseType: !232, size: 128, offset: 256)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "default_lock", scope: !248, file: !171, line: 549, baseType: !254, size: 32, offset: 384)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !255, line: 29, baseType: !256)
!255 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !255, line: 17, size: 32, elements: !257)
!257 = !{!258}
!258 = !DIDerivedType(tag: DW_TAG_member, scope: !256, file: !255, line: 18, baseType: !259, size: 32)
!259 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !256, file: !255, line: 18, size: 32, elements: !260)
!260 = !{!261}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !259, file: !255, line: 19, baseType: !262, size: 32)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !263, line: 14, size: 32, elements: !264)
!263 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!264 = !{!265}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !262, file: !263, line: 15, baseType: !266, size: 32)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !267, line: 44, baseType: !268)
!267 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !267, line: 14, size: 32, elements: !269)
!269 = !{!270}
!270 = !DIDerivedType(tag: DW_TAG_member, scope: !268, file: !267, line: 15, baseType: !271, size: 32)
!271 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !268, file: !267, line: 15, size: 32, elements: !272)
!272 = !{!273, !278, !288}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !271, file: !267, line: 16, baseType: !274, size: 32)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !227, line: 174, baseType: !275)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !227, line: 172, size: 32, elements: !276)
!276 = !{!277}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !275, file: !227, line: 173, baseType: !101, size: 32)
!278 = !DIDerivedType(tag: DW_TAG_member, scope: !271, file: !267, line: 24, baseType: !279, size: 16)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !271, file: !267, line: 24, size: 16, elements: !280)
!280 = !{!281, !287}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !279, file: !267, line: 25, baseType: !282, size: 8)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !283, line: 17, baseType: !284)
!283 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !285, line: 21, baseType: !286)
!285 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!286 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !279, file: !267, line: 26, baseType: !282, size: 8, offset: 8)
!288 = !DIDerivedType(tag: DW_TAG_member, scope: !271, file: !267, line: 28, baseType: !289, size: 32)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !271, file: !267, line: 28, size: 32, elements: !290)
!290 = !{!291, !295}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !289, file: !267, line: 29, baseType: !292, size: 16)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !283, line: 19, baseType: !293)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !285, line: 24, baseType: !294)
!294 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !289, file: !267, line: 30, baseType: !292, size: 16, offset: 16)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "host_lock", scope: !248, file: !171, line: 550, baseType: !297, size: 64, offset: 448)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "scan_mutex", scope: !248, file: !171, line: 552, baseType: !299, size: 256, offset: 512)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !300, line: 66, size: 256, elements: !301)
!300 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!301 = !{!302, !312, !314, !319}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !299, file: !300, line: 67, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !304, line: 13, baseType: !305)
!304 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !227, line: 181, baseType: !306)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !227, line: 179, size: 64, elements: !307)
!307 = !{!308}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !306, file: !227, line: 180, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !283, line: 22, baseType: !310)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !285, line: 30, baseType: !311)
!311 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !299, file: !300, line: 68, baseType: !313, size: 32, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !263, line: 23, baseType: !262)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !299, file: !300, line: 70, baseType: !315, size: 32, offset: 96)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !316, line: 15, size: 32, elements: !317)
!316 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!317 = !{!318}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !315, file: !316, line: 20, baseType: !274, size: 32)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !299, file: !300, line: 72, baseType: !232, size: 128, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "eh_abort_list", scope: !248, file: !171, line: 554, baseType: !232, size: 128, offset: 768)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "eh_cmd_q", scope: !248, file: !171, line: 555, baseType: !232, size: 128, offset: 896)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "ehandler", scope: !248, file: !171, line: 556, baseType: !323, size: 64, offset: 1024)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !325, line: 746, size: 58368, elements: !326)
!325 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!326 = !{!327, !338, !339, !340, !346, !347, !348, !349, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !430, !441, !542, !546, !549, !580, !581, !582, !583, !594, !596, !597, !598, !599, !600, !601, !612, !613, !616, !617, !618, !619, !620, !621, !622, !623, !630, !631, !638, !639, !4504, !4505, !4506, !4507, !4508, !4509, !4510, !4511, !4512, !4513, !4514, !4515, !4516, !4517, !4518, !4519, !4520, !4521, !4522, !4523, !4524, !4525, !4526, !4583, !4586, !4587, !4588, !4589, !4590, !4591, !4592, !4593, !4594, !4595, !4596, !4598, !4599, !4600, !4601, !4602, !4603, !4604, !4605, !4606, !4607, !4613, !4614, !4615, !4616, !4617, !4618, !4619, !4631, !4637, !4638, !4639, !4640, !4641, !4643, !4646, !4653, !4658, !4661, !4664, !4667, !4671, !4809, !4836, !4837, !4838, !4839, !4840, !4841, !4842, !4843, !4844, !4847, !4848, !4849, !4858, !4866, !4867, !4868, !4869, !4870, !4875, !4876, !4877, !4880, !4881, !4883, !4894, !4897, !4898, !4901, !4902, !4988, !4989, !4990, !4991, !4992, !4998, !4999, !5000, !5001, !5004, !5005, !5008, !5011, !5012, !5015, !5016, !5017, !5020, !5021, !5022, !5023, !5024, !5025, !5038, !5039, !5040, !5041, !5042, !5043, !5044, !5045, !5046, !5057, !5058, !5064, !5067, !5068, !5069, !5070, !5071, !5072, !5073, !5074, !5146, !5148, !5149, !5150, !5151, !5152, !5153, !5168, !5169, !5170, !5171, !5172, !5173, !5174, !5175, !5176, !5177, !5178, !5182, !5183, !5184}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !324, file: !325, line: 752, baseType: !328, size: 192)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !329, line: 56, size: 192, elements: !330)
!329 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!330 = !{!331, !333, !334, !337}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !328, file: !329, line: 57, baseType: !332, size: 64)
!332 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !328, file: !329, line: 58, baseType: !332, size: 64, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !328, file: !329, line: 59, baseType: !335, size: 32, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !283, line: 21, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !285, line: 27, baseType: !7)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !328, file: !329, line: 61, baseType: !335, size: 32, offset: 160)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !324, file: !325, line: 754, baseType: !7, size: 32, offset: 192)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !324, file: !325, line: 767, baseType: !225, size: 64, offset: 256)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !324, file: !325, line: 768, baseType: !341, size: 32, offset: 320)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !342, line: 113, baseType: !343)
!342 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !342, line: 111, size: 32, elements: !344)
!344 = !{!345}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !343, file: !342, line: 112, baseType: !274, size: 32)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !324, file: !325, line: 770, baseType: !7, size: 32, offset: 352)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !324, file: !325, line: 771, baseType: !7, size: 32, offset: 384)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !324, file: !325, line: 774, baseType: !101, size: 32, offset: 416)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !324, file: !325, line: 775, baseType: !350, size: 128, offset: 448)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !351, line: 58, size: 128, elements: !352)
!351 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!352 = !{!353, !359, !364, !365}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !350, file: !351, line: 59, baseType: !354, size: 64)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !355, line: 60, size: 64, elements: !356)
!355 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!356 = !{!357}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !354, file: !355, line: 61, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, scope: !350, file: !351, line: 60, baseType: !360, size: 32, offset: 64)
!360 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !350, file: !351, line: 60, size: 32, elements: !361)
!361 = !{!362, !363}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !360, file: !351, line: 61, baseType: !7, size: 32)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !360, file: !351, line: 62, baseType: !274, size: 32)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !350, file: !351, line: 65, baseType: !292, size: 16, offset: 96)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !350, file: !351, line: 65, baseType: !292, size: 16, offset: 112)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !324, file: !325, line: 776, baseType: !7, size: 32, offset: 576)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !324, file: !325, line: 777, baseType: !332, size: 64, offset: 640)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !324, file: !325, line: 778, baseType: !323, size: 64, offset: 704)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !324, file: !325, line: 787, baseType: !101, size: 32, offset: 768)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !324, file: !325, line: 788, baseType: !101, size: 32, offset: 800)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !324, file: !325, line: 790, baseType: !101, size: 32, offset: 832)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !324, file: !325, line: 792, baseType: !101, size: 32, offset: 864)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !324, file: !325, line: 793, baseType: !101, size: 32, offset: 896)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !324, file: !325, line: 794, baseType: !101, size: 32, offset: 928)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !324, file: !325, line: 795, baseType: !7, size: 32, offset: 960)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !324, file: !325, line: 797, baseType: !377, size: 2048, offset: 1024)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !325, line: 551, size: 2048, elements: !378)
!378 = !{!379, !384, !392, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !409, !412, !413, !414}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !377, file: !325, line: 553, baseType: !380, size: 128)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !325, line: 411, size: 128, elements: !381)
!381 = !{!382, !383}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !380, file: !325, line: 412, baseType: !332, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !380, file: !325, line: 413, baseType: !335, size: 32, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !377, file: !325, line: 554, baseType: !385, size: 192, align: 64, offset: 128)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !386, line: 5, size: 192, align: 64, elements: !387)
!386 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!387 = !{!388, !389, !391}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !385, file: !386, line: 6, baseType: !332, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !385, file: !386, line: 7, baseType: !390, size: 64, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !385, file: !386, line: 8, baseType: !390, size: 64, offset: 128)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !377, file: !325, line: 555, baseType: !393, size: 64, offset: 320)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !283, line: 23, baseType: !394)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !285, line: 31, baseType: !395)
!395 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !377, file: !325, line: 556, baseType: !393, size: 64, offset: 384)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !377, file: !325, line: 558, baseType: !232, size: 128, offset: 448)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !377, file: !325, line: 559, baseType: !7, size: 32, offset: 576)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !377, file: !325, line: 561, baseType: !393, size: 64, offset: 640)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !377, file: !325, line: 562, baseType: !393, size: 64, offset: 704)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !377, file: !325, line: 563, baseType: !393, size: 64, offset: 768)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !377, file: !325, line: 564, baseType: !393, size: 64, offset: 832)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !377, file: !325, line: 565, baseType: !309, size: 64, offset: 896)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !377, file: !325, line: 566, baseType: !393, size: 64, offset: 960)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !377, file: !325, line: 568, baseType: !393, size: 64, offset: 1024)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !377, file: !325, line: 571, baseType: !101, size: 32, offset: 1088)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !377, file: !325, line: 572, baseType: !408, size: 64, offset: 1152)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !377, file: !325, line: 574, baseType: !410, size: 64, offset: 1216)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !325, line: 49, flags: DIFlagFwdDecl)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !377, file: !325, line: 576, baseType: !410, size: 64, offset: 1280)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !377, file: !325, line: 578, baseType: !332, size: 64, offset: 1344)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !377, file: !325, line: 588, baseType: !415, size: 512, align: 512, offset: 1536)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !325, line: 497, size: 512, align: 512, elements: !416)
!416 = !{!417, !418, !419, !420, !421, !422, !423, !424, !425}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !415, file: !325, line: 498, baseType: !393, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !415, file: !325, line: 499, baseType: !393, size: 64, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !415, file: !325, line: 500, baseType: !393, size: 64, offset: 128)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !415, file: !325, line: 501, baseType: !335, size: 32, offset: 192)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !415, file: !325, line: 502, baseType: !335, size: 32, offset: 224)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !415, file: !325, line: 503, baseType: !332, size: 64, offset: 256)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !415, file: !325, line: 504, baseType: !332, size: 64, offset: 320)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !415, file: !325, line: 505, baseType: !332, size: 64, offset: 384)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !415, file: !325, line: 506, baseType: !426, size: 64, align: 64, offset: 448)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !325, line: 445, size: 64, align: 64, elements: !427)
!427 = !{!428, !429}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !426, file: !325, line: 446, baseType: !7, size: 32)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !426, file: !325, line: 447, baseType: !7, size: 32, offset: 32)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !324, file: !325, line: 798, baseType: !431, size: 384, offset: 3072)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !325, line: 592, size: 384, elements: !432)
!432 = !{!433, !434, !435, !436, !437, !438, !439}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !431, file: !325, line: 593, baseType: !232, size: 128)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !431, file: !325, line: 594, baseType: !332, size: 64, offset: 128)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !431, file: !325, line: 595, baseType: !332, size: 64, offset: 192)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !431, file: !325, line: 596, baseType: !7, size: 32, offset: 256)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !431, file: !325, line: 597, baseType: !294, size: 16, offset: 288)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !431, file: !325, line: 598, baseType: !294, size: 16, offset: 304)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !431, file: !325, line: 600, baseType: !440, size: 64, offset: 320)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !324, file: !325, line: 799, baseType: !442, size: 1792, offset: 3456)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !325, line: 610, size: 1792, elements: !443)
!443 = !{!444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !539, !540}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !442, file: !325, line: 611, baseType: !385, size: 192, align: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !442, file: !325, line: 618, baseType: !393, size: 64, offset: 192)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !442, file: !325, line: 619, baseType: !393, size: 64, offset: 256)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !442, file: !325, line: 620, baseType: !393, size: 64, offset: 320)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !442, file: !325, line: 621, baseType: !393, size: 64, offset: 384)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !442, file: !325, line: 622, baseType: !393, size: 64, offset: 448)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !442, file: !325, line: 629, baseType: !309, size: 64, offset: 512)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !442, file: !325, line: 630, baseType: !393, size: 64, offset: 576)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !442, file: !325, line: 631, baseType: !7, size: 32, offset: 640)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !442, file: !325, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !442, file: !325, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !442, file: !325, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !442, file: !325, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !442, file: !325, line: 662, baseType: !458, size: 512, offset: 704)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !459)
!459 = !{!460, !468, !469, !474, !535, !536, !537, !538}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !458, file: !6, line: 119, baseType: !461, size: 256)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !462, line: 9, size: 256, elements: !463)
!462 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!463 = !{!464, !465}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !461, file: !462, line: 10, baseType: !385, size: 192, align: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !461, file: !462, line: 11, baseType: !466, size: 64, offset: 192)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !467, line: 29, baseType: !309)
!467 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!468 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !458, file: !6, line: 120, baseType: !466, size: 64, offset: 256)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !458, file: !6, line: 121, baseType: !470, size: 64, offset: 320)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{!5, !473}
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !458, file: !6, line: 122, baseType: !475, size: 64, offset: 384)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !477)
!477 = !{!478, !503, !504, !508, !518, !519, !530, !534}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !476, file: !6, line: 160, baseType: !479, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 215, size: 4608, align: 512, elements: !481)
!481 = !{!482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !480, file: !6, line: 216, baseType: !313, size: 32)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !480, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !480, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !480, file: !6, line: 219, baseType: !7, size: 32, offset: 96)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !480, file: !6, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !480, file: !6, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !480, file: !6, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !480, file: !6, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !480, file: !6, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !480, file: !6, line: 226, baseType: !7, size: 32, offset: 160)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !480, file: !6, line: 227, baseType: !294, size: 16, offset: 192)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !480, file: !6, line: 228, baseType: !294, size: 16, offset: 208)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !480, file: !6, line: 229, baseType: !7, size: 32, offset: 224)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !480, file: !6, line: 235, baseType: !466, size: 64, offset: 256)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !480, file: !6, line: 236, baseType: !473, size: 64, offset: 320)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !480, file: !6, line: 237, baseType: !466, size: 64, offset: 384)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !480, file: !6, line: 238, baseType: !473, size: 64, offset: 448)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !480, file: !6, line: 239, baseType: !500, size: 4096, align: 512, offset: 512)
!500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !476, size: 4096, align: 512, elements: !501)
!501 = !{!502}
!502 = !DISubrange(count: 8)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !476, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !476, file: !6, line: 162, baseType: !505, size: 32, offset: 96)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !227, line: 32, baseType: !506)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !507, line: 96, baseType: !101)
!507 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!508 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !476, file: !6, line: 163, baseType: !509, size: 32, offset: 128)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !510, line: 274, baseType: !511)
!510 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !510, line: 274, size: 32, elements: !512)
!512 = !{!513}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !511, file: !510, line: 274, baseType: !514, size: 32)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !510, line: 69, baseType: !515)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !510, line: 64, size: 32, elements: !516)
!516 = !{!517}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !515, file: !510, line: 65, baseType: !7, size: 32)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !476, file: !6, line: 164, baseType: !473, size: 64, offset: 192)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !476, file: !6, line: 165, baseType: !520, size: 128, offset: 256)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !462, line: 14, size: 128, elements: !521)
!521 = !{!522}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !520, file: !462, line: 15, baseType: !523, size: 128)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !386, line: 26, size: 128, elements: !524)
!524 = !{!525, !529}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !523, file: !386, line: 27, baseType: !526, size: 64)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !386, line: 12, size: 64, elements: !527)
!527 = !{!528}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !526, file: !386, line: 13, baseType: !390, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !523, file: !386, line: 28, baseType: !390, size: 64, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !476, file: !6, line: 166, baseType: !531, size: 64, offset: 384)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{!466}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !476, file: !6, line: 167, baseType: !466, size: 64, offset: 448)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !458, file: !6, line: 123, baseType: !282, size: 8, offset: 448)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !458, file: !6, line: 124, baseType: !282, size: 8, offset: 456)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !458, file: !6, line: 125, baseType: !282, size: 8, offset: 464)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !458, file: !6, line: 126, baseType: !282, size: 8, offset: 472)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !442, file: !325, line: 671, baseType: !458, size: 512, offset: 1216)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !442, file: !325, line: 679, baseType: !541, size: 64, offset: 1728)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !324, file: !325, line: 800, baseType: !543, size: 64, offset: 5248)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !545)
!545 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !325, line: 800, flags: DIFlagFwdDecl)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !324, file: !325, line: 809, baseType: !547, size: 64, offset: 5312)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !325, line: 70, flags: DIFlagFwdDecl)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !324, file: !325, line: 825, baseType: !550, size: 2048, align: 512, offset: 5632)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !325, line: 509, size: 2048, align: 512, elements: !551)
!551 = !{!552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !550, file: !325, line: 511, baseType: !393, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !550, file: !325, line: 512, baseType: !393, size: 64, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !550, file: !325, line: 513, baseType: !393, size: 64, offset: 128)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !550, file: !325, line: 514, baseType: !393, size: 64, offset: 192)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !550, file: !325, line: 515, baseType: !393, size: 64, offset: 256)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !550, file: !325, line: 516, baseType: !393, size: 64, offset: 320)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !550, file: !325, line: 518, baseType: !393, size: 64, offset: 384)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !550, file: !325, line: 519, baseType: !393, size: 64, offset: 448)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !550, file: !325, line: 520, baseType: !309, size: 64, offset: 512)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !550, file: !325, line: 522, baseType: !393, size: 64, offset: 576)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !550, file: !325, line: 523, baseType: !393, size: 64, offset: 640)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !550, file: !325, line: 524, baseType: !309, size: 64, offset: 704)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !550, file: !325, line: 526, baseType: !309, size: 64, offset: 768)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !550, file: !325, line: 527, baseType: !393, size: 64, offset: 832)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !550, file: !325, line: 529, baseType: !393, size: 64, offset: 896)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !550, file: !325, line: 530, baseType: !393, size: 64, offset: 960)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !550, file: !325, line: 531, baseType: !393, size: 64, offset: 1024)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !550, file: !325, line: 532, baseType: !393, size: 64, offset: 1088)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !550, file: !325, line: 533, baseType: !393, size: 64, offset: 1152)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !550, file: !325, line: 535, baseType: !393, size: 64, offset: 1216)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !550, file: !325, line: 536, baseType: !393, size: 64, offset: 1280)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !550, file: !325, line: 537, baseType: !393, size: 64, offset: 1344)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !550, file: !325, line: 538, baseType: !393, size: 64, offset: 1408)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !550, file: !325, line: 539, baseType: !393, size: 64, offset: 1472)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !550, file: !325, line: 540, baseType: !393, size: 64, offset: 1536)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !550, file: !325, line: 541, baseType: !393, size: 64, offset: 1600)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !550, file: !325, line: 542, baseType: !393, size: 64, offset: 1664)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !550, file: !325, line: 543, baseType: !393, size: 64, offset: 1728)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !324, file: !325, line: 833, baseType: !7, size: 32, offset: 7680)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !324, file: !325, line: 836, baseType: !7, size: 32, offset: 7712)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !324, file: !325, line: 837, baseType: !101, size: 32, offset: 7744)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !324, file: !325, line: 838, baseType: !584, size: 64, offset: 7808)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !586)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !587, line: 19, baseType: !588)
!587 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !587, line: 19, size: 64, elements: !589)
!589 = !{!590}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !588, file: !587, line: 19, baseType: !591, size: 64)
!591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 64, elements: !592)
!592 = !{!593}
!593 = !DISubrange(count: 1)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !324, file: !325, line: 839, baseType: !595, size: 64, offset: 7872)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !324, file: !325, line: 840, baseType: !586, size: 64, offset: 7936)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !324, file: !325, line: 841, baseType: !225, size: 64, offset: 8000)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !324, file: !325, line: 843, baseType: !294, size: 16, offset: 8064)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !324, file: !325, line: 845, baseType: !294, size: 16, offset: 8080)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !324, file: !325, line: 848, baseType: !101, size: 32, offset: 8096)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !324, file: !325, line: 849, baseType: !602, size: 32, offset: 8128)
!602 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !325, line: 718, size: 32, elements: !603)
!603 = !{!604, !611}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !602, file: !325, line: 724, baseType: !605, size: 32)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !602, file: !325, line: 719, size: 32, elements: !606)
!606 = !{!607, !608, !609, !610}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !605, file: !325, line: 720, baseType: !282, size: 8)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !605, file: !325, line: 721, baseType: !282, size: 8, offset: 8)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !605, file: !325, line: 722, baseType: !282, size: 8, offset: 16)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !605, file: !325, line: 723, baseType: !282, size: 8, offset: 24)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !602, file: !325, line: 725, baseType: !335, size: 32)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !324, file: !325, line: 850, baseType: !232, size: 128, offset: 8192)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !324, file: !325, line: 851, baseType: !614, size: 64, offset: 8320)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !325, line: 60, flags: DIFlagFwdDecl)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !324, file: !325, line: 855, baseType: !332, size: 64, offset: 8384)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !324, file: !325, line: 856, baseType: !282, size: 8, offset: 8448)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !324, file: !325, line: 857, baseType: !282, size: 8, offset: 8456)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !324, file: !325, line: 858, baseType: !101, size: 32, offset: 8480)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !324, file: !325, line: 859, baseType: !232, size: 128, offset: 8512)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !324, file: !325, line: 860, baseType: !101, size: 32, offset: 8640)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !324, file: !325, line: 861, baseType: !232, size: 128, offset: 8704)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !324, file: !325, line: 873, baseType: !624, size: 256, offset: 8832)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !325, line: 376, size: 256, elements: !625)
!625 = !{!626, !627, !628, !629}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !624, file: !325, line: 381, baseType: !332, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !624, file: !325, line: 384, baseType: !395, size: 64, offset: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !624, file: !325, line: 389, baseType: !395, size: 64, offset: 128)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !624, file: !325, line: 392, baseType: !395, size: 64, offset: 192)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !324, file: !325, line: 875, baseType: !232, size: 128, offset: 9088)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !324, file: !325, line: 877, baseType: !632, size: 320, offset: 9216)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !633, line: 86, size: 320, elements: !634)
!633 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!634 = !{!635, !636, !637}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !632, file: !633, line: 87, baseType: !101, size: 32)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !632, file: !633, line: 88, baseType: !232, size: 128, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !632, file: !633, line: 89, baseType: !232, size: 128, offset: 192)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !324, file: !325, line: 878, baseType: !385, size: 192, align: 64, offset: 9536)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !324, file: !325, line: 881, baseType: !640, size: 64, offset: 9728)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !35, line: 733, size: 10240, elements: !642)
!642 = !{!643, !4502}
!643 = !DIDerivedType(tag: DW_TAG_member, scope: !641, file: !35, line: 734, baseType: !644, size: 10240)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !641, file: !35, line: 734, size: 10240, elements: !645)
!645 = !{!646, !650, !664, !4381, !4382, !4383, !4384, !4385, !4386, !4393, !4394, !4395, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4434, !4436, !4439, !4482, !4483, !4484, !4487, !4488, !4489, !4492, !4493, !4494, !4500, !4501}
!646 = !DIDerivedType(tag: DW_TAG_member, scope: !644, file: !35, line: 739, baseType: !647, size: 512, align: 512)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !644, file: !35, line: 739, size: 512, align: 512, elements: !648)
!648 = !{!649}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !647, file: !35, line: 747, baseType: !274, size: 32)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !644, file: !35, line: 750, baseType: !651, size: 128, offset: 512)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !652, line: 218, size: 128, elements: !653)
!652 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!653 = !{!654, !662, !663}
!654 = !DIDerivedType(tag: DW_TAG_member, scope: !651, file: !652, line: 219, baseType: !655, size: 32)
!655 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !651, file: !652, line: 219, size: 32, elements: !656)
!656 = !{!657, !658}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !655, file: !652, line: 220, baseType: !254, size: 32)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !655, file: !652, line: 221, baseType: !659)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !652, line: 197, baseType: !660)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !652, line: 197, elements: !661)
!661 = !{}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !651, file: !652, line: 223, baseType: !7, size: 32, offset: 32)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !651, file: !652, line: 224, baseType: !225, size: 64, offset: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !644, file: !35, line: 752, baseType: !665, size: 64, offset: 640)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{!332, !668, !332, !332, !332, !332}
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !64, line: 994, size: 1856, align: 64, elements: !670)
!670 = !{!671, !685, !686, !688, !689, !690, !693, !694, !770, !985, !994, !4371, !4372, !4373, !4374, !4375, !4376, !4378, !4379, !4380}
!671 = !DIDerivedType(tag: DW_TAG_member, scope: !669, file: !64, line: 995, baseType: !672, size: 128)
!672 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !669, file: !64, line: 995, size: 128, elements: !673)
!673 = !{!674, !675, !684}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !672, file: !64, line: 996, baseType: !354, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !672, file: !64, line: 997, baseType: !676, size: 128, align: 64)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !227, line: 232, size: 128, align: 64, elements: !677)
!677 = !{!678, !680}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !676, file: !227, line: 233, baseType: !679, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !676, file: !227, line: 234, baseType: !681, size: 64, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DISubroutineType(types: !683)
!683 = !{null, !679}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !672, file: !64, line: 998, baseType: !7, size: 32)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !669, file: !64, line: 1005, baseType: !254, size: 32, offset: 128)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !669, file: !64, line: 1006, baseType: !687, size: 32, offset: 160)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !227, line: 156, baseType: !7)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !669, file: !64, line: 1007, baseType: !303, size: 64, offset: 192)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !669, file: !64, line: 1008, baseType: !299, size: 256, offset: 256)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !669, file: !64, line: 1009, baseType: !691, size: 64, offset: 512)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !227, line: 52, baseType: !692)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !507, line: 88, baseType: !311)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !669, file: !64, line: 1010, baseType: !7, size: 32, offset: 576)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !669, file: !64, line: 1011, baseType: !695, size: 256, offset: 640)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !64, line: 948, size: 256, elements: !696)
!696 = !{!697, !720, !759, !760, !768, !769}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !695, file: !64, line: 949, baseType: !698, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !699, line: 34, baseType: !700)
!699 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !699, line: 25, size: 64, elements: !701)
!701 = !{!702}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !700, file: !699, line: 26, baseType: !703, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !704, line: 27, baseType: !705)
!704 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !704, line: 13, size: 64, elements: !706)
!706 = !{!707, !719}
!707 = !DIDerivedType(tag: DW_TAG_member, scope: !705, file: !704, line: 14, baseType: !708, size: 32)
!708 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !705, file: !704, line: 14, size: 32, elements: !709)
!709 = !{!710, !711}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !708, file: !704, line: 15, baseType: !274, size: 32)
!711 = !DIDerivedType(tag: DW_TAG_member, scope: !708, file: !704, line: 16, baseType: !712, size: 32)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !708, file: !704, line: 16, size: 32, elements: !713)
!713 = !{!714, !715}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !712, file: !704, line: 18, baseType: !282, size: 8)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !712, file: !704, line: 19, baseType: !716, size: 24, offset: 8)
!716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !282, size: 24, elements: !717)
!717 = !{!718}
!718 = !DISubrange(count: 3)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !705, file: !704, line: 26, baseType: !266, size: 32, offset: 32)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !695, file: !64, line: 950, baseType: !721, size: 64, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !12, line: 59, size: 768, elements: !723)
!723 = !{!724, !725, !726, !727, !740, !741, !748, !749}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !722, file: !12, line: 61, baseType: !341, size: 32)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !722, file: !12, line: 62, baseType: !7, size: 32, offset: 32)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !722, file: !12, line: 63, baseType: !254, size: 32, offset: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !722, file: !12, line: 65, baseType: !728, size: 256, offset: 128)
!728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !729, size: 256, elements: !738)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !227, line: 194, size: 64, elements: !730)
!730 = !{!731}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !729, file: !227, line: 195, baseType: !732, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !227, line: 198, size: 128, elements: !734)
!734 = !{!735, !736}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !733, file: !227, line: 199, baseType: !732, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !733, file: !227, line: 199, baseType: !737, size: 64, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!738 = !{!739}
!739 = !DISubrange(count: 4)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !722, file: !12, line: 66, baseType: !729, size: 64, offset: 384)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !722, file: !12, line: 68, baseType: !742, size: 192, offset: 448)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !743, line: 41, baseType: !744)
!743 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !743, line: 37, size: 192, elements: !745)
!745 = !{!746, !747}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !744, file: !743, line: 38, baseType: !254, size: 32)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !744, file: !743, line: 39, baseType: !232, size: 128, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !722, file: !12, line: 69, baseType: !676, size: 128, align: 64, offset: 640)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !722, file: !12, line: 70, baseType: !750, offset: 768)
!750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !751, elements: !757)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !12, line: 54, size: 128, elements: !752)
!752 = !{!753, !754}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !751, file: !12, line: 55, baseType: !101, size: 32)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !751, file: !12, line: 56, baseType: !755, size: 64, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !12, line: 56, flags: DIFlagFwdDecl)
!757 = !{!758}
!758 = !DISubrange(count: -1)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !695, file: !64, line: 951, baseType: !11, size: 32, offset: 128)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !695, file: !64, line: 952, baseType: !761, size: 32, offset: 160)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !762, line: 23, baseType: !763)
!762 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !762, line: 21, size: 32, elements: !764)
!764 = !{!765}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !763, file: !762, line: 22, baseType: !766, size: 32)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !227, line: 37, baseType: !767)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !507, line: 49, baseType: !7)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !695, file: !64, line: 952, baseType: !761, size: 32, offset: 192)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !695, file: !64, line: 953, baseType: !101, size: 32, offset: 224)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !669, file: !64, line: 1012, baseType: !771, size: 64, offset: 896)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !773)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !774, line: 110, size: 1472, elements: !775)
!774 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!775 = !{!776, !777, !778, !785, !786, !787, !788, !789, !790, !791, !792, !798, !799, !800, !801, !802, !803, !930, !931, !932, !933, !934, !965, !968, !972, !980}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !773, file: !774, line: 111, baseType: !303, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !773, file: !774, line: 112, baseType: !761, size: 32, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !773, file: !774, line: 113, baseType: !779, size: 32, offset: 96)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !762, line: 28, baseType: !780)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !762, line: 26, size: 32, elements: !781)
!781 = !{!782}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !780, file: !762, line: 27, baseType: !783, size: 32)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !227, line: 38, baseType: !784)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !507, line: 50, baseType: !7)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !773, file: !774, line: 114, baseType: !761, size: 32, offset: 128)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !773, file: !774, line: 115, baseType: !779, size: 32, offset: 160)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !773, file: !774, line: 116, baseType: !761, size: 32, offset: 192)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !773, file: !774, line: 117, baseType: !779, size: 32, offset: 224)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !773, file: !774, line: 118, baseType: !761, size: 32, offset: 256)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !773, file: !774, line: 119, baseType: !779, size: 32, offset: 288)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !773, file: !774, line: 120, baseType: !7, size: 32, offset: 320)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !773, file: !774, line: 121, baseType: !793, size: 64, offset: 384)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !794, line: 24, baseType: !795)
!794 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !794, line: 24, size: 64, elements: !796)
!796 = !{!797}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !795, file: !794, line: 24, baseType: !393, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !773, file: !774, line: 122, baseType: !793, size: 64, offset: 448)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !773, file: !774, line: 123, baseType: !793, size: 64, offset: 512)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !773, file: !774, line: 124, baseType: !793, size: 64, offset: 576)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !773, file: !774, line: 125, baseType: !793, size: 64, offset: 640)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !773, file: !774, line: 127, baseType: !286, size: 8, offset: 704)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !773, file: !774, line: 129, baseType: !804, size: 64, offset: 768)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !806, line: 195, size: 1728, elements: !807)
!806 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!807 = !{!808, !809, !814, !819, !828, !831, !832, !839, !840, !841, !842, !845, !846, !847, !849, !850, !894, !915}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !805, file: !806, line: 196, baseType: !341, size: 32)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !805, file: !806, line: 197, baseType: !810, size: 32, offset: 32)
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !806, line: 28, baseType: !811)
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !227, line: 104, baseType: !812)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !283, line: 20, baseType: !813)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !285, line: 26, baseType: !101)
!814 = !DIDerivedType(tag: DW_TAG_member, scope: !805, file: !806, line: 198, baseType: !815, size: 192, offset: 64)
!815 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !805, file: !806, line: 198, size: 192, elements: !816)
!816 = !{!817, !818}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !815, file: !806, line: 199, baseType: !232, size: 128)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !815, file: !806, line: 200, baseType: !385, size: 192, align: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !805, file: !806, line: 205, baseType: !820, size: 320, offset: 256)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !821, line: 48, size: 320, elements: !822)
!821 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!822 = !{!823, !824, !825, !826, !827}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !820, file: !821, line: 49, baseType: !303, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !820, file: !821, line: 55, baseType: !303, size: 64, offset: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !820, file: !821, line: 57, baseType: !315, size: 32, offset: 128)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !820, file: !821, line: 59, baseType: !313, size: 32, offset: 160)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !820, file: !821, line: 60, baseType: !232, size: 128, offset: 192)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !805, file: !806, line: 206, baseType: !829, size: 64, offset: 576)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !806, line: 206, flags: DIFlagFwdDecl)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !805, file: !806, line: 207, baseType: !225, size: 64, offset: 640)
!832 = !DIDerivedType(tag: DW_TAG_member, scope: !805, file: !806, line: 208, baseType: !833, size: 64, offset: 704)
!833 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !805, file: !806, line: 208, size: 64, elements: !834)
!834 = !{!835, !838}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !833, file: !806, line: 209, baseType: !836, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !837, line: 8, baseType: !310)
!837 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!838 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !833, file: !806, line: 210, baseType: !836, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !805, file: !806, line: 212, baseType: !836, size: 64, offset: 768)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !805, file: !806, line: 213, baseType: !761, size: 32, offset: 832)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !805, file: !806, line: 214, baseType: !779, size: 32, offset: 864)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !805, file: !806, line: 215, baseType: !843, size: 32, offset: 896)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !806, line: 31, baseType: !844)
!844 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !227, line: 110, baseType: !335)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !805, file: !806, line: 216, baseType: !294, size: 16, offset: 928)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !805, file: !806, line: 217, baseType: !294, size: 16, offset: 944)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !805, file: !806, line: 221, baseType: !848, size: 16, offset: 960)
!848 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !805, file: !806, line: 228, baseType: !332, size: 64, offset: 1024)
!850 = !DIDerivedType(tag: DW_TAG_member, scope: !805, file: !806, line: 245, baseType: !851, size: 320, offset: 1088)
!851 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !805, file: !806, line: 245, size: 320, elements: !852)
!852 = !{!853, !885}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !851, file: !806, line: 246, baseType: !854, size: 320)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !806, line: 114, size: 320, elements: !855)
!855 = !{!856, !857, !870, !873, !882}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !854, file: !806, line: 116, baseType: !332, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, scope: !854, file: !806, line: 117, baseType: !858, size: 64, offset: 64)
!858 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !854, file: !806, line: 117, size: 64, elements: !859)
!859 = !{!860, !869}
!860 = !DIDerivedType(tag: DW_TAG_member, scope: !858, file: !806, line: 118, baseType: !861, size: 64)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !858, file: !806, line: 118, size: 64, elements: !862)
!862 = !{!863, !864}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !861, file: !806, line: 120, baseType: !292, size: 16)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !861, file: !806, line: 121, baseType: !865, size: 48, offset: 16)
!865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !866, size: 48, elements: !867)
!866 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!867 = !{!868}
!868 = !DISubrange(count: 6)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !858, file: !806, line: 127, baseType: !332, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !854, file: !806, line: 129, baseType: !871, size: 64, offset: 128)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !806, line: 102, flags: DIFlagFwdDecl)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !854, file: !806, line: 130, baseType: !874, size: 64, offset: 192)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !806, line: 108, size: 192, elements: !876)
!876 = !{!877, !878, !879}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !875, file: !806, line: 109, baseType: !676, size: 128, align: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !875, file: !806, line: 110, baseType: !341, size: 32, offset: 128)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !875, file: !806, line: 111, baseType: !880, size: 8, offset: 160)
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !227, line: 35, baseType: !881)
!881 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !854, file: !806, line: 131, baseType: !883, size: 64, offset: 256)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !866)
!885 = !DIDerivedType(tag: DW_TAG_member, scope: !851, file: !806, line: 247, baseType: !886, size: 320)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !851, file: !806, line: 247, size: 320, elements: !887)
!887 = !{!888, !889, !890, !891, !892}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !886, file: !806, line: 248, baseType: !332, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !886, file: !806, line: 249, baseType: !332, size: 64, offset: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !886, file: !806, line: 250, baseType: !871, size: 64, offset: 128)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !886, file: !806, line: 251, baseType: !874, size: 64, offset: 192)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !886, file: !806, line: 252, baseType: !893, size: 64, offset: 256)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, scope: !805, file: !806, line: 260, baseType: !895, size: 256, offset: 1408)
!895 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !805, file: !806, line: 260, size: 256, elements: !896)
!896 = !{!897, !903}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !895, file: !806, line: 261, baseType: !898, size: 256)
!898 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !806, line: 134, size: 256, elements: !899)
!899 = !{!900, !901}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !898, file: !806, line: 135, baseType: !225, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !898, file: !806, line: 136, baseType: !902, size: 256)
!902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 256, elements: !738)
!903 = !DIDerivedType(tag: DW_TAG_member, scope: !895, file: !806, line: 262, baseType: !904, size: 256)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !895, file: !806, line: 262, size: 256, elements: !905)
!905 = !{!906, !907}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !904, file: !806, line: 264, baseType: !232, size: 128)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !904, file: !806, line: 265, baseType: !908, size: 128, offset: 128)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !909, line: 22, size: 128, elements: !910)
!909 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!910 = !{!911, !914}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !908, file: !909, line: 23, baseType: !912, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !909, line: 23, flags: DIFlagFwdDecl)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !908, file: !909, line: 24, baseType: !332, size: 64, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !805, file: !806, line: 280, baseType: !916, size: 64, offset: 1664)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !806, line: 176, size: 192, elements: !918)
!918 = !{!919, !928, !929}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !917, file: !806, line: 177, baseType: !920, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !806, line: 171, baseType: !921)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DISubroutineType(types: !923)
!923 = !{!101, !804, !924, !926, !804}
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !872)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !898)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !917, file: !806, line: 178, baseType: !804, size: 64, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !917, file: !806, line: 179, baseType: !871, size: 64, offset: 128)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !773, file: !774, line: 130, baseType: !804, size: 64, offset: 832)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !773, file: !774, line: 131, baseType: !804, size: 64, offset: 896)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !773, file: !774, line: 132, baseType: !804, size: 64, offset: 960)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !773, file: !774, line: 135, baseType: !225, size: 64, offset: 1024)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !773, file: !774, line: 137, baseType: !935, size: 64, offset: 1088)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !937, line: 14, size: 1088, elements: !938)
!937 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!938 = !{!939, !940, !949, !950, !951, !952, !953, !954}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !936, file: !937, line: 15, baseType: !341, size: 32)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !936, file: !937, line: 17, baseType: !941, size: 320, offset: 64)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !942, line: 22, size: 320, elements: !943)
!942 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!943 = !{!944, !945, !946, !947}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !941, file: !942, line: 23, baseType: !313, size: 32)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !941, file: !942, line: 24, baseType: !309, size: 64, offset: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !941, file: !942, line: 26, baseType: !232, size: 128, offset: 128)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !941, file: !942, line: 28, baseType: !948, size: 64, offset: 256)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !936, file: !937, line: 19, baseType: !332, size: 64, offset: 384)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !936, file: !937, line: 20, baseType: !303, size: 64, offset: 448)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !936, file: !937, line: 23, baseType: !733, size: 128, offset: 512)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !936, file: !937, line: 24, baseType: !761, size: 32, offset: 640)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !936, file: !937, line: 29, baseType: !303, size: 64, offset: 704)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !936, file: !937, line: 36, baseType: !955, size: 320, offset: 768)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !956, line: 15, size: 320, elements: !957)
!956 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!957 = !{!958, !959, !960, !961, !962, !963, !964}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !955, file: !956, line: 16, baseType: !313, size: 32)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !955, file: !956, line: 18, baseType: !101, size: 32, offset: 32)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !955, file: !956, line: 19, baseType: !101, size: 32, offset: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !955, file: !956, line: 20, baseType: !101, size: 32, offset: 96)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !955, file: !956, line: 21, baseType: !101, size: 32, offset: 128)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !955, file: !956, line: 22, baseType: !332, size: 64, offset: 192)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !955, file: !956, line: 23, baseType: !332, size: 64, offset: 256)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !773, file: !774, line: 138, baseType: !966, size: 64, offset: 1152)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !762, line: 18, flags: DIFlagFwdDecl)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !773, file: !774, line: 139, baseType: !969, size: 64, offset: 1216)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !971, line: 16, flags: DIFlagFwdDecl)
!971 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!972 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !773, file: !774, line: 140, baseType: !973, size: 64, offset: 1280)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !774, line: 25, size: 64, elements: !975)
!975 = !{!976, !977, !978}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !974, file: !774, line: 26, baseType: !274, size: 32)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !974, file: !774, line: 27, baseType: !101, size: 32, offset: 32)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !974, file: !774, line: 28, baseType: !979, offset: 64)
!979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !779, elements: !757)
!980 = !DIDerivedType(tag: DW_TAG_member, scope: !773, file: !774, line: 142, baseType: !981, size: 128, offset: 1344)
!981 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !773, file: !774, line: 142, size: 128, elements: !982)
!982 = !{!983, !984}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !981, file: !774, line: 143, baseType: !101, size: 32)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !981, file: !774, line: 144, baseType: !676, size: 128, align: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !669, file: !64, line: 1013, baseType: !986, size: 256, offset: 960)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !64, line: 970, size: 256, elements: !987)
!987 = !{!988, !989, !990, !991, !992, !993}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !986, file: !64, line: 971, baseType: !332, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !986, file: !64, line: 972, baseType: !7, size: 32, offset: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !986, file: !64, line: 973, baseType: !7, size: 32, offset: 96)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !986, file: !64, line: 974, baseType: !7, size: 32, offset: 128)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !986, file: !64, line: 975, baseType: !7, size: 32, offset: 160)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !986, file: !64, line: 976, baseType: !691, size: 64, offset: 192)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !669, file: !64, line: 1014, baseType: !995, size: 128, offset: 1216)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !996, line: 8, size: 128, elements: !997)
!996 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!997 = !{!998, !4370}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !995, file: !996, line: 9, baseType: !999, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1001, line: 70, size: 256, elements: !1002)
!1001 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1002 = !{!1003, !4367, !4368, !4369}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1000, file: !1001, line: 71, baseType: !1004, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1006, line: 82, size: 1536, elements: !1007)
!1006 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!1007 = !{!1008, !1009, !1014, !1022, !1023, !1038, !4334, !4336, !4349, !4350, !4351, !4352, !4353, !4359, !4360, !4361}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !1005, file: !1006, line: 84, baseType: !7, size: 32)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !1005, file: !1006, line: 85, baseType: !1010, size: 32, offset: 32)
!1010 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !510, line: 275, baseType: !1011)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !510, line: 275, size: 32, elements: !1012)
!1012 = !{!1013}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1011, file: !510, line: 275, baseType: !514, size: 32)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1005, file: !1006, line: 86, baseType: !1015, size: 128, offset: 64)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1016, line: 38, size: 128, elements: !1017)
!1016 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1017 = !{!1018, !1020}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1015, file: !1016, line: 39, baseType: !1019, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1015, file: !1016, line: 39, baseType: !1021, size: 64, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !1005, file: !1006, line: 87, baseType: !1004, size: 64, offset: 192)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1005, file: !1006, line: 88, baseType: !1024, size: 128, offset: 256)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !1006, line: 49, size: 128, elements: !1025)
!1025 = !{!1026, !1035}
!1026 = !DIDerivedType(tag: DW_TAG_member, scope: !1024, file: !1006, line: 50, baseType: !1027, size: 64)
!1027 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1024, file: !1006, line: 50, size: 64, elements: !1028)
!1028 = !{!1029, !1034}
!1029 = !DIDerivedType(tag: DW_TAG_member, scope: !1027, file: !1006, line: 51, baseType: !1030, size: 64)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1027, file: !1006, line: 51, size: 64, elements: !1031)
!1031 = !{!1032, !1033}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1030, file: !1006, line: 52, baseType: !335, size: 32)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1030, file: !1006, line: 52, baseType: !335, size: 32, offset: 32)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1027, file: !1006, line: 54, baseType: !393, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1024, file: !1006, line: 56, baseType: !1036, size: 64, offset: 64)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !286)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !1005, file: !1006, line: 89, baseType: !1039, size: 64, offset: 384)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !64, line: 641, size: 4800, elements: !1041)
!1041 = !{!1042, !1044, !1045, !1046, !1047, !1048, !1049, !1052, !1053, !1250, !4150, !4151, !4152, !4153, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4316, !4319, !4320, !4321, !4330, !4331, !4332, !4333}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1040, file: !64, line: 642, baseType: !1043, size: 16)
!1043 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !227, line: 24, baseType: !294)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1040, file: !64, line: 643, baseType: !294, size: 16, offset: 16)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1040, file: !64, line: 644, baseType: !761, size: 32, offset: 32)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1040, file: !64, line: 645, baseType: !232, size: 128, offset: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1040, file: !64, line: 646, baseType: !779, size: 32, offset: 192)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1040, file: !64, line: 647, baseType: !7, size: 32, offset: 224)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1040, file: !64, line: 650, baseType: !1050, size: 64, offset: 256)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !64, line: 607, flags: DIFlagFwdDecl)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1040, file: !64, line: 651, baseType: !1050, size: 64, offset: 320)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1040, file: !64, line: 654, baseType: !1054, size: 64, offset: 384)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1056)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !64, line: 1966, size: 2048, align: 512, elements: !1057)
!1057 = !{!1058, !1062, !1075, !1081, !1085, !1089, !1093, !1097, !1101, !1105, !1109, !1110, !1116, !1120, !1158, !1189, !1199, !1205, !1209, !1213, !1217, !1221, !1225, !1231, !1235}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1056, file: !64, line: 1967, baseType: !1059, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!1004, !1039, !1004, !7}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1056, file: !64, line: 1968, baseType: !1063, size: 64, offset: 64)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!883, !1004, !1039, !1066}
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1068, line: 10, size: 128, elements: !1069)
!1068 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!1069 = !{!1070, !1074}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1067, file: !1068, line: 11, baseType: !1071, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{null, !225}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1067, file: !1068, line: 12, baseType: !225, size: 64, offset: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1056, file: !64, line: 1969, baseType: !1076, size: 64, offset: 128)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!101, !1079, !1039, !101}
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !794, line: 42, flags: DIFlagFwdDecl)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1056, file: !64, line: 1970, baseType: !1082, size: 64, offset: 192)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!1050, !1039, !101, !880}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1056, file: !64, line: 1972, baseType: !1086, size: 64, offset: 256)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!101, !1004, !893, !101}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1056, file: !64, line: 1974, baseType: !1090, size: 64, offset: 320)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!101, !1079, !1039, !1004, !1043, !880}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1056, file: !64, line: 1976, baseType: !1094, size: 64, offset: 384)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!101, !1004, !1039, !1004}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1056, file: !64, line: 1977, baseType: !1098, size: 64, offset: 448)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!101, !1039, !1004}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1056, file: !64, line: 1978, baseType: !1102, size: 64, offset: 512)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!101, !1079, !1039, !1004, !883}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1056, file: !64, line: 1980, baseType: !1106, size: 64, offset: 576)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!101, !1079, !1039, !1004, !1043}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1056, file: !64, line: 1982, baseType: !1098, size: 64, offset: 640)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1056, file: !64, line: 1983, baseType: !1111, size: 64, offset: 704)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!101, !1079, !1039, !1004, !1043, !1114}
!1114 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !227, line: 21, baseType: !1115)
!1115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !227, line: 18, baseType: !335)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1056, file: !64, line: 1985, baseType: !1117, size: 64, offset: 768)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!101, !1079, !1039, !1004, !1039, !1004, !7}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1056, file: !64, line: 1987, baseType: !1121, size: 64, offset: 832)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!101, !1079, !1004, !1124}
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !64, line: 226, size: 640, elements: !1126)
!1126 = !{!1127, !1128, !1129, !1139, !1148, !1149, !1155, !1156, !1157}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1125, file: !64, line: 227, baseType: !7, size: 32)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1125, file: !64, line: 228, baseType: !1043, size: 16, offset: 32)
!1129 = !DIDerivedType(tag: DW_TAG_member, scope: !1125, file: !64, line: 241, baseType: !1130, size: 32, offset: 64)
!1130 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1125, file: !64, line: 241, size: 32, elements: !1131)
!1131 = !{!1132, !1133}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1130, file: !64, line: 242, baseType: !761, size: 32)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1130, file: !64, line: 243, baseType: !1134, size: 32)
!1134 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1135, line: 16, baseType: !1136)
!1135 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1135, line: 14, size: 32, elements: !1137)
!1137 = !{!1138}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1136, file: !1135, line: 15, baseType: !766, size: 32)
!1139 = !DIDerivedType(tag: DW_TAG_member, scope: !1125, file: !64, line: 245, baseType: !1140, size: 32, offset: 96)
!1140 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1125, file: !64, line: 245, size: 32, elements: !1141)
!1141 = !{!1142, !1143}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1140, file: !64, line: 246, baseType: !779, size: 32)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1140, file: !64, line: 247, baseType: !1144, size: 32)
!1144 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1135, line: 20, baseType: !1145)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1135, line: 18, size: 32, elements: !1146)
!1146 = !{!1147}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1145, file: !1135, line: 19, baseType: !783, size: 32)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1125, file: !64, line: 249, baseType: !691, size: 64, offset: 128)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1125, file: !64, line: 250, baseType: !1150, size: 128, offset: 192)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !837, line: 13, size: 128, elements: !1151)
!1151 = !{!1152, !1153}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1150, file: !837, line: 14, baseType: !836, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1150, file: !837, line: 15, baseType: !1154, size: 64, offset: 64)
!1154 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1125, file: !64, line: 251, baseType: !1150, size: 128, offset: 320)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1125, file: !64, line: 252, baseType: !1150, size: 128, offset: 448)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1125, file: !64, line: 259, baseType: !668, size: 64, offset: 576)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1056, file: !64, line: 1988, baseType: !1159, size: 64, offset: 896)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!101, !1079, !1162, !1164, !335, !7}
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !995)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1166, line: 22, size: 1280, elements: !1167)
!1166 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1167 = !{!1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1165, file: !1166, line: 23, baseType: !335, size: 32)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1165, file: !1166, line: 24, baseType: !1043, size: 16, offset: 32)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1165, file: !1166, line: 25, baseType: !7, size: 32, offset: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1165, file: !1166, line: 26, baseType: !844, size: 32, offset: 96)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1165, file: !1166, line: 27, baseType: !393, size: 64, offset: 128)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1165, file: !1166, line: 28, baseType: !393, size: 64, offset: 192)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1165, file: !1166, line: 41, baseType: !393, size: 64, offset: 256)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1165, file: !1166, line: 42, baseType: !1114, size: 32, offset: 320)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1165, file: !1166, line: 43, baseType: !1114, size: 32, offset: 352)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1165, file: !1166, line: 44, baseType: !761, size: 32, offset: 384)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1165, file: !1166, line: 45, baseType: !779, size: 32, offset: 416)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1165, file: !1166, line: 46, baseType: !691, size: 64, offset: 448)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1165, file: !1166, line: 47, baseType: !1150, size: 128, offset: 512)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1165, file: !1166, line: 48, baseType: !1150, size: 128, offset: 640)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1165, file: !1166, line: 49, baseType: !1150, size: 128, offset: 768)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1165, file: !1166, line: 50, baseType: !1150, size: 128, offset: 896)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1165, file: !1166, line: 51, baseType: !393, size: 64, offset: 1024)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1165, file: !1166, line: 52, baseType: !393, size: 64, offset: 1088)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1165, file: !1166, line: 53, baseType: !335, size: 32, offset: 1152)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1165, file: !1166, line: 54, baseType: !335, size: 32, offset: 1184)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1165, file: !1166, line: 55, baseType: !393, size: 64, offset: 1216)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1056, file: !64, line: 1990, baseType: !1190, size: 64, offset: 960)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!1193, !1004, !893, !1196}
!1193 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !227, line: 66, baseType: !1194)
!1194 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !507, line: 73, baseType: !1195)
!1195 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !507, line: 15, baseType: !1154)
!1196 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !227, line: 61, baseType: !1197)
!1197 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !507, line: 72, baseType: !1198)
!1198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !507, line: 16, baseType: !332)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1056, file: !64, line: 1991, baseType: !1200, size: 64, offset: 1024)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{!101, !1039, !1203, !393, !393}
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !64, line: 55, flags: DIFlagFwdDecl)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1056, file: !64, line: 1993, baseType: !1206, size: 64, offset: 1088)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{!101, !1039, !101}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1056, file: !64, line: 1994, baseType: !1210, size: 64, offset: 1152)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!101, !1039, !1004, !668, !7, !1043}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1056, file: !64, line: 1997, baseType: !1214, size: 64, offset: 1216)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{!101, !1079, !1039, !668, !1043}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1056, file: !64, line: 1999, baseType: !1218, size: 64, offset: 1280)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!1050, !1079, !1004, !101}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1056, file: !64, line: 2001, baseType: !1222, size: 64, offset: 1344)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!101, !1079, !1004, !1050, !101}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1056, file: !64, line: 2003, baseType: !1226, size: 64, offset: 1408)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{!101, !1079, !1004, !1229}
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !64, line: 76, flags: DIFlagFwdDecl)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1056, file: !64, line: 2005, baseType: !1232, size: 64, offset: 1472)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!101, !1004, !1229}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1056, file: !64, line: 2006, baseType: !1236, size: 64, offset: 1536)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{!1239, !1039}
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !64, line: 3192, size: 192, elements: !1241)
!1241 = !{!1242, !1249}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1240, file: !64, line: 3193, baseType: !1243, size: 128)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1244, line: 296, size: 128, elements: !1245)
!1244 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1245 = !{!1246, !1247, !1248}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1243, file: !1244, line: 297, baseType: !254, size: 32)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1243, file: !1244, line: 299, baseType: !226, size: 32, offset: 32)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1243, file: !1244, line: 300, baseType: !225, size: 64, offset: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1240, file: !64, line: 3194, baseType: !335, size: 32, offset: 128)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1040, file: !64, line: 655, baseType: !1251, size: 64, offset: 448)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !64, line: 1190, size: 10752, elements: !1253)
!1253 = !{!1254, !1255, !1256, !1257, !1258, !1259, !2531, !2663, !2703, !2786, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2803, !2807, !2808, !3945, !3951, !3952, !3955, !3956, !3957, !3998, !4024, !4025, !4026, !4027, !4028, !4029, !4032, !4033, !4042, !4043, !4044, !4045, !4104, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1252, file: !64, line: 1191, baseType: !232, size: 128)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1252, file: !64, line: 1192, baseType: !1114, size: 32, offset: 128)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1252, file: !64, line: 1193, baseType: !286, size: 8, offset: 160)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1252, file: !64, line: 1194, baseType: !332, size: 64, offset: 192)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1252, file: !64, line: 1195, baseType: !691, size: 64, offset: 256)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1252, file: !64, line: 1196, baseType: !1260, size: 64, offset: 320)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !64, line: 2366, size: 576, elements: !1262)
!1262 = !{!1263, !1264, !1265, !1272, !1276, !1280, !1284, !2519, !2520, !2521, !2523, !2524, !2525, !2527, !2528, !2529, !2530}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1261, file: !64, line: 2367, baseType: !883, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1261, file: !64, line: 2368, baseType: !101, size: 32, offset: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1261, file: !64, line: 2376, baseType: !1266, size: 64, offset: 128)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!101, !1269}
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1271, line: 32, flags: DIFlagFwdDecl)
!1271 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1261, file: !64, line: 2377, baseType: !1273, size: 64, offset: 192)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1275)
!1275 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !64, line: 75, flags: DIFlagFwdDecl)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1261, file: !64, line: 2378, baseType: !1277, size: 64, offset: 256)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{!1004, !1260, !101, !883, !225}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1261, file: !64, line: 2380, baseType: !1281, size: 64, offset: 320)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{null, !1251}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1261, file: !64, line: 2381, baseType: !1285, size: 64, offset: 384)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !20, line: 402, size: 9216, align: 512, elements: !1287)
!1287 = !{!1288, !1289, !1290, !1294, !2162, !2188, !2189, !2190, !2191, !2195, !2198, !2199, !2200, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2268, !2272, !2292, !2312, !2313, !2314, !2315, !2324, !2347, !2348, !2351, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2365, !2366, !2477, !2485, !2486, !2487, !2489, !2493, !2494, !2498, !2499, !2500, !2501, !2503, !2504, !2505, !2512, !2513, !2514, !2518}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1286, file: !20, line: 403, baseType: !19, size: 32)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1286, file: !20, line: 406, baseType: !232, size: 128, offset: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1286, file: !20, line: 409, baseType: !1291, size: 448, offset: 192)
!1291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !866, size: 448, elements: !1292)
!1292 = !{!1293}
!1293 = !DISubrange(count: 56)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1286, file: !20, line: 417, baseType: !1295, size: 768, offset: 640)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !20, line: 45, size: 768, elements: !1296)
!1296 = !{!1297, !2155, !2156, !2157, !2160}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1295, file: !20, line: 46, baseType: !1298, size: 512)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1299, line: 64, size: 512, elements: !1300)
!1299 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1300 = !{!1301, !1302, !1303, !1305, !1349, !2011, !2145, !2150, !2151, !2152, !2153, !2154}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1298, file: !1299, line: 65, baseType: !883, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1298, file: !1299, line: 66, baseType: !232, size: 128, offset: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1298, file: !1299, line: 67, baseType: !1304, size: 64, offset: 192)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1298, file: !1299, line: 68, baseType: !1306, size: 64, offset: 256)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1299, line: 168, size: 768, elements: !1308)
!1308 = !{!1309, !1310, !1311, !1312}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1307, file: !1299, line: 169, baseType: !232, size: 128)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1307, file: !1299, line: 170, baseType: !254, size: 32, offset: 128)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1307, file: !1299, line: 171, baseType: !1298, size: 512, offset: 192)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1307, file: !1299, line: 172, baseType: !1313, size: 64, offset: 704)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1315)
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1299, line: 133, size: 192, elements: !1316)
!1316 = !{!1317, !1324, !1329}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1315, file: !1299, line: 134, baseType: !1318, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1319)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DISubroutineType(types: !1321)
!1321 = !{!101, !1322}
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1298)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1315, file: !1299, line: 135, baseType: !1325, size: 64, offset: 64)
!1325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1326)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DISubroutineType(types: !1328)
!1328 = !{!883, !1322}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1315, file: !1299, line: 136, baseType: !1330, size: 64, offset: 128)
!1330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1331)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!101, !1322, !1334}
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1299, line: 125, size: 20736, elements: !1336)
!1336 = !{!1337, !1339, !1343, !1344, !1348}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1335, file: !1299, line: 126, baseType: !1338, size: 192)
!1338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !893, size: 192, elements: !717)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1335, file: !1299, line: 127, baseType: !1340, size: 4096, offset: 192)
!1340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !893, size: 4096, elements: !1341)
!1341 = !{!1342}
!1342 = !DISubrange(count: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1335, file: !1299, line: 128, baseType: !101, size: 32, offset: 4288)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1335, file: !1299, line: 129, baseType: !1345, size: 16384, offset: 4320)
!1345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !866, size: 16384, elements: !1346)
!1346 = !{!1347}
!1347 = !DISubrange(count: 2048)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1335, file: !1299, line: 130, baseType: !101, size: 32, offset: 20704)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1298, file: !1299, line: 69, baseType: !1350, size: 64, offset: 320)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1352)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1299, line: 116, size: 384, elements: !1353)
!1353 = !{!1354, !1358, !1377, !1971, !2001, !2005}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1352, file: !1299, line: 117, baseType: !1355, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{null, !1304}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1352, file: !1299, line: 118, baseType: !1359, size: 64, offset: 64)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1361)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1362, line: 254, size: 128, elements: !1363)
!1362 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1363 = !{!1364, !1373}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1361, file: !1362, line: 255, baseType: !1365, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!1193, !1304, !1368, !893}
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1362, line: 30, size: 128, elements: !1370)
!1370 = !{!1371, !1372}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1369, file: !1362, line: 31, baseType: !883, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1369, file: !1362, line: 32, baseType: !1043, size: 16, offset: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1361, file: !1362, line: 256, baseType: !1374, size: 64, offset: 64)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!1193, !1304, !1368, !883, !1196}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1352, file: !1299, line: 119, baseType: !1378, size: 64, offset: 128)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1381)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1362, line: 84, size: 320, elements: !1382)
!1382 = !{!1383, !1384, !1388, !1967, !1969}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1381, file: !1362, line: 85, baseType: !883, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1381, file: !1362, line: 86, baseType: !1385, size: 64, offset: 64)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{!1043, !1304, !1368, !101}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1381, file: !1362, line: 88, baseType: !1389, size: 64, offset: 128)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DISubroutineType(types: !1391)
!1391 = !{!1043, !1304, !1392, !101}
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1362, line: 175, size: 512, elements: !1394)
!1394 = !{!1395, !1396, !1397, !1398, !1958, !1962, !1963}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1393, file: !1362, line: 176, baseType: !1369, size: 128)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1393, file: !1362, line: 177, baseType: !1196, size: 64, offset: 128)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1393, file: !1362, line: 178, baseType: !225, size: 64, offset: 192)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1393, file: !1362, line: 179, baseType: !1399, size: 64, offset: 256)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!1402}
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !64, line: 472, size: 1536, align: 64, elements: !1404)
!1404 = !{!1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1950, !1951, !1952, !1955, !1956, !1957}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1403, file: !64, line: 473, baseType: !1039, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1403, file: !64, line: 474, baseType: !1243, size: 128, offset: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1403, file: !64, line: 475, baseType: !820, size: 320, offset: 192)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1403, file: !64, line: 476, baseType: !226, size: 32, offset: 512)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1403, file: !64, line: 477, baseType: !274, size: 32, offset: 544)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1403, file: !64, line: 482, baseType: !523, size: 128, offset: 576)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1403, file: !64, line: 483, baseType: !332, size: 64, offset: 704)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1403, file: !64, line: 484, baseType: !332, size: 64, offset: 768)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1403, file: !64, line: 485, baseType: !1414, size: 64, offset: 832)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1416)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !64, line: 404, size: 1280, elements: !1417)
!1417 = !{!1418, !1720, !1790, !1794, !1798, !1804, !1810, !1814, !1819, !1823, !1827, !1831, !1914, !1918, !1922, !1926, !1931, !1935, !1942, !1946}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1416, file: !64, line: 405, baseType: !1419, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{!101, !1422, !1718}
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !35, line: 74, size: 512, align: 128, elements: !1424)
!1424 = !{!1425, !1426, !1712, !1717}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1423, file: !35, line: 75, baseType: !332, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, scope: !1423, file: !35, line: 83, baseType: !1427, size: 320, offset: 64)
!1427 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1423, file: !35, line: 83, size: 320, elements: !1428)
!1428 = !{!1429, !1450, !1464, !1468, !1711}
!1429 = !DIDerivedType(tag: DW_TAG_member, scope: !1427, file: !35, line: 84, baseType: !1430, size: 320)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1427, file: !35, line: 84, size: 320, elements: !1431)
!1431 = !{!1432, !1443, !1444, !1449}
!1432 = !DIDerivedType(tag: DW_TAG_member, scope: !1430, file: !35, line: 90, baseType: !1433, size: 128)
!1433 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1430, file: !35, line: 90, size: 128, elements: !1434)
!1434 = !{!1435, !1436, !1441, !1442}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1433, file: !35, line: 91, baseType: !232, size: 128)
!1436 = !DIDerivedType(tag: DW_TAG_member, scope: !1433, file: !35, line: 94, baseType: !1437, size: 128)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1433, file: !35, line: 94, size: 128, elements: !1438)
!1438 = !{!1439, !1440}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1437, file: !35, line: 96, baseType: !225, size: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1437, file: !35, line: 98, baseType: !7, size: 32, offset: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1433, file: !35, line: 102, baseType: !232, size: 128)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1433, file: !35, line: 103, baseType: !232, size: 128)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1430, file: !35, line: 106, baseType: !1402, size: 64, offset: 128)
!1444 = !DIDerivedType(tag: DW_TAG_member, scope: !1430, file: !35, line: 107, baseType: !1445, size: 64, offset: 192)
!1445 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1430, file: !35, line: 107, size: 64, elements: !1446)
!1446 = !{!1447, !1448}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1445, file: !35, line: 108, baseType: !332, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1445, file: !35, line: 109, baseType: !332, size: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1430, file: !35, line: 117, baseType: !332, size: 64, offset: 256)
!1450 = !DIDerivedType(tag: DW_TAG_member, scope: !1427, file: !35, line: 119, baseType: !1451, size: 320)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1427, file: !35, line: 119, size: 320, elements: !1452)
!1452 = !{!1453, !1454, !1457, !1458, !1459}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1451, file: !35, line: 124, baseType: !332, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1451, file: !35, line: 125, baseType: !1455, size: 64, offset: 64)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !35, line: 125, flags: DIFlagFwdDecl)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1451, file: !35, line: 126, baseType: !332, size: 64, offset: 128)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1451, file: !35, line: 127, baseType: !332, size: 64, offset: 192)
!1459 = !DIDerivedType(tag: DW_TAG_member, scope: !1451, file: !35, line: 128, baseType: !1460, size: 64, offset: 256)
!1460 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1451, file: !35, line: 128, size: 64, elements: !1461)
!1461 = !{!1462, !1463}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1460, file: !35, line: 133, baseType: !332, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1460, file: !35, line: 138, baseType: !303, size: 64)
!1464 = !DIDerivedType(tag: DW_TAG_member, scope: !1427, file: !35, line: 141, baseType: !1465, size: 64)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1427, file: !35, line: 141, size: 64, elements: !1466)
!1466 = !{!1467}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1465, file: !35, line: 142, baseType: !332, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, scope: !1427, file: !35, line: 144, baseType: !1469, size: 128)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1427, file: !35, line: 144, size: 128, elements: !1470)
!1470 = !{!1471, !1710}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1469, file: !35, line: 146, baseType: !1472, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !27, line: 126, size: 1216, elements: !1474)
!1474 = !{!1475, !1485, !1506, !1517, !1518, !1519, !1520, !1692, !1693, !1694}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1473, file: !27, line: 127, baseType: !1476, size: 384)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !27, line: 21, size: 384, elements: !1477)
!1477 = !{!1478, !1479, !1481, !1482, !1483, !1484}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1476, file: !27, line: 22, baseType: !332, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1476, file: !27, line: 23, baseType: !1480, size: 64, offset: 64)
!1480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !332)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1476, file: !27, line: 24, baseType: !1480, size: 64, offset: 128)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1476, file: !27, line: 25, baseType: !332, size: 64, offset: 192)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1476, file: !27, line: 26, baseType: !332, size: 64, offset: 256)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1476, file: !27, line: 27, baseType: !332, size: 64, offset: 320)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1473, file: !27, line: 128, baseType: !1486, size: 128, offset: 384)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1487, line: 105, size: 128, elements: !1488)
!1487 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1488 = !{!1489, !1490}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1486, file: !1487, line: 110, baseType: !332, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1486, file: !1487, line: 118, baseType: !1491, size: 64, offset: 64)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1487, line: 95, size: 448, elements: !1493)
!1493 = !{!1494, !1495, !1501, !1502, !1503, !1504, !1505}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1492, file: !1487, line: 96, baseType: !303, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1492, file: !1487, line: 97, baseType: !1496, size: 64, offset: 64)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1487, line: 60, baseType: !1498)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{null, !1500}
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1492, file: !1487, line: 98, baseType: !1496, size: 64, offset: 128)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1492, file: !1487, line: 99, baseType: !880, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1492, file: !1487, line: 100, baseType: !880, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1492, file: !1487, line: 101, baseType: !676, size: 128, align: 64, offset: 256)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1492, file: !1487, line: 102, baseType: !1500, size: 64, offset: 384)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1473, file: !27, line: 129, baseType: !1507, size: 256, offset: 512)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1508, line: 26, size: 256, elements: !1509)
!1508 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1509 = !{!1510, !1511}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1507, file: !1508, line: 27, baseType: !7, size: 32)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1507, file: !1508, line: 28, baseType: !1512, size: 192, offset: 64)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1513, line: 43, size: 192, elements: !1514)
!1513 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1514 = !{!1515, !1516}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1512, file: !1513, line: 44, baseType: !313, size: 32)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1512, file: !1513, line: 45, baseType: !232, size: 128, offset: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1473, file: !27, line: 130, baseType: !26, size: 32, offset: 768)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1473, file: !27, line: 131, baseType: !7, size: 32, offset: 800)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1473, file: !27, line: 132, baseType: !332, size: 64, offset: 832)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1473, file: !27, line: 133, baseType: !1521, size: 64, offset: 896)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1523)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !27, line: 77, size: 192, elements: !1524)
!1524 = !{!1525, !1529, !1688}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1523, file: !27, line: 83, baseType: !1526, size: 64)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DISubroutineType(types: !1528)
!1528 = !{null, !1422}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1523, file: !27, line: 89, baseType: !1530, size: 64, offset: 64)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{!1533, !1534}
!1533 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !35, line: 1184, baseType: !7)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1536, line: 512, size: 896, elements: !1537)
!1536 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1537 = !{!1538, !1656, !1657, !1664, !1671, !1681, !1682, !1683, !1685, !1686}
!1538 = !DIDerivedType(tag: DW_TAG_member, scope: !1535, file: !1536, line: 513, baseType: !1539, size: 320)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1535, file: !1536, line: 513, size: 320, elements: !1540)
!1540 = !{!1541, !1652, !1653, !1654, !1655}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1539, file: !1536, line: 514, baseType: !1542, size: 64)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !35, line: 625, size: 1344, elements: !1544)
!1544 = !{!1545, !1554, !1555, !1563, !1570, !1571, !1576, !1577, !1582, !1583, !1586, !1645, !1646, !1647, !1648, !1649, !1650}
!1545 = !DIDerivedType(tag: DW_TAG_member, scope: !1543, file: !35, line: 628, baseType: !1546, size: 128)
!1546 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1543, file: !35, line: 628, size: 128, elements: !1547)
!1547 = !{!1548, !1553}
!1548 = !DIDerivedType(tag: DW_TAG_member, scope: !1546, file: !35, line: 629, baseType: !1549, size: 128)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1546, file: !35, line: 629, size: 128, elements: !1550)
!1550 = !{!1551, !1552}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1549, file: !35, line: 631, baseType: !332, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1549, file: !35, line: 632, baseType: !332, size: 64, offset: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1546, file: !35, line: 635, baseType: !676, size: 128, align: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1543, file: !35, line: 639, baseType: !640, size: 64, offset: 128)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1543, file: !35, line: 640, baseType: !1556, size: 64, offset: 192)
!1556 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1557, line: 297, baseType: !1558)
!1557 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1557, line: 297, size: 64, elements: !1559)
!1559 = !{!1560}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1558, file: !1557, line: 297, baseType: !1561, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1562, line: 19, baseType: !332)
!1562 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1563 = !DIDerivedType(tag: DW_TAG_member, scope: !1543, file: !35, line: 646, baseType: !1564, size: 64, offset: 256)
!1564 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1543, file: !35, line: 646, size: 64, elements: !1565)
!1565 = !{!1566, !1569}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1564, file: !35, line: 647, baseType: !1567, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1568)
!1568 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !35, line: 542, baseType: !332)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1564, file: !35, line: 648, baseType: !1568, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1543, file: !35, line: 666, baseType: !101, size: 32, offset: 320)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1543, file: !35, line: 667, baseType: !1572, size: 64, offset: 384)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !35, line: 579, size: 320, elements: !1574)
!1574 = !{!1575}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1573, file: !35, line: 580, baseType: !820, size: 320)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1543, file: !35, line: 670, baseType: !880, size: 8, offset: 448)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1543, file: !35, line: 681, baseType: !1578, size: 256, offset: 512)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1543, file: !35, line: 678, size: 256, elements: !1579)
!1579 = !{!1580, !1581}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1578, file: !35, line: 679, baseType: !385, size: 192, align: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1578, file: !35, line: 680, baseType: !332, size: 64, offset: 192)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1543, file: !35, line: 689, baseType: !232, size: 128, offset: 768)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1543, file: !35, line: 691, baseType: !1584, size: 64, offset: 896)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !35, line: 691, flags: DIFlagFwdDecl)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1543, file: !35, line: 694, baseType: !1587, size: 64, offset: 960)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1589)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1536, line: 563, size: 1024, elements: !1590)
!1590 = !{!1591, !1595, !1596, !1600, !1604, !1608, !1609, !1613, !1617, !1621, !1622, !1623, !1627, !1631, !1637, !1641}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1589, file: !1536, line: 564, baseType: !1592, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{null, !1542}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1589, file: !1536, line: 569, baseType: !1592, size: 64, offset: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1589, file: !1536, line: 571, baseType: !1597, size: 64, offset: 128)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{!101, !1542, !332}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1589, file: !1536, line: 572, baseType: !1601, size: 64, offset: 192)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!101, !1542}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1589, file: !1536, line: 578, baseType: !1605, size: 64, offset: 256)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DISubroutineType(types: !1607)
!1607 = !{!101, !1542, !332, !332, !332}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1589, file: !1536, line: 580, baseType: !1530, size: 64, offset: 320)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1589, file: !1536, line: 581, baseType: !1610, size: 64, offset: 384)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DISubroutineType(types: !1612)
!1612 = !{!1533, !1534, !7}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1589, file: !1536, line: 582, baseType: !1614, size: 64, offset: 448)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!1533, !1534, !332, !332}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1589, file: !1536, line: 584, baseType: !1618, size: 64, offset: 512)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DISubroutineType(types: !1620)
!1620 = !{!332, !1542}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1589, file: !1536, line: 588, baseType: !1530, size: 64, offset: 576)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1589, file: !1536, line: 591, baseType: !1530, size: 64, offset: 640)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1589, file: !1536, line: 597, baseType: !1624, size: 64, offset: 704)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = !DISubroutineType(types: !1626)
!1626 = !{!101, !1542, !332, !225, !101, !101}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1589, file: !1536, line: 603, baseType: !1628, size: 64, offset: 768)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DISubroutineType(types: !1630)
!1630 = !{!883, !1542}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1589, file: !1536, line: 613, baseType: !1632, size: 64, offset: 832)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{!101, !1542, !1635}
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !35, line: 717, flags: DIFlagFwdDecl)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1589, file: !1536, line: 625, baseType: !1638, size: 64, offset: 896)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!1635, !1542, !332}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1589, file: !1536, line: 633, baseType: !1642, size: 64, offset: 960)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DISubroutineType(types: !1644)
!1644 = !{!1422, !1542, !332}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1543, file: !35, line: 697, baseType: !332, size: 64, offset: 1024)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1543, file: !35, line: 699, baseType: !668, size: 64, offset: 1088)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1543, file: !35, line: 700, baseType: !225, size: 64, offset: 1152)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1543, file: !35, line: 711, baseType: !303, size: 64, offset: 1216)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1543, file: !35, line: 717, baseType: !1635, size: 64, offset: 1280)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1543, file: !35, line: 722, baseType: !1651, offset: 1344)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !35, line: 570, elements: !661)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1539, file: !1536, line: 515, baseType: !226, size: 32, offset: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1539, file: !1536, line: 516, baseType: !332, size: 64, offset: 128)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1539, file: !1536, line: 517, baseType: !332, size: 64, offset: 192)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1539, file: !1536, line: 518, baseType: !332, size: 64, offset: 256)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1535, file: !1536, line: 520, baseType: !34, size: 32, offset: 320)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1535, file: !1536, line: 522, baseType: !1658, size: 64, offset: 384)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1562, line: 22, baseType: !1660)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1562, line: 22, size: 64, elements: !1661)
!1661 = !{!1662}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1660, file: !1562, line: 22, baseType: !1663, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1562, line: 15, baseType: !332)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1535, file: !1536, line: 524, baseType: !1665, size: 64, offset: 448)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1557, line: 372, baseType: !1667)
!1667 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1557, line: 372, size: 64, elements: !1668)
!1668 = !{!1669}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1667, file: !1557, line: 372, baseType: !1670, size: 64)
!1670 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1562, line: 16, baseType: !332)
!1671 = !DIDerivedType(tag: DW_TAG_member, scope: !1535, file: !1536, line: 527, baseType: !1672, size: 64, offset: 512)
!1672 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1535, file: !1536, line: 527, size: 64, elements: !1673)
!1673 = !{!1674, !1680}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1672, file: !1536, line: 528, baseType: !1675, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1562, line: 21, baseType: !1676)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1562, line: 21, size: 64, elements: !1677)
!1677 = !{!1678}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1676, file: !1562, line: 21, baseType: !1679, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1562, line: 14, baseType: !332)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1672, file: !1536, line: 529, baseType: !1659, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1535, file: !1536, line: 534, baseType: !1422, size: 64, offset: 576)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1535, file: !1536, line: 535, baseType: !1422, size: 64, offset: 640)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1535, file: !1536, line: 541, baseType: !1684, size: 64, offset: 704)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1535, file: !1536, line: 545, baseType: !297, size: 64, offset: 768)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1535, file: !1536, line: 549, baseType: !1687, size: 64, offset: 832)
!1687 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1557, line: 520, baseType: !1422)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1523, file: !27, line: 100, baseType: !1689, size: 64, offset: 128)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DISubroutineType(types: !1691)
!1691 = !{!101, !1472, !332, !332, !101}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1473, file: !27, line: 134, baseType: !225, size: 64, offset: 960)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1473, file: !27, line: 135, baseType: !101, size: 32, offset: 1024)
!1694 = !DIDerivedType(tag: DW_TAG_member, scope: !1473, file: !27, line: 136, baseType: !1695, size: 128, offset: 1088)
!1695 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1473, file: !27, line: 136, size: 128, elements: !1696)
!1696 = !{!1697, !1703}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1695, file: !27, line: 137, baseType: !1698, size: 128)
!1698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1699, line: 6, size: 128, elements: !1700)
!1699 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1700 = !{!1701, !1702}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1698, file: !1699, line: 7, baseType: !393, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1698, file: !1699, line: 8, baseType: !393, size: 64, offset: 64)
!1703 = !DIDerivedType(tag: DW_TAG_member, scope: !1695, file: !27, line: 138, baseType: !1704)
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1695, file: !27, line: 138, elements: !1705)
!1705 = !{!1706, !1708}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1704, file: !27, line: 138, baseType: !1707)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1704, file: !27, line: 138, elements: !661)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1704, file: !27, line: 138, baseType: !1709)
!1709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1698, elements: !757)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1469, file: !35, line: 147, baseType: !225, size: 64, offset: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1427, file: !35, line: 161, baseType: !676, size: 128, align: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, scope: !1423, file: !35, line: 164, baseType: !1713, size: 32, offset: 384)
!1713 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1423, file: !35, line: 164, size: 32, elements: !1714)
!1714 = !{!1715, !1716}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1713, file: !35, line: 169, baseType: !274, size: 32)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1713, file: !35, line: 177, baseType: !7, size: 32)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1423, file: !35, line: 181, baseType: !274, size: 32, offset: 416)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !64, line: 309, flags: DIFlagFwdDecl)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1416, file: !64, line: 406, baseType: !1721, size: 64, offset: 64)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{!101, !668, !1724}
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !35, line: 293, size: 1536, elements: !1726)
!1726 = !{!1727, !1757, !1771}
!1727 = !DIDerivedType(tag: DW_TAG_member, scope: !1725, file: !35, line: 295, baseType: !1728, size: 512)
!1728 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1725, file: !35, line: 295, size: 512, elements: !1729)
!1729 = !{!1730, !1756}
!1730 = !DIDerivedType(tag: DW_TAG_member, scope: !1728, file: !35, line: 296, baseType: !1731, size: 448)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1728, file: !35, line: 296, size: 448, elements: !1732)
!1732 = !{!1733, !1734, !1743, !1744, !1745, !1754, !1755}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1731, file: !35, line: 298, baseType: !332, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, scope: !1731, file: !35, line: 299, baseType: !1735, size: 128, offset: 64)
!1735 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1731, file: !35, line: 299, size: 128, elements: !1736)
!1736 = !{!1737, !1738}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1735, file: !35, line: 300, baseType: !232, size: 128)
!1738 = !DIDerivedType(tag: DW_TAG_member, scope: !1735, file: !35, line: 302, baseType: !1739, size: 128)
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1735, file: !35, line: 302, size: 128, elements: !1740)
!1740 = !{!1741, !1742}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1739, file: !35, line: 303, baseType: !225, size: 64)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1739, file: !35, line: 305, baseType: !7, size: 32, offset: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1731, file: !35, line: 310, baseType: !1402, size: 64, offset: 192)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1731, file: !35, line: 311, baseType: !332, size: 64, offset: 256)
!1745 = !DIDerivedType(tag: DW_TAG_member, scope: !1731, file: !35, line: 312, baseType: !1746, size: 64, offset: 320)
!1746 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1731, file: !35, line: 312, size: 64, elements: !1747)
!1747 = !{!1748, !1749}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1746, file: !35, line: 313, baseType: !225, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1746, file: !35, line: 314, baseType: !1750, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !35, line: 257, baseType: !1751)
!1751 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !35, line: 255, size: 64, elements: !1752)
!1752 = !{!1753}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1751, file: !35, line: 256, baseType: !332, size: 64)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1731, file: !35, line: 316, baseType: !274, size: 32, offset: 384)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1731, file: !35, line: 317, baseType: !274, size: 32, offset: 416)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1728, file: !35, line: 323, baseType: !1423, size: 512, align: 128)
!1757 = !DIDerivedType(tag: DW_TAG_member, scope: !1725, file: !35, line: 325, baseType: !1758, size: 512, offset: 512)
!1758 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1725, file: !35, line: 325, size: 512, elements: !1759)
!1759 = !{!1760, !1770}
!1760 = !DIDerivedType(tag: DW_TAG_member, scope: !1758, file: !35, line: 326, baseType: !1761, size: 320)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1758, file: !35, line: 326, size: 320, elements: !1762)
!1762 = !{!1763, !1764, !1765, !1766, !1767, !1768, !1769}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1761, file: !35, line: 327, baseType: !332, size: 64)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1761, file: !35, line: 328, baseType: !332, size: 64, offset: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1761, file: !35, line: 329, baseType: !332, size: 64, offset: 128)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1761, file: !35, line: 331, baseType: !274, size: 32, offset: 192)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1761, file: !35, line: 332, baseType: !274, size: 32, offset: 224)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1761, file: !35, line: 333, baseType: !274, size: 32, offset: 256)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1761, file: !35, line: 335, baseType: !7, size: 32, offset: 288)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1758, file: !35, line: 339, baseType: !1423, size: 512, align: 128)
!1771 = !DIDerivedType(tag: DW_TAG_member, scope: !1725, file: !35, line: 341, baseType: !1772, size: 512, offset: 1024)
!1772 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1725, file: !35, line: 341, size: 512, elements: !1773)
!1773 = !{!1774, !1783, !1789}
!1774 = !DIDerivedType(tag: DW_TAG_member, scope: !1772, file: !35, line: 342, baseType: !1775, size: 384)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1772, file: !35, line: 342, size: 384, elements: !1776)
!1776 = !{!1777, !1778, !1779, !1780, !1781, !1782}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1775, file: !35, line: 343, baseType: !332, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1775, file: !35, line: 344, baseType: !332, size: 64, offset: 64)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1775, file: !35, line: 346, baseType: !225, size: 64, offset: 128)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1775, file: !35, line: 347, baseType: !225, size: 64, offset: 192)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1775, file: !35, line: 348, baseType: !225, size: 64, offset: 256)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1775, file: !35, line: 349, baseType: !225, size: 64, offset: 320)
!1783 = !DIDerivedType(tag: DW_TAG_member, scope: !1772, file: !35, line: 352, baseType: !1784, size: 256)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1772, file: !35, line: 352, size: 256, elements: !1785)
!1785 = !{!1786, !1787, !1788}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1784, file: !35, line: 353, baseType: !332, size: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1784, file: !35, line: 354, baseType: !332, size: 64, offset: 64)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1784, file: !35, line: 356, baseType: !232, size: 128, offset: 128)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1772, file: !35, line: 359, baseType: !1423, size: 512, align: 128)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1416, file: !64, line: 409, baseType: !1791, size: 64, offset: 128)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DISubroutineType(types: !1793)
!1793 = !{!101, !1402, !1718}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1416, file: !64, line: 412, baseType: !1795, size: 64, offset: 192)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DISubroutineType(types: !1797)
!1797 = !{!880, !1402, !1724}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1416, file: !64, line: 414, baseType: !1799, size: 64, offset: 256)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = !DISubroutineType(types: !1801)
!1801 = !{null, !1802}
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !64, line: 310, flags: DIFlagFwdDecl)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1416, file: !64, line: 416, baseType: !1805, size: 64, offset: 320)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DISubroutineType(types: !1807)
!1807 = !{!101, !668, !1402, !691, !7, !1808, !1809}
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1416, file: !64, line: 419, baseType: !1811, size: 64, offset: 384)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DISubroutineType(types: !1813)
!1813 = !{!101, !668, !1402, !691, !7, !7, !1422, !225}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1416, file: !64, line: 424, baseType: !1815, size: 64, offset: 448)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DISubroutineType(types: !1817)
!1817 = !{!1818, !1402, !1818}
!1818 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !227, line: 131, baseType: !393)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1416, file: !64, line: 425, baseType: !1820, size: 64, offset: 512)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{null, !1724, !1196, !1196}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1416, file: !64, line: 426, baseType: !1824, size: 64, offset: 576)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DISubroutineType(types: !1826)
!1826 = !{!880, !1724, !226}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1416, file: !64, line: 427, baseType: !1828, size: 64, offset: 640)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{null, !1724}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1416, file: !64, line: 428, baseType: !1832, size: 64, offset: 704)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{!1193, !1835, !1857}
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !64, line: 373, size: 384, elements: !1837)
!1837 = !{!1838, !1839, !1840, !1844, !1845, !1846, !1847}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1836, file: !64, line: 374, baseType: !668, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1836, file: !64, line: 375, baseType: !691, size: 64, offset: 64)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1836, file: !64, line: 376, baseType: !1841, size: 64, offset: 128)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DISubroutineType(types: !1843)
!1843 = !{null, !1835, !1154}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1836, file: !64, line: 377, baseType: !225, size: 64, offset: 192)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1836, file: !64, line: 378, baseType: !101, size: 32, offset: 256)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1836, file: !64, line: 379, baseType: !292, size: 16, offset: 288)
!1847 = !DIDerivedType(tag: DW_TAG_member, scope: !1836, file: !64, line: 380, baseType: !1848, size: 64, offset: 320)
!1848 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1836, file: !64, line: 380, size: 64, elements: !1849)
!1849 = !{!1850, !1853}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1848, file: !64, line: 386, baseType: !1851, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !64, line: 386, flags: DIFlagFwdDecl)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1848, file: !64, line: 395, baseType: !1854, size: 64)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DISubroutineType(types: !1856)
!1856 = !{!1193, !225}
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1859, line: 41, size: 320, elements: !1860)
!1859 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!1860 = !{!1861, !1862, !1863, !1864, !1865, !1866, !1871, !1909}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !1858, file: !1859, line: 42, baseType: !282, size: 8)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !1858, file: !1859, line: 43, baseType: !880, size: 8, offset: 8)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !1858, file: !1859, line: 44, baseType: !880, size: 8, offset: 16)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !1858, file: !1859, line: 45, baseType: !880, size: 8, offset: 24)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !1858, file: !1859, line: 46, baseType: !880, size: 8, offset: 32)
!1866 = !DIDerivedType(tag: DW_TAG_member, scope: !1858, file: !1859, line: 47, baseType: !1867, size: 64, offset: 64)
!1867 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1858, file: !1859, line: 47, size: 64, elements: !1868)
!1868 = !{!1869, !1870}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1867, file: !1859, line: 48, baseType: !1196, size: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !1867, file: !1859, line: 49, baseType: !101, size: 32)
!1871 = !DIDerivedType(tag: DW_TAG_member, scope: !1858, file: !1859, line: 61, baseType: !1872, size: 128, offset: 128)
!1872 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1858, file: !1859, line: 61, size: 128, elements: !1873)
!1873 = !{!1874, !1880}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !1872, file: !1859, line: 67, baseType: !1875, size: 128)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1876, line: 17, size: 128, elements: !1877)
!1876 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!1877 = !{!1878, !1879}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1875, file: !1876, line: 19, baseType: !225, size: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1875, file: !1876, line: 20, baseType: !1197, size: 64, offset: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, scope: !1872, file: !1859, line: 68, baseType: !1881, size: 128)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1872, file: !1859, line: 68, size: 128, elements: !1882)
!1882 = !{!1883, !1908}
!1883 = !DIDerivedType(tag: DW_TAG_member, scope: !1881, file: !1859, line: 69, baseType: !1884, size: 64)
!1884 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1881, file: !1859, line: 69, size: 64, elements: !1885)
!1885 = !{!1886, !1889, !1896, !1905, !1907}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !1884, file: !1859, line: 71, baseType: !1887, size: 64)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1875)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1884, file: !1859, line: 72, baseType: !1890, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1892)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1859, line: 17, size: 128, elements: !1893)
!1893 = !{!1894, !1895}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1892, file: !1859, line: 18, baseType: !225, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1892, file: !1859, line: 19, baseType: !1196, size: 64, offset: 64)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1884, file: !1859, line: 73, baseType: !1897, size: 64)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1899)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1900, line: 31, size: 128, elements: !1901)
!1900 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9bd326f7e1a9ed4bc3baca0011068cc")
!1901 = !{!1902, !1903, !1904}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !1899, file: !1900, line: 32, baseType: !1422, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !1899, file: !1900, line: 33, baseType: !7, size: 32, offset: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !1899, file: !1900, line: 34, baseType: !7, size: 32, offset: 96)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !1884, file: !1859, line: 74, baseType: !1906, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !1884, file: !1859, line: 75, baseType: !225, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1881, file: !1859, line: 77, baseType: !1196, size: 64, offset: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, scope: !1858, file: !1859, line: 80, baseType: !1910, size: 64, offset: 256)
!1910 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1858, file: !1859, line: 80, size: 64, elements: !1911)
!1911 = !{!1912, !1913}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !1910, file: !1859, line: 81, baseType: !332, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !1910, file: !1859, line: 82, baseType: !691, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1416, file: !64, line: 433, baseType: !1915, size: 64, offset: 768)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{!101, !1402, !1724, !1724, !50}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1416, file: !64, line: 435, baseType: !1919, size: 64, offset: 832)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{!101, !1724}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1416, file: !64, line: 436, baseType: !1923, size: 64, offset: 896)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{!880, !1724, !1196, !1196}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1416, file: !64, line: 438, baseType: !1927, size: 64, offset: 960)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{null, !1724, !1930, !1930}
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1416, file: !64, line: 439, baseType: !1932, size: 64, offset: 1024)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DISubroutineType(types: !1934)
!1934 = !{!101, !1402, !1422}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1416, file: !64, line: 442, baseType: !1936, size: 64, offset: 1088)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{!101, !1939, !668, !1941}
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !64, line: 66, flags: DIFlagFwdDecl)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1416, file: !64, line: 444, baseType: !1943, size: 64, offset: 1152)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{null, !668}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1416, file: !64, line: 445, baseType: !1947, size: 64, offset: 1216)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!101, !1835, !1857}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1403, file: !64, line: 486, baseType: !332, size: 64, offset: 896)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1403, file: !64, line: 487, baseType: !820, size: 320, offset: 960)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1403, file: !64, line: 488, baseType: !1953, size: 32, offset: 1280)
!1953 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1954, line: 8, baseType: !335)
!1954 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1403, file: !64, line: 489, baseType: !254, size: 32, offset: 1312)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1403, file: !64, line: 490, baseType: !232, size: 128, offset: 1344)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1403, file: !64, line: 491, baseType: !225, size: 64, offset: 1472)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1393, file: !1362, line: 180, baseType: !1959, size: 64, offset: 320)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{!1193, !668, !1304, !1392, !893, !691, !1196}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1393, file: !1362, line: 182, baseType: !1959, size: 64, offset: 384)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1393, file: !1362, line: 184, baseType: !1964, size: 64, offset: 448)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{!101, !668, !1304, !1392, !1542}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1381, file: !1362, line: 90, baseType: !1968, size: 64, offset: 192)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1381, file: !1362, line: 91, baseType: !1970, size: 64, offset: 256)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1352, file: !1299, line: 120, baseType: !1972, size: 64, offset: 192)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{!1975, !1322}
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1977)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !58, line: 39, size: 384, elements: !1978)
!1978 = !{!1979, !1980, !1984, !1988, !1996, !2000}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1977, file: !58, line: 40, baseType: !57, size: 32)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1977, file: !58, line: 41, baseType: !1981, size: 64, offset: 64)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{!880}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1977, file: !58, line: 42, baseType: !1985, size: 64, offset: 128)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DISubroutineType(types: !1987)
!1987 = !{!225}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1977, file: !58, line: 43, baseType: !1989, size: 64, offset: 192)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{!1992, !1994}
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !58, line: 19, flags: DIFlagFwdDecl)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1977, file: !58, line: 44, baseType: !1997, size: 64, offset: 256)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{!1992}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1977, file: !58, line: 45, baseType: !1071, size: 64, offset: 320)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1352, file: !1299, line: 121, baseType: !2002, size: 64, offset: 256)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = !DISubroutineType(types: !2004)
!2004 = !{!1992, !1322}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1352, file: !1299, line: 122, baseType: !2006, size: 64, offset: 320)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DISubroutineType(types: !2008)
!2008 = !{null, !1322, !2009, !2010}
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1298, file: !1299, line: 70, baseType: !2012, size: 64, offset: 384)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1271, line: 190, size: 1152, elements: !2014)
!2014 = !{!2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2137, !2138, !2139, !2140, !2141, !2144}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2013, file: !1271, line: 191, baseType: !274, size: 32)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2013, file: !1271, line: 192, baseType: !274, size: 32, offset: 32)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2013, file: !1271, line: 202, baseType: !2012, size: 64, offset: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2013, file: !1271, line: 203, baseType: !883, size: 64, offset: 128)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2013, file: !1271, line: 205, baseType: !385, size: 192, align: 64, offset: 192)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2013, file: !1271, line: 207, baseType: !1992, size: 64, offset: 384)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2013, file: !1271, line: 208, baseType: !7, size: 32, offset: 448)
!2022 = !DIDerivedType(tag: DW_TAG_member, scope: !2013, file: !1271, line: 209, baseType: !2023, size: 256, offset: 512)
!2023 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2013, file: !1271, line: 209, size: 256, elements: !2024)
!2024 = !{!2025, !2034, !2038}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2023, file: !1271, line: 210, baseType: !2026, size: 256)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1271, line: 153, size: 256, elements: !2027)
!2027 = !{!2028, !2029, !2030, !2033}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2026, file: !1271, line: 154, baseType: !332, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2026, file: !1271, line: 156, baseType: !526, size: 64, offset: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2026, file: !1271, line: 162, baseType: !2031, size: 64, offset: 128)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1271, line: 162, flags: DIFlagFwdDecl)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2026, file: !1271, line: 167, baseType: !332, size: 64, offset: 192)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2023, file: !1271, line: 211, baseType: !2035, size: 64)
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1271, line: 170, size: 64, elements: !2036)
!2036 = !{!2037}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2035, file: !1271, line: 171, baseType: !2012, size: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2023, file: !1271, line: 212, baseType: !2039, size: 256)
!2039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1271, line: 174, size: 256, elements: !2040)
!2040 = !{!2041, !2132, !2135, !2136}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2039, file: !1271, line: 175, baseType: !2042, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2044)
!2044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1271, line: 271, size: 768, elements: !2045)
!2045 = !{!2046, !2105, !2109, !2110, !2111, !2112, !2113, !2117, !2118, !2119, !2120, !2128}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2044, file: !1271, line: 276, baseType: !2047, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{!101, !2050}
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1271, line: 251, size: 1216, elements: !2052)
!2052 = !{!2053, !2054, !2055, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2051, file: !1271, line: 253, baseType: !2012, size: 64)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2051, file: !1271, line: 254, baseType: !668, size: 64, offset: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2051, file: !1271, line: 255, baseType: !2056, size: 64, offset: 128)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !2058, line: 17, size: 960, elements: !2059)
!2058 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!2059 = !{!2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2090, !2091, !2094}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2057, file: !2058, line: 18, baseType: !893, size: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2057, file: !2058, line: 19, baseType: !1196, size: 64, offset: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !2057, file: !2058, line: 20, baseType: !1196, size: 64, offset: 128)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2057, file: !2058, line: 21, baseType: !1196, size: 64, offset: 192)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !2057, file: !2058, line: 22, baseType: !1196, size: 64, offset: 256)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2057, file: !2058, line: 23, baseType: !691, size: 64, offset: 320)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !2057, file: !2058, line: 24, baseType: !691, size: 64, offset: 384)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2057, file: !2058, line: 25, baseType: !299, size: 256, offset: 448)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2057, file: !2058, line: 26, baseType: !2069, size: 64, offset: 704)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2071)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !2058, line: 32, size: 256, elements: !2072)
!2072 = !{!2073, !2078, !2082, !2086}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2071, file: !2058, line: 33, baseType: !2074, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DISubroutineType(types: !2076)
!2076 = !{!225, !2056, !2077}
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2071, file: !2058, line: 34, baseType: !2079, size: 64, offset: 64)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{null, !2056, !225}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2071, file: !2058, line: 35, baseType: !2083, size: 64, offset: 128)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = !DISubroutineType(types: !2085)
!2085 = !{!225, !2056, !225, !2077}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2071, file: !2058, line: 36, baseType: !2087, size: 64, offset: 192)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{!101, !2056, !225}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !2057, file: !2058, line: 27, baseType: !101, size: 32, offset: 768)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2057, file: !2058, line: 28, baseType: !2092, size: 64, offset: 832)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !669)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2057, file: !2058, line: 29, baseType: !225, size: 64, offset: 896)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2051, file: !1271, line: 256, baseType: !225, size: 64, offset: 192)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2051, file: !1271, line: 259, baseType: !299, size: 256, offset: 256)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2051, file: !1271, line: 260, baseType: !299, size: 256, offset: 512)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2051, file: !1271, line: 261, baseType: !101, size: 32, offset: 768)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2051, file: !1271, line: 262, baseType: !232, size: 128, offset: 832)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2051, file: !1271, line: 263, baseType: !893, size: 64, offset: 960)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2051, file: !1271, line: 265, baseType: !1196, size: 64, offset: 1024)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2051, file: !1271, line: 266, baseType: !880, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2051, file: !1271, line: 267, baseType: !880, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2051, file: !1271, line: 268, baseType: !1587, size: 64, offset: 1152)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2044, file: !1271, line: 277, baseType: !2106, size: 64, offset: 64)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{null, !2050}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2044, file: !1271, line: 290, baseType: !2087, size: 64, offset: 128)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2044, file: !1271, line: 292, baseType: !2074, size: 64, offset: 192)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2044, file: !1271, line: 293, baseType: !2083, size: 64, offset: 256)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2044, file: !1271, line: 294, baseType: !2079, size: 64, offset: 320)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2044, file: !1271, line: 296, baseType: !2114, size: 64, offset: 384)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DISubroutineType(types: !2116)
!2116 = !{!1193, !2050, !893, !1196, !691}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2044, file: !1271, line: 306, baseType: !1196, size: 64, offset: 448)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2044, file: !1271, line: 313, baseType: !880, size: 8, offset: 512)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2044, file: !1271, line: 314, baseType: !2114, size: 64, offset: 576)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2044, file: !1271, line: 317, baseType: !2121, size: 64, offset: 640)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{!2124, !2050, !2126}
!2124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2125, line: 59, baseType: !7)
!2125 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1271, line: 31, flags: DIFlagFwdDecl)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2044, file: !1271, line: 320, baseType: !2129, size: 64, offset: 704)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{!101, !2050, !1542}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2039, file: !1271, line: 176, baseType: !2133, size: 64, offset: 64)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1271, line: 35, flags: DIFlagFwdDecl)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2039, file: !1271, line: 177, baseType: !691, size: 64, offset: 128)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2039, file: !1271, line: 178, baseType: !2012, size: 64, offset: 192)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2013, file: !1271, line: 215, baseType: !225, size: 64, offset: 768)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2013, file: !1271, line: 221, baseType: !393, size: 64, offset: 832)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2013, file: !1271, line: 223, baseType: !294, size: 16, offset: 896)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2013, file: !1271, line: 224, baseType: !1043, size: 16, offset: 912)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2013, file: !1271, line: 225, baseType: !2142, size: 64, offset: 960)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1271, line: 36, flags: DIFlagFwdDecl)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2013, file: !1271, line: 227, baseType: !676, size: 128, align: 64, offset: 1024)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1298, file: !1299, line: 71, baseType: !2146, size: 32, offset: 448)
!2146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2147, line: 19, size: 32, elements: !2148)
!2147 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2148 = !{!2149}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2146, file: !2147, line: 20, baseType: !341, size: 32)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1298, file: !1299, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1298, file: !1299, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1298, file: !1299, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1298, file: !1299, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1298, file: !1299, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1295, file: !20, line: 47, baseType: !1285, size: 64, offset: 512)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1295, file: !20, line: 48, baseType: !1304, size: 64, offset: 576)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1295, file: !20, line: 49, baseType: !2158, size: 64, offset: 640)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !20, line: 49, flags: DIFlagFwdDecl)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1295, file: !20, line: 50, baseType: !2161, size: 64, offset: 704)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1286, file: !20, line: 418, baseType: !2163, size: 64, offset: 1408)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !20, line: 53, size: 448, elements: !2165)
!2165 = !{!2166, !2167, !2172, !2176, !2180, !2184}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2164, file: !20, line: 54, baseType: !1369, size: 128)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2164, file: !20, line: 55, baseType: !2168, size: 64, offset: 128)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!1193, !2163, !2171, !893}
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2164, file: !20, line: 57, baseType: !2173, size: 64, offset: 192)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = !DISubroutineType(types: !2175)
!2175 = !{!1193, !2163, !2171, !883, !1196}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2164, file: !20, line: 59, baseType: !2177, size: 64, offset: 256)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{null, !1285, !883}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2164, file: !20, line: 60, baseType: !2181, size: 64, offset: 320)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = !DISubroutineType(types: !2183)
!2183 = !{!101, !1285}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2164, file: !20, line: 61, baseType: !2185, size: 64, offset: 384)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = !DISubroutineType(types: !2187)
!2187 = !{null, !1285}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1286, file: !20, line: 419, baseType: !883, size: 64, offset: 1472)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1286, file: !20, line: 420, baseType: !883, size: 64, offset: 1536)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1286, file: !20, line: 421, baseType: !1304, size: 64, offset: 1600)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1286, file: !20, line: 424, baseType: !2192, size: 64, offset: 1664)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2194)
!2194 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !20, line: 424, flags: DIFlagFwdDecl)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1286, file: !20, line: 425, baseType: !2196, size: 64, offset: 1728)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !812)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1286, file: !20, line: 426, baseType: !7, size: 32, offset: 1792)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1286, file: !20, line: 435, baseType: !299, size: 256, offset: 1856)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1286, file: !20, line: 437, baseType: !2201, size: 64, offset: 2112)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2203, line: 69, size: 320, elements: !2204)
!2203 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2204 = !{!2205, !2206, !2207, !2224, !2226, !2230, !2231}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2202, file: !2203, line: 70, baseType: !883, size: 64)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2202, file: !2203, line: 71, baseType: !1285, size: 64, offset: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2202, file: !2203, line: 72, baseType: !2208, size: 64, offset: 128)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2210)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2203, line: 47, size: 256, elements: !2211)
!2211 = !{!2212, !2213, !2219, !2223}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2210, file: !2203, line: 49, baseType: !7, size: 32)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2210, file: !2203, line: 51, baseType: !2214, size: 64, offset: 64)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = !DISubroutineType(types: !2216)
!2216 = !{!101, !883, !2217}
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2202)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2210, file: !2203, line: 53, baseType: !2220, size: 64, offset: 128)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!101, !893, !2217}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2210, file: !2203, line: 55, baseType: !1071, size: 64, offset: 192)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2202, file: !2203, line: 73, baseType: !2225, size: 16, offset: 192)
!2225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !292)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2202, file: !2203, line: 74, baseType: !2227, size: 8, offset: 208)
!2227 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !283, line: 16, baseType: !2228)
!2228 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !285, line: 20, baseType: !2229)
!2229 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2202, file: !2203, line: 75, baseType: !282, size: 8, offset: 216)
!2231 = !DIDerivedType(tag: DW_TAG_member, scope: !2202, file: !2203, line: 76, baseType: !2232, size: 64, offset: 256)
!2232 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2202, file: !2203, line: 76, size: 64, elements: !2233)
!2233 = !{!2234, !2235, !2242}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2232, file: !2203, line: 77, baseType: !225, size: 64)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2232, file: !2203, line: 78, baseType: !2236, size: 64)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2238)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2203, line: 86, size: 128, elements: !2239)
!2239 = !{!2240, !2241}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2238, file: !2203, line: 87, baseType: !7, size: 32)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2238, file: !2203, line: 88, baseType: !893, size: 64, offset: 64)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2232, file: !2203, line: 79, baseType: !2243, size: 64)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2245)
!2245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2203, line: 92, size: 256, elements: !2246)
!2246 = !{!2247, !2248, !2249, !2251, !2252}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2245, file: !2203, line: 94, baseType: !7, size: 32)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2245, file: !2203, line: 95, baseType: !7, size: 32, offset: 32)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2245, file: !2203, line: 96, baseType: !2250, size: 64, offset: 64)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2245, file: !2203, line: 97, baseType: !2208, size: 64, offset: 128)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2245, file: !2203, line: 98, baseType: !225, size: 64, offset: 192)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1286, file: !20, line: 438, baseType: !7, size: 32, offset: 2176)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1286, file: !20, line: 441, baseType: !7, size: 32, offset: 2208)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1286, file: !20, line: 442, baseType: !2192, size: 64, offset: 2240)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1286, file: !20, line: 443, baseType: !2196, size: 64, offset: 2304)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1286, file: !20, line: 444, baseType: !880, size: 8, offset: 2368)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1286, file: !20, line: 451, baseType: !880, size: 8, offset: 2376)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1286, file: !20, line: 454, baseType: !7, size: 32, offset: 2400)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1286, file: !20, line: 455, baseType: !2261, size: 64, offset: 2432)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2263, line: 23, size: 96, elements: !2264)
!2263 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2264 = !{!2265, !2266, !2267}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2262, file: !2263, line: 24, baseType: !101, size: 32)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2262, file: !2263, line: 24, baseType: !101, size: 32, offset: 32)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2262, file: !2263, line: 24, baseType: !101, size: 32, offset: 64)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1286, file: !20, line: 458, baseType: !2269, size: 64, offset: 2496)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{!101}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1286, file: !20, line: 460, baseType: !2273, size: 4032, align: 512, offset: 2560)
!2273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2274, size: 4032, elements: !2290)
!2274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !20, line: 362, size: 576, elements: !2275)
!2275 = !{!2276, !2277, !2278}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2274, file: !20, line: 363, baseType: !225, size: 64)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2274, file: !20, line: 364, baseType: !7, size: 32, offset: 64)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2274, file: !20, line: 367, baseType: !2279, size: 448, offset: 128)
!2279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !20, line: 319, size: 448, elements: !2280)
!2280 = !{!2281, !2282}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2279, file: !20, line: 320, baseType: !1285, size: 64)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2279, file: !20, line: 321, baseType: !2283, size: 384, offset: 64)
!2283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2284, line: 40, size: 384, elements: !2285)
!2284 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2285 = !{!2286}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2283, file: !2284, line: 41, baseType: !2287, size: 384, align: 64)
!2287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, size: 384, align: 64, elements: !2288)
!2288 = !{!2289}
!2289 = !DISubrange(count: 2)
!2290 = !{!2291}
!2291 = !DISubrange(count: 7)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1286, file: !20, line: 463, baseType: !2293, size: 192, offset: 6592)
!2293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2294, line: 8, size: 192, elements: !2295)
!2294 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2295 = !{!2296, !2297, !2299}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2293, file: !2294, line: 10, baseType: !7, size: 32)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2293, file: !2294, line: 11, baseType: !2298, size: 64, offset: 64)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2293, file: !2294, line: 12, baseType: !2300, size: 64, offset: 128)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2302, line: 59, size: 48, elements: !2303)
!2302 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2303 = !{!2304, !2307, !2308, !2309, !2310, !2311}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2301, file: !2302, line: 60, baseType: !2305, size: 16)
!2305 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !283, line: 18, baseType: !2306)
!2306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !285, line: 23, baseType: !848)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2301, file: !2302, line: 61, baseType: !2305, size: 16, offset: 16)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2301, file: !2302, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2301, file: !2302, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2301, file: !2302, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2301, file: !2302, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1286, file: !20, line: 465, baseType: !332, size: 64, offset: 6784)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1286, file: !20, line: 469, baseType: !7, size: 32, offset: 6848)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1286, file: !20, line: 470, baseType: !232, size: 128, offset: 6912)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1286, file: !20, line: 471, baseType: !2316, size: 64, offset: 7040)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2318, line: 33, size: 96, elements: !2319)
!2318 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2319 = !{!2320, !2321, !2322, !2323}
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2317, file: !2318, line: 37, baseType: !101, size: 32)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2317, file: !2318, line: 43, baseType: !101, size: 32, offset: 32)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2317, file: !2318, line: 45, baseType: !294, size: 16, offset: 64)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2317, file: !2318, line: 47, baseType: !294, size: 16, offset: 80)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1286, file: !20, line: 476, baseType: !2325, size: 64, offset: 7104)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !20, line: 378, size: 256, elements: !2327)
!2327 = !{!2328, !2344, !2345, !2346}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2326, file: !20, line: 379, baseType: !2329, size: 64)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2331, line: 204, baseType: !2332)
!2331 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2331, line: 197, size: 192, elements: !2333)
!2333 = !{!2334, !2336, !2337, !2338, !2340, !2342}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2332, file: !2331, line: 198, baseType: !2335, size: 32)
!2335 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2331, line: 21, baseType: !336)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2332, file: !2331, line: 199, baseType: !286, size: 8, offset: 32)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2332, file: !2331, line: 200, baseType: !286, size: 8, offset: 40)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2332, file: !2331, line: 201, baseType: !2339, size: 16, offset: 48)
!2339 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2331, line: 17, baseType: !293)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2332, file: !2331, line: 202, baseType: !2341, size: 64, offset: 64)
!2341 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2331, line: 16, baseType: !394)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2332, file: !2331, line: 203, baseType: !2343, size: 64, offset: 128)
!2343 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2331, line: 22, baseType: !394)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2326, file: !20, line: 380, baseType: !7, size: 32, offset: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2326, file: !20, line: 381, baseType: !893, size: 64, offset: 128)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2326, file: !20, line: 382, baseType: !893, size: 64, offset: 192)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1286, file: !20, line: 477, baseType: !2326, size: 256, offset: 7168)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1286, file: !20, line: 480, baseType: !2349, size: 64, offset: 7424)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !20, line: 480, flags: DIFlagFwdDecl)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1286, file: !20, line: 483, baseType: !2352, size: 64, offset: 7488)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !20, line: 483, flags: DIFlagFwdDecl)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1286, file: !20, line: 488, baseType: !893, size: 64, offset: 7552)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1286, file: !20, line: 492, baseType: !225, size: 64, offset: 7616)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1286, file: !20, line: 493, baseType: !7, size: 32, offset: 7680)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1286, file: !20, line: 495, baseType: !225, size: 64, offset: 7744)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1286, file: !20, line: 496, baseType: !7, size: 32, offset: 7808)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1286, file: !20, line: 499, baseType: !7, size: 32, offset: 7840)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1286, file: !20, line: 500, baseType: !2361, size: 64, offset: 7872)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2363, line: 45, baseType: !2364)
!2363 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1286, file: !20, line: 503, baseType: !7, size: 32, offset: 7936)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1286, file: !20, line: 504, baseType: !2367, size: 64, offset: 8000)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2370, line: 96, size: 192, elements: !2371)
!2370 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2371 = !{!2372, !2373, !2438, !2441}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2369, file: !2370, line: 97, baseType: !7, size: 32)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2369, file: !2370, line: 98, baseType: !2374, size: 64, offset: 64)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2370, line: 24, size: 3072, elements: !2376)
!2376 = !{!2377, !2379, !2380, !2381, !2382, !2396, !2397, !2398, !2399, !2411, !2423, !2424, !2435, !2436, !2437}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2375, file: !2370, line: 26, baseType: !2378, size: 128)
!2378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 128, elements: !2288)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2375, file: !2370, line: 27, baseType: !2378, size: 128, offset: 128)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2375, file: !2370, line: 28, baseType: !101, size: 32, offset: 256)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2375, file: !2370, line: 31, baseType: !254, size: 32, align: 512, offset: 512)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2375, file: !2370, line: 32, baseType: !2383, size: 960, offset: 576)
!2383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2384, line: 206, size: 960, elements: !2385)
!2384 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2385 = !{!2386, !2387, !2390, !2392, !2393, !2395}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2383, file: !2384, line: 207, baseType: !679, size: 64)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2383, file: !2384, line: 208, baseType: !2388, size: 256, offset: 64)
!2388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2389, size: 256, elements: !738)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2383, file: !2384, line: 209, baseType: !2391, size: 256, offset: 320)
!2391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 256, elements: !738)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2383, file: !2384, line: 213, baseType: !1154, size: 64, offset: 576)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2383, file: !2384, line: 215, baseType: !2394, size: 256, offset: 640)
!2394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1154, size: 256, elements: !738)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2383, file: !2384, line: 216, baseType: !282, size: 8, offset: 896)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2375, file: !2370, line: 33, baseType: !332, size: 64, offset: 1536)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2375, file: !2370, line: 34, baseType: !332, size: 64, offset: 1600)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2375, file: !2370, line: 35, baseType: !880, size: 8, offset: 1664)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2375, file: !2370, line: 36, baseType: !2400, size: 320, offset: 1728)
!2400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2401, line: 11, size: 320, elements: !2402)
!2401 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2402 = !{!2403, !2404, !2405, !2410}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2400, file: !2401, line: 16, baseType: !733, size: 128)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2400, file: !2401, line: 17, baseType: !332, size: 64, offset: 128)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2400, file: !2401, line: 18, baseType: !2406, size: 64, offset: 192)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = !DISubroutineType(types: !2408)
!2408 = !{null, !2409}
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2400, file: !2401, line: 19, baseType: !335, size: 32, offset: 256)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2375, file: !2370, line: 37, baseType: !2412, size: 256, offset: 2048)
!2412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2413, line: 98, size: 256, elements: !2414)
!2413 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!2414 = !{!2415, !2416, !2417}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2412, file: !2413, line: 99, baseType: !303, size: 64)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2412, file: !2413, line: 100, baseType: !232, size: 128, offset: 64)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2412, file: !2413, line: 101, baseType: !2418, size: 64, offset: 192)
!2418 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2413, line: 21, baseType: !2419)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = !DISubroutineType(types: !2421)
!2421 = !{null, !2422}
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2375, file: !2370, line: 38, baseType: !676, size: 128, align: 64, offset: 2304)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2375, file: !2370, line: 39, baseType: !2425, size: 64, offset: 2432)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2370, line: 49, size: 768, elements: !2427)
!2427 = !{!2428, !2429, !2430, !2431, !2432, !2433, !2434}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2426, file: !2370, line: 50, baseType: !254, size: 32)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2426, file: !2370, line: 51, baseType: !2391, size: 256, offset: 64)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2426, file: !2370, line: 53, baseType: !2391, size: 256, offset: 320)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2426, file: !2370, line: 54, baseType: !332, size: 64, offset: 576)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2426, file: !2370, line: 55, baseType: !2425, size: 64, offset: 640)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2426, file: !2370, line: 56, baseType: !101, size: 32, offset: 704)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2426, file: !2370, line: 57, baseType: !101, size: 32, offset: 736)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2375, file: !2370, line: 40, baseType: !332, size: 64, offset: 2496)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2375, file: !2370, line: 42, baseType: !101, size: 32, offset: 2560)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2375, file: !2370, line: 43, baseType: !2368, size: 64, offset: 2624)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2369, file: !2370, line: 99, baseType: !2439, offset: 128)
!2439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2440, line: 211, elements: !661)
!2440 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2369, file: !2370, line: 100, baseType: !2442, size: 64, offset: 128)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2370, line: 63, size: 3008, elements: !2444)
!2444 = !{!2445, !2446, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2467, !2476}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2443, file: !2370, line: 64, baseType: !2425, size: 64)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2443, file: !2370, line: 65, baseType: !2447, size: 192, offset: 64)
!2447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2425, size: 192, elements: !717)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2443, file: !2370, line: 67, baseType: !101, size: 32, offset: 256)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2443, file: !2370, line: 68, baseType: !299, size: 256, offset: 320)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2443, file: !2370, line: 69, baseType: !254, size: 32, offset: 576)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2443, file: !2370, line: 70, baseType: !299, size: 256, offset: 640)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2443, file: !2370, line: 71, baseType: !332, size: 64, offset: 896)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2443, file: !2370, line: 72, baseType: !332, size: 64, offset: 960)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2443, file: !2370, line: 73, baseType: !332, size: 64, offset: 1024)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2443, file: !2370, line: 74, baseType: !332, size: 64, offset: 1088)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2443, file: !2370, line: 75, baseType: !332, size: 64, offset: 1152)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2443, file: !2370, line: 76, baseType: !332, size: 64, offset: 1216)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2443, file: !2370, line: 77, baseType: !332, size: 64, offset: 1280)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2443, file: !2370, line: 78, baseType: !332, size: 64, offset: 1344)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2443, file: !2370, line: 79, baseType: !880, size: 8, offset: 1408)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2443, file: !2370, line: 80, baseType: !332, size: 64, offset: 1472)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2443, file: !2370, line: 81, baseType: !299, size: 256, offset: 1536)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2443, file: !2370, line: 82, baseType: !1507, size: 256, offset: 1792)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2443, file: !2370, line: 84, baseType: !274, size: 32, offset: 2048)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2443, file: !2370, line: 87, baseType: !332, size: 64, offset: 2112)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2443, file: !2370, line: 88, baseType: !332, size: 64, offset: 2176)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2443, file: !2370, line: 89, baseType: !2468, size: 704, offset: 2240)
!2468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2413, line: 111, size: 704, elements: !2469)
!2469 = !{!2470, !2471, !2472, !2475}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2468, file: !2413, line: 112, baseType: !2412, size: 256)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2468, file: !2413, line: 113, baseType: !2400, size: 320, offset: 256)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2468, file: !2413, line: 116, baseType: !2473, size: 64, offset: 576)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2413, line: 18, flags: DIFlagFwdDecl)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2468, file: !2413, line: 117, baseType: !101, size: 32, offset: 640)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2443, file: !2370, line: 90, baseType: !2368, size: 64, offset: 2944)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1286, file: !20, line: 515, baseType: !2478, size: 64, offset: 8064)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2480, line: 117, size: 128, elements: !2481)
!2480 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2481 = !{!2482, !2483, !2484}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2479, file: !2480, line: 118, baseType: !812, size: 32)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2479, file: !2480, line: 119, baseType: !812, size: 32, offset: 32)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2479, file: !2480, line: 120, baseType: !1154, size: 64, offset: 64)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1286, file: !20, line: 516, baseType: !7, size: 32, offset: 8128)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1286, file: !20, line: 519, baseType: !7, size: 32, offset: 8160)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1286, file: !20, line: 520, baseType: !2488, size: 64, offset: 8192)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1286, file: !20, line: 523, baseType: !2490, size: 64, offset: 8256)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !20, line: 523, flags: DIFlagFwdDecl)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1286, file: !20, line: 524, baseType: !7, size: 32, offset: 8320)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1286, file: !20, line: 525, baseType: !2495, size: 64, offset: 8384)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !20, line: 525, flags: DIFlagFwdDecl)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1286, file: !20, line: 526, baseType: !7, size: 32, offset: 8448)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1286, file: !20, line: 533, baseType: !225, size: 64, offset: 8512)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1286, file: !20, line: 534, baseType: !7, size: 32, offset: 8576)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1286, file: !20, line: 535, baseType: !2502, size: 64, offset: 8640)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1286, file: !20, line: 536, baseType: !7, size: 32, offset: 8704)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1286, file: !20, line: 539, baseType: !101, size: 32, offset: 8736)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1286, file: !20, line: 540, baseType: !2506, size: 64, offset: 8768)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2508, line: 32, size: 64, elements: !2509)
!2508 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2509 = !{!2510, !2511}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2507, file: !2508, line: 33, baseType: !812, size: 32)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2507, file: !2508, line: 34, baseType: !812, size: 32, offset: 32)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1286, file: !20, line: 563, baseType: !232, size: 128, offset: 8832)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1286, file: !20, line: 565, baseType: !232, size: 128, offset: 8960)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1286, file: !20, line: 568, baseType: !2515, size: 64, offset: 9088)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = !DISubroutineType(types: !2517)
!2517 = !{null}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1286, file: !20, line: 570, baseType: !274, size: 32, offset: 9152)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1261, file: !64, line: 2382, baseType: !1260, size: 64, offset: 448)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1261, file: !64, line: 2383, baseType: !729, size: 64, offset: 512)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1261, file: !64, line: 2385, baseType: !2522, offset: 576)
!2522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2440, line: 206, elements: !661)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1261, file: !64, line: 2386, baseType: !2522, offset: 576)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1261, file: !64, line: 2387, baseType: !2522, offset: 576)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1261, file: !64, line: 2388, baseType: !2526, offset: 576)
!2526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2522, elements: !717)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1261, file: !64, line: 2390, baseType: !2522, offset: 576)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1261, file: !64, line: 2391, baseType: !2522, offset: 576)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1261, file: !64, line: 2392, baseType: !2522, offset: 576)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1261, file: !64, line: 2393, baseType: !2522, offset: 576)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1252, file: !64, line: 1197, baseType: !2532, size: 64, offset: 384)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2534)
!2534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !64, line: 2057, size: 1664, elements: !2535)
!2535 = !{!2536, !2540, !2544, !2545, !2549, !2553, !2557, !2558, !2559, !2563, !2567, !2571, !2572, !2573, !2579, !2583, !2584, !2588, !2589, !2590, !2591, !2595, !2599, !2646, !2661, !2662}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2534, file: !64, line: 2058, baseType: !2537, size: 64)
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2538 = !DISubroutineType(types: !2539)
!2539 = !{!1039, !1251}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2534, file: !64, line: 2059, baseType: !2541, size: 64, offset: 64)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{null, !1039}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2534, file: !64, line: 2060, baseType: !2541, size: 64, offset: 128)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2534, file: !64, line: 2062, baseType: !2546, size: 64, offset: 192)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = !DISubroutineType(types: !2548)
!2548 = !{null, !1039, !101}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2534, file: !64, line: 2063, baseType: !2550, size: 64, offset: 256)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{!101, !1039, !1718}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2534, file: !64, line: 2064, baseType: !2554, size: 64, offset: 320)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = !DISubroutineType(types: !2556)
!2556 = !{!101, !1039}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2534, file: !64, line: 2065, baseType: !2541, size: 64, offset: 384)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2534, file: !64, line: 2066, baseType: !1281, size: 64, offset: 448)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2534, file: !64, line: 2067, baseType: !2560, size: 64, offset: 512)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{!101, !1251, !101}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2534, file: !64, line: 2068, baseType: !2564, size: 64, offset: 576)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DISubroutineType(types: !2566)
!2566 = !{!101, !1251, !63}
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2534, file: !64, line: 2069, baseType: !2568, size: 64, offset: 640)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{!101, !1251}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2534, file: !64, line: 2070, baseType: !2564, size: 64, offset: 704)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2534, file: !64, line: 2071, baseType: !2568, size: 64, offset: 768)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2534, file: !64, line: 2072, baseType: !2574, size: 64, offset: 832)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{!101, !1004, !2577}
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !64, line: 62, flags: DIFlagFwdDecl)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2534, file: !64, line: 2073, baseType: !2580, size: 64, offset: 896)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DISubroutineType(types: !2582)
!2582 = !{!101, !1251, !2298, !893}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2534, file: !64, line: 2074, baseType: !1281, size: 64, offset: 960)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2534, file: !64, line: 2076, baseType: !2585, size: 64, offset: 1024)
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2586, size: 64)
!2586 = !DISubroutineType(types: !2587)
!2587 = !{!101, !2056, !1004}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2534, file: !64, line: 2077, baseType: !2585, size: 64, offset: 1088)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2534, file: !64, line: 2078, baseType: !2585, size: 64, offset: 1152)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2534, file: !64, line: 2079, baseType: !2585, size: 64, offset: 1216)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2534, file: !64, line: 2081, baseType: !2592, size: 64, offset: 1280)
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2593 = !DISubroutineType(types: !2594)
!2594 = !{!1193, !1251, !101, !893, !1196, !691}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2534, file: !64, line: 2082, baseType: !2596, size: 64, offset: 1344)
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{!1193, !1251, !101, !883, !1196, !691}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2534, file: !64, line: 2083, baseType: !2600, size: 64, offset: 1408)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = !DISubroutineType(types: !2602)
!2602 = !{!2603, !1039}
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !69, line: 296, size: 1664, elements: !2606)
!2606 = !{!2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2631, !2632, !2633}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2605, file: !69, line: 297, baseType: !733, size: 128)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2605, file: !69, line: 298, baseType: !232, size: 128, offset: 128)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2605, file: !69, line: 299, baseType: !232, size: 128, offset: 256)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2605, file: !69, line: 300, baseType: !232, size: 128, offset: 384)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2605, file: !69, line: 301, baseType: !299, size: 256, offset: 512)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2605, file: !69, line: 302, baseType: !254, size: 32, offset: 768)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2605, file: !69, line: 303, baseType: !274, size: 32, offset: 800)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2605, file: !69, line: 304, baseType: !1251, size: 64, offset: 832)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2605, file: !69, line: 305, baseType: !2616, size: 64, offset: 896)
!2616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !69, line: 68, size: 64, elements: !2617)
!2617 = !{!2618, !2630}
!2618 = !DIDerivedType(tag: DW_TAG_member, scope: !2616, file: !69, line: 69, baseType: !2619, size: 32)
!2619 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2616, file: !69, line: 69, size: 32, elements: !2620)
!2620 = !{!2621, !2622, !2623}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2619, file: !69, line: 70, baseType: !761, size: 32)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2619, file: !69, line: 71, baseType: !779, size: 32)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2619, file: !69, line: 72, baseType: !2624, size: 32)
!2624 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2625, line: 24, baseType: !2626)
!2625 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2626 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2625, line: 22, size: 32, elements: !2627)
!2627 = !{!2628}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2626, file: !2625, line: 23, baseType: !2629, size: 32)
!2629 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2625, line: 20, baseType: !767)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2616, file: !69, line: 74, baseType: !68, size: 32, offset: 32)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2605, file: !69, line: 306, baseType: !691, size: 64, offset: 960)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2605, file: !69, line: 307, baseType: !332, size: 64, offset: 1024)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2605, file: !69, line: 308, baseType: !2634, size: 576, offset: 1088)
!2634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !69, line: 205, size: 576, elements: !2635)
!2635 = !{!2636, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645}
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2634, file: !69, line: 206, baseType: !2637, size: 64)
!2637 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !69, line: 66, baseType: !311)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2634, file: !69, line: 207, baseType: !2637, size: 64, offset: 64)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2634, file: !69, line: 208, baseType: !2637, size: 64, offset: 128)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2634, file: !69, line: 209, baseType: !2637, size: 64, offset: 192)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2634, file: !69, line: 210, baseType: !2637, size: 64, offset: 256)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2634, file: !69, line: 211, baseType: !2637, size: 64, offset: 320)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2634, file: !69, line: 212, baseType: !2637, size: 64, offset: 384)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2634, file: !69, line: 213, baseType: !836, size: 64, offset: 448)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2634, file: !69, line: 214, baseType: !836, size: 64, offset: 512)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2534, file: !64, line: 2085, baseType: !2647, size: 64, offset: 1472)
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = !DISubroutineType(types: !2649)
!2649 = !{!1154, !1251, !2650}
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2652, line: 15, size: 256, elements: !2653)
!2652 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2653 = !{!2654, !2655, !2656, !2657, !2658}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2651, file: !2652, line: 16, baseType: !226, size: 32)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2651, file: !2652, line: 19, baseType: !101, size: 32, offset: 32)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2651, file: !2652, line: 26, baseType: !332, size: 64, offset: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2651, file: !2652, line: 33, baseType: !332, size: 64, offset: 128)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2651, file: !2652, line: 36, baseType: !2659, size: 64, offset: 192)
!2659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2660, size: 64)
!2660 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !35, line: 33, flags: DIFlagFwdDecl)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2534, file: !64, line: 2087, baseType: !2647, size: 64, offset: 1536)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2534, file: !64, line: 2089, baseType: !1281, size: 64, offset: 1600)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1252, file: !64, line: 1198, baseType: !2664, size: 64, offset: 448)
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!2665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2666)
!2666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !69, line: 324, size: 704, elements: !2667)
!2667 = !{!2668, !2672, !2676, !2680, !2681, !2682, !2683, !2684, !2689, !2694, !2698}
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2666, file: !69, line: 325, baseType: !2669, size: 64)
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2670, size: 64)
!2670 = !DISubroutineType(types: !2671)
!2671 = !{!101, !2604}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2666, file: !69, line: 326, baseType: !2673, size: 64, offset: 64)
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2674 = !DISubroutineType(types: !2675)
!2675 = !{!2604, !1251, !101}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2666, file: !69, line: 327, baseType: !2677, size: 64, offset: 128)
!2677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2678, size: 64)
!2678 = !DISubroutineType(types: !2679)
!2679 = !{null, !2604}
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2666, file: !69, line: 328, baseType: !2669, size: 64, offset: 192)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2666, file: !69, line: 329, baseType: !2669, size: 64, offset: 256)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2666, file: !69, line: 330, baseType: !2669, size: 64, offset: 320)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2666, file: !69, line: 331, baseType: !2560, size: 64, offset: 384)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2666, file: !69, line: 334, baseType: !2685, size: 64, offset: 448)
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{!2688, !1039}
!2688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2666, file: !69, line: 335, baseType: !2690, size: 64, offset: 512)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{!101, !1039, !2693}
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2666, file: !69, line: 337, baseType: !2695, size: 64, offset: 576)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = !DISubroutineType(types: !2697)
!2697 = !{!101, !1039, !2688}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2666, file: !69, line: 339, baseType: !2699, size: 64, offset: 640)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = !DISubroutineType(types: !2701)
!2701 = !{!101, !1251, !2702}
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1252, file: !64, line: 1199, baseType: !2704, size: 64, offset: 512)
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2706)
!2706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !69, line: 430, size: 704, elements: !2707)
!2707 = !{!2708, !2712, !2713, !2717, !2718, !2719, !2734, !2757, !2761, !2762, !2785}
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2706, file: !69, line: 431, baseType: !2709, size: 64)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = !DISubroutineType(types: !2711)
!2711 = !{!101, !1251, !101, !101, !1162}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2706, file: !69, line: 432, baseType: !2560, size: 64, offset: 64)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2706, file: !69, line: 433, baseType: !2714, size: 64, offset: 128)
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!2715 = !DISubroutineType(types: !2716)
!2716 = !{!101, !1251, !7}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2706, file: !69, line: 434, baseType: !2714, size: 64, offset: 192)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2706, file: !69, line: 435, baseType: !2560, size: 64, offset: 256)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2706, file: !69, line: 436, baseType: !2720, size: 64, offset: 320)
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = !DISubroutineType(types: !2722)
!2722 = !{!101, !1251, !101, !2723}
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !69, line: 417, size: 256, elements: !2725)
!2725 = !{!2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2724, file: !69, line: 418, baseType: !101, size: 32)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2724, file: !69, line: 419, baseType: !7, size: 32, offset: 32)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2724, file: !69, line: 420, baseType: !7, size: 32, offset: 64)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2724, file: !69, line: 422, baseType: !7, size: 32, offset: 96)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2724, file: !69, line: 423, baseType: !7, size: 32, offset: 128)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2724, file: !69, line: 424, baseType: !7, size: 32, offset: 160)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2724, file: !69, line: 425, baseType: !7, size: 32, offset: 192)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2724, file: !69, line: 426, baseType: !7, size: 32, offset: 224)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2706, file: !69, line: 437, baseType: !2735, size: 64, offset: 384)
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{!101, !1251, !2616, !2738}
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !69, line: 345, size: 960, elements: !2740)
!2740 = !{!2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2739, file: !69, line: 346, baseType: !101, size: 32)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2739, file: !69, line: 347, baseType: !393, size: 64, offset: 64)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2739, file: !69, line: 348, baseType: !393, size: 64, offset: 128)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2739, file: !69, line: 349, baseType: !393, size: 64, offset: 192)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2739, file: !69, line: 350, baseType: !393, size: 64, offset: 256)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2739, file: !69, line: 351, baseType: !393, size: 64, offset: 320)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2739, file: !69, line: 352, baseType: !393, size: 64, offset: 384)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2739, file: !69, line: 353, baseType: !309, size: 64, offset: 448)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2739, file: !69, line: 355, baseType: !309, size: 64, offset: 512)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2739, file: !69, line: 356, baseType: !101, size: 32, offset: 576)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2739, file: !69, line: 357, baseType: !101, size: 32, offset: 608)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2739, file: !69, line: 358, baseType: !393, size: 64, offset: 640)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2739, file: !69, line: 359, baseType: !393, size: 64, offset: 704)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2739, file: !69, line: 360, baseType: !393, size: 64, offset: 768)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2739, file: !69, line: 361, baseType: !309, size: 64, offset: 832)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2739, file: !69, line: 362, baseType: !101, size: 32, offset: 896)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2706, file: !69, line: 438, baseType: !2758, size: 64, offset: 448)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = !DISubroutineType(types: !2760)
!2760 = !{!101, !1251, !2702, !2738}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2706, file: !69, line: 440, baseType: !2735, size: 64, offset: 512)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2706, file: !69, line: 441, baseType: !2763, size: 64, offset: 576)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{!101, !1251, !2766}
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !69, line: 411, size: 1408, elements: !2768)
!2768 = !{!2769, !2770}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2767, file: !69, line: 412, baseType: !7, size: 32)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2767, file: !69, line: 413, baseType: !2771, size: 1344, offset: 64)
!2771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2772, size: 1344, elements: !717)
!2772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !69, line: 397, size: 448, elements: !2773)
!2773 = !{!2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2784}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2772, file: !69, line: 398, baseType: !7, size: 32)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2772, file: !69, line: 399, baseType: !7, size: 32, offset: 32)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2772, file: !69, line: 401, baseType: !7, size: 32, offset: 64)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2772, file: !69, line: 402, baseType: !7, size: 32, offset: 96)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2772, file: !69, line: 403, baseType: !7, size: 32, offset: 128)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2772, file: !69, line: 404, baseType: !7, size: 32, offset: 160)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2772, file: !69, line: 405, baseType: !7, size: 32, offset: 192)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2772, file: !69, line: 406, baseType: !395, size: 64, offset: 256)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2772, file: !69, line: 407, baseType: !2783, size: 64, offset: 320)
!2783 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !227, line: 132, baseType: !393)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2772, file: !69, line: 408, baseType: !2783, size: 64, offset: 384)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2706, file: !69, line: 442, baseType: !2714, size: 64, offset: 640)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1252, file: !64, line: 1200, baseType: !2787, size: 64, offset: 576)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2789)
!2789 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !64, line: 54, flags: DIFlagFwdDecl)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1252, file: !64, line: 1201, baseType: !332, size: 64, offset: 640)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1252, file: !64, line: 1202, baseType: !332, size: 64, offset: 704)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1252, file: !64, line: 1203, baseType: !332, size: 64, offset: 768)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1252, file: !64, line: 1204, baseType: !1004, size: 64, offset: 832)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1252, file: !64, line: 1205, baseType: !820, size: 320, offset: 896)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1252, file: !64, line: 1206, baseType: !101, size: 32, offset: 1216)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1252, file: !64, line: 1207, baseType: !274, size: 32, offset: 1248)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1252, file: !64, line: 1209, baseType: !225, size: 64, offset: 1280)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1252, file: !64, line: 1211, baseType: !2799, size: 64, offset: 1344)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2801 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2802)
!2802 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !64, line: 1211, flags: DIFlagFwdDecl)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1252, file: !64, line: 1223, baseType: !2804, size: 64, offset: 1408)
!2804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1016, line: 34, size: 64, elements: !2805)
!2805 = !{!2806}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2804, file: !1016, line: 35, baseType: !1019, size: 64)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1252, file: !64, line: 1224, baseType: !232, size: 128, offset: 1472)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1252, file: !64, line: 1225, baseType: !2809, size: 64, offset: 1600)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !2811, line: 40, size: 7424, elements: !2812)
!2811 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!2812 = !{!2813, !2814, !2815, !3899, !3900, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3943, !3944}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !2810, file: !2811, line: 41, baseType: !1818, size: 64)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !2810, file: !2811, line: 42, baseType: !1818, size: 64, offset: 64)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !2810, file: !2811, line: 43, baseType: !2816, size: 64, offset: 128)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !134, line: 128, size: 4544, elements: !2818)
!2818 = !{!2819, !2820, !2821, !2822, !2826, !2827, !2828, !2829, !2830, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3865, !3866, !3867, !3868, !3871, !3872, !3875, !3878, !3879, !3882, !3883, !3884, !3885}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !2817, file: !134, line: 133, baseType: !101, size: 32)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "first_minor", scope: !2817, file: !134, line: 134, baseType: !101, size: 32, offset: 32)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "minors", scope: !2817, file: !134, line: 135, baseType: !101, size: 32, offset: 64)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "disk_name", scope: !2817, file: !134, line: 137, baseType: !2823, size: 256, offset: 96)
!2823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !866, size: 256, elements: !2824)
!2824 = !{!2825}
!2825 = !DISubrange(count: 32)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2817, file: !134, line: 139, baseType: !294, size: 16, offset: 352)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "event_flags", scope: !2817, file: !134, line: 140, baseType: !294, size: 16, offset: 368)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "part_tbl", scope: !2817, file: !134, line: 142, baseType: !1243, size: 128, offset: 384)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "part0", scope: !2817, file: !134, line: 143, baseType: !2809, size: 64, offset: 512)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !2817, file: !134, line: 145, baseType: !2831, size: 64, offset: 576)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2833)
!2833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device_operations", file: !134, line: 1388, size: 1152, elements: !2834)
!2834 = !{!2835, !2926, !3777, !3782, !3786, !3790, !3791, !3795, !3796, !3802, !3806, !3807, !3811, !3837, !3841, !3846, !3847, !3851}
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "submit_bio", scope: !2833, file: !134, line: 1389, baseType: !2836, size: 64)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = !DISubroutineType(types: !2838)
!2838 = !{null, !2839}
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2840, size: 64)
!2840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio", file: !2811, line: 265, size: 960, elements: !2841)
!2841 = !{!2842, !2843, !2844, !2846, !2847, !2848, !2850, !2851, !2858, !2860, !2863, !2864, !2867, !2871, !2872, !2874, !2875, !2876, !2877, !2879, !2924}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "bi_next", scope: !2840, file: !2811, line: 266, baseType: !2839, size: 64)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bdev", scope: !2840, file: !2811, line: 267, baseType: !2809, size: 64, offset: 64)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "bi_opf", scope: !2840, file: !2811, line: 268, baseType: !2845, size: 32, offset: 128)
!2845 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_opf_t", file: !2811, line: 256, baseType: !336)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "bi_flags", scope: !2840, file: !2811, line: 271, baseType: !294, size: 16, offset: 160)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "bi_ioprio", scope: !2840, file: !2811, line: 272, baseType: !294, size: 16, offset: 176)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "bi_status", scope: !2840, file: !2811, line: 273, baseType: !2849, size: 8, offset: 192)
!2849 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_status_t", file: !2811, line: 97, baseType: !282)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_remaining", scope: !2840, file: !2811, line: 274, baseType: !274, size: 32, offset: 224)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iter", scope: !2840, file: !2811, line: 276, baseType: !2852, size: 160, align: 32, offset: 256)
!2852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bvec_iter", file: !1900, line: 77, size: 160, align: 32, elements: !2853)
!2853 = !{!2854, !2855, !2856, !2857}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "bi_sector", scope: !2852, file: !1900, line: 78, baseType: !1818, size: 64)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "bi_size", scope: !2852, file: !1900, line: 80, baseType: !7, size: 32, offset: 64)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "bi_idx", scope: !2852, file: !1900, line: 82, baseType: !7, size: 32, offset: 96)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bvec_done", scope: !2852, file: !1900, line: 84, baseType: !7, size: 32, offset: 128)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "bi_cookie", scope: !2840, file: !2811, line: 278, baseType: !2859, size: 32, offset: 416)
!2859 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_qc_t", file: !2811, line: 258, baseType: !7)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "bi_end_io", scope: !2840, file: !2811, line: 279, baseType: !2861, size: 64, offset: 448)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DIDerivedType(tag: DW_TAG_typedef, name: "bio_end_io_t", file: !2811, line: 20, baseType: !2837)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "bi_private", scope: !2840, file: !2811, line: 280, baseType: !225, size: 64, offset: 512)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "bi_blkg", scope: !2840, file: !2811, line: 288, baseType: !2865, size: 64, offset: 576)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = !DICompositeType(tag: DW_TAG_structure_type, name: "blkcg_gq", file: !2811, line: 288, flags: DIFlagFwdDecl)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "bi_issue", scope: !2840, file: !2811, line: 289, baseType: !2868, size: 64, offset: 640)
!2868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_issue", file: !2811, line: 228, size: 64, elements: !2869)
!2869 = !{!2870}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2868, file: !2811, line: 229, baseType: !393, size: 64)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iocost_cost", scope: !2840, file: !2811, line: 291, baseType: !393, size: 64, offset: 704)
!2872 = !DIDerivedType(tag: DW_TAG_member, scope: !2840, file: !2811, line: 299, baseType: !2873, offset: 768)
!2873 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2840, file: !2811, line: 299, elements: !661)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "bi_vcnt", scope: !2840, file: !2811, line: 305, baseType: !294, size: 16, offset: 768)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "bi_max_vecs", scope: !2840, file: !2811, line: 311, baseType: !294, size: 16, offset: 784)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_cnt", scope: !2840, file: !2811, line: 313, baseType: !274, size: 32, offset: 800)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "bi_io_vec", scope: !2840, file: !2811, line: 315, baseType: !2878, size: 64, offset: 832)
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "bi_pool", scope: !2840, file: !2811, line: 317, baseType: !2880, size: 64, offset: 896)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_set", file: !2882, line: 678, size: 1984, elements: !2883)
!2882 = !DIFile(filename: "./include/linux/bio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48d164cf34dda85459af1fe5d2b8d08f")
!2883 = !{!2884, !2888, !2889, !2892, !2913, !2914, !2915, !2916, !2921, !2922, !2923}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "bio_slab", scope: !2881, file: !2882, line: 679, baseType: !2885, size: 64)
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2887, line: 11, flags: DIFlagFwdDecl)
!2887 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "front_pad", scope: !2881, file: !2882, line: 680, baseType: !7, size: 32, offset: 64)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !2881, file: !2882, line: 685, baseType: !2890, size: 64, offset: 128)
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2891 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_alloc_cache", file: !2882, line: 685, flags: DIFlagFwdDecl)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "bio_pool", scope: !2881, file: !2882, line: 687, baseType: !2893, size: 576, offset: 192)
!2893 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_t", file: !2894, line: 26, baseType: !2895)
!2894 = !DIFile(filename: "./include/linux/mempool.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1ef8a210e9c9e696cc7d6e9be9316611")
!2895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mempool_s", file: !2894, line: 16, size: 576, elements: !2896)
!2896 = !{!2897, !2898, !2899, !2900, !2901, !2902, !2907, !2912}
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2895, file: !2894, line: 17, baseType: !254, size: 32)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "min_nr", scope: !2895, file: !2894, line: 18, baseType: !101, size: 32, offset: 32)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "curr_nr", scope: !2895, file: !2894, line: 19, baseType: !101, size: 32, offset: 64)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !2895, file: !2894, line: 20, baseType: !1809, size: 64, offset: 128)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "pool_data", scope: !2895, file: !2894, line: 22, baseType: !225, size: 64, offset: 192)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2895, file: !2894, line: 23, baseType: !2903, size: 64, offset: 256)
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2904 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_alloc_t", file: !2894, line: 13, baseType: !2905)
!2905 = !DISubroutineType(types: !2906)
!2906 = !{!225, !226, !225}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2895, file: !2894, line: 24, baseType: !2908, size: 64, offset: 320)
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 64)
!2909 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_free_t", file: !2894, line: 14, baseType: !2910)
!2910 = !DISubroutineType(types: !2911)
!2911 = !{null, !225, !225}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2895, file: !2894, line: 25, baseType: !742, size: 192, offset: 384)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "bvec_pool", scope: !2881, file: !2882, line: 688, baseType: !2893, size: 576, offset: 768)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "back_pad", scope: !2881, file: !2882, line: 694, baseType: !7, size: 32, offset: 1344)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_lock", scope: !2881, file: !2882, line: 699, baseType: !254, size: 32, offset: 1376)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_list", scope: !2881, file: !2882, line: 700, baseType: !2917, size: 128, offset: 1408)
!2917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !2882, line: 550, size: 128, elements: !2918)
!2918 = !{!2919, !2920}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2917, file: !2882, line: 551, baseType: !2839, size: 64)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2917, file: !2882, line: 552, baseType: !2839, size: 64, offset: 64)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_work", scope: !2881, file: !2882, line: 701, baseType: !2412, size: 256, offset: 1536)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_workqueue", scope: !2881, file: !2882, line: 702, baseType: !2473, size: 64, offset: 1792)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_dead", scope: !2881, file: !2882, line: 707, baseType: !733, size: 128, offset: 1856)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "bi_inline_vecs", scope: !2840, file: !2811, line: 324, baseType: !2925, offset: 960)
!2925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1899, elements: !757)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "poll_bio", scope: !2833, file: !134, line: 1390, baseType: !2927, size: 64, offset: 64)
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = !DISubroutineType(types: !2929)
!2929 = !{!101, !2839, !2930, !7}
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !134, line: 1559, size: 192, elements: !2932)
!2932 = !{!2933, !3772, !3773}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "req_list", scope: !2931, file: !134, line: 1560, baseType: !2934, size: 64)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request", file: !75, line: 80, size: 1984, elements: !2936)
!2936 = !{!2937, !3694, !3695, !3696, !3697, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3726, !3731, !3760, !3769, !3770, !3771}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2935, file: !75, line: 81, baseType: !2938, size: 64)
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!2939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !134, line: 391, size: 7296, elements: !2940)
!2940 = !{!2941, !2942, !2945, !2946, !2949, !2952, !2953, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3668, !3669, !3670, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693}
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "last_merge", scope: !2939, file: !134, line: 392, baseType: !2934, size: 64)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "elevator", scope: !2939, file: !134, line: 393, baseType: !2943, size: 64, offset: 64)
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_queue", file: !134, line: 30, flags: DIFlagFwdDecl)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "q_usage_counter", scope: !2939, file: !134, line: 395, baseType: !1486, size: 128, offset: 128)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2939, file: !134, line: 397, baseType: !2947, size: 64, offset: 256)
!2947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2948, size: 64)
!2948 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_queue_stats", file: !134, line: 39, flags: DIFlagFwdDecl)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos", scope: !2939, file: !134, line: 398, baseType: !2950, size: 64, offset: 320)
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!2951 = !DICompositeType(tag: DW_TAG_structure_type, name: "rq_qos", file: !134, line: 38, flags: DIFlagFwdDecl)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos_mutex", scope: !2939, file: !134, line: 399, baseType: !299, size: 256, offset: 384)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ops", scope: !2939, file: !134, line: 401, baseType: !2954, size: 64, offset: 640)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2956)
!2956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ops", file: !75, line: 537, size: 1152, elements: !2957)
!2957 = !{!2958, !3068, !3072, !3076, !3080, !3084, !3088, !3092, !3096, !3100, !3104, !3108, !3112, !3142, !3146, !3147, !3151, !3155}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "queue_rq", scope: !2956, file: !75, line: 541, baseType: !2959, size: 64)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2960 = !DISubroutineType(types: !2961)
!2961 = !{!2849, !2962, !3062}
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_hw_ctx", file: !75, line: 288, size: 4096, elements: !2964)
!2964 = !{!2965, !2971, !2972, !2975, !2976, !2977, !2978, !2979, !2980, !2983, !2984, !3000, !3003, !3004, !3005, !3006, !3008, !3009, !3022, !3023, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061}
!2965 = !DIDerivedType(tag: DW_TAG_member, scope: !2963, file: !75, line: 289, baseType: !2966, size: 512, align: 512)
!2966 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2963, file: !75, line: 289, size: 512, align: 512, elements: !2967)
!2967 = !{!2968, !2969, !2970}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2966, file: !75, line: 291, baseType: !254, size: 32)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !2966, file: !75, line: 299, baseType: !232, size: 128, offset: 64)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2966, file: !75, line: 304, baseType: !332, size: 64, offset: 192)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "run_work", scope: !2963, file: !75, line: 310, baseType: !2468, size: 704, offset: 512)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2963, file: !75, line: 312, baseType: !2973, size: 64, offset: 1216)
!2973 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !587, line: 913, baseType: !2974)
!2974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !588, size: 64, elements: !592)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "next_cpu", scope: !2963, file: !75, line: 317, baseType: !101, size: 32, offset: 1280)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "next_cpu_batch", scope: !2963, file: !75, line: 322, baseType: !101, size: 32, offset: 1312)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2963, file: !75, line: 325, baseType: !332, size: 64, offset: 1344)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "sched_data", scope: !2963, file: !75, line: 331, baseType: !225, size: 64, offset: 1408)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !2963, file: !75, line: 335, baseType: !2938, size: 64, offset: 1472)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !2963, file: !75, line: 337, baseType: !2981, size: 64, offset: 1536)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_flush_queue", file: !134, line: 35, flags: DIFlagFwdDecl)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2963, file: !75, line: 343, baseType: !225, size: 64, offset: 1600)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_map", scope: !2963, file: !75, line: 349, baseType: !2985, size: 256, offset: 1664)
!2985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbitmap", file: !2986, line: 52, size: 256, elements: !2987)
!2986 = !DIFile(filename: "./include/linux/sbitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c1a10e3a5ba3f1b25200b1abce63f43a")
!2987 = !{!2988, !2989, !2990, !2991, !2992, !2999}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2985, file: !2986, line: 56, baseType: !7, size: 32)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !2985, file: !2986, line: 61, baseType: !7, size: 32, offset: 32)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "map_nr", scope: !2985, file: !2986, line: 66, baseType: !7, size: 32, offset: 64)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "round_robin", scope: !2985, file: !2986, line: 71, baseType: !880, size: 8, offset: 96)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !2985, file: !2986, line: 76, baseType: !2993, size: 64, offset: 128)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbitmap_word", file: !2986, line: 29, size: 1024, align: 512, elements: !2995)
!2995 = !{!2996, !2997, !2998}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !2994, file: !2986, line: 33, baseType: !332, size: 64)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "cleared", scope: !2994, file: !2986, line: 38, baseType: !332, size: 64, align: 512, offset: 512)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "swap_lock", scope: !2994, file: !2986, line: 43, baseType: !313, size: 32, offset: 576)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_hint", scope: !2985, file: !2986, line: 84, baseType: !2250, size: 64, offset: 192)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_from", scope: !2963, file: !75, line: 355, baseType: !3001, size: 64, offset: 1920)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ctx", file: !134, line: 404, flags: DIFlagFwdDecl)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_busy", scope: !2963, file: !75, line: 361, baseType: !7, size: 32, offset: 1984)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2963, file: !75, line: 364, baseType: !294, size: 16, offset: 2016)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ctx", scope: !2963, file: !75, line: 366, baseType: !294, size: 16, offset: 2032)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "ctxs", scope: !2963, file: !75, line: 368, baseType: !3007, size: 64, offset: 2048)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_wait_lock", scope: !2963, file: !75, line: 371, baseType: !254, size: 32, offset: 2112)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_wait", scope: !2963, file: !75, line: 376, baseType: !3010, size: 320, offset: 2176)
!3010 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !743, line: 14, baseType: !3011)
!3011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !743, line: 30, size: 320, elements: !3012)
!3012 = !{!3013, !3014, !3015, !3021}
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3011, file: !743, line: 31, baseType: !7, size: 32)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3011, file: !743, line: 32, baseType: !225, size: 64, offset: 64)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3011, file: !743, line: 33, baseType: !3016, size: 64, offset: 128)
!3016 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !743, line: 16, baseType: !3017)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{!101, !3020, !7, !101, !225}
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3011, file: !743, line: 34, baseType: !232, size: 128, offset: 192)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "wait_index", scope: !2963, file: !75, line: 382, baseType: !274, size: 32, offset: 2496)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "tags", scope: !2963, file: !75, line: 388, baseType: !3024, size: 64, offset: 2560)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tags", file: !75, line: 735, size: 1472, elements: !3026)
!3026 = !{!3027, !3028, !3029, !3030, !3045, !3046, !3048, !3049, !3050}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tags", scope: !3025, file: !75, line: 736, baseType: !7, size: 32)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "nr_reserved_tags", scope: !3025, file: !75, line: 737, baseType: !7, size: 32, offset: 32)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "active_queues", scope: !3025, file: !75, line: 738, baseType: !7, size: 32, offset: 64)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap_tags", scope: !3025, file: !75, line: 740, baseType: !3031, size: 512, offset: 128)
!3031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbitmap_queue", file: !2986, line: 109, size: 512, elements: !3032)
!3032 = !{!3033, !3034, !3035, !3036, !3041, !3042, !3043, !3044}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "sb", scope: !3031, file: !2986, line: 113, baseType: !2985, size: 256)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "wake_batch", scope: !3031, file: !2986, line: 119, baseType: !7, size: 32, offset: 256)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "wake_index", scope: !3031, file: !2986, line: 124, baseType: !274, size: 32, offset: 288)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !3031, file: !2986, line: 129, baseType: !3037, size: 64, offset: 320)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbq_wait_state", file: !2986, line: 93, size: 512, align: 512, elements: !3039)
!3039 = !{!3040}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !3038, file: !2986, line: 97, baseType: !742, size: 192)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "ws_active", scope: !3031, file: !2986, line: 134, baseType: !274, size: 32, offset: 384)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "min_shallow_depth", scope: !3031, file: !2986, line: 140, baseType: !7, size: 32, offset: 416)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "completion_cnt", scope: !3031, file: !2986, line: 146, baseType: !274, size: 32, offset: 448)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_cnt", scope: !3031, file: !2986, line: 151, baseType: !274, size: 32, offset: 480)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "breserved_tags", scope: !3025, file: !75, line: 741, baseType: !3031, size: 512, offset: 640)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "rqs", scope: !3025, file: !75, line: 743, baseType: !3047, size: 64, offset: 1152)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2934, size: 64)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "static_rqs", scope: !3025, file: !75, line: 744, baseType: !3047, size: 64, offset: 1216)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "page_list", scope: !3025, file: !75, line: 745, baseType: !232, size: 128, offset: 1280)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3025, file: !75, line: 751, baseType: !254, size: 32, offset: 1408)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "sched_tags", scope: !2963, file: !75, line: 394, baseType: !3024, size: 64, offset: 2624)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !2963, file: !75, line: 397, baseType: !332, size: 64, offset: 2688)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2963, file: !75, line: 400, baseType: !7, size: 32, offset: 2752)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "queue_num", scope: !2963, file: !75, line: 402, baseType: !7, size: 32, offset: 2784)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "nr_active", scope: !2963, file: !75, line: 408, baseType: !274, size: 32, offset: 2816)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_online", scope: !2963, file: !75, line: 411, baseType: !733, size: 128, offset: 2880)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_dead", scope: !2963, file: !75, line: 413, baseType: !733, size: 128, offset: 3008)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2963, file: !75, line: 415, baseType: !1298, size: 512, offset: 3136)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dir", scope: !2963, file: !75, line: 422, baseType: !1004, size: 64, offset: 3648)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "sched_debugfs_dir", scope: !2963, file: !75, line: 424, baseType: !1004, size: 64, offset: 3712)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "hctx_list", scope: !2963, file: !75, line: 431, baseType: !232, size: 128, offset: 3776)
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3063, size: 64)
!3063 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3064)
!3064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_queue_data", file: !75, line: 526, size: 128, elements: !3065)
!3065 = !{!3066, !3067}
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "rq", scope: !3064, file: !75, line: 527, baseType: !2934, size: 64)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !3064, file: !75, line: 528, baseType: !880, size: 8, offset: 64)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "commit_rqs", scope: !2956, file: !75, line: 551, baseType: !3069, size: 64, offset: 64)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = !DISubroutineType(types: !3071)
!3071 = !{null, !2962}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "queue_rqs", scope: !2956, file: !75, line: 559, baseType: !3073, size: 64, offset: 128)
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3074 = !DISubroutineType(types: !3075)
!3075 = !{null, !3047}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "get_budget", scope: !2956, file: !75, line: 567, baseType: !3077, size: 64, offset: 192)
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3078 = !DISubroutineType(types: !3079)
!3079 = !{!101, !2938}
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "put_budget", scope: !2956, file: !75, line: 572, baseType: !3081, size: 64, offset: 256)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3082 = !DISubroutineType(types: !3083)
!3083 = !{null, !2938, !101}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "set_rq_budget_token", scope: !2956, file: !75, line: 577, baseType: !3085, size: 64, offset: 320)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{null, !2934, !101}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "get_rq_budget_token", scope: !2956, file: !75, line: 581, baseType: !3089, size: 64, offset: 384)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!101, !2934}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2956, file: !75, line: 586, baseType: !3093, size: 64, offset: 448)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{!74, !2934}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2956, file: !75, line: 591, baseType: !3097, size: 64, offset: 512)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!101, !2962, !2930}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2956, file: !75, line: 596, baseType: !3101, size: 64, offset: 576)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{null, !2934}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "init_hctx", scope: !2956, file: !75, line: 603, baseType: !3105, size: 64, offset: 640)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!101, !2962, !225, !7}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "exit_hctx", scope: !2956, file: !75, line: 607, baseType: !3109, size: 64, offset: 704)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = !DISubroutineType(types: !3111)
!3111 = !{null, !2962, !7}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "init_request", scope: !2956, file: !75, line: 616, baseType: !3113, size: 64, offset: 768)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = !DISubroutineType(types: !3115)
!3115 = !{!101, !3116, !2934, !7, !7}
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tag_set", file: !75, line: 498, size: 1344, elements: !3118)
!3118 = !{!3119, !3120, !3127, !3128, !3129, !3130, !3131, !3132, !3133, !3134, !3135, !3136, !3138, !3139, !3140, !3141}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3117, file: !75, line: 499, baseType: !2954, size: 64)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3117, file: !75, line: 500, baseType: !3121, size: 384, offset: 64)
!3121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3122, size: 384, elements: !717)
!3122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_queue_map", file: !75, line: 444, size: 128, elements: !3123)
!3123 = !{!3124, !3125, !3126}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "mq_map", scope: !3122, file: !75, line: 445, baseType: !2250, size: 64)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "nr_queues", scope: !3122, file: !75, line: 446, baseType: !7, size: 32, offset: 64)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "queue_offset", scope: !3122, file: !75, line: 447, baseType: !7, size: 32, offset: 96)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "nr_maps", scope: !3117, file: !75, line: 501, baseType: !7, size: 32, offset: 448)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !3117, file: !75, line: 502, baseType: !7, size: 32, offset: 480)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !3117, file: !75, line: 503, baseType: !7, size: 32, offset: 512)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_tags", scope: !3117, file: !75, line: 504, baseType: !7, size: 32, offset: 544)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_size", scope: !3117, file: !75, line: 505, baseType: !7, size: 32, offset: 576)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !3117, file: !75, line: 506, baseType: !101, size: 32, offset: 608)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3117, file: !75, line: 507, baseType: !7, size: 32, offset: 640)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3117, file: !75, line: 508, baseType: !7, size: 32, offset: 672)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3117, file: !75, line: 509, baseType: !225, size: 64, offset: 704)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "tags", scope: !3117, file: !75, line: 511, baseType: !3137, size: 64, offset: 768)
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "shared_tags", scope: !3117, file: !75, line: 513, baseType: !3024, size: 64, offset: 832)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "tag_list_lock", scope: !3117, file: !75, line: 515, baseType: !299, size: 256, offset: 896)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "tag_list", scope: !3117, file: !75, line: 516, baseType: !232, size: 128, offset: 1152)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "srcu", scope: !3117, file: !75, line: 517, baseType: !2368, size: 64, offset: 1280)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "exit_request", scope: !2956, file: !75, line: 621, baseType: !3143, size: 64, offset: 832)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3144 = !DISubroutineType(types: !3145)
!3145 = !{null, !3116, !2934, !7}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_rq", scope: !2956, file: !75, line: 628, baseType: !3101, size: 64, offset: 896)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !2956, file: !75, line: 633, baseType: !3148, size: 64, offset: 960)
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3149, size: 64)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{!880, !2938}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "map_queues", scope: !2956, file: !75, line: 639, baseType: !3152, size: 64, offset: 1024)
!3152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3153, size: 64)
!3153 = !DISubroutineType(types: !3154)
!3154 = !{null, !3116}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "show_rq", scope: !2956, file: !75, line: 646, baseType: !3156, size: 64, offset: 1088)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = !DISubroutineType(types: !3158)
!3158 = !{null, !2056, !2934}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "queue_ctx", scope: !2939, file: !134, line: 404, baseType: !3001, size: 64, offset: 704)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !2939, file: !134, line: 406, baseType: !7, size: 32, offset: 768)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "hctx_table", scope: !2939, file: !134, line: 409, baseType: !1243, size: 128, offset: 832)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !2939, file: !134, line: 410, baseType: !7, size: 32, offset: 960)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "queuedata", scope: !2939, file: !134, line: 416, baseType: !225, size: 64, offset: 1024)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "queue_flags", scope: !2939, file: !134, line: 421, baseType: !332, size: 64, offset: 1088)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "pm_only", scope: !2939, file: !134, line: 426, baseType: !274, size: 32, offset: 1152)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2939, file: !134, line: 432, baseType: !101, size: 32, offset: 1184)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "queue_lock", scope: !2939, file: !134, line: 434, baseType: !254, size: 32, offset: 1216)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "disk", scope: !2939, file: !134, line: 436, baseType: !2816, size: 64, offset: 1280)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !2939, file: !134, line: 438, baseType: !341, size: 32, offset: 1344)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "mq_kobj", scope: !2939, file: !134, line: 443, baseType: !1304, size: 64, offset: 1408)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2939, file: !134, line: 450, baseType: !3172, size: 64, offset: 1472)
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!3173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !86, line: 705, size: 5824, elements: !3174)
!3174 = !{!3175, !3176, !3177, !3180, !3181, !3234, !3304, !3305, !3306, !3307, !3308, !3315, !3407, !3420, !3430, !3434, !3436, !3437, !3438, !3442, !3449, !3450, !3453, !3456, !3460, !3564, !3565, !3566, !3567, !3568, !3569, !3599, !3600, !3601, !3604, !3607, !3616, !3617, !3618, !3619, !3620, !3621}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3173, file: !86, line: 706, baseType: !1298, size: 512)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3173, file: !86, line: 707, baseType: !3172, size: 64, offset: 512)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3173, file: !86, line: 709, baseType: !3178, size: 64, offset: 576)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !86, line: 37, flags: DIFlagFwdDecl)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3173, file: !86, line: 711, baseType: !883, size: 64, offset: 640)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3173, file: !86, line: 712, baseType: !3182, size: 64, offset: 704)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3184)
!3184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !86, line: 89, size: 384, elements: !3185)
!3185 = !{!3186, !3187, !3188, !3194, !3199, !3203}
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3184, file: !86, line: 90, baseType: !883, size: 64)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3184, file: !86, line: 91, baseType: !1378, size: 64, offset: 64)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3184, file: !86, line: 92, baseType: !3189, size: 64, offset: 128)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = !DISubroutineType(types: !3191)
!3191 = !{!101, !3192, !1334}
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3173)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3184, file: !86, line: 93, baseType: !3195, size: 64, offset: 192)
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = !DISubroutineType(types: !3197)
!3197 = !{!893, !3192, !3198, !2009, !2010}
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3184, file: !86, line: 95, baseType: !3200, size: 64, offset: 256)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = !DISubroutineType(types: !3202)
!3202 = !{null, !3172}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3184, file: !86, line: 97, baseType: !3204, size: 64, offset: 320)
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3206)
!3206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !93, line: 286, size: 1472, elements: !3207)
!3207 = !{!3208, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3206, file: !93, line: 287, baseType: !3209, size: 64)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{!101, !3172}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3206, file: !93, line: 288, baseType: !3200, size: 64, offset: 64)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3206, file: !93, line: 289, baseType: !3209, size: 64, offset: 128)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3206, file: !93, line: 290, baseType: !3209, size: 64, offset: 192)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3206, file: !93, line: 291, baseType: !3209, size: 64, offset: 256)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3206, file: !93, line: 292, baseType: !3209, size: 64, offset: 320)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3206, file: !93, line: 293, baseType: !3209, size: 64, offset: 384)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3206, file: !93, line: 294, baseType: !3209, size: 64, offset: 448)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3206, file: !93, line: 295, baseType: !3209, size: 64, offset: 512)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3206, file: !93, line: 296, baseType: !3209, size: 64, offset: 576)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3206, file: !93, line: 297, baseType: !3209, size: 64, offset: 640)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3206, file: !93, line: 298, baseType: !3209, size: 64, offset: 704)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3206, file: !93, line: 299, baseType: !3209, size: 64, offset: 768)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3206, file: !93, line: 300, baseType: !3209, size: 64, offset: 832)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3206, file: !93, line: 301, baseType: !3209, size: 64, offset: 896)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3206, file: !93, line: 302, baseType: !3209, size: 64, offset: 960)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3206, file: !93, line: 303, baseType: !3209, size: 64, offset: 1024)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3206, file: !93, line: 304, baseType: !3209, size: 64, offset: 1088)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3206, file: !93, line: 305, baseType: !3209, size: 64, offset: 1152)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3206, file: !93, line: 306, baseType: !3209, size: 64, offset: 1216)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3206, file: !93, line: 307, baseType: !3209, size: 64, offset: 1280)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3206, file: !93, line: 308, baseType: !3209, size: 64, offset: 1344)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3206, file: !93, line: 309, baseType: !3209, size: 64, offset: 1408)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3173, file: !86, line: 714, baseType: !3235, size: 64, offset: 768)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3237)
!3237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3238, line: 80, size: 1344, elements: !3239)
!3238 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!3239 = !{!3240, !3241, !3242, !3243, !3244, !3245, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3303}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3237, file: !3238, line: 81, baseType: !883, size: 64)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3237, file: !3238, line: 82, baseType: !883, size: 64, offset: 64)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3237, file: !3238, line: 83, baseType: !1378, size: 64, offset: 128)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3237, file: !3238, line: 84, baseType: !1378, size: 64, offset: 192)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3237, file: !3238, line: 85, baseType: !1378, size: 64, offset: 256)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3237, file: !3238, line: 87, baseType: !3246, size: 64, offset: 320)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!101, !3172, !3249}
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !80, line: 96, size: 1152, elements: !3251)
!3251 = !{!3252, !3253, !3254, !3255, !3256, !3257, !3258, !3262, !3266, !3267, !3268, !3269, !3270, !3278, !3279, !3280, !3281, !3282, !3283}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3250, file: !80, line: 97, baseType: !883, size: 64)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3250, file: !80, line: 98, baseType: !3235, size: 64, offset: 64)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3250, file: !80, line: 100, baseType: !1285, size: 64, offset: 128)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3250, file: !80, line: 101, baseType: !883, size: 64, offset: 192)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3250, file: !80, line: 103, baseType: !880, size: 8, offset: 256)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3250, file: !80, line: 104, baseType: !79, size: 32, offset: 288)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3250, file: !80, line: 106, baseType: !3259, size: 64, offset: 320)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3261)
!3261 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !80, line: 106, flags: DIFlagFwdDecl)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3250, file: !80, line: 107, baseType: !3263, size: 64, offset: 384)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3265)
!3265 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !80, line: 107, flags: DIFlagFwdDecl)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3250, file: !80, line: 109, baseType: !3209, size: 64, offset: 448)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3250, file: !80, line: 110, baseType: !3200, size: 64, offset: 512)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3250, file: !80, line: 111, baseType: !3209, size: 64, offset: 576)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3250, file: !80, line: 112, baseType: !3200, size: 64, offset: 640)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3250, file: !80, line: 113, baseType: !3271, size: 64, offset: 704)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = !DISubroutineType(types: !3273)
!3273 = !{!101, !3172, !3274}
!3274 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !93, line: 60, baseType: !3275)
!3275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !93, line: 58, size: 32, elements: !3276)
!3276 = !{!3277}
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3275, file: !93, line: 59, baseType: !101, size: 32)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3250, file: !80, line: 114, baseType: !3209, size: 64, offset: 768)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3250, file: !80, line: 115, baseType: !1378, size: 64, offset: 832)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3250, file: !80, line: 116, baseType: !1378, size: 64, offset: 896)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3250, file: !80, line: 118, baseType: !3204, size: 64, offset: 960)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3250, file: !80, line: 119, baseType: !3200, size: 64, offset: 1024)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3250, file: !80, line: 121, baseType: !3284, size: 64, offset: 1088)
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3285 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !80, line: 121, flags: DIFlagFwdDecl)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3237, file: !3238, line: 88, baseType: !3189, size: 64, offset: 384)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3237, file: !3238, line: 89, baseType: !3209, size: 64, offset: 448)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3237, file: !3238, line: 90, baseType: !3200, size: 64, offset: 512)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3237, file: !3238, line: 91, baseType: !3200, size: 64, offset: 576)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3237, file: !3238, line: 92, baseType: !3200, size: 64, offset: 640)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3237, file: !3238, line: 94, baseType: !3209, size: 64, offset: 704)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3237, file: !3238, line: 95, baseType: !3209, size: 64, offset: 768)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3237, file: !3238, line: 97, baseType: !3271, size: 64, offset: 832)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3237, file: !3238, line: 98, baseType: !3209, size: 64, offset: 896)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3237, file: !3238, line: 100, baseType: !3209, size: 64, offset: 960)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3237, file: !3238, line: 102, baseType: !3209, size: 64, offset: 1024)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !3237, file: !3238, line: 103, baseType: !3200, size: 64, offset: 1088)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3237, file: !3238, line: 105, baseType: !3204, size: 64, offset: 1152)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3237, file: !3238, line: 107, baseType: !3300, size: 64, offset: 1216)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3302)
!3302 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3238, line: 107, flags: DIFlagFwdDecl)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3237, file: !3238, line: 109, baseType: !880, size: 8, offset: 1280)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3173, file: !86, line: 715, baseType: !3249, size: 64, offset: 832)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3173, file: !86, line: 717, baseType: !225, size: 64, offset: 896)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3173, file: !86, line: 719, baseType: !225, size: 64, offset: 960)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3173, file: !86, line: 721, baseType: !299, size: 256, offset: 1024)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3173, file: !86, line: 725, baseType: !3309, size: 448, offset: 1280)
!3309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !86, line: 517, size: 448, elements: !3310)
!3310 = !{!3311, !3312, !3313, !3314}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3309, file: !86, line: 518, baseType: !232, size: 128)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3309, file: !86, line: 519, baseType: !232, size: 128, offset: 128)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !3309, file: !86, line: 520, baseType: !232, size: 128, offset: 256)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3309, file: !86, line: 521, baseType: !85, size: 32, offset: 384)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3173, file: !86, line: 726, baseType: !3316, size: 2496, offset: 1728)
!3316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !93, line: 663, size: 2496, elements: !3317)
!3317 = !{!3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3400, !3404}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3316, file: !93, line: 664, baseType: !3274, size: 32)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3316, file: !93, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3316, file: !93, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3316, file: !93, line: 667, baseType: !880, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3316, file: !93, line: 668, baseType: !880, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3316, file: !93, line: 669, baseType: !880, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3316, file: !93, line: 670, baseType: !880, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3316, file: !93, line: 671, baseType: !880, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3316, file: !93, line: 672, baseType: !880, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3316, file: !93, line: 673, baseType: !880, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3316, file: !93, line: 674, baseType: !880, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3316, file: !93, line: 675, baseType: !335, size: 32, offset: 64)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3316, file: !93, line: 676, baseType: !254, size: 32, offset: 96)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3316, file: !93, line: 678, baseType: !232, size: 128, offset: 128)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3316, file: !93, line: 679, baseType: !1507, size: 256, offset: 256)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3316, file: !93, line: 680, baseType: !3334, size: 64, offset: 512)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3336, line: 43, size: 1536, elements: !3337)
!3336 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!3337 = !{!3338, !3339, !3340, !3341, !3342, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3335, file: !3336, line: 44, baseType: !883, size: 64)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3335, file: !3336, line: 45, baseType: !101, size: 32, offset: 64)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3335, file: !3336, line: 46, baseType: !232, size: 128, offset: 128)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3335, file: !3336, line: 47, baseType: !254, size: 32, offset: 256)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3335, file: !3336, line: 48, baseType: !3343, size: 64, offset: 320)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !93, line: 629, flags: DIFlagFwdDecl)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3335, file: !3336, line: 49, baseType: !2400, size: 320, offset: 384)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3335, file: !3336, line: 50, baseType: !332, size: 64, offset: 704)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3335, file: !3336, line: 51, baseType: !466, size: 64, offset: 768)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3335, file: !3336, line: 52, baseType: !466, size: 64, offset: 832)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3335, file: !3336, line: 53, baseType: !466, size: 64, offset: 896)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3335, file: !3336, line: 54, baseType: !466, size: 64, offset: 960)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3335, file: !3336, line: 55, baseType: !466, size: 64, offset: 1024)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3335, file: !3336, line: 56, baseType: !332, size: 64, offset: 1088)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3335, file: !3336, line: 57, baseType: !332, size: 64, offset: 1152)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3335, file: !3336, line: 58, baseType: !332, size: 64, offset: 1216)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3335, file: !3336, line: 59, baseType: !332, size: 64, offset: 1280)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3335, file: !3336, line: 60, baseType: !332, size: 64, offset: 1344)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3335, file: !3336, line: 61, baseType: !3172, size: 64, offset: 1408)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3335, file: !3336, line: 62, baseType: !880, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3335, file: !3336, line: 63, baseType: !880, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3316, file: !93, line: 681, baseType: !880, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3316, file: !93, line: 682, baseType: !880, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3316, file: !93, line: 683, baseType: !880, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3316, file: !93, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3316, file: !93, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3316, file: !93, line: 690, baseType: !458, size: 512, offset: 640)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3316, file: !93, line: 691, baseType: !393, size: 64, offset: 1152)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3316, file: !93, line: 692, baseType: !2412, size: 256, offset: 1216)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3316, file: !93, line: 693, baseType: !742, size: 192, offset: 1472)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3316, file: !93, line: 694, baseType: !3343, size: 64, offset: 1664)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3316, file: !93, line: 695, baseType: !274, size: 32, offset: 1728)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3316, file: !93, line: 696, baseType: !274, size: 32, offset: 1760)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3316, file: !93, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3316, file: !93, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3316, file: !93, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3316, file: !93, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !3316, file: !93, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3316, file: !93, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3316, file: !93, line: 703, baseType: !880, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3316, file: !93, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3316, file: !93, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3316, file: !93, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3316, file: !93, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3316, file: !93, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3316, file: !93, line: 709, baseType: !7, size: 32, offset: 1824)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3316, file: !93, line: 710, baseType: !92, size: 32, offset: 1856)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3316, file: !93, line: 711, baseType: !100, size: 32, offset: 1888)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !3316, file: !93, line: 712, baseType: !100, size: 32, offset: 1920)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3316, file: !93, line: 713, baseType: !101, size: 32, offset: 1952)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3316, file: !93, line: 714, baseType: !101, size: 32, offset: 1984)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3316, file: !93, line: 715, baseType: !393, size: 64, offset: 2048)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3316, file: !93, line: 716, baseType: !393, size: 64, offset: 2112)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3316, file: !93, line: 717, baseType: !393, size: 64, offset: 2176)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3316, file: !93, line: 718, baseType: !393, size: 64, offset: 2240)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3316, file: !93, line: 720, baseType: !3395, size: 64, offset: 2304)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !93, line: 632, size: 64, elements: !3397)
!3397 = !{!3398, !3399}
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3396, file: !93, line: 633, baseType: !254, size: 32)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3396, file: !93, line: 634, baseType: !7, size: 32, offset: 32)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3316, file: !93, line: 721, baseType: !3401, size: 64, offset: 2368)
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3402 = !DISubroutineType(types: !3403)
!3403 = !{null, !3172, !812}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3316, file: !93, line: 722, baseType: !3405, size: 64, offset: 2432)
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3406 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !93, line: 722, flags: DIFlagFwdDecl)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3173, file: !86, line: 727, baseType: !3408, size: 64, offset: 4224)
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3409, size: 64)
!3409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !93, line: 742, size: 1792, elements: !3410)
!3410 = !{!3411, !3412, !3413, !3417, !3418, !3419}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3409, file: !93, line: 743, baseType: !3206, size: 1472)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3409, file: !93, line: 744, baseType: !3209, size: 64, offset: 1472)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3409, file: !93, line: 745, baseType: !3414, size: 64, offset: 1536)
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3415 = !DISubroutineType(types: !3416)
!3416 = !{null, !3172, !880}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3409, file: !93, line: 746, baseType: !3209, size: 64, offset: 1600)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3409, file: !93, line: 747, baseType: !3200, size: 64, offset: 1664)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3409, file: !93, line: 748, baseType: !3200, size: 64, offset: 1728)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !3173, file: !86, line: 736, baseType: !3421, size: 128, offset: 4288)
!3421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !86, line: 529, size: 128, elements: !3422)
!3422 = !{!3423, !3427}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3421, file: !86, line: 531, baseType: !3424, size: 64)
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3425 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3426, line: 13, flags: DIFlagFwdDecl)
!3426 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3421, file: !86, line: 532, baseType: !3428, size: 64, offset: 64)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !86, line: 49, flags: DIFlagFwdDecl)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3173, file: !86, line: 738, baseType: !3431, size: 64, offset: 4416)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3433)
!3433 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !86, line: 738, flags: DIFlagFwdDecl)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3173, file: !86, line: 740, baseType: !3435, size: 64, offset: 4480)
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3173, file: !86, line: 741, baseType: !393, size: 64, offset: 4544)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3173, file: !86, line: 746, baseType: !393, size: 64, offset: 4608)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3173, file: !86, line: 747, baseType: !3439, size: 64, offset: 4672)
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 64)
!3440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3441)
!3441 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !86, line: 747, flags: DIFlagFwdDecl)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3173, file: !86, line: 749, baseType: !3443, size: 64, offset: 4736)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !86, line: 428, size: 128, elements: !3445)
!3445 = !{!3446, !3447, !3448}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3444, file: !86, line: 433, baseType: !7, size: 32)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3444, file: !86, line: 434, baseType: !7, size: 32, offset: 32)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3444, file: !86, line: 435, baseType: !332, size: 64, offset: 64)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3173, file: !86, line: 751, baseType: !232, size: 128, offset: 4800)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !3173, file: !86, line: 762, baseType: !3451, size: 64, offset: 4928)
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !86, line: 762, flags: DIFlagFwdDecl)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3173, file: !86, line: 770, baseType: !3454, offset: 4992)
!3454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3455, line: 5, elements: !661)
!3455 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3173, file: !86, line: 772, baseType: !3457, size: 64, offset: 4992)
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3458 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3459, line: 18, flags: DIFlagFwdDecl)
!3459 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3173, file: !86, line: 773, baseType: !3461, size: 64, offset: 5056)
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3462, size: 64)
!3462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3463, line: 41, size: 512, elements: !3464)
!3463 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!3464 = !{!3465, !3466, !3560, !3561, !3562, !3563}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3462, file: !3463, line: 42, baseType: !3461, size: 64)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3462, file: !3463, line: 43, baseType: !3467, size: 64, offset: 64)
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3469)
!3469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3463, line: 125, size: 1408, elements: !3470)
!3470 = !{!3471, !3475, !3479, !3485, !3489, !3490, !3495, !3499, !3503, !3507, !3511, !3512, !3516, !3520, !3524, !3535, !3536, !3537, !3538, !3548, !3552, !3556}
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3469, file: !3463, line: 126, baseType: !3472, size: 64)
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3473 = !DISubroutineType(types: !3474)
!3474 = !{!3461, !3461}
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3469, file: !3463, line: 127, baseType: !3476, size: 64, offset: 64)
!3476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3477, size: 64)
!3477 = !DISubroutineType(types: !3478)
!3478 = !{null, !3461}
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3469, file: !3463, line: 128, baseType: !3480, size: 64, offset: 128)
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = !DISubroutineType(types: !3482)
!3482 = !{!880, !3483}
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3484, size: 64)
!3484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3462)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3469, file: !3463, line: 129, baseType: !3486, size: 64, offset: 192)
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3487 = !DISubroutineType(types: !3488)
!3488 = !{!1992, !3483, !3192}
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !3469, file: !3463, line: 131, baseType: !3480, size: 64, offset: 256)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !3469, file: !3463, line: 133, baseType: !3491, size: 64, offset: 320)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = !DISubroutineType(types: !3493)
!3493 = !{!3494, !3483}
!3494 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !3463, line: 132, flags: DIFlagFwdDecl)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3469, file: !3463, line: 134, baseType: !3496, size: 64, offset: 384)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = !DISubroutineType(types: !3498)
!3498 = !{!880, !3483, !883}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3469, file: !3463, line: 136, baseType: !3500, size: 64, offset: 448)
!3500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3501, size: 64)
!3501 = !DISubroutineType(types: !3502)
!3502 = !{!101, !3483, !883, !7, !225, !1196}
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3469, file: !3463, line: 141, baseType: !3504, size: 64, offset: 512)
!3504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3505, size: 64)
!3505 = !DISubroutineType(types: !3506)
!3506 = !{!101, !3483, !883, !2488, !1196}
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3469, file: !3463, line: 144, baseType: !3508, size: 64, offset: 576)
!3508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3509, size: 64)
!3509 = !DISubroutineType(types: !3510)
!3510 = !{!883, !3483}
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3469, file: !3463, line: 145, baseType: !3508, size: 64, offset: 640)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3469, file: !3463, line: 146, baseType: !3513, size: 64, offset: 704)
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3514, size: 64)
!3514 = !DISubroutineType(types: !3515)
!3515 = !{!3461, !3483}
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3469, file: !3463, line: 148, baseType: !3517, size: 64, offset: 768)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = !DISubroutineType(types: !3519)
!3519 = !{!3461, !3483, !3461}
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3469, file: !3463, line: 151, baseType: !3521, size: 64, offset: 832)
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3522, size: 64)
!3522 = !DISubroutineType(types: !3523)
!3523 = !{!3461, !3483, !883}
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3469, file: !3463, line: 153, baseType: !3525, size: 64, offset: 896)
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3526 = !DISubroutineType(types: !3527)
!3527 = !{!101, !3483, !883, !883, !7, !7, !3528}
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3529, size: 64)
!3529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3463, line: 94, size: 640, elements: !3530)
!3530 = !{!3531, !3532, !3533}
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3529, file: !3463, line: 95, baseType: !3461, size: 64)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3529, file: !3463, line: 96, baseType: !7, size: 32, offset: 64)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3529, file: !3463, line: 97, baseType: !3534, size: 512, offset: 128)
!3534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !393, size: 512, elements: !501)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3469, file: !3463, line: 158, baseType: !3517, size: 64, offset: 960)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3469, file: !3463, line: 161, baseType: !3513, size: 64, offset: 1024)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3469, file: !3463, line: 163, baseType: !3472, size: 64, offset: 1088)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3469, file: !3463, line: 164, baseType: !3539, size: 64, offset: 1152)
!3539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3540, size: 64)
!3540 = !DISubroutineType(types: !3541)
!3541 = !{!101, !3483, !3542}
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3463, line: 73, size: 128, elements: !3544)
!3544 = !{!3545, !3546, !3547}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3543, file: !3463, line: 74, baseType: !7, size: 32)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3543, file: !3463, line: 75, baseType: !7, size: 32, offset: 32)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3543, file: !3463, line: 76, baseType: !3483, size: 64, offset: 64)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !3469, file: !3463, line: 166, baseType: !3549, size: 64, offset: 1216)
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3550 = !DISubroutineType(types: !3551)
!3551 = !{!225, !3461, !101}
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !3469, file: !3463, line: 167, baseType: !3553, size: 64, offset: 1280)
!3553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3554, size: 64)
!3554 = !DISubroutineType(types: !3555)
!3555 = !{!101, !3483, !7}
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3469, file: !3463, line: 168, baseType: !3557, size: 64, offset: 1344)
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3558 = !DISubroutineType(types: !3559)
!3559 = !{!101, !3461}
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3462, file: !3463, line: 44, baseType: !3172, size: 64, offset: 128)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3462, file: !3463, line: 45, baseType: !232, size: 128, offset: 192)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3462, file: !3463, line: 46, baseType: !232, size: 128, offset: 320)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3462, file: !3463, line: 47, baseType: !282, size: 8, offset: 448)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !3173, file: !86, line: 776, baseType: !101, size: 32, offset: 5120)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3173, file: !86, line: 778, baseType: !1114, size: 32, offset: 5152)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3173, file: !86, line: 779, baseType: !335, size: 32, offset: 5184)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3173, file: !86, line: 781, baseType: !254, size: 32, offset: 5216)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3173, file: !86, line: 782, baseType: !232, size: 128, offset: 5248)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3173, file: !86, line: 784, baseType: !3570, size: 64, offset: 5376)
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3572)
!3572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3573, line: 52, size: 768, elements: !3574)
!3573 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3574 = !{!3575, !3576, !3577, !3578, !3579, !3583, !3587, !3588, !3589, !3590, !3594, !3598}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3572, file: !3573, line: 53, baseType: !883, size: 64)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3572, file: !3573, line: 55, baseType: !1378, size: 64, offset: 64)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3572, file: !3573, line: 56, baseType: !1378, size: 64, offset: 128)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3572, file: !3573, line: 58, baseType: !3189, size: 64, offset: 192)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3572, file: !3573, line: 59, baseType: !3580, size: 64, offset: 256)
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64)
!3581 = !DISubroutineType(types: !3582)
!3582 = !{!893, !3192, !3198}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3572, file: !3573, line: 61, baseType: !3584, size: 64, offset: 320)
!3584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3585, size: 64)
!3585 = !DISubroutineType(types: !3586)
!3586 = !{null, !3570}
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3572, file: !3573, line: 62, baseType: !3200, size: 64, offset: 384)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3572, file: !3573, line: 64, baseType: !3209, size: 64, offset: 448)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3572, file: !3573, line: 66, baseType: !1975, size: 64, offset: 512)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3572, file: !3573, line: 67, baseType: !3591, size: 64, offset: 576)
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = !DISubroutineType(types: !3593)
!3593 = !{!1992, !3192}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3572, file: !3573, line: 69, baseType: !3595, size: 64, offset: 640)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = !DISubroutineType(types: !3597)
!3597 = !{null, !3192, !2009, !2010}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3572, file: !3573, line: 71, baseType: !3204, size: 64, offset: 704)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3173, file: !86, line: 785, baseType: !1378, size: 64, offset: 5440)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3173, file: !86, line: 787, baseType: !3200, size: 64, offset: 5504)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3173, file: !86, line: 788, baseType: !3602, size: 64, offset: 5568)
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3603 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !86, line: 46, flags: DIFlagFwdDecl)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3173, file: !86, line: 789, baseType: !3605, size: 64, offset: 5632)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !86, line: 48, flags: DIFlagFwdDecl)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !3173, file: !86, line: 791, baseType: !3608, size: 64, offset: 5696)
!3608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3609, size: 64)
!3609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !86, line: 597, size: 128, elements: !3610)
!3610 = !{!3611, !3612, !3613, !3614, !3615}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3609, file: !86, line: 598, baseType: !108, size: 32)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3609, file: !86, line: 599, baseType: !117, size: 32, offset: 32)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3609, file: !86, line: 600, baseType: !122, size: 32, offset: 64)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3609, file: !86, line: 601, baseType: !880, size: 8, offset: 96)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3609, file: !86, line: 602, baseType: !880, size: 8, offset: 104)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !3173, file: !86, line: 793, baseType: !127, size: 32, offset: 5760)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3173, file: !86, line: 795, baseType: !880, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3173, file: !86, line: 796, baseType: !880, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3173, file: !86, line: 797, baseType: !880, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3173, file: !86, line: 798, baseType: !880, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !3173, file: !86, line: 799, baseType: !880, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "rpm_status", scope: !2939, file: !134, line: 451, baseType: !100, size: 32, offset: 1536)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "nr_requests", scope: !2939, file: !134, line: 457, baseType: !332, size: 64, offset: 1600)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pad_mask", scope: !2939, file: !134, line: 459, baseType: !7, size: 32, offset: 1664)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "rq_timeout", scope: !2939, file: !134, line: 466, baseType: !7, size: 32, offset: 1696)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2939, file: !134, line: 468, baseType: !2400, size: 320, offset: 1728)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_work", scope: !2939, file: !134, line: 469, baseType: !2412, size: 256, offset: 2048)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "nr_active_requests_shared_tags", scope: !2939, file: !134, line: 471, baseType: !274, size: 32, offset: 2304)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "sched_shared_tags", scope: !2939, file: !134, line: 473, baseType: !3024, size: 64, offset: 2368)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2939, file: !134, line: 475, baseType: !232, size: 128, offset: 2432)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_pols", scope: !2939, file: !134, line: 477, baseType: !591, size: 64, offset: 2560)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "root_blkg", scope: !2939, file: !134, line: 478, baseType: !2865, size: 64, offset: 2624)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "blkg_list", scope: !2939, file: !134, line: 479, baseType: !232, size: 128, offset: 2688)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_mutex", scope: !2939, file: !134, line: 480, baseType: !299, size: 256, offset: 2816)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "limits", scope: !2939, file: !134, line: 483, baseType: !3636, size: 960, offset: 3072)
!3636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "queue_limits", file: !134, line: 300, size: 960, elements: !3637)
!3637 = !{!3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667}
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "bounce", scope: !3636, file: !134, line: 301, baseType: !133, size: 32)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "seg_boundary_mask", scope: !3636, file: !134, line: 302, baseType: !332, size: 64, offset: 64)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "virt_boundary_mask", scope: !3636, file: !134, line: 303, baseType: !332, size: 64, offset: 128)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_sectors", scope: !3636, file: !134, line: 305, baseType: !7, size: 32, offset: 192)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "max_dev_sectors", scope: !3636, file: !134, line: 306, baseType: !7, size: 32, offset: 224)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_sectors", scope: !3636, file: !134, line: 307, baseType: !7, size: 32, offset: 256)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "max_sectors", scope: !3636, file: !134, line: 308, baseType: !7, size: 32, offset: 288)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "max_user_sectors", scope: !3636, file: !134, line: 309, baseType: !7, size: 32, offset: 320)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3636, file: !134, line: 310, baseType: !7, size: 32, offset: 352)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "physical_block_size", scope: !3636, file: !134, line: 311, baseType: !7, size: 32, offset: 384)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "logical_block_size", scope: !3636, file: !134, line: 312, baseType: !7, size: 32, offset: 416)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_offset", scope: !3636, file: !134, line: 313, baseType: !7, size: 32, offset: 448)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "io_min", scope: !3636, file: !134, line: 314, baseType: !7, size: 32, offset: 480)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "io_opt", scope: !3636, file: !134, line: 315, baseType: !7, size: 32, offset: 512)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_sectors", scope: !3636, file: !134, line: 316, baseType: !7, size: 32, offset: 544)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_discard_sectors", scope: !3636, file: !134, line: 317, baseType: !7, size: 32, offset: 576)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "max_secure_erase_sectors", scope: !3636, file: !134, line: 318, baseType: !7, size: 32, offset: 608)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_zeroes_sectors", scope: !3636, file: !134, line: 319, baseType: !7, size: 32, offset: 640)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "max_zone_append_sectors", scope: !3636, file: !134, line: 320, baseType: !7, size: 32, offset: 672)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "discard_granularity", scope: !3636, file: !134, line: 321, baseType: !7, size: 32, offset: 704)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "discard_alignment", scope: !3636, file: !134, line: 322, baseType: !7, size: 32, offset: 736)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "zone_write_granularity", scope: !3636, file: !134, line: 323, baseType: !7, size: 32, offset: 768)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "max_segments", scope: !3636, file: !134, line: 325, baseType: !294, size: 16, offset: 800)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "max_integrity_segments", scope: !3636, file: !134, line: 326, baseType: !294, size: 16, offset: 816)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_segments", scope: !3636, file: !134, line: 327, baseType: !294, size: 16, offset: 832)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "misaligned", scope: !3636, file: !134, line: 329, baseType: !286, size: 8, offset: 848)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "discard_misaligned", scope: !3636, file: !134, line: 330, baseType: !286, size: 8, offset: 856)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "raid_partial_stripes_expensive", scope: !3636, file: !134, line: 331, baseType: !286, size: 8, offset: 864)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "zoned", scope: !3636, file: !134, line: 332, baseType: !138, size: 32, offset: 896)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alignment", scope: !3636, file: !134, line: 339, baseType: !7, size: 32, offset: 928)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "required_elevator_features", scope: !2939, file: !134, line: 485, baseType: !7, size: 32, offset: 4032)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2939, file: !134, line: 487, baseType: !101, size: 32, offset: 4064)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "blk_trace", scope: !2939, file: !134, line: 489, baseType: !3671, size: 64, offset: 4096)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3672, size: 64)
!3672 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_trace", file: !134, line: 31, flags: DIFlagFwdDecl)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !2939, file: !134, line: 494, baseType: !2981, size: 64, offset: 4160)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "flush_list", scope: !2939, file: !134, line: 495, baseType: !232, size: 128, offset: 4224)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_list", scope: !2939, file: !134, line: 497, baseType: !232, size: 128, offset: 4352)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_lock", scope: !2939, file: !134, line: 498, baseType: !254, size: 32, offset: 4480)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_work", scope: !2939, file: !134, line: 499, baseType: !2468, size: 704, offset: 4544)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_lock", scope: !2939, file: !134, line: 501, baseType: !299, size: 256, offset: 5248)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_dir_lock", scope: !2939, file: !134, line: 502, baseType: !299, size: 256, offset: 5504)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_list", scope: !2939, file: !134, line: 508, baseType: !232, size: 128, offset: 5760)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_lock", scope: !2939, file: !134, line: 509, baseType: !254, size: 32, offset: 5888)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_depth", scope: !2939, file: !134, line: 511, baseType: !101, size: 32, offset: 5920)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2939, file: !134, line: 517, baseType: !676, size: 128, align: 64, offset: 5952)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_wq", scope: !2939, file: !134, line: 518, baseType: !742, size: 192, offset: 6080)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_lock", scope: !2939, file: !134, line: 523, baseType: !299, size: 256, offset: 6272)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "quiesce_depth", scope: !2939, file: !134, line: 525, baseType: !101, size: 32, offset: 6528)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set", scope: !2939, file: !134, line: 527, baseType: !3116, size: 64, offset: 6592)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set_list", scope: !2939, file: !134, line: 528, baseType: !232, size: 128, offset: 6656)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dir", scope: !2939, file: !134, line: 530, baseType: !1004, size: 64, offset: 6784)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "sched_debugfs_dir", scope: !2939, file: !134, line: 531, baseType: !1004, size: 64, offset: 6848)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "rqos_debugfs_dir", scope: !2939, file: !134, line: 532, baseType: !1004, size: 64, offset: 6912)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !2939, file: !134, line: 536, baseType: !299, size: 256, offset: 6976)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "mq_sysfs_init_done", scope: !2939, file: !134, line: 538, baseType: !880, size: 8, offset: 7232)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ctx", scope: !2935, file: !75, line: 82, baseType: !3001, size: 64, offset: 64)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "mq_hctx", scope: !2935, file: !75, line: 83, baseType: !2962, size: 64, offset: 128)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !2935, file: !75, line: 85, baseType: !2845, size: 32, offset: 192)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "rq_flags", scope: !2935, file: !75, line: 86, baseType: !3698, size: 32, offset: 224)
!3698 = !DIDerivedType(tag: DW_TAG_typedef, name: "req_flags_t", file: !75, line: 27, baseType: !336)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !2935, file: !75, line: 88, baseType: !101, size: 32, offset: 256)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "internal_tag", scope: !2935, file: !75, line: 89, baseType: !101, size: 32, offset: 288)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2935, file: !75, line: 91, baseType: !7, size: 32, offset: 320)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "__data_len", scope: !2935, file: !75, line: 94, baseType: !7, size: 32, offset: 352)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "__sector", scope: !2935, file: !75, line: 95, baseType: !1818, size: 64, offset: 384)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "bio", scope: !2935, file: !75, line: 97, baseType: !2839, size: 64, offset: 448)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "biotail", scope: !2935, file: !75, line: 98, baseType: !2839, size: 64, offset: 512)
!3706 = !DIDerivedType(tag: DW_TAG_member, scope: !2935, file: !75, line: 100, baseType: !3707, size: 128, offset: 576)
!3707 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2935, file: !75, line: 100, size: 128, elements: !3708)
!3708 = !{!3709, !3710}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "queuelist", scope: !3707, file: !75, line: 101, baseType: !232, size: 128)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "rq_next", scope: !3707, file: !75, line: 102, baseType: !2934, size: 64)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !2935, file: !75, line: 105, baseType: !2809, size: 64, offset: 704)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_time_ns", scope: !2935, file: !75, line: 108, baseType: !393, size: 64, offset: 768)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "start_time_ns", scope: !2935, file: !75, line: 111, baseType: !393, size: 64, offset: 832)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "io_start_time_ns", scope: !2935, file: !75, line: 113, baseType: !393, size: 64, offset: 896)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "stats_sectors", scope: !2935, file: !75, line: 123, baseType: !294, size: 16, offset: 960)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "nr_phys_segments", scope: !2935, file: !75, line: 129, baseType: !294, size: 16, offset: 976)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2935, file: !75, line: 140, baseType: !294, size: 16, offset: 992)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2935, file: !75, line: 142, baseType: !143, size: 32, offset: 1024)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2935, file: !75, line: 143, baseType: !274, size: 32, offset: 1056)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2935, file: !75, line: 145, baseType: !332, size: 64, offset: 1088)
!3721 = !DIDerivedType(tag: DW_TAG_member, scope: !2935, file: !75, line: 154, baseType: !3722, size: 128, offset: 1152)
!3722 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2935, file: !75, line: 154, size: 128, elements: !3723)
!3723 = !{!3724, !3725}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3722, file: !75, line: 155, baseType: !733, size: 128)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_list", scope: !3722, file: !75, line: 156, baseType: !354, size: 64)
!3726 = !DIDerivedType(tag: DW_TAG_member, scope: !2935, file: !75, line: 165, baseType: !3727, size: 192, offset: 1280)
!3727 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2935, file: !75, line: 165, size: 192, elements: !3728)
!3728 = !{!3729, !3730}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3727, file: !75, line: 166, baseType: !385, size: 192, align: 64)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "special_vec", scope: !3727, file: !75, line: 167, baseType: !1899, size: 128)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "elv", scope: !2935, file: !75, line: 177, baseType: !3732, size: 192, offset: 1472)
!3732 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2935, file: !75, line: 174, size: 192, elements: !3733)
!3733 = !{!3734, !3758}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "icq", scope: !3732, file: !75, line: 175, baseType: !3735, size: 64)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !3737, line: 73, size: 448, elements: !3738)
!3737 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3738 = !{!3739, !3740, !3747, !3752, !3757}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !3736, file: !3737, line: 74, baseType: !2938, size: 64)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !3736, file: !3737, line: 75, baseType: !3741, size: 64, offset: 64)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3737, line: 99, size: 128, elements: !3743)
!3743 = !{!3744, !3745, !3746}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3742, file: !3737, line: 100, baseType: !303, size: 64)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3742, file: !3737, line: 101, baseType: !274, size: 32, offset: 64)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3742, file: !3737, line: 103, baseType: !294, size: 16, offset: 96)
!3747 = !DIDerivedType(tag: DW_TAG_member, scope: !3736, file: !3737, line: 83, baseType: !3748, size: 128, offset: 128)
!3748 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3736, file: !3737, line: 83, size: 128, elements: !3749)
!3749 = !{!3750, !3751}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !3748, file: !3737, line: 84, baseType: !232, size: 128)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !3748, file: !3737, line: 85, baseType: !2885, size: 64)
!3752 = !DIDerivedType(tag: DW_TAG_member, scope: !3736, file: !3737, line: 87, baseType: !3753, size: 128, offset: 256)
!3753 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3736, file: !3737, line: 87, size: 128, elements: !3754)
!3754 = !{!3755, !3756}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !3753, file: !3737, line: 88, baseType: !733, size: 128)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !3753, file: !3737, line: 89, baseType: !676, size: 128, align: 64)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3736, file: !3737, line: 92, baseType: !7, size: 32, offset: 384)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3732, file: !75, line: 176, baseType: !3759, size: 128, offset: 64)
!3759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 128, elements: !2288)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2935, file: !75, line: 182, baseType: !3761, size: 128, offset: 1664)
!3761 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2935, file: !75, line: 179, size: 128, elements: !3762)
!3762 = !{!3763, !3764}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !3761, file: !75, line: 180, baseType: !7, size: 32)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "saved_end_io", scope: !3761, file: !75, line: 181, baseType: !3765, size: 64, offset: 64)
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3766 = !DIDerivedType(tag: DW_TAG_typedef, name: "rq_end_io_fn", file: !75, line: 23, baseType: !3767)
!3767 = !DISubroutineType(types: !3768)
!3768 = !{!148, !2934, !2849}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "fifo_time", scope: !2935, file: !75, line: 184, baseType: !393, size: 64, offset: 1792)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "end_io", scope: !2935, file: !75, line: 189, baseType: !3765, size: 64, offset: 1856)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "end_io_data", scope: !2935, file: !75, line: 190, baseType: !225, size: 64, offset: 1920)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "need_ts", scope: !2931, file: !134, line: 1561, baseType: !880, size: 8, offset: 64)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2931, file: !134, line: 1562, baseType: !3774, size: 64, offset: 128)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = !DISubroutineType(types: !3776)
!3776 = !{null, !2930}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2833, file: !134, line: 1392, baseType: !3778, size: 64, offset: 128)
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = !DISubroutineType(types: !3780)
!3780 = !{!101, !2816, !3781}
!3781 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_mode_t", file: !134, line: 115, baseType: !7)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2833, file: !134, line: 1393, baseType: !3783, size: 64, offset: 192)
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = !DISubroutineType(types: !3785)
!3785 = !{null, !2816}
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !2833, file: !134, line: 1394, baseType: !3787, size: 64, offset: 256)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{!101, !2809, !3781, !7, !332}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2833, file: !134, line: 1396, baseType: !3787, size: 64, offset: 320)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "check_events", scope: !2833, file: !134, line: 1398, baseType: !3792, size: 64, offset: 384)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = !DISubroutineType(types: !3794)
!3794 = !{!7, !2816, !7}
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_native_capacity", scope: !2833, file: !134, line: 1400, baseType: !3783, size: 64, offset: 448)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "getgeo", scope: !2833, file: !134, line: 1401, baseType: !3797, size: 64, offset: 512)
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = !DISubroutineType(types: !3799)
!3799 = !{!101, !2809, !3800}
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = !DICompositeType(tag: DW_TAG_structure_type, name: "hd_geometry", file: !64, line: 56, flags: DIFlagFwdDecl)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "set_read_only", scope: !2833, file: !134, line: 1402, baseType: !3803, size: 64, offset: 576)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{!101, !2809, !880}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "free_disk", scope: !2833, file: !134, line: 1403, baseType: !3783, size: 64, offset: 640)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "swap_slot_free_notify", scope: !2833, file: !134, line: 1405, baseType: !3808, size: 64, offset: 704)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = !DISubroutineType(types: !3810)
!3810 = !{null, !2809, !332}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "report_zones", scope: !2833, file: !134, line: 1406, baseType: !3812, size: 64, offset: 768)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{!101, !2816, !1818, !7, !3815, !225}
!3815 = !DIDerivedType(tag: DW_TAG_typedef, name: "report_zones_cb", file: !134, line: 342, baseType: !3816)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = !DISubroutineType(types: !3818)
!3818 = !{!101, !3819, !7, !225}
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_zone", file: !3821, line: 106, size: 512, elements: !3822)
!3821 = !DIFile(filename: "./include/uapi/linux/blkzoned.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3d5e7016ed7b437a9c2a308f55db1257")
!3822 = !{!3823, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3832, !3833}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3820, file: !3821, line: 107, baseType: !394, size: 64)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3820, file: !3821, line: 108, baseType: !394, size: 64, offset: 64)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "wp", scope: !3820, file: !3821, line: 109, baseType: !394, size: 64, offset: 128)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3820, file: !3821, line: 110, baseType: !284, size: 8, offset: 192)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !3820, file: !3821, line: 111, baseType: !284, size: 8, offset: 200)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "non_seq", scope: !3820, file: !3821, line: 112, baseType: !284, size: 8, offset: 208)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !3820, file: !3821, line: 113, baseType: !284, size: 8, offset: 216)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !3820, file: !3821, line: 114, baseType: !3831, size: 32, offset: 224)
!3831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 32, elements: !738)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !3820, file: !3821, line: 115, baseType: !394, size: 64, offset: 256)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3820, file: !3821, line: 116, baseType: !3834, size: 192, offset: 320)
!3834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 192, elements: !3835)
!3835 = !{!3836}
!3836 = !DISubrange(count: 24)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2833, file: !134, line: 1408, baseType: !3838, size: 64, offset: 832)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = !DISubroutineType(types: !3840)
!3840 = !{!893, !2816, !3198}
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "get_unique_id", scope: !2833, file: !134, line: 1410, baseType: !3842, size: 64, offset: 896)
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3843 = !DISubroutineType(types: !3844)
!3844 = !{!101, !2816, !3845, !152}
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2833, file: !134, line: 1412, baseType: !1285, size: 64, offset: 960)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "pr_ops", scope: !2833, file: !134, line: 1413, baseType: !3848, size: 64, offset: 1024)
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3850)
!3850 = !DICompositeType(tag: DW_TAG_structure_type, name: "pr_ops", file: !134, line: 37, flags: DIFlagFwdDecl)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "alternative_gpt_sector", scope: !2833, file: !134, line: 1420, baseType: !3852, size: 64, offset: 1088)
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = !DISubroutineType(types: !3854)
!3854 = !{!101, !2816, !1941}
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !2817, file: !134, line: 146, baseType: !2938, size: 64, offset: 640)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !2817, file: !134, line: 147, baseType: !225, size: 64, offset: 704)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "bio_split", scope: !2817, file: !134, line: 149, baseType: !2881, size: 1984, offset: 768)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2817, file: !134, line: 151, baseType: !101, size: 32, offset: 2752)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2817, file: !134, line: 152, baseType: !332, size: 64, offset: 2816)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "open_mutex", scope: !2817, file: !134, line: 161, baseType: !299, size: 256, offset: 2880)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "open_partitions", scope: !2817, file: !134, line: 162, baseType: !7, size: 32, offset: 3136)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !2817, file: !134, line: 164, baseType: !3863, size: 64, offset: 3200)
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !64, line: 50, flags: DIFlagFwdDecl)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "queue_kobj", scope: !2817, file: !134, line: 165, baseType: !1298, size: 512, offset: 3264)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "slave_dir", scope: !2817, file: !134, line: 166, baseType: !1304, size: 64, offset: 3776)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "slave_bdevs", scope: !2817, file: !134, line: 168, baseType: !232, size: 128, offset: 3840)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "random", scope: !2817, file: !134, line: 170, baseType: !3869, size: 64, offset: 3968)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = !DICompositeType(tag: DW_TAG_structure_type, name: "timer_rand_state", file: !134, line: 170, flags: DIFlagFwdDecl)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "sync_io", scope: !2817, file: !134, line: 171, baseType: !274, size: 32, offset: 4032)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "ev", scope: !2817, file: !134, line: 172, baseType: !3873, size: 64, offset: 4096)
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3874 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_events", file: !134, line: 104, flags: DIFlagFwdDecl)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "cdi", scope: !2817, file: !134, line: 197, baseType: !3876, size: 64, offset: 4160)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdrom_device_info", file: !134, line: 197, flags: DIFlagFwdDecl)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2817, file: !134, line: 199, baseType: !101, size: 32, offset: 4224)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !2817, file: !134, line: 200, baseType: !3880, size: 64, offset: 4288)
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = !DICompositeType(tag: DW_TAG_structure_type, name: "badblocks", file: !134, line: 105, flags: DIFlagFwdDecl)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "lockdep_map", scope: !2817, file: !134, line: 201, baseType: !2439, offset: 4352)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "diskseq", scope: !2817, file: !134, line: 202, baseType: !393, size: 64, offset: 4352)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "open_mode", scope: !2817, file: !134, line: 203, baseType: !3781, size: 32, offset: 4416)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ranges", scope: !2817, file: !134, line: 209, baseType: !3886, size: 64, offset: 4480)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_ranges", file: !134, line: 384, size: 576, elements: !3888)
!3888 = !{!3889, !3890, !3891, !3892}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3887, file: !134, line: 385, baseType: !1298, size: 512)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_registered", scope: !3887, file: !134, line: 386, baseType: !880, size: 8, offset: 512)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ia_ranges", scope: !3887, file: !134, line: 387, baseType: !7, size: 32, offset: 544)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "ia_range", scope: !3887, file: !134, line: 388, baseType: !3893, offset: 576)
!3893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3894, elements: !757)
!3894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_range", file: !134, line: 378, size: 640, elements: !3895)
!3895 = !{!3896, !3897, !3898}
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3894, file: !134, line: 379, baseType: !1298, size: 512)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "sector", scope: !3894, file: !134, line: 380, baseType: !1818, size: 64, offset: 512)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "nr_sectors", scope: !3894, file: !134, line: 381, baseType: !1818, size: 64, offset: 576)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !2810, file: !2811, line: 44, baseType: !2938, size: 64, offset: 192)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !2810, file: !2811, line: 45, baseType: !3901, size: 64, offset: 256)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !2811, line: 45, flags: DIFlagFwdDecl)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !2810, file: !2811, line: 46, baseType: !332, size: 64, offset: 320)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !2810, file: !2811, line: 47, baseType: !880, size: 8, offset: 384)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !2810, file: !2811, line: 48, baseType: !282, size: 8, offset: 392)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !2810, file: !2811, line: 49, baseType: !880, size: 8, offset: 400)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !2810, file: !2811, line: 50, baseType: !880, size: 8, offset: 408)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !2810, file: !2811, line: 51, baseType: !1114, size: 32, offset: 416)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !2810, file: !2811, line: 52, baseType: !274, size: 32, offset: 448)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !2810, file: !2811, line: 53, baseType: !254, size: 32, offset: 480)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !2810, file: !2811, line: 54, baseType: !1039, size: 64, offset: 512)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !2810, file: !2811, line: 55, baseType: !225, size: 64, offset: 576)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !2810, file: !2811, line: 56, baseType: !225, size: 64, offset: 640)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !2810, file: !2811, line: 57, baseType: !3915, size: 64, offset: 704)
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3916 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3917)
!3917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !134, line: 1477, size: 128, elements: !3918)
!3918 = !{!3919, !3923}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dead", scope: !3917, file: !134, line: 1478, baseType: !3920, size: 64)
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = !DISubroutineType(types: !3922)
!3922 = !{null, !2809, !880}
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3917, file: !134, line: 1483, baseType: !3924, size: 64, offset: 64)
!3924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3925, size: 64)
!3925 = !DISubroutineType(types: !3926)
!3926 = !{null, !2809}
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !2810, file: !2811, line: 58, baseType: !299, size: 256, offset: 768)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !2810, file: !2811, line: 60, baseType: !101, size: 32, offset: 1024)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !2810, file: !2811, line: 61, baseType: !101, size: 32, offset: 1056)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !2810, file: !2811, line: 62, baseType: !1304, size: 64, offset: 1088)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !2810, file: !2811, line: 65, baseType: !299, size: 256, offset: 1152)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !2810, file: !2811, line: 66, baseType: !1251, size: 64, offset: 1408)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !2810, file: !2811, line: 68, baseType: !3934, size: 64, offset: 1472)
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3935, size: 64)
!3935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !134, line: 63, size: 808, elements: !3936)
!3936 = !{!3937, !3941}
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !3935, file: !134, line: 64, baseType: !3938, size: 296)
!3938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !866, size: 296, elements: !3939)
!3939 = !{!3940}
!3940 = !DISubrange(count: 37)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "volname", scope: !3935, file: !134, line: 65, baseType: !3942, size: 512, offset: 296)
!3942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !282, size: 512, elements: !1341)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !2810, file: !2811, line: 72, baseType: !880, size: 8, offset: 1536)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !2810, file: !2811, line: 77, baseType: !3173, size: 5824, offset: 1600)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1252, file: !64, line: 1226, baseType: !3946, size: 64, offset: 1664)
!3946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3947, size: 64)
!3947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !134, line: 1495, size: 128, elements: !3948)
!3948 = !{!3949, !3950}
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !3947, file: !134, line: 1496, baseType: !2809, size: 64)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "holder", scope: !3947, file: !134, line: 1497, baseType: !225, size: 64, offset: 64)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1252, file: !64, line: 1227, baseType: !3863, size: 64, offset: 1728)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1252, file: !64, line: 1228, baseType: !3953, size: 64, offset: 1792)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !64, line: 1228, flags: DIFlagFwdDecl)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1252, file: !64, line: 1229, baseType: !733, size: 128, offset: 1856)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1252, file: !64, line: 1230, baseType: !7, size: 32, offset: 1984)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1252, file: !64, line: 1231, baseType: !3958, size: 2496, offset: 2048)
!3958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !69, line: 521, size: 2496, elements: !3959)
!3959 = !{!3960, !3961, !3962, !3964, !3996}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3958, file: !69, line: 522, baseType: !7, size: 32)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3958, file: !69, line: 523, baseType: !820, size: 320, offset: 64)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3958, file: !69, line: 524, baseType: !3963, size: 192, offset: 384)
!3963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1039, size: 192, elements: !717)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3958, file: !69, line: 525, baseType: !3965, size: 1728, offset: 576)
!3965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3966, size: 1728, elements: !717)
!3966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !69, line: 222, size: 576, elements: !3967)
!3967 = !{!3968, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995}
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3966, file: !69, line: 223, baseType: !3969, size: 64)
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !69, line: 445, size: 256, elements: !3971)
!3971 = !{!3972, !3973, !3986, !3987}
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3970, file: !69, line: 446, baseType: !101, size: 32)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3970, file: !69, line: 447, baseType: !3974, size: 64, offset: 64)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3976)
!3976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !69, line: 312, size: 512, elements: !3977)
!3977 = !{!3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985}
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3976, file: !69, line: 313, baseType: !2560, size: 64)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3976, file: !69, line: 314, baseType: !2560, size: 64, offset: 64)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3976, file: !69, line: 315, baseType: !2560, size: 64, offset: 128)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3976, file: !69, line: 316, baseType: !2560, size: 64, offset: 192)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3976, file: !69, line: 317, baseType: !2669, size: 64, offset: 256)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3976, file: !69, line: 318, baseType: !2669, size: 64, offset: 320)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3976, file: !69, line: 319, baseType: !2669, size: 64, offset: 384)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3976, file: !69, line: 320, baseType: !2699, size: 64, offset: 448)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3970, file: !69, line: 448, baseType: !1285, size: 64, offset: 128)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3970, file: !69, line: 449, baseType: !3969, size: 64, offset: 192)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3966, file: !69, line: 224, baseType: !101, size: 32, offset: 64)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3966, file: !69, line: 226, baseType: !232, size: 128, offset: 128)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3966, file: !69, line: 227, baseType: !332, size: 64, offset: 256)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3966, file: !69, line: 228, baseType: !7, size: 32, offset: 320)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3966, file: !69, line: 229, baseType: !7, size: 32, offset: 352)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3966, file: !69, line: 230, baseType: !2637, size: 64, offset: 384)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3966, file: !69, line: 231, baseType: !2637, size: 64, offset: 448)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3966, file: !69, line: 232, baseType: !225, size: 64, offset: 512)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3958, file: !69, line: 526, baseType: !3997, size: 192, offset: 2304)
!3997 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3974, size: 192, elements: !717)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1252, file: !64, line: 1233, baseType: !3999, size: 2368, offset: 4544)
!3999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !64, line: 1184, size: 2368, elements: !4000)
!4000 = !{!4001, !4002, !4003}
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3999, file: !64, line: 1185, baseType: !294, size: 16)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3999, file: !64, line: 1186, baseType: !294, size: 16, offset: 16)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3999, file: !64, line: 1187, baseType: !4004, size: 2304, offset: 64)
!4004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4005, size: 2304, elements: !717)
!4005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !4006, line: 12, size: 768, elements: !4007)
!4006 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!4007 = !{!4008, !4016, !4017, !4022, !4023}
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !4005, file: !4006, line: 13, baseType: !4009, size: 384)
!4009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !4010, line: 17, size: 384, elements: !4011)
!4010 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!4011 = !{!4012, !4013, !4014, !4015}
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !4009, file: !4010, line: 18, baseType: !101, size: 32)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !4009, file: !4010, line: 19, baseType: !101, size: 32, offset: 32)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !4009, file: !4010, line: 20, baseType: !742, size: 192, offset: 64)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !4009, file: !4010, line: 22, baseType: !676, size: 128, align: 64, offset: 256)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !4005, file: !4006, line: 14, baseType: !2250, size: 64, offset: 384)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !4005, file: !4006, line: 15, baseType: !4018, size: 64, offset: 448)
!4018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !4019, line: 16, size: 64, elements: !4020)
!4019 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!4020 = !{!4021}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4018, file: !4019, line: 17, baseType: !323, size: 64)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4005, file: !4006, line: 16, baseType: !742, size: 192, offset: 512)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4005, file: !4006, line: 17, baseType: !274, size: 32, offset: 704)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1252, file: !64, line: 1240, baseType: !225, size: 64, offset: 6912)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1252, file: !64, line: 1243, baseType: !335, size: 32, offset: 6976)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1252, file: !64, line: 1245, baseType: !836, size: 64, offset: 7040)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1252, file: !64, line: 1246, baseType: !836, size: 64, offset: 7104)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1252, file: !64, line: 1248, baseType: !336, size: 32, offset: 7168)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1252, file: !64, line: 1249, baseType: !4030, size: 64, offset: 7232)
!4030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4031, size: 64)
!4031 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !64, line: 634, flags: DIFlagFwdDecl)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1252, file: !64, line: 1252, baseType: !2823, size: 256, offset: 7296)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1252, file: !64, line: 1253, baseType: !4034, size: 128, offset: 7552)
!4034 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4035, line: 21, baseType: !4036)
!4035 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4036 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4035, line: 19, size: 128, elements: !4037)
!4037 = !{!4038}
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4036, file: !4035, line: 20, baseType: !4039, size: 128)
!4039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 128, elements: !4040)
!4040 = !{!4041}
!4041 = !DISubrange(count: 16)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1252, file: !64, line: 1255, baseType: !7, size: 32, offset: 7680)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1252, file: !64, line: 1261, baseType: !299, size: 256, offset: 7744)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1252, file: !64, line: 1267, baseType: !883, size: 64, offset: 8000)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1252, file: !64, line: 1269, baseType: !4046, size: 64, offset: 8064)
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4047, size: 64)
!4047 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4048)
!4048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !1006, line: 128, size: 1024, align: 512, elements: !4049)
!4049 = !{!4050, !4054, !4055, !4062, !4068, !4072, !4076, !4080, !4081, !4085, !4089, !4094, !4098}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !4048, file: !1006, line: 129, baseType: !4051, size: 64)
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4052, size: 64)
!4052 = !DISubroutineType(types: !4053)
!4053 = !{!101, !1004, !7}
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !4048, file: !1006, line: 130, baseType: !4051, size: 64, offset: 64)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !4048, file: !1006, line: 131, baseType: !4056, size: 64, offset: 128)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = !DISubroutineType(types: !4058)
!4058 = !{!101, !4059, !4061}
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1005)
!4061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !4048, file: !1006, line: 132, baseType: !4063, size: 64, offset: 192)
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4064, size: 64)
!4064 = !DISubroutineType(types: !4065)
!4065 = !{!101, !4059, !7, !883, !4066}
!4066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4067, size: 64)
!4067 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1024)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !4048, file: !1006, line: 134, baseType: !4069, size: 64, offset: 256)
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4070, size: 64)
!4070 = !DISubroutineType(types: !4071)
!4071 = !{!101, !4059}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !4048, file: !1006, line: 135, baseType: !4073, size: 64, offset: 320)
!4073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4074, size: 64)
!4074 = !DISubroutineType(types: !4075)
!4075 = !{!101, !1004}
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !4048, file: !1006, line: 136, baseType: !4077, size: 64, offset: 384)
!4077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4078, size: 64)
!4078 = !DISubroutineType(types: !4079)
!4079 = !{null, !1004}
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !4048, file: !1006, line: 137, baseType: !4077, size: 64, offset: 448)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !4048, file: !1006, line: 138, baseType: !4082, size: 64, offset: 512)
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4083, size: 64)
!4083 = !DISubroutineType(types: !4084)
!4084 = !{null, !1004, !1039}
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !4048, file: !1006, line: 139, baseType: !4086, size: 64, offset: 576)
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = !DISubroutineType(types: !4088)
!4088 = !{!893, !1004, !893, !101}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !4048, file: !1006, line: 140, baseType: !4090, size: 64, offset: 640)
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4091, size: 64)
!4091 = !DISubroutineType(types: !4092)
!4092 = !{!999, !4093}
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !4048, file: !1006, line: 141, baseType: !4095, size: 64, offset: 704)
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = !DISubroutineType(types: !4097)
!4097 = !{!101, !1162, !880}
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !4048, file: !1006, line: 142, baseType: !4099, size: 64, offset: 768)
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4100 = !DISubroutineType(types: !4101)
!4101 = !{!1004, !1004, !4102}
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4103, size: 64)
!4103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1040)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1252, file: !64, line: 1271, baseType: !4105, size: 448, offset: 8128)
!4105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2652, line: 63, size: 448, elements: !4106)
!4106 = !{!4107, !4112, !4113, !4114, !4115, !4116, !4117}
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4105, file: !2652, line: 64, baseType: !4108, size: 64)
!4108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4109, size: 64)
!4109 = !DISubroutineType(types: !4110)
!4110 = !{!332, !4111, !2650}
!4111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4105, size: 64)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4105, file: !2652, line: 66, baseType: !4108, size: 64, offset: 64)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4105, file: !2652, line: 69, baseType: !1154, size: 64, offset: 128)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4105, file: !2652, line: 70, baseType: !101, size: 32, offset: 192)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4105, file: !2652, line: 71, baseType: !7, size: 32, offset: 224)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4105, file: !2652, line: 74, baseType: !232, size: 128, offset: 256)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4105, file: !2652, line: 85, baseType: !4118, size: 64, offset: 384)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1252, file: !64, line: 1274, baseType: !303, size: 64, offset: 8576)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1252, file: !64, line: 1280, baseType: !303, size: 64, offset: 8640)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1252, file: !64, line: 1283, baseType: !101, size: 32, offset: 8704)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1252, file: !64, line: 1286, baseType: !1953, size: 32, offset: 8736)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1252, file: !64, line: 1289, baseType: !2473, size: 64, offset: 8768)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1252, file: !64, line: 1290, baseType: !729, size: 64, offset: 8832)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1252, file: !64, line: 1297, baseType: !966, size: 64, offset: 8896)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1252, file: !64, line: 1304, baseType: !4127, size: 64, offset: 8960)
!4127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4128, line: 49, size: 64, elements: !4129)
!4128 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4129 = !{!4130}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4127, file: !4128, line: 50, baseType: !4131, size: 64)
!4131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 64)
!4132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4128, line: 41, size: 512, align: 512, elements: !4133)
!4133 = !{!4134, !4135, !4140}
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4132, file: !4128, line: 43, baseType: !254, size: 32)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4132, file: !4128, line: 45, baseType: !4136, size: 192, offset: 64)
!4136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4128, line: 29, size: 192, elements: !4137)
!4137 = !{!4138, !4139}
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4136, file: !4128, line: 30, baseType: !232, size: 128)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4136, file: !4128, line: 32, baseType: !1154, size: 64, offset: 128)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4132, file: !4128, line: 46, baseType: !1154, size: 64, offset: 256)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1252, file: !64, line: 1305, baseType: !4127, size: 64, offset: 9024)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1252, file: !64, line: 1306, baseType: !676, size: 128, align: 64, offset: 9088)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1252, file: !64, line: 1307, baseType: !2412, size: 256, offset: 9216)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1252, file: !64, line: 1309, baseType: !299, size: 256, offset: 9472)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1252, file: !64, line: 1314, baseType: !101, size: 32, offset: 9728)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1252, file: !64, line: 1317, baseType: !254, size: 32, align: 512, offset: 10240)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1252, file: !64, line: 1318, baseType: !232, size: 128, offset: 10304)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1252, file: !64, line: 1320, baseType: !254, size: 32, offset: 10432)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1252, file: !64, line: 1321, baseType: !232, size: 128, offset: 10496)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1040, file: !64, line: 656, baseType: !1402, size: 64, offset: 512)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1040, file: !64, line: 659, baseType: !225, size: 64, offset: 576)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1040, file: !64, line: 663, baseType: !332, size: 64, offset: 640)
!4153 = !DIDerivedType(tag: DW_TAG_member, scope: !1040, file: !64, line: 671, baseType: !4154, size: 32, offset: 704)
!4154 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1040, file: !64, line: 671, size: 32, elements: !4155)
!4155 = !{!4156, !4158}
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4154, file: !64, line: 672, baseType: !4157, size: 32)
!4157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4154, file: !64, line: 673, baseType: !7, size: 32)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1040, file: !64, line: 675, baseType: !1114, size: 32, offset: 736)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1040, file: !64, line: 676, baseType: !691, size: 64, offset: 768)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1040, file: !64, line: 677, baseType: !1150, size: 128, offset: 832)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1040, file: !64, line: 678, baseType: !1150, size: 128, offset: 960)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1040, file: !64, line: 679, baseType: !1150, size: 128, offset: 1088)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1040, file: !64, line: 680, baseType: !254, size: 32, offset: 1216)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1040, file: !64, line: 681, baseType: !294, size: 16, offset: 1248)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1040, file: !64, line: 682, baseType: !282, size: 8, offset: 1264)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1040, file: !64, line: 683, baseType: !282, size: 8, offset: 1272)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1040, file: !64, line: 684, baseType: !2783, size: 64, offset: 1280)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1040, file: !64, line: 691, baseType: !332, size: 64, offset: 1344)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1040, file: !64, line: 692, baseType: !820, size: 320, offset: 1408)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1040, file: !64, line: 694, baseType: !332, size: 64, offset: 1728)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1040, file: !64, line: 695, baseType: !332, size: 64, offset: 1792)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1040, file: !64, line: 697, baseType: !733, size: 128, offset: 1856)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1040, file: !64, line: 698, baseType: !232, size: 128, offset: 1984)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1040, file: !64, line: 707, baseType: !232, size: 128, offset: 2112)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1040, file: !64, line: 708, baseType: !232, size: 128, offset: 2240)
!4177 = !DIDerivedType(tag: DW_TAG_member, scope: !1040, file: !64, line: 709, baseType: !4178, size: 128, offset: 2368)
!4178 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1040, file: !64, line: 709, size: 128, elements: !4179)
!4179 = !{!4180, !4181}
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4178, file: !64, line: 710, baseType: !729, size: 64)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4178, file: !64, line: 711, baseType: !676, size: 128, align: 64)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1040, file: !64, line: 713, baseType: !305, size: 64, offset: 2496)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1040, file: !64, line: 714, baseType: !305, size: 64, offset: 2560)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1040, file: !64, line: 715, baseType: !274, size: 32, offset: 2624)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1040, file: !64, line: 716, baseType: !274, size: 32, offset: 2656)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1040, file: !64, line: 717, baseType: !274, size: 32, offset: 2688)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1040, file: !64, line: 719, baseType: !274, size: 32, offset: 2720)
!4188 = !DIDerivedType(tag: DW_TAG_member, scope: !1040, file: !64, line: 721, baseType: !4189, size: 64, offset: 2752)
!4189 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1040, file: !64, line: 721, size: 64, elements: !4190)
!4190 = !{!4191, !4315}
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4189, file: !64, line: 722, baseType: !4192, size: 64)
!4192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4193, size: 64)
!4193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4194)
!4194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !64, line: 1914, size: 2112, elements: !4195)
!4195 = !{!4196, !4197, !4201, !4205, !4209, !4210, !4211, !4215, !4228, !4232, !4236, !4237, !4241, !4242, !4246, !4251, !4252, !4256, !4260, !4266, !4267, !4271, !4272, !4278, !4282, !4283, !4288, !4292, !4296, !4300, !4304, !4305, !4311}
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4194, file: !64, line: 1915, baseType: !1285, size: 64)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4194, file: !64, line: 1916, baseType: !4198, size: 64, offset: 64)
!4198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4199, size: 64)
!4199 = !DISubroutineType(types: !4200)
!4200 = !{!691, !668, !691, !101}
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4194, file: !64, line: 1917, baseType: !4202, size: 64, offset: 128)
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4203 = !DISubroutineType(types: !4204)
!4204 = !{!1193, !668, !893, !1196, !2077}
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4194, file: !64, line: 1918, baseType: !4206, size: 64, offset: 192)
!4206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4207, size: 64)
!4207 = !DISubroutineType(types: !4208)
!4208 = !{!1193, !668, !883, !1196, !2077}
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !4194, file: !64, line: 1919, baseType: !1832, size: 64, offset: 256)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !4194, file: !64, line: 1920, baseType: !1832, size: 64, offset: 320)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !4194, file: !64, line: 1921, baseType: !4212, size: 64, offset: 384)
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = !DISubroutineType(types: !4214)
!4214 = !{!101, !1835, !2930, !7}
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !4194, file: !64, line: 1923, baseType: !4216, size: 64, offset: 448)
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4217 = !DISubroutineType(types: !4218)
!4218 = !{!101, !668, !4219}
!4219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4220, size: 64)
!4220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !64, line: 1858, size: 128, elements: !4221)
!4221 = !{!4222, !4227}
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4220, file: !64, line: 1859, baseType: !4223, size: 64)
!4223 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !64, line: 1855, baseType: !4224)
!4224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4225, size: 64)
!4225 = !DISubroutineType(types: !4226)
!4226 = !{!880, !4219, !883, !101, !691, !393, !7}
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4220, file: !64, line: 1860, baseType: !691, size: 64, offset: 64)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4194, file: !64, line: 1924, baseType: !4229, size: 64, offset: 512)
!4229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4230, size: 64)
!4230 = !DISubroutineType(types: !4231)
!4231 = !{!2124, !668, !2126}
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4194, file: !64, line: 1925, baseType: !4233, size: 64, offset: 576)
!4233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4234, size: 64)
!4234 = !DISubroutineType(types: !4235)
!4235 = !{!1154, !668, !7, !332}
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4194, file: !64, line: 1926, baseType: !4233, size: 64, offset: 640)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4194, file: !64, line: 1927, baseType: !4238, size: 64, offset: 704)
!4238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4239, size: 64)
!4239 = !DISubroutineType(types: !4240)
!4240 = !{!101, !668, !1542}
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !4194, file: !64, line: 1928, baseType: !332, size: 64, offset: 768)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4194, file: !64, line: 1929, baseType: !4243, size: 64, offset: 832)
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4244 = !DISubroutineType(types: !4245)
!4245 = !{!101, !1039, !668}
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4194, file: !64, line: 1930, baseType: !4247, size: 64, offset: 896)
!4247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4248, size: 64)
!4248 = !DISubroutineType(types: !4249)
!4249 = !{!101, !668, !4250}
!4250 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !64, line: 1061, baseType: !225)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4194, file: !64, line: 1931, baseType: !4243, size: 64, offset: 960)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !4194, file: !64, line: 1932, baseType: !4253, size: 64, offset: 1024)
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4254 = !DISubroutineType(types: !4255)
!4255 = !{!101, !668, !691, !691, !101}
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !4194, file: !64, line: 1933, baseType: !4257, size: 64, offset: 1088)
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4258, size: 64)
!4258 = !DISubroutineType(types: !4259)
!4259 = !{!101, !101, !668, !101}
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4194, file: !64, line: 1934, baseType: !4261, size: 64, offset: 1152)
!4261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4262, size: 64)
!4262 = !DISubroutineType(types: !4263)
!4263 = !{!101, !668, !101, !4264}
!4264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4265, size: 64)
!4265 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !64, line: 1063, flags: DIFlagFwdDecl)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !4194, file: !64, line: 1935, baseType: !665, size: 64, offset: 1216)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !4194, file: !64, line: 1936, baseType: !4268, size: 64, offset: 1280)
!4268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4269, size: 64)
!4269 = !DISubroutineType(types: !4270)
!4270 = !{!101, !101}
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !4194, file: !64, line: 1937, baseType: !4261, size: 64, offset: 1344)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !4194, file: !64, line: 1938, baseType: !4273, size: 64, offset: 1408)
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4274 = !DISubroutineType(types: !4275)
!4275 = !{!1193, !4276, !668, !2077, !1196, !7}
!4276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4277, size: 64)
!4277 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !325, line: 59, flags: DIFlagFwdDecl)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !4194, file: !64, line: 1939, baseType: !4279, size: 64, offset: 1472)
!4279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4280, size: 64)
!4280 = !DISubroutineType(types: !4281)
!4281 = !{!1193, !668, !2077, !4276, !1196, !7}
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !4194, file: !64, line: 1940, baseType: !1943, size: 64, offset: 1536)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !4194, file: !64, line: 1941, baseType: !4284, size: 64, offset: 1600)
!4284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4285, size: 64)
!4285 = !DISubroutineType(types: !4286)
!4286 = !{!101, !668, !101, !4287, !1809}
!4287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4264, size: 64)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !4194, file: !64, line: 1942, baseType: !4289, size: 64, offset: 1664)
!4289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4290, size: 64)
!4290 = !DISubroutineType(types: !4291)
!4291 = !{!1154, !668, !101, !691, !691}
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4194, file: !64, line: 1944, baseType: !4293, size: 64, offset: 1728)
!4293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4294, size: 64)
!4294 = !DISubroutineType(types: !4295)
!4295 = !{null, !2056, !668}
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !4194, file: !64, line: 1948, baseType: !4297, size: 64, offset: 1792)
!4297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4298, size: 64)
!4298 = !DISubroutineType(types: !4299)
!4299 = !{!1193, !668, !691, !668, !691, !1196, !7}
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !4194, file: !64, line: 1950, baseType: !4301, size: 64, offset: 1856)
!4301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4302, size: 64)
!4302 = !DISubroutineType(types: !4303)
!4303 = !{!691, !668, !691, !668, !691, !691, !7}
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !4194, file: !64, line: 1953, baseType: !4253, size: 64, offset: 1920)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !4194, file: !64, line: 1954, baseType: !4306, size: 64, offset: 1984)
!4306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4307, size: 64)
!4307 = !DISubroutineType(types: !4308)
!4308 = !{!101, !4309, !7}
!4309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4310, size: 64)
!4310 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !64, line: 1911, flags: DIFlagFwdDecl)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !4194, file: !64, line: 1955, baseType: !4312, size: 64, offset: 2048)
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4313, size: 64)
!4313 = !DISubroutineType(types: !4314)
!4314 = !{!101, !4309, !2930, !7}
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4189, file: !64, line: 723, baseType: !2541, size: 64)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1040, file: !64, line: 725, baseType: !4317, size: 64, offset: 2816)
!4317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4318, size: 64)
!4318 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !64, line: 725, flags: DIFlagFwdDecl)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1040, file: !64, line: 726, baseType: !1403, size: 1536, align: 64, offset: 2880)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1040, file: !64, line: 727, baseType: !232, size: 128, offset: 4416)
!4321 = !DIDerivedType(tag: DW_TAG_member, scope: !1040, file: !64, line: 728, baseType: !4322, size: 64, offset: 4544)
!4322 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1040, file: !64, line: 728, size: 64, elements: !4323)
!4323 = !{!4324, !4325, !4328, !4329}
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4322, file: !64, line: 729, baseType: !4276, size: 64)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4322, file: !64, line: 730, baseType: !4326, size: 64)
!4326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4327, size: 64)
!4327 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !64, line: 730, flags: DIFlagFwdDecl)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4322, file: !64, line: 731, baseType: !893, size: 64)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4322, file: !64, line: 732, baseType: !7, size: 32)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1040, file: !64, line: 735, baseType: !336, size: 32, offset: 4608)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1040, file: !64, line: 738, baseType: !336, size: 32, offset: 4640)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1040, file: !64, line: 739, baseType: !4030, size: 64, offset: 4672)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1040, file: !64, line: 750, baseType: !225, size: 64, offset: 4736)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !1005, file: !1006, line: 91, baseType: !4335, size: 256, offset: 448)
!4335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !286, size: 256, elements: !2824)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !1005, file: !1006, line: 94, baseType: !4337, size: 64, offset: 704)
!4337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !4338, line: 25, size: 64, elements: !4339)
!4338 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!4339 = !{!4340}
!4340 = !DIDerivedType(tag: DW_TAG_member, scope: !4337, file: !4338, line: 26, baseType: !4341, size: 64)
!4341 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4337, file: !4338, line: 26, size: 64, elements: !4342)
!4342 = !{!4343, !4344}
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !4341, file: !4338, line: 28, baseType: !394, size: 64, align: 64)
!4344 = !DIDerivedType(tag: DW_TAG_member, scope: !4341, file: !4338, line: 30, baseType: !4345, size: 64)
!4345 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4341, file: !4338, line: 30, size: 64, elements: !4346)
!4346 = !{!4347, !4348}
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4345, file: !4338, line: 31, baseType: !254, size: 32)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4345, file: !4338, line: 32, baseType: !101, size: 32, offset: 32)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !1005, file: !1006, line: 95, baseType: !4046, size: 64, offset: 768)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !1005, file: !1006, line: 96, baseType: !1251, size: 64, offset: 832)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !1005, file: !1006, line: 97, baseType: !332, size: 64, offset: 896)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !1005, file: !1006, line: 98, baseType: !225, size: 64, offset: 960)
!4353 = !DIDerivedType(tag: DW_TAG_member, scope: !1005, file: !1006, line: 100, baseType: !4354, size: 128, offset: 1024)
!4354 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1005, file: !1006, line: 100, size: 128, elements: !4355)
!4355 = !{!4356, !4357}
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4354, file: !1006, line: 101, baseType: !232, size: 128)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4354, file: !1006, line: 102, baseType: !4358, size: 64)
!4358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !1005, file: !1006, line: 104, baseType: !232, size: 128, offset: 1152)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !1005, file: !1006, line: 105, baseType: !232, size: 128, offset: 1280)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !1005, file: !1006, line: 113, baseType: !4362, size: 128, offset: 1408)
!4362 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1005, file: !1006, line: 109, size: 128, elements: !4363)
!4363 = !{!4364, !4365, !4366}
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4362, file: !1006, line: 110, baseType: !733, size: 128)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4362, file: !1006, line: 111, baseType: !1015, size: 128)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4362, file: !1006, line: 112, baseType: !676, size: 128, align: 64)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1000, file: !1001, line: 72, baseType: !1251, size: 64, offset: 64)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1000, file: !1001, line: 73, baseType: !101, size: 32, offset: 128)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1000, file: !1001, line: 74, baseType: !1079, size: 64, offset: 192)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !995, file: !996, line: 10, baseType: !1004, size: 64, offset: 64)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !669, file: !64, line: 1015, baseType: !1039, size: 64, offset: 1344)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !669, file: !64, line: 1016, baseType: !4192, size: 64, offset: 1408)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !669, file: !64, line: 1018, baseType: !393, size: 64, offset: 1472)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !669, file: !64, line: 1020, baseType: !225, size: 64, offset: 1536)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !669, file: !64, line: 1023, baseType: !225, size: 64, offset: 1600)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !669, file: !64, line: 1027, baseType: !4377, size: 64, offset: 1664)
!4377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !669, file: !64, line: 1029, baseType: !1402, size: 64, offset: 1728)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !669, file: !64, line: 1030, baseType: !1953, size: 32, offset: 1792)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !669, file: !64, line: 1031, baseType: !1953, size: 32, offset: 1824)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !644, file: !35, line: 756, baseType: !332, size: 64, offset: 704)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !644, file: !35, line: 757, baseType: !332, size: 64, offset: 768)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !644, file: !35, line: 760, baseType: !332, size: 64, offset: 832)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !644, file: !35, line: 761, baseType: !332, size: 64, offset: 896)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !644, file: !35, line: 763, baseType: !332, size: 64, offset: 960)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !644, file: !35, line: 764, baseType: !4387, size: 64, offset: 1024)
!4387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4388, size: 64)
!4388 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1557, line: 299, baseType: !4389)
!4389 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1557, line: 299, size: 64, elements: !4390)
!4390 = !{!4391}
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !4389, file: !1557, line: 299, baseType: !4392, size: 64)
!4392 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1562, line: 18, baseType: !332)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !644, file: !35, line: 773, baseType: !274, size: 32, offset: 1088)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !644, file: !35, line: 785, baseType: !274, size: 32, offset: 1120)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !644, file: !35, line: 795, baseType: !4396, size: 64, offset: 1152)
!4396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4397, size: 64)
!4397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !35, line: 726, size: 128, elements: !4398)
!4398 = !{!4399, !4400}
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4397, file: !35, line: 727, baseType: !393, size: 64)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !4397, file: !35, line: 728, baseType: !101, size: 32, offset: 64)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !644, file: !35, line: 801, baseType: !332, size: 64, offset: 1216)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !644, file: !35, line: 804, baseType: !303, size: 64, offset: 1280)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !644, file: !35, line: 806, baseType: !101, size: 32, offset: 1344)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !644, file: !35, line: 808, baseType: !254, size: 32, offset: 1376)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !644, file: !35, line: 823, baseType: !820, size: 320, offset: 1408)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !644, file: !35, line: 825, baseType: !232, size: 128, offset: 1728)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !644, file: !35, line: 845, baseType: !101, size: 32, offset: 1856)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !644, file: !35, line: 849, baseType: !332, size: 64, offset: 1920)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !644, file: !35, line: 850, baseType: !332, size: 64, offset: 1984)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !644, file: !35, line: 852, baseType: !332, size: 64, offset: 2048)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !644, file: !35, line: 853, baseType: !332, size: 64, offset: 2112)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !644, file: !35, line: 854, baseType: !305, size: 64, offset: 2176)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !644, file: !35, line: 855, baseType: !332, size: 64, offset: 2240)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !644, file: !35, line: 856, baseType: !332, size: 64, offset: 2304)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !644, file: !35, line: 857, baseType: !332, size: 64, offset: 2368)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !644, file: !35, line: 858, baseType: !332, size: 64, offset: 2432)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !644, file: !35, line: 865, baseType: !514, size: 32, offset: 2496)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !644, file: !35, line: 867, baseType: !254, size: 32, offset: 2528)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !644, file: !35, line: 869, baseType: !332, size: 64, offset: 2560)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !644, file: !35, line: 869, baseType: !332, size: 64, offset: 2624)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !644, file: !35, line: 869, baseType: !332, size: 64, offset: 2688)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !644, file: !35, line: 869, baseType: !332, size: 64, offset: 2752)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !644, file: !35, line: 870, baseType: !332, size: 64, offset: 2816)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !644, file: !35, line: 870, baseType: !332, size: 64, offset: 2880)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !644, file: !35, line: 870, baseType: !332, size: 64, offset: 2944)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !644, file: !35, line: 871, baseType: !332, size: 64, offset: 3008)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !644, file: !35, line: 871, baseType: !332, size: 64, offset: 3072)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !644, file: !35, line: 871, baseType: !332, size: 64, offset: 3136)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !644, file: !35, line: 871, baseType: !332, size: 64, offset: 3200)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !644, file: !35, line: 873, baseType: !4431, size: 3328, offset: 3264)
!4431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 3328, elements: !4432)
!4432 = !{!4433}
!4433 = !DISubrange(count: 52)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !644, file: !35, line: 875, baseType: !4435, size: 1280, offset: 6592)
!4435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !941, size: 1280, elements: !738)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !644, file: !35, line: 877, baseType: !4437, size: 64, offset: 7872)
!4437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4438, size: 64)
!4438 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !35, line: 877, flags: DIFlagFwdDecl)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !644, file: !35, line: 880, baseType: !4440, size: 1088, offset: 7936)
!4440 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !4441, line: 72, baseType: !4442)
!4441 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!4442 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4441, line: 23, size: 1088, elements: !4443)
!4443 = !{!4444, !4445, !4446, !4447, !4448, !4451, !4452, !4453, !4454, !4479, !4480, !4481}
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !4442, file: !4441, line: 28, baseType: !393, size: 64)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !4442, file: !4441, line: 38, baseType: !305, size: 64, offset: 64)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !4442, file: !4441, line: 40, baseType: !332, size: 64, offset: 128)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !4442, file: !4441, line: 43, baseType: !820, size: 320, offset: 192)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !4442, file: !4441, line: 44, baseType: !4449, size: 64, offset: 512)
!4449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4450, size: 64)
!4450 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !4441, line: 44, flags: DIFlagFwdDecl)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4442, file: !4441, line: 48, baseType: !332, size: 64, offset: 576)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4442, file: !4441, line: 59, baseType: !299, size: 256, offset: 640)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !4442, file: !4441, line: 60, baseType: !225, size: 64, offset: 896)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !4442, file: !4441, line: 61, baseType: !4455, size: 64, offset: 960)
!4455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4456, size: 64)
!4456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4457)
!4457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !4458, line: 13, size: 1216, elements: !4459)
!4458 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!4459 = !{!4460, !4461, !4462, !4463, !4464, !4465, !4466, !4467, !4468, !4469, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4478}
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4457, file: !4458, line: 14, baseType: !225, size: 64)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4457, file: !4458, line: 15, baseType: !332, size: 64, offset: 64)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !4457, file: !4458, line: 17, baseType: !332, size: 64, offset: 128)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !4457, file: !4458, line: 17, baseType: !332, size: 64, offset: 192)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !4457, file: !4458, line: 18, baseType: !332, size: 64, offset: 256)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !4457, file: !4458, line: 18, baseType: !332, size: 64, offset: 320)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !4457, file: !4458, line: 19, baseType: !1992, size: 64, offset: 384)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !4457, file: !4458, line: 21, baseType: !1154, size: 64, offset: 448)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !4457, file: !4458, line: 23, baseType: !1154, size: 64, offset: 512)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !4457, file: !4458, line: 24, baseType: !1154, size: 64, offset: 576)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !4457, file: !4458, line: 25, baseType: !1154, size: 64, offset: 640)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !4457, file: !4458, line: 26, baseType: !1154, size: 64, offset: 704)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !4457, file: !4458, line: 27, baseType: !1154, size: 64, offset: 768)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !4457, file: !4458, line: 28, baseType: !1154, size: 64, offset: 832)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !4457, file: !4458, line: 29, baseType: !1154, size: 64, offset: 896)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !4457, file: !4458, line: 30, baseType: !1154, size: 64, offset: 960)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !4457, file: !4458, line: 31, baseType: !1154, size: 64, offset: 1024)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !4457, file: !4458, line: 32, baseType: !1154, size: 64, offset: 1088)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !4457, file: !4458, line: 33, baseType: !1154, size: 64, offset: 1152)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !4442, file: !4441, line: 63, baseType: !274, size: 32, offset: 1024)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !4442, file: !4441, line: 69, baseType: !292, size: 16, offset: 1056)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !4442, file: !4441, line: 70, baseType: !2305, size: 16, offset: 1072)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !644, file: !35, line: 882, baseType: !332, size: 64, offset: 9024)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !644, file: !35, line: 885, baseType: !254, size: 32, offset: 9088)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !644, file: !35, line: 886, baseType: !4485, size: 64, offset: 9152)
!4485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4486, size: 64)
!4486 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !35, line: 732, flags: DIFlagFwdDecl)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !644, file: !35, line: 901, baseType: !966, size: 64, offset: 9216)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !644, file: !35, line: 904, baseType: !668, size: 64, offset: 9280)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !644, file: !35, line: 906, baseType: !4490, size: 64, offset: 9344)
!4490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4491, size: 64)
!4491 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !35, line: 906, flags: DIFlagFwdDecl)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !644, file: !35, line: 930, baseType: !274, size: 32, offset: 9408)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !644, file: !35, line: 933, baseType: !274, size: 32, offset: 9440)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !644, file: !35, line: 935, baseType: !4495, size: 64, offset: 9472)
!4495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !164, line: 103, size: 64, elements: !4496)
!4496 = !{!4497}
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !4495, file: !164, line: 104, baseType: !4498, size: 64)
!4498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4499, size: 64)
!4499 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !164, line: 101, flags: DIFlagFwdDecl)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !644, file: !35, line: 940, baseType: !303, size: 64, offset: 9536)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !644, file: !35, line: 942, baseType: !2412, size: 256, offset: 9600)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !641, file: !35, line: 986, baseType: !4503, offset: 10240)
!4503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, elements: !757)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !324, file: !325, line: 882, baseType: !640, size: 64, offset: 9792)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !324, file: !325, line: 884, baseType: !101, size: 32, offset: 9856)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !324, file: !325, line: 885, baseType: !101, size: 32, offset: 9888)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !324, file: !325, line: 886, baseType: !101, size: 32, offset: 9920)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !324, file: !325, line: 888, baseType: !101, size: 32, offset: 9952)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !324, file: !325, line: 890, baseType: !332, size: 64, offset: 9984)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !324, file: !325, line: 893, baseType: !7, size: 32, offset: 10048)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !324, file: !325, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !324, file: !325, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !324, file: !325, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !324, file: !325, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !324, file: !325, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !324, file: !325, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !324, file: !325, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !324, file: !325, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !324, file: !325, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !324, file: !325, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !324, file: !325, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !324, file: !325, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !324, file: !325, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !324, file: !325, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !324, file: !325, line: 969, baseType: !332, size: 64, offset: 10176)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !324, file: !325, line: 971, baseType: !4527, size: 448, offset: 10240)
!4527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !158, line: 25, size: 448, elements: !4528)
!4528 = !{!4529, !4530, !4535}
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !4527, file: !158, line: 26, baseType: !332, size: 64)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4527, file: !158, line: 27, baseType: !4531, size: 64, offset: 64)
!4531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4532, size: 64)
!4532 = !DISubroutineType(types: !4533)
!4533 = !{!1154, !4534}
!4534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4527, size: 64)
!4535 = !DIDerivedType(tag: DW_TAG_member, scope: !4527, file: !158, line: 28, baseType: !4536, size: 320, offset: 128)
!4536 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4527, file: !158, line: 28, size: 320, elements: !4537)
!4537 = !{!4538, !4548, !4573}
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !4536, file: !158, line: 37, baseType: !4539, size: 320)
!4539 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4536, file: !158, line: 30, size: 320, elements: !4540)
!4540 = !{!4541, !4543, !4544, !4545, !4546, !4547}
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !4539, file: !158, line: 31, baseType: !4542, size: 64)
!4542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4539, file: !158, line: 32, baseType: !335, size: 32, offset: 64)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4539, file: !158, line: 33, baseType: !335, size: 32, offset: 96)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !4539, file: !158, line: 34, baseType: !335, size: 32, offset: 128)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4539, file: !158, line: 35, baseType: !393, size: 64, offset: 192)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !4539, file: !158, line: 36, baseType: !4542, size: 64, offset: 256)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !4536, file: !158, line: 47, baseType: !4549, size: 192)
!4549 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4536, file: !158, line: 39, size: 192, elements: !4550)
!4550 = !{!4551, !4552, !4553, !4572}
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !4549, file: !158, line: 40, baseType: !505, size: 32)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4549, file: !158, line: 41, baseType: !157, size: 32, offset: 32)
!4553 = !DIDerivedType(tag: DW_TAG_member, scope: !4549, file: !158, line: 42, baseType: !4554, size: 64, offset: 64)
!4554 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4549, file: !158, line: 42, size: 64, elements: !4555)
!4555 = !{!4556, !4564}
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !4554, file: !158, line: 43, baseType: !4557, size: 64)
!4557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4558, size: 64)
!4558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !4559, line: 7, size: 128, elements: !4560)
!4559 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!4560 = !{!4561, !4563}
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4558, file: !4559, line: 8, baseType: !4562, size: 64)
!4562 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !507, line: 93, baseType: !311)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4558, file: !4559, line: 9, baseType: !311, size: 64, offset: 64)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !4554, file: !158, line: 44, baseType: !4565, size: 64)
!4565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4566, size: 64)
!4566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !4567, line: 7, size: 64, elements: !4568)
!4567 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!4568 = !{!4569, !4571}
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4566, file: !4567, line: 8, baseType: !4570, size: 32)
!4570 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !4567, line: 5, baseType: !812)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4566, file: !4567, line: 9, baseType: !812, size: 32, offset: 32)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4549, file: !158, line: 46, baseType: !393, size: 64, offset: 128)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4536, file: !158, line: 55, baseType: !4574, size: 256)
!4574 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4536, file: !158, line: 49, size: 256, elements: !4575)
!4575 = !{!4576, !4579, !4580, !4581, !4582}
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !4574, file: !158, line: 50, baseType: !4577, size: 64)
!4577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4578, size: 64)
!4578 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !158, line: 14, flags: DIFlagFwdDecl)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !4574, file: !158, line: 51, baseType: !101, size: 32, offset: 64)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !4574, file: !158, line: 52, baseType: !101, size: 32, offset: 96)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4574, file: !158, line: 53, baseType: !332, size: 64, offset: 128)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4574, file: !158, line: 54, baseType: !332, size: 64, offset: 192)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !324, file: !325, line: 973, baseType: !4584, size: 32, offset: 10688)
!4584 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !227, line: 27, baseType: !4585)
!4585 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !507, line: 28, baseType: !101)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !324, file: !325, line: 974, baseType: !4584, size: 32, offset: 10720)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !324, file: !325, line: 978, baseType: !332, size: 64, offset: 10752)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !324, file: !325, line: 987, baseType: !323, size: 64, offset: 10816)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !324, file: !325, line: 990, baseType: !323, size: 64, offset: 10880)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !324, file: !325, line: 995, baseType: !232, size: 128, offset: 10944)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !324, file: !325, line: 996, baseType: !232, size: 128, offset: 11072)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !324, file: !325, line: 997, baseType: !323, size: 64, offset: 11200)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !324, file: !325, line: 1005, baseType: !232, size: 128, offset: 11264)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !324, file: !325, line: 1006, baseType: !232, size: 128, offset: 11392)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !324, file: !325, line: 1009, baseType: !721, size: 64, offset: 11520)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !324, file: !325, line: 1010, baseType: !4597, size: 512, offset: 11584)
!4597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !733, size: 512, elements: !738)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !324, file: !325, line: 1011, baseType: !232, size: 128, offset: 12096)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !324, file: !325, line: 1012, baseType: !232, size: 128, offset: 12224)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !324, file: !325, line: 1014, baseType: !2161, size: 64, offset: 12352)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !324, file: !325, line: 1017, baseType: !2298, size: 64, offset: 12416)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !324, file: !325, line: 1020, baseType: !2298, size: 64, offset: 12480)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !324, file: !325, line: 1023, baseType: !225, size: 64, offset: 12544)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !324, file: !325, line: 1025, baseType: !393, size: 64, offset: 12608)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !324, file: !325, line: 1026, baseType: !393, size: 64, offset: 12672)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !324, file: !325, line: 1031, baseType: !393, size: 64, offset: 12736)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !324, file: !325, line: 1032, baseType: !4608, size: 192, offset: 12800)
!4608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !325, line: 324, size: 192, elements: !4609)
!4609 = !{!4610, !4611, !4612}
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4608, file: !325, line: 326, baseType: !393, size: 64)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4608, file: !325, line: 327, baseType: !393, size: 64, offset: 64)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4608, file: !325, line: 328, baseType: !313, size: 32, offset: 128)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !324, file: !325, line: 1041, baseType: !332, size: 64, offset: 12992)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !324, file: !325, line: 1042, baseType: !332, size: 64, offset: 13056)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !324, file: !325, line: 1045, baseType: !393, size: 64, offset: 13120)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !324, file: !325, line: 1048, baseType: !393, size: 64, offset: 13184)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !324, file: !325, line: 1051, baseType: !332, size: 64, offset: 13248)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !324, file: !325, line: 1052, baseType: !332, size: 64, offset: 13312)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !324, file: !325, line: 1055, baseType: !4620, size: 640, offset: 13376)
!4620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !4621, line: 132, size: 640, elements: !4622)
!4621 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!4622 = !{!4623, !4629, !4630}
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !4620, file: !4621, line: 133, baseType: !4624, size: 576)
!4624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4625, size: 576, elements: !717)
!4625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !4621, line: 117, size: 192, elements: !4626)
!4626 = !{!4627, !4628}
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !4625, file: !4621, line: 118, baseType: !393, size: 64)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !4625, file: !4621, line: 119, baseType: !520, size: 128, offset: 64)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !4620, file: !4621, line: 134, baseType: !7, size: 32, offset: 576)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !4620, file: !4621, line: 135, baseType: !7, size: 32, offset: 608)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !324, file: !325, line: 1058, baseType: !4632, size: 448, offset: 14016)
!4632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !4621, line: 144, size: 448, elements: !4633)
!4633 = !{!4634, !4635, !4636}
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4632, file: !4621, line: 145, baseType: !676, size: 128, align: 64)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4632, file: !4621, line: 146, baseType: !299, size: 256, offset: 128)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !4632, file: !4621, line: 147, baseType: !7, size: 32, offset: 384)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !324, file: !325, line: 1064, baseType: !771, size: 64, offset: 14464)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !324, file: !325, line: 1067, baseType: !771, size: 64, offset: 14528)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !324, file: !325, line: 1070, baseType: !771, size: 64, offset: 14592)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !324, file: !325, line: 1074, baseType: !804, size: 64, offset: 14656)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !324, file: !325, line: 1084, baseType: !4642, size: 128, offset: 14720)
!4642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !866, size: 128, elements: !4040)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !324, file: !325, line: 1086, baseType: !4644, size: 64, offset: 14848)
!4644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4645, size: 64)
!4645 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !325, line: 55, flags: DIFlagFwdDecl)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !324, file: !325, line: 1089, baseType: !4647, size: 64, offset: 14912)
!4647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !4648, line: 12, size: 64, elements: !4649)
!4648 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!4649 = !{!4650}
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !4647, file: !4648, line: 13, baseType: !4651, size: 64)
!4651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4652, size: 64)
!4652 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !4648, line: 8, flags: DIFlagFwdDecl)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !324, file: !325, line: 1090, baseType: !4654, size: 128, offset: 14976)
!4654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !4655, line: 13, size: 128, elements: !4656)
!4655 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!4656 = !{!4657}
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !4654, file: !4655, line: 14, baseType: !232, size: 128)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !324, file: !325, line: 1097, baseType: !4659, size: 64, offset: 15104)
!4659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4660, size: 64)
!4660 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !325, line: 50, flags: DIFlagFwdDecl)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !324, file: !325, line: 1100, baseType: !4662, size: 64, offset: 15168)
!4662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4663, size: 64)
!4663 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !325, line: 1100, flags: DIFlagFwdDecl)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !324, file: !325, line: 1103, baseType: !4665, size: 64, offset: 15232)
!4665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4666, size: 64)
!4666 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !325, line: 53, flags: DIFlagFwdDecl)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !324, file: !325, line: 1107, baseType: !4668, size: 64, offset: 15296)
!4668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4669, size: 64)
!4669 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !4670, line: 35, flags: DIFlagFwdDecl)
!4670 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !324, file: !325, line: 1110, baseType: !4672, size: 64, offset: 15360)
!4672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4673, size: 64)
!4673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !4674, line: 93, size: 8768, elements: !4675)
!4674 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!4675 = !{!4676, !4677, !4678, !4679, !4680, !4681, !4682, !4683, !4693, !4694, !4695, !4696, !4697, !4698, !4699, !4711, !4712, !4713, !4714, !4715, !4716, !4717, !4723, !4732, !4733, !4735, !4736, !4737, !4740, !4746, !4747, !4748, !4749, !4750, !4751, !4752, !4753, !4754, !4755, !4756, !4757, !4758, !4759, !4760, !4761, !4762, !4763, !4764, !4765, !4766, !4767, !4778, !4779, !4786, !4796, !4799, !4800, !4803, !4804, !4805, !4806, !4807, !4808}
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !4673, file: !4674, line: 94, baseType: !341, size: 32)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !4673, file: !4674, line: 95, baseType: !274, size: 32, offset: 32)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4673, file: !4674, line: 96, baseType: !101, size: 32, offset: 64)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !4673, file: !4674, line: 97, baseType: !101, size: 32, offset: 96)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !4673, file: !4674, line: 98, baseType: !232, size: 128, offset: 128)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !4673, file: !4674, line: 100, baseType: !742, size: 192, offset: 256)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !4673, file: !4674, line: 103, baseType: !323, size: 64, offset: 448)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !4673, file: !4674, line: 106, baseType: !4684, size: 192, offset: 512)
!4684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !971, line: 32, size: 192, elements: !4685)
!4685 = !{!4686, !4687}
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4684, file: !971, line: 33, baseType: !232, size: 128)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4684, file: !971, line: 34, baseType: !4688, size: 64, offset: 128)
!4688 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !4689, line: 25, baseType: !4690)
!4689 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!4690 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4689, line: 23, size: 64, elements: !4691)
!4691 = !{!4692}
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !4690, file: !4689, line: 24, baseType: !591, size: 64)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !4673, file: !4674, line: 109, baseType: !729, size: 64, offset: 704)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !4673, file: !4674, line: 112, baseType: !101, size: 32, offset: 768)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !4673, file: !4674, line: 114, baseType: !101, size: 32, offset: 800)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !4673, file: !4674, line: 115, baseType: !323, size: 64, offset: 832)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !4673, file: !4674, line: 118, baseType: !101, size: 32, offset: 896)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4673, file: !4674, line: 119, baseType: !7, size: 32, offset: 928)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !4673, file: !4674, line: 121, baseType: !4700, size: 64, offset: 960)
!4700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4701, size: 64)
!4701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !4674, line: 80, size: 448, elements: !4702)
!4702 = !{!4703, !4704, !4710}
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4701, file: !4674, line: 81, baseType: !274, size: 32)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !4701, file: !4674, line: 82, baseType: !4705, size: 128, offset: 64)
!4705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !4674, line: 75, size: 128, elements: !4706)
!4706 = !{!4707, !4708}
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4705, file: !4674, line: 76, baseType: !323, size: 64)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4705, file: !4674, line: 77, baseType: !4709, size: 64, offset: 64)
!4709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4705, size: 64)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !4701, file: !4674, line: 83, baseType: !1507, size: 256, offset: 192)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !4673, file: !4674, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !4673, file: !4674, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !4673, file: !4674, line: 138, baseType: !7, size: 32, offset: 1056)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !4673, file: !4674, line: 139, baseType: !232, size: 128, offset: 1088)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !4673, file: !4674, line: 142, baseType: !458, size: 512, offset: 1216)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !4673, file: !4674, line: 143, baseType: !466, size: 64, offset: 1728)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !4673, file: !4674, line: 150, baseType: !4718, size: 256, offset: 1792)
!4718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4719, size: 256, elements: !2288)
!4719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !4674, line: 38, size: 128, elements: !4720)
!4720 = !{!4721, !4722}
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4719, file: !4674, line: 39, baseType: !393, size: 64)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !4719, file: !4674, line: 40, baseType: !393, size: 64, offset: 64)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !4673, file: !4674, line: 156, baseType: !4724, size: 192, offset: 2048)
!4724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !4674, line: 66, size: 192, elements: !4725)
!4725 = !{!4726}
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !4724, file: !4674, line: 67, baseType: !4727, size: 192)
!4727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !4674, line: 47, size: 192, elements: !4728)
!4728 = !{!4729, !4730, !4731}
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4727, file: !4674, line: 48, baseType: !305, size: 64)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4727, file: !4674, line: 49, baseType: !305, size: 64, offset: 64)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4727, file: !4674, line: 50, baseType: !305, size: 64, offset: 128)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !4673, file: !4674, line: 160, baseType: !4620, size: 640, offset: 2240)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !4673, file: !4674, line: 163, baseType: !4734, size: 256, offset: 2880)
!4734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !721, size: 256, elements: !738)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !4673, file: !4674, line: 169, baseType: !721, size: 64, offset: 3136)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !4673, file: !4674, line: 172, baseType: !101, size: 32, offset: 3200)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !4673, file: !4674, line: 174, baseType: !4738, size: 64, offset: 3264)
!4738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4739, size: 64)
!4739 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !4674, line: 174, flags: DIFlagFwdDecl)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !4673, file: !4674, line: 185, baseType: !4741, size: 64, offset: 3328)
!4741 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !510, line: 860, baseType: !4742)
!4742 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !510, line: 853, size: 64, elements: !4743)
!4743 = !{!4744, !4745}
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !4742, file: !510, line: 858, baseType: !1010, size: 32)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4742, file: !510, line: 859, baseType: !254, size: 32, offset: 32)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4673, file: !4674, line: 186, baseType: !393, size: 64, offset: 3392)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4673, file: !4674, line: 186, baseType: !393, size: 64, offset: 3456)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !4673, file: !4674, line: 186, baseType: !393, size: 64, offset: 3520)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !4673, file: !4674, line: 186, baseType: !393, size: 64, offset: 3584)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !4673, file: !4674, line: 187, baseType: !393, size: 64, offset: 3648)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !4673, file: !4674, line: 188, baseType: !393, size: 64, offset: 3712)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !4673, file: !4674, line: 189, baseType: !4608, size: 192, offset: 3776)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !4673, file: !4674, line: 190, baseType: !332, size: 64, offset: 3968)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !4673, file: !4674, line: 190, baseType: !332, size: 64, offset: 4032)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !4673, file: !4674, line: 190, baseType: !332, size: 64, offset: 4096)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !4673, file: !4674, line: 190, baseType: !332, size: 64, offset: 4160)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !4673, file: !4674, line: 191, baseType: !332, size: 64, offset: 4224)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !4673, file: !4674, line: 191, baseType: !332, size: 64, offset: 4288)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !4673, file: !4674, line: 191, baseType: !332, size: 64, offset: 4352)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !4673, file: !4674, line: 191, baseType: !332, size: 64, offset: 4416)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !4673, file: !4674, line: 192, baseType: !332, size: 64, offset: 4480)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !4673, file: !4674, line: 192, baseType: !332, size: 64, offset: 4544)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !4673, file: !4674, line: 192, baseType: !332, size: 64, offset: 4608)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !4673, file: !4674, line: 192, baseType: !332, size: 64, offset: 4672)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !4673, file: !4674, line: 193, baseType: !332, size: 64, offset: 4736)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !4673, file: !4674, line: 193, baseType: !332, size: 64, offset: 4800)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !4673, file: !4674, line: 194, baseType: !4768, size: 448, offset: 4864)
!4768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !4769, line: 12, size: 448, elements: !4770)
!4769 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!4770 = !{!4771, !4772, !4773, !4774, !4775, !4776, !4777}
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !4768, file: !4769, line: 15, baseType: !393, size: 64)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !4768, file: !4769, line: 17, baseType: !393, size: 64, offset: 64)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !4768, file: !4769, line: 19, baseType: !393, size: 64, offset: 128)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !4768, file: !4769, line: 21, baseType: !393, size: 64, offset: 192)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4768, file: !4769, line: 29, baseType: !393, size: 64, offset: 256)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4768, file: !4769, line: 35, baseType: !393, size: 64, offset: 320)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4768, file: !4769, line: 44, baseType: !393, size: 64, offset: 384)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !4673, file: !4674, line: 202, baseType: !395, size: 64, offset: 5312)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !4673, file: !4674, line: 213, baseType: !4780, size: 2048, offset: 5376)
!4780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4781, size: 2048, elements: !4040)
!4781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !4782, line: 43, size: 128, elements: !4783)
!4782 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!4783 = !{!4784, !4785}
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !4781, file: !4782, line: 44, baseType: !1198, size: 64)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !4781, file: !4782, line: 45, baseType: !1198, size: 64, offset: 64)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !4673, file: !4674, line: 216, baseType: !4787, size: 448, offset: 7424)
!4787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !4674, line: 30, size: 448, elements: !4788)
!4788 = !{!4789, !4790, !4791, !4792, !4793, !4794, !4795}
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !4787, file: !4674, line: 31, baseType: !101, size: 32)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !4787, file: !4674, line: 32, baseType: !1154, size: 64, offset: 64)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !4787, file: !4674, line: 33, baseType: !332, size: 64, offset: 128)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !4787, file: !4674, line: 34, baseType: !393, size: 64, offset: 192)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !4787, file: !4674, line: 34, baseType: !393, size: 64, offset: 256)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !4787, file: !4674, line: 35, baseType: !332, size: 64, offset: 320)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !4787, file: !4674, line: 35, baseType: !332, size: 64, offset: 384)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !4673, file: !4674, line: 219, baseType: !4797, size: 64, offset: 7872)
!4797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4798, size: 64)
!4798 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !4674, line: 219, flags: DIFlagFwdDecl)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !4673, file: !4674, line: 222, baseType: !7, size: 32, offset: 7936)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !4673, file: !4674, line: 223, baseType: !4801, size: 64, offset: 8000)
!4801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4802, size: 64)
!4802 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !4674, line: 223, flags: DIFlagFwdDecl)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !4673, file: !4674, line: 230, baseType: !880, size: 8, offset: 8064)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !4673, file: !4674, line: 231, baseType: !848, size: 16, offset: 8080)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !4673, file: !4674, line: 232, baseType: !848, size: 16, offset: 8096)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !4673, file: !4674, line: 234, baseType: !640, size: 64, offset: 8128)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !4673, file: !4674, line: 237, baseType: !299, size: 256, offset: 8192)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !4673, file: !4674, line: 243, baseType: !820, size: 320, offset: 8448)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !324, file: !325, line: 1111, baseType: !4810, size: 64, offset: 15424)
!4810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4811, size: 64)
!4811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !4674, line: 20, size: 16640, elements: !4812)
!4812 = !{!4813, !4814, !4815, !4816}
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !4811, file: !4674, line: 21, baseType: !254, size: 32)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4811, file: !4674, line: 22, baseType: !341, size: 32, offset: 32)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !4811, file: !4674, line: 23, baseType: !742, size: 192, offset: 64)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !4811, file: !4674, line: 24, baseType: !4817, size: 16384, offset: 256)
!4817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4818, size: 16384, elements: !1341)
!4818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !971, line: 51, size: 256, elements: !4819)
!4819 = !{!4820}
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !4818, file: !971, line: 52, baseType: !4821, size: 256)
!4821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !971, line: 37, size: 256, elements: !4822)
!4822 = !{!4823, !4830, !4831, !4835}
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !4821, file: !971, line: 39, baseType: !4824, size: 64)
!4824 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !4825, line: 83, baseType: !4826)
!4825 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!4826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4827, size: 64)
!4827 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !4825, line: 82, baseType: !4828)
!4828 = !DISubroutineType(types: !4829)
!4829 = !{null, !101}
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !4821, file: !971, line: 40, baseType: !332, size: 64, offset: 64)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !4821, file: !971, line: 46, baseType: !4832, size: 64, offset: 128)
!4832 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !4825, line: 86, baseType: !4833)
!4833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4834, size: 64)
!4834 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !4825, line: 85, baseType: !2516)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !4821, file: !971, line: 48, baseType: !4688, size: 64, offset: 192)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !324, file: !325, line: 1112, baseType: !4688, size: 64, offset: 15488)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !324, file: !325, line: 1113, baseType: !4688, size: 64, offset: 15552)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !324, file: !325, line: 1115, baseType: !4688, size: 64, offset: 15616)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !324, file: !325, line: 1116, baseType: !4684, size: 192, offset: 15680)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !324, file: !325, line: 1117, baseType: !332, size: 64, offset: 15872)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !324, file: !325, line: 1118, baseType: !1196, size: 64, offset: 15936)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !324, file: !325, line: 1119, baseType: !7, size: 32, offset: 16000)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !324, file: !325, line: 1121, baseType: !679, size: 64, offset: 16064)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !324, file: !325, line: 1125, baseType: !4845, size: 64, offset: 16128)
!4845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4846, size: 64)
!4846 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !325, line: 43, flags: DIFlagFwdDecl)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !324, file: !325, line: 1127, baseType: !761, size: 32, offset: 16192)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !324, file: !325, line: 1128, baseType: !7, size: 32, offset: 16224)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !324, file: !325, line: 1130, baseType: !4850, size: 128, offset: 16256)
!4850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !4851, line: 37, size: 128, elements: !4852)
!4851 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!4852 = !{!4853, !4854, !4855}
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4850, file: !4851, line: 38, baseType: !101, size: 32)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !4850, file: !4851, line: 39, baseType: !274, size: 32, offset: 32)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4850, file: !4851, line: 40, baseType: !4856, size: 64, offset: 64)
!4856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4857, size: 64)
!4857 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !4851, line: 24, flags: DIFlagFwdDecl)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !324, file: !325, line: 1131, baseType: !4859, size: 256, offset: 16384)
!4859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !4860, line: 12, size: 256, elements: !4861)
!4860 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!4861 = !{!4862, !4863, !4864, !4865}
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !4859, file: !4860, line: 13, baseType: !893, size: 64)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4859, file: !4860, line: 14, baseType: !332, size: 64, offset: 64)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4859, file: !4860, line: 15, baseType: !332, size: 64, offset: 128)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !4859, file: !4860, line: 16, baseType: !880, size: 8, offset: 192)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !324, file: !325, line: 1134, baseType: !393, size: 64, offset: 16640)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !324, file: !325, line: 1135, baseType: !393, size: 64, offset: 16704)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !324, file: !325, line: 1138, baseType: !254, size: 32, offset: 16768)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !324, file: !325, line: 1141, baseType: !313, size: 32, offset: 16800)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !324, file: !325, line: 1143, baseType: !4871, size: 64, offset: 16832)
!4871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !325, line: 735, size: 64, elements: !4872)
!4872 = !{!4873}
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4871, file: !325, line: 736, baseType: !4874, size: 64)
!4874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4871, size: 64)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !324, file: !325, line: 1147, baseType: !523, size: 128, offset: 16896)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !324, file: !325, line: 1149, baseType: !323, size: 64, offset: 17024)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !324, file: !325, line: 1151, baseType: !4878, size: 64, offset: 17088)
!4878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4879, size: 64)
!4879 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !325, line: 1151, flags: DIFlagFwdDecl)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !324, file: !325, line: 1188, baseType: !225, size: 64, offset: 17152)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !324, file: !325, line: 1191, baseType: !4882, size: 64, offset: 17216)
!4882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2917, size: 64)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !324, file: !325, line: 1194, baseType: !4884, size: 64, offset: 17280)
!4884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4885, size: 64)
!4885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !134, line: 976, size: 320, elements: !4886)
!4886 = !{!4887, !4888, !4889, !4890, !4891, !4892, !4893}
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "mq_list", scope: !4885, file: !134, line: 977, baseType: !2934, size: 64)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "cached_rq", scope: !4885, file: !134, line: 980, baseType: !2934, size: 64, offset: 64)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ios", scope: !4885, file: !134, line: 981, baseType: !294, size: 16, offset: 128)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "rq_count", scope: !4885, file: !134, line: 983, baseType: !294, size: 16, offset: 144)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "multiple_queues", scope: !4885, file: !134, line: 985, baseType: !880, size: 8, offset: 160)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "has_elevator", scope: !4885, file: !134, line: 986, baseType: !880, size: 8, offset: 168)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !4885, file: !134, line: 988, baseType: !232, size: 128, offset: 192)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !324, file: !325, line: 1197, baseType: !4895, size: 64, offset: 17344)
!4895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4896, size: 64)
!4896 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !325, line: 61, flags: DIFlagFwdDecl)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !324, file: !325, line: 1199, baseType: !3741, size: 64, offset: 17408)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !324, file: !325, line: 1202, baseType: !4899, size: 64, offset: 17472)
!4899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4900, size: 64)
!4900 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !325, line: 48, flags: DIFlagFwdDecl)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !324, file: !325, line: 1205, baseType: !332, size: 64, offset: 17536)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !324, file: !325, line: 1206, baseType: !4903, size: 64, offset: 17600)
!4903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4904, size: 64)
!4904 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !971, line: 14, baseType: !4905)
!4905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !971, line: 12, size: 384, elements: !4906)
!4906 = !{!4907}
!4907 = !DIDerivedType(tag: DW_TAG_member, scope: !4905, file: !971, line: 13, baseType: !4908, size: 384)
!4908 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4905, file: !971, line: 13, size: 384, elements: !4909)
!4909 = !{!4910, !4911, !4912, !4913}
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !4908, file: !971, line: 13, baseType: !101, size: 32)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !4908, file: !971, line: 13, baseType: !101, size: 32, offset: 32)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !4908, file: !971, line: 13, baseType: !101, size: 32, offset: 64)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !4908, file: !971, line: 13, baseType: !4914, size: 256, offset: 128)
!4914 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !4915, line: 37, size: 256, elements: !4916)
!4915 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!4916 = !{!4917, !4922, !4935, !4941, !4950, !4977, !4982}
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !4914, file: !4915, line: 42, baseType: !4918, size: 64)
!4918 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4914, file: !4915, line: 39, size: 64, elements: !4919)
!4919 = !{!4920, !4921}
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4918, file: !4915, line: 40, baseType: !4585, size: 32)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4918, file: !4915, line: 41, baseType: !767, size: 32, offset: 32)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !4914, file: !4915, line: 50, baseType: !4923, size: 192)
!4923 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4914, file: !4915, line: 45, size: 192, elements: !4924)
!4924 = !{!4925, !4927, !4928, !4934}
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !4923, file: !4915, line: 46, baseType: !4926, size: 32)
!4926 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !507, line: 95, baseType: !101)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !4923, file: !4915, line: 47, baseType: !101, size: 32, offset: 32)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4923, file: !4915, line: 48, baseType: !4929, size: 64, offset: 64)
!4929 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !4915, line: 11, baseType: !4930)
!4930 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !4915, line: 8, size: 64, elements: !4931)
!4931 = !{!4932, !4933}
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !4930, file: !4915, line: 9, baseType: !101, size: 32)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !4930, file: !4915, line: 10, baseType: !225, size: 64)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !4923, file: !4915, line: 49, baseType: !101, size: 32, offset: 128)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !4914, file: !4915, line: 57, baseType: !4936, size: 128)
!4936 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4914, file: !4915, line: 53, size: 128, elements: !4937)
!4937 = !{!4938, !4939, !4940}
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4936, file: !4915, line: 54, baseType: !4585, size: 32)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4936, file: !4915, line: 55, baseType: !767, size: 32, offset: 32)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4936, file: !4915, line: 56, baseType: !4929, size: 64, offset: 64)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !4914, file: !4915, line: 66, baseType: !4942, size: 256)
!4942 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4914, file: !4915, line: 60, size: 256, elements: !4943)
!4943 = !{!4944, !4945, !4946, !4947, !4949}
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4942, file: !4915, line: 61, baseType: !4585, size: 32)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4942, file: !4915, line: 62, baseType: !767, size: 32, offset: 32)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !4942, file: !4915, line: 63, baseType: !101, size: 32, offset: 64)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !4942, file: !4915, line: 64, baseType: !4948, size: 64, offset: 128)
!4948 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !507, line: 94, baseType: !1195)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !4942, file: !4915, line: 65, baseType: !4948, size: 64, offset: 192)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !4914, file: !4915, line: 105, baseType: !4951, size: 256)
!4951 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4914, file: !4915, line: 69, size: 256, elements: !4952)
!4952 = !{!4953, !4954}
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !4951, file: !4915, line: 70, baseType: !225, size: 64)
!4954 = !DIDerivedType(tag: DW_TAG_member, scope: !4951, file: !4915, line: 79, baseType: !4955, size: 192, offset: 64)
!4955 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4951, file: !4915, line: 79, size: 192, elements: !4956)
!4956 = !{!4957, !4958, !4959, !4966, !4971}
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !4955, file: !4915, line: 81, baseType: !101, size: 32)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !4955, file: !4915, line: 86, baseType: !848, size: 16)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !4955, file: !4915, line: 92, baseType: !4960, size: 192)
!4960 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4955, file: !4915, line: 88, size: 192, elements: !4961)
!4961 = !{!4962, !4964, !4965}
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !4960, file: !4915, line: 89, baseType: !4963, size: 64)
!4963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !866, size: 64, elements: !501)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !4960, file: !4915, line: 90, baseType: !225, size: 64, offset: 64)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !4960, file: !4915, line: 91, baseType: !225, size: 64, offset: 128)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !4955, file: !4915, line: 97, baseType: !4967, size: 96)
!4967 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4955, file: !4915, line: 94, size: 96, elements: !4968)
!4968 = !{!4969, !4970}
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4967, file: !4915, line: 95, baseType: !4963, size: 64)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4967, file: !4915, line: 96, baseType: !336, size: 32, offset: 64)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !4955, file: !4915, line: 103, baseType: !4972, size: 128)
!4972 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4955, file: !4915, line: 99, size: 128, elements: !4973)
!4973 = !{!4974, !4975, !4976}
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !4972, file: !4915, line: 100, baseType: !332, size: 64)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !4972, file: !4915, line: 101, baseType: !336, size: 32, offset: 64)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4972, file: !4915, line: 102, baseType: !336, size: 32, offset: 96)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !4914, file: !4915, line: 111, baseType: !4978, size: 128)
!4978 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4914, file: !4915, line: 108, size: 128, elements: !4979)
!4979 = !{!4980, !4981}
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4978, file: !4915, line: 109, baseType: !1154, size: 64)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4978, file: !4915, line: 110, baseType: !101, size: 32, offset: 64)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !4914, file: !4915, line: 118, baseType: !4983, size: 128)
!4983 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4914, file: !4915, line: 114, size: 128, elements: !4984)
!4984 = !{!4985, !4986, !4987}
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4983, file: !4915, line: 115, baseType: !225, size: 64)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4983, file: !4915, line: 116, baseType: !101, size: 32, offset: 64)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4983, file: !4915, line: 117, baseType: !7, size: 32, offset: 96)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !324, file: !325, line: 1208, baseType: !4768, size: 448, offset: 17664)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !324, file: !325, line: 1215, baseType: !393, size: 64, offset: 18112)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !324, file: !325, line: 1217, baseType: !393, size: 64, offset: 18176)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !324, file: !325, line: 1219, baseType: !393, size: 64, offset: 18240)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !324, file: !325, line: 1223, baseType: !4993, size: 64, offset: 18304)
!4993 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !4994, line: 99, baseType: !4995)
!4994 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!4995 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4994, line: 99, size: 64, elements: !4996)
!4996 = !{!4997}
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !4995, file: !4994, line: 99, baseType: !591, size: 64)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !324, file: !325, line: 1225, baseType: !1010, size: 32, offset: 18368)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !324, file: !325, line: 1226, baseType: !101, size: 32, offset: 18400)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !324, file: !325, line: 1227, baseType: !101, size: 32, offset: 18432)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !324, file: !325, line: 1231, baseType: !5002, size: 64, offset: 18496)
!5002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5003, size: 64)
!5003 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !325, line: 1231, flags: DIFlagFwdDecl)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !324, file: !325, line: 1233, baseType: !232, size: 128, offset: 18560)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !324, file: !325, line: 1240, baseType: !5006, size: 64, offset: 18688)
!5006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5007, size: 64)
!5007 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !325, line: 62, flags: DIFlagFwdDecl)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !324, file: !325, line: 1242, baseType: !5009, size: 64, offset: 18752)
!5009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5010, size: 64)
!5010 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !325, line: 1242, flags: DIFlagFwdDecl)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !324, file: !325, line: 1244, baseType: !232, size: 128, offset: 18816)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !324, file: !325, line: 1245, baseType: !5013, size: 64, offset: 18944)
!5013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5014, size: 64)
!5014 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !325, line: 51, flags: DIFlagFwdDecl)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !324, file: !325, line: 1246, baseType: !299, size: 256, offset: 19008)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !324, file: !325, line: 1247, baseType: !7, size: 32, offset: 19264)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !324, file: !325, line: 1250, baseType: !5018, size: 64, offset: 19328)
!5018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5019, size: 64)
!5019 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !325, line: 57, flags: DIFlagFwdDecl)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !324, file: !325, line: 1251, baseType: !299, size: 256, offset: 19392)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !324, file: !325, line: 1252, baseType: !232, size: 128, offset: 19648)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !324, file: !325, line: 1259, baseType: !1635, size: 64, offset: 19776)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !324, file: !325, line: 1260, baseType: !848, size: 16, offset: 19840)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !324, file: !325, line: 1261, baseType: !848, size: 16, offset: 19856)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !324, file: !325, line: 1314, baseType: !5026, size: 64, offset: 19904)
!5026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5027, size: 64)
!5027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !5028, line: 62, size: 256, align: 256, elements: !5029)
!5028 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!5029 = !{!5030, !5031, !5032, !5033, !5034, !5035, !5036}
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !5027, file: !5028, line: 75, baseType: !336, size: 32)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !5027, file: !5028, line: 90, baseType: !336, size: 32, offset: 32)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !5027, file: !5028, line: 112, baseType: !394, size: 64, offset: 64)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5027, file: !5028, line: 132, baseType: !336, size: 32, offset: 128)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !5027, file: !5028, line: 140, baseType: !336, size: 32, offset: 160)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !5027, file: !5028, line: 149, baseType: !336, size: 32, offset: 192)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5027, file: !5028, line: 154, baseType: !5037, offset: 224)
!5037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !866, elements: !757)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !324, file: !325, line: 1315, baseType: !335, size: 32, offset: 19968)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !324, file: !325, line: 1316, baseType: !335, size: 32, offset: 20000)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !324, file: !325, line: 1321, baseType: !332, size: 64, offset: 20032)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !324, file: !325, line: 1325, baseType: !101, size: 32, offset: 20096)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !324, file: !325, line: 1326, baseType: !101, size: 32, offset: 20128)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !324, file: !325, line: 1327, baseType: !101, size: 32, offset: 20160)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !324, file: !325, line: 1328, baseType: !101, size: 32, offset: 20192)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !324, file: !325, line: 1329, baseType: !676, size: 128, align: 64, offset: 20224)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !324, file: !325, line: 1332, baseType: !5047, size: 128, offset: 20352)
!5047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !5048, line: 51, size: 128, elements: !5049)
!5048 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!5049 = !{!5050, !5055, !5056}
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !5047, file: !5048, line: 60, baseType: !5051, size: 64)
!5051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !5052, line: 7, size: 64, elements: !5053)
!5052 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!5053 = !{!5054}
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !5051, file: !5052, line: 12, baseType: !588, size: 64)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !5047, file: !5048, line: 63, baseType: !880, size: 8, offset: 64)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !5047, file: !5048, line: 70, baseType: !880, size: 8, offset: 72)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !324, file: !325, line: 1335, baseType: !4276, size: 64, offset: 20480)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !324, file: !325, line: 1337, baseType: !5059, size: 128, offset: 20544)
!5059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !5048, line: 39, size: 128, elements: !5060)
!5060 = !{!5061, !5062, !5063}
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !5059, file: !5048, line: 40, baseType: !1422, size: 64)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5059, file: !5048, line: 42, baseType: !336, size: 32, offset: 64)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5059, file: !5048, line: 43, baseType: !336, size: 32, offset: 96)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !324, file: !325, line: 1340, baseType: !5065, size: 64, offset: 20672)
!5065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5066, size: 64)
!5066 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !325, line: 69, flags: DIFlagFwdDecl)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !324, file: !325, line: 1351, baseType: !101, size: 32, offset: 20736)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !324, file: !325, line: 1352, baseType: !101, size: 32, offset: 20768)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !324, file: !325, line: 1354, baseType: !332, size: 64, offset: 20800)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !324, file: !325, line: 1364, baseType: !393, size: 64, offset: 20864)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !324, file: !325, line: 1365, baseType: !393, size: 64, offset: 20928)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !324, file: !325, line: 1412, baseType: !332, size: 64, offset: 20992)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !324, file: !325, line: 1453, baseType: !2816, size: 64, offset: 21056)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !324, file: !325, line: 1457, baseType: !5075, size: 64, offset: 21120)
!5075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5076, size: 64)
!5076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !164, line: 61, size: 576, elements: !5077)
!5077 = !{!5078, !5079, !5098, !5101, !5102, !5135, !5145}
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5076, file: !164, line: 62, baseType: !163, size: 32)
!5079 = !DIDerivedType(tag: DW_TAG_member, scope: !5076, file: !164, line: 64, baseType: !5080, size: 192, offset: 64)
!5080 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5076, file: !164, line: 64, size: 192, elements: !5081)
!5081 = !{!5082, !5093}
!5082 = !DIDerivedType(tag: DW_TAG_member, scope: !5080, file: !164, line: 65, baseType: !5083, size: 192)
!5083 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5080, file: !164, line: 65, size: 192, elements: !5084)
!5084 = !{!5085, !5092}
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !5083, file: !164, line: 66, baseType: !5086, size: 128)
!5086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !5087, line: 50, size: 128, elements: !5088)
!5087 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!5088 = !{!5089, !5090, !5091}
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !5086, file: !5087, line: 52, baseType: !332, size: 64)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !5086, file: !5087, line: 54, baseType: !7, size: 32, offset: 64)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !5086, file: !5087, line: 55, baseType: !7, size: 32, offset: 96)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !5083, file: !164, line: 67, baseType: !332, size: 64, offset: 128)
!5093 = !DIDerivedType(tag: DW_TAG_member, scope: !5080, file: !164, line: 70, baseType: !5094, size: 192)
!5094 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5080, file: !164, line: 70, size: 192, elements: !5095)
!5095 = !{!5096, !5097}
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !5094, file: !164, line: 71, baseType: !676, size: 128, align: 64)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !5094, file: !164, line: 72, baseType: !332, size: 64, offset: 128)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !5076, file: !164, line: 76, baseType: !5099, size: 64, offset: 256)
!5099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5100, size: 64)
!5100 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !164, line: 76, flags: DIFlagFwdDecl)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !5076, file: !164, line: 77, baseType: !332, size: 64, offset: 320)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !5076, file: !164, line: 79, baseType: !5103, size: 64, offset: 384)
!5103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5104, size: 64)
!5104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !5087, line: 25, size: 256, elements: !5105)
!5105 = !{!5106, !5112, !5116}
!5106 = !DIDerivedType(tag: DW_TAG_member, scope: !5104, file: !5087, line: 26, baseType: !5107, size: 128)
!5107 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5104, file: !5087, line: 26, size: 128, elements: !5108)
!5108 = !{!5109, !5111}
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !5107, file: !5087, line: 27, baseType: !5110, size: 128)
!5110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !282, size: 128, elements: !4040)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !5107, file: !5087, line: 28, baseType: !5110, size: 128)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5104, file: !5087, line: 31, baseType: !5113, size: 64, offset: 128)
!5113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5114, size: 64)
!5114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5115)
!5115 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !5087, line: 23, flags: DIFlagFwdDecl)
!5116 = !DIDerivedType(tag: DW_TAG_member, scope: !5104, file: !5087, line: 33, baseType: !5117, size: 64, offset: 192)
!5117 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5104, file: !5087, line: 33, size: 64, elements: !5118)
!5118 = !{!5119, !5125, !5130}
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !5117, file: !5087, line: 38, baseType: !5120, size: 64)
!5120 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5117, file: !5087, line: 34, size: 64, elements: !5121)
!5121 = !{!5122, !5123, !5124}
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !5120, file: !5087, line: 35, baseType: !812, size: 32)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5120, file: !5087, line: 36, baseType: !282, size: 8, offset: 32)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !5120, file: !5087, line: 37, baseType: !282, size: 8, offset: 40)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !5117, file: !5087, line: 42, baseType: !5126, size: 16)
!5126 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5117, file: !5087, line: 39, size: 16, elements: !5127)
!5127 = !{!5128, !5129}
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !5126, file: !5087, line: 40, baseType: !282, size: 8)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5126, file: !5087, line: 41, baseType: !282, size: 8, offset: 8)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !5117, file: !5087, line: 46, baseType: !5131, size: 16)
!5131 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5117, file: !5087, line: 43, size: 16, elements: !5132)
!5132 = !{!5133, !5134}
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !5131, file: !5087, line: 44, baseType: !282, size: 8)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !5131, file: !5087, line: 45, baseType: !282, size: 8, offset: 8)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !5076, file: !164, line: 81, baseType: !5136, size: 64, offset: 448)
!5136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5137, size: 64)
!5137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !164, line: 85, size: 384, elements: !5138)
!5138 = !{!5139, !5140, !5141, !5142, !5143, !5144}
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !5137, file: !164, line: 86, baseType: !5099, size: 64)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5137, file: !164, line: 87, baseType: !332, size: 64, offset: 64)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !5137, file: !164, line: 88, baseType: !332, size: 64, offset: 128)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !5137, file: !164, line: 89, baseType: !332, size: 64, offset: 192)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !5137, file: !164, line: 90, baseType: !880, size: 8, offset: 256)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5137, file: !164, line: 92, baseType: !5136, size: 64, offset: 320)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !5076, file: !164, line: 82, baseType: !7, size: 32, offset: 512)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !324, file: !325, line: 1463, baseType: !5147, offset: 21184)
!5147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !325, line: 739, elements: !661)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !324, file: !325, line: 1470, baseType: !676, size: 128, align: 64, offset: 21184)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !324, file: !325, line: 1471, baseType: !341, size: 32, offset: 21312)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !324, file: !325, line: 1472, baseType: !101, size: 32, offset: 21344)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !324, file: !325, line: 1474, baseType: !323, size: 64, offset: 21376)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !324, file: !325, line: 1475, baseType: !2400, size: 320, offset: 21440)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !324, file: !325, line: 1478, baseType: !5154, size: 64, offset: 21760)
!5154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5155, size: 64)
!5155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !5156, line: 49, size: 512, elements: !5157)
!5156 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!5157 = !{!5158, !5159, !5160, !5161, !5162, !5163, !5164, !5165, !5167}
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5155, file: !5156, line: 50, baseType: !5154, size: 64)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5155, file: !5156, line: 51, baseType: !225, size: 64, offset: 64)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5155, file: !5156, line: 52, baseType: !332, size: 64, offset: 128)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5155, file: !5156, line: 53, baseType: !332, size: 64, offset: 192)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !5155, file: !5156, line: 54, baseType: !1808, size: 64, offset: 256)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !5155, file: !5156, line: 56, baseType: !7, size: 32, offset: 320)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !5155, file: !5156, line: 58, baseType: !7, size: 32, offset: 352)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !5155, file: !5156, line: 59, baseType: !5166, size: 64, offset: 384)
!5166 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !227, line: 159, baseType: !393)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !5155, file: !5156, line: 60, baseType: !1992, size: 64, offset: 448)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !324, file: !325, line: 1482, baseType: !341, size: 32, offset: 21824)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !324, file: !325, line: 1489, baseType: !225, size: 64, offset: 21888)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !324, file: !325, line: 1504, baseType: !225, size: 64, offset: 21952)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !324, file: !325, line: 1505, baseType: !394, size: 64, offset: 22016)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !324, file: !325, line: 1506, baseType: !393, size: 64, offset: 22080)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !324, file: !325, line: 1507, baseType: !394, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !324, file: !325, line: 1508, baseType: !394, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !324, file: !325, line: 1509, baseType: !394, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !324, file: !325, line: 1510, baseType: !676, size: 128, align: 64, offset: 22208)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !324, file: !325, line: 1511, baseType: !101, size: 32, offset: 22336)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !324, file: !325, line: 1515, baseType: !5179, size: 64, offset: 22400)
!5179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !355, line: 56, size: 64, elements: !5180)
!5180 = !{!5181}
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !5179, file: !355, line: 57, baseType: !358, size: 64)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !324, file: !325, line: 1518, baseType: !5179, size: 64, offset: 22464)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !324, file: !325, line: 1528, baseType: !676, size: 128, align: 64, offset: 22528)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !324, file: !325, line: 1552, baseType: !5185, size: 35328, offset: 23040)
!5185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !5186, line: 430, size: 35328, elements: !5187)
!5186 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!5187 = !{!5188, !5206, !5207, !5208, !5209, !5210, !5211, !5212, !5213, !5217, !5218, !5219, !5220, !5221, !5222, !5225, !5226, !5227, !5228}
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !5185, file: !5186, line: 432, baseType: !5189, size: 192)
!5189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5190, size: 192, elements: !717)
!5190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !5191, line: 16, size: 64, elements: !5192)
!5191 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!5192 = !{!5193, !5194, !5195, !5196, !5197, !5198, !5199, !5200, !5201, !5202, !5203, !5204, !5205}
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !5190, file: !5191, line: 17, baseType: !292, size: 16)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !5190, file: !5191, line: 18, baseType: !292, size: 16, offset: 16)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !5190, file: !5191, line: 19, baseType: !292, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5190, file: !5191, line: 19, baseType: !292, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !5190, file: !5191, line: 19, baseType: !292, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !5190, file: !5191, line: 19, baseType: !292, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5190, file: !5191, line: 19, baseType: !292, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !5190, file: !5191, line: 20, baseType: !292, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !5190, file: !5191, line: 20, baseType: !292, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !5190, file: !5191, line: 20, baseType: !292, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !5190, file: !5191, line: 20, baseType: !292, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !5190, file: !5191, line: 20, baseType: !292, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !5190, file: !5191, line: 20, baseType: !292, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5185, file: !5186, line: 436, baseType: !332, size: 64, offset: 192)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !5185, file: !5186, line: 440, baseType: !294, size: 16, offset: 256)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !5185, file: !5186, line: 441, baseType: !294, size: 16, offset: 272)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !5185, file: !5186, line: 442, baseType: !294, size: 16, offset: 288)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !5185, file: !5186, line: 443, baseType: !294, size: 16, offset: 304)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !5185, file: !5186, line: 447, baseType: !332, size: 64, offset: 320)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !5185, file: !5186, line: 448, baseType: !332, size: 64, offset: 384)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !5185, file: !5186, line: 459, baseType: !5214, size: 256, offset: 448)
!5214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5215, size: 256, elements: !738)
!5215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5216, size: 64)
!5216 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !5186, line: 428, flags: DIFlagFwdDecl)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !5185, file: !5186, line: 461, baseType: !332, size: 64, offset: 704)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !5185, file: !5186, line: 463, baseType: !332, size: 64, offset: 768)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !5185, file: !5186, line: 465, baseType: !332, size: 64, offset: 832)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !5185, file: !5186, line: 466, baseType: !332, size: 64, offset: 896)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !5185, file: !5186, line: 467, baseType: !332, size: 64, offset: 960)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !5185, file: !5186, line: 473, baseType: !5223, size: 64, offset: 1024)
!5223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5224, size: 64)
!5224 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !5186, line: 10, flags: DIFlagFwdDecl)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !5185, file: !5186, line: 480, baseType: !332, size: 64, offset: 1088)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !5185, file: !5186, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !5185, file: !5186, line: 491, baseType: !335, size: 32, offset: 1184)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !5185, file: !5186, line: 501, baseType: !5229, size: 33792, offset: 1536)
!5229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !5230, line: 448, size: 33792, elements: !5231)
!5230 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!5231 = !{!5232, !5233, !5234, !5396, !5397, !5403, !5404}
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !5229, file: !5230, line: 461, baseType: !7, size: 32)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !5229, file: !5230, line: 468, baseType: !332, size: 64, offset: 64)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !5229, file: !5230, line: 476, baseType: !5235, size: 64, offset: 128)
!5235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5236, size: 64)
!5236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !5230, line: 356, size: 33280, align: 512, elements: !5237)
!5237 = !{!5238, !5239, !5240, !5241, !5242, !5243, !5244, !5245, !5246, !5247}
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5236, file: !5230, line: 358, baseType: !7, size: 32)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !5236, file: !5230, line: 361, baseType: !7, size: 32, offset: 32)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5236, file: !5230, line: 364, baseType: !393, size: 64, offset: 64)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !5236, file: !5230, line: 367, baseType: !393, size: 64, offset: 128)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !5236, file: !5230, line: 370, baseType: !393, size: 64, offset: 192)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !5236, file: !5230, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !5236, file: !5230, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !5236, file: !5230, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !5236, file: !5230, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5236, file: !5230, line: 397, baseType: !5248, size: 32768, offset: 512)
!5248 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !5230, line: 348, size: 32768, elements: !5249)
!5249 = !{!5250, !5265, !5302, !5379, !5392}
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !5248, file: !5230, line: 349, baseType: !5251, size: 896)
!5251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !5230, line: 12, size: 896, elements: !5252)
!5252 = !{!5253, !5254, !5255, !5256, !5257, !5258, !5259, !5260, !5264}
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5251, file: !5230, line: 13, baseType: !335, size: 32)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5251, file: !5230, line: 14, baseType: !335, size: 32, offset: 32)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5251, file: !5230, line: 15, baseType: !335, size: 32, offset: 64)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5251, file: !5230, line: 16, baseType: !335, size: 32, offset: 96)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5251, file: !5230, line: 17, baseType: !335, size: 32, offset: 128)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5251, file: !5230, line: 18, baseType: !335, size: 32, offset: 160)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5251, file: !5230, line: 19, baseType: !335, size: 32, offset: 192)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5251, file: !5230, line: 22, baseType: !5261, size: 640, offset: 224)
!5261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 640, elements: !5262)
!5262 = !{!5263}
!5263 = !DISubrange(count: 20)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5251, file: !5230, line: 25, baseType: !335, size: 32, offset: 864)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !5248, file: !5230, line: 350, baseType: !5266, size: 4096, align: 128)
!5266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !5230, line: 34, size: 4096, align: 128, elements: !5267)
!5267 = !{!5268, !5269, !5270, !5271, !5272, !5287, !5288, !5289, !5291, !5293, !5297}
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5266, file: !5230, line: 35, baseType: !292, size: 16)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5266, file: !5230, line: 36, baseType: !292, size: 16, offset: 16)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5266, file: !5230, line: 37, baseType: !292, size: 16, offset: 32)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !5266, file: !5230, line: 38, baseType: !292, size: 16, offset: 48)
!5272 = !DIDerivedType(tag: DW_TAG_member, scope: !5266, file: !5230, line: 39, baseType: !5273, size: 128, offset: 64)
!5273 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5266, file: !5230, line: 39, size: 128, elements: !5274)
!5274 = !{!5275, !5280}
!5275 = !DIDerivedType(tag: DW_TAG_member, scope: !5273, file: !5230, line: 40, baseType: !5276, size: 128)
!5276 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5273, file: !5230, line: 40, size: 128, elements: !5277)
!5277 = !{!5278, !5279}
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !5276, file: !5230, line: 41, baseType: !393, size: 64)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !5276, file: !5230, line: 42, baseType: !393, size: 64, offset: 64)
!5280 = !DIDerivedType(tag: DW_TAG_member, scope: !5273, file: !5230, line: 44, baseType: !5281, size: 128)
!5281 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5273, file: !5230, line: 44, size: 128, elements: !5282)
!5282 = !{!5283, !5284, !5285, !5286}
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5281, file: !5230, line: 45, baseType: !335, size: 32)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5281, file: !5230, line: 46, baseType: !335, size: 32, offset: 32)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5281, file: !5230, line: 47, baseType: !335, size: 32, offset: 64)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5281, file: !5230, line: 48, baseType: !335, size: 32, offset: 96)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !5266, file: !5230, line: 51, baseType: !335, size: 32, offset: 192)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !5266, file: !5230, line: 52, baseType: !335, size: 32, offset: 224)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5266, file: !5230, line: 55, baseType: !5290, size: 1024, offset: 256)
!5290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 1024, elements: !2824)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !5266, file: !5230, line: 58, baseType: !5292, size: 2048, offset: 1280)
!5292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 2048, elements: !1341)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !5266, file: !5230, line: 60, baseType: !5294, size: 384, offset: 3328)
!5294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 384, elements: !5295)
!5295 = !{!5296}
!5296 = !DISubrange(count: 12)
!5297 = !DIDerivedType(tag: DW_TAG_member, scope: !5266, file: !5230, line: 62, baseType: !5298, size: 384, offset: 3712)
!5298 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5266, file: !5230, line: 62, size: 384, elements: !5299)
!5299 = !{!5300, !5301}
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !5298, file: !5230, line: 63, baseType: !5294, size: 384)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !5298, file: !5230, line: 64, baseType: !5294, size: 384)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !5248, file: !5230, line: 351, baseType: !5303, size: 1088)
!5303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !5230, line: 79, size: 1088, elements: !5304)
!5304 = !{!5305, !5306, !5307, !5308, !5309, !5310, !5311, !5312, !5313, !5314, !5315, !5316, !5317, !5318, !5319, !5378}
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5303, file: !5230, line: 80, baseType: !335, size: 32)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5303, file: !5230, line: 81, baseType: !335, size: 32, offset: 32)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5303, file: !5230, line: 82, baseType: !335, size: 32, offset: 64)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5303, file: !5230, line: 83, baseType: !335, size: 32, offset: 96)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5303, file: !5230, line: 84, baseType: !335, size: 32, offset: 128)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5303, file: !5230, line: 85, baseType: !335, size: 32, offset: 160)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5303, file: !5230, line: 86, baseType: !335, size: 32, offset: 192)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5303, file: !5230, line: 88, baseType: !5261, size: 640, offset: 224)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !5303, file: !5230, line: 89, baseType: !282, size: 8, offset: 864)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !5303, file: !5230, line: 90, baseType: !282, size: 8, offset: 872)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !5303, file: !5230, line: 91, baseType: !282, size: 8, offset: 880)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !5303, file: !5230, line: 92, baseType: !282, size: 8, offset: 888)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !5303, file: !5230, line: 93, baseType: !282, size: 8, offset: 896)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !5303, file: !5230, line: 94, baseType: !282, size: 8, offset: 904)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5303, file: !5230, line: 95, baseType: !5320, size: 64, offset: 960)
!5320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5321, size: 64)
!5321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !5322, line: 11, size: 128, elements: !5323)
!5322 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!5323 = !{!5324, !5325}
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !5321, file: !5322, line: 12, baseType: !1154, size: 64)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5321, file: !5322, line: 13, baseType: !5326, size: 64, offset: 64)
!5326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5327, size: 64)
!5327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !5328, line: 103, size: 1344, elements: !5329)
!5328 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!5329 = !{!5330, !5331, !5332, !5333, !5334, !5335, !5336, !5337, !5338, !5339, !5340, !5341, !5342, !5343, !5344, !5345, !5346, !5347, !5358, !5359, !5360}
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !5327, file: !5328, line: 109, baseType: !332, size: 64)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !5327, file: !5328, line: 110, baseType: !332, size: 64, offset: 64)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !5327, file: !5328, line: 111, baseType: !332, size: 64, offset: 128)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !5327, file: !5328, line: 112, baseType: !332, size: 64, offset: 192)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !5327, file: !5328, line: 113, baseType: !332, size: 64, offset: 256)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !5327, file: !5328, line: 114, baseType: !332, size: 64, offset: 320)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !5327, file: !5328, line: 117, baseType: !332, size: 64, offset: 384)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !5327, file: !5328, line: 118, baseType: !332, size: 64, offset: 448)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !5327, file: !5328, line: 119, baseType: !332, size: 64, offset: 512)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !5327, file: !5328, line: 120, baseType: !332, size: 64, offset: 576)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !5327, file: !5328, line: 121, baseType: !332, size: 64, offset: 640)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !5327, file: !5328, line: 122, baseType: !332, size: 64, offset: 704)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !5327, file: !5328, line: 123, baseType: !332, size: 64, offset: 768)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !5327, file: !5328, line: 124, baseType: !332, size: 64, offset: 832)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !5327, file: !5328, line: 125, baseType: !332, size: 64, offset: 896)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !5327, file: !5328, line: 139, baseType: !332, size: 64, offset: 960)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !5327, file: !5328, line: 142, baseType: !332, size: 64, offset: 1024)
!5347 = !DIDerivedType(tag: DW_TAG_member, scope: !5327, file: !5328, line: 144, baseType: !5348, size: 64, offset: 1088)
!5348 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5327, file: !5328, line: 144, size: 64, elements: !5349)
!5349 = !{!5350, !5351, !5352}
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !5348, file: !5328, line: 146, baseType: !292, size: 16)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !5348, file: !5328, line: 148, baseType: !393, size: 64)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !5348, file: !5328, line: 150, baseType: !5353, size: 64)
!5353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !5328, line: 59, size: 64, elements: !5354)
!5354 = !{!5355, !5356, !5357}
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !5353, file: !5328, line: 61, baseType: !393, size: 16, flags: DIFlagBitField, extraData: i64 0)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !5353, file: !5328, line: 63, baseType: !393, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !5353, file: !5328, line: 65, baseType: !393, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5327, file: !5328, line: 153, baseType: !332, size: 64, offset: 1152)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5327, file: !5328, line: 154, baseType: !332, size: 64, offset: 1216)
!5360 = !DIDerivedType(tag: DW_TAG_member, scope: !5327, file: !5328, line: 156, baseType: !5361, size: 64, offset: 1280)
!5361 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5327, file: !5328, line: 156, size: 64, elements: !5362)
!5362 = !{!5363, !5364, !5365}
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !5361, file: !5328, line: 158, baseType: !292, size: 16)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !5361, file: !5328, line: 160, baseType: !393, size: 64)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !5361, file: !5328, line: 162, baseType: !5366, size: 64)
!5366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !5328, line: 69, size: 64, elements: !5367)
!5367 = !{!5368, !5369, !5370, !5371, !5372, !5373, !5374, !5375, !5376, !5377}
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !5366, file: !5328, line: 71, baseType: !393, size: 16, flags: DIFlagBitField, extraData: i64 0)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !5366, file: !5328, line: 73, baseType: !393, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !5366, file: !5328, line: 75, baseType: !393, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !5366, file: !5328, line: 77, baseType: !393, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !5366, file: !5328, line: 80, baseType: !393, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5366, file: !5328, line: 83, baseType: !393, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !5366, file: !5328, line: 86, baseType: !393, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !5366, file: !5328, line: 88, baseType: !393, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !5366, file: !5328, line: 93, baseType: !393, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !5366, file: !5328, line: 100, baseType: !393, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !5303, file: !5230, line: 96, baseType: !335, size: 32, offset: 1024)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !5248, file: !5230, line: 352, baseType: !5380, size: 4608, align: 512)
!5380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !5230, line: 333, size: 4608, align: 512, elements: !5381)
!5381 = !{!5382, !5383, !5390}
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !5380, file: !5230, line: 334, baseType: !5266, size: 4096, align: 128)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !5380, file: !5230, line: 335, baseType: !5384, size: 512, offset: 4096)
!5384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !5230, line: 312, size: 512, elements: !5385)
!5385 = !{!5386, !5387, !5388}
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5384, file: !5230, line: 313, baseType: !393, size: 64)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !5384, file: !5230, line: 314, baseType: !393, size: 64, offset: 64)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5384, file: !5230, line: 315, baseType: !5389, size: 384, offset: 128)
!5389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !393, size: 384, elements: !867)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !5380, file: !5230, line: 336, baseType: !5391, offset: 4608)
!5391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !282, elements: !757)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !5248, file: !5230, line: 353, baseType: !5393, size: 32768)
!5393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !282, size: 32768, elements: !5394)
!5394 = !{!5395}
!5395 = !DISubrange(count: 4096)
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !5229, file: !5230, line: 484, baseType: !5235, size: 64, offset: 192)
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !5229, file: !5230, line: 491, baseType: !5398, size: 128, offset: 256)
!5398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !5230, line: 404, size: 128, elements: !5399)
!5399 = !{!5400, !5401, !5402}
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !5398, file: !5230, line: 424, baseType: !393, size: 64)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !5398, file: !5230, line: 432, baseType: !7, size: 32, offset: 64)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !5398, file: !5230, line: 440, baseType: !7, size: 32, offset: 96)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !5229, file: !5230, line: 498, baseType: !5398, size: 128, offset: 384)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !5229, file: !5230, line: 508, baseType: !5236, size: 33280, align: 512, offset: 512)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "eh_action", scope: !248, file: !171, line: 557, baseType: !2161, size: 64, offset: 1088)
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "host_wait", scope: !248, file: !171, line: 559, baseType: !742, size: 192, offset: 1152)
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "hostt", scope: !248, file: !171, line: 560, baseType: !238, size: 64, offset: 1344)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "transportt", scope: !248, file: !171, line: 561, baseType: !5409, size: 64, offset: 1408)
!5409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5410, size: 64)
!5410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scsi_transport_template", file: !5411, line: 16, size: 2816, elements: !5412)
!5411 = !DIFile(filename: "./include/scsi/scsi_transport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7aed7130c25109e9580b64f56249f0ef")
!5412 = !{!5413, !5463, !5464, !5465, !5470, !5471, !5472, !5473, !5474, !5475, !5476}
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "host_attrs", scope: !5410, file: !5411, line: 18, baseType: !5414, size: 832)
!5414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "transport_container", file: !5415, line: 56, size: 832, elements: !5416)
!5415 = !DIFile(filename: "./include/linux/transport_class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f718d2335be17aecefe565492dc683f")
!5416 = !{!5417, !5462}
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "ac", scope: !5414, file: !5415, line: 57, baseType: !5418, size: 768)
!5418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_container", file: !5419, line: 16, size: 768, elements: !5420)
!5419 = !DIFile(filename: "./include/linux/attribute_container.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "693585871664ed4d3c31cbad8ead9d64")
!5420 = !{!5421, !5422, !5439, !5441, !5442, !5456, !5461}
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5418, file: !5419, line: 17, baseType: !232, size: 128)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "containers", scope: !5418, file: !5419, line: 18, baseType: !5423, size: 320, align: 64, offset: 128)
!5423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "klist", file: !5424, line: 18, size: 320, align: 64, elements: !5425)
!5424 = !DIFile(filename: "./include/linux/klist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fd49af8b7fc11d3fd997e9c112ace59a")
!5425 = !{!5426, !5427, !5428, !5438}
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "k_lock", scope: !5423, file: !5424, line: 19, baseType: !254, size: 32)
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "k_list", scope: !5423, file: !5424, line: 20, baseType: !232, size: 128, offset: 64)
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !5423, file: !5424, line: 21, baseType: !5429, size: 64, offset: 192)
!5429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5430, size: 64)
!5430 = !DISubroutineType(types: !5431)
!5431 = !{null, !5432}
!5432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5433, size: 64)
!5433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "klist_node", file: !5424, line: 37, size: 256, elements: !5434)
!5434 = !{!5435, !5436, !5437}
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "n_klist", scope: !5433, file: !5424, line: 38, baseType: !225, size: 64)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "n_node", scope: !5433, file: !5424, line: 39, baseType: !232, size: 128, offset: 64)
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "n_ref", scope: !5433, file: !5424, line: 40, baseType: !2146, size: 32, offset: 192)
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !5423, file: !5424, line: 22, baseType: !5429, size: 64, offset: 256)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !5418, file: !5419, line: 19, baseType: !5440, size: 64, offset: 448)
!5440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3572, size: 64)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "grp", scope: !5418, file: !5419, line: 20, baseType: !1379, size: 64, offset: 512)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !5418, file: !5419, line: 21, baseType: !5443, size: 64, offset: 576)
!5443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5444, size: 64)
!5444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5445, size: 64)
!5445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !86, line: 106, size: 256, elements: !5446)
!5446 = !{!5447, !5448, !5452}
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5445, file: !86, line: 107, baseType: !1369, size: 128)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !5445, file: !86, line: 108, baseType: !5449, size: 64, offset: 128)
!5449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5450, size: 64)
!5450 = !DISubroutineType(types: !5451)
!5451 = !{!1193, !3172, !5444, !893}
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !5445, file: !86, line: 110, baseType: !5453, size: 64, offset: 192)
!5453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5454, size: 64)
!5454 = !DISubroutineType(types: !5455)
!5455 = !{!1193, !3172, !5444, !883, !1196}
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !5418, file: !5419, line: 22, baseType: !5457, size: 64, offset: 640)
!5457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5458, size: 64)
!5458 = !DISubroutineType(types: !5459)
!5459 = !{!101, !5460, !3172}
!5460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5418, size: 64)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5418, file: !5419, line: 24, baseType: !332, size: 64, offset: 704)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !5414, file: !5415, line: 58, baseType: !1379, size: 64, offset: 768)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "target_attrs", scope: !5410, file: !5411, line: 19, baseType: !5414, size: 832, offset: 832)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "device_attrs", scope: !5410, file: !5411, line: 20, baseType: !5414, size: 832, offset: 1664)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "user_scan", scope: !5410, file: !5411, line: 25, baseType: !5466, size: 64, offset: 2496)
!5466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5467, size: 64)
!5467 = !DISubroutineType(types: !5468)
!5468 = !{!101, !247, !5469, !5469, !393}
!5469 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint", file: !227, line: 93, baseType: !7)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "device_size", scope: !5410, file: !5411, line: 30, baseType: !101, size: 32, offset: 2560)
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "device_private_offset", scope: !5410, file: !5411, line: 31, baseType: !101, size: 32, offset: 2592)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "target_size", scope: !5410, file: !5411, line: 32, baseType: !101, size: 32, offset: 2624)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "target_private_offset", scope: !5410, file: !5411, line: 33, baseType: !101, size: 32, offset: 2656)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "host_size", scope: !5410, file: !5411, line: 34, baseType: !101, size: 32, offset: 2688)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "create_work_queue", scope: !5410, file: !5411, line: 40, baseType: !7, size: 1, offset: 2720, flags: DIFlagBitField, extraData: i64 2720)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "eh_strategy_handler", scope: !5410, file: !5411, line: 45, baseType: !5477, size: 64, offset: 2752)
!5477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5478, size: 64)
!5478 = !DISubroutineType(types: !5479)
!5479 = !{null, !247}
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "tagset_refcnt", scope: !248, file: !171, line: 563, baseType: !2146, size: 32, offset: 1472)
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "tagset_freed", scope: !248, file: !171, line: 564, baseType: !1507, size: 256, offset: 1536)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set", scope: !248, file: !171, line: 566, baseType: !3117, size: 1344, offset: 1792)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "host_blocked", scope: !248, file: !171, line: 568, baseType: !274, size: 32, offset: 3136)
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "host_failed", scope: !248, file: !171, line: 570, baseType: !7, size: 32, offset: 3168)
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "host_eh_scheduled", scope: !248, file: !171, line: 572, baseType: !7, size: 32, offset: 3200)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "host_no", scope: !248, file: !171, line: 574, baseType: !7, size: 32, offset: 3232)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "eh_deadline", scope: !248, file: !171, line: 577, baseType: !101, size: 32, offset: 3264)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "last_reset", scope: !248, file: !171, line: 578, baseType: !332, size: 64, offset: 3328)
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "max_channel", scope: !248, file: !171, line: 587, baseType: !7, size: 32, offset: 3392)
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "max_id", scope: !248, file: !171, line: 588, baseType: !7, size: 32, offset: 3424)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "max_lun", scope: !248, file: !171, line: 589, baseType: !393, size: 64, offset: 3456)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !248, file: !171, line: 598, baseType: !7, size: 32, offset: 3520)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmd_len", scope: !248, file: !171, line: 607, baseType: !294, size: 16, offset: 3552)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "this_id", scope: !248, file: !171, line: 609, baseType: !101, size: 32, offset: 3584)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "can_queue", scope: !248, file: !171, line: 610, baseType: !101, size: 32, offset: 3616)
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_per_lun", scope: !248, file: !171, line: 611, baseType: !848, size: 16, offset: 3648)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "sg_tablesize", scope: !248, file: !171, line: 612, baseType: !294, size: 16, offset: 3664)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "sg_prot_tablesize", scope: !248, file: !171, line: 613, baseType: !294, size: 16, offset: 3680)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "max_sectors", scope: !248, file: !171, line: 614, baseType: !7, size: 32, offset: 3712)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "opt_sectors", scope: !248, file: !171, line: 615, baseType: !7, size: 32, offset: 3744)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !248, file: !171, line: 616, baseType: !7, size: 32, offset: 3776)
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "dma_boundary", scope: !248, file: !171, line: 617, baseType: !332, size: 64, offset: 3840)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "virt_boundary_mask", scope: !248, file: !171, line: 618, baseType: !332, size: 64, offset: 3904)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !248, file: !171, line: 627, baseType: !7, size: 32, offset: 3968)
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "nr_maps", scope: !248, file: !171, line: 628, baseType: !7, size: 32, offset: 4000)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "active_mode", scope: !248, file: !171, line: 629, baseType: !7, size: 2, offset: 4032, flags: DIFlagBitField, extraData: i64 4032)
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "host_self_blocked", scope: !248, file: !171, line: 635, baseType: !7, size: 1, offset: 4034, flags: DIFlagBitField, extraData: i64 4032)
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "reverse_ordering", scope: !248, file: !171, line: 642, baseType: !7, size: 1, offset: 4035, flags: DIFlagBitField, extraData: i64 4032)
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "tmf_in_progress", scope: !248, file: !171, line: 645, baseType: !7, size: 1, offset: 4036, flags: DIFlagBitField, extraData: i64 4032)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "async_scan", scope: !248, file: !171, line: 648, baseType: !7, size: 1, offset: 4037, flags: DIFlagBitField, extraData: i64 4032)
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "eh_noresume", scope: !248, file: !171, line: 651, baseType: !7, size: 1, offset: 4038, flags: DIFlagBitField, extraData: i64 4032)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "no_write_same", scope: !248, file: !171, line: 654, baseType: !7, size: 1, offset: 4039, flags: DIFlagBitField, extraData: i64 4032)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "host_tagset", scope: !248, file: !171, line: 657, baseType: !7, size: 1, offset: 4040, flags: DIFlagBitField, extraData: i64 4032)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "queuecommand_may_block", scope: !248, file: !171, line: 660, baseType: !7, size: 1, offset: 4041, flags: DIFlagBitField, extraData: i64 4032)
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "short_inquiry", scope: !248, file: !171, line: 663, baseType: !7, size: 1, offset: 4042, flags: DIFlagBitField, extraData: i64 4032)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "no_scsi2_lun_in_cdb", scope: !248, file: !171, line: 666, baseType: !7, size: 1, offset: 4043, flags: DIFlagBitField, extraData: i64 4032)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "work_q_name", scope: !248, file: !171, line: 671, baseType: !5518, size: 160, offset: 4048)
!5518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !866, size: 160, elements: !5262)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "work_q", scope: !248, file: !171, line: 672, baseType: !2473, size: 64, offset: 4224)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "tmf_work_q", scope: !248, file: !171, line: 677, baseType: !2473, size: 64, offset: 4288)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "max_host_blocked", scope: !248, file: !171, line: 682, baseType: !7, size: 32, offset: 4352)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "prot_capabilities", scope: !248, file: !171, line: 685, baseType: !7, size: 32, offset: 4384)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "prot_guard_type", scope: !248, file: !171, line: 686, baseType: !286, size: 8, offset: 4416)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !248, file: !171, line: 689, baseType: !332, size: 64, offset: 4480)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "io_port", scope: !248, file: !171, line: 690, baseType: !332, size: 64, offset: 4544)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "n_io_port", scope: !248, file: !171, line: 691, baseType: !286, size: 8, offset: 4608)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "dma_channel", scope: !248, file: !171, line: 692, baseType: !286, size: 8, offset: 4616)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !248, file: !171, line: 693, baseType: !7, size: 32, offset: 4640)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "shost_state", scope: !248, file: !171, line: 696, baseType: !170, size: 32, offset: 4672)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "shost_gendev", scope: !248, file: !171, line: 699, baseType: !3173, size: 5824, offset: 4736)
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "shost_dev", scope: !248, file: !171, line: 699, baseType: !3173, size: 5824, offset: 10560)
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "shost_data", scope: !248, file: !171, line: 705, baseType: !225, size: 64, offset: 16384)
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "dma_dev", scope: !248, file: !171, line: 711, baseType: !3172, size: 64, offset: 16448)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "hostdata", scope: !248, file: !171, line: 718, baseType: !4503, align: 64, offset: 16512)
!5535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5536, size: 64)
!5536 = !DICompositeType(tag: DW_TAG_structure_type, name: "scsi_cmnd", file: !5537, line: 16, flags: DIFlagFwdDecl)
!5537 = !DIFile(filename: "./include/scsi/scsi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8492a8995416f10c9dd8bbf42ab5671a")
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "commit_rqs", scope: !240, file: !171, line: 97, baseType: !5539, size: 64, offset: 128)
!5539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5540, size: 64)
!5540 = !DISubroutineType(types: !5541)
!5541 = !{null, !247, !292}
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !240, file: !171, line: 99, baseType: !1285, size: 64, offset: 192)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !240, file: !171, line: 100, baseType: !883, size: 64, offset: 256)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !240, file: !171, line: 109, baseType: !5545, size: 64, offset: 320)
!5545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5546, size: 64)
!5546 = !DISubroutineType(types: !5547)
!5547 = !{!883, !247}
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !240, file: !171, line: 116, baseType: !5549, size: 64, offset: 384)
!5549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5550, size: 64)
!5550 = !DISubroutineType(types: !5551)
!5551 = !{!101, !5552, !7, !225}
!5552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5553, size: 64)
!5553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scsi_device", file: !181, line: 103, size: 16256, align: 64, elements: !5554)
!5554 = !{!5555, !5556, !5557, !5558, !5559, !5560, !5561, !5562, !5563, !5564, !5565, !5566, !5567, !5568, !5569, !5570, !5571, !5572, !5573, !5574, !5575, !5576, !5577, !5578, !5579, !5580, !5581, !5582, !5584, !5585, !5586, !5587, !5595, !5596, !5597, !5598, !5599, !5600, !5601, !5625, !5627, !5628, !5629, !5630, !5631, !5632, !5633, !5634, !5635, !5636, !5637, !5638, !5639, !5640, !5641, !5642, !5643, !5644, !5645, !5646, !5647, !5648, !5649, !5650, !5651, !5652, !5653, !5654, !5655, !5656, !5657, !5658, !5659, !5660, !5661, !5662, !5663, !5664, !5665, !5666, !5667, !5668, !5669, !5670, !5671, !5672, !5673, !5674, !5675, !5676, !5677, !5678, !5679, !5680, !5681, !5682, !5683, !5684, !5685, !5686, !5687, !5688, !5689, !5690, !5691, !5692, !5693, !5694, !5695, !5696, !5697, !5698, !5699, !5700, !5703, !5704, !5705, !5706, !5707, !5708, !5711, !5712, !5713, !5714, !5715}
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !5553, file: !181, line: 104, baseType: !247, size: 64)
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "request_queue", scope: !5553, file: !181, line: 105, baseType: !2938, size: 64, offset: 64)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "siblings", scope: !5553, file: !181, line: 108, baseType: !232, size: 128, offset: 128)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "same_target_siblings", scope: !5553, file: !181, line: 109, baseType: !232, size: 128, offset: 256)
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "budget_map", scope: !5553, file: !181, line: 111, baseType: !2985, size: 256, offset: 384)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "device_blocked", scope: !5553, file: !181, line: 112, baseType: !274, size: 32, offset: 640)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "restarts", scope: !5553, file: !181, line: 114, baseType: !274, size: 32, offset: 672)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !5553, file: !181, line: 115, baseType: !254, size: 32, offset: 704)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "starved_entry", scope: !5553, file: !181, line: 116, baseType: !232, size: 128, offset: 768)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !5553, file: !181, line: 117, baseType: !294, size: 16, offset: 896)
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "max_queue_depth", scope: !5553, file: !181, line: 118, baseType: !294, size: 16, offset: 912)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "last_queue_full_depth", scope: !5553, file: !181, line: 119, baseType: !294, size: 16, offset: 928)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "last_queue_full_count", scope: !5553, file: !181, line: 120, baseType: !294, size: 16, offset: 944)
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "last_queue_full_time", scope: !5553, file: !181, line: 121, baseType: !332, size: 64, offset: 960)
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "queue_ramp_up_period", scope: !5553, file: !181, line: 122, baseType: !332, size: 64, offset: 1024)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "last_queue_ramp_up", scope: !5553, file: !181, line: 125, baseType: !332, size: 64, offset: 1088)
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5553, file: !181, line: 127, baseType: !7, size: 32, offset: 1152)
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !5553, file: !181, line: 127, baseType: !7, size: 32, offset: 1184)
!5573 = !DIDerivedType(tag: DW_TAG_member, name: "lun", scope: !5553, file: !181, line: 128, baseType: !393, size: 64, offset: 1216)
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !5553, file: !181, line: 129, baseType: !7, size: 32, offset: 1280)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "sector_size", scope: !5553, file: !181, line: 131, baseType: !7, size: 32, offset: 1312)
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "hostdata", scope: !5553, file: !181, line: 133, baseType: !225, size: 64, offset: 1344)
!5577 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5553, file: !181, line: 134, baseType: !286, size: 8, offset: 1408)
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "scsi_level", scope: !5553, file: !181, line: 135, baseType: !866, size: 8, offset: 1416)
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "inq_periph_qual", scope: !5553, file: !181, line: 136, baseType: !866, size: 8, offset: 1424)
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "inquiry_mutex", scope: !5553, file: !181, line: 137, baseType: !299, size: 256, offset: 1472)
!5581 = !DIDerivedType(tag: DW_TAG_member, name: "inquiry_len", scope: !5553, file: !181, line: 138, baseType: !286, size: 8, offset: 1728)
!5582 = !DIDerivedType(tag: DW_TAG_member, name: "inquiry", scope: !5553, file: !181, line: 139, baseType: !5583, size: 64, offset: 1792)
!5583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !5553, file: !181, line: 140, baseType: !883, size: 64, offset: 1856)
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !5553, file: !181, line: 141, baseType: !883, size: 64, offset: 1920)
!5586 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !5553, file: !181, line: 142, baseType: !883, size: 64, offset: 1984)
!5587 = !DIDerivedType(tag: DW_TAG_member, name: "vpd_pg0", scope: !5553, file: !181, line: 145, baseType: !5588, size: 64, offset: 2048)
!5588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5589, size: 64)
!5589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scsi_vpd", file: !181, line: 97, size: 192, elements: !5590)
!5590 = !{!5591, !5592, !5593}
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !5589, file: !181, line: 98, baseType: !676, size: 128, align: 64)
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5589, file: !181, line: 99, baseType: !101, size: 32, offset: 128)
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5589, file: !181, line: 100, baseType: !5594, offset: 160)
!5594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !286, elements: !757)
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "vpd_pg83", scope: !5553, file: !181, line: 146, baseType: !5588, size: 64, offset: 2112)
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "vpd_pg80", scope: !5553, file: !181, line: 147, baseType: !5588, size: 64, offset: 2176)
!5597 = !DIDerivedType(tag: DW_TAG_member, name: "vpd_pg89", scope: !5553, file: !181, line: 148, baseType: !5588, size: 64, offset: 2240)
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "vpd_pgb0", scope: !5553, file: !181, line: 149, baseType: !5588, size: 64, offset: 2304)
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "vpd_pgb1", scope: !5553, file: !181, line: 150, baseType: !5588, size: 64, offset: 2368)
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "vpd_pgb2", scope: !5553, file: !181, line: 151, baseType: !5588, size: 64, offset: 2432)
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "sdev_target", scope: !5553, file: !181, line: 153, baseType: !5602, size: 64, offset: 2496)
!5602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5603, size: 64)
!5603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scsi_target", file: !181, line: 334, size: 6528, align: 64, elements: !5604)
!5604 = !{!5605, !5606, !5607, !5608, !5609, !5610, !5611, !5612, !5613, !5614, !5615, !5616, !5617, !5618, !5619, !5620, !5621, !5622, !5623, !5624}
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "starget_sdev_user", scope: !5603, file: !181, line: 335, baseType: !5552, size: 64)
!5606 = !DIDerivedType(tag: DW_TAG_member, name: "siblings", scope: !5603, file: !181, line: 336, baseType: !232, size: 128, offset: 64)
!5607 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !5603, file: !181, line: 337, baseType: !232, size: 128, offset: 192)
!5608 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5603, file: !181, line: 338, baseType: !3173, size: 5824, offset: 320)
!5609 = !DIDerivedType(tag: DW_TAG_member, name: "reap_ref", scope: !5603, file: !181, line: 339, baseType: !2146, size: 32, offset: 6144)
!5610 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !5603, file: !181, line: 340, baseType: !7, size: 32, offset: 6176)
!5611 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5603, file: !181, line: 341, baseType: !7, size: 32, offset: 6208)
!5612 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !5603, file: !181, line: 343, baseType: !7, size: 1, offset: 6240, flags: DIFlagBitField, extraData: i64 6240)
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "single_lun", scope: !5603, file: !181, line: 344, baseType: !7, size: 1, offset: 6241, flags: DIFlagBitField, extraData: i64 6240)
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "pdt_1f_for_no_lun", scope: !5603, file: !181, line: 347, baseType: !7, size: 1, offset: 6242, flags: DIFlagBitField, extraData: i64 6240)
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "no_report_luns", scope: !5603, file: !181, line: 349, baseType: !7, size: 1, offset: 6243, flags: DIFlagBitField, extraData: i64 6240)
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "expecting_lun_change", scope: !5603, file: !181, line: 351, baseType: !7, size: 1, offset: 6244, flags: DIFlagBitField, extraData: i64 6240)
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "target_busy", scope: !5603, file: !181, line: 355, baseType: !274, size: 32, offset: 6272)
!5618 = !DIDerivedType(tag: DW_TAG_member, name: "target_blocked", scope: !5603, file: !181, line: 356, baseType: !274, size: 32, offset: 6304)
!5619 = !DIDerivedType(tag: DW_TAG_member, name: "can_queue", scope: !5603, file: !181, line: 362, baseType: !7, size: 32, offset: 6336)
!5620 = !DIDerivedType(tag: DW_TAG_member, name: "max_target_blocked", scope: !5603, file: !181, line: 363, baseType: !7, size: 32, offset: 6368)
!5621 = !DIDerivedType(tag: DW_TAG_member, name: "scsi_level", scope: !5603, file: !181, line: 366, baseType: !866, size: 8, offset: 6400)
!5622 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5603, file: !181, line: 367, baseType: !180, size: 32, offset: 6432)
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "hostdata", scope: !5603, file: !181, line: 368, baseType: !225, size: 64, offset: 6464)
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "starget_data", scope: !5603, file: !181, line: 369, baseType: !4503, offset: 6528)
!5625 = !DIDerivedType(tag: DW_TAG_member, name: "sdev_bflags", scope: !5553, file: !181, line: 155, baseType: !5626, size: 64, offset: 2560)
!5626 = !DIDerivedType(tag: DW_TAG_typedef, name: "blist_flags_t", file: !181, line: 20, baseType: !394)
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "eh_timeout", scope: !5553, file: !181, line: 159, baseType: !7, size: 32, offset: 2624)
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "manage_system_start_stop", scope: !5553, file: !181, line: 166, baseType: !7, size: 1, offset: 2656, flags: DIFlagBitField, extraData: i64 2656)
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "manage_runtime_start_stop", scope: !5553, file: !181, line: 172, baseType: !7, size: 1, offset: 2657, flags: DIFlagBitField, extraData: i64 2656)
!5630 = !DIDerivedType(tag: DW_TAG_member, name: "manage_shutdown", scope: !5553, file: !181, line: 178, baseType: !7, size: 1, offset: 2658, flags: DIFlagBitField, extraData: i64 2656)
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "force_runtime_start_on_system_start", scope: !5553, file: !181, line: 184, baseType: !7, size: 1, offset: 2659, flags: DIFlagBitField, extraData: i64 2656)
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !5553, file: !181, line: 186, baseType: !7, size: 1, offset: 2660, flags: DIFlagBitField, extraData: i64 2656)
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !5553, file: !181, line: 187, baseType: !7, size: 1, offset: 2661, flags: DIFlagBitField, extraData: i64 2656)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !5553, file: !181, line: 188, baseType: !7, size: 1, offset: 2662, flags: DIFlagBitField, extraData: i64 2656)
!5635 = !DIDerivedType(tag: DW_TAG_member, name: "lockable", scope: !5553, file: !181, line: 189, baseType: !7, size: 1, offset: 2663, flags: DIFlagBitField, extraData: i64 2656)
!5636 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !5553, file: !181, line: 190, baseType: !7, size: 1, offset: 2664, flags: DIFlagBitField, extraData: i64 2656)
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "borken", scope: !5553, file: !181, line: 191, baseType: !7, size: 1, offset: 2665, flags: DIFlagBitField, extraData: i64 2656)
!5638 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !5553, file: !181, line: 193, baseType: !7, size: 1, offset: 2666, flags: DIFlagBitField, extraData: i64 2656)
!5639 = !DIDerivedType(tag: DW_TAG_member, name: "soft_reset", scope: !5553, file: !181, line: 194, baseType: !7, size: 1, offset: 2667, flags: DIFlagBitField, extraData: i64 2656)
!5640 = !DIDerivedType(tag: DW_TAG_member, name: "sdtr", scope: !5553, file: !181, line: 195, baseType: !7, size: 1, offset: 2668, flags: DIFlagBitField, extraData: i64 2656)
!5641 = !DIDerivedType(tag: DW_TAG_member, name: "wdtr", scope: !5553, file: !181, line: 196, baseType: !7, size: 1, offset: 2669, flags: DIFlagBitField, extraData: i64 2656)
!5642 = !DIDerivedType(tag: DW_TAG_member, name: "ppr", scope: !5553, file: !181, line: 197, baseType: !7, size: 1, offset: 2670, flags: DIFlagBitField, extraData: i64 2656)
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_supported", scope: !5553, file: !181, line: 198, baseType: !7, size: 1, offset: 2671, flags: DIFlagBitField, extraData: i64 2656)
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "simple_tags", scope: !5553, file: !181, line: 199, baseType: !7, size: 1, offset: 2672, flags: DIFlagBitField, extraData: i64 2656)
!5645 = !DIDerivedType(tag: DW_TAG_member, name: "was_reset", scope: !5553, file: !181, line: 200, baseType: !7, size: 1, offset: 2673, flags: DIFlagBitField, extraData: i64 2656)
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "expecting_cc_ua", scope: !5553, file: !181, line: 202, baseType: !7, size: 1, offset: 2674, flags: DIFlagBitField, extraData: i64 2656)
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "use_10_for_rw", scope: !5553, file: !181, line: 204, baseType: !7, size: 1, offset: 2675, flags: DIFlagBitField, extraData: i64 2656)
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "use_10_for_ms", scope: !5553, file: !181, line: 205, baseType: !7, size: 1, offset: 2676, flags: DIFlagBitField, extraData: i64 2656)
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "set_dbd_for_ms", scope: !5553, file: !181, line: 206, baseType: !7, size: 1, offset: 2677, flags: DIFlagBitField, extraData: i64 2656)
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "read_before_ms", scope: !5553, file: !181, line: 207, baseType: !7, size: 1, offset: 2678, flags: DIFlagBitField, extraData: i64 2656)
!5651 = !DIDerivedType(tag: DW_TAG_member, name: "no_report_opcodes", scope: !5553, file: !181, line: 208, baseType: !7, size: 1, offset: 2679, flags: DIFlagBitField, extraData: i64 2656)
!5652 = !DIDerivedType(tag: DW_TAG_member, name: "no_write_same", scope: !5553, file: !181, line: 209, baseType: !7, size: 1, offset: 2680, flags: DIFlagBitField, extraData: i64 2656)
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "use_16_for_rw", scope: !5553, file: !181, line: 210, baseType: !7, size: 1, offset: 2681, flags: DIFlagBitField, extraData: i64 2656)
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "use_16_for_sync", scope: !5553, file: !181, line: 211, baseType: !7, size: 1, offset: 2682, flags: DIFlagBitField, extraData: i64 2656)
!5655 = !DIDerivedType(tag: DW_TAG_member, name: "skip_ms_page_8", scope: !5553, file: !181, line: 212, baseType: !7, size: 1, offset: 2683, flags: DIFlagBitField, extraData: i64 2656)
!5656 = !DIDerivedType(tag: DW_TAG_member, name: "skip_ms_page_3f", scope: !5553, file: !181, line: 213, baseType: !7, size: 1, offset: 2684, flags: DIFlagBitField, extraData: i64 2656)
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "skip_vpd_pages", scope: !5553, file: !181, line: 214, baseType: !7, size: 1, offset: 2685, flags: DIFlagBitField, extraData: i64 2656)
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "try_vpd_pages", scope: !5553, file: !181, line: 215, baseType: !7, size: 1, offset: 2686, flags: DIFlagBitField, extraData: i64 2656)
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "use_192_bytes_for_3f", scope: !5553, file: !181, line: 216, baseType: !7, size: 1, offset: 2687, flags: DIFlagBitField, extraData: i64 2656)
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "no_start_on_add", scope: !5553, file: !181, line: 217, baseType: !7, size: 1, offset: 2688, flags: DIFlagBitField, extraData: i64 2656)
!5661 = !DIDerivedType(tag: DW_TAG_member, name: "allow_restart", scope: !5553, file: !181, line: 218, baseType: !7, size: 1, offset: 2689, flags: DIFlagBitField, extraData: i64 2656)
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "start_stop_pwr_cond", scope: !5553, file: !181, line: 219, baseType: !7, size: 1, offset: 2690, flags: DIFlagBitField, extraData: i64 2656)
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "no_uld_attach", scope: !5553, file: !181, line: 220, baseType: !7, size: 1, offset: 2691, flags: DIFlagBitField, extraData: i64 2656)
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "select_no_atn", scope: !5553, file: !181, line: 221, baseType: !7, size: 1, offset: 2692, flags: DIFlagBitField, extraData: i64 2656)
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "fix_capacity", scope: !5553, file: !181, line: 222, baseType: !7, size: 1, offset: 2693, flags: DIFlagBitField, extraData: i64 2656)
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "guess_capacity", scope: !5553, file: !181, line: 223, baseType: !7, size: 1, offset: 2694, flags: DIFlagBitField, extraData: i64 2656)
!5667 = !DIDerivedType(tag: DW_TAG_member, name: "retry_hwerror", scope: !5553, file: !181, line: 224, baseType: !7, size: 1, offset: 2695, flags: DIFlagBitField, extraData: i64 2656)
!5668 = !DIDerivedType(tag: DW_TAG_member, name: "last_sector_bug", scope: !5553, file: !181, line: 225, baseType: !7, size: 1, offset: 2696, flags: DIFlagBitField, extraData: i64 2656)
!5669 = !DIDerivedType(tag: DW_TAG_member, name: "no_read_disc_info", scope: !5553, file: !181, line: 227, baseType: !7, size: 1, offset: 2697, flags: DIFlagBitField, extraData: i64 2656)
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "no_read_capacity_16", scope: !5553, file: !181, line: 228, baseType: !7, size: 1, offset: 2698, flags: DIFlagBitField, extraData: i64 2656)
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "try_rc_10_first", scope: !5553, file: !181, line: 229, baseType: !7, size: 1, offset: 2699, flags: DIFlagBitField, extraData: i64 2656)
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "security_supported", scope: !5553, file: !181, line: 230, baseType: !7, size: 1, offset: 2700, flags: DIFlagBitField, extraData: i64 2656)
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !5553, file: !181, line: 231, baseType: !7, size: 1, offset: 2701, flags: DIFlagBitField, extraData: i64 2656)
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "wce_default_on", scope: !5553, file: !181, line: 232, baseType: !7, size: 1, offset: 2702, flags: DIFlagBitField, extraData: i64 2656)
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "no_dif", scope: !5553, file: !181, line: 233, baseType: !7, size: 1, offset: 2703, flags: DIFlagBitField, extraData: i64 2656)
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "broken_fua", scope: !5553, file: !181, line: 234, baseType: !7, size: 1, offset: 2704, flags: DIFlagBitField, extraData: i64 2656)
!5677 = !DIDerivedType(tag: DW_TAG_member, name: "lun_in_cdb", scope: !5553, file: !181, line: 235, baseType: !7, size: 1, offset: 2705, flags: DIFlagBitField, extraData: i64 2656)
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "unmap_limit_for_ws", scope: !5553, file: !181, line: 236, baseType: !7, size: 1, offset: 2706, flags: DIFlagBitField, extraData: i64 2656)
!5679 = !DIDerivedType(tag: DW_TAG_member, name: "rpm_autosuspend", scope: !5553, file: !181, line: 237, baseType: !7, size: 1, offset: 2707, flags: DIFlagBitField, extraData: i64 2656)
!5680 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_media_change", scope: !5553, file: !181, line: 239, baseType: !7, size: 1, offset: 2708, flags: DIFlagBitField, extraData: i64 2656)
!5681 = !DIDerivedType(tag: DW_TAG_member, name: "silence_suspend", scope: !5553, file: !181, line: 240, baseType: !7, size: 1, offset: 2709, flags: DIFlagBitField, extraData: i64 2656)
!5682 = !DIDerivedType(tag: DW_TAG_member, name: "no_vpd_size", scope: !5553, file: !181, line: 241, baseType: !7, size: 1, offset: 2710, flags: DIFlagBitField, extraData: i64 2656)
!5683 = !DIDerivedType(tag: DW_TAG_member, name: "cdl_supported", scope: !5553, file: !181, line: 243, baseType: !7, size: 1, offset: 2711, flags: DIFlagBitField, extraData: i64 2656)
!5684 = !DIDerivedType(tag: DW_TAG_member, name: "cdl_enable", scope: !5553, file: !181, line: 244, baseType: !7, size: 1, offset: 2712, flags: DIFlagBitField, extraData: i64 2656)
!5685 = !DIDerivedType(tag: DW_TAG_member, name: "queue_stopped", scope: !5553, file: !181, line: 246, baseType: !7, size: 32, offset: 2720)
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "offline_already", scope: !5553, file: !181, line: 247, baseType: !880, size: 8, offset: 2752)
!5687 = !DIDerivedType(tag: DW_TAG_member, name: "disk_events_disable_depth", scope: !5553, file: !181, line: 249, baseType: !274, size: 32, offset: 2784)
!5688 = !DIDerivedType(tag: DW_TAG_member, name: "supported_events", scope: !5553, file: !181, line: 251, baseType: !591, size: 64, offset: 2816)
!5689 = !DIDerivedType(tag: DW_TAG_member, name: "pending_events", scope: !5553, file: !181, line: 252, baseType: !591, size: 64, offset: 2880)
!5690 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !5553, file: !181, line: 253, baseType: !232, size: 128, offset: 2944)
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "event_work", scope: !5553, file: !181, line: 254, baseType: !2412, size: 256, offset: 3072)
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "max_device_blocked", scope: !5553, file: !181, line: 256, baseType: !7, size: 32, offset: 3328)
!5693 = !DIDerivedType(tag: DW_TAG_member, name: "iorequest_cnt", scope: !5553, file: !181, line: 259, baseType: !274, size: 32, offset: 3360)
!5694 = !DIDerivedType(tag: DW_TAG_member, name: "iodone_cnt", scope: !5553, file: !181, line: 260, baseType: !274, size: 32, offset: 3392)
!5695 = !DIDerivedType(tag: DW_TAG_member, name: "ioerr_cnt", scope: !5553, file: !181, line: 261, baseType: !274, size: 32, offset: 3424)
!5696 = !DIDerivedType(tag: DW_TAG_member, name: "iotmo_cnt", scope: !5553, file: !181, line: 262, baseType: !274, size: 32, offset: 3456)
!5697 = !DIDerivedType(tag: DW_TAG_member, name: "sdev_gendev", scope: !5553, file: !181, line: 264, baseType: !3173, size: 5824, offset: 3520)
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "sdev_dev", scope: !5553, file: !181, line: 265, baseType: !3173, size: 5824, offset: 9344)
!5699 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_work", scope: !5553, file: !181, line: 267, baseType: !2412, size: 256, offset: 15168)
!5700 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !5553, file: !181, line: 269, baseType: !5701, size: 64, offset: 15424)
!5701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5702, size: 64)
!5702 = !DICompositeType(tag: DW_TAG_structure_type, name: "scsi_device_handler", file: !181, line: 269, flags: DIFlagFwdDecl)
!5703 = !DIDerivedType(tag: DW_TAG_member, name: "handler_data", scope: !5553, file: !181, line: 270, baseType: !225, size: 64, offset: 15488)
!5704 = !DIDerivedType(tag: DW_TAG_member, name: "dma_drain_len", scope: !5553, file: !181, line: 272, baseType: !1196, size: 64, offset: 15552)
!5705 = !DIDerivedType(tag: DW_TAG_member, name: "dma_drain_buf", scope: !5553, file: !181, line: 273, baseType: !225, size: 64, offset: 15616)
!5706 = !DIDerivedType(tag: DW_TAG_member, name: "sg_timeout", scope: !5553, file: !181, line: 275, baseType: !7, size: 32, offset: 15680)
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "sg_reserved_size", scope: !5553, file: !181, line: 276, baseType: !7, size: 32, offset: 15712)
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "bsg_dev", scope: !5553, file: !181, line: 278, baseType: !5709, size: 64, offset: 15744)
!5709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5710, size: 64)
!5710 = !DICompositeType(tag: DW_TAG_structure_type, name: "bsg_device", file: !181, line: 13, flags: DIFlagFwdDecl)
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "access_state", scope: !5553, file: !181, line: 279, baseType: !286, size: 8, offset: 15808)
!5712 = !DIDerivedType(tag: DW_TAG_member, name: "state_mutex", scope: !5553, file: !181, line: 280, baseType: !299, size: 256, offset: 15872)
!5713 = !DIDerivedType(tag: DW_TAG_member, name: "sdev_state", scope: !5553, file: !181, line: 281, baseType: !188, size: 32, offset: 16128)
!5714 = !DIDerivedType(tag: DW_TAG_member, name: "quiesced_by", scope: !5553, file: !181, line: 282, baseType: !323, size: 64, offset: 16192)
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "sdev_data", scope: !5553, file: !181, line: 283, baseType: !4503, offset: 16256)
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !240, file: !171, line: 127, baseType: !5549, size: 64, offset: 448)
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "init_cmd_priv", scope: !240, file: !171, line: 131, baseType: !244, size: 64, offset: 512)
!5718 = !DIDerivedType(tag: DW_TAG_member, name: "exit_cmd_priv", scope: !240, file: !171, line: 132, baseType: !244, size: 64, offset: 576)
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "eh_abort_handler", scope: !240, file: !171, line: 152, baseType: !5720, size: 64, offset: 640)
!5720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5721, size: 64)
!5721 = !DISubroutineType(types: !5722)
!5722 = !{!101, !5535}
!5723 = !DIDerivedType(tag: DW_TAG_member, name: "eh_device_reset_handler", scope: !240, file: !171, line: 153, baseType: !5720, size: 64, offset: 704)
!5724 = !DIDerivedType(tag: DW_TAG_member, name: "eh_target_reset_handler", scope: !240, file: !171, line: 154, baseType: !5720, size: 64, offset: 768)
!5725 = !DIDerivedType(tag: DW_TAG_member, name: "eh_bus_reset_handler", scope: !240, file: !171, line: 155, baseType: !5720, size: 64, offset: 832)
!5726 = !DIDerivedType(tag: DW_TAG_member, name: "eh_host_reset_handler", scope: !240, file: !171, line: 156, baseType: !5720, size: 64, offset: 896)
!5727 = !DIDerivedType(tag: DW_TAG_member, name: "slave_alloc", scope: !240, file: !171, line: 184, baseType: !5728, size: 64, offset: 960)
!5728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5729, size: 64)
!5729 = !DISubroutineType(types: !5730)
!5730 = !{!101, !5552}
!5731 = !DIDerivedType(tag: DW_TAG_member, name: "slave_configure", scope: !240, file: !171, line: 215, baseType: !5728, size: 64, offset: 1024)
!5732 = !DIDerivedType(tag: DW_TAG_member, name: "slave_destroy", scope: !240, file: !171, line: 226, baseType: !5733, size: 64, offset: 1088)
!5733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5734, size: 64)
!5734 = !DISubroutineType(types: !5735)
!5735 = !{null, !5552}
!5736 = !DIDerivedType(tag: DW_TAG_member, name: "target_alloc", scope: !240, file: !171, line: 240, baseType: !5737, size: 64, offset: 1152)
!5737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5738, size: 64)
!5738 = !DISubroutineType(types: !5739)
!5739 = !{!101, !5602}
!5740 = !DIDerivedType(tag: DW_TAG_member, name: "target_destroy", scope: !240, file: !171, line: 250, baseType: !5741, size: 64, offset: 1216)
!5741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5742, size: 64)
!5742 = !DISubroutineType(types: !5743)
!5743 = !{null, !5602}
!5744 = !DIDerivedType(tag: DW_TAG_member, name: "scan_finished", scope: !240, file: !171, line: 261, baseType: !5745, size: 64, offset: 1280)
!5745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5746, size: 64)
!5746 = !DISubroutineType(types: !5747)
!5747 = !{!101, !247, !332}
!5748 = !DIDerivedType(tag: DW_TAG_member, name: "scan_start", scope: !240, file: !171, line: 270, baseType: !5477, size: 64, offset: 1344)
!5749 = !DIDerivedType(tag: DW_TAG_member, name: "change_queue_depth", scope: !240, file: !171, line: 283, baseType: !5750, size: 64, offset: 1408)
!5750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5751, size: 64)
!5751 = !DISubroutineType(types: !5752)
!5752 = !{!101, !5552, !101}
!5753 = !DIDerivedType(tag: DW_TAG_member, name: "map_queues", scope: !240, file: !171, line: 291, baseType: !5477, size: 64, offset: 1472)
!5754 = !DIDerivedType(tag: DW_TAG_member, name: "mq_poll", scope: !240, file: !171, line: 301, baseType: !5755, size: 64, offset: 1536)
!5755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5756, size: 64)
!5756 = !DISubroutineType(types: !5757)
!5757 = !{!101, !247, !7}
!5758 = !DIDerivedType(tag: DW_TAG_member, name: "dma_need_drain", scope: !240, file: !171, line: 308, baseType: !5759, size: 64, offset: 1600)
!5759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5760, size: 64)
!5760 = !DISubroutineType(types: !5761)
!5761 = !{!880, !2934}
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "bios_param", scope: !240, file: !171, line: 318, baseType: !5763, size: 64, offset: 1664)
!5763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5764, size: 64)
!5764 = !DISubroutineType(types: !5765)
!5765 = !{!101, !5552, !2809, !1818, !2298}
!5766 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_native_capacity", scope: !240, file: !171, line: 327, baseType: !5733, size: 64, offset: 1728)
!5767 = !DIDerivedType(tag: DW_TAG_member, name: "show_info", scope: !240, file: !171, line: 336, baseType: !5768, size: 64, offset: 1792)
!5768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5769, size: 64)
!5769 = !DISubroutineType(types: !5770)
!5770 = !{!101, !2056, !247}
!5771 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !240, file: !171, line: 337, baseType: !5772, size: 64, offset: 1856)
!5772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5773, size: 64)
!5773 = !DISubroutineType(types: !5774)
!5774 = !{!101, !247, !893, !101}
!5775 = !DIDerivedType(tag: DW_TAG_member, name: "eh_timed_out", scope: !240, file: !171, line: 346, baseType: !5776, size: 64, offset: 1920)
!5776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5777, size: 64)
!5777 = !DISubroutineType(types: !5778)
!5778 = !{!199, !5535}
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "eh_should_retry_cmd", scope: !240, file: !171, line: 352, baseType: !5780, size: 64, offset: 1984)
!5780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5781, size: 64)
!5781 = !DISubroutineType(types: !5782)
!5782 = !{!880, !5535}
!5783 = !DIDerivedType(tag: DW_TAG_member, name: "host_reset", scope: !240, file: !171, line: 362, baseType: !5784, size: 64, offset: 2048)
!5784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5785, size: 64)
!5785 = !DISubroutineType(types: !5786)
!5786 = !{!101, !247, !101}
!5787 = !DIDerivedType(tag: DW_TAG_member, name: "proc_name", scope: !240, file: !171, line: 370, baseType: !883, size: 64, offset: 2112)
!5788 = !DIDerivedType(tag: DW_TAG_member, name: "can_queue", scope: !240, file: !171, line: 377, baseType: !101, size: 32, offset: 2176)
!5789 = !DIDerivedType(tag: DW_TAG_member, name: "this_id", scope: !240, file: !171, line: 386, baseType: !101, size: 32, offset: 2208)
!5790 = !DIDerivedType(tag: DW_TAG_member, name: "sg_tablesize", scope: !240, file: !171, line: 392, baseType: !294, size: 16, offset: 2240)
!5791 = !DIDerivedType(tag: DW_TAG_member, name: "sg_prot_tablesize", scope: !240, file: !171, line: 393, baseType: !294, size: 16, offset: 2256)
!5792 = !DIDerivedType(tag: DW_TAG_member, name: "max_sectors", scope: !240, file: !171, line: 398, baseType: !7, size: 32, offset: 2272)
!5793 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !240, file: !171, line: 403, baseType: !7, size: 32, offset: 2304)
!5794 = !DIDerivedType(tag: DW_TAG_member, name: "dma_boundary", scope: !240, file: !171, line: 409, baseType: !332, size: 64, offset: 2368)
!5795 = !DIDerivedType(tag: DW_TAG_member, name: "virt_boundary_mask", scope: !240, file: !171, line: 411, baseType: !332, size: 64, offset: 2432)
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_per_lun", scope: !240, file: !171, line: 430, baseType: !848, size: 16, offset: 2496)
!5797 = !DIDerivedType(tag: DW_TAG_member, name: "tag_alloc_policy", scope: !240, file: !171, line: 433, baseType: !101, size: 32, offset: 2528)
!5798 = !DIDerivedType(tag: DW_TAG_member, name: "track_queue_depth", scope: !240, file: !171, line: 438, baseType: !7, size: 1, offset: 2560, flags: DIFlagBitField, extraData: i64 2560)
!5799 = !DIDerivedType(tag: DW_TAG_member, name: "supported_mode", scope: !240, file: !171, line: 443, baseType: !7, size: 2, offset: 2561, flags: DIFlagBitField, extraData: i64 2560)
!5800 = !DIDerivedType(tag: DW_TAG_member, name: "emulated", scope: !240, file: !171, line: 448, baseType: !7, size: 1, offset: 2563, flags: DIFlagBitField, extraData: i64 2560)
!5801 = !DIDerivedType(tag: DW_TAG_member, name: "skip_settle_delay", scope: !240, file: !171, line: 453, baseType: !7, size: 1, offset: 2564, flags: DIFlagBitField, extraData: i64 2560)
!5802 = !DIDerivedType(tag: DW_TAG_member, name: "no_write_same", scope: !240, file: !171, line: 456, baseType: !7, size: 1, offset: 2565, flags: DIFlagBitField, extraData: i64 2560)
!5803 = !DIDerivedType(tag: DW_TAG_member, name: "host_tagset", scope: !240, file: !171, line: 459, baseType: !7, size: 1, offset: 2566, flags: DIFlagBitField, extraData: i64 2560)
!5804 = !DIDerivedType(tag: DW_TAG_member, name: "queuecommand_may_block", scope: !240, file: !171, line: 462, baseType: !7, size: 1, offset: 2567, flags: DIFlagBitField, extraData: i64 2560)
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "max_host_blocked", scope: !240, file: !171, line: 467, baseType: !7, size: 32, offset: 2592)
!5806 = !DIDerivedType(tag: DW_TAG_member, name: "shost_groups", scope: !240, file: !171, line: 481, baseType: !1378, size: 64, offset: 2624)
!5807 = !DIDerivedType(tag: DW_TAG_member, name: "sdev_groups", scope: !240, file: !171, line: 487, baseType: !1378, size: 64, offset: 2688)
!5808 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_id", scope: !240, file: !171, line: 496, baseType: !393, size: 64, offset: 2752)
!5809 = !DIDerivedType(tag: DW_TAG_member, name: "rpm_autosuspend_delay", scope: !240, file: !171, line: 499, baseType: !101, size: 32, offset: 2816)
!5810 = !DIDerivedType(tag: DW_TAG_member, name: "proc_dir", scope: !229, file: !3, line: 60, baseType: !5811, size: 64, offset: 192)
!5811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5812, size: 64)
!5812 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !5813, line: 12, flags: DIFlagFwdDecl)
!5813 = !DIFile(filename: "./include/linux/proc_fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3e8a31057d6ce7bcf5851cd096e4b3e8")
!5814 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !229, file: !3, line: 61, baseType: !7, size: 32, offset: 256)
!5815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5816, size: 64)
!5816 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !235)
!5817 = !{!0, !5818, !5820, !5825, !5828, !5830, !5835, !5840, !5843, !5846, !5851, !5856, !5858, !5860, !5865, !5867, !5884, !5890, !5892, !5894, !5896, !5901, !5906, !5909, !5914, !5916, !5918, !5923}
!5818 = !DIGlobalVariableExpression(var: !5819, expr: !DIExpression())
!5819 = distinct !DIGlobalVariable(scope: null, file: !3, line: 175, type: !2823, isLocal: true, isDefinition: true)
!5820 = !DIGlobalVariableExpression(var: !5821, expr: !DIExpression())
!5821 = distinct !DIGlobalVariable(scope: null, file: !3, line: 175, type: !5822, isLocal: true, isDefinition: true)
!5822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !884, size: 176, elements: !5823)
!5823 = !{!5824}
!5824 = !DISubrange(count: 22)
!5825 = !DIGlobalVariableExpression(var: !5826, expr: !DIExpression())
!5826 = distinct !DIGlobalVariable(scope: null, file: !3, line: 232, type: !5827, isLocal: true, isDefinition: true)
!5827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !866, size: 24, elements: !717)
!5828 = !DIGlobalVariableExpression(var: !5829, expr: !DIExpression())
!5829 = distinct !DIGlobalVariable(scope: null, file: !3, line: 240, type: !5827, isLocal: true, isDefinition: true)
!5830 = !DIGlobalVariableExpression(var: !5831, expr: !DIExpression())
!5831 = distinct !DIGlobalVariable(scope: null, file: !3, line: 240, type: !5832, isLocal: true, isDefinition: true)
!5832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !866, size: 328, elements: !5833)
!5833 = !{!5834}
!5834 = !DISubrange(count: 41)
!5835 = !DIGlobalVariableExpression(var: !5836, expr: !DIExpression())
!5836 = distinct !DIGlobalVariable(scope: null, file: !3, line: 240, type: !5837, isLocal: true, isDefinition: true)
!5837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !884, size: 152, elements: !5838)
!5838 = !{!5839}
!5839 = !DISubrange(count: 19)
!5840 = !DIGlobalVariableExpression(var: !5841, expr: !DIExpression())
!5841 = distinct !DIGlobalVariable(scope: null, file: !3, line: 240, type: !5842, isLocal: true, isDefinition: true)
!5842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !866, size: 152, elements: !5838)
!5843 = !DIGlobalVariableExpression(var: !5844, expr: !DIExpression())
!5844 = distinct !DIGlobalVariable(scope: null, file: !3, line: 240, type: !5845, isLocal: true, isDefinition: true)
!5845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !866, size: 192, elements: !3835)
!5846 = !DIGlobalVariableExpression(var: !5847, expr: !DIExpression())
!5847 = distinct !DIGlobalVariable(scope: null, file: !3, line: 553, type: !5848, isLocal: true, isDefinition: true)
!5848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !866, size: 40, elements: !5849)
!5849 = !{!5850}
!5850 = !DISubrange(count: 5)
!5851 = !DIGlobalVariableExpression(var: !5852, expr: !DIExpression())
!5852 = distinct !DIGlobalVariable(scope: null, file: !3, line: 557, type: !5853, isLocal: true, isDefinition: true)
!5853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !866, size: 80, elements: !5854)
!5854 = !{!5855}
!5855 = !DISubrange(count: 10)
!5856 = !DIGlobalVariableExpression(var: !5857, expr: !DIExpression())
!5857 = distinct !DIGlobalVariable(name: "proc_scsi", scope: !2, file: !3, line: 44, type: !5811, isLocal: true, isDefinition: true)
!5858 = !DIGlobalVariableExpression(var: !5859, expr: !DIExpression())
!5859 = distinct !DIGlobalVariable(name: "global_host_template_mutex", scope: !2, file: !3, line: 47, type: !299, isLocal: true, isDefinition: true)
!5860 = !DIGlobalVariableExpression(var: !5861, expr: !DIExpression())
!5861 = distinct !DIGlobalVariable(scope: null, file: !210, line: 480, type: !5862, isLocal: true, isDefinition: true)
!5862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !866, size: 168, elements: !5863)
!5863 = !{!5864}
!5864 = !DISubrange(count: 21)
!5865 = !DIGlobalVariableExpression(var: !5866, expr: !DIExpression())
!5866 = distinct !DIGlobalVariable(name: "scsi_proc_list", scope: !2, file: !3, line: 48, type: !232, isLocal: true, isDefinition: true)
!5867 = !DIGlobalVariableExpression(var: !5868, expr: !DIExpression())
!5868 = distinct !DIGlobalVariable(name: "proc_scsi_ops", scope: !2, file: !3, line: 140, type: !5869, isLocal: true, isDefinition: true)
!5869 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5870)
!5870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ops", file: !5813, line: 29, size: 768, elements: !5871)
!5871 = !{!5872, !5873, !5874, !5875, !5876, !5877, !5878, !5879, !5880, !5881, !5882, !5883}
!5872 = !DIDerivedType(tag: DW_TAG_member, name: "proc_flags", scope: !5870, file: !5813, line: 30, baseType: !7, size: 32)
!5873 = !DIDerivedType(tag: DW_TAG_member, name: "proc_open", scope: !5870, file: !5813, line: 31, baseType: !4243, size: 64, offset: 64)
!5874 = !DIDerivedType(tag: DW_TAG_member, name: "proc_read", scope: !5870, file: !5813, line: 32, baseType: !4202, size: 64, offset: 128)
!5875 = !DIDerivedType(tag: DW_TAG_member, name: "proc_read_iter", scope: !5870, file: !5813, line: 33, baseType: !1832, size: 64, offset: 192)
!5876 = !DIDerivedType(tag: DW_TAG_member, name: "proc_write", scope: !5870, file: !5813, line: 34, baseType: !4206, size: 64, offset: 256)
!5877 = !DIDerivedType(tag: DW_TAG_member, name: "proc_lseek", scope: !5870, file: !5813, line: 36, baseType: !4198, size: 64, offset: 320)
!5878 = !DIDerivedType(tag: DW_TAG_member, name: "proc_release", scope: !5870, file: !5813, line: 37, baseType: !4243, size: 64, offset: 384)
!5879 = !DIDerivedType(tag: DW_TAG_member, name: "proc_poll", scope: !5870, file: !5813, line: 38, baseType: !4229, size: 64, offset: 448)
!5880 = !DIDerivedType(tag: DW_TAG_member, name: "proc_ioctl", scope: !5870, file: !5813, line: 39, baseType: !4233, size: 64, offset: 512)
!5881 = !DIDerivedType(tag: DW_TAG_member, name: "proc_compat_ioctl", scope: !5870, file: !5813, line: 41, baseType: !4233, size: 64, offset: 576)
!5882 = !DIDerivedType(tag: DW_TAG_member, name: "proc_mmap", scope: !5870, file: !5813, line: 43, baseType: !4238, size: 64, offset: 640)
!5883 = !DIDerivedType(tag: DW_TAG_member, name: "proc_get_unmapped_area", scope: !5870, file: !5813, line: 44, baseType: !665, size: 64, offset: 704)
!5884 = !DIGlobalVariableExpression(var: !5885, expr: !DIExpression())
!5885 = distinct !DIGlobalVariable(scope: null, file: !5886, line: 249, type: !5887, isLocal: true, isDefinition: true)
!5886 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!5887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !866, size: 224, elements: !5888)
!5888 = !{!5889}
!5889 = !DISubrange(count: 28)
!5890 = !DIGlobalVariableExpression(var: !5891, expr: !DIExpression())
!5891 = distinct !DIGlobalVariable(name: "scsi_scsi_proc_ops", scope: !2, file: !3, line: 538, type: !5869, isLocal: true, isDefinition: true)
!5892 = !DIGlobalVariableExpression(var: !5893, expr: !DIExpression())
!5893 = distinct !DIGlobalVariable(name: "scsi_seq_ops", scope: !2, file: !3, line: 515, type: !2070, isLocal: true, isDefinition: true)
!5894 = !DIGlobalVariableExpression(var: !5895, expr: !DIExpression())
!5895 = distinct !DIGlobalVariable(scope: null, file: !3, line: 510, type: !5842, isLocal: true, isDefinition: true)
!5896 = !DIGlobalVariableExpression(var: !5897, expr: !DIExpression())
!5897 = distinct !DIGlobalVariable(scope: null, file: !3, line: 284, type: !5898, isLocal: true, isDefinition: true)
!5898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !866, size: 472, elements: !5899)
!5899 = !{!5900}
!5900 = !DISubrange(count: 59)
!5901 = !DIGlobalVariableExpression(var: !5902, expr: !DIExpression())
!5902 = distinct !DIGlobalVariable(scope: null, file: !3, line: 293, type: !5903, isLocal: true, isDefinition: true)
!5903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !866, size: 72, elements: !5904)
!5904 = !{!5905}
!5905 = !DISubrange(count: 9)
!5906 = !DIGlobalVariableExpression(var: !5907, expr: !DIExpression())
!5907 = distinct !DIGlobalVariable(scope: null, file: !3, line: 301, type: !5908, isLocal: true, isDefinition: true)
!5908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !866, size: 56, elements: !2290)
!5909 = !DIGlobalVariableExpression(var: !5910, expr: !DIExpression())
!5910 = distinct !DIGlobalVariable(scope: null, file: !3, line: 311, type: !5911, isLocal: true, isDefinition: true)
!5911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !866, size: 112, elements: !5912)
!5912 = !{!5913}
!5913 = !DISubrange(count: 14)
!5914 = !DIGlobalVariableExpression(var: !5915, expr: !DIExpression())
!5915 = distinct !DIGlobalVariable(scope: null, file: !3, line: 312, type: !5832, isLocal: true, isDefinition: true)
!5916 = !DIGlobalVariableExpression(var: !5917, expr: !DIExpression())
!5917 = distinct !DIGlobalVariable(scope: null, file: !3, line: 315, type: !865, isLocal: true, isDefinition: true)
!5918 = !DIGlobalVariableExpression(var: !5919, expr: !DIExpression())
!5919 = distinct !DIGlobalVariable(scope: null, file: !3, line: 437, type: !5920, isLocal: true, isDefinition: true)
!5920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !866, size: 184, elements: !5921)
!5921 = !{!5922}
!5922 = !DISubrange(count: 23)
!5923 = !DIGlobalVariableExpression(var: !5924, expr: !DIExpression())
!5924 = distinct !DIGlobalVariable(scope: null, file: !3, line: 451, type: !5925, isLocal: true, isDefinition: true)
!5925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !866, size: 208, elements: !5926)
!5926 = !{!5927}
!5927 = !DISubrange(count: 26)
!5928 = !{i32 7, !"Dwarf Version", i32 5}
!5929 = !{i32 2, !"Debug Info Version", i32 3}
!5930 = !{i32 1, !"wchar_size", i32 2}
!5931 = !{i32 8, !"cf-protection-branch", i32 1}
!5932 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5933 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5934 = !{i32 1, !"Code Model", i32 2}
!5935 = !{i32 1, !"override-stack-alignment", i32 8}
!5936 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5937 = distinct !DISubprogram(name: "scsi_template_proc_dir", scope: !3, file: !3, line: 132, type: !5938, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5940)
!5938 = !DISubroutineType(types: !5939)
!5939 = !{!5811, !238}
!5940 = !{!5941, !5942}
!5941 = !DILocalVariable(name: "sht", arg: 1, scope: !5937, file: !3, line: 132, type: !238)
!5942 = !DILocalVariable(name: "e", scope: !5937, file: !3, line: 134, type: !228)
!5943 = !DILocation(line: 132, column: 57, scope: !5937)
!5944 = !DILocation(line: 134, column: 2, scope: !5937)
!5945 = !DILocation(line: 134, column: 26, scope: !5937)
!5946 = !DILocation(line: 134, column: 53, scope: !5937)
!5947 = !DILocation(line: 134, column: 30, scope: !5937)
!5948 = !DILocation(line: 136, column: 9, scope: !5937)
!5949 = !DILocation(line: 136, column: 13, scope: !5937)
!5950 = !DILocation(line: 136, column: 16, scope: !5937)
!5951 = !DILocation(line: 137, column: 1, scope: !5937)
!5952 = !DILocation(line: 136, column: 2, scope: !5937)
!5953 = distinct !DISubprogram(name: "scsi_lookup_proc_entry", scope: !3, file: !3, line: 116, type: !5954, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5956)
!5954 = !DISubroutineType(types: !5955)
!5955 = !{!228, !238}
!5956 = !{!5957, !5958}
!5957 = !DILocalVariable(name: "sht", arg: 1, scope: !5953, file: !3, line: 116, type: !238)
!5958 = !DILocalVariable(name: "e", scope: !5953, file: !3, line: 118, type: !228)
!5959 = !DILocation(line: 116, column: 57, scope: !5953)
!5960 = !DILocation(line: 118, column: 2, scope: !5953)
!5961 = !DILocation(line: 118, column: 26, scope: !5953)
!5962 = !DILocation(line: 120, column: 2, scope: !5953)
!5963 = !DILocation(line: 121, column: 31, scope: !5953)
!5964 = !DILocation(line: 121, column: 6, scope: !5953)
!5965 = !DILocation(line: 121, column: 4, scope: !5953)
!5966 = !DILocation(line: 122, column: 2, scope: !5953)
!5967 = !DILocation(line: 124, column: 9, scope: !5953)
!5968 = !DILocation(line: 125, column: 1, scope: !5953)
!5969 = !DILocation(line: 124, column: 2, scope: !5953)
!5970 = distinct !DISubprogram(name: "scsi_proc_hostdir_add", scope: !3, file: !3, line: 154, type: !5971, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5973)
!5971 = !DISubroutineType(types: !5972)
!5972 = !{!101, !238}
!5973 = !{!5974, !5975, !5976, !5977, !5978}
!5974 = !DILocalVariable(name: "sht", arg: 1, scope: !5970, file: !3, line: 154, type: !238)
!5975 = !DILocalVariable(name: "e", scope: !5970, file: !3, line: 156, type: !228)
!5976 = !DILocalVariable(name: "ret", scope: !5970, file: !3, line: 157, type: !101)
!5977 = !DILabel(scope: !5970, name: "success", file: !3, line: 182)
!5978 = !DILabel(scope: !5970, name: "unlock", file: !3, line: 185)
!5979 = !DILocation(line: 154, column: 60, scope: !5970)
!5980 = !DILocation(line: 156, column: 2, scope: !5970)
!5981 = !DILocation(line: 156, column: 26, scope: !5970)
!5982 = !DILocation(line: 157, column: 2, scope: !5970)
!5983 = !DILocation(line: 157, column: 6, scope: !5970)
!5984 = !DILocation(line: 159, column: 7, scope: !5985)
!5985 = distinct !DILexicalBlock(scope: !5970, file: !3, line: 159, column: 6)
!5986 = !DILocation(line: 159, column: 12, scope: !5985)
!5987 = !DILocation(line: 159, column: 6, scope: !5970)
!5988 = !DILocation(line: 160, column: 3, scope: !5985)
!5989 = !DILocation(line: 162, column: 2, scope: !5970)
!5990 = !DILocation(line: 163, column: 31, scope: !5970)
!5991 = !DILocation(line: 163, column: 6, scope: !5970)
!5992 = !DILocation(line: 163, column: 4, scope: !5970)
!5993 = !DILocation(line: 164, column: 7, scope: !5994)
!5994 = distinct !DILexicalBlock(scope: !5970, file: !3, line: 164, column: 6)
!5995 = !DILocation(line: 164, column: 6, scope: !5970)
!5996 = !DILocation(line: 165, column: 7, scope: !5997)
!5997 = distinct !DILexicalBlock(scope: !5994, file: !3, line: 164, column: 10)
!5998 = !DILocation(line: 165, column: 5, scope: !5997)
!5999 = !DILocation(line: 166, column: 8, scope: !6000)
!6000 = distinct !DILexicalBlock(scope: !5997, file: !3, line: 166, column: 7)
!6001 = !DILocation(line: 166, column: 7, scope: !5997)
!6002 = !DILocation(line: 167, column: 8, scope: !6003)
!6003 = distinct !DILexicalBlock(scope: !6000, file: !3, line: 166, column: 11)
!6004 = !DILocation(line: 168, column: 4, scope: !6003)
!6005 = !DILocation(line: 170, column: 2, scope: !5997)
!6006 = !DILocation(line: 171, column: 6, scope: !6007)
!6007 = distinct !DILexicalBlock(scope: !5970, file: !3, line: 171, column: 6)
!6008 = !DILocation(line: 171, column: 9, scope: !6007)
!6009 = !DILocation(line: 171, column: 16, scope: !6007)
!6010 = !DILocation(line: 171, column: 6, scope: !5970)
!6011 = !DILocation(line: 172, column: 3, scope: !6007)
!6012 = !DILocation(line: 173, column: 27, scope: !5970)
!6013 = !DILocation(line: 173, column: 32, scope: !5970)
!6014 = !DILocation(line: 173, column: 43, scope: !5970)
!6015 = !DILocation(line: 173, column: 16, scope: !5970)
!6016 = !DILocation(line: 173, column: 2, scope: !5970)
!6017 = !DILocation(line: 173, column: 5, scope: !5970)
!6018 = !DILocation(line: 173, column: 14, scope: !5970)
!6019 = !DILocation(line: 174, column: 7, scope: !6020)
!6020 = distinct !DILexicalBlock(scope: !5970, file: !3, line: 174, column: 6)
!6021 = !DILocation(line: 174, column: 10, scope: !6020)
!6022 = !DILocation(line: 174, column: 6, scope: !5970)
!6023 = !DILocation(line: 175, column: 3, scope: !6024)
!6024 = distinct !DILexicalBlock(scope: !6025, file: !3, line: 175, column: 3)
!6025 = distinct !DILexicalBlock(scope: !6020, file: !3, line: 174, column: 20)
!6026 = !DILocation(line: 175, column: 3, scope: !6027)
!6027 = distinct !DILexicalBlock(scope: !6024, file: !3, line: 175, column: 3)
!6028 = !DILocation(line: 177, column: 7, scope: !6025)
!6029 = !DILocation(line: 178, column: 3, scope: !6025)
!6030 = !DILocation(line: 180, column: 11, scope: !5970)
!6031 = !DILocation(line: 180, column: 2, scope: !5970)
!6032 = !DILocation(line: 180, column: 5, scope: !5970)
!6033 = !DILocation(line: 180, column: 9, scope: !5970)
!6034 = !DILocation(line: 181, column: 17, scope: !5970)
!6035 = !DILocation(line: 181, column: 20, scope: !5970)
!6036 = !DILocation(line: 181, column: 2, scope: !5970)
!6037 = !DILocation(line: 182, column: 1, scope: !5970)
!6038 = !DILocation(line: 183, column: 4, scope: !5970)
!6039 = !DILocation(line: 184, column: 6, scope: !5970)
!6040 = !DILocation(line: 184, column: 2, scope: !5970)
!6041 = !DILocation(line: 185, column: 1, scope: !5970)
!6042 = !DILocation(line: 186, column: 2, scope: !5970)
!6043 = !DILocation(line: 188, column: 8, scope: !5970)
!6044 = !DILocation(line: 188, column: 2, scope: !5970)
!6045 = !DILocation(line: 189, column: 9, scope: !5970)
!6046 = !DILocation(line: 189, column: 2, scope: !5970)
!6047 = !DILocation(line: 190, column: 1, scope: !5970)
!6048 = !DISubprogram(name: "mutex_lock", scope: !300, file: !300, line: 227, type: !6049, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6049 = !DISubroutineType(types: !6050)
!6050 = !{null, !6051}
!6051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!6052 = distinct !DISubprogram(name: "__scsi_lookup_proc_entry", scope: !3, file: !3, line: 102, type: !5954, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6053)
!6053 = !{!6054, !6055, !6056, !6059}
!6054 = !DILocalVariable(name: "sht", arg: 1, scope: !6052, file: !3, line: 102, type: !238)
!6055 = !DILocalVariable(name: "e", scope: !6052, file: !3, line: 104, type: !228)
!6056 = !DILocalVariable(name: "__mptr", scope: !6057, file: !3, line: 108, type: !225)
!6057 = distinct !DILexicalBlock(scope: !6058, file: !3, line: 108, column: 2)
!6058 = distinct !DILexicalBlock(scope: !6052, file: !3, line: 108, column: 2)
!6059 = !DILocalVariable(name: "__mptr", scope: !6060, file: !3, line: 108, type: !225)
!6060 = distinct !DILexicalBlock(scope: !6061, file: !3, line: 108, column: 2)
!6061 = distinct !DILexicalBlock(scope: !6058, file: !3, line: 108, column: 2)
!6062 = !DILocation(line: 102, column: 59, scope: !6052)
!6063 = !DILocation(line: 104, column: 2, scope: !6052)
!6064 = !DILocation(line: 104, column: 26, scope: !6052)
!6065 = !DILocation(line: 106, column: 2, scope: !6052)
!6066 = !DILocation(line: 106, column: 2, scope: !6067)
!6067 = distinct !DILexicalBlock(scope: !6052, file: !3, line: 106, column: 2)
!6068 = !DILocation(line: 108, column: 2, scope: !6057)
!6069 = !DILocation(line: 108, column: 2, scope: !6058)
!6070 = !DILocation(line: 108, column: 2, scope: !6061)
!6071 = !DILocation(line: 109, column: 7, scope: !6072)
!6072 = distinct !DILexicalBlock(scope: !6061, file: !3, line: 109, column: 7)
!6073 = !DILocation(line: 109, column: 10, scope: !6072)
!6074 = !DILocation(line: 109, column: 17, scope: !6072)
!6075 = !DILocation(line: 109, column: 14, scope: !6072)
!6076 = !DILocation(line: 109, column: 7, scope: !6061)
!6077 = !DILocation(line: 110, column: 11, scope: !6072)
!6078 = !DILocation(line: 110, column: 4, scope: !6072)
!6079 = !DILocation(line: 108, column: 2, scope: !6060)
!6080 = distinct !{!6080, !6069, !6081, !6082, !6083}
!6081 = !DILocation(line: 110, column: 11, scope: !6058)
!6082 = !{!"llvm.loop.mustprogress"}
!6083 = !{!"llvm.loop.unroll.disable"}
!6084 = !DILocation(line: 112, column: 2, scope: !6052)
!6085 = !DILocation(line: 113, column: 1, scope: !6052)
!6086 = distinct !DISubprogram(name: "kzalloc", scope: !210, file: !210, line: 719, type: !6087, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6089)
!6087 = !DISubroutineType(types: !6088)
!6088 = !{!225, !1196, !226}
!6089 = !{!6090, !6091}
!6090 = !DILocalVariable(name: "size", arg: 1, scope: !6086, file: !210, line: 719, type: !1196)
!6091 = !DILocalVariable(name: "flags", arg: 2, scope: !6086, file: !210, line: 719, type: !226)
!6092 = !DILocation(line: 719, column: 52, scope: !6086)
!6093 = !DILocation(line: 719, column: 64, scope: !6086)
!6094 = !DILocation(line: 721, column: 17, scope: !6086)
!6095 = !DILocation(line: 721, column: 23, scope: !6086)
!6096 = !DILocation(line: 721, column: 29, scope: !6086)
!6097 = !DILocation(line: 721, column: 9, scope: !6086)
!6098 = !DILocation(line: 721, column: 2, scope: !6086)
!6099 = !DISubprogram(name: "proc_mkdir", scope: !5813, file: !5813, line: 85, type: !6100, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6100 = !DISubroutineType(types: !6101)
!6101 = !{!5811, !883, !5811}
!6102 = !DISubprogram(name: "_printk", scope: !6103, file: !6103, line: 153, type: !6104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6103 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!6104 = !DISubroutineType(types: !6105)
!6105 = !{!101, !883, null}
!6106 = distinct !DISubprogram(name: "list_add_tail", scope: !6107, file: !6107, line: 181, type: !6108, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6110)
!6107 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!6108 = !DISubroutineType(types: !6109)
!6109 = !{null, !235, !235}
!6110 = !{!6111, !6112}
!6111 = !DILocalVariable(name: "new", arg: 1, scope: !6106, file: !6107, line: 181, type: !235)
!6112 = !DILocalVariable(name: "head", arg: 2, scope: !6106, file: !6107, line: 181, type: !235)
!6113 = !DILocation(line: 181, column: 52, scope: !6106)
!6114 = !DILocation(line: 181, column: 75, scope: !6106)
!6115 = !DILocation(line: 183, column: 13, scope: !6106)
!6116 = !DILocation(line: 183, column: 18, scope: !6106)
!6117 = !DILocation(line: 183, column: 24, scope: !6106)
!6118 = !DILocation(line: 183, column: 30, scope: !6106)
!6119 = !DILocation(line: 183, column: 2, scope: !6106)
!6120 = !DILocation(line: 184, column: 1, scope: !6106)
!6121 = !DISubprogram(name: "mutex_unlock", scope: !300, file: !300, line: 246, type: !6049, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6122 = !DISubprogram(name: "kfree", scope: !210, file: !210, line: 227, type: !6123, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6123 = !DISubroutineType(types: !6124)
!6124 = !{null, !1992}
!6125 = distinct !DISubprogram(name: "scsi_proc_hostdir_rm", scope: !3, file: !3, line: 196, type: !6126, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6128)
!6126 = !DISubroutineType(types: !6127)
!6127 = !{null, !238}
!6128 = !{!6129, !6130}
!6129 = !DILocalVariable(name: "sht", arg: 1, scope: !6125, file: !3, line: 196, type: !238)
!6130 = !DILocalVariable(name: "e", scope: !6125, file: !3, line: 198, type: !228)
!6131 = !DILocation(line: 196, column: 60, scope: !6125)
!6132 = !DILocation(line: 198, column: 2, scope: !6125)
!6133 = !DILocation(line: 198, column: 26, scope: !6125)
!6134 = !DILocation(line: 200, column: 7, scope: !6135)
!6135 = distinct !DILexicalBlock(scope: !6125, file: !3, line: 200, column: 6)
!6136 = !DILocation(line: 200, column: 12, scope: !6135)
!6137 = !DILocation(line: 200, column: 6, scope: !6125)
!6138 = !DILocation(line: 201, column: 3, scope: !6135)
!6139 = !DILocation(line: 203, column: 2, scope: !6125)
!6140 = !DILocation(line: 204, column: 31, scope: !6125)
!6141 = !DILocation(line: 204, column: 6, scope: !6125)
!6142 = !DILocation(line: 204, column: 4, scope: !6125)
!6143 = !DILocation(line: 205, column: 6, scope: !6144)
!6144 = distinct !DILexicalBlock(scope: !6125, file: !3, line: 205, column: 6)
!6145 = !DILocation(line: 205, column: 8, scope: !6144)
!6146 = !DILocation(line: 205, column: 14, scope: !6144)
!6147 = !DILocation(line: 205, column: 17, scope: !6144)
!6148 = !DILocation(line: 205, column: 12, scope: !6144)
!6149 = !DILocation(line: 205, column: 6, scope: !6125)
!6150 = !DILocation(line: 206, column: 21, scope: !6151)
!6151 = distinct !DILexicalBlock(scope: !6144, file: !3, line: 205, column: 26)
!6152 = !DILocation(line: 206, column: 26, scope: !6151)
!6153 = !DILocation(line: 206, column: 37, scope: !6151)
!6154 = !DILocation(line: 206, column: 3, scope: !6151)
!6155 = !DILocation(line: 207, column: 13, scope: !6151)
!6156 = !DILocation(line: 207, column: 16, scope: !6151)
!6157 = !DILocation(line: 207, column: 3, scope: !6151)
!6158 = !DILocation(line: 208, column: 9, scope: !6151)
!6159 = !DILocation(line: 208, column: 3, scope: !6151)
!6160 = !DILocation(line: 209, column: 2, scope: !6151)
!6161 = !DILocation(line: 210, column: 2, scope: !6125)
!6162 = !DILocation(line: 211, column: 1, scope: !6125)
!6163 = !DISubprogram(name: "remove_proc_entry", scope: !5813, file: !5813, line: 125, type: !6164, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6164 = !DISubroutineType(types: !6165)
!6165 = !{null, !883, !5811}
!6166 = distinct !DISubprogram(name: "list_del", scope: !6107, file: !6107, line: 227, type: !6167, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6169)
!6167 = !DISubroutineType(types: !6168)
!6168 = !{null, !235}
!6169 = !{!6170}
!6170 = !DILocalVariable(name: "entry", arg: 1, scope: !6166, file: !6107, line: 227, type: !235)
!6171 = !DILocation(line: 227, column: 47, scope: !6166)
!6172 = !DILocation(line: 229, column: 19, scope: !6166)
!6173 = !DILocation(line: 229, column: 2, scope: !6166)
!6174 = !DILocation(line: 230, column: 2, scope: !6166)
!6175 = !DILocation(line: 230, column: 9, scope: !6166)
!6176 = !DILocation(line: 230, column: 14, scope: !6166)
!6177 = !DILocation(line: 231, column: 2, scope: !6166)
!6178 = !DILocation(line: 231, column: 9, scope: !6166)
!6179 = !DILocation(line: 231, column: 14, scope: !6166)
!6180 = !DILocation(line: 232, column: 1, scope: !6166)
!6181 = distinct !DISubprogram(name: "scsi_proc_host_add", scope: !3, file: !3, line: 218, type: !5478, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6182)
!6182 = !{!6183, !6184, !6185, !6186, !6187, !6188}
!6183 = !DILocalVariable(name: "shost", arg: 1, scope: !6181, file: !3, line: 218, type: !247)
!6184 = !DILocalVariable(name: "sht", scope: !6181, file: !3, line: 220, type: !238)
!6185 = !DILocalVariable(name: "e", scope: !6181, file: !3, line: 221, type: !228)
!6186 = !DILocalVariable(name: "p", scope: !6181, file: !3, line: 222, type: !5811)
!6187 = !DILocalVariable(name: "name", scope: !6181, file: !3, line: 223, type: !5853)
!6188 = !DILabel(scope: !6181, name: "err", file: !3, line: 239)
!6189 = !DILocation(line: 218, column: 43, scope: !6181)
!6190 = !DILocation(line: 220, column: 2, scope: !6181)
!6191 = !DILocation(line: 220, column: 35, scope: !6181)
!6192 = !DILocation(line: 220, column: 41, scope: !6181)
!6193 = !DILocation(line: 220, column: 48, scope: !6181)
!6194 = !DILocation(line: 221, column: 2, scope: !6181)
!6195 = !DILocation(line: 221, column: 26, scope: !6181)
!6196 = !DILocation(line: 222, column: 2, scope: !6181)
!6197 = !DILocation(line: 222, column: 25, scope: !6181)
!6198 = !DILocation(line: 223, column: 2, scope: !6181)
!6199 = !DILocation(line: 223, column: 7, scope: !6181)
!6200 = !DILocation(line: 225, column: 7, scope: !6201)
!6201 = distinct !DILexicalBlock(scope: !6181, file: !3, line: 225, column: 6)
!6202 = !DILocation(line: 225, column: 12, scope: !6201)
!6203 = !DILocation(line: 225, column: 6, scope: !6181)
!6204 = !DILocation(line: 226, column: 3, scope: !6201)
!6205 = !DILocation(line: 228, column: 29, scope: !6181)
!6206 = !DILocation(line: 228, column: 6, scope: !6181)
!6207 = !DILocation(line: 228, column: 4, scope: !6181)
!6208 = !DILocation(line: 229, column: 7, scope: !6209)
!6209 = distinct !DILexicalBlock(scope: !6181, file: !3, line: 229, column: 6)
!6210 = !DILocation(line: 229, column: 6, scope: !6181)
!6211 = !DILocation(line: 230, column: 3, scope: !6209)
!6212 = !DILocation(line: 232, column: 10, scope: !6181)
!6213 = !DILocation(line: 232, column: 21, scope: !6181)
!6214 = !DILocation(line: 232, column: 28, scope: !6181)
!6215 = !DILocation(line: 232, column: 2, scope: !6181)
!6216 = !DILocation(line: 233, column: 23, scope: !6181)
!6217 = !DILocation(line: 233, column: 48, scope: !6181)
!6218 = !DILocation(line: 233, column: 51, scope: !6181)
!6219 = !DILocation(line: 234, column: 25, scope: !6181)
!6220 = !DILocation(line: 233, column: 6, scope: !6181)
!6221 = !DILocation(line: 233, column: 4, scope: !6181)
!6222 = !DILocation(line: 235, column: 7, scope: !6223)
!6223 = distinct !DILexicalBlock(scope: !6181, file: !3, line: 235, column: 6)
!6224 = !DILocation(line: 235, column: 6, scope: !6181)
!6225 = !DILocation(line: 236, column: 3, scope: !6223)
!6226 = !DILocation(line: 237, column: 2, scope: !6181)
!6227 = !DILocation(line: 239, column: 1, scope: !6181)
!6228 = !DILocation(line: 240, column: 2, scope: !6229)
!6229 = distinct !DILexicalBlock(scope: !6181, file: !3, line: 240, column: 2)
!6230 = !DILocation(line: 240, column: 2, scope: !6231)
!6231 = distinct !DILexicalBlock(scope: !6229, file: !3, line: 240, column: 2)
!6232 = !DILocation(line: 243, column: 1, scope: !6181)
!6233 = !DISubprogram(name: "sprintf", scope: !6234, file: !6234, line: 10, type: !6235, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6234 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!6235 = !DISubroutineType(types: !6236)
!6236 = !{!101, !893, !883, null}
!6237 = !DISubprogram(name: "proc_create_data", scope: !5813, file: !5813, line: 105, type: !6238, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6238 = !DISubroutineType(types: !6239)
!6239 = !{!5811, !883, !1043, !5811, !6240, !225}
!6240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5869, size: 64)
!6241 = !DISubprogram(name: "_dev_printk", scope: !6242, file: !6242, line: 41, type: !6243, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6242 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!6243 = !DISubroutineType(types: !6244)
!6244 = !{null, !883, !3192, !883, null}
!6245 = distinct !DISubprogram(name: "scsi_proc_host_rm", scope: !3, file: !3, line: 249, type: !5478, scopeLine: 250, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6246)
!6246 = !{!6247, !6248, !6249, !6250}
!6247 = !DILocalVariable(name: "shost", arg: 1, scope: !6245, file: !3, line: 249, type: !247)
!6248 = !DILocalVariable(name: "sht", scope: !6245, file: !3, line: 251, type: !238)
!6249 = !DILocalVariable(name: "e", scope: !6245, file: !3, line: 252, type: !228)
!6250 = !DILocalVariable(name: "name", scope: !6245, file: !3, line: 253, type: !5853)
!6251 = !DILocation(line: 249, column: 42, scope: !6245)
!6252 = !DILocation(line: 251, column: 2, scope: !6245)
!6253 = !DILocation(line: 251, column: 35, scope: !6245)
!6254 = !DILocation(line: 251, column: 41, scope: !6245)
!6255 = !DILocation(line: 251, column: 48, scope: !6245)
!6256 = !DILocation(line: 252, column: 2, scope: !6245)
!6257 = !DILocation(line: 252, column: 26, scope: !6245)
!6258 = !DILocation(line: 253, column: 2, scope: !6245)
!6259 = !DILocation(line: 253, column: 7, scope: !6245)
!6260 = !DILocation(line: 255, column: 7, scope: !6261)
!6261 = distinct !DILexicalBlock(scope: !6245, file: !3, line: 255, column: 6)
!6262 = !DILocation(line: 255, column: 12, scope: !6261)
!6263 = !DILocation(line: 255, column: 6, scope: !6245)
!6264 = !DILocation(line: 256, column: 3, scope: !6261)
!6265 = !DILocation(line: 258, column: 29, scope: !6245)
!6266 = !DILocation(line: 258, column: 6, scope: !6245)
!6267 = !DILocation(line: 258, column: 4, scope: !6245)
!6268 = !DILocation(line: 259, column: 7, scope: !6269)
!6269 = distinct !DILexicalBlock(scope: !6245, file: !3, line: 259, column: 6)
!6270 = !DILocation(line: 259, column: 6, scope: !6245)
!6271 = !DILocation(line: 260, column: 3, scope: !6269)
!6272 = !DILocation(line: 262, column: 10, scope: !6245)
!6273 = !DILocation(line: 262, column: 21, scope: !6245)
!6274 = !DILocation(line: 262, column: 28, scope: !6245)
!6275 = !DILocation(line: 262, column: 2, scope: !6245)
!6276 = !DILocation(line: 263, column: 20, scope: !6245)
!6277 = !DILocation(line: 263, column: 26, scope: !6245)
!6278 = !DILocation(line: 263, column: 29, scope: !6245)
!6279 = !DILocation(line: 263, column: 2, scope: !6245)
!6280 = !DILocation(line: 264, column: 1, scope: !6245)
!6281 = distinct !DISubprogram(name: "scsi_init_procfs", scope: !3, file: !3, line: 549, type: !2270, scopeLine: 550, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6282)
!6282 = !{!6283, !6284, !6285}
!6283 = !DILocalVariable(name: "pde", scope: !6281, file: !3, line: 551, type: !5811)
!6284 = !DILabel(scope: !6281, name: "err2", file: !3, line: 563)
!6285 = !DILabel(scope: !6281, name: "err1", file: !3, line: 565)
!6286 = !DILocation(line: 551, column: 2, scope: !6281)
!6287 = !DILocation(line: 551, column: 25, scope: !6281)
!6288 = !DILocation(line: 553, column: 14, scope: !6281)
!6289 = !DILocation(line: 553, column: 12, scope: !6281)
!6290 = !DILocation(line: 554, column: 7, scope: !6291)
!6291 = distinct !DILexicalBlock(scope: !6281, file: !3, line: 554, column: 6)
!6292 = !DILocation(line: 554, column: 6, scope: !6281)
!6293 = !DILocation(line: 555, column: 3, scope: !6291)
!6294 = !DILocation(line: 557, column: 8, scope: !6281)
!6295 = !DILocation(line: 557, column: 6, scope: !6281)
!6296 = !DILocation(line: 558, column: 7, scope: !6297)
!6297 = distinct !DILexicalBlock(scope: !6281, file: !3, line: 558, column: 6)
!6298 = !DILocation(line: 558, column: 6, scope: !6281)
!6299 = !DILocation(line: 559, column: 3, scope: !6297)
!6300 = !DILocation(line: 561, column: 2, scope: !6281)
!6301 = !DILocation(line: 563, column: 1, scope: !6281)
!6302 = !DILocation(line: 564, column: 2, scope: !6281)
!6303 = !DILocation(line: 565, column: 1, scope: !6281)
!6304 = !DILocation(line: 566, column: 2, scope: !6281)
!6305 = !DILocation(line: 567, column: 1, scope: !6281)
!6306 = !DISubprogram(name: "proc_create", scope: !5813, file: !5813, line: 110, type: !6307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6307 = !DISubroutineType(types: !6308)
!6308 = !{!5811, !883, !1043, !5811, !6240}
!6309 = distinct !DISubprogram(name: "scsi_exit_procfs", scope: !3, file: !3, line: 572, type: !2516, scopeLine: 573, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6310 = !DILocation(line: 574, column: 2, scope: !6309)
!6311 = !DILocation(line: 575, column: 2, scope: !6309)
!6312 = !DILocation(line: 576, column: 1, scope: !6309)
!6313 = distinct !DISubprogram(name: "kmalloc", scope: !210, file: !210, line: 591, type: !6087, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6314)
!6314 = !{!6315, !6316, !6317}
!6315 = !DILocalVariable(name: "size", arg: 1, scope: !6313, file: !210, line: 591, type: !1196)
!6316 = !DILocalVariable(name: "flags", arg: 2, scope: !6313, file: !210, line: 591, type: !226)
!6317 = !DILocalVariable(name: "index", scope: !6318, file: !210, line: 594, type: !7)
!6318 = distinct !DILexicalBlock(scope: !6319, file: !210, line: 593, column: 42)
!6319 = distinct !DILexicalBlock(scope: !6313, file: !210, line: 593, column: 6)
!6320 = !DILocation(line: 591, column: 61, scope: !6313)
!6321 = !DILocation(line: 591, column: 73, scope: !6313)
!6322 = !DILocation(line: 593, column: 27, scope: !6319)
!6323 = !DILocation(line: 593, column: 6, scope: !6319)
!6324 = !DILocation(line: 593, column: 33, scope: !6319)
!6325 = !DILocation(line: 593, column: 36, scope: !6319)
!6326 = !DILocation(line: 593, column: 6, scope: !6313)
!6327 = !DILocation(line: 594, column: 3, scope: !6318)
!6328 = !DILocation(line: 594, column: 16, scope: !6318)
!6329 = !DILocation(line: 596, column: 7, scope: !6330)
!6330 = distinct !DILexicalBlock(scope: !6318, file: !210, line: 596, column: 7)
!6331 = !DILocation(line: 596, column: 12, scope: !6330)
!6332 = !DILocation(line: 596, column: 7, scope: !6318)
!6333 = !DILocation(line: 597, column: 25, scope: !6330)
!6334 = !DILocation(line: 597, column: 31, scope: !6330)
!6335 = !DILocation(line: 597, column: 11, scope: !6330)
!6336 = !DILocation(line: 597, column: 4, scope: !6330)
!6337 = !DILocation(line: 599, column: 11, scope: !6318)
!6338 = !DILocation(line: 599, column: 9, scope: !6318)
!6339 = !DILocation(line: 601, column: 33, scope: !6318)
!6340 = !DILocation(line: 601, column: 40, scope: !6318)
!6341 = !DILocation(line: 601, column: 20, scope: !6318)
!6342 = !DILocation(line: 601, column: 5, scope: !6318)
!6343 = !DILocation(line: 601, column: 51, scope: !6318)
!6344 = !DILocation(line: 602, column: 5, scope: !6318)
!6345 = !DILocation(line: 602, column: 12, scope: !6318)
!6346 = !DILocation(line: 600, column: 10, scope: !6318)
!6347 = !DILocation(line: 600, column: 3, scope: !6318)
!6348 = !DILocation(line: 603, column: 2, scope: !6319)
!6349 = !DILocation(line: 604, column: 19, scope: !6313)
!6350 = !DILocation(line: 604, column: 25, scope: !6313)
!6351 = !DILocation(line: 604, column: 9, scope: !6313)
!6352 = !DILocation(line: 604, column: 2, scope: !6313)
!6353 = !DILocation(line: 605, column: 1, scope: !6313)
!6354 = !DISubprogram(name: "kmalloc_large", scope: !210, file: !210, line: 531, type: !6087, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6355 = distinct !DISubprogram(name: "__kmalloc_index", scope: !210, file: !210, line: 444, type: !6356, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6358)
!6356 = !DISubroutineType(types: !6357)
!6357 = !{!7, !1196, !880}
!6358 = !{!6359, !6360}
!6359 = !DILocalVariable(name: "size", arg: 1, scope: !6355, file: !210, line: 444, type: !1196)
!6360 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6355, file: !210, line: 445, type: !880)
!6361 = !DILocation(line: 444, column: 60, scope: !6355)
!6362 = !DILocation(line: 445, column: 16, scope: !6355)
!6363 = !DILocation(line: 447, column: 7, scope: !6364)
!6364 = distinct !DILexicalBlock(scope: !6355, file: !210, line: 447, column: 6)
!6365 = !DILocation(line: 447, column: 6, scope: !6355)
!6366 = !DILocation(line: 448, column: 3, scope: !6364)
!6367 = !DILocation(line: 450, column: 6, scope: !6368)
!6368 = distinct !DILexicalBlock(scope: !6355, file: !210, line: 450, column: 6)
!6369 = !DILocation(line: 450, column: 11, scope: !6368)
!6370 = !DILocation(line: 450, column: 6, scope: !6355)
!6371 = !DILocation(line: 451, column: 3, scope: !6368)
!6372 = !DILocation(line: 453, column: 32, scope: !6373)
!6373 = distinct !DILexicalBlock(scope: !6355, file: !210, line: 453, column: 6)
!6374 = !DILocation(line: 453, column: 37, scope: !6373)
!6375 = !DILocation(line: 453, column: 42, scope: !6373)
!6376 = !DILocation(line: 453, column: 45, scope: !6373)
!6377 = !DILocation(line: 453, column: 50, scope: !6373)
!6378 = !DILocation(line: 453, column: 6, scope: !6355)
!6379 = !DILocation(line: 454, column: 3, scope: !6373)
!6380 = !DILocation(line: 455, column: 32, scope: !6381)
!6381 = distinct !DILexicalBlock(scope: !6355, file: !210, line: 455, column: 6)
!6382 = !DILocation(line: 455, column: 37, scope: !6381)
!6383 = !DILocation(line: 455, column: 43, scope: !6381)
!6384 = !DILocation(line: 455, column: 46, scope: !6381)
!6385 = !DILocation(line: 455, column: 51, scope: !6381)
!6386 = !DILocation(line: 455, column: 6, scope: !6355)
!6387 = !DILocation(line: 456, column: 3, scope: !6381)
!6388 = !DILocation(line: 457, column: 6, scope: !6389)
!6389 = distinct !DILexicalBlock(scope: !6355, file: !210, line: 457, column: 6)
!6390 = !DILocation(line: 457, column: 11, scope: !6389)
!6391 = !DILocation(line: 457, column: 6, scope: !6355)
!6392 = !DILocation(line: 457, column: 26, scope: !6389)
!6393 = !DILocation(line: 458, column: 6, scope: !6394)
!6394 = distinct !DILexicalBlock(scope: !6355, file: !210, line: 458, column: 6)
!6395 = !DILocation(line: 458, column: 11, scope: !6394)
!6396 = !DILocation(line: 458, column: 6, scope: !6355)
!6397 = !DILocation(line: 458, column: 26, scope: !6394)
!6398 = !DILocation(line: 459, column: 6, scope: !6399)
!6399 = distinct !DILexicalBlock(scope: !6355, file: !210, line: 459, column: 6)
!6400 = !DILocation(line: 459, column: 11, scope: !6399)
!6401 = !DILocation(line: 459, column: 6, scope: !6355)
!6402 = !DILocation(line: 459, column: 26, scope: !6399)
!6403 = !DILocation(line: 460, column: 6, scope: !6404)
!6404 = distinct !DILexicalBlock(scope: !6355, file: !210, line: 460, column: 6)
!6405 = !DILocation(line: 460, column: 11, scope: !6404)
!6406 = !DILocation(line: 460, column: 6, scope: !6355)
!6407 = !DILocation(line: 460, column: 26, scope: !6404)
!6408 = !DILocation(line: 461, column: 6, scope: !6409)
!6409 = distinct !DILexicalBlock(scope: !6355, file: !210, line: 461, column: 6)
!6410 = !DILocation(line: 461, column: 11, scope: !6409)
!6411 = !DILocation(line: 461, column: 6, scope: !6355)
!6412 = !DILocation(line: 461, column: 26, scope: !6409)
!6413 = !DILocation(line: 462, column: 6, scope: !6414)
!6414 = distinct !DILexicalBlock(scope: !6355, file: !210, line: 462, column: 6)
!6415 = !DILocation(line: 462, column: 11, scope: !6414)
!6416 = !DILocation(line: 462, column: 6, scope: !6355)
!6417 = !DILocation(line: 462, column: 26, scope: !6414)
!6418 = !DILocation(line: 463, column: 6, scope: !6419)
!6419 = distinct !DILexicalBlock(scope: !6355, file: !210, line: 463, column: 6)
!6420 = !DILocation(line: 463, column: 11, scope: !6419)
!6421 = !DILocation(line: 463, column: 6, scope: !6355)
!6422 = !DILocation(line: 463, column: 26, scope: !6419)
!6423 = !DILocation(line: 464, column: 6, scope: !6424)
!6424 = distinct !DILexicalBlock(scope: !6355, file: !210, line: 464, column: 6)
!6425 = !DILocation(line: 464, column: 11, scope: !6424)
!6426 = !DILocation(line: 464, column: 6, scope: !6355)
!6427 = !DILocation(line: 464, column: 26, scope: !6424)
!6428 = !DILocation(line: 465, column: 6, scope: !6429)
!6429 = distinct !DILexicalBlock(scope: !6355, file: !210, line: 465, column: 6)
!6430 = !DILocation(line: 465, column: 11, scope: !6429)
!6431 = !DILocation(line: 465, column: 6, scope: !6355)
!6432 = !DILocation(line: 465, column: 26, scope: !6429)
!6433 = !DILocation(line: 466, column: 6, scope: !6434)
!6434 = distinct !DILexicalBlock(scope: !6355, file: !210, line: 466, column: 6)
!6435 = !DILocation(line: 466, column: 11, scope: !6434)
!6436 = !DILocation(line: 466, column: 6, scope: !6355)
!6437 = !DILocation(line: 466, column: 26, scope: !6434)
!6438 = !DILocation(line: 467, column: 6, scope: !6439)
!6439 = distinct !DILexicalBlock(scope: !6355, file: !210, line: 467, column: 6)
!6440 = !DILocation(line: 467, column: 11, scope: !6439)
!6441 = !DILocation(line: 467, column: 6, scope: !6355)
!6442 = !DILocation(line: 467, column: 26, scope: !6439)
!6443 = !DILocation(line: 468, column: 6, scope: !6444)
!6444 = distinct !DILexicalBlock(scope: !6355, file: !210, line: 468, column: 6)
!6445 = !DILocation(line: 468, column: 11, scope: !6444)
!6446 = !DILocation(line: 468, column: 6, scope: !6355)
!6447 = !DILocation(line: 468, column: 26, scope: !6444)
!6448 = !DILocation(line: 469, column: 6, scope: !6449)
!6449 = distinct !DILexicalBlock(scope: !6355, file: !210, line: 469, column: 6)
!6450 = !DILocation(line: 469, column: 11, scope: !6449)
!6451 = !DILocation(line: 469, column: 6, scope: !6355)
!6452 = !DILocation(line: 469, column: 26, scope: !6449)
!6453 = !DILocation(line: 470, column: 6, scope: !6454)
!6454 = distinct !DILexicalBlock(scope: !6355, file: !210, line: 470, column: 6)
!6455 = !DILocation(line: 470, column: 11, scope: !6454)
!6456 = !DILocation(line: 470, column: 6, scope: !6355)
!6457 = !DILocation(line: 470, column: 26, scope: !6454)
!6458 = !DILocation(line: 471, column: 6, scope: !6459)
!6459 = distinct !DILexicalBlock(scope: !6355, file: !210, line: 471, column: 6)
!6460 = !DILocation(line: 471, column: 11, scope: !6459)
!6461 = !DILocation(line: 471, column: 6, scope: !6355)
!6462 = !DILocation(line: 471, column: 26, scope: !6459)
!6463 = !DILocation(line: 472, column: 6, scope: !6464)
!6464 = distinct !DILexicalBlock(scope: !6355, file: !210, line: 472, column: 6)
!6465 = !DILocation(line: 472, column: 11, scope: !6464)
!6466 = !DILocation(line: 472, column: 6, scope: !6355)
!6467 = !DILocation(line: 472, column: 26, scope: !6464)
!6468 = !DILocation(line: 473, column: 6, scope: !6469)
!6469 = distinct !DILexicalBlock(scope: !6355, file: !210, line: 473, column: 6)
!6470 = !DILocation(line: 473, column: 11, scope: !6469)
!6471 = !DILocation(line: 473, column: 6, scope: !6355)
!6472 = !DILocation(line: 473, column: 26, scope: !6469)
!6473 = !DILocation(line: 474, column: 6, scope: !6474)
!6474 = distinct !DILexicalBlock(scope: !6355, file: !210, line: 474, column: 6)
!6475 = !DILocation(line: 474, column: 11, scope: !6474)
!6476 = !DILocation(line: 474, column: 6, scope: !6355)
!6477 = !DILocation(line: 474, column: 27, scope: !6474)
!6478 = !DILocation(line: 475, column: 6, scope: !6479)
!6479 = distinct !DILexicalBlock(scope: !6355, file: !210, line: 475, column: 6)
!6480 = !DILocation(line: 475, column: 11, scope: !6479)
!6481 = !DILocation(line: 475, column: 6, scope: !6355)
!6482 = !DILocation(line: 475, column: 32, scope: !6479)
!6483 = !DILocation(line: 477, column: 50, scope: !6484)
!6484 = distinct !DILexicalBlock(scope: !6355, file: !210, line: 477, column: 6)
!6485 = !{i8 0, i8 2}
!6486 = !DILocation(line: 477, column: 6, scope: !6355)
!6487 = !DILocation(line: 478, column: 3, scope: !6484)
!6488 = !DILocation(line: 478, column: 3, scope: !6489)
!6489 = distinct !DILexicalBlock(scope: !6490, file: !210, line: 478, column: 3)
!6490 = distinct !DILexicalBlock(scope: !6484, file: !210, line: 478, column: 3)
!6491 = !{i32 -2141851767}
!6492 = !DILocation(line: 478, column: 3, scope: !6490)
!6493 = !DILocation(line: 480, column: 3, scope: !6484)
!6494 = !DILocation(line: 480, column: 3, scope: !6495)
!6495 = distinct !DILexicalBlock(scope: !6484, file: !210, line: 480, column: 3)
!6496 = !DILocation(line: 480, column: 3, scope: !6497)
!6497 = distinct !DILexicalBlock(scope: !6495, file: !210, line: 480, column: 3)
!6498 = !DILocation(line: 480, column: 3, scope: !6499)
!6499 = distinct !DILexicalBlock(scope: !6495, file: !210, line: 480, column: 3)
!6500 = !{i64 2153115732, i64 2153115761, i64 2153115807, i64 2153115865, i64 2153115919, i64 2153115973, i64 2153116028, i64 2153116059}
!6501 = !DILocation(line: 483, column: 2, scope: !6355)
!6502 = !DILocation(line: 484, column: 1, scope: !6355)
!6503 = !DISubprogram(name: "kmalloc_trace", scope: !210, file: !210, line: 525, type: !6504, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6504 = !DISubroutineType(types: !6505)
!6505 = !{!225, !2885, !226, !1196}
!6506 = distinct !DISubprogram(name: "kmalloc_type", scope: !210, file: !210, line: 401, type: !6507, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6509)
!6507 = !DISubroutineType(types: !6508)
!6508 = !{!209, !226, !332}
!6509 = !{!6510, !6511}
!6510 = !DILocalVariable(name: "flags", arg: 1, scope: !6506, file: !210, line: 401, type: !226)
!6511 = !DILocalVariable(name: "caller", arg: 2, scope: !6506, file: !210, line: 401, type: !332)
!6512 = !DILocation(line: 401, column: 67, scope: !6506)
!6513 = !DILocation(line: 401, column: 88, scope: !6506)
!6514 = !DILocation(line: 407, column: 6, scope: !6515)
!6515 = distinct !DILexicalBlock(scope: !6506, file: !210, line: 407, column: 6)
!6516 = !DILocation(line: 407, column: 6, scope: !6506)
!6517 = !DILocation(line: 413, column: 3, scope: !6515)
!6518 = !DILocation(line: 423, column: 38, scope: !6519)
!6519 = distinct !DILexicalBlock(scope: !6506, file: !210, line: 423, column: 6)
!6520 = !DILocation(line: 423, column: 44, scope: !6519)
!6521 = !DILocation(line: 423, column: 6, scope: !6506)
!6522 = !DILocation(line: 424, column: 3, scope: !6519)
!6523 = !DILocation(line: 426, column: 3, scope: !6524)
!6524 = distinct !DILexicalBlock(scope: !6506, file: !210, line: 425, column: 6)
!6525 = !DILocation(line: 429, column: 1, scope: !6506)
!6526 = !DISubprogram(name: "__kmalloc", scope: !210, file: !210, line: 488, type: !6087, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6527 = !DISubprogram(name: "__compiletime_assert_229", scope: !210, file: !210, line: 478, type: !2516, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6528 = distinct !DISubprogram(name: "__list_add", scope: !6107, file: !6107, line: 146, type: !6529, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6531)
!6529 = !DISubroutineType(types: !6530)
!6530 = !{null, !235, !235, !235}
!6531 = !{!6532, !6533, !6534}
!6532 = !DILocalVariable(name: "new", arg: 1, scope: !6528, file: !6107, line: 146, type: !235)
!6533 = !DILocalVariable(name: "prev", arg: 2, scope: !6528, file: !6107, line: 147, type: !235)
!6534 = !DILocalVariable(name: "next", arg: 3, scope: !6528, file: !6107, line: 148, type: !235)
!6535 = !DILocation(line: 146, column: 49, scope: !6528)
!6536 = !DILocation(line: 147, column: 28, scope: !6528)
!6537 = !DILocation(line: 148, column: 28, scope: !6528)
!6538 = !DILocation(line: 150, column: 24, scope: !6539)
!6539 = distinct !DILexicalBlock(scope: !6528, file: !6107, line: 150, column: 6)
!6540 = !DILocation(line: 150, column: 29, scope: !6539)
!6541 = !DILocation(line: 150, column: 35, scope: !6539)
!6542 = !DILocation(line: 150, column: 7, scope: !6539)
!6543 = !DILocation(line: 150, column: 6, scope: !6528)
!6544 = !DILocation(line: 151, column: 3, scope: !6539)
!6545 = !DILocation(line: 153, column: 15, scope: !6528)
!6546 = !DILocation(line: 153, column: 2, scope: !6528)
!6547 = !DILocation(line: 153, column: 8, scope: !6528)
!6548 = !DILocation(line: 153, column: 13, scope: !6528)
!6549 = !DILocation(line: 154, column: 14, scope: !6528)
!6550 = !DILocation(line: 154, column: 2, scope: !6528)
!6551 = !DILocation(line: 154, column: 7, scope: !6528)
!6552 = !DILocation(line: 154, column: 12, scope: !6528)
!6553 = !DILocation(line: 155, column: 14, scope: !6528)
!6554 = !DILocation(line: 155, column: 2, scope: !6528)
!6555 = !DILocation(line: 155, column: 7, scope: !6528)
!6556 = !DILocation(line: 155, column: 12, scope: !6528)
!6557 = !DILocation(line: 156, column: 2, scope: !6528)
!6558 = !DILocation(line: 156, column: 2, scope: !6559)
!6559 = distinct !DILexicalBlock(scope: !6528, file: !6107, line: 156, column: 2)
!6560 = !DILocation(line: 156, column: 2, scope: !6561)
!6561 = distinct !DILexicalBlock(scope: !6559, file: !6107, line: 156, column: 2)
!6562 = !DILocation(line: 156, column: 2, scope: !6563)
!6563 = distinct !DILexicalBlock(scope: !6559, file: !6107, line: 156, column: 2)
!6564 = !DILocation(line: 157, column: 1, scope: !6528)
!6565 = distinct !DISubprogram(name: "__list_add_valid", scope: !6107, file: !6107, line: 128, type: !6566, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6568)
!6566 = !DISubroutineType(types: !6567)
!6567 = !{!880, !235, !235, !235}
!6568 = !{!6569, !6570, !6571}
!6569 = !DILocalVariable(name: "new", arg: 1, scope: !6565, file: !6107, line: 128, type: !235)
!6570 = !DILocalVariable(name: "prev", arg: 2, scope: !6565, file: !6107, line: 129, type: !235)
!6571 = !DILocalVariable(name: "next", arg: 3, scope: !6565, file: !6107, line: 130, type: !235)
!6572 = !DILocation(line: 128, column: 55, scope: !6565)
!6573 = !DILocation(line: 129, column: 23, scope: !6565)
!6574 = !DILocation(line: 130, column: 23, scope: !6565)
!6575 = !DILocation(line: 132, column: 2, scope: !6565)
!6576 = distinct !DISubprogram(name: "__list_del_entry", scope: !6107, file: !6107, line: 213, type: !6167, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6577)
!6577 = !{!6578}
!6578 = !DILocalVariable(name: "entry", arg: 1, scope: !6576, file: !6107, line: 213, type: !235)
!6579 = !DILocation(line: 213, column: 55, scope: !6576)
!6580 = !DILocation(line: 215, column: 30, scope: !6581)
!6581 = distinct !DILexicalBlock(scope: !6576, file: !6107, line: 215, column: 6)
!6582 = !DILocation(line: 215, column: 7, scope: !6581)
!6583 = !DILocation(line: 215, column: 6, scope: !6576)
!6584 = !DILocation(line: 216, column: 3, scope: !6581)
!6585 = !DILocation(line: 218, column: 13, scope: !6576)
!6586 = !DILocation(line: 218, column: 20, scope: !6576)
!6587 = !DILocation(line: 218, column: 26, scope: !6576)
!6588 = !DILocation(line: 218, column: 33, scope: !6576)
!6589 = !DILocation(line: 218, column: 2, scope: !6576)
!6590 = !DILocation(line: 219, column: 1, scope: !6576)
!6591 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !6107, file: !6107, line: 134, type: !6592, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6594)
!6592 = !DISubroutineType(types: !6593)
!6593 = !{!880, !235}
!6594 = !{!6595}
!6595 = !DILocalVariable(name: "entry", arg: 1, scope: !6591, file: !6107, line: 134, type: !235)
!6596 = !DILocation(line: 134, column: 61, scope: !6591)
!6597 = !DILocation(line: 136, column: 2, scope: !6591)
!6598 = distinct !DISubprogram(name: "__list_del", scope: !6107, file: !6107, line: 193, type: !6108, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6599)
!6599 = !{!6600, !6601}
!6600 = !DILocalVariable(name: "prev", arg: 1, scope: !6598, file: !6107, line: 193, type: !235)
!6601 = !DILocalVariable(name: "next", arg: 2, scope: !6598, file: !6107, line: 193, type: !235)
!6602 = !DILocation(line: 193, column: 50, scope: !6598)
!6603 = !DILocation(line: 193, column: 75, scope: !6598)
!6604 = !DILocation(line: 195, column: 15, scope: !6598)
!6605 = !DILocation(line: 195, column: 2, scope: !6598)
!6606 = !DILocation(line: 195, column: 8, scope: !6598)
!6607 = !DILocation(line: 195, column: 13, scope: !6598)
!6608 = !DILocation(line: 196, column: 2, scope: !6598)
!6609 = !DILocation(line: 196, column: 2, scope: !6610)
!6610 = distinct !DILexicalBlock(scope: !6598, file: !6107, line: 196, column: 2)
!6611 = !DILocation(line: 196, column: 2, scope: !6612)
!6612 = distinct !DILexicalBlock(scope: !6610, file: !6107, line: 196, column: 2)
!6613 = !DILocation(line: 196, column: 2, scope: !6614)
!6614 = distinct !DILexicalBlock(scope: !6610, file: !6107, line: 196, column: 2)
!6615 = !DILocation(line: 197, column: 1, scope: !6598)
!6616 = distinct !DISubprogram(name: "proc_scsi_host_open", scope: !3, file: !3, line: 95, type: !4244, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6617)
!6617 = !{!6618, !6619}
!6618 = !DILocalVariable(name: "inode", arg: 1, scope: !6616, file: !3, line: 95, type: !1039)
!6619 = !DILocalVariable(name: "file", arg: 2, scope: !6616, file: !3, line: 95, type: !668)
!6620 = !DILocation(line: 95, column: 46, scope: !6616)
!6621 = !DILocation(line: 95, column: 66, scope: !6616)
!6622 = !DILocation(line: 97, column: 26, scope: !6616)
!6623 = !DILocation(line: 97, column: 57, scope: !6616)
!6624 = !DILocation(line: 97, column: 48, scope: !6616)
!6625 = !DILocation(line: 97, column: 9, scope: !6616)
!6626 = !DILocation(line: 97, column: 2, scope: !6616)
!6627 = distinct !DISubprogram(name: "proc_scsi_host_write", scope: !3, file: !3, line: 64, type: !4207, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6628)
!6628 = !{!6629, !6630, !6631, !6632, !6633, !6634, !6635, !6636}
!6629 = !DILocalVariable(name: "file", arg: 1, scope: !6627, file: !3, line: 64, type: !668)
!6630 = !DILocalVariable(name: "buf", arg: 2, scope: !6627, file: !3, line: 64, type: !883)
!6631 = !DILocalVariable(name: "count", arg: 3, scope: !6627, file: !3, line: 65, type: !1196)
!6632 = !DILocalVariable(name: "ppos", arg: 4, scope: !6627, file: !3, line: 65, type: !2077)
!6633 = !DILocalVariable(name: "shost", scope: !6627, file: !3, line: 67, type: !247)
!6634 = !DILocalVariable(name: "ret", scope: !6627, file: !3, line: 68, type: !1193)
!6635 = !DILocalVariable(name: "page", scope: !6627, file: !3, line: 69, type: !893)
!6636 = !DILabel(scope: !6627, name: "out", file: !3, line: 84)
!6637 = !DILocation(line: 64, column: 50, scope: !6627)
!6638 = !DILocation(line: 64, column: 75, scope: !6627)
!6639 = !DILocation(line: 65, column: 35, scope: !6627)
!6640 = !DILocation(line: 65, column: 50, scope: !6627)
!6641 = !DILocation(line: 67, column: 2, scope: !6627)
!6642 = !DILocation(line: 67, column: 20, scope: !6627)
!6643 = !DILocation(line: 67, column: 48, scope: !6627)
!6644 = !DILocation(line: 67, column: 37, scope: !6627)
!6645 = !DILocation(line: 67, column: 28, scope: !6627)
!6646 = !DILocation(line: 68, column: 2, scope: !6627)
!6647 = !DILocation(line: 68, column: 10, scope: !6627)
!6648 = !DILocation(line: 69, column: 2, scope: !6627)
!6649 = !DILocation(line: 69, column: 8, scope: !6627)
!6650 = !DILocation(line: 71, column: 6, scope: !6651)
!6651 = distinct !DILexicalBlock(scope: !6627, file: !3, line: 71, column: 6)
!6652 = !DILocation(line: 71, column: 12, scope: !6651)
!6653 = !DILocation(line: 71, column: 6, scope: !6627)
!6654 = !DILocation(line: 72, column: 3, scope: !6651)
!6655 = !DILocation(line: 74, column: 7, scope: !6656)
!6656 = distinct !DILexicalBlock(scope: !6627, file: !3, line: 74, column: 6)
!6657 = !DILocation(line: 74, column: 14, scope: !6656)
!6658 = !DILocation(line: 74, column: 21, scope: !6656)
!6659 = !DILocation(line: 74, column: 6, scope: !6627)
!6660 = !DILocation(line: 75, column: 3, scope: !6656)
!6661 = !DILocation(line: 77, column: 17, scope: !6627)
!6662 = !DILocation(line: 77, column: 9, scope: !6627)
!6663 = !DILocation(line: 77, column: 7, scope: !6627)
!6664 = !DILocation(line: 78, column: 6, scope: !6665)
!6665 = distinct !DILexicalBlock(scope: !6627, file: !3, line: 78, column: 6)
!6666 = !DILocation(line: 78, column: 6, scope: !6627)
!6667 = !DILocation(line: 79, column: 7, scope: !6668)
!6668 = distinct !DILexicalBlock(scope: !6665, file: !3, line: 78, column: 12)
!6669 = !DILocation(line: 80, column: 22, scope: !6670)
!6670 = distinct !DILexicalBlock(scope: !6668, file: !3, line: 80, column: 7)
!6671 = !DILocation(line: 80, column: 28, scope: !6670)
!6672 = !DILocation(line: 80, column: 33, scope: !6670)
!6673 = !DILocation(line: 80, column: 7, scope: !6670)
!6674 = !DILocation(line: 80, column: 7, scope: !6668)
!6675 = !DILocation(line: 81, column: 4, scope: !6670)
!6676 = !DILocation(line: 82, column: 9, scope: !6668)
!6677 = !DILocation(line: 82, column: 16, scope: !6668)
!6678 = !DILocation(line: 82, column: 23, scope: !6668)
!6679 = !DILocation(line: 82, column: 34, scope: !6668)
!6680 = !DILocation(line: 82, column: 41, scope: !6668)
!6681 = !DILocation(line: 82, column: 47, scope: !6668)
!6682 = !DILocation(line: 82, column: 7, scope: !6668)
!6683 = !DILocation(line: 83, column: 2, scope: !6668)
!6684 = !DILocation(line: 84, column: 1, scope: !6627)
!6685 = !DILocation(line: 85, column: 2, scope: !6627)
!6686 = !DILocation(line: 86, column: 9, scope: !6627)
!6687 = !DILocation(line: 86, column: 2, scope: !6627)
!6688 = !DILocation(line: 87, column: 1, scope: !6627)
!6689 = !DISubprogram(name: "single_open_size", scope: !2058, file: !2058, line: 167, type: !6690, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6690 = !DISubroutineType(types: !6691)
!6691 = !{!101, !668, !2087, !225, !1196}
!6692 = distinct !DISubprogram(name: "proc_scsi_show", scope: !3, file: !3, line: 89, type: !2088, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6693)
!6693 = !{!6694, !6695, !6696}
!6694 = !DILocalVariable(name: "m", arg: 1, scope: !6692, file: !3, line: 89, type: !2056)
!6695 = !DILocalVariable(name: "v", arg: 2, scope: !6692, file: !3, line: 89, type: !225)
!6696 = !DILocalVariable(name: "shost", scope: !6692, file: !3, line: 91, type: !247)
!6697 = !DILocation(line: 89, column: 44, scope: !6692)
!6698 = !DILocation(line: 89, column: 53, scope: !6692)
!6699 = !DILocation(line: 91, column: 2, scope: !6692)
!6700 = !DILocation(line: 91, column: 20, scope: !6692)
!6701 = !DILocation(line: 91, column: 28, scope: !6692)
!6702 = !DILocation(line: 91, column: 31, scope: !6692)
!6703 = !DILocation(line: 92, column: 9, scope: !6692)
!6704 = !DILocation(line: 92, column: 16, scope: !6692)
!6705 = !DILocation(line: 92, column: 23, scope: !6692)
!6706 = !DILocation(line: 92, column: 33, scope: !6692)
!6707 = !DILocation(line: 92, column: 36, scope: !6692)
!6708 = !DILocation(line: 93, column: 1, scope: !6692)
!6709 = !DILocation(line: 92, column: 2, scope: !6692)
!6710 = distinct !DISubprogram(name: "pde_data", scope: !5813, file: !5813, line: 118, type: !6711, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6713)
!6711 = !DISubroutineType(types: !6712)
!6712 = !{!225, !4102}
!6713 = !{!6714}
!6714 = !DILocalVariable(name: "inode", arg: 1, scope: !6710, file: !5813, line: 118, type: !4102)
!6715 = !DILocation(line: 118, column: 50, scope: !6710)
!6716 = !DILocation(line: 120, column: 9, scope: !6710)
!6717 = !DILocation(line: 120, column: 16, scope: !6710)
!6718 = !DILocation(line: 120, column: 2, scope: !6710)
!6719 = distinct !DISubprogram(name: "file_inode", scope: !64, file: !64, line: 1073, type: !6720, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6722)
!6720 = !DISubroutineType(types: !6721)
!6721 = !{!1039, !2092}
!6722 = !{!6723}
!6723 = !DILocalVariable(name: "f", arg: 1, scope: !6719, file: !64, line: 1073, type: !2092)
!6724 = !DILocation(line: 1073, column: 59, scope: !6719)
!6725 = !DILocation(line: 1075, column: 9, scope: !6719)
!6726 = !DILocation(line: 1075, column: 12, scope: !6719)
!6727 = !DILocation(line: 1075, column: 2, scope: !6719)
!6728 = !DISubprogram(name: "__get_free_pages", scope: !6729, file: !6729, line: 289, type: !6730, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6729 = !DIFile(filename: "./include/linux/gfp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9839e6e1390b3a0e2df74dd95101fbc5")
!6730 = !DISubroutineType(types: !6731)
!6731 = !{!332, !226, !7}
!6732 = distinct !DISubprogram(name: "copy_from_user", scope: !6733, file: !6733, line: 180, type: !6734, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6736)
!6733 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!6734 = !DISubroutineType(types: !6735)
!6735 = !{!332, !225, !1992, !332}
!6736 = !{!6737, !6738, !6739}
!6737 = !DILocalVariable(name: "to", arg: 1, scope: !6732, file: !6733, line: 180, type: !225)
!6738 = !DILocalVariable(name: "from", arg: 2, scope: !6732, file: !6733, line: 180, type: !1992)
!6739 = !DILocalVariable(name: "n", arg: 3, scope: !6732, file: !6733, line: 180, type: !332)
!6740 = !DILocation(line: 180, column: 22, scope: !6732)
!6741 = !DILocation(line: 180, column: 45, scope: !6732)
!6742 = !DILocation(line: 180, column: 65, scope: !6732)
!6743 = !DILocation(line: 182, column: 22, scope: !6744)
!6744 = distinct !DILexicalBlock(scope: !6732, file: !6733, line: 182, column: 6)
!6745 = !DILocation(line: 182, column: 26, scope: !6744)
!6746 = !DILocation(line: 182, column: 6, scope: !6744)
!6747 = !DILocation(line: 182, column: 6, scope: !6732)
!6748 = !DILocation(line: 183, column: 23, scope: !6744)
!6749 = !DILocation(line: 183, column: 27, scope: !6744)
!6750 = !DILocation(line: 183, column: 33, scope: !6744)
!6751 = !DILocation(line: 183, column: 7, scope: !6744)
!6752 = !DILocation(line: 183, column: 5, scope: !6744)
!6753 = !DILocation(line: 183, column: 3, scope: !6744)
!6754 = !DILocation(line: 184, column: 9, scope: !6732)
!6755 = !DILocation(line: 184, column: 2, scope: !6732)
!6756 = !DISubprogram(name: "free_pages", scope: !6729, file: !6729, line: 303, type: !6757, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6757 = !DISubroutineType(types: !6758)
!6758 = !{null, !332, !7}
!6759 = distinct !DISubprogram(name: "check_copy_size", scope: !5886, file: !5886, line: 237, type: !6760, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6762)
!6760 = !DISubroutineType(types: !6761)
!6761 = !{!880, !1992, !1196, !880}
!6762 = !{!6763, !6764, !6765, !6766, !6767, !6770}
!6763 = !DILocalVariable(name: "addr", arg: 1, scope: !6759, file: !5886, line: 237, type: !1992)
!6764 = !DILocalVariable(name: "bytes", arg: 2, scope: !6759, file: !5886, line: 237, type: !1196)
!6765 = !DILocalVariable(name: "is_source", arg: 3, scope: !6759, file: !5886, line: 237, type: !880)
!6766 = !DILocalVariable(name: "sz", scope: !6759, file: !5886, line: 239, type: !101)
!6767 = !DILocalVariable(name: "__ret_warn_on", scope: !6768, file: !5886, line: 249, type: !101)
!6768 = distinct !DILexicalBlock(scope: !6769, file: !5886, line: 249, column: 6)
!6769 = distinct !DILexicalBlock(scope: !6759, file: !5886, line: 249, column: 6)
!6770 = !DILocalVariable(name: "__flags", scope: !6771, file: !5886, line: 249, type: !101)
!6771 = distinct !DILexicalBlock(scope: !6772, file: !5886, line: 249, column: 6)
!6772 = distinct !DILexicalBlock(scope: !6768, file: !5886, line: 249, column: 6)
!6773 = !DILocation(line: 237, column: 29, scope: !6759)
!6774 = !DILocation(line: 237, column: 42, scope: !6759)
!6775 = !DILocation(line: 237, column: 54, scope: !6759)
!6776 = !DILocation(line: 239, column: 2, scope: !6759)
!6777 = !DILocation(line: 239, column: 6, scope: !6759)
!6778 = !DILocation(line: 239, column: 33, scope: !6759)
!6779 = !DILocation(line: 239, column: 11, scope: !6759)
!6780 = !DILocation(line: 240, column: 6, scope: !6781)
!6781 = distinct !DILexicalBlock(scope: !6759, file: !5886, line: 240, column: 6)
!6782 = !DILocation(line: 0, scope: !6781)
!6783 = !DILocation(line: 240, column: 6, scope: !6759)
!6784 = !DILocation(line: 241, column: 29, scope: !6785)
!6785 = distinct !DILexicalBlock(scope: !6786, file: !5886, line: 241, column: 7)
!6786 = distinct !DILexicalBlock(scope: !6781, file: !5886, line: 240, column: 39)
!6787 = !DILocation(line: 241, column: 8, scope: !6785)
!6788 = !DILocation(line: 241, column: 7, scope: !6786)
!6789 = !DILocation(line: 242, column: 18, scope: !6785)
!6790 = !DILocation(line: 242, column: 22, scope: !6785)
!6791 = !DILocation(line: 242, column: 4, scope: !6785)
!6792 = !DILocation(line: 243, column: 12, scope: !6793)
!6793 = distinct !DILexicalBlock(scope: !6785, file: !5886, line: 243, column: 12)
!6794 = !DILocation(line: 243, column: 12, scope: !6785)
!6795 = !DILocation(line: 244, column: 4, scope: !6793)
!6796 = !{i32 2118708}
!6797 = !DILocation(line: 246, column: 4, scope: !6793)
!6798 = !{i32 2118737}
!6799 = !DILocation(line: 247, column: 3, scope: !6786)
!6800 = !DILocation(line: 249, column: 6, scope: !6768)
!6801 = !DILocation(line: 249, column: 6, scope: !6772)
!6802 = !DILocation(line: 249, column: 6, scope: !6771)
!6803 = !DILocation(line: 249, column: 6, scope: !6804)
!6804 = distinct !DILexicalBlock(scope: !6771, file: !5886, line: 249, column: 6)
!6805 = !DILocation(line: 249, column: 6, scope: !6806)
!6806 = distinct !DILexicalBlock(scope: !6771, file: !5886, line: 249, column: 6)
!6807 = !{i64 2149619170, i64 2149619199, i64 2149619245, i64 2149619303, i64 2149619357, i64 2149619411, i64 2149619466, i64 2149619497, i64 2149619805, i64 2149619811, i64 2149619858, i64 2149619881, i64 2149619907}
!6808 = !DILocation(line: 249, column: 6, scope: !6809)
!6809 = distinct !DILexicalBlock(scope: !6771, file: !5886, line: 249, column: 6)
!6810 = !DILocation(line: 249, column: 6, scope: !6769)
!6811 = !DILocation(line: 249, column: 6, scope: !6759)
!6812 = !DILocation(line: 250, column: 3, scope: !6769)
!6813 = !DILocation(line: 251, column: 20, scope: !6759)
!6814 = !DILocation(line: 251, column: 26, scope: !6759)
!6815 = !DILocation(line: 251, column: 33, scope: !6759)
!6816 = !DILocation(line: 251, column: 2, scope: !6759)
!6817 = !DILocation(line: 252, column: 2, scope: !6759)
!6818 = !DILocation(line: 253, column: 1, scope: !6759)
!6819 = !DISubprogram(name: "_copy_from_user", scope: !6733, file: !6733, line: 158, type: !6734, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6820 = distinct !DISubprogram(name: "copy_overflow", scope: !5886, file: !5886, line: 230, type: !6821, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6823)
!6821 = !DISubroutineType(types: !6822)
!6822 = !{null, !101, !332}
!6823 = !{!6824, !6825}
!6824 = !DILocalVariable(name: "size", arg: 1, scope: !6820, file: !5886, line: 230, type: !101)
!6825 = !DILocalVariable(name: "count", arg: 2, scope: !6820, file: !5886, line: 230, type: !332)
!6826 = !DILocation(line: 230, column: 38, scope: !6820)
!6827 = !DILocation(line: 230, column: 58, scope: !6820)
!6828 = !DILocation(line: 233, column: 19, scope: !6829)
!6829 = distinct !DILexicalBlock(scope: !6820, file: !5886, line: 232, column: 6)
!6830 = !DILocation(line: 233, column: 25, scope: !6829)
!6831 = !DILocation(line: 233, column: 3, scope: !6829)
!6832 = !DILocation(line: 234, column: 1, scope: !6820)
!6833 = !DISubprogram(name: "__bad_copy_from", scope: !5886, file: !5886, line: 224, type: !2516, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6834 = !DISubprogram(name: "__bad_copy_to", scope: !5886, file: !5886, line: 226, type: !2516, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6835 = distinct !DISubprogram(name: "check_object_size", scope: !5886, file: !5886, line: 218, type: !6836, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6838)
!6836 = !DISubroutineType(types: !6837)
!6837 = !{null, !1992, !332, !880}
!6838 = !{!6839, !6840, !6841}
!6839 = !DILocalVariable(name: "ptr", arg: 1, scope: !6835, file: !5886, line: 218, type: !1992)
!6840 = !DILocalVariable(name: "n", arg: 2, scope: !6835, file: !5886, line: 218, type: !332)
!6841 = !DILocalVariable(name: "to_user", arg: 3, scope: !6835, file: !5886, line: 219, type: !880)
!6842 = !DILocation(line: 218, column: 50, scope: !6835)
!6843 = !DILocation(line: 218, column: 69, scope: !6835)
!6844 = !DILocation(line: 219, column: 15, scope: !6835)
!6845 = !DILocation(line: 220, column: 3, scope: !6835)
!6846 = !DISubprogram(name: "__copy_overflow", scope: !5886, file: !5886, line: 228, type: !6821, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6847 = distinct !DISubprogram(name: "proc_scsi_open", scope: !3, file: !3, line: 529, type: !4244, scopeLine: 530, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6848)
!6848 = !{!6849, !6850}
!6849 = !DILocalVariable(name: "inode", arg: 1, scope: !6847, file: !3, line: 529, type: !1039)
!6850 = !DILocalVariable(name: "file", arg: 2, scope: !6847, file: !3, line: 529, type: !668)
!6851 = !DILocation(line: 529, column: 41, scope: !6847)
!6852 = !DILocation(line: 529, column: 61, scope: !6847)
!6853 = !DILocation(line: 535, column: 18, scope: !6847)
!6854 = !DILocation(line: 535, column: 9, scope: !6847)
!6855 = !DILocation(line: 535, column: 2, scope: !6847)
!6856 = distinct !DISubprogram(name: "proc_scsi_write", scope: !3, file: !3, line: 405, type: !4207, scopeLine: 407, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6857)
!6857 = !{!6858, !6859, !6860, !6861, !6862, !6863, !6864, !6865, !6866, !6867, !6868, !6869, !6870}
!6858 = !DILocalVariable(name: "file", arg: 1, scope: !6856, file: !3, line: 405, type: !668)
!6859 = !DILocalVariable(name: "buf", arg: 2, scope: !6856, file: !3, line: 405, type: !883)
!6860 = !DILocalVariable(name: "length", arg: 3, scope: !6856, file: !3, line: 406, type: !1196)
!6861 = !DILocalVariable(name: "ppos", arg: 4, scope: !6856, file: !3, line: 406, type: !2077)
!6862 = !DILocalVariable(name: "host", scope: !6856, file: !3, line: 408, type: !101)
!6863 = !DILocalVariable(name: "channel", scope: !6856, file: !3, line: 408, type: !101)
!6864 = !DILocalVariable(name: "id", scope: !6856, file: !3, line: 408, type: !101)
!6865 = !DILocalVariable(name: "lun", scope: !6856, file: !3, line: 408, type: !101)
!6866 = !DILocalVariable(name: "buffer", scope: !6856, file: !3, line: 409, type: !893)
!6867 = !DILocalVariable(name: "end", scope: !6856, file: !3, line: 409, type: !893)
!6868 = !DILocalVariable(name: "p", scope: !6856, file: !3, line: 409, type: !893)
!6869 = !DILocalVariable(name: "err", scope: !6856, file: !3, line: 410, type: !101)
!6870 = !DILabel(scope: !6856, name: "out", file: !3, line: 469)
!6871 = !DILocation(line: 405, column: 45, scope: !6856)
!6872 = !DILocation(line: 405, column: 70, scope: !6856)
!6873 = !DILocation(line: 406, column: 18, scope: !6856)
!6874 = !DILocation(line: 406, column: 34, scope: !6856)
!6875 = !DILocation(line: 408, column: 2, scope: !6856)
!6876 = !DILocation(line: 408, column: 6, scope: !6856)
!6877 = !DILocation(line: 408, column: 12, scope: !6856)
!6878 = !DILocation(line: 408, column: 21, scope: !6856)
!6879 = !DILocation(line: 408, column: 25, scope: !6856)
!6880 = !DILocation(line: 409, column: 2, scope: !6856)
!6881 = !DILocation(line: 409, column: 8, scope: !6856)
!6882 = !DILocation(line: 409, column: 17, scope: !6856)
!6883 = !DILocation(line: 409, column: 23, scope: !6856)
!6884 = !DILocation(line: 410, column: 2, scope: !6856)
!6885 = !DILocation(line: 410, column: 6, scope: !6856)
!6886 = !DILocation(line: 412, column: 7, scope: !6887)
!6887 = distinct !DILexicalBlock(scope: !6856, file: !3, line: 412, column: 6)
!6888 = !DILocation(line: 412, column: 11, scope: !6887)
!6889 = !DILocation(line: 412, column: 14, scope: !6887)
!6890 = !DILocation(line: 412, column: 21, scope: !6887)
!6891 = !DILocation(line: 412, column: 6, scope: !6856)
!6892 = !DILocation(line: 413, column: 3, scope: !6887)
!6893 = !DILocation(line: 415, column: 19, scope: !6856)
!6894 = !DILocation(line: 415, column: 11, scope: !6856)
!6895 = !DILocation(line: 415, column: 9, scope: !6856)
!6896 = !DILocation(line: 416, column: 7, scope: !6897)
!6897 = distinct !DILexicalBlock(scope: !6856, file: !3, line: 416, column: 6)
!6898 = !DILocation(line: 416, column: 6, scope: !6856)
!6899 = !DILocation(line: 417, column: 3, scope: !6897)
!6900 = !DILocation(line: 419, column: 6, scope: !6856)
!6901 = !DILocation(line: 420, column: 21, scope: !6902)
!6902 = distinct !DILexicalBlock(scope: !6856, file: !3, line: 420, column: 6)
!6903 = !DILocation(line: 420, column: 29, scope: !6902)
!6904 = !DILocation(line: 420, column: 34, scope: !6902)
!6905 = !DILocation(line: 420, column: 6, scope: !6902)
!6906 = !DILocation(line: 420, column: 6, scope: !6856)
!6907 = !DILocation(line: 421, column: 3, scope: !6902)
!6908 = !DILocation(line: 423, column: 6, scope: !6856)
!6909 = !DILocation(line: 424, column: 6, scope: !6910)
!6910 = distinct !DILexicalBlock(scope: !6856, file: !3, line: 424, column: 6)
!6911 = !DILocation(line: 424, column: 13, scope: !6910)
!6912 = !DILocation(line: 424, column: 6, scope: !6856)
!6913 = !DILocation(line: 425, column: 9, scope: !6914)
!6914 = distinct !DILexicalBlock(scope: !6910, file: !3, line: 424, column: 26)
!6915 = !DILocation(line: 425, column: 18, scope: !6914)
!6916 = !DILocation(line: 425, column: 16, scope: !6914)
!6917 = !DILocation(line: 425, column: 7, scope: !6914)
!6918 = !DILocation(line: 426, column: 4, scope: !6914)
!6919 = !DILocation(line: 426, column: 8, scope: !6914)
!6920 = !DILocation(line: 427, column: 2, scope: !6914)
!6921 = !DILocation(line: 428, column: 9, scope: !6922)
!6922 = distinct !DILexicalBlock(scope: !6910, file: !3, line: 427, column: 9)
!6923 = !DILocation(line: 428, column: 16, scope: !6922)
!6924 = !DILocation(line: 428, column: 28, scope: !6922)
!6925 = !DILocation(line: 428, column: 7, scope: !6922)
!6926 = !DILocation(line: 429, column: 8, scope: !6927)
!6927 = distinct !DILexicalBlock(scope: !6922, file: !3, line: 429, column: 7)
!6928 = !DILocation(line: 429, column: 7, scope: !6927)
!6929 = !DILocation(line: 429, column: 7, scope: !6922)
!6930 = !DILocation(line: 430, column: 4, scope: !6927)
!6931 = !DILocation(line: 437, column: 41, scope: !6932)
!6932 = distinct !DILexicalBlock(scope: !6856, file: !3, line: 437, column: 6)
!6933 = !DILocation(line: 437, column: 7, scope: !6932)
!6934 = !DILocation(line: 437, column: 6, scope: !6856)
!6935 = !DILocation(line: 438, column: 7, scope: !6936)
!6936 = distinct !DILexicalBlock(scope: !6932, file: !3, line: 437, column: 54)
!6937 = !DILocation(line: 438, column: 14, scope: !6936)
!6938 = !DILocation(line: 438, column: 5, scope: !6936)
!6939 = !DILocation(line: 440, column: 14, scope: !6936)
!6940 = !DILocation(line: 440, column: 22, scope: !6936)
!6941 = !DILocation(line: 440, column: 20, scope: !6936)
!6942 = !DILocation(line: 440, column: 13, scope: !6936)
!6943 = !DILocation(line: 440, column: 44, scope: !6936)
!6944 = !DILocation(line: 440, column: 29, scope: !6936)
!6945 = !DILocation(line: 440, column: 11, scope: !6936)
!6946 = !DILocation(line: 441, column: 14, scope: !6936)
!6947 = !DILocation(line: 441, column: 16, scope: !6936)
!6948 = !DILocation(line: 441, column: 22, scope: !6936)
!6949 = !DILocation(line: 441, column: 20, scope: !6936)
!6950 = !DILocation(line: 441, column: 13, scope: !6936)
!6951 = !DILocation(line: 441, column: 44, scope: !6936)
!6952 = !DILocation(line: 441, column: 46, scope: !6936)
!6953 = !DILocation(line: 441, column: 29, scope: !6936)
!6954 = !DILocation(line: 441, column: 11, scope: !6936)
!6955 = !DILocation(line: 442, column: 14, scope: !6936)
!6956 = !DILocation(line: 442, column: 16, scope: !6936)
!6957 = !DILocation(line: 442, column: 22, scope: !6936)
!6958 = !DILocation(line: 442, column: 20, scope: !6936)
!6959 = !DILocation(line: 442, column: 13, scope: !6936)
!6960 = !DILocation(line: 442, column: 44, scope: !6936)
!6961 = !DILocation(line: 442, column: 46, scope: !6936)
!6962 = !DILocation(line: 442, column: 29, scope: !6936)
!6963 = !DILocation(line: 442, column: 11, scope: !6936)
!6964 = !DILocation(line: 443, column: 14, scope: !6936)
!6965 = !DILocation(line: 443, column: 16, scope: !6936)
!6966 = !DILocation(line: 443, column: 22, scope: !6936)
!6967 = !DILocation(line: 443, column: 20, scope: !6936)
!6968 = !DILocation(line: 443, column: 13, scope: !6936)
!6969 = !DILocation(line: 443, column: 44, scope: !6936)
!6970 = !DILocation(line: 443, column: 46, scope: !6936)
!6971 = !DILocation(line: 443, column: 29, scope: !6936)
!6972 = !DILocation(line: 443, column: 11, scope: !6936)
!6973 = !DILocation(line: 445, column: 32, scope: !6936)
!6974 = !DILocation(line: 445, column: 38, scope: !6936)
!6975 = !DILocation(line: 445, column: 47, scope: !6936)
!6976 = !DILocation(line: 445, column: 51, scope: !6936)
!6977 = !DILocation(line: 445, column: 9, scope: !6936)
!6978 = !DILocation(line: 445, column: 7, scope: !6936)
!6979 = !DILocation(line: 451, column: 2, scope: !6936)
!6980 = !DILocation(line: 451, column: 51, scope: !6981)
!6981 = distinct !DILexicalBlock(scope: !6932, file: !3, line: 451, column: 13)
!6982 = !DILocation(line: 451, column: 14, scope: !6981)
!6983 = !DILocation(line: 451, column: 13, scope: !6932)
!6984 = !DILocation(line: 452, column: 7, scope: !6985)
!6985 = distinct !DILexicalBlock(scope: !6981, file: !3, line: 451, column: 64)
!6986 = !DILocation(line: 452, column: 14, scope: !6985)
!6987 = !DILocation(line: 452, column: 5, scope: !6985)
!6988 = !DILocation(line: 454, column: 14, scope: !6985)
!6989 = !DILocation(line: 454, column: 22, scope: !6985)
!6990 = !DILocation(line: 454, column: 20, scope: !6985)
!6991 = !DILocation(line: 454, column: 13, scope: !6985)
!6992 = !DILocation(line: 454, column: 44, scope: !6985)
!6993 = !DILocation(line: 454, column: 29, scope: !6985)
!6994 = !DILocation(line: 454, column: 11, scope: !6985)
!6995 = !DILocation(line: 455, column: 14, scope: !6985)
!6996 = !DILocation(line: 455, column: 16, scope: !6985)
!6997 = !DILocation(line: 455, column: 22, scope: !6985)
!6998 = !DILocation(line: 455, column: 20, scope: !6985)
!6999 = !DILocation(line: 455, column: 13, scope: !6985)
!7000 = !DILocation(line: 455, column: 44, scope: !6985)
!7001 = !DILocation(line: 455, column: 46, scope: !6985)
!7002 = !DILocation(line: 455, column: 29, scope: !6985)
!7003 = !DILocation(line: 455, column: 11, scope: !6985)
!7004 = !DILocation(line: 456, column: 14, scope: !6985)
!7005 = !DILocation(line: 456, column: 16, scope: !6985)
!7006 = !DILocation(line: 456, column: 22, scope: !6985)
!7007 = !DILocation(line: 456, column: 20, scope: !6985)
!7008 = !DILocation(line: 456, column: 13, scope: !6985)
!7009 = !DILocation(line: 456, column: 44, scope: !6985)
!7010 = !DILocation(line: 456, column: 46, scope: !6985)
!7011 = !DILocation(line: 456, column: 29, scope: !6985)
!7012 = !DILocation(line: 456, column: 11, scope: !6985)
!7013 = !DILocation(line: 457, column: 14, scope: !6985)
!7014 = !DILocation(line: 457, column: 16, scope: !6985)
!7015 = !DILocation(line: 457, column: 22, scope: !6985)
!7016 = !DILocation(line: 457, column: 20, scope: !6985)
!7017 = !DILocation(line: 457, column: 13, scope: !6985)
!7018 = !DILocation(line: 457, column: 44, scope: !6985)
!7019 = !DILocation(line: 457, column: 46, scope: !6985)
!7020 = !DILocation(line: 457, column: 29, scope: !6985)
!7021 = !DILocation(line: 457, column: 11, scope: !6985)
!7022 = !DILocation(line: 459, column: 35, scope: !6985)
!7023 = !DILocation(line: 459, column: 41, scope: !6985)
!7024 = !DILocation(line: 459, column: 50, scope: !6985)
!7025 = !DILocation(line: 459, column: 54, scope: !6985)
!7026 = !DILocation(line: 459, column: 9, scope: !6985)
!7027 = !DILocation(line: 459, column: 7, scope: !6985)
!7028 = !DILocation(line: 460, column: 2, scope: !6985)
!7029 = !DILocation(line: 466, column: 7, scope: !7030)
!7030 = distinct !DILexicalBlock(scope: !6856, file: !3, line: 466, column: 6)
!7031 = !DILocation(line: 466, column: 6, scope: !6856)
!7032 = !DILocation(line: 467, column: 9, scope: !7030)
!7033 = !DILocation(line: 467, column: 7, scope: !7030)
!7034 = !DILocation(line: 467, column: 3, scope: !7030)
!7035 = !DILocation(line: 469, column: 2, scope: !6856)
!7036 = !DILocation(line: 470, column: 2, scope: !6856)
!7037 = !DILocation(line: 471, column: 9, scope: !6856)
!7038 = !DILocation(line: 471, column: 2, scope: !6856)
!7039 = !DILocation(line: 472, column: 1, scope: !6856)
!7040 = !DISubprogram(name: "seq_open", scope: !2058, file: !2058, line: 109, type: !7041, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7041 = !DISubroutineType(types: !7042)
!7042 = !{!101, !668, !2069}
!7043 = distinct !DISubprogram(name: "scsi_seq_start", scope: !3, file: !3, line: 482, type: !2075, scopeLine: 483, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7044)
!7044 = !{!7045, !7046, !7047, !7048}
!7045 = !DILocalVariable(name: "sfile", arg: 1, scope: !7043, file: !3, line: 482, type: !2056)
!7046 = !DILocalVariable(name: "pos", arg: 2, scope: !7043, file: !3, line: 482, type: !2077)
!7047 = !DILocalVariable(name: "dev", scope: !7043, file: !3, line: 484, type: !3172)
!7048 = !DILocalVariable(name: "n", scope: !7043, file: !3, line: 485, type: !691)
!7049 = !DILocation(line: 482, column: 46, scope: !7043)
!7050 = !DILocation(line: 482, column: 61, scope: !7043)
!7051 = !DILocation(line: 484, column: 2, scope: !7043)
!7052 = !DILocation(line: 484, column: 17, scope: !7043)
!7053 = !DILocation(line: 485, column: 2, scope: !7043)
!7054 = !DILocation(line: 485, column: 9, scope: !7043)
!7055 = !DILocation(line: 485, column: 14, scope: !7043)
!7056 = !DILocation(line: 485, column: 13, scope: !7043)
!7057 = !DILocation(line: 487, column: 2, scope: !7043)
!7058 = !DILocation(line: 487, column: 33, scope: !7043)
!7059 = !DILocation(line: 487, column: 16, scope: !7043)
!7060 = !DILocation(line: 487, column: 14, scope: !7043)
!7061 = !DILocation(line: 488, column: 9, scope: !7062)
!7062 = distinct !DILexicalBlock(scope: !7063, file: !3, line: 488, column: 7)
!7063 = distinct !DILexicalBlock(scope: !7043, file: !3, line: 487, column: 40)
!7064 = !DILocation(line: 488, column: 7, scope: !7063)
!7065 = !DILocation(line: 489, column: 4, scope: !7062)
!7066 = !DILocation(line: 490, column: 3, scope: !7063)
!7067 = !DILocation(line: 490, column: 10, scope: !7063)
!7068 = !DILocation(line: 490, column: 17, scope: !7063)
!7069 = distinct !{!7069, !7057, !7070, !6082, !6083}
!7070 = !DILocation(line: 491, column: 2, scope: !7043)
!7071 = !DILocation(line: 492, column: 9, scope: !7043)
!7072 = !DILocation(line: 493, column: 1, scope: !7043)
!7073 = !DILocation(line: 492, column: 2, scope: !7043)
!7074 = distinct !DISubprogram(name: "scsi_seq_stop", scope: !3, file: !3, line: 502, type: !2080, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7075)
!7075 = !{!7076, !7077}
!7076 = !DILocalVariable(name: "sfile", arg: 1, scope: !7074, file: !3, line: 502, type: !2056)
!7077 = !DILocalVariable(name: "v", arg: 2, scope: !7074, file: !3, line: 502, type: !225)
!7078 = !DILocation(line: 502, column: 44, scope: !7074)
!7079 = !DILocation(line: 502, column: 57, scope: !7074)
!7080 = !DILocation(line: 504, column: 13, scope: !7074)
!7081 = !DILocation(line: 504, column: 2, scope: !7074)
!7082 = !DILocation(line: 505, column: 1, scope: !7074)
!7083 = distinct !DISubprogram(name: "scsi_seq_next", scope: !3, file: !3, line: 495, type: !2084, scopeLine: 496, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7084)
!7084 = !{!7085, !7086, !7087}
!7085 = !DILocalVariable(name: "sfile", arg: 1, scope: !7083, file: !3, line: 495, type: !2056)
!7086 = !DILocalVariable(name: "v", arg: 2, scope: !7083, file: !3, line: 495, type: !225)
!7087 = !DILocalVariable(name: "pos", arg: 3, scope: !7083, file: !3, line: 495, type: !2077)
!7088 = !DILocation(line: 495, column: 45, scope: !7083)
!7089 = !DILocation(line: 495, column: 58, scope: !7083)
!7090 = !DILocation(line: 495, column: 69, scope: !7083)
!7091 = !DILocation(line: 497, column: 4, scope: !7083)
!7092 = !DILocation(line: 497, column: 8, scope: !7083)
!7093 = !DILocation(line: 498, column: 2, scope: !7083)
!7094 = !DILocation(line: 498, column: 9, scope: !7083)
!7095 = !DILocation(line: 498, column: 16, scope: !7083)
!7096 = !DILocation(line: 499, column: 26, scope: !7083)
!7097 = !DILocation(line: 499, column: 9, scope: !7083)
!7098 = !DILocation(line: 499, column: 2, scope: !7083)
!7099 = distinct !DISubprogram(name: "scsi_seq_show", scope: !3, file: !3, line: 507, type: !2088, scopeLine: 508, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7100)
!7100 = !{!7101, !7102}
!7101 = !DILocalVariable(name: "sfile", arg: 1, scope: !7099, file: !3, line: 507, type: !2056)
!7102 = !DILocalVariable(name: "dev", arg: 2, scope: !7099, file: !3, line: 507, type: !225)
!7103 = !DILocation(line: 507, column: 43, scope: !7099)
!7104 = !DILocation(line: 507, column: 56, scope: !7099)
!7105 = !DILocation(line: 509, column: 7, scope: !7106)
!7106 = distinct !DILexicalBlock(scope: !7099, file: !3, line: 509, column: 6)
!7107 = !DILocation(line: 509, column: 14, scope: !7106)
!7108 = !DILocation(line: 509, column: 6, scope: !7099)
!7109 = !DILocation(line: 510, column: 12, scope: !7106)
!7110 = !DILocation(line: 510, column: 3, scope: !7106)
!7111 = !DILocation(line: 512, column: 31, scope: !7099)
!7112 = !DILocation(line: 512, column: 36, scope: !7099)
!7113 = !DILocation(line: 512, column: 9, scope: !7099)
!7114 = !DILocation(line: 512, column: 2, scope: !7099)
!7115 = distinct !DISubprogram(name: "next_scsi_device", scope: !3, file: !3, line: 474, type: !7116, scopeLine: 475, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7118)
!7116 = !DISubroutineType(types: !7117)
!7117 = !{!3172, !3172}
!7118 = !{!7119, !7120}
!7119 = !DILocalVariable(name: "start", arg: 1, scope: !7115, file: !3, line: 474, type: !3172)
!7120 = !DILocalVariable(name: "next", scope: !7115, file: !3, line: 476, type: !3172)
!7121 = !DILocation(line: 474, column: 62, scope: !7115)
!7122 = !DILocation(line: 476, column: 2, scope: !7115)
!7123 = !DILocation(line: 476, column: 17, scope: !7115)
!7124 = !DILocation(line: 476, column: 61, scope: !7115)
!7125 = !DILocation(line: 476, column: 24, scope: !7115)
!7126 = !DILocation(line: 478, column: 13, scope: !7115)
!7127 = !DILocation(line: 478, column: 2, scope: !7115)
!7128 = !DILocation(line: 479, column: 9, scope: !7115)
!7129 = !DILocation(line: 480, column: 1, scope: !7115)
!7130 = !DILocation(line: 479, column: 2, scope: !7115)
!7131 = distinct !DISubprogram(name: "bus_find_next_device", scope: !3238, file: !3238, line: 206, type: !7132, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7134)
!7132 = !DISubroutineType(types: !7133)
!7133 = !{!3172, !3235, !3172}
!7134 = !{!7135, !7136}
!7135 = !DILocalVariable(name: "bus", arg: 1, scope: !7131, file: !3238, line: 206, type: !3235)
!7136 = !DILocalVariable(name: "cur", arg: 2, scope: !7131, file: !3238, line: 206, type: !3172)
!7137 = !DILocation(line: 206, column: 45, scope: !7131)
!7138 = !DILocation(line: 206, column: 64, scope: !7131)
!7139 = !DILocation(line: 208, column: 25, scope: !7131)
!7140 = !DILocation(line: 208, column: 30, scope: !7131)
!7141 = !DILocation(line: 208, column: 9, scope: !7131)
!7142 = !DILocation(line: 208, column: 2, scope: !7131)
!7143 = !DISubprogram(name: "put_device", scope: !86, file: !86, line: 1231, type: !3201, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7144 = !DISubprogram(name: "bus_find_device", scope: !3238, file: !3238, line: 146, type: !7145, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7145 = !DISubroutineType(types: !7146)
!7146 = !{!3172, !3235, !3172, !1992, !7147}
!7147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7148, size: 64)
!7148 = !DISubroutineType(types: !7149)
!7149 = !{!101, !3172, !1992}
!7150 = !DISubprogram(name: "seq_puts", scope: !2058, file: !2058, line: 121, type: !7151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7151 = !DISubroutineType(types: !7152)
!7152 = !{null, !2056, !883}
!7153 = distinct !DISubprogram(name: "proc_print_scsidevice", scope: !3, file: !3, line: 273, type: !7154, scopeLine: 274, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7156)
!7154 = !DISubroutineType(types: !7155)
!7155 = !{!101, !3172, !225}
!7156 = !{!7157, !7158, !7159, !7160, !7161, !7162, !7164}
!7157 = !DILocalVariable(name: "dev", arg: 1, scope: !7153, file: !3, line: 273, type: !3172)
!7158 = !DILocalVariable(name: "data", arg: 2, scope: !7153, file: !3, line: 273, type: !225)
!7159 = !DILocalVariable(name: "sdev", scope: !7153, file: !3, line: 275, type: !5552)
!7160 = !DILocalVariable(name: "s", scope: !7153, file: !3, line: 276, type: !2056)
!7161 = !DILocalVariable(name: "i", scope: !7153, file: !3, line: 277, type: !101)
!7162 = !DILocalVariable(name: "__mptr", scope: !7163, file: !3, line: 282, type: !225)
!7163 = distinct !DILexicalBlock(scope: !7153, file: !3, line: 282, column: 9)
!7164 = !DILabel(scope: !7153, name: "out", file: !3, line: 319)
!7165 = !DILocation(line: 273, column: 49, scope: !7153)
!7166 = !DILocation(line: 273, column: 60, scope: !7153)
!7167 = !DILocation(line: 275, column: 2, scope: !7153)
!7168 = !DILocation(line: 275, column: 22, scope: !7153)
!7169 = !DILocation(line: 276, column: 2, scope: !7153)
!7170 = !DILocation(line: 276, column: 19, scope: !7153)
!7171 = !DILocation(line: 276, column: 23, scope: !7153)
!7172 = !DILocation(line: 277, column: 2, scope: !7153)
!7173 = !DILocation(line: 277, column: 6, scope: !7153)
!7174 = !DILocation(line: 279, column: 27, scope: !7175)
!7175 = distinct !DILexicalBlock(scope: !7153, file: !3, line: 279, column: 6)
!7176 = !DILocation(line: 279, column: 7, scope: !7175)
!7177 = !DILocation(line: 279, column: 6, scope: !7153)
!7178 = !DILocation(line: 280, column: 3, scope: !7175)
!7179 = !DILocation(line: 282, column: 9, scope: !7163)
!7180 = !DILocation(line: 282, column: 9, scope: !7153)
!7181 = !DILocation(line: 282, column: 7, scope: !7153)
!7182 = !DILocation(line: 283, column: 13, scope: !7153)
!7183 = !DILocation(line: 285, column: 3, scope: !7153)
!7184 = !DILocation(line: 285, column: 9, scope: !7153)
!7185 = !DILocation(line: 285, column: 15, scope: !7153)
!7186 = !DILocation(line: 285, column: 24, scope: !7153)
!7187 = !DILocation(line: 285, column: 30, scope: !7153)
!7188 = !DILocation(line: 285, column: 39, scope: !7153)
!7189 = !DILocation(line: 285, column: 45, scope: !7153)
!7190 = !DILocation(line: 285, column: 49, scope: !7153)
!7191 = !DILocation(line: 285, column: 55, scope: !7153)
!7192 = !DILocation(line: 283, column: 2, scope: !7153)
!7193 = !DILocation(line: 286, column: 9, scope: !7194)
!7194 = distinct !DILexicalBlock(scope: !7153, file: !3, line: 286, column: 2)
!7195 = !DILocation(line: 286, column: 7, scope: !7194)
!7196 = !DILocation(line: 286, column: 14, scope: !7197)
!7197 = distinct !DILexicalBlock(scope: !7194, file: !3, line: 286, column: 2)
!7198 = !DILocation(line: 286, column: 16, scope: !7197)
!7199 = !DILocation(line: 286, column: 2, scope: !7194)
!7200 = !DILocation(line: 287, column: 7, scope: !7201)
!7201 = distinct !DILexicalBlock(scope: !7202, file: !3, line: 287, column: 7)
!7202 = distinct !DILexicalBlock(scope: !7197, file: !3, line: 286, column: 26)
!7203 = !DILocation(line: 287, column: 13, scope: !7201)
!7204 = !DILocation(line: 287, column: 20, scope: !7201)
!7205 = !DILocation(line: 287, column: 23, scope: !7201)
!7206 = !DILocation(line: 287, column: 7, scope: !7202)
!7207 = !DILocation(line: 288, column: 13, scope: !7201)
!7208 = !DILocation(line: 288, column: 16, scope: !7201)
!7209 = !DILocation(line: 288, column: 22, scope: !7201)
!7210 = !DILocation(line: 288, column: 29, scope: !7201)
!7211 = !DILocation(line: 288, column: 4, scope: !7201)
!7212 = !DILocation(line: 290, column: 13, scope: !7201)
!7213 = !DILocation(line: 290, column: 4, scope: !7201)
!7214 = !DILocation(line: 291, column: 2, scope: !7202)
!7215 = !DILocation(line: 286, column: 22, scope: !7197)
!7216 = !DILocation(line: 286, column: 2, scope: !7197)
!7217 = distinct !{!7217, !7199, !7218, !6082, !6083}
!7218 = !DILocation(line: 291, column: 2, scope: !7194)
!7219 = !DILocation(line: 293, column: 11, scope: !7153)
!7220 = !DILocation(line: 293, column: 2, scope: !7153)
!7221 = !DILocation(line: 294, column: 9, scope: !7222)
!7222 = distinct !DILexicalBlock(scope: !7153, file: !3, line: 294, column: 2)
!7223 = !DILocation(line: 294, column: 7, scope: !7222)
!7224 = !DILocation(line: 294, column: 14, scope: !7225)
!7225 = distinct !DILexicalBlock(scope: !7222, file: !3, line: 294, column: 2)
!7226 = !DILocation(line: 294, column: 16, scope: !7225)
!7227 = !DILocation(line: 294, column: 2, scope: !7222)
!7228 = !DILocation(line: 295, column: 7, scope: !7229)
!7229 = distinct !DILexicalBlock(scope: !7230, file: !3, line: 295, column: 7)
!7230 = distinct !DILexicalBlock(scope: !7225, file: !3, line: 294, column: 27)
!7231 = !DILocation(line: 295, column: 13, scope: !7229)
!7232 = !DILocation(line: 295, column: 19, scope: !7229)
!7233 = !DILocation(line: 295, column: 22, scope: !7229)
!7234 = !DILocation(line: 295, column: 7, scope: !7230)
!7235 = !DILocation(line: 296, column: 13, scope: !7229)
!7236 = !DILocation(line: 296, column: 16, scope: !7229)
!7237 = !DILocation(line: 296, column: 22, scope: !7229)
!7238 = !DILocation(line: 296, column: 28, scope: !7229)
!7239 = !DILocation(line: 296, column: 4, scope: !7229)
!7240 = !DILocation(line: 298, column: 13, scope: !7229)
!7241 = !DILocation(line: 298, column: 4, scope: !7229)
!7242 = !DILocation(line: 299, column: 2, scope: !7230)
!7243 = !DILocation(line: 294, column: 23, scope: !7225)
!7244 = !DILocation(line: 294, column: 2, scope: !7225)
!7245 = distinct !{!7245, !7227, !7246, !6082, !6083}
!7246 = !DILocation(line: 299, column: 2, scope: !7222)
!7247 = !DILocation(line: 301, column: 11, scope: !7153)
!7248 = !DILocation(line: 301, column: 2, scope: !7153)
!7249 = !DILocation(line: 302, column: 9, scope: !7250)
!7250 = distinct !DILexicalBlock(scope: !7153, file: !3, line: 302, column: 2)
!7251 = !DILocation(line: 302, column: 7, scope: !7250)
!7252 = !DILocation(line: 302, column: 14, scope: !7253)
!7253 = distinct !DILexicalBlock(scope: !7250, file: !3, line: 302, column: 2)
!7254 = !DILocation(line: 302, column: 16, scope: !7253)
!7255 = !DILocation(line: 302, column: 2, scope: !7250)
!7256 = !DILocation(line: 303, column: 7, scope: !7257)
!7257 = distinct !DILexicalBlock(scope: !7258, file: !3, line: 303, column: 7)
!7258 = distinct !DILexicalBlock(scope: !7253, file: !3, line: 302, column: 26)
!7259 = !DILocation(line: 303, column: 13, scope: !7257)
!7260 = !DILocation(line: 303, column: 17, scope: !7257)
!7261 = !DILocation(line: 303, column: 20, scope: !7257)
!7262 = !DILocation(line: 303, column: 7, scope: !7258)
!7263 = !DILocation(line: 304, column: 13, scope: !7257)
!7264 = !DILocation(line: 304, column: 16, scope: !7257)
!7265 = !DILocation(line: 304, column: 22, scope: !7257)
!7266 = !DILocation(line: 304, column: 26, scope: !7257)
!7267 = !DILocation(line: 304, column: 4, scope: !7257)
!7268 = !DILocation(line: 306, column: 13, scope: !7257)
!7269 = !DILocation(line: 306, column: 4, scope: !7257)
!7270 = !DILocation(line: 307, column: 2, scope: !7258)
!7271 = !DILocation(line: 302, column: 22, scope: !7253)
!7272 = !DILocation(line: 302, column: 2, scope: !7253)
!7273 = distinct !{!7273, !7255, !7274, !6082, !6083}
!7274 = !DILocation(line: 307, column: 2, scope: !7250)
!7275 = !DILocation(line: 309, column: 11, scope: !7153)
!7276 = !DILocation(line: 309, column: 2, scope: !7153)
!7277 = !DILocation(line: 311, column: 13, scope: !7153)
!7278 = !DILocation(line: 311, column: 50, scope: !7153)
!7279 = !DILocation(line: 311, column: 56, scope: !7153)
!7280 = !DILocation(line: 311, column: 33, scope: !7153)
!7281 = !DILocation(line: 311, column: 2, scope: !7153)
!7282 = !DILocation(line: 312, column: 13, scope: !7153)
!7283 = !DILocation(line: 313, column: 4, scope: !7153)
!7284 = !DILocation(line: 313, column: 10, scope: !7153)
!7285 = !DILocation(line: 313, column: 24, scope: !7153)
!7286 = !DILocation(line: 313, column: 30, scope: !7153)
!7287 = !DILocation(line: 313, column: 41, scope: !7153)
!7288 = !DILocation(line: 313, column: 21, scope: !7153)
!7289 = !DILocation(line: 312, column: 2, scope: !7153)
!7290 = !DILocation(line: 314, column: 6, scope: !7291)
!7291 = distinct !DILexicalBlock(scope: !7153, file: !3, line: 314, column: 6)
!7292 = !DILocation(line: 314, column: 12, scope: !7291)
!7293 = !DILocation(line: 314, column: 23, scope: !7291)
!7294 = !DILocation(line: 314, column: 6, scope: !7153)
!7295 = !DILocation(line: 315, column: 12, scope: !7291)
!7296 = !DILocation(line: 315, column: 3, scope: !7291)
!7297 = !DILocation(line: 317, column: 12, scope: !7291)
!7298 = !DILocation(line: 317, column: 3, scope: !7291)
!7299 = !DILocation(line: 314, column: 26, scope: !7291)
!7300 = !DILocation(line: 319, column: 1, scope: !7153)
!7301 = !DILocation(line: 321, column: 1, scope: !7153)
!7302 = !DILocation(line: 320, column: 2, scope: !7153)
!7303 = !DISubprogram(name: "scsi_is_sdev_device", scope: !181, file: !181, line: 485, type: !7304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7304 = !DISubroutineType(types: !7305)
!7305 = !{!101, !3192}
!7306 = !DISubprogram(name: "seq_printf", scope: !2058, file: !2058, line: 119, type: !7307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7307 = !DISubroutineType(types: !7308)
!7308 = !{null, !2056, !883, null}
!7309 = !DISubprogram(name: "seq_putc", scope: !2058, file: !2058, line: 120, type: !7310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7310 = !DISubroutineType(types: !7311)
!7311 = !{null, !2056, !866}
!7312 = !DISubprogram(name: "scsi_device_type", scope: !7313, file: !7313, line: 49, type: !7314, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7313 = !DIFile(filename: "./include/scsi/scsi_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b8b3b24b57e553caf051ea243d77c221")
!7314 = !DISubroutineType(types: !7315)
!7315 = !{!883, !7}
!7316 = !DISubprogram(name: "strncmp", scope: !7317, file: !7317, line: 91, type: !7318, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7317 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!7318 = !DISubroutineType(types: !7319)
!7319 = !{!101, !883, !883, !1197}
!7320 = !DISubprogram(name: "simple_strtoul", scope: !7321, file: !7321, line: 145, type: !7322, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7321 = !DIFile(filename: "./include/linux/kstrtox.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7da882f1f371706e764491098c6cb23")
!7322 = !DISubroutineType(types: !7323)
!7323 = !{!332, !883, !7324, !7}
!7324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!7325 = distinct !DISubprogram(name: "scsi_add_single_device", scope: !3, file: !3, line: 338, type: !7326, scopeLine: 339, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7328)
!7326 = !DISubroutineType(types: !7327)
!7327 = !{!101, !5469, !5469, !5469, !5469}
!7328 = !{!7329, !7330, !7331, !7332, !7333, !7334}
!7329 = !DILocalVariable(name: "host", arg: 1, scope: !7325, file: !3, line: 338, type: !5469)
!7330 = !DILocalVariable(name: "channel", arg: 2, scope: !7325, file: !3, line: 338, type: !5469)
!7331 = !DILocalVariable(name: "id", arg: 3, scope: !7325, file: !3, line: 338, type: !5469)
!7332 = !DILocalVariable(name: "lun", arg: 4, scope: !7325, file: !3, line: 338, type: !5469)
!7333 = !DILocalVariable(name: "shost", scope: !7325, file: !3, line: 340, type: !247)
!7334 = !DILocalVariable(name: "error", scope: !7325, file: !3, line: 341, type: !101)
!7335 = !DILocation(line: 338, column: 40, scope: !7325)
!7336 = !DILocation(line: 338, column: 51, scope: !7325)
!7337 = !DILocation(line: 338, column: 65, scope: !7325)
!7338 = !DILocation(line: 338, column: 74, scope: !7325)
!7339 = !DILocation(line: 340, column: 2, scope: !7325)
!7340 = !DILocation(line: 340, column: 20, scope: !7325)
!7341 = !DILocation(line: 341, column: 2, scope: !7325)
!7342 = !DILocation(line: 341, column: 6, scope: !7325)
!7343 = !DILocation(line: 343, column: 27, scope: !7325)
!7344 = !DILocation(line: 343, column: 10, scope: !7325)
!7345 = !DILocation(line: 343, column: 8, scope: !7325)
!7346 = !DILocation(line: 344, column: 7, scope: !7347)
!7347 = distinct !DILexicalBlock(scope: !7325, file: !3, line: 344, column: 6)
!7348 = !DILocation(line: 344, column: 6, scope: !7325)
!7349 = !DILocation(line: 345, column: 10, scope: !7347)
!7350 = !DILocation(line: 345, column: 3, scope: !7347)
!7351 = !DILocation(line: 347, column: 6, scope: !7352)
!7352 = distinct !DILexicalBlock(scope: !7325, file: !3, line: 347, column: 6)
!7353 = !DILocation(line: 347, column: 13, scope: !7352)
!7354 = !DILocation(line: 347, column: 25, scope: !7352)
!7355 = !DILocation(line: 347, column: 6, scope: !7325)
!7356 = !DILocation(line: 348, column: 11, scope: !7352)
!7357 = !DILocation(line: 348, column: 18, scope: !7352)
!7358 = !DILocation(line: 348, column: 30, scope: !7352)
!7359 = !DILocation(line: 348, column: 40, scope: !7352)
!7360 = !DILocation(line: 348, column: 47, scope: !7352)
!7361 = !DILocation(line: 348, column: 56, scope: !7352)
!7362 = !DILocation(line: 348, column: 60, scope: !7352)
!7363 = !DILocation(line: 348, column: 9, scope: !7352)
!7364 = !DILocation(line: 348, column: 3, scope: !7352)
!7365 = !DILocation(line: 350, column: 35, scope: !7352)
!7366 = !DILocation(line: 350, column: 42, scope: !7352)
!7367 = !DILocation(line: 350, column: 51, scope: !7352)
!7368 = !DILocation(line: 350, column: 55, scope: !7352)
!7369 = !DILocation(line: 350, column: 11, scope: !7352)
!7370 = !DILocation(line: 350, column: 9, scope: !7352)
!7371 = !DILocation(line: 352, column: 16, scope: !7325)
!7372 = !DILocation(line: 352, column: 2, scope: !7325)
!7373 = !DILocation(line: 353, column: 9, scope: !7325)
!7374 = !DILocation(line: 353, column: 2, scope: !7325)
!7375 = !DILocation(line: 354, column: 1, scope: !7325)
!7376 = distinct !DISubprogram(name: "scsi_remove_single_device", scope: !3, file: !3, line: 366, type: !7326, scopeLine: 367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7377)
!7377 = !{!7378, !7379, !7380, !7381, !7382, !7383, !7384}
!7378 = !DILocalVariable(name: "host", arg: 1, scope: !7376, file: !3, line: 366, type: !5469)
!7379 = !DILocalVariable(name: "channel", arg: 2, scope: !7376, file: !3, line: 366, type: !5469)
!7380 = !DILocalVariable(name: "id", arg: 3, scope: !7376, file: !3, line: 366, type: !5469)
!7381 = !DILocalVariable(name: "lun", arg: 4, scope: !7376, file: !3, line: 366, type: !5469)
!7382 = !DILocalVariable(name: "sdev", scope: !7376, file: !3, line: 368, type: !5552)
!7383 = !DILocalVariable(name: "shost", scope: !7376, file: !3, line: 369, type: !247)
!7384 = !DILocalVariable(name: "error", scope: !7376, file: !3, line: 370, type: !101)
!7385 = !DILocation(line: 366, column: 43, scope: !7376)
!7386 = !DILocation(line: 366, column: 54, scope: !7376)
!7387 = !DILocation(line: 366, column: 68, scope: !7376)
!7388 = !DILocation(line: 366, column: 77, scope: !7376)
!7389 = !DILocation(line: 368, column: 2, scope: !7376)
!7390 = !DILocation(line: 368, column: 22, scope: !7376)
!7391 = !DILocation(line: 369, column: 2, scope: !7376)
!7392 = !DILocation(line: 369, column: 20, scope: !7376)
!7393 = !DILocation(line: 370, column: 2, scope: !7376)
!7394 = !DILocation(line: 370, column: 6, scope: !7376)
!7395 = !DILocation(line: 372, column: 27, scope: !7376)
!7396 = !DILocation(line: 372, column: 10, scope: !7376)
!7397 = !DILocation(line: 372, column: 8, scope: !7376)
!7398 = !DILocation(line: 373, column: 7, scope: !7399)
!7399 = distinct !DILexicalBlock(scope: !7376, file: !3, line: 373, column: 6)
!7400 = !DILocation(line: 373, column: 6, scope: !7376)
!7401 = !DILocation(line: 374, column: 10, scope: !7399)
!7402 = !DILocation(line: 374, column: 3, scope: !7399)
!7403 = !DILocation(line: 375, column: 28, scope: !7376)
!7404 = !DILocation(line: 375, column: 35, scope: !7376)
!7405 = !DILocation(line: 375, column: 44, scope: !7376)
!7406 = !DILocation(line: 375, column: 48, scope: !7376)
!7407 = !DILocation(line: 375, column: 9, scope: !7376)
!7408 = !DILocation(line: 375, column: 7, scope: !7376)
!7409 = !DILocation(line: 376, column: 6, scope: !7410)
!7410 = distinct !DILexicalBlock(scope: !7376, file: !3, line: 376, column: 6)
!7411 = !DILocation(line: 376, column: 6, scope: !7376)
!7412 = !DILocation(line: 377, column: 22, scope: !7413)
!7413 = distinct !DILexicalBlock(scope: !7410, file: !3, line: 376, column: 12)
!7414 = !DILocation(line: 377, column: 3, scope: !7413)
!7415 = !DILocation(line: 378, column: 19, scope: !7413)
!7416 = !DILocation(line: 378, column: 3, scope: !7413)
!7417 = !DILocation(line: 379, column: 9, scope: !7413)
!7418 = !DILocation(line: 380, column: 2, scope: !7413)
!7419 = !DILocation(line: 382, column: 16, scope: !7376)
!7420 = !DILocation(line: 382, column: 2, scope: !7376)
!7421 = !DILocation(line: 383, column: 9, scope: !7376)
!7422 = !DILocation(line: 383, column: 2, scope: !7376)
!7423 = !DILocation(line: 384, column: 1, scope: !7376)
!7424 = !DISubprogram(name: "scsi_host_lookup", scope: !171, file: !171, line: 773, type: !7425, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7425 = !DISubroutineType(types: !7426)
!7426 = !{!247, !7}
!7427 = !DISubprogram(name: "scsi_scan_host_selected", scope: !7428, file: !7428, line: 137, type: !7429, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7428 = !DIFile(filename: "drivers/scsi/scsi_priv.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90d0da3419feaf3120a2fffa1f1d3249")
!7429 = !DISubroutineType(types: !7430)
!7430 = !{!101, !247, !7, !7, !393, !219}
!7431 = !DISubprogram(name: "scsi_host_put", scope: !171, file: !171, line: 772, type: !5478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7432 = !DISubprogram(name: "scsi_device_lookup", scope: !181, file: !181, line: 398, type: !7433, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7433 = !DISubroutineType(types: !7434)
!7434 = !{!5552, !247, !5469, !5469, !393}
!7435 = !DISubprogram(name: "scsi_remove_device", scope: !181, file: !181, line: 389, type: !5734, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7436 = !DISubprogram(name: "scsi_device_put", scope: !181, file: !181, line: 397, type: !5734, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
