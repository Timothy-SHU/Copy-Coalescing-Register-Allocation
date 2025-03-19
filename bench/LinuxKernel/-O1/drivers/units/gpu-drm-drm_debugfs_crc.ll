; ModuleID = 'drivers/gpu/drm/drm_debugfs_crc.c'
source_filename = "drivers/gpu/drm/drm_debugfs_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_crtc_add_crc_entry: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_crtc_add_crc_entry ; .previous"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i64, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.list_head = type { ptr, ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i64, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_crc_entry = type { i8, i32, [10 x i32] }
%struct.file = type { %union.anon.13, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.14, %struct.qspinlock }
%union.anon.14 = type { %struct.atomic_t }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.path = type { ptr, ptr }
%struct.seq_file = type { ptr, i64, i64, i64, i64, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.18, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.19, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.20, ptr, %struct.address_space, %struct.list_head, %union.anon.21, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.18 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.19 = type { %struct.callback_head }
%union.anon.20 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.21 = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.poll_table_struct = type { ptr, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.22, ptr, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.mutex, %struct.list_head }
%struct.anon.22 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr }

@.str = private unnamed_addr constant [4 x i8] c"crc\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [8 x i8] c"control\00", align 1, !dbg !7
@drm_crtc_crc_control_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @crc_control_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 0, ptr @crc_control_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !12
@.str.2 = private unnamed_addr constant [5 x i8] c"data\00", align 1, !dbg !4416
@drm_crtc_crc_data_fops = internal constant %struct.file_operations { ptr null, ptr null, ptr @crtc_crc_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @crtc_crc_poll, ptr null, ptr null, ptr null, i64 0, ptr @crtc_crc_open, ptr null, ptr @crtc_crc_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !4437
@.str.3 = private unnamed_addr constant [51 x i8] c"Overflow of CRC buffer, userspace reads too slow.\0A\00", align 1, !dbg !4421
@__UNIQUE_ID___addressable_drm_crtc_add_crc_entry309 = internal global ptr @drm_crtc_add_crc_entry, section ".discard.addressable", align 8, !dbg !4426
@.str.4 = private unnamed_addr constant [44 x i8] c"Expected < %lu bytes into crtc crc control\0A\00", align 1, !dbg !4428
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !4433
@.str.6 = private unnamed_addr constant [5 x i8] c"%s*\0A\00", align 1, !dbg !4435
@.str.7 = private unnamed_addr constant [7 x i8] c"0x%08x\00", align 1, !dbg !4439
@.str.8 = private unnamed_addr constant [11 x i8] c"XXXXXXXXXX\00", align 1, !dbg !4442
@.str.9 = private unnamed_addr constant [8 x i8] c" 0x%08x\00", align 1, !dbg !4447
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !4449
@.str.11 = private unnamed_addr constant [34 x i8] c"drivers/gpu/drm/drm_debugfs_crc.c\00", align 1, !dbg !4452
@.str.12 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1, !dbg !4457
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.13 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4463
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable_drm_crtc_add_crc_entry309], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_debugfs_crtc_crc_add(ptr noundef %crtc) #0 align 16 !dbg !4477 {
entry:
  %crtc.addr = alloca ptr, align 8
  %crc_ent = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %crtc, ptr %crtc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %crtc.addr, metadata !6220, metadata !DIExpression()), !dbg !6222
  call void @llvm.lifetime.start.p0(i64 8, ptr %crc_ent) #16, !dbg !6223
  call void @llvm.dbg.declare(metadata ptr %crc_ent, metadata !6221, metadata !DIExpression()), !dbg !6224
  %0 = load ptr, ptr %crtc.addr, align 8, !dbg !6225
  %funcs = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 16, !dbg !6227
  %1 = load ptr, ptr %funcs, align 8, !dbg !6227
  %set_crc_source = getelementptr inbounds %struct.drm_crtc_funcs, ptr %1, i32 0, i32 16, !dbg !6228
  %2 = load ptr, ptr %set_crc_source, align 8, !dbg !6228
  %tobool = icmp ne ptr %2, null, !dbg !6225
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !6229

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %crtc.addr, align 8, !dbg !6230
  %funcs1 = getelementptr inbounds %struct.drm_crtc, ptr %3, i32 0, i32 16, !dbg !6231
  %4 = load ptr, ptr %funcs1, align 8, !dbg !6231
  %verify_crc_source = getelementptr inbounds %struct.drm_crtc_funcs, ptr %4, i32 0, i32 17, !dbg !6232
  %5 = load ptr, ptr %verify_crc_source, align 8, !dbg !6232
  %tobool2 = icmp ne ptr %5, null, !dbg !6230
  br i1 %tobool2, label %if.end, label %if.then, !dbg !6233

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6234

if.end:                                           ; preds = %lor.lhs.false
  %6 = load ptr, ptr %crtc.addr, align 8, !dbg !6235
  %debugfs_entry = getelementptr inbounds %struct.drm_crtc, ptr %6, i32 0, i32 25, !dbg !6236
  %7 = load ptr, ptr %debugfs_entry, align 8, !dbg !6236
  %call = call ptr @debugfs_create_dir(ptr noundef @.str, ptr noundef %7) #17, !dbg !6237
  store ptr %call, ptr %crc_ent, align 8, !dbg !6238
  %8 = load ptr, ptr %crc_ent, align 8, !dbg !6239
  %9 = load ptr, ptr %crtc.addr, align 8, !dbg !6240
  %call3 = call ptr @debugfs_create_file(ptr noundef @.str.1, i16 noundef zeroext 420, ptr noundef %8, ptr noundef %9, ptr noundef @drm_crtc_crc_control_fops) #17, !dbg !6241
  %10 = load ptr, ptr %crc_ent, align 8, !dbg !6242
  %11 = load ptr, ptr %crtc.addr, align 8, !dbg !6243
  %call4 = call ptr @debugfs_create_file(ptr noundef @.str.2, i16 noundef zeroext 292, ptr noundef %10, ptr noundef %11, ptr noundef @drm_crtc_crc_data_fops) #17, !dbg !6244
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6245
  br label %cleanup, !dbg !6245

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %crc_ent) #16, !dbg !6245
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6245

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6246 dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6250 dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_crtc_add_crc_entry(ptr noundef %crtc, i1 noundef zeroext %has_frame, i32 noundef %frame, ptr noundef %crcs) #0 align 16 !dbg !6253 {
entry:
  %retval = alloca i32, align 4
  %crtc.addr = alloca ptr, align 8
  %has_frame.addr = alloca i8, align 1
  %frame.addr = alloca i32, align 4
  %crcs.addr = alloca ptr, align 8
  %crc = alloca ptr, align 8
  %entry2 = alloca ptr, align 8
  %head = alloca i32, align 4
  %tail = alloca i32, align 4
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %was_overflow = alloca i8, align 1
  store ptr %crtc, ptr %crtc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %crtc.addr, metadata !6257, metadata !DIExpression()), !dbg !6275
  %frombool = zext i1 %has_frame to i8
  store i8 %frombool, ptr %has_frame.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %has_frame.addr, metadata !6258, metadata !DIExpression()), !dbg !6276
  store i32 %frame, ptr %frame.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %frame.addr, metadata !6259, metadata !DIExpression()), !dbg !6277
  store ptr %crcs, ptr %crcs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %crcs.addr, metadata !6260, metadata !DIExpression()), !dbg !6278
  call void @llvm.lifetime.start.p0(i64 8, ptr %crc) #16, !dbg !6279
  call void @llvm.dbg.declare(metadata ptr %crc, metadata !6261, metadata !DIExpression()), !dbg !6280
  %0 = load ptr, ptr %crtc.addr, align 8, !dbg !6281
  %crc1 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 26, !dbg !6282
  store ptr %crc1, ptr %crc, align 8, !dbg !6280
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry2) #16, !dbg !6283
  call void @llvm.dbg.declare(metadata ptr %entry2, metadata !6263, metadata !DIExpression()), !dbg !6284
  call void @llvm.lifetime.start.p0(i64 4, ptr %head) #16, !dbg !6285
  call void @llvm.dbg.declare(metadata ptr %head, metadata !6264, metadata !DIExpression()), !dbg !6286
  call void @llvm.lifetime.start.p0(i64 4, ptr %tail) #16, !dbg !6285
  call void @llvm.dbg.declare(metadata ptr %tail, metadata !6265, metadata !DIExpression()), !dbg !6287
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !6288
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6266, metadata !DIExpression()), !dbg !6289
  br label %do.body, !dbg !6290

do.body:                                          ; preds = %entry
  br label %do.body3, !dbg !6291

do.body3:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !6292
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6267, metadata !DIExpression()), !dbg !6292
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !6292
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6271, metadata !DIExpression()), !dbg !6292
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6292
  %conv = zext i1 %cmp to i32, !dbg !6292
  store i32 1, ptr %tmp, align 4, !dbg !6292
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !6293
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !6293
  %1 = load i32, ptr %tmp, align 4, !dbg !6292
  %2 = load ptr, ptr %crc, align 8, !dbg !6293
  %lock = getelementptr inbounds %struct.drm_crtc_crc, ptr %2, i32 0, i32 0, !dbg !6293
  %call = call ptr @spinlock_check(ptr noundef %lock) #17, !dbg !6293
  %call4 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #17, !dbg !6293
  store i64 %call4, ptr %flags, align 8, !dbg !6293
  br label %do.cond, !dbg !6293

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !6293

do.end:                                           ; preds = %do.cond
  br label %do.cond5, !dbg !6291

do.cond5:                                         ; preds = %do.end
  br label %do.end6, !dbg !6291

do.end6:                                          ; preds = %do.cond5
  %3 = load ptr, ptr %crc, align 8, !dbg !6294
  %entries = getelementptr inbounds %struct.drm_crtc_crc, ptr %3, i32 0, i32 4, !dbg !6296
  %4 = load ptr, ptr %entries, align 8, !dbg !6296
  %tobool = icmp ne ptr %4, null, !dbg !6294
  br i1 %tobool, label %if.end, label %if.then, !dbg !6297

if.then:                                          ; preds = %do.end6
  %5 = load ptr, ptr %crc, align 8, !dbg !6298
  %lock7 = getelementptr inbounds %struct.drm_crtc_crc, ptr %5, i32 0, i32 0, !dbg !6300
  %6 = load i64, ptr %flags, align 8, !dbg !6301
  call void @spin_unlock_irqrestore(ptr noundef %lock7, i64 noundef %6) #17, !dbg !6302
  store i32 -22, ptr %retval, align 4, !dbg !6303
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6303

if.end:                                           ; preds = %do.end6
  %7 = load ptr, ptr %crc, align 8, !dbg !6304
  %head8 = getelementptr inbounds %struct.drm_crtc_crc, ptr %7, i32 0, i32 5, !dbg !6305
  %8 = load i32, ptr %head8, align 8, !dbg !6305
  store i32 %8, ptr %head, align 4, !dbg !6306
  %9 = load ptr, ptr %crc, align 8, !dbg !6307
  %tail9 = getelementptr inbounds %struct.drm_crtc_crc, ptr %9, i32 0, i32 6, !dbg !6308
  %10 = load i32, ptr %tail9, align 4, !dbg !6308
  store i32 %10, ptr %tail, align 4, !dbg !6309
  %11 = load i32, ptr %tail, align 4, !dbg !6310
  %12 = load i32, ptr %head, align 4, !dbg !6310
  %add = add i32 %12, 1, !dbg !6310
  %sub = sub i32 %11, %add, !dbg !6310
  %and = and i32 %sub, 127, !dbg !6310
  %cmp10 = icmp slt i32 %and, 1, !dbg !6311
  br i1 %cmp10, label %if.then12, label %if.end20, !dbg !6312

if.then12:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr %was_overflow) #16, !dbg !6313
  call void @llvm.dbg.declare(metadata ptr %was_overflow, metadata !6272, metadata !DIExpression()), !dbg !6314
  %13 = load ptr, ptr %crc, align 8, !dbg !6315
  %overflow = getelementptr inbounds %struct.drm_crtc_crc, ptr %13, i32 0, i32 3, !dbg !6316
  %14 = load i8, ptr %overflow, align 1, !dbg !6316, !range !6317, !noundef !764
  %tobool13 = trunc i8 %14 to i1, !dbg !6316
  %frombool14 = zext i1 %tobool13 to i8, !dbg !6314
  store i8 %frombool14, ptr %was_overflow, align 1, !dbg !6314
  %15 = load ptr, ptr %crc, align 8, !dbg !6318
  %overflow15 = getelementptr inbounds %struct.drm_crtc_crc, ptr %15, i32 0, i32 3, !dbg !6319
  store i8 1, ptr %overflow15, align 1, !dbg !6320
  %16 = load ptr, ptr %crc, align 8, !dbg !6321
  %lock16 = getelementptr inbounds %struct.drm_crtc_crc, ptr %16, i32 0, i32 0, !dbg !6322
  %17 = load i64, ptr %flags, align 8, !dbg !6323
  call void @spin_unlock_irqrestore(ptr noundef %lock16, i64 noundef %17) #17, !dbg !6324
  %18 = load i8, ptr %was_overflow, align 1, !dbg !6325, !range !6317, !noundef !764
  %tobool17 = trunc i8 %18 to i1, !dbg !6325
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !6327

if.then18:                                        ; preds = %if.then12
  call void (ptr, ...) @__drm_err(ptr noundef @.str.3) #17, !dbg !6328
  br label %if.end19, !dbg !6328

if.end19:                                         ; preds = %if.then18, %if.then12
  store i32 -105, ptr %retval, align 4, !dbg !6329
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr %was_overflow) #16, !dbg !6330
  br label %cleanup

if.end20:                                         ; preds = %if.end
  %19 = load ptr, ptr %crc, align 8, !dbg !6331
  %entries21 = getelementptr inbounds %struct.drm_crtc_crc, ptr %19, i32 0, i32 4, !dbg !6332
  %20 = load ptr, ptr %entries21, align 8, !dbg !6332
  %21 = load i32, ptr %head, align 4, !dbg !6333
  %idxprom = sext i32 %21 to i64, !dbg !6331
  %arrayidx = getelementptr %struct.drm_crtc_crc_entry, ptr %20, i64 %idxprom, !dbg !6331
  store ptr %arrayidx, ptr %entry2, align 8, !dbg !6334
  %22 = load i32, ptr %frame.addr, align 4, !dbg !6335
  %23 = load ptr, ptr %entry2, align 8, !dbg !6336
  %frame22 = getelementptr inbounds %struct.drm_crtc_crc_entry, ptr %23, i32 0, i32 1, !dbg !6337
  store i32 %22, ptr %frame22, align 4, !dbg !6338
  %24 = load i8, ptr %has_frame.addr, align 1, !dbg !6339, !range !6317, !noundef !764
  %tobool23 = trunc i8 %24 to i1, !dbg !6339
  %25 = load ptr, ptr %entry2, align 8, !dbg !6340
  %has_frame_counter = getelementptr inbounds %struct.drm_crtc_crc_entry, ptr %25, i32 0, i32 0, !dbg !6341
  %frombool24 = zext i1 %tobool23 to i8, !dbg !6342
  store i8 %frombool24, ptr %has_frame_counter, align 4, !dbg !6342
  %26 = load ptr, ptr %entry2, align 8, !dbg !6343
  %crcs25 = getelementptr inbounds %struct.drm_crtc_crc_entry, ptr %26, i32 0, i32 2, !dbg !6344
  %27 = load ptr, ptr %crcs.addr, align 8, !dbg !6345
  %28 = load ptr, ptr %crc, align 8, !dbg !6346
  %values_cnt = getelementptr inbounds %struct.drm_crtc_crc, ptr %28, i32 0, i32 7, !dbg !6347
  %29 = load i64, ptr %values_cnt, align 8, !dbg !6347
  %mul = mul i64 4, %29, !dbg !6348
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %crcs25, ptr align 4 %27, i64 %mul, i1 false), !dbg !6349
  %30 = load i32, ptr %head, align 4, !dbg !6350
  %add26 = add i32 %30, 1, !dbg !6351
  %and27 = and i32 %add26, 127, !dbg !6352
  store i32 %and27, ptr %head, align 4, !dbg !6353
  %31 = load i32, ptr %head, align 4, !dbg !6354
  %32 = load ptr, ptr %crc, align 8, !dbg !6355
  %head28 = getelementptr inbounds %struct.drm_crtc_crc, ptr %32, i32 0, i32 5, !dbg !6356
  store i32 %31, ptr %head28, align 8, !dbg !6357
  %33 = load ptr, ptr %crc, align 8, !dbg !6358
  %lock29 = getelementptr inbounds %struct.drm_crtc_crc, ptr %33, i32 0, i32 0, !dbg !6359
  %34 = load i64, ptr %flags, align 8, !dbg !6360
  call void @spin_unlock_irqrestore(ptr noundef %lock29, i64 noundef %34) #17, !dbg !6361
  %35 = load ptr, ptr %crc, align 8, !dbg !6362
  %wq = getelementptr inbounds %struct.drm_crtc_crc, ptr %35, i32 0, i32 8, !dbg !6362
  %call30 = call i32 @__wake_up(ptr noundef %wq, i32 noundef 1, i32 noundef 1, ptr noundef null) #17, !dbg !6362
  store i32 0, ptr %retval, align 4, !dbg !6363
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6363

cleanup:                                          ; preds = %if.end20, %if.end19, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !6364
  call void @llvm.lifetime.end.p0(i64 4, ptr %tail) #16, !dbg !6364
  call void @llvm.lifetime.end.p0(i64 4, ptr %head) #16, !dbg !6364
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry2) #16, !dbg !6364
  call void @llvm.lifetime.end.p0(i64 8, ptr %crc) #16, !dbg !6364
  %36 = load i32, ptr %retval, align 4, !dbg !6364
  ret i32 %36, !dbg !6364
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6365 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #4 align 16 !dbg !6370 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6375, metadata !DIExpression()), !dbg !6376
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6377
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6378
  ret ptr %1, !dbg !6379
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #4 align 16 !dbg !6380 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6384, metadata !DIExpression()), !dbg !6390
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6385, metadata !DIExpression()), !dbg !6391
  br label %do.body, !dbg !6392

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !6393
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6386, metadata !DIExpression()), !dbg !6393
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !6393
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6389, metadata !DIExpression()), !dbg !6393
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6393
  %conv = zext i1 %cmp to i32, !dbg !6393
  store i32 1, ptr %tmp, align 4, !dbg !6393
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !6394
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !6394
  %0 = load i32, ptr %tmp, align 4, !dbg !6393
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !6394
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !6394
  %3 = load i64, ptr %flags.addr, align 8, !dbg !6394
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #17, !dbg !6394
  br label %do.end, !dbg !6394

do.end:                                           ; preds = %do.body
  ret void, !dbg !6395
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6396 dso_local void @__drm_err(ptr noundef, ...) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6399 dso_local i32 @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @seq_read(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @crc_control_write(ptr noundef %file, ptr noundef %ubuf, i64 noundef %len, ptr noundef %offp) #0 align 16 !dbg !6403 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %ubuf.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %offp.addr = alloca ptr, align 8
  %m = alloca ptr, align 8
  %crtc = alloca ptr, align 8
  %crc = alloca ptr, align 8
  %source = alloca ptr, align 8
  %values_cnt = alloca i64, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6405, metadata !DIExpression()), !dbg !6415
  store ptr %ubuf, ptr %ubuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ubuf.addr, metadata !6406, metadata !DIExpression()), !dbg !6416
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !6407, metadata !DIExpression()), !dbg !6417
  store ptr %offp, ptr %offp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offp.addr, metadata !6408, metadata !DIExpression()), !dbg !6418
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #16, !dbg !6419
  call void @llvm.dbg.declare(metadata ptr %m, metadata !6409, metadata !DIExpression()), !dbg !6420
  %0 = load ptr, ptr %file.addr, align 8, !dbg !6421
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !6422
  %1 = load ptr, ptr %private_data, align 8, !dbg !6422
  store ptr %1, ptr %m, align 8, !dbg !6420
  call void @llvm.lifetime.start.p0(i64 8, ptr %crtc) #16, !dbg !6423
  call void @llvm.dbg.declare(metadata ptr %crtc, metadata !6410, metadata !DIExpression()), !dbg !6424
  %2 = load ptr, ptr %m, align 8, !dbg !6425
  %private = getelementptr inbounds %struct.seq_file, ptr %2, i32 0, i32 11, !dbg !6426
  %3 = load ptr, ptr %private, align 8, !dbg !6426
  store ptr %3, ptr %crtc, align 8, !dbg !6424
  call void @llvm.lifetime.start.p0(i64 8, ptr %crc) #16, !dbg !6427
  call void @llvm.dbg.declare(metadata ptr %crc, metadata !6411, metadata !DIExpression()), !dbg !6428
  %4 = load ptr, ptr %crtc, align 8, !dbg !6429
  %crc1 = getelementptr inbounds %struct.drm_crtc, ptr %4, i32 0, i32 26, !dbg !6430
  store ptr %crc1, ptr %crc, align 8, !dbg !6428
  call void @llvm.lifetime.start.p0(i64 8, ptr %source) #16, !dbg !6431
  call void @llvm.dbg.declare(metadata ptr %source, metadata !6412, metadata !DIExpression()), !dbg !6432
  call void @llvm.lifetime.start.p0(i64 8, ptr %values_cnt) #16, !dbg !6433
  call void @llvm.dbg.declare(metadata ptr %values_cnt, metadata !6413, metadata !DIExpression()), !dbg !6434
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !6435
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6414, metadata !DIExpression()), !dbg !6436
  %5 = load i64, ptr %len.addr, align 8, !dbg !6437
  %cmp = icmp eq i64 %5, 0, !dbg !6439
  br i1 %cmp, label %if.then, label %if.end, !dbg !6440

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !6441
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6441

if.end:                                           ; preds = %entry
  %6 = load i64, ptr %len.addr, align 8, !dbg !6442
  %cmp2 = icmp ugt i64 %6, 4095, !dbg !6444
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !6445

if.then3:                                         ; preds = %if.end
  call void (ptr, i32, ptr, ...) @___drm_dbg(ptr noundef null, i32 noundef 2, ptr noundef @.str.4, i64 noundef 4096) #17, !dbg !6446
  store i64 -7, ptr %retval, align 8, !dbg !6448
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6448

if.end4:                                          ; preds = %if.end
  %7 = load ptr, ptr %ubuf.addr, align 8, !dbg !6449
  %8 = load i64, ptr %len.addr, align 8, !dbg !6450
  %call = call ptr @memdup_user_nul(ptr noundef %7, i64 noundef %8) #17, !dbg !6451
  store ptr %call, ptr %source, align 8, !dbg !6452
  %9 = load ptr, ptr %source, align 8, !dbg !6453
  %call5 = call zeroext i1 @IS_ERR(ptr noundef %9) #17, !dbg !6455
  br i1 %call5, label %if.then6, label %if.end8, !dbg !6456

if.then6:                                         ; preds = %if.end4
  %10 = load ptr, ptr %source, align 8, !dbg !6457
  %call7 = call i64 @PTR_ERR(ptr noundef %10) #17, !dbg !6458
  store i64 %call7, ptr %retval, align 8, !dbg !6459
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6459

if.end8:                                          ; preds = %if.end4
  %11 = load ptr, ptr %source, align 8, !dbg !6460
  %12 = load i64, ptr %len.addr, align 8, !dbg !6462
  %sub = sub i64 %12, 1, !dbg !6463
  %arrayidx = getelementptr i8, ptr %11, i64 %sub, !dbg !6460
  %13 = load i8, ptr %arrayidx, align 1, !dbg !6460
  %conv = zext i8 %13 to i32, !dbg !6460
  %cmp9 = icmp eq i32 %conv, 10, !dbg !6464
  br i1 %cmp9, label %if.then11, label %if.end14, !dbg !6465

if.then11:                                        ; preds = %if.end8
  %14 = load ptr, ptr %source, align 8, !dbg !6466
  %15 = load i64, ptr %len.addr, align 8, !dbg !6467
  %sub12 = sub i64 %15, 1, !dbg !6468
  %arrayidx13 = getelementptr i8, ptr %14, i64 %sub12, !dbg !6466
  store i8 0, ptr %arrayidx13, align 1, !dbg !6469
  br label %if.end14, !dbg !6466

if.end14:                                         ; preds = %if.then11, %if.end8
  %16 = load ptr, ptr %crtc, align 8, !dbg !6470
  %funcs = getelementptr inbounds %struct.drm_crtc, ptr %16, i32 0, i32 16, !dbg !6471
  %17 = load ptr, ptr %funcs, align 8, !dbg !6471
  %verify_crc_source = getelementptr inbounds %struct.drm_crtc_funcs, ptr %17, i32 0, i32 17, !dbg !6472
  %18 = load ptr, ptr %verify_crc_source, align 8, !dbg !6472
  %19 = load ptr, ptr %crtc, align 8, !dbg !6473
  %20 = load ptr, ptr %source, align 8, !dbg !6474
  %call15 = call i32 %18(ptr noundef %19, ptr noundef %20, ptr noundef %values_cnt) #17, !dbg !6470
  store i32 %call15, ptr %ret, align 4, !dbg !6475
  %21 = load i32, ptr %ret, align 4, !dbg !6476
  %tobool = icmp ne i32 %21, 0, !dbg !6476
  br i1 %tobool, label %if.then16, label %if.end18, !dbg !6478

if.then16:                                        ; preds = %if.end14
  %22 = load ptr, ptr %source, align 8, !dbg !6479
  call void @kfree(ptr noundef %22) #17, !dbg !6481
  %23 = load i32, ptr %ret, align 4, !dbg !6482
  %conv17 = sext i32 %23 to i64, !dbg !6482
  store i64 %conv17, ptr %retval, align 8, !dbg !6483
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6483

if.end18:                                         ; preds = %if.end14
  %24 = load ptr, ptr %crc, align 8, !dbg !6484
  %lock = getelementptr inbounds %struct.drm_crtc_crc, ptr %24, i32 0, i32 0, !dbg !6485
  call void @spin_lock_irq(ptr noundef %lock) #17, !dbg !6486
  %25 = load ptr, ptr %crc, align 8, !dbg !6487
  %opened = getelementptr inbounds %struct.drm_crtc_crc, ptr %25, i32 0, i32 2, !dbg !6489
  %26 = load i8, ptr %opened, align 8, !dbg !6489, !range !6317, !noundef !764
  %tobool19 = trunc i8 %26 to i1, !dbg !6489
  br i1 %tobool19, label %if.then20, label %if.end22, !dbg !6490

if.then20:                                        ; preds = %if.end18
  %27 = load ptr, ptr %crc, align 8, !dbg !6491
  %lock21 = getelementptr inbounds %struct.drm_crtc_crc, ptr %27, i32 0, i32 0, !dbg !6493
  call void @spin_unlock_irq(ptr noundef %lock21) #17, !dbg !6494
  %28 = load ptr, ptr %source, align 8, !dbg !6495
  call void @kfree(ptr noundef %28) #17, !dbg !6496
  store i64 -16, ptr %retval, align 8, !dbg !6497
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6497

if.end22:                                         ; preds = %if.end18
  %29 = load ptr, ptr %crc, align 8, !dbg !6498
  %source23 = getelementptr inbounds %struct.drm_crtc_crc, ptr %29, i32 0, i32 1, !dbg !6499
  %30 = load ptr, ptr %source23, align 8, !dbg !6499
  call void @kfree(ptr noundef %30) #17, !dbg !6500
  %31 = load ptr, ptr %source, align 8, !dbg !6501
  %32 = load ptr, ptr %crc, align 8, !dbg !6502
  %source24 = getelementptr inbounds %struct.drm_crtc_crc, ptr %32, i32 0, i32 1, !dbg !6503
  store ptr %31, ptr %source24, align 8, !dbg !6504
  %33 = load ptr, ptr %crc, align 8, !dbg !6505
  %lock25 = getelementptr inbounds %struct.drm_crtc_crc, ptr %33, i32 0, i32 0, !dbg !6506
  call void @spin_unlock_irq(ptr noundef %lock25) #17, !dbg !6507
  %34 = load i64, ptr %len.addr, align 8, !dbg !6508
  %35 = load ptr, ptr %offp.addr, align 8, !dbg !6509
  %36 = load i64, ptr %35, align 8, !dbg !6510
  %add = add i64 %36, %34, !dbg !6510
  store i64 %add, ptr %35, align 8, !dbg !6510
  %37 = load i64, ptr %len.addr, align 8, !dbg !6511
  store i64 %37, ptr %retval, align 8, !dbg !6512
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6512

cleanup:                                          ; preds = %if.end22, %if.then20, %if.then16, %if.then6, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !6513
  call void @llvm.lifetime.end.p0(i64 8, ptr %values_cnt) #16, !dbg !6513
  call void @llvm.lifetime.end.p0(i64 8, ptr %source) #16, !dbg !6513
  call void @llvm.lifetime.end.p0(i64 8, ptr %crc) #16, !dbg !6513
  call void @llvm.lifetime.end.p0(i64 8, ptr %crtc) #16, !dbg !6513
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #16, !dbg !6513
  %38 = load i64, ptr %retval, align 8, !dbg !6513
  ret i64 %38, !dbg !6513
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crc_control_open(ptr noundef %inode, ptr noundef %file) #0 align 16 !dbg !6514 {
entry:
  %inode.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %crtc = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6516, metadata !DIExpression()), !dbg !6519
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6517, metadata !DIExpression()), !dbg !6520
  call void @llvm.lifetime.start.p0(i64 8, ptr %crtc) #16, !dbg !6521
  call void @llvm.dbg.declare(metadata ptr %crtc, metadata !6518, metadata !DIExpression()), !dbg !6522
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !6523
  %i_private = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47, !dbg !6524
  %1 = load ptr, ptr %i_private, align 8, !dbg !6524
  store ptr %1, ptr %crtc, align 8, !dbg !6522
  %2 = load ptr, ptr %file.addr, align 8, !dbg !6525
  %3 = load ptr, ptr %crtc, align 8, !dbg !6526
  %call = call i32 @single_open(ptr noundef %2, ptr noundef @crc_control_show, ptr noundef %3) #17, !dbg !6527
  call void @llvm.lifetime.end.p0(i64 8, ptr %crtc) #16, !dbg !6528
  ret i32 %call, !dbg !6529
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6530 dso_local void @___drm_dbg(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6566 dso_local ptr @memdup_user_nul(ptr noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #6 align 16 !dbg !6570 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6575, metadata !DIExpression()), !dbg !6576
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6577
  %1 = ptrtoint ptr %0 to i64, !dbg !6577
  %2 = inttoptr i64 %1 to ptr, !dbg !6577
  %3 = ptrtoint ptr %2 to i64, !dbg !6577
  %cmp = icmp uge i64 %3, -4095, !dbg !6577
  %lnot = xor i1 %cmp, true, !dbg !6577
  %lnot1 = xor i1 %lnot, true, !dbg !6577
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6577
  %conv = sext i32 %lnot.ext to i64, !dbg !6577
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6577
  %tobool = icmp ne i64 %expval, 0, !dbg !6577
  ret i1 %tobool, !dbg !6578
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #6 align 16 !dbg !6579 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6583, metadata !DIExpression()), !dbg !6584
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6585
  %1 = ptrtoint ptr %0 to i64, !dbg !6586
  ret i64 %1, !dbg !6587
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6588 dso_local void @kfree(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock_irq(ptr noundef %lock) #4 align 16 !dbg !6591 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6595, metadata !DIExpression()), !dbg !6596
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6597
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6597
  call void @_raw_spin_lock_irq(ptr noundef %1) #17, !dbg !6597
  ret void, !dbg !6598
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irq(ptr noundef %lock) #4 align 16 !dbg !6599 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6601, metadata !DIExpression()), !dbg !6602
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6603
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6603
  call void @_raw_spin_unlock_irq(ptr noundef %1) #17, !dbg !6603
  ret void, !dbg !6604
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6605 dso_local void @_raw_spin_lock_irq(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6608 dso_local void @_raw_spin_unlock_irq(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6609 dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crc_control_show(ptr noundef %m, ptr noundef %data) #0 align 16 !dbg !6612 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %crtc = alloca ptr, align 8
  %count = alloca i64, align 8
  %sources = alloca ptr, align 8
  %values_cnt = alloca i64, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !6614, metadata !DIExpression()), !dbg !6624
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6615, metadata !DIExpression()), !dbg !6625
  call void @llvm.lifetime.start.p0(i64 8, ptr %crtc) #16, !dbg !6626
  call void @llvm.dbg.declare(metadata ptr %crtc, metadata !6616, metadata !DIExpression()), !dbg !6627
  %0 = load ptr, ptr %m.addr, align 8, !dbg !6628
  %private = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11, !dbg !6629
  %1 = load ptr, ptr %private, align 8, !dbg !6629
  store ptr %1, ptr %crtc, align 8, !dbg !6627
  %2 = load ptr, ptr %crtc, align 8, !dbg !6630
  %funcs = getelementptr inbounds %struct.drm_crtc, ptr %2, i32 0, i32 16, !dbg !6631
  %3 = load ptr, ptr %funcs, align 8, !dbg !6631
  %get_crc_sources = getelementptr inbounds %struct.drm_crtc_funcs, ptr %3, i32 0, i32 18, !dbg !6632
  %4 = load ptr, ptr %get_crc_sources, align 8, !dbg !6632
  %tobool = icmp ne ptr %4, null, !dbg !6630
  br i1 %tobool, label %if.then, label %if.end25, !dbg !6633

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %count) #16, !dbg !6634
  call void @llvm.dbg.declare(metadata ptr %count, metadata !6617, metadata !DIExpression()), !dbg !6635
  call void @llvm.lifetime.start.p0(i64 8, ptr %sources) #16, !dbg !6636
  call void @llvm.dbg.declare(metadata ptr %sources, metadata !6620, metadata !DIExpression()), !dbg !6637
  %5 = load ptr, ptr %crtc, align 8, !dbg !6638
  %funcs1 = getelementptr inbounds %struct.drm_crtc, ptr %5, i32 0, i32 16, !dbg !6639
  %6 = load ptr, ptr %funcs1, align 8, !dbg !6639
  %get_crc_sources2 = getelementptr inbounds %struct.drm_crtc_funcs, ptr %6, i32 0, i32 18, !dbg !6640
  %7 = load ptr, ptr %get_crc_sources2, align 8, !dbg !6640
  %8 = load ptr, ptr %crtc, align 8, !dbg !6641
  %call = call ptr %7(ptr noundef %8, ptr noundef %count) #17, !dbg !6638
  store ptr %call, ptr %sources, align 8, !dbg !6637
  call void @llvm.lifetime.start.p0(i64 8, ptr %values_cnt) #16, !dbg !6642
  call void @llvm.dbg.declare(metadata ptr %values_cnt, metadata !6621, metadata !DIExpression()), !dbg !6643
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !6644
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6622, metadata !DIExpression()), !dbg !6645
  %9 = load i64, ptr %count, align 8, !dbg !6646
  %cmp = icmp eq i64 %9, 0, !dbg !6648
  br i1 %cmp, label %if.then4, label %lor.lhs.false, !dbg !6649

lor.lhs.false:                                    ; preds = %if.then
  %10 = load ptr, ptr %sources, align 8, !dbg !6650
  %tobool3 = icmp ne ptr %10, null, !dbg !6650
  br i1 %tobool3, label %if.end, label %if.then4, !dbg !6651

if.then4:                                         ; preds = %lor.lhs.false, %if.then
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6652

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, ptr %i, align 4, !dbg !6653
  br label %for.cond, !dbg !6655

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i32, ptr %i, align 4, !dbg !6656
  %conv = sext i32 %11 to i64, !dbg !6656
  %12 = load i64, ptr %count, align 8, !dbg !6658
  %cmp5 = icmp ult i64 %conv, %12, !dbg !6659
  br i1 %cmp5, label %for.body, label %for.end, !dbg !6660

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %crtc, align 8, !dbg !6661
  %funcs7 = getelementptr inbounds %struct.drm_crtc, ptr %13, i32 0, i32 16, !dbg !6663
  %14 = load ptr, ptr %funcs7, align 8, !dbg !6663
  %verify_crc_source = getelementptr inbounds %struct.drm_crtc_funcs, ptr %14, i32 0, i32 17, !dbg !6664
  %15 = load ptr, ptr %verify_crc_source, align 8, !dbg !6664
  %16 = load ptr, ptr %crtc, align 8, !dbg !6665
  %17 = load ptr, ptr %sources, align 8, !dbg !6666
  %18 = load i32, ptr %i, align 4, !dbg !6667
  %idxprom = sext i32 %18 to i64, !dbg !6666
  %arrayidx = getelementptr ptr, ptr %17, i64 %idxprom, !dbg !6666
  %19 = load ptr, ptr %arrayidx, align 8, !dbg !6666
  %call8 = call i32 %15(ptr noundef %16, ptr noundef %19, ptr noundef %values_cnt) #17, !dbg !6661
  %tobool9 = icmp ne i32 %call8, 0, !dbg !6661
  br i1 %tobool9, label %if.end21, label %if.then10, !dbg !6668

if.then10:                                        ; preds = %for.body
  %20 = load ptr, ptr %sources, align 8, !dbg !6669
  %21 = load i32, ptr %i, align 4, !dbg !6672
  %idxprom11 = sext i32 %21 to i64, !dbg !6669
  %arrayidx12 = getelementptr ptr, ptr %20, i64 %idxprom11, !dbg !6669
  %22 = load ptr, ptr %arrayidx12, align 8, !dbg !6669
  %23 = load ptr, ptr %crtc, align 8, !dbg !6673
  %crc = getelementptr inbounds %struct.drm_crtc, ptr %23, i32 0, i32 26, !dbg !6674
  %source = getelementptr inbounds %struct.drm_crtc_crc, ptr %crc, i32 0, i32 1, !dbg !6675
  %24 = load ptr, ptr %source, align 8, !dbg !6675
  %call13 = call i32 @strcmp(ptr noundef %22, ptr noundef %24) #17, !dbg !6676
  %tobool14 = icmp ne i32 %call13, 0, !dbg !6676
  br i1 %tobool14, label %if.then15, label %if.else, !dbg !6677

if.then15:                                        ; preds = %if.then10
  %25 = load ptr, ptr %m.addr, align 8, !dbg !6678
  %26 = load ptr, ptr %sources, align 8, !dbg !6679
  %27 = load i32, ptr %i, align 4, !dbg !6680
  %idxprom16 = sext i32 %27 to i64, !dbg !6679
  %arrayidx17 = getelementptr ptr, ptr %26, i64 %idxprom16, !dbg !6679
  %28 = load ptr, ptr %arrayidx17, align 8, !dbg !6679
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %25, ptr noundef @.str.5, ptr noundef %28) #17, !dbg !6681
  br label %if.end20, !dbg !6681

if.else:                                          ; preds = %if.then10
  %29 = load ptr, ptr %m.addr, align 8, !dbg !6682
  %30 = load ptr, ptr %sources, align 8, !dbg !6683
  %31 = load i32, ptr %i, align 4, !dbg !6684
  %idxprom18 = sext i32 %31 to i64, !dbg !6683
  %arrayidx19 = getelementptr ptr, ptr %30, i64 %idxprom18, !dbg !6683
  %32 = load ptr, ptr %arrayidx19, align 8, !dbg !6683
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %29, ptr noundef @.str.6, ptr noundef %32) #17, !dbg !6685
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then15
  br label %if.end21, !dbg !6686

if.end21:                                         ; preds = %if.end20, %for.body
  br label %for.inc, !dbg !6687

for.inc:                                          ; preds = %if.end21
  %33 = load i32, ptr %i, align 4, !dbg !6688
  %inc = add i32 %33, 1, !dbg !6688
  store i32 %inc, ptr %i, align 4, !dbg !6688
  br label %for.cond, !dbg !6689, !llvm.loop !6690

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6694
  br label %cleanup, !dbg !6694

cleanup:                                          ; preds = %if.then4, %for.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !6694
  call void @llvm.lifetime.end.p0(i64 8, ptr %values_cnt) #16, !dbg !6694
  call void @llvm.lifetime.end.p0(i64 8, ptr %sources) #16, !dbg !6694
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #16, !dbg !6694
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup28 [
    i32 0, label %cleanup.cont
    i32 2, label %out
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end25, !dbg !6695

if.end25:                                         ; preds = %cleanup.cont, %entry
  store i32 0, ptr %retval, align 4, !dbg !6696
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup28, !dbg !6696

out:                                              ; preds = %cleanup
  call void @llvm.dbg.label(metadata !6623), !dbg !6697
  %34 = load ptr, ptr %m.addr, align 8, !dbg !6698
  %35 = load ptr, ptr %crtc, align 8, !dbg !6699
  %crc26 = getelementptr inbounds %struct.drm_crtc, ptr %35, i32 0, i32 26, !dbg !6700
  %source27 = getelementptr inbounds %struct.drm_crtc_crc, ptr %crc26, i32 0, i32 1, !dbg !6701
  %36 = load ptr, ptr %source27, align 8, !dbg !6701
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %34, ptr noundef @.str.6, ptr noundef %36) #17, !dbg !6702
  store i32 0, ptr %retval, align 4, !dbg !6703
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup28, !dbg !6703

cleanup28:                                        ; preds = %out, %if.end25, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %crtc) #16, !dbg !6704
  %37 = load i32, ptr %retval, align 4, !dbg !6704
  ret i32 %37, !dbg !6704
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6705 dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6708 dso_local void @seq_printf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @crtc_crc_read(ptr noundef %filep, ptr noundef %user_buf, i64 noundef %count, ptr noundef %pos) #0 align 16 !dbg !6711 {
entry:
  %retval = alloca i64, align 8
  %filep.addr = alloca ptr, align 8
  %user_buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %pos.addr = alloca ptr, align 8
  %crtc = alloca ptr, align 8
  %crc = alloca ptr, align 8
  %entry2 = alloca ptr, align 8
  %buf = alloca [122 x i8], align 16
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %__ret11 = alloca i64, align 8
  %__int = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp24 = alloca i32, align 4
  store ptr %filep, ptr %filep.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filep.addr, metadata !6713, metadata !DIExpression()), !dbg !6749
  store ptr %user_buf, ptr %user_buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %user_buf.addr, metadata !6714, metadata !DIExpression()), !dbg !6750
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6715, metadata !DIExpression()), !dbg !6751
  store ptr %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !6716, metadata !DIExpression()), !dbg !6752
  call void @llvm.lifetime.start.p0(i64 8, ptr %crtc) #16, !dbg !6753
  call void @llvm.dbg.declare(metadata ptr %crtc, metadata !6717, metadata !DIExpression()), !dbg !6754
  %0 = load ptr, ptr %filep.addr, align 8, !dbg !6755
  %f_inode = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 11, !dbg !6756
  %1 = load ptr, ptr %f_inode, align 8, !dbg !6756
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 47, !dbg !6757
  %2 = load ptr, ptr %i_private, align 8, !dbg !6757
  store ptr %2, ptr %crtc, align 8, !dbg !6754
  call void @llvm.lifetime.start.p0(i64 8, ptr %crc) #16, !dbg !6758
  call void @llvm.dbg.declare(metadata ptr %crc, metadata !6718, metadata !DIExpression()), !dbg !6759
  %3 = load ptr, ptr %crtc, align 8, !dbg !6760
  %crc1 = getelementptr inbounds %struct.drm_crtc, ptr %3, i32 0, i32 26, !dbg !6761
  store ptr %crc1, ptr %crc, align 8, !dbg !6759
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry2) #16, !dbg !6762
  call void @llvm.dbg.declare(metadata ptr %entry2, metadata !6719, metadata !DIExpression()), !dbg !6763
  call void @llvm.lifetime.start.p0(i64 122, ptr %buf) #16, !dbg !6764
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !6720, metadata !DIExpression()), !dbg !6765
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !6766
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6724, metadata !DIExpression()), !dbg !6767
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !6766
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6725, metadata !DIExpression()), !dbg !6768
  %4 = load ptr, ptr %crc, align 8, !dbg !6769
  %lock = getelementptr inbounds %struct.drm_crtc_crc, ptr %4, i32 0, i32 0, !dbg !6770
  call void @spin_lock_irq(ptr noundef %lock) #17, !dbg !6771
  %5 = load ptr, ptr %crc, align 8, !dbg !6772
  %source = getelementptr inbounds %struct.drm_crtc_crc, ptr %5, i32 0, i32 1, !dbg !6774
  %6 = load ptr, ptr %source, align 8, !dbg !6774
  %tobool = icmp ne ptr %6, null, !dbg !6772
  br i1 %tobool, label %if.end, label %if.then, !dbg !6775

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %crc, align 8, !dbg !6776
  %lock3 = getelementptr inbounds %struct.drm_crtc_crc, ptr %7, i32 0, i32 0, !dbg !6778
  call void @spin_unlock_irq(ptr noundef %lock3) #17, !dbg !6779
  store i64 0, ptr %retval, align 8, !dbg !6780
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup81, !dbg !6780

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !6781

while.cond:                                       ; preds = %if.end29, %if.end
  %8 = load ptr, ptr %crc, align 8, !dbg !6782
  %call = call i32 @crtc_crc_data_count(ptr noundef %8) #17, !dbg !6783
  %cmp = icmp eq i32 %call, 0, !dbg !6784
  br i1 %cmp, label %while.body, label %while.end, !dbg !6781

while.body:                                       ; preds = %while.cond
  %9 = load ptr, ptr %filep.addr, align 8, !dbg !6785
  %f_flags = getelementptr inbounds %struct.file, ptr %9, i32 0, i32 6, !dbg !6787
  %10 = load i32, ptr %f_flags, align 8, !dbg !6787
  %and = and i32 %10, 2048, !dbg !6788
  %tobool4 = icmp ne i32 %and, 0, !dbg !6788
  br i1 %tobool4, label %if.then5, label %if.end7, !dbg !6789

if.then5:                                         ; preds = %while.body
  %11 = load ptr, ptr %crc, align 8, !dbg !6790
  %lock6 = getelementptr inbounds %struct.drm_crtc_crc, ptr %11, i32 0, i32 0, !dbg !6792
  call void @spin_unlock_irq(ptr noundef %lock6) #17, !dbg !6793
  store i64 -11, ptr %retval, align 8, !dbg !6794
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup81, !dbg !6794

if.end7:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #16, !dbg !6795
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !6726, metadata !DIExpression()), !dbg !6795
  store i32 0, ptr %__ret, align 4, !dbg !6795
  %12 = load ptr, ptr %crc, align 8, !dbg !6796
  %call8 = call i32 @crtc_crc_data_count(ptr noundef %12) #17, !dbg !6796
  %tobool9 = icmp ne i32 %call8, 0, !dbg !6796
  br i1 %tobool9, label %if.end23, label %if.then10, !dbg !6795

if.then10:                                        ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 40, ptr %__wq_entry) #16, !dbg !6797
  call void @llvm.dbg.declare(metadata ptr %__wq_entry, metadata !6729, metadata !DIExpression()), !dbg !6797
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret11) #16, !dbg !6797
  call void @llvm.dbg.declare(metadata ptr %__ret11, metadata !6743, metadata !DIExpression()), !dbg !6797
  store i64 0, ptr %__ret11, align 8, !dbg !6797
  call void @init_wait_entry(ptr noundef %__wq_entry, i32 noundef 0) #17, !dbg !6797
  br label %for.cond, !dbg !6797

for.cond:                                         ; preds = %cleanup.cont, %if.then10
  call void @llvm.lifetime.start.p0(i64 8, ptr %__int) #16, !dbg !6798
  call void @llvm.dbg.declare(metadata ptr %__int, metadata !6744, metadata !DIExpression()), !dbg !6798
  %13 = load ptr, ptr %crc, align 8, !dbg !6798
  %wq = getelementptr inbounds %struct.drm_crtc_crc, ptr %13, i32 0, i32 8, !dbg !6798
  %call12 = call i64 @prepare_to_wait_event(ptr noundef %wq, ptr noundef %__wq_entry, i32 noundef 1) #17, !dbg !6798
  store i64 %call12, ptr %__int, align 8, !dbg !6798
  %14 = load ptr, ptr %crc, align 8, !dbg !6799
  %call13 = call i32 @crtc_crc_data_count(ptr noundef %14) #17, !dbg !6799
  %tobool14 = icmp ne i32 %call13, 0, !dbg !6799
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !6798

if.then15:                                        ; preds = %for.cond
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6799

if.end16:                                         ; preds = %for.cond
  %15 = load i64, ptr %__int, align 8, !dbg !6801
  %tobool17 = icmp ne i64 %15, 0, !dbg !6801
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !6798

if.then18:                                        ; preds = %if.end16
  %16 = load i64, ptr %__int, align 8, !dbg !6803
  store i64 %16, ptr %__ret11, align 8, !dbg !6803
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6803

if.end19:                                         ; preds = %if.end16
  %17 = load ptr, ptr %crc, align 8, !dbg !6798
  %lock20 = getelementptr inbounds %struct.drm_crtc_crc, ptr %17, i32 0, i32 0, !dbg !6798
  call void @spin_unlock_irq(ptr noundef %lock20) #17, !dbg !6798
  call void @schedule() #17, !dbg !6798
  %18 = load ptr, ptr %crc, align 8, !dbg !6798
  %lock21 = getelementptr inbounds %struct.drm_crtc_crc, ptr %18, i32 0, i32 0, !dbg !6798
  call void @spin_lock_irq(ptr noundef %lock21) #17, !dbg !6798
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6805
  br label %cleanup, !dbg !6805

cleanup:                                          ; preds = %if.then18, %if.end19, %if.then15
  call void @llvm.lifetime.end.p0(i64 8, ptr %__int) #16, !dbg !6805
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.end
    i32 6, label %__out
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond, !dbg !6805, !llvm.loop !6806

for.end:                                          ; preds = %cleanup
  %19 = load ptr, ptr %crc, align 8, !dbg !6797
  %wq22 = getelementptr inbounds %struct.drm_crtc_crc, ptr %19, i32 0, i32 8, !dbg !6797
  call void @finish_wait(ptr noundef %wq22, ptr noundef %__wq_entry) #17, !dbg !6797
  br label %__out, !dbg !6797

__out:                                            ; preds = %for.end, %cleanup
  call void @llvm.dbg.label(metadata !6748), !dbg !6797
  %20 = load i64, ptr %__ret11, align 8, !dbg !6797
  store i64 %20, ptr %tmp, align 8, !dbg !6797
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret11) #16, !dbg !6796
  call void @llvm.lifetime.end.p0(i64 40, ptr %__wq_entry) #16, !dbg !6796
  %21 = load i64, ptr %tmp, align 8, !dbg !6797
  %conv = trunc i64 %21 to i32, !dbg !6796
  store i32 %conv, ptr %__ret, align 4, !dbg !6796
  br label %if.end23, !dbg !6796

if.end23:                                         ; preds = %__out, %if.end7
  %22 = load i32, ptr %__ret, align 4, !dbg !6795
  store i32 %22, ptr %tmp24, align 4, !dbg !6796
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #16, !dbg !6808
  %23 = load i32, ptr %tmp24, align 4, !dbg !6795
  store i32 %23, ptr %ret, align 4, !dbg !6809
  %24 = load i32, ptr %ret, align 4, !dbg !6810
  %tobool25 = icmp ne i32 %24, 0, !dbg !6810
  br i1 %tobool25, label %if.then26, label %if.end29, !dbg !6812

if.then26:                                        ; preds = %if.end23
  %25 = load ptr, ptr %crc, align 8, !dbg !6813
  %lock27 = getelementptr inbounds %struct.drm_crtc_crc, ptr %25, i32 0, i32 0, !dbg !6815
  call void @spin_unlock_irq(ptr noundef %lock27) #17, !dbg !6816
  %26 = load i32, ptr %ret, align 4, !dbg !6817
  %conv28 = sext i32 %26 to i64, !dbg !6817
  store i64 %conv28, ptr %retval, align 8, !dbg !6818
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup81, !dbg !6818

if.end29:                                         ; preds = %if.end23
  br label %while.cond, !dbg !6781, !llvm.loop !6819

while.end:                                        ; preds = %while.cond
  %27 = load ptr, ptr %crc, align 8, !dbg !6821
  %entries = getelementptr inbounds %struct.drm_crtc_crc, ptr %27, i32 0, i32 4, !dbg !6822
  %28 = load ptr, ptr %entries, align 8, !dbg !6822
  %29 = load ptr, ptr %crc, align 8, !dbg !6823
  %tail = getelementptr inbounds %struct.drm_crtc_crc, ptr %29, i32 0, i32 6, !dbg !6824
  %30 = load i32, ptr %tail, align 4, !dbg !6824
  %idxprom = sext i32 %30 to i64, !dbg !6821
  %arrayidx = getelementptr %struct.drm_crtc_crc_entry, ptr %28, i64 %idxprom, !dbg !6821
  store ptr %arrayidx, ptr %entry2, align 8, !dbg !6825
  %31 = load i64, ptr %count.addr, align 8, !dbg !6826
  %32 = load ptr, ptr %crc, align 8, !dbg !6828
  %values_cnt = getelementptr inbounds %struct.drm_crtc_crc, ptr %32, i32 0, i32 7, !dbg !6828
  %33 = load i64, ptr %values_cnt, align 8, !dbg !6828
  %mul = mul i64 11, %33, !dbg !6828
  %add = add i64 10, %mul, !dbg !6828
  %add30 = add i64 %add, 1, !dbg !6828
  %add31 = add i64 %add30, 1, !dbg !6828
  %cmp32 = icmp ult i64 %31, %add31, !dbg !6829
  br i1 %cmp32, label %if.then34, label %if.end36, !dbg !6830

if.then34:                                        ; preds = %while.end
  %34 = load ptr, ptr %crc, align 8, !dbg !6831
  %lock35 = getelementptr inbounds %struct.drm_crtc_crc, ptr %34, i32 0, i32 0, !dbg !6833
  call void @spin_unlock_irq(ptr noundef %lock35) #17, !dbg !6834
  store i64 -22, ptr %retval, align 8, !dbg !6835
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup81, !dbg !6835

if.end36:                                         ; preds = %while.end
  br label %do.body, !dbg !6836

do.body:                                          ; preds = %if.end36
  br label %do.cond, !dbg !6837

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6837

do.end:                                           ; preds = %do.cond
  %35 = load ptr, ptr %crc, align 8, !dbg !6839
  %tail37 = getelementptr inbounds %struct.drm_crtc_crc, ptr %35, i32 0, i32 6, !dbg !6840
  %36 = load i32, ptr %tail37, align 4, !dbg !6840
  %add38 = add i32 %36, 1, !dbg !6841
  %and39 = and i32 %add38, 127, !dbg !6842
  %37 = load ptr, ptr %crc, align 8, !dbg !6843
  %tail40 = getelementptr inbounds %struct.drm_crtc_crc, ptr %37, i32 0, i32 6, !dbg !6844
  store i32 %and39, ptr %tail40, align 4, !dbg !6845
  %38 = load ptr, ptr %crc, align 8, !dbg !6846
  %lock41 = getelementptr inbounds %struct.drm_crtc_crc, ptr %38, i32 0, i32 0, !dbg !6847
  call void @spin_unlock_irq(ptr noundef %lock41) #17, !dbg !6848
  %39 = load ptr, ptr %entry2, align 8, !dbg !6849
  %has_frame_counter = getelementptr inbounds %struct.drm_crtc_crc_entry, ptr %39, i32 0, i32 0, !dbg !6851
  %40 = load i8, ptr %has_frame_counter, align 4, !dbg !6851, !range !6317, !noundef !764
  %tobool42 = trunc i8 %40 to i1, !dbg !6851
  br i1 %tobool42, label %if.then43, label %if.else, !dbg !6852

if.then43:                                        ; preds = %do.end
  %arraydecay = getelementptr inbounds [122 x i8], ptr %buf, i64 0, i64 0, !dbg !6853
  %41 = load ptr, ptr %entry2, align 8, !dbg !6854
  %frame = getelementptr inbounds %struct.drm_crtc_crc_entry, ptr %41, i32 0, i32 1, !dbg !6855
  %42 = load i32, ptr %frame, align 4, !dbg !6855
  %call44 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay, ptr noundef @.str.7, i32 noundef %42) #17, !dbg !6856
  br label %if.end47, !dbg !6856

if.else:                                          ; preds = %do.end
  %arraydecay45 = getelementptr inbounds [122 x i8], ptr %buf, i64 0, i64 0, !dbg !6857
  %call46 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay45, ptr noundef @.str.8) #17, !dbg !6858
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.then43
  store i32 0, ptr %i, align 4, !dbg !6859
  br label %for.cond48, !dbg !6861

for.cond48:                                       ; preds = %for.inc, %if.end47
  %43 = load i32, ptr %i, align 4, !dbg !6862
  %conv49 = sext i32 %43 to i64, !dbg !6862
  %44 = load ptr, ptr %crc, align 8, !dbg !6864
  %values_cnt50 = getelementptr inbounds %struct.drm_crtc_crc, ptr %44, i32 0, i32 7, !dbg !6865
  %45 = load i64, ptr %values_cnt50, align 8, !dbg !6865
  %cmp51 = icmp ult i64 %conv49, %45, !dbg !6866
  br i1 %cmp51, label %for.body, label %for.end59, !dbg !6867

for.body:                                         ; preds = %for.cond48
  %arraydecay53 = getelementptr inbounds [122 x i8], ptr %buf, i64 0, i64 0, !dbg !6868
  %add.ptr = getelementptr i8, ptr %arraydecay53, i64 10, !dbg !6869
  %46 = load i32, ptr %i, align 4, !dbg !6870
  %mul54 = mul i32 %46, 11, !dbg !6871
  %idx.ext = sext i32 %mul54 to i64, !dbg !6872
  %add.ptr55 = getelementptr i8, ptr %add.ptr, i64 %idx.ext, !dbg !6872
  %47 = load ptr, ptr %entry2, align 8, !dbg !6873
  %crcs = getelementptr inbounds %struct.drm_crtc_crc_entry, ptr %47, i32 0, i32 2, !dbg !6874
  %48 = load i32, ptr %i, align 4, !dbg !6875
  %idxprom56 = sext i32 %48 to i64, !dbg !6873
  %arrayidx57 = getelementptr [10 x i32], ptr %crcs, i64 0, i64 %idxprom56, !dbg !6873
  %49 = load i32, ptr %arrayidx57, align 4, !dbg !6873
  %call58 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr55, ptr noundef @.str.9, i32 noundef %49) #17, !dbg !6876
  br label %for.inc, !dbg !6876

for.inc:                                          ; preds = %for.body
  %50 = load i32, ptr %i, align 4, !dbg !6877
  %inc = add i32 %50, 1, !dbg !6877
  store i32 %inc, ptr %i, align 4, !dbg !6877
  br label %for.cond48, !dbg !6878, !llvm.loop !6879

for.end59:                                        ; preds = %for.cond48
  %arraydecay60 = getelementptr inbounds [122 x i8], ptr %buf, i64 0, i64 0, !dbg !6881
  %add.ptr61 = getelementptr i8, ptr %arraydecay60, i64 10, !dbg !6882
  %51 = load ptr, ptr %crc, align 8, !dbg !6883
  %values_cnt62 = getelementptr inbounds %struct.drm_crtc_crc, ptr %51, i32 0, i32 7, !dbg !6884
  %52 = load i64, ptr %values_cnt62, align 8, !dbg !6884
  %mul63 = mul i64 %52, 11, !dbg !6885
  %add.ptr64 = getelementptr i8, ptr %add.ptr61, i64 %mul63, !dbg !6886
  %call65 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr64, ptr noundef @.str.10) #17, !dbg !6887
  %53 = load ptr, ptr %user_buf.addr, align 8, !dbg !6888
  %arraydecay66 = getelementptr inbounds [122 x i8], ptr %buf, i64 0, i64 0, !dbg !6890
  %54 = load ptr, ptr %crc, align 8, !dbg !6891
  %values_cnt67 = getelementptr inbounds %struct.drm_crtc_crc, ptr %54, i32 0, i32 7, !dbg !6891
  %55 = load i64, ptr %values_cnt67, align 8, !dbg !6891
  %mul68 = mul i64 11, %55, !dbg !6891
  %add69 = add i64 10, %mul68, !dbg !6891
  %add70 = add i64 %add69, 1, !dbg !6891
  %add71 = add i64 %add70, 1, !dbg !6891
  %call72 = call i64 @copy_to_user(ptr noundef %53, ptr noundef %arraydecay66, i64 noundef %add71) #17, !dbg !6892
  %tobool73 = icmp ne i64 %call72, 0, !dbg !6892
  br i1 %tobool73, label %if.then74, label %if.end75, !dbg !6893

if.then74:                                        ; preds = %for.end59
  store i64 -14, ptr %retval, align 8, !dbg !6894
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup81, !dbg !6894

if.end75:                                         ; preds = %for.end59
  %56 = load ptr, ptr %crc, align 8, !dbg !6895
  %values_cnt76 = getelementptr inbounds %struct.drm_crtc_crc, ptr %56, i32 0, i32 7, !dbg !6895
  %57 = load i64, ptr %values_cnt76, align 8, !dbg !6895
  %mul77 = mul i64 11, %57, !dbg !6895
  %add78 = add i64 10, %mul77, !dbg !6895
  %add79 = add i64 %add78, 1, !dbg !6895
  %add80 = add i64 %add79, 1, !dbg !6895
  store i64 %add80, ptr %retval, align 8, !dbg !6896
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup81, !dbg !6896

cleanup81:                                        ; preds = %if.end75, %if.then74, %if.then34, %if.then26, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !6897
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !6897
  call void @llvm.lifetime.end.p0(i64 122, ptr %buf) #16, !dbg !6897
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry2) #16, !dbg !6897
  call void @llvm.lifetime.end.p0(i64 8, ptr %crc) #16, !dbg !6897
  call void @llvm.lifetime.end.p0(i64 8, ptr %crtc) #16, !dbg !6897
  %58 = load i64, ptr %retval, align 8, !dbg !6897
  ret i64 %58, !dbg !6897

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crtc_crc_poll(ptr noundef %file, ptr noundef %wait) #0 align 16 !dbg !6898 {
entry:
  %file.addr = alloca ptr, align 8
  %wait.addr = alloca ptr, align 8
  %crtc = alloca ptr, align 8
  %crc = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6904, metadata !DIExpression()), !dbg !6909
  store ptr %wait, ptr %wait.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wait.addr, metadata !6905, metadata !DIExpression()), !dbg !6910
  call void @llvm.lifetime.start.p0(i64 8, ptr %crtc) #16, !dbg !6911
  call void @llvm.dbg.declare(metadata ptr %crtc, metadata !6906, metadata !DIExpression()), !dbg !6912
  %0 = load ptr, ptr %file.addr, align 8, !dbg !6913
  %f_inode = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 11, !dbg !6914
  %1 = load ptr, ptr %f_inode, align 8, !dbg !6914
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 47, !dbg !6915
  %2 = load ptr, ptr %i_private, align 8, !dbg !6915
  store ptr %2, ptr %crtc, align 8, !dbg !6912
  call void @llvm.lifetime.start.p0(i64 8, ptr %crc) #16, !dbg !6916
  call void @llvm.dbg.declare(metadata ptr %crc, metadata !6907, metadata !DIExpression()), !dbg !6917
  %3 = load ptr, ptr %crtc, align 8, !dbg !6918
  %crc1 = getelementptr inbounds %struct.drm_crtc, ptr %3, i32 0, i32 26, !dbg !6919
  store ptr %crc1, ptr %crc, align 8, !dbg !6917
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !6920
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6908, metadata !DIExpression()), !dbg !6921
  store i32 0, ptr %ret, align 4, !dbg !6921
  %4 = load ptr, ptr %file.addr, align 8, !dbg !6922
  %5 = load ptr, ptr %crc, align 8, !dbg !6923
  %wq = getelementptr inbounds %struct.drm_crtc_crc, ptr %5, i32 0, i32 8, !dbg !6924
  %6 = load ptr, ptr %wait.addr, align 8, !dbg !6925
  call void @poll_wait(ptr noundef %4, ptr noundef %wq, ptr noundef %6) #17, !dbg !6926
  %7 = load ptr, ptr %crc, align 8, !dbg !6927
  %lock = getelementptr inbounds %struct.drm_crtc_crc, ptr %7, i32 0, i32 0, !dbg !6928
  call void @spin_lock_irq(ptr noundef %lock) #17, !dbg !6929
  %8 = load ptr, ptr %crc, align 8, !dbg !6930
  %source = getelementptr inbounds %struct.drm_crtc_crc, ptr %8, i32 0, i32 1, !dbg !6932
  %9 = load ptr, ptr %source, align 8, !dbg !6932
  %tobool = icmp ne ptr %9, null, !dbg !6930
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !6933

land.lhs.true:                                    ; preds = %entry
  %10 = load ptr, ptr %crc, align 8, !dbg !6934
  %call = call i32 @crtc_crc_data_count(ptr noundef %10) #17, !dbg !6935
  %tobool2 = icmp ne i32 %call, 0, !dbg !6935
  br i1 %tobool2, label %if.then, label %if.end, !dbg !6936

if.then:                                          ; preds = %land.lhs.true
  %11 = load i32, ptr %ret, align 4, !dbg !6937
  %or = or i32 %11, 65, !dbg !6937
  store i32 %or, ptr %ret, align 4, !dbg !6937
  br label %if.end, !dbg !6938

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %12 = load ptr, ptr %crc, align 8, !dbg !6939
  %lock3 = getelementptr inbounds %struct.drm_crtc_crc, ptr %12, i32 0, i32 0, !dbg !6940
  call void @spin_unlock_irq(ptr noundef %lock3) #17, !dbg !6941
  %13 = load i32, ptr %ret, align 4, !dbg !6942
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !6943
  call void @llvm.lifetime.end.p0(i64 8, ptr %crc) #16, !dbg !6943
  call void @llvm.lifetime.end.p0(i64 8, ptr %crtc) #16, !dbg !6943
  ret i32 %13, !dbg !6944
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crtc_crc_open(ptr noundef %inode, ptr noundef %filep) #0 align 16 !dbg !6945 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca ptr, align 8
  %filep.addr = alloca ptr, align 8
  %crtc = alloca ptr, align 8
  %crc = alloca ptr, align 8
  %entries = alloca ptr, align 8
  %values_cnt = alloca i64, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on44 = alloca i32, align 4
  %__flags61 = alloca i32, align 4
  %tmp74 = alloca i64, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6947, metadata !DIExpression()), !dbg !6967
  store ptr %filep, ptr %filep.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filep.addr, metadata !6948, metadata !DIExpression()), !dbg !6968
  call void @llvm.lifetime.start.p0(i64 8, ptr %crtc) #16, !dbg !6969
  call void @llvm.dbg.declare(metadata ptr %crtc, metadata !6949, metadata !DIExpression()), !dbg !6970
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !6971
  %i_private = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47, !dbg !6972
  %1 = load ptr, ptr %i_private, align 8, !dbg !6972
  store ptr %1, ptr %crtc, align 8, !dbg !6970
  call void @llvm.lifetime.start.p0(i64 8, ptr %crc) #16, !dbg !6973
  call void @llvm.dbg.declare(metadata ptr %crc, metadata !6950, metadata !DIExpression()), !dbg !6974
  %2 = load ptr, ptr %crtc, align 8, !dbg !6975
  %crc1 = getelementptr inbounds %struct.drm_crtc, ptr %2, i32 0, i32 26, !dbg !6976
  store ptr %crc1, ptr %crc, align 8, !dbg !6974
  call void @llvm.lifetime.start.p0(i64 8, ptr %entries) #16, !dbg !6977
  call void @llvm.dbg.declare(metadata ptr %entries, metadata !6951, metadata !DIExpression()), !dbg !6978
  store ptr null, ptr %entries, align 8, !dbg !6978
  call void @llvm.lifetime.start.p0(i64 8, ptr %values_cnt) #16, !dbg !6979
  call void @llvm.dbg.declare(metadata ptr %values_cnt, metadata !6952, metadata !DIExpression()), !dbg !6980
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !6981
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6953, metadata !DIExpression()), !dbg !6982
  store i32 0, ptr %ret, align 4, !dbg !6982
  %3 = load ptr, ptr %crtc, align 8, !dbg !6983
  %dev = getelementptr inbounds %struct.drm_crtc, ptr %3, i32 0, i32 0, !dbg !6985
  %4 = load ptr, ptr %dev, align 8, !dbg !6985
  %call = call zeroext i1 @drm_drv_uses_atomic_modeset(ptr noundef %4) #17, !dbg !6986
  br i1 %call, label %if.then, label %if.end11, !dbg !6987

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %crtc, align 8, !dbg !6988
  %mutex = getelementptr inbounds %struct.drm_crtc, ptr %5, i32 0, i32 4, !dbg !6990
  %call2 = call i32 @drm_modeset_lock_single_interruptible(ptr noundef %mutex) #17, !dbg !6991
  store i32 %call2, ptr %ret, align 4, !dbg !6992
  %6 = load i32, ptr %ret, align 4, !dbg !6993
  %tobool = icmp ne i32 %6, 0, !dbg !6993
  br i1 %tobool, label %if.then3, label %if.end, !dbg !6995

if.then3:                                         ; preds = %if.then
  %7 = load i32, ptr %ret, align 4, !dbg !6996
  store i32 %7, ptr %retval, align 4, !dbg !6997
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6997

if.end:                                           ; preds = %if.then
  %8 = load ptr, ptr %crtc, align 8, !dbg !6998
  %state = getelementptr inbounds %struct.drm_crtc, ptr %8, i32 0, i32 22, !dbg !7000
  %9 = load ptr, ptr %state, align 8, !dbg !7000
  %active = getelementptr inbounds %struct.drm_crtc_state, ptr %9, i32 0, i32 2, !dbg !7001
  %10 = load i8, ptr %active, align 1, !dbg !7001, !range !6317, !noundef !764
  %tobool4 = trunc i8 %10 to i1, !dbg !7001
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !7002

if.then5:                                         ; preds = %if.end
  store i32 -5, ptr %ret, align 4, !dbg !7003
  br label %if.end6, !dbg !7004

if.end6:                                          ; preds = %if.then5, %if.end
  %11 = load ptr, ptr %crtc, align 8, !dbg !7005
  %mutex7 = getelementptr inbounds %struct.drm_crtc, ptr %11, i32 0, i32 4, !dbg !7006
  call void @drm_modeset_unlock(ptr noundef %mutex7) #17, !dbg !7007
  %12 = load i32, ptr %ret, align 4, !dbg !7008
  %tobool8 = icmp ne i32 %12, 0, !dbg !7008
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !7010

if.then9:                                         ; preds = %if.end6
  %13 = load i32, ptr %ret, align 4, !dbg !7011
  store i32 %13, ptr %retval, align 4, !dbg !7012
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7012

if.end10:                                         ; preds = %if.end6
  br label %if.end11, !dbg !7013

if.end11:                                         ; preds = %if.end10, %entry
  %14 = load ptr, ptr %crtc, align 8, !dbg !7014
  %funcs = getelementptr inbounds %struct.drm_crtc, ptr %14, i32 0, i32 16, !dbg !7015
  %15 = load ptr, ptr %funcs, align 8, !dbg !7015
  %verify_crc_source = getelementptr inbounds %struct.drm_crtc_funcs, ptr %15, i32 0, i32 17, !dbg !7016
  %16 = load ptr, ptr %verify_crc_source, align 8, !dbg !7016
  %17 = load ptr, ptr %crtc, align 8, !dbg !7017
  %18 = load ptr, ptr %crc, align 8, !dbg !7018
  %source = getelementptr inbounds %struct.drm_crtc_crc, ptr %18, i32 0, i32 1, !dbg !7019
  %19 = load ptr, ptr %source, align 8, !dbg !7019
  %call12 = call i32 %16(ptr noundef %17, ptr noundef %19, ptr noundef %values_cnt) #17, !dbg !7014
  store i32 %call12, ptr %ret, align 4, !dbg !7020
  %20 = load i32, ptr %ret, align 4, !dbg !7021
  %tobool13 = icmp ne i32 %20, 0, !dbg !7021
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !7023

if.then14:                                        ; preds = %if.end11
  %21 = load i32, ptr %ret, align 4, !dbg !7024
  store i32 %21, ptr %retval, align 4, !dbg !7025
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7025

if.end15:                                         ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !7026
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6954, metadata !DIExpression()), !dbg !7026
  %22 = load i64, ptr %values_cnt, align 8, !dbg !7026
  %cmp = icmp ugt i64 %22, 10, !dbg !7026
  %lnot = xor i1 %cmp, true, !dbg !7026
  %lnot16 = xor i1 %lnot, true, !dbg !7026
  %lnot.ext = zext i1 %lnot16 to i32, !dbg !7026
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !7026
  %23 = load i32, ptr %__ret_warn_on, align 4, !dbg !7027
  %tobool17 = icmp ne i32 %23, 0, !dbg !7027
  %lnot18 = xor i1 %tobool17, true, !dbg !7027
  %lnot20 = xor i1 %lnot18, true, !dbg !7027
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !7027
  %conv = sext i32 %lnot.ext21 to i64, !dbg !7027
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7027
  %tobool22 = icmp ne i64 %expval, 0, !dbg !7027
  br i1 %tobool22, label %if.then23, label %if.end33, !dbg !7026

if.then23:                                        ; preds = %if.end15
  br label %do.body, !dbg !7027

do.body:                                          ; preds = %if.then23
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !7028
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6957, metadata !DIExpression()), !dbg !7028
  store i32 2305, ptr %__flags, align 4, !dbg !7028
  br label %do.body24, !dbg !7028

do.body24:                                        ; preds = %do.body
  br label %do.cond, !dbg !7029

do.cond:                                          ; preds = %do.body24
  br label %do.end, !dbg !7029

do.end:                                           ; preds = %do.cond
  br label %do.body25, !dbg !7028

do.body25:                                        ; preds = %do.end
  %24 = load i32, ptr %__flags, align 4, !dbg !7031
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.11, i32 220, i32 %24, i64 12) #16, !dbg !7031, !srcloc !7033
  br label %do.cond26, !dbg !7031

do.cond26:                                        ; preds = %do.body25
  br label %do.end27, !dbg !7031

do.end27:                                         ; preds = %do.cond26
  br label %do.body28, !dbg !7028

do.body28:                                        ; preds = %do.end27
  br label %do.cond29, !dbg !7034

do.cond29:                                        ; preds = %do.body28
  br label %do.end30, !dbg !7034

do.end30:                                         ; preds = %do.cond29
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !7027
  br label %do.cond31, !dbg !7028

do.cond31:                                        ; preds = %do.end30
  br label %do.end32, !dbg !7028

do.end32:                                         ; preds = %do.cond31
  br label %if.end33, !dbg !7028

if.end33:                                         ; preds = %do.end32, %if.end15
  %25 = load i32, ptr %__ret_warn_on, align 4, !dbg !7026
  %tobool34 = icmp ne i32 %25, 0, !dbg !7026
  %lnot35 = xor i1 %tobool34, true, !dbg !7026
  %lnot37 = xor i1 %lnot35, true, !dbg !7026
  %lnot.ext38 = zext i1 %lnot37 to i32, !dbg !7026
  %conv39 = sext i32 %lnot.ext38 to i64, !dbg !7026
  %expval40 = call i64 @llvm.expect.i64(i64 %conv39, i64 0), !dbg !7026
  store i64 %expval40, ptr %tmp, align 8, !dbg !7027
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !7036
  %26 = load i64, ptr %tmp, align 8, !dbg !7026
  %tobool41 = icmp ne i64 %26, 0, !dbg !7036
  br i1 %tobool41, label %if.then42, label %if.end43, !dbg !7037

if.then42:                                        ; preds = %if.end33
  store i32 -22, ptr %retval, align 4, !dbg !7038
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7038

if.end43:                                         ; preds = %if.end33
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on44) #16, !dbg !7039
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on44, metadata !6960, metadata !DIExpression()), !dbg !7039
  %27 = load i64, ptr %values_cnt, align 8, !dbg !7039
  %cmp45 = icmp eq i64 %27, 0, !dbg !7039
  %lnot47 = xor i1 %cmp45, true, !dbg !7039
  %lnot49 = xor i1 %lnot47, true, !dbg !7039
  %lnot.ext50 = zext i1 %lnot49 to i32, !dbg !7039
  store i32 %lnot.ext50, ptr %__ret_warn_on44, align 4, !dbg !7039
  %28 = load i32, ptr %__ret_warn_on44, align 4, !dbg !7040
  %tobool51 = icmp ne i32 %28, 0, !dbg !7040
  %lnot52 = xor i1 %tobool51, true, !dbg !7040
  %lnot54 = xor i1 %lnot52, true, !dbg !7040
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !7040
  %conv56 = sext i32 %lnot.ext55 to i64, !dbg !7040
  %expval57 = call i64 @llvm.expect.i64(i64 %conv56, i64 0), !dbg !7040
  %tobool58 = icmp ne i64 %expval57, 0, !dbg !7040
  br i1 %tobool58, label %if.then59, label %if.end73, !dbg !7039

if.then59:                                        ; preds = %if.end43
  br label %do.body60, !dbg !7040

do.body60:                                        ; preds = %if.then59
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags61) #16, !dbg !7041
  call void @llvm.dbg.declare(metadata ptr %__flags61, metadata !6963, metadata !DIExpression()), !dbg !7041
  store i32 2305, ptr %__flags61, align 4, !dbg !7041
  br label %do.body62, !dbg !7041

do.body62:                                        ; preds = %do.body60
  br label %do.cond63, !dbg !7042

do.cond63:                                        ; preds = %do.body62
  br label %do.end64, !dbg !7042

do.end64:                                         ; preds = %do.cond63
  br label %do.body65, !dbg !7041

do.body65:                                        ; preds = %do.end64
  %29 = load i32, ptr %__flags61, align 4, !dbg !7044
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.11, i32 223, i32 %29, i64 12) #16, !dbg !7044, !srcloc !7046
  br label %do.cond66, !dbg !7044

do.cond66:                                        ; preds = %do.body65
  br label %do.end67, !dbg !7044

do.end67:                                         ; preds = %do.cond66
  br label %do.body68, !dbg !7041

do.body68:                                        ; preds = %do.end67
  br label %do.cond69, !dbg !7047

do.cond69:                                        ; preds = %do.body68
  br label %do.end70, !dbg !7047

do.end70:                                         ; preds = %do.cond69
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags61) #16, !dbg !7040
  br label %do.cond71, !dbg !7041

do.cond71:                                        ; preds = %do.end70
  br label %do.end72, !dbg !7041

do.end72:                                         ; preds = %do.cond71
  br label %if.end73, !dbg !7041

if.end73:                                         ; preds = %do.end72, %if.end43
  %30 = load i32, ptr %__ret_warn_on44, align 4, !dbg !7039
  %tobool75 = icmp ne i32 %30, 0, !dbg !7039
  %lnot76 = xor i1 %tobool75, true, !dbg !7039
  %lnot78 = xor i1 %lnot76, true, !dbg !7039
  %lnot.ext79 = zext i1 %lnot78 to i32, !dbg !7039
  %conv80 = sext i32 %lnot.ext79 to i64, !dbg !7039
  %expval81 = call i64 @llvm.expect.i64(i64 %conv80, i64 0), !dbg !7039
  store i64 %expval81, ptr %tmp74, align 8, !dbg !7040
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on44) #16, !dbg !7049
  %31 = load i64, ptr %tmp74, align 8, !dbg !7039
  %tobool82 = icmp ne i64 %31, 0, !dbg !7049
  br i1 %tobool82, label %if.then83, label %if.end84, !dbg !7050

if.then83:                                        ; preds = %if.end73
  store i32 -22, ptr %retval, align 4, !dbg !7051
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7051

if.end84:                                         ; preds = %if.end73
  %call85 = call noalias ptr @kcalloc(i64 noundef 128, i64 noundef 48, i32 noundef 3264) #18, !dbg !7052
  store ptr %call85, ptr %entries, align 8, !dbg !7053
  %32 = load ptr, ptr %entries, align 8, !dbg !7054
  %tobool86 = icmp ne ptr %32, null, !dbg !7054
  br i1 %tobool86, label %if.end88, label %if.then87, !dbg !7056

if.then87:                                        ; preds = %if.end84
  store i32 -12, ptr %retval, align 4, !dbg !7057
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7057

if.end88:                                         ; preds = %if.end84
  %33 = load ptr, ptr %crc, align 8, !dbg !7058
  %lock = getelementptr inbounds %struct.drm_crtc_crc, ptr %33, i32 0, i32 0, !dbg !7059
  call void @spin_lock_irq(ptr noundef %lock) #17, !dbg !7060
  %34 = load ptr, ptr %crc, align 8, !dbg !7061
  %opened = getelementptr inbounds %struct.drm_crtc_crc, ptr %34, i32 0, i32 2, !dbg !7063
  %35 = load i8, ptr %opened, align 8, !dbg !7063, !range !6317, !noundef !764
  %tobool89 = trunc i8 %35 to i1, !dbg !7063
  br i1 %tobool89, label %if.else, label %if.then90, !dbg !7064

if.then90:                                        ; preds = %if.end88
  %36 = load ptr, ptr %crc, align 8, !dbg !7065
  %opened91 = getelementptr inbounds %struct.drm_crtc_crc, ptr %36, i32 0, i32 2, !dbg !7067
  store i8 1, ptr %opened91, align 8, !dbg !7068
  %37 = load ptr, ptr %entries, align 8, !dbg !7069
  %38 = load ptr, ptr %crc, align 8, !dbg !7070
  %entries92 = getelementptr inbounds %struct.drm_crtc_crc, ptr %38, i32 0, i32 4, !dbg !7071
  store ptr %37, ptr %entries92, align 8, !dbg !7072
  %39 = load i64, ptr %values_cnt, align 8, !dbg !7073
  %40 = load ptr, ptr %crc, align 8, !dbg !7074
  %values_cnt93 = getelementptr inbounds %struct.drm_crtc_crc, ptr %40, i32 0, i32 7, !dbg !7075
  store i64 %39, ptr %values_cnt93, align 8, !dbg !7076
  br label %if.end94, !dbg !7077

if.else:                                          ; preds = %if.end88
  store i32 -16, ptr %ret, align 4, !dbg !7078
  br label %if.end94

if.end94:                                         ; preds = %if.else, %if.then90
  %41 = load ptr, ptr %crc, align 8, !dbg !7080
  %lock95 = getelementptr inbounds %struct.drm_crtc_crc, ptr %41, i32 0, i32 0, !dbg !7081
  call void @spin_unlock_irq(ptr noundef %lock95) #17, !dbg !7082
  %42 = load i32, ptr %ret, align 4, !dbg !7083
  %tobool96 = icmp ne i32 %42, 0, !dbg !7083
  br i1 %tobool96, label %if.then97, label %if.end98, !dbg !7085

if.then97:                                        ; preds = %if.end94
  %43 = load ptr, ptr %entries, align 8, !dbg !7086
  call void @kfree(ptr noundef %43) #17, !dbg !7088
  %44 = load i32, ptr %ret, align 4, !dbg !7089
  store i32 %44, ptr %retval, align 4, !dbg !7090
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7090

if.end98:                                         ; preds = %if.end94
  %45 = load ptr, ptr %crtc, align 8, !dbg !7091
  %funcs99 = getelementptr inbounds %struct.drm_crtc, ptr %45, i32 0, i32 16, !dbg !7092
  %46 = load ptr, ptr %funcs99, align 8, !dbg !7092
  %set_crc_source = getelementptr inbounds %struct.drm_crtc_funcs, ptr %46, i32 0, i32 16, !dbg !7093
  %47 = load ptr, ptr %set_crc_source, align 8, !dbg !7093
  %48 = load ptr, ptr %crtc, align 8, !dbg !7094
  %49 = load ptr, ptr %crc, align 8, !dbg !7095
  %source100 = getelementptr inbounds %struct.drm_crtc_crc, ptr %49, i32 0, i32 1, !dbg !7096
  %50 = load ptr, ptr %source100, align 8, !dbg !7096
  %call101 = call i32 %47(ptr noundef %48, ptr noundef %50) #17, !dbg !7091
  store i32 %call101, ptr %ret, align 4, !dbg !7097
  %51 = load i32, ptr %ret, align 4, !dbg !7098
  %tobool102 = icmp ne i32 %51, 0, !dbg !7098
  br i1 %tobool102, label %if.then103, label %if.end104, !dbg !7100

if.then103:                                       ; preds = %if.end98
  br label %err, !dbg !7101

if.end104:                                        ; preds = %if.end98
  store i32 0, ptr %retval, align 4, !dbg !7102
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7102

err:                                              ; preds = %if.then103
  call void @llvm.dbg.label(metadata !6966), !dbg !7103
  %52 = load ptr, ptr %crc, align 8, !dbg !7104
  %lock105 = getelementptr inbounds %struct.drm_crtc_crc, ptr %52, i32 0, i32 0, !dbg !7105
  call void @spin_lock_irq(ptr noundef %lock105) #17, !dbg !7106
  %53 = load ptr, ptr %crc, align 8, !dbg !7107
  call void @crtc_crc_cleanup(ptr noundef %53) #17, !dbg !7108
  %54 = load ptr, ptr %crc, align 8, !dbg !7109
  %lock106 = getelementptr inbounds %struct.drm_crtc_crc, ptr %54, i32 0, i32 0, !dbg !7110
  call void @spin_unlock_irq(ptr noundef %lock106) #17, !dbg !7111
  %55 = load i32, ptr %ret, align 4, !dbg !7112
  store i32 %55, ptr %retval, align 4, !dbg !7113
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7113

cleanup:                                          ; preds = %err, %if.end104, %if.then97, %if.then87, %if.then83, %if.then42, %if.then14, %if.then9, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !7114
  call void @llvm.lifetime.end.p0(i64 8, ptr %values_cnt) #16, !dbg !7114
  call void @llvm.lifetime.end.p0(i64 8, ptr %entries) #16, !dbg !7114
  call void @llvm.lifetime.end.p0(i64 8, ptr %crc) #16, !dbg !7114
  call void @llvm.lifetime.end.p0(i64 8, ptr %crtc) #16, !dbg !7114
  %56 = load i32, ptr %retval, align 4, !dbg !7114
  ret i32 %56, !dbg !7114
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crtc_crc_release(ptr noundef %inode, ptr noundef %filep) #0 align 16 !dbg !7115 {
entry:
  %inode.addr = alloca ptr, align 8
  %filep.addr = alloca ptr, align 8
  %crtc = alloca ptr, align 8
  %crc = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !7117, metadata !DIExpression()), !dbg !7121
  store ptr %filep, ptr %filep.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filep.addr, metadata !7118, metadata !DIExpression()), !dbg !7122
  call void @llvm.lifetime.start.p0(i64 8, ptr %crtc) #16, !dbg !7123
  call void @llvm.dbg.declare(metadata ptr %crtc, metadata !7119, metadata !DIExpression()), !dbg !7124
  %0 = load ptr, ptr %filep.addr, align 8, !dbg !7125
  %f_inode = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 11, !dbg !7126
  %1 = load ptr, ptr %f_inode, align 8, !dbg !7126
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 47, !dbg !7127
  %2 = load ptr, ptr %i_private, align 8, !dbg !7127
  store ptr %2, ptr %crtc, align 8, !dbg !7124
  call void @llvm.lifetime.start.p0(i64 8, ptr %crc) #16, !dbg !7128
  call void @llvm.dbg.declare(metadata ptr %crc, metadata !7120, metadata !DIExpression()), !dbg !7129
  %3 = load ptr, ptr %crtc, align 8, !dbg !7130
  %crc1 = getelementptr inbounds %struct.drm_crtc, ptr %3, i32 0, i32 26, !dbg !7131
  store ptr %crc1, ptr %crc, align 8, !dbg !7129
  %4 = load ptr, ptr %crc, align 8, !dbg !7132
  %lock = getelementptr inbounds %struct.drm_crtc_crc, ptr %4, i32 0, i32 0, !dbg !7133
  call void @spin_lock_irq(ptr noundef %lock) #17, !dbg !7134
  %5 = load ptr, ptr %crc, align 8, !dbg !7135
  %opened = getelementptr inbounds %struct.drm_crtc_crc, ptr %5, i32 0, i32 2, !dbg !7136
  store i8 0, ptr %opened, align 8, !dbg !7137
  %6 = load ptr, ptr %crc, align 8, !dbg !7138
  %lock2 = getelementptr inbounds %struct.drm_crtc_crc, ptr %6, i32 0, i32 0, !dbg !7139
  call void @spin_unlock_irq(ptr noundef %lock2) #17, !dbg !7140
  %7 = load ptr, ptr %crtc, align 8, !dbg !7141
  %funcs = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 16, !dbg !7142
  %8 = load ptr, ptr %funcs, align 8, !dbg !7142
  %set_crc_source = getelementptr inbounds %struct.drm_crtc_funcs, ptr %8, i32 0, i32 16, !dbg !7143
  %9 = load ptr, ptr %set_crc_source, align 8, !dbg !7143
  %10 = load ptr, ptr %crtc, align 8, !dbg !7144
  %call = call i32 %9(ptr noundef %10, ptr noundef null) #17, !dbg !7141
  %11 = load ptr, ptr %crc, align 8, !dbg !7145
  %lock3 = getelementptr inbounds %struct.drm_crtc_crc, ptr %11, i32 0, i32 0, !dbg !7146
  call void @spin_lock_irq(ptr noundef %lock3) #17, !dbg !7147
  %12 = load ptr, ptr %crc, align 8, !dbg !7148
  call void @crtc_crc_cleanup(ptr noundef %12) #17, !dbg !7149
  %13 = load ptr, ptr %crc, align 8, !dbg !7150
  %lock4 = getelementptr inbounds %struct.drm_crtc_crc, ptr %13, i32 0, i32 0, !dbg !7151
  call void @spin_unlock_irq(ptr noundef %lock4) #17, !dbg !7152
  call void @llvm.lifetime.end.p0(i64 8, ptr %crc) #16, !dbg !7153
  call void @llvm.lifetime.end.p0(i64 8, ptr %crtc) #16, !dbg !7153
  ret i32 0, !dbg !7154
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crtc_crc_data_count(ptr noundef %crc) #0 align 16 !dbg !7155 {
entry:
  %crc.addr = alloca ptr, align 8
  store ptr %crc, ptr %crc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %crc.addr, metadata !7159, metadata !DIExpression()), !dbg !7160
  br label %do.body, !dbg !7161

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %crc.addr, align 8, !dbg !7162
  %lock = getelementptr inbounds %struct.drm_crtc_crc, ptr %0, i32 0, i32 0, !dbg !7162
  %1 = getelementptr inbounds %struct.spinlock, ptr %lock, i32 0, i32 0, !dbg !7162
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %1, i32 0, i32 0, !dbg !7162
  %call = call i32 @queued_spin_is_locked(ptr noundef %raw_lock) #17, !dbg !7162
  %tobool = icmp ne i32 %call, 0, !dbg !7162
  %lnot = xor i1 %tobool, true, !dbg !7162
  %lnot1 = xor i1 %lnot, true, !dbg !7162
  %lnot2 = xor i1 %lnot1, true, !dbg !7162
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !7162
  %conv = sext i32 %lnot.ext to i64, !dbg !7162
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7162
  %tobool3 = icmp ne i64 %expval, 0, !dbg !7162
  br i1 %tobool3, label %if.then, label %if.end, !dbg !7165

if.then:                                          ; preds = %do.body
  br label %do.body4, !dbg !7162

do.body4:                                         ; preds = %if.then
  br label %do.body5, !dbg !7166

do.body5:                                         ; preds = %do.body4
  br label %do.end, !dbg !7168

do.end:                                           ; preds = %do.body5
  br label %do.body6, !dbg !7166

do.body6:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.11, i32 180, i32 0, i64 12) #16, !dbg !7170, !srcloc !7172
  br label %do.end7, !dbg !7170

do.end7:                                          ; preds = %do.body6
  unreachable, !dbg !7166

do.end8:                                          ; No predecessors!
  br label %if.end, !dbg !7166

if.end:                                           ; preds = %do.end8, %do.body
  br label %do.end9, !dbg !7165

do.end9:                                          ; preds = %if.end
  %2 = load ptr, ptr %crc.addr, align 8, !dbg !7173
  %head = getelementptr inbounds %struct.drm_crtc_crc, ptr %2, i32 0, i32 5, !dbg !7173
  %3 = load i32, ptr %head, align 8, !dbg !7173
  %4 = load ptr, ptr %crc.addr, align 8, !dbg !7173
  %tail = getelementptr inbounds %struct.drm_crtc_crc, ptr %4, i32 0, i32 6, !dbg !7173
  %5 = load i32, ptr %tail, align 4, !dbg !7173
  %sub = sub i32 %3, %5, !dbg !7173
  %and = and i32 %sub, 127, !dbg !7173
  ret i32 %and, !dbg !7174
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7175 dso_local void @init_wait_entry(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7178 dso_local i64 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7181 dso_local void @schedule() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7182 dso_local void @finish_wait(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7185 dso_local i32 @sprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #4 align 16 !dbg !7189 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !7194, metadata !DIExpression()), !dbg !7197
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !7195, metadata !DIExpression()), !dbg !7198
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !7196, metadata !DIExpression()), !dbg !7199
  %0 = load ptr, ptr %from.addr, align 8, !dbg !7200
  %1 = load i64, ptr %n.addr, align 8, !dbg !7202
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext true) #17, !dbg !7203
  br i1 %call, label %if.then, label %if.end, !dbg !7204

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !7205
  %3 = load ptr, ptr %from.addr, align 8, !dbg !7206
  %4 = load i64, ptr %n.addr, align 8, !dbg !7207
  %call1 = call i64 @_copy_to_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #17, !dbg !7208
  store i64 %call1, ptr %n.addr, align 8, !dbg !7209
  br label %if.end, !dbg !7210

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !7211
  ret i64 %5, !dbg !7212
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @queued_spin_is_locked(ptr noundef %lock) #4 align 16 !dbg !7213 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !7219, metadata !DIExpression()), !dbg !7220
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !7221
  %1 = getelementptr inbounds %struct.qspinlock, ptr %0, i32 0, i32 0, !dbg !7222
  %call = call i32 @atomic_read(ptr noundef %1) #17, !dbg !7223
  ret i32 %call, !dbg !7224
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #4 align 16 !dbg !7225 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7232, metadata !DIExpression()), !dbg !7233
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7234
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #17, !dbg !7235
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7236
  %call = call i32 @raw_atomic_read(ptr noundef %1) #17, !dbg !7237
  ret i32 %call, !dbg !7238
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !7239 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7247, metadata !DIExpression()), !dbg !7249
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7248, metadata !DIExpression()), !dbg !7250
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7251
  %1 = load i64, ptr %size.addr, align 8, !dbg !7252
  %conv = trunc i64 %1 to i32, !dbg !7252
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #17, !dbg !7253
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7254
  %3 = load i64, ptr %size.addr, align 8, !dbg !7254
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #17, !dbg !7254
  ret void, !dbg !7255
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #4 align 16 !dbg !7256 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7259, metadata !DIExpression()), !dbg !7260
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7261
  %call = call i32 @arch_atomic_read(ptr noundef %0) #17, !dbg !7262
  ret i32 %call, !dbg !7263
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !7264 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7269, metadata !DIExpression()), !dbg !7271
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7270, metadata !DIExpression()), !dbg !7272
  ret i1 true, !dbg !7273
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #6 align 16 !dbg !7274 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7279, metadata !DIExpression()), !dbg !7282
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7280, metadata !DIExpression()), !dbg !7283
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !7281, metadata !DIExpression()), !dbg !7284
  ret void, !dbg !7285
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #4 align 16 !dbg !7286 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7289, metadata !DIExpression()), !dbg !7290
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7291
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !7291
  %1 = load volatile i32, ptr %counter, align 4, !dbg !7291
  ret i32 %1, !dbg !7292
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_copy_size(ptr noundef %addr, i64 noundef %bytes, i1 noundef zeroext %is_source) #4 align 16 !dbg !7293 {
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
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7297, metadata !DIExpression()), !dbg !7307
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !7298, metadata !DIExpression()), !dbg !7308
  %frombool = zext i1 %is_source to i8
  store i8 %frombool, ptr %is_source.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_source.addr, metadata !7299, metadata !DIExpression()), !dbg !7309
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #16, !dbg !7310
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !7300, metadata !DIExpression()), !dbg !7311
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7312
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false), !dbg !7313
  %conv = trunc i64 %1 to i32, !dbg !7313
  store i32 %conv, ptr %sz, align 4, !dbg !7311
  %2 = load i32, ptr %sz, align 4, !dbg !7314
  %cmp = icmp sge i32 %2, 0, !dbg !7314
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !7314

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !7314
  %conv2 = sext i32 %3 to i64, !dbg !7314
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !7314
  %cmp3 = icmp ult i64 %conv2, %4, !dbg !7314
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !7316
  %lnot = xor i1 %5, true, !dbg !7314
  %lnot5 = xor i1 %lnot, true, !dbg !7314
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !7314
  %conv6 = sext i32 %lnot.ext to i64, !dbg !7314
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !7314
  %tobool = icmp ne i64 %expval, 0, !dbg !7314
  br i1 %tobool, label %if.then, label %if.end12, !dbg !7317

if.then:                                          ; preds = %land.end
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !7318
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !7321
  br i1 %7, label %if.else, label %if.then7, !dbg !7322

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %sz, align 4, !dbg !7323
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !7324
  call void @copy_overflow(i32 noundef %8, i64 noundef %9) #17, !dbg !7325
  br label %if.end11, !dbg !7325

if.else:                                          ; preds = %if.then
  %10 = load i8, ptr %is_source.addr, align 1, !dbg !7326, !range !6317, !noundef !764
  %tobool8 = trunc i8 %10 to i1, !dbg !7326
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !7328

if.then9:                                         ; preds = %if.else
  call void @__bad_copy_from() #17, !dbg !7329, !srcloc !7330
  br label %if.end, !dbg !7329

if.else10:                                        ; preds = %if.else
  call void @__bad_copy_to() #17, !dbg !7331, !srcloc !7332
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  store i1 false, ptr %retval, align 1, !dbg !7333
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7333

if.end12:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !7334
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !7301, metadata !DIExpression()), !dbg !7334
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !7334
  %cmp13 = icmp ugt i64 %11, 2147483647, !dbg !7334
  %lnot15 = xor i1 %cmp13, true, !dbg !7334
  %lnot17 = xor i1 %lnot15, true, !dbg !7334
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !7334
  store i32 %lnot.ext18, ptr %__ret_warn_on, align 4, !dbg !7334
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !7335
  %tobool19 = icmp ne i32 %12, 0, !dbg !7335
  %lnot20 = xor i1 %tobool19, true, !dbg !7335
  %lnot22 = xor i1 %lnot20, true, !dbg !7335
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !7335
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !7335
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !7335
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !7335
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !7334

if.then27:                                        ; preds = %if.end12
  br label %do.body, !dbg !7335

do.body:                                          ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !7336
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !7304, metadata !DIExpression()), !dbg !7336
  store i32 2307, ptr %__flags, align 4, !dbg !7336
  br label %do.body28, !dbg !7336

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !7337

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !7337

do.end:                                           ; preds = %do.cond
  br label %do.body29, !dbg !7336

do.body29:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !7339
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.12, i32 249, i32 %13, i64 12) #16, !dbg !7339, !srcloc !7341
  br label %do.cond30, !dbg !7339

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !7339

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !7336

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !7342

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !7342

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !7335
  br label %do.cond35, !dbg !7336

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !7336

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !7336

if.end37:                                         ; preds = %do.end36, %if.end12
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !7334
  %tobool38 = icmp ne i32 %14, 0, !dbg !7334
  %lnot39 = xor i1 %tobool38, true, !dbg !7334
  %lnot41 = xor i1 %lnot39, true, !dbg !7334
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !7334
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !7334
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !7334
  store i64 %expval44, ptr %tmp, align 8, !dbg !7335
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !7344
  %15 = load i64, ptr %tmp, align 8, !dbg !7334
  %tobool45 = icmp ne i64 %15, 0, !dbg !7344
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !7345

if.then46:                                        ; preds = %if.end37
  store i1 false, ptr %retval, align 1, !dbg !7346
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7346

if.end47:                                         ; preds = %if.end37
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !7347
  %17 = load i64, ptr %bytes.addr, align 8, !dbg !7348
  %18 = load i8, ptr %is_source.addr, align 1, !dbg !7349, !range !6317, !noundef !764
  %tobool48 = trunc i8 %18 to i1, !dbg !7349
  call void @check_object_size(ptr noundef %16, i64 noundef %17, i1 noundef zeroext %tobool48) #17, !dbg !7350
  store i1 true, ptr %retval, align 1, !dbg !7351
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7351

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #16, !dbg !7352
  %19 = load i1, ptr %retval, align 1, !dbg !7352
  ret i1 %19, !dbg !7352
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7353 dso_local i64 @_copy_to_user(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #1

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_overflow(i32 noundef %size, i64 noundef %count) #6 align 16 !dbg !7354 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7358, metadata !DIExpression()), !dbg !7360
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !7359, metadata !DIExpression()), !dbg !7361
  %0 = load i32, ptr %size.addr, align 4, !dbg !7362
  %1 = load i64, ptr %count.addr, align 8, !dbg !7364
  call void @__copy_overflow(i32 noundef %0, i64 noundef %1) #17, !dbg !7365
  ret void, !dbg !7366
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7367 dso_local void @__bad_copy_from() #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7368 dso_local void @__bad_copy_to() #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #6 align 16 !dbg !7369 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7373, metadata !DIExpression()), !dbg !7376
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !7374, metadata !DIExpression()), !dbg !7377
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !7375, metadata !DIExpression()), !dbg !7378
  ret void, !dbg !7379
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7380 dso_local void @__copy_overflow(i32 noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @poll_wait(ptr noundef %filp, ptr noundef %wait_address, ptr noundef %p) #6 align 16 !dbg !7381 {
entry:
  %filp.addr = alloca ptr, align 8
  %wait_address.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  store ptr %filp, ptr %filp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filp.addr, metadata !7385, metadata !DIExpression()), !dbg !7388
  store ptr %wait_address, ptr %wait_address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wait_address.addr, metadata !7386, metadata !DIExpression()), !dbg !7389
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7387, metadata !DIExpression()), !dbg !7390
  %0 = load ptr, ptr %p.addr, align 8, !dbg !7391
  %tobool = icmp ne ptr %0, null, !dbg !7391
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !7393

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8, !dbg !7394
  %_qproc = getelementptr inbounds %struct.poll_table_struct, ptr %1, i32 0, i32 0, !dbg !7395
  %2 = load ptr, ptr %_qproc, align 8, !dbg !7395
  %tobool1 = icmp ne ptr %2, null, !dbg !7394
  br i1 %tobool1, label %land.lhs.true2, label %if.end, !dbg !7396

land.lhs.true2:                                   ; preds = %land.lhs.true
  %3 = load ptr, ptr %wait_address.addr, align 8, !dbg !7397
  %tobool3 = icmp ne ptr %3, null, !dbg !7397
  br i1 %tobool3, label %if.then, label %if.end, !dbg !7398

if.then:                                          ; preds = %land.lhs.true2
  %4 = load ptr, ptr %p.addr, align 8, !dbg !7399
  %_qproc4 = getelementptr inbounds %struct.poll_table_struct, ptr %4, i32 0, i32 0, !dbg !7401
  %5 = load ptr, ptr %_qproc4, align 8, !dbg !7401
  %6 = load ptr, ptr %filp.addr, align 8, !dbg !7402
  %7 = load ptr, ptr %wait_address.addr, align 8, !dbg !7403
  %8 = load ptr, ptr %p.addr, align 8, !dbg !7404
  call void %5(ptr noundef %6, ptr noundef %7, ptr noundef %8) #17, !dbg !7399
  br label %do.body, !dbg !7405

do.body:                                          ; preds = %if.then
  br label %do.body5, !dbg !7406

do.body5:                                         ; preds = %do.body
  br label %do.end, !dbg !7408

do.end:                                           ; preds = %do.body5
  call void asm sideeffect "lock; addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !7406, !srcloc !7410
  br label %do.end6, !dbg !7406

do.end6:                                          ; preds = %do.end
  br label %if.end, !dbg !7411

if.end:                                           ; preds = %do.end6, %land.lhs.true2, %land.lhs.true, %entry
  ret void, !dbg !7412
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @drm_drv_uses_atomic_modeset(ptr noundef %dev) #6 align 16 !dbg !7413 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7417, metadata !DIExpression()), !dbg !7418
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !7419
  %call = call zeroext i1 @drm_core_check_feature(ptr noundef %0, i32 noundef 16) #17, !dbg !7420
  br i1 %call, label %lor.end, label %lor.rhs, !dbg !7421

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !7422
  %mode_config = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 31, !dbg !7423
  %funcs = getelementptr inbounds %struct.drm_mode_config, ptr %mode_config, i32 0, i32 27, !dbg !7424
  %2 = load ptr, ptr %funcs, align 8, !dbg !7424
  %tobool = icmp ne ptr %2, null, !dbg !7422
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !7425

land.rhs:                                         ; preds = %lor.rhs
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !7426
  %mode_config1 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 31, !dbg !7427
  %funcs2 = getelementptr inbounds %struct.drm_mode_config, ptr %mode_config1, i32 0, i32 27, !dbg !7428
  %4 = load ptr, ptr %funcs2, align 8, !dbg !7428
  %atomic_commit = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %4, i32 0, i32 5, !dbg !7429
  %5 = load ptr, ptr %atomic_commit, align 8, !dbg !7429
  %cmp = icmp ne ptr %5, null, !dbg !7430
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %6 = phi i1 [ false, %lor.rhs ], [ %cmp, %land.rhs ], !dbg !7431
  br label %lor.end, !dbg !7421

lor.end:                                          ; preds = %land.end, %entry
  %7 = phi i1 [ true, %entry ], [ %6, %land.end ]
  ret i1 %7, !dbg !7432
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7433 dso_local i32 @drm_modeset_lock_single_interruptible(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7436 dso_local void @drm_modeset_unlock(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kcalloc(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #11 align 16 !dbg !7439 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !7443, metadata !DIExpression()), !dbg !7446
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7444, metadata !DIExpression()), !dbg !7447
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7445, metadata !DIExpression()), !dbg !7448
  %0 = load i64, ptr %n.addr, align 8, !dbg !7449
  %1 = load i64, ptr %size.addr, align 8, !dbg !7450
  %2 = load i32, ptr %flags.addr, align 4, !dbg !7451
  %or = or i32 %2, 256, !dbg !7452
  %call = call noalias ptr @kmalloc_array(i64 noundef %0, i64 noundef %1, i32 noundef %or) #18, !dbg !7453
  ret ptr %call, !dbg !7454
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @crtc_crc_cleanup(ptr noundef %crc) #0 align 16 !dbg !7455 {
entry:
  %crc.addr = alloca ptr, align 8
  store ptr %crc, ptr %crc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %crc.addr, metadata !7459, metadata !DIExpression()), !dbg !7460
  %0 = load ptr, ptr %crc.addr, align 8, !dbg !7461
  %entries = getelementptr inbounds %struct.drm_crtc_crc, ptr %0, i32 0, i32 4, !dbg !7462
  %1 = load ptr, ptr %entries, align 8, !dbg !7462
  call void @kfree(ptr noundef %1) #17, !dbg !7463
  %2 = load ptr, ptr %crc.addr, align 8, !dbg !7464
  %overflow = getelementptr inbounds %struct.drm_crtc_crc, ptr %2, i32 0, i32 3, !dbg !7465
  store i8 0, ptr %overflow, align 1, !dbg !7466
  %3 = load ptr, ptr %crc.addr, align 8, !dbg !7467
  %entries1 = getelementptr inbounds %struct.drm_crtc_crc, ptr %3, i32 0, i32 4, !dbg !7468
  store ptr null, ptr %entries1, align 8, !dbg !7469
  %4 = load ptr, ptr %crc.addr, align 8, !dbg !7470
  %head = getelementptr inbounds %struct.drm_crtc_crc, ptr %4, i32 0, i32 5, !dbg !7471
  store i32 0, ptr %head, align 8, !dbg !7472
  %5 = load ptr, ptr %crc.addr, align 8, !dbg !7473
  %tail = getelementptr inbounds %struct.drm_crtc_crc, ptr %5, i32 0, i32 6, !dbg !7474
  store i32 0, ptr %tail, align 4, !dbg !7475
  %6 = load ptr, ptr %crc.addr, align 8, !dbg !7476
  %values_cnt = getelementptr inbounds %struct.drm_crtc_crc, ptr %6, i32 0, i32 7, !dbg !7477
  store i64 0, ptr %values_cnt, align 8, !dbg !7478
  %7 = load ptr, ptr %crc.addr, align 8, !dbg !7479
  %opened = getelementptr inbounds %struct.drm_crtc_crc, ptr %7, i32 0, i32 2, !dbg !7480
  store i8 0, ptr %opened, align 8, !dbg !7481
  ret void, !dbg !7482
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @drm_core_check_feature(ptr noundef %dev, i32 noundef %feature) #6 align 16 !dbg !7483 {
entry:
  %dev.addr = alloca ptr, align 8
  %feature.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7489, metadata !DIExpression()), !dbg !7491
  store i32 %feature, ptr %feature.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %feature.addr, metadata !7490, metadata !DIExpression()), !dbg !7492
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !7493
  %1 = load i32, ptr %feature.addr, align 4, !dbg !7494
  %call = call zeroext i1 @drm_core_check_all_features(ptr noundef %0, i32 noundef %1) #17, !dbg !7495
  ret i1 %call, !dbg !7496
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @drm_core_check_all_features(ptr noundef %dev, i32 noundef %features) #6 align 16 !dbg !7497 {
entry:
  %dev.addr = alloca ptr, align 8
  %features.addr = alloca i32, align 4
  %supported = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7501, metadata !DIExpression()), !dbg !7504
  store i32 %features, ptr %features.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %features.addr, metadata !7502, metadata !DIExpression()), !dbg !7505
  call void @llvm.lifetime.start.p0(i64 4, ptr %supported) #16, !dbg !7506
  call void @llvm.dbg.declare(metadata ptr %supported, metadata !7503, metadata !DIExpression()), !dbg !7507
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !7508
  %driver = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4, !dbg !7509
  %1 = load ptr, ptr %driver, align 8, !dbg !7509
  %driver_features = getelementptr inbounds %struct.drm_driver, ptr %1, i32 0, i32 23, !dbg !7510
  %2 = load i32, ptr %driver_features, align 8, !dbg !7510
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !7511
  %driver_features1 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 11, !dbg !7512
  %4 = load i32, ptr %driver_features1, align 8, !dbg !7512
  %and = and i32 %2, %4, !dbg !7513
  store i32 %and, ptr %supported, align 4, !dbg !7507
  %5 = load i32, ptr %features.addr, align 4, !dbg !7514
  %tobool = icmp ne i32 %5, 0, !dbg !7514
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !7515

land.rhs:                                         ; preds = %entry
  %6 = load i32, ptr %supported, align 4, !dbg !7516
  %7 = load i32, ptr %features.addr, align 4, !dbg !7517
  %and2 = and i32 %6, %7, !dbg !7518
  %8 = load i32, ptr %features.addr, align 4, !dbg !7519
  %cmp = icmp eq i32 %and2, %8, !dbg !7520
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %9 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ], !dbg !7521
  call void @llvm.lifetime.end.p0(i64 4, ptr %supported) #16, !dbg !7522
  ret i1 %9, !dbg !7523
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #11 align 16 !dbg !7524 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !7526, metadata !DIExpression()), !dbg !7530
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7527, metadata !DIExpression()), !dbg !7531
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7528, metadata !DIExpression()), !dbg !7532
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #16, !dbg !7533
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !7529, metadata !DIExpression()), !dbg !7534
  %0 = load i64, ptr %n.addr, align 8, !dbg !7535
  %1 = load i64, ptr %size.addr, align 8, !dbg !7535
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !7535
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !7535
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !7535
  store i64 %4, ptr %bytes, align 8, !dbg !7535
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #17, !dbg !7535
  %lnot = xor i1 %call, true, !dbg !7535
  %lnot1 = xor i1 %lnot, true, !dbg !7535
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7535
  %conv = sext i32 %lnot.ext to i64, !dbg !7535
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7535
  %tobool = icmp ne i64 %expval, 0, !dbg !7535
  br i1 %tobool, label %if.then, label %if.end, !dbg !7537

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !7538
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7538

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !7539
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !7541
  br i1 %6, label %land.lhs.true, label %if.end4, !dbg !7542

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %size.addr, align 8, !dbg !7543
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !7544
  br i1 %8, label %if.then2, label %if.end4, !dbg !7545

if.then2:                                         ; preds = %land.lhs.true
  %9 = load i64, ptr %bytes, align 8, !dbg !7546
  %10 = load i32, ptr %flags.addr, align 4, !dbg !7547
  %call3 = call noalias ptr @kmalloc(i64 noundef %9, i32 noundef %10) #19, !dbg !7548
  store ptr %call3, ptr %retval, align 8, !dbg !7549
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7549

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i64, ptr %bytes, align 8, !dbg !7550
  %12 = load i32, ptr %flags.addr, align 4, !dbg !7551
  %call5 = call noalias align 8 ptr @__kmalloc(i64 noundef %11, i32 noundef %12) #19, !dbg !7552
  store ptr %call5, ptr %retval, align 8, !dbg !7553
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7553

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #16, !dbg !7554
  %13 = load ptr, ptr %retval, align 8, !dbg !7554
  ret ptr %13, !dbg !7554
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #6 align 16 !dbg !7555 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !7560, metadata !DIExpression()), !dbg !7561
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !7562, !range !6317, !noundef !764
  %tobool = trunc i8 %0 to i1, !dbg !7562
  %lnot = xor i1 %tobool, true, !dbg !7562
  %lnot1 = xor i1 %lnot, true, !dbg !7562
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7562
  %conv = sext i32 %lnot.ext to i64, !dbg !7562
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7562
  %tobool2 = icmp ne i64 %expval, 0, !dbg !7562
  ret i1 %tobool2, !dbg !7563
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #12 align 16 !dbg !7564 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7568, metadata !DIExpression()), !dbg !7573
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7569, metadata !DIExpression()), !dbg !7574
  %0 = load i64, ptr %size.addr, align 8, !dbg !7575
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !7576
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !7577

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !7578
  %tobool = icmp ne i64 %2, 0, !dbg !7578
  br i1 %tobool, label %if.then, label %if.end7, !dbg !7579

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !7580
  call void @llvm.dbg.declare(metadata ptr %index, metadata !7570, metadata !DIExpression()), !dbg !7581
  %3 = load i64, ptr %size.addr, align 8, !dbg !7582
  %cmp = icmp ugt i64 %3, 8192, !dbg !7584
  br i1 %cmp, label %if.then1, label %if.end, !dbg !7585

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !7586
  %5 = load i32, ptr %flags.addr, align 4, !dbg !7587
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #19, !dbg !7588
  store ptr %call, ptr %retval, align 8, !dbg !7589
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7589

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !7590
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !7590
  store i32 %call2, ptr %index, align 4, !dbg !7591
  %7 = load i32, ptr %flags.addr, align 4, !dbg !7592
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !7593
  %9 = ptrtoint ptr %8 to i64, !dbg !7593
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !7594
  %idxprom = zext i32 %call3 to i64, !dbg !7595
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !7595
  %10 = load i32, ptr %index, align 4, !dbg !7596
  %idxprom4 = zext i32 %10 to i64, !dbg !7595
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !7595
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !7595
  %12 = load i32, ptr %flags.addr, align 4, !dbg !7597
  %13 = load i64, ptr %size.addr, align 8, !dbg !7598
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #20, !dbg !7599
  store ptr %call6, ptr %retval, align 8, !dbg !7600
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7600

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !7601
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !7602
  %15 = load i32, ptr %flags.addr, align 4, !dbg !7603
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #19, !dbg !7604
  store ptr %call8, ptr %retval, align 8, !dbg !7605
  br label %return, !dbg !7605

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !7606
  ret ptr %16, !dbg !7606
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !7607 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #13

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !7608 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #4 align 16 !dbg !7609 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7613, metadata !DIExpression()), !dbg !7615
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !7614, metadata !DIExpression()), !dbg !7616
  %0 = load i64, ptr %size.addr, align 8, !dbg !7617
  %tobool = icmp ne i64 %0, 0, !dbg !7617
  br i1 %tobool, label %if.end, label %if.then, !dbg !7619

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7620
  br label %return, !dbg !7620

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !7621
  %cmp = icmp ule i64 %1, 8, !dbg !7623
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !7624

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !7625
  br label %return, !dbg !7625

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !7626
  %cmp3 = icmp ugt i64 %2, 64, !dbg !7628
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !7629

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !7630
  %cmp4 = icmp ule i64 %3, 96, !dbg !7631
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !7632

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !7633
  br label %return, !dbg !7633

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !7634
  %cmp7 = icmp ugt i64 %4, 128, !dbg !7636
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !7637

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !7638
  %cmp9 = icmp ule i64 %5, 192, !dbg !7639
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !7640

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !7641
  br label %return, !dbg !7641

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !7642
  %cmp12 = icmp ule i64 %6, 8, !dbg !7644
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !7645

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !7646
  br label %return, !dbg !7646

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !7647
  %cmp15 = icmp ule i64 %7, 16, !dbg !7649
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !7650

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !7651
  br label %return, !dbg !7651

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !7652
  %cmp18 = icmp ule i64 %8, 32, !dbg !7654
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !7655

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !7656
  br label %return, !dbg !7656

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !7657
  %cmp21 = icmp ule i64 %9, 64, !dbg !7659
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !7660

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !7661
  br label %return, !dbg !7661

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !7662
  %cmp24 = icmp ule i64 %10, 128, !dbg !7664
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !7665

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !7666
  br label %return, !dbg !7666

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !7667
  %cmp27 = icmp ule i64 %11, 256, !dbg !7669
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !7670

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !7671
  br label %return, !dbg !7671

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !7672
  %cmp30 = icmp ule i64 %12, 512, !dbg !7674
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !7675

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !7676
  br label %return, !dbg !7676

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !7677
  %cmp33 = icmp ule i64 %13, 1024, !dbg !7679
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !7680

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !7681
  br label %return, !dbg !7681

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !7682
  %cmp36 = icmp ule i64 %14, 2048, !dbg !7684
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !7685

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !7686
  br label %return, !dbg !7686

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !7687
  %cmp39 = icmp ule i64 %15, 4096, !dbg !7689
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !7690

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !7691
  br label %return, !dbg !7691

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !7692
  %cmp42 = icmp ule i64 %16, 8192, !dbg !7694
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !7695

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !7696
  br label %return, !dbg !7696

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !7697
  %cmp45 = icmp ule i64 %17, 16384, !dbg !7699
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !7700

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !7701
  br label %return, !dbg !7701

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !7702
  %cmp48 = icmp ule i64 %18, 32768, !dbg !7704
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !7705

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !7706
  br label %return, !dbg !7706

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !7707
  %cmp51 = icmp ule i64 %19, 65536, !dbg !7709
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !7710

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !7711
  br label %return, !dbg !7711

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !7712
  %cmp54 = icmp ule i64 %20, 131072, !dbg !7714
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !7715

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !7716
  br label %return, !dbg !7716

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !7717
  %cmp57 = icmp ule i64 %21, 262144, !dbg !7719
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !7720

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !7721
  br label %return, !dbg !7721

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !7722
  %cmp60 = icmp ule i64 %22, 524288, !dbg !7724
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !7725

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !7726
  br label %return, !dbg !7726

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !7727
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !7729
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !7730

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !7731
  br label %return, !dbg !7731

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !7732
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !7734
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !7735

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !7736
  br label %return, !dbg !7736

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !7737, !range !6317, !noundef !764
  %tobool69 = trunc i8 %25 to i1, !dbg !7737
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !7739

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !7740

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #21, !dbg !7741, !srcloc !7744
  unreachable, !dbg !7741

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !7745

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !7746

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !7747

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !7749

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !7747

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.13, i32 480, i32 0, i64 12) #16, !dbg !7751, !srcloc !7753
  br label %do.end75, !dbg !7751

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !7747

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !7754
  br label %return, !dbg !7754

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !7755
  ret i32 %26, !dbg !7755
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !7756 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #4 align 16 !dbg !7759 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7763, metadata !DIExpression()), !dbg !7765
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !7764, metadata !DIExpression()), !dbg !7766
  %0 = load i32, ptr %flags.addr, align 4, !dbg !7767
  %and = and i32 %0, 17, !dbg !7767
  %cmp = icmp eq i32 %and, 0, !dbg !7767
  %lnot = xor i1 %cmp, true, !dbg !7767
  %lnot1 = xor i1 %lnot, true, !dbg !7767
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7767
  %conv = sext i32 %lnot.ext to i64, !dbg !7767
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !7767
  %tobool = icmp ne i64 %expval, 0, !dbg !7767
  br i1 %tobool, label %if.then, label %if.end, !dbg !7769

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7770
  br label %return, !dbg !7770

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !7771
  %and2 = and i32 %1, 1, !dbg !7773
  %tobool3 = icmp ne i32 %and2, 0, !dbg !7773
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !7774

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !7775
  br label %return, !dbg !7775

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !7776
  br label %return, !dbg !7776

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !7778
  ret i32 %2, !dbg !7778
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !7779 dso_local void @__compiletime_assert_245() #15

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7780 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #3 section ".spinlock.text"

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noredzone null_pointer_is_valid "dontcall-error"="copy source size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone null_pointer_is_valid "dontcall-error"="copy destination size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { nounwind }
attributes #17 = { noredzone }
attributes #18 = { noredzone allocsize(0,1) }
attributes #19 = { noredzone allocsize(0) }
attributes #20 = { noredzone allocsize(2) }
attributes #21 = { noredzone noreturn }

!llvm.dbg.cu = !{!14}
!llvm.module.flags = !{!4468, !4469, !4470, !4471, !4472, !4473, !4474, !4475}
!llvm.ident = !{!4476}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 375, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/gpu/drm/drm_debugfs_crc.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5a772bf5a0cc04ef44c6de266d681f7c")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 4)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 377, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 8)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "drm_crtc_crc_control_fops", scope: !14, file: !2, line: 169, type: !2952, isLocal: true, isDefinition: true)
!14 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/gpu/drm/.drm_debugfs_crc.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/gpu/drm/drm\22 -D KBUILD_BASENAME=\22drm_debugfs_crc\22 -D KBUILD_MODNAME=\22drm\22 -D __KBUILD_MODNAME=kmod_drm -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/gpu/drm/drm_debugfs_crc.ll drivers/gpu/drm/drm_debugfs_crc.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !15, retainedTypes: !375, globals: !4415, splitDebugInlining: false, nameTableKind: None)
!15 = !{!16, !24, !29, !34, !40, !48, !64, !71, !79, !85, !92, !98, !104, !111, !119, !127, !136, !141, !146, !152, !160, !203, !212, !219, !226, !231, !236, !241, !247, !252, !260, !264, !280, !300, !306, !312, !319, !329, !334, !347, !365}
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !17, line: 312, baseType: !18, size: 32, elements: !19)
!17 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !{!20, !21, !22, !23}
!20 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!21 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!22 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!23 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !25, line: 2052, baseType: !18, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!26 = !{!27, !28}
!27 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!28 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !30, line: 65, baseType: !18, size: 32, elements: !31)
!30 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!31 = !{!32, !33}
!32 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!33 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !35, line: 16, baseType: !18, size: 32, elements: !36)
!35 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!36 = !{!37, !38, !39}
!37 = !DIEnumerator(name: "TT_NONE", value: 0)
!38 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!39 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !41, line: 68, baseType: !18, size: 32, elements: !42)
!41 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!42 = !{!43, !44, !45, !46, !47}
!43 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!44 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!45 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!46 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!47 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !49, line: 1325, baseType: !18, size: 32, elements: !50)
!49 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!50 = !{!51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63}
!51 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!52 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!53 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!54 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!55 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!56 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!57 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!58 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!59 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!60 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!61 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!62 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!63 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !65, line: 51, baseType: !18, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!66 = !{!67, !68, !69, !70}
!67 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!68 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!69 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!70 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !72, line: 9, baseType: !18, size: 32, elements: !73)
!72 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!73 = !{!74, !75, !76, !77, !78}
!74 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!75 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!76 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!77 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!78 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !80, line: 54, baseType: !18, size: 32, elements: !81)
!80 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!81 = !{!82, !83, !84}
!82 = !DIEnumerator(name: "USRQUOTA", value: 0)
!83 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!84 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !86, line: 15, baseType: !18, size: 32, elements: !87)
!86 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!87 = !{!88, !89, !90, !91}
!88 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!89 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!90 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!91 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !93, line: 26, baseType: !18, size: 32, elements: !94)
!93 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!94 = !{!95, !96, !97}
!95 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!96 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!97 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!98 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !99, line: 45, baseType: !18, size: 32, elements: !100)
!99 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!100 = !{!101, !102, !103}
!101 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!102 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!103 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!104 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !105, line: 487, baseType: !18, size: 32, elements: !106)
!105 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!106 = !{!107, !108, !109, !110}
!107 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!108 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!109 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!110 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !112, line: 620, baseType: !18, size: 32, elements: !113)
!112 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!113 = !{!114, !115, !116, !117, !118}
!114 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!115 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!116 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!117 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!118 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !112, line: 597, baseType: !120, size: 32, elements: !121)
!120 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!121 = !{!122, !123, !124, !125, !126}
!122 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!123 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!124 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!125 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!126 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !105, line: 547, baseType: !18, size: 32, elements: !128)
!128 = !{!129, !130, !131, !132, !133, !134, !135}
!129 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!130 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!131 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!132 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!133 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!134 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!135 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!136 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !105, line: 564, baseType: !18, size: 32, elements: !137)
!137 = !{!138, !139, !140}
!138 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!139 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!140 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !105, line: 577, baseType: !18, size: 32, elements: !142)
!142 = !{!143, !144, !145}
!143 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!144 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!145 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !105, line: 503, baseType: !18, size: 32, elements: !147)
!147 = !{!148, !149, !150, !151}
!148 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!149 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!150 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!151 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!152 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_ioctl_flags", file: !153, line: 80, baseType: !18, size: 32, elements: !154)
!153 = !DIFile(filename: "./include/drm/drm_ioctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ed9f6851df8ea62f4629791b091b99c")
!154 = !{!155, !156, !157, !158, !159}
!155 = !DIEnumerator(name: "DRM_AUTH", value: 1)
!156 = !DIEnumerator(name: "DRM_MASTER", value: 2)
!157 = !DIEnumerator(name: "DRM_ROOT_ONLY", value: 4)
!158 = !DIEnumerator(name: "DRM_UNLOCKED", value: 16)
!159 = !DIEnumerator(name: "DRM_RENDER_ALLOW", value: 32)
!160 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_mode_status", file: !161, line: 91, baseType: !120, size: 32, elements: !162)
!161 = !DIFile(filename: "./include/drm/drm_modes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9464b1418570a46bf1ac7fbe26140ef4")
!162 = !{!163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202}
!163 = !DIEnumerator(name: "MODE_OK", value: 0)
!164 = !DIEnumerator(name: "MODE_HSYNC", value: 1)
!165 = !DIEnumerator(name: "MODE_VSYNC", value: 2)
!166 = !DIEnumerator(name: "MODE_H_ILLEGAL", value: 3)
!167 = !DIEnumerator(name: "MODE_V_ILLEGAL", value: 4)
!168 = !DIEnumerator(name: "MODE_BAD_WIDTH", value: 5)
!169 = !DIEnumerator(name: "MODE_NOMODE", value: 6)
!170 = !DIEnumerator(name: "MODE_NO_INTERLACE", value: 7)
!171 = !DIEnumerator(name: "MODE_NO_DBLESCAN", value: 8)
!172 = !DIEnumerator(name: "MODE_NO_VSCAN", value: 9)
!173 = !DIEnumerator(name: "MODE_MEM", value: 10)
!174 = !DIEnumerator(name: "MODE_VIRTUAL_X", value: 11)
!175 = !DIEnumerator(name: "MODE_VIRTUAL_Y", value: 12)
!176 = !DIEnumerator(name: "MODE_MEM_VIRT", value: 13)
!177 = !DIEnumerator(name: "MODE_NOCLOCK", value: 14)
!178 = !DIEnumerator(name: "MODE_CLOCK_HIGH", value: 15)
!179 = !DIEnumerator(name: "MODE_CLOCK_LOW", value: 16)
!180 = !DIEnumerator(name: "MODE_CLOCK_RANGE", value: 17)
!181 = !DIEnumerator(name: "MODE_BAD_HVALUE", value: 18)
!182 = !DIEnumerator(name: "MODE_BAD_VVALUE", value: 19)
!183 = !DIEnumerator(name: "MODE_BAD_VSCAN", value: 20)
!184 = !DIEnumerator(name: "MODE_HSYNC_NARROW", value: 21)
!185 = !DIEnumerator(name: "MODE_HSYNC_WIDE", value: 22)
!186 = !DIEnumerator(name: "MODE_HBLANK_NARROW", value: 23)
!187 = !DIEnumerator(name: "MODE_HBLANK_WIDE", value: 24)
!188 = !DIEnumerator(name: "MODE_VSYNC_NARROW", value: 25)
!189 = !DIEnumerator(name: "MODE_VSYNC_WIDE", value: 26)
!190 = !DIEnumerator(name: "MODE_VBLANK_NARROW", value: 27)
!191 = !DIEnumerator(name: "MODE_VBLANK_WIDE", value: 28)
!192 = !DIEnumerator(name: "MODE_PANEL", value: 29)
!193 = !DIEnumerator(name: "MODE_INTERLACE_WIDTH", value: 30)
!194 = !DIEnumerator(name: "MODE_ONE_WIDTH", value: 31)
!195 = !DIEnumerator(name: "MODE_ONE_HEIGHT", value: 32)
!196 = !DIEnumerator(name: "MODE_ONE_SIZE", value: 33)
!197 = !DIEnumerator(name: "MODE_NO_REDUCED", value: 34)
!198 = !DIEnumerator(name: "MODE_NO_STEREO", value: 35)
!199 = !DIEnumerator(name: "MODE_NO_420", value: 36)
!200 = !DIEnumerator(name: "MODE_STALE", value: -3)
!201 = !DIEnumerator(name: "MODE_BAD", value: -2)
!202 = !DIEnumerator(name: "MODE_ERROR", value: -1)
!203 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hdmi_picture_aspect", file: !204, line: 96, baseType: !18, size: 32, elements: !205)
!204 = !DIFile(filename: "./include/linux/hdmi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "47f4ac8f6225c51a6d030bad9086771f")
!205 = !{!206, !207, !208, !209, !210, !211}
!206 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_NONE", value: 0)
!207 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_4_3", value: 1)
!208 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_16_9", value: 2)
!209 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_64_27", value: 3)
!210 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_256_135", value: 4)
!211 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_RESERVED", value: 5)
!212 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "switch_power_state", file: !213, line: 30, baseType: !18, size: 32, elements: !214)
!213 = !DIFile(filename: "./include/drm/drm_device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9743f4a84c342e86d9e79f688e9c49c5")
!214 = !{!215, !216, !217, !218}
!215 = !DIEnumerator(name: "DRM_SWITCH_POWER_ON", value: 0)
!216 = !DIEnumerator(name: "DRM_SWITCH_POWER_OFF", value: 1)
!217 = !DIEnumerator(name: "DRM_SWITCH_POWER_CHANGING", value: 2)
!218 = !DIEnumerator(name: "DRM_SWITCH_POWER_DYNAMIC_OFF", value: 3)
!219 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_color_encoding", file: !220, line: 78, baseType: !18, size: 32, elements: !221)
!220 = !DIFile(filename: "./include/drm/drm_color_mgmt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b92cd49d1b3f8dcc5c490e9b8b1a997a")
!221 = !{!222, !223, !224, !225}
!222 = !DIEnumerator(name: "DRM_COLOR_YCBCR_BT601", value: 0)
!223 = !DIEnumerator(name: "DRM_COLOR_YCBCR_BT709", value: 1)
!224 = !DIEnumerator(name: "DRM_COLOR_YCBCR_BT2020", value: 2)
!225 = !DIEnumerator(name: "DRM_COLOR_ENCODING_MAX", value: 3)
!226 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_color_range", file: !220, line: 85, baseType: !18, size: 32, elements: !227)
!227 = !{!228, !229, !230}
!228 = !DIEnumerator(name: "DRM_COLOR_YCBCR_LIMITED_RANGE", value: 0)
!229 = !DIEnumerator(name: "DRM_COLOR_YCBCR_FULL_RANGE", value: 1)
!230 = !DIEnumerator(name: "DRM_COLOR_RANGE_MAX", value: 2)
!231 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_scaling_filter", file: !232, line: 38, baseType: !18, size: 32, elements: !233)
!232 = !DIFile(filename: "./include/drm/drm_plane.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "45cb1a1ff150429e63de6789c017e03a")
!233 = !{!234, !235}
!234 = !DIEnumerator(name: "DRM_SCALING_FILTER_DEFAULT", value: 0)
!235 = !DIEnumerator(name: "DRM_SCALING_FILTER_NEAREST_NEIGHBOR", value: 1)
!236 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_plane_type", file: !232, line: 563, baseType: !18, size: 32, elements: !237)
!237 = !{!238, !239, !240}
!238 = !DIEnumerator(name: "DRM_PLANE_TYPE_OVERLAY", value: 0)
!239 = !DIEnumerator(name: "DRM_PLANE_TYPE_PRIMARY", value: 1)
!240 = !DIEnumerator(name: "DRM_PLANE_TYPE_CURSOR", value: 2)
!241 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_connector_registration_state", file: !242, line: 98, baseType: !18, size: 32, elements: !243)
!242 = !DIFile(filename: "./include/drm/drm_connector.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63c858da11ce2de4f038056be4cf749")
!243 = !{!244, !245, !246}
!244 = !DIEnumerator(name: "DRM_CONNECTOR_INITIALIZING", value: 0)
!245 = !DIEnumerator(name: "DRM_CONNECTOR_REGISTERED", value: 1)
!246 = !DIEnumerator(name: "DRM_CONNECTOR_UNREGISTERED", value: 2)
!247 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_connector_status", file: !242, line: 63, baseType: !18, size: 32, elements: !248)
!248 = !{!249, !250, !251}
!249 = !DIEnumerator(name: "connector_status_connected", value: 1)
!250 = !DIEnumerator(name: "connector_status_disconnected", value: 2)
!251 = !DIEnumerator(name: "connector_status_unknown", value: 3)
!252 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "subpixel_order", file: !242, line: 137, baseType: !18, size: 32, elements: !253)
!253 = !{!254, !255, !256, !257, !258, !259}
!254 = !DIEnumerator(name: "SubPixelUnknown", value: 0)
!255 = !DIEnumerator(name: "SubPixelHorizontalRGB", value: 1)
!256 = !DIEnumerator(name: "SubPixelHorizontalBGR", value: 2)
!257 = !DIEnumerator(name: "SubPixelVerticalRGB", value: 3)
!258 = !DIEnumerator(name: "SubPixelVerticalBGR", value: 4)
!259 = !DIEnumerator(name: "SubPixelNone", value: 5)
!260 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_link_status", file: !242, line: 337, baseType: !18, size: 32, elements: !261)
!261 = !{!262, !263}
!262 = !DIEnumerator(name: "DRM_LINK_STATUS_GOOD", value: 0)
!263 = !DIEnumerator(name: "DRM_LINK_STATUS_BAD", value: 1)
!264 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_mode_subconnector", file: !265, line: 387, baseType: !18, size: 32, elements: !266)
!265 = !DIFile(filename: "./include/uapi/drm/drm_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "357a7211aa80668185b31e7330dddd63")
!266 = !{!267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279}
!267 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Automatic", value: 0)
!268 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Unknown", value: 0)
!269 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_VGA", value: 1)
!270 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_DVID", value: 3)
!271 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_DVIA", value: 4)
!272 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Composite", value: 5)
!273 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_SVIDEO", value: 6)
!274 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Component", value: 8)
!275 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_SCART", value: 9)
!276 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_DisplayPort", value: 10)
!277 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_HDMIA", value: 11)
!278 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Native", value: 15)
!279 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Wireless", value: 18)
!280 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_colorspace", file: !242, line: 502, baseType: !18, size: 32, elements: !281)
!281 = !{!282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299}
!282 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_DEFAULT", value: 0)
!283 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_NO_DATA", value: 0)
!284 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_SMPTE_170M_YCC", value: 1)
!285 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_BT709_YCC", value: 2)
!286 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_XVYCC_601", value: 3)
!287 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_XVYCC_709", value: 4)
!288 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_SYCC_601", value: 5)
!289 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_OPYCC_601", value: 6)
!290 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_OPRGB", value: 7)
!291 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_BT2020_CYCC", value: 8)
!292 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_BT2020_RGB", value: 9)
!293 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_BT2020_YCC", value: 10)
!294 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_DCI_P3_RGB_D65", value: 11)
!295 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_DCI_P3_RGB_THEATER", value: 12)
!296 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_RGB_WIDE_FIXED", value: 13)
!297 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_RGB_WIDE_FLOAT", value: 14)
!298 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_BT601_YCC", value: 15)
!299 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_COUNT", value: 16)
!300 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_privacy_screen_status", file: !242, line: 421, baseType: !18, size: 32, elements: !301)
!301 = !{!302, !303, !304, !305}
!302 = !DIEnumerator(name: "PRIVACY_SCREEN_DISABLED", value: 0)
!303 = !DIEnumerator(name: "PRIVACY_SCREEN_ENABLED", value: 1)
!304 = !DIEnumerator(name: "PRIVACY_SCREEN_DISABLED_LOCKED", value: 2)
!305 = !DIEnumerator(name: "PRIVACY_SCREEN_ENABLED_LOCKED", value: 3)
!306 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_connector_force", file: !242, line: 50, baseType: !18, size: 32, elements: !307)
!307 = !{!308, !309, !310, !311}
!308 = !DIEnumerator(name: "DRM_FORCE_UNSPECIFIED", value: 0)
!309 = !DIEnumerator(name: "DRM_FORCE_OFF", value: 1)
!310 = !DIEnumerator(name: "DRM_FORCE_ON", value: 2)
!311 = !DIEnumerator(name: "DRM_FORCE_ON_DIGITAL", value: 3)
!312 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_panel_orientation", file: !242, line: 363, baseType: !120, size: 32, elements: !313)
!313 = !{!314, !315, !316, !317, !318}
!314 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_UNKNOWN", value: -1)
!315 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_NORMAL", value: 0)
!316 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_BOTTOM_UP", value: 1)
!317 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_LEFT_UP", value: 2)
!318 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_RIGHT_UP", value: 3)
!319 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_connector_tv_mode", file: !242, line: 156, baseType: !18, size: 32, elements: !320)
!320 = !{!321, !322, !323, !324, !325, !326, !327, !328}
!321 = !DIEnumerator(name: "DRM_MODE_TV_MODE_NTSC", value: 0)
!322 = !DIEnumerator(name: "DRM_MODE_TV_MODE_NTSC_443", value: 1)
!323 = !DIEnumerator(name: "DRM_MODE_TV_MODE_NTSC_J", value: 2)
!324 = !DIEnumerator(name: "DRM_MODE_TV_MODE_PAL", value: 3)
!325 = !DIEnumerator(name: "DRM_MODE_TV_MODE_PAL_M", value: 4)
!326 = !DIEnumerator(name: "DRM_MODE_TV_MODE_PAL_N", value: 5)
!327 = !DIEnumerator(name: "DRM_MODE_TV_MODE_SECAM", value: 6)
!328 = !DIEnumerator(name: "DRM_MODE_TV_MODE_MAX", value: 7)
!329 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !330, line: 10, baseType: !18, size: 32, elements: !331)
!330 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!331 = !{!332, !333}
!332 = !DIEnumerator(name: "false", value: 0)
!333 = !DIEnumerator(name: "true", value: 1)
!334 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_debug_category", file: !335, line: 330, baseType: !18, size: 32, elements: !336)
!335 = !DIFile(filename: "./include/drm/drm_print.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8183d9b00573922c1c038b9801bc144f")
!336 = !{!337, !338, !339, !340, !341, !342, !343, !344, !345, !346}
!337 = !DIEnumerator(name: "DRM_UT_CORE", value: 0)
!338 = !DIEnumerator(name: "DRM_UT_DRIVER", value: 1)
!339 = !DIEnumerator(name: "DRM_UT_KMS", value: 2)
!340 = !DIEnumerator(name: "DRM_UT_PRIME", value: 3)
!341 = !DIEnumerator(name: "DRM_UT_ATOMIC", value: 4)
!342 = !DIEnumerator(name: "DRM_UT_VBL", value: 5)
!343 = !DIEnumerator(name: "DRM_UT_STATE", value: 6)
!344 = !DIEnumerator(name: "DRM_UT_LEASE", value: 7)
!345 = !DIEnumerator(name: "DRM_UT_DP", value: 8)
!346 = !DIEnumerator(name: "DRM_UT_DRMRES", value: 9)
!347 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_driver_feature", file: !348, line: 54, baseType: !18, size: 32, elements: !349)
!348 = !DIFile(filename: "./include/drm/drm_drv.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1f945ad2d8b16ba8834948006e1f4f23")
!349 = !{!350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364}
!350 = !DIEnumerator(name: "DRIVER_GEM", value: 1)
!351 = !DIEnumerator(name: "DRIVER_MODESET", value: 2)
!352 = !DIEnumerator(name: "DRIVER_RENDER", value: 8)
!353 = !DIEnumerator(name: "DRIVER_ATOMIC", value: 16)
!354 = !DIEnumerator(name: "DRIVER_SYNCOBJ", value: 32)
!355 = !DIEnumerator(name: "DRIVER_SYNCOBJ_TIMELINE", value: 64)
!356 = !DIEnumerator(name: "DRIVER_COMPUTE_ACCEL", value: 128)
!357 = !DIEnumerator(name: "DRIVER_GEM_GPUVA", value: 256)
!358 = !DIEnumerator(name: "DRIVER_CURSOR_HOTSPOT", value: 512)
!359 = !DIEnumerator(name: "DRIVER_USE_AGP", value: 33554432)
!360 = !DIEnumerator(name: "DRIVER_LEGACY", value: 67108864)
!361 = !DIEnumerator(name: "DRIVER_PCI_DMA", value: 134217728)
!362 = !DIEnumerator(name: "DRIVER_SG", value: 268435456)
!363 = !DIEnumerator(name: "DRIVER_HAVE_DMA", value: 536870912)
!364 = !DIEnumerator(name: "DRIVER_HAVE_IRQ", value: 1073741824)
!365 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !366, line: 364, baseType: !18, size: 32, elements: !367)
!366 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!367 = !{!368, !369, !370, !371, !372, !373, !374}
!368 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!369 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!370 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!371 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!372 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!373 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!374 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!375 = !{!376, !377, !531, !517, !4412, !120, !3020, !986}
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !17, line: 402, size: 9216, align: 512, elements: !379)
!379 = !{!380, !381, !388, !392, !4088, !4114, !4115, !4116, !4117, !4121, !4124, !4125, !4126, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4193, !4197, !4215, !4232, !4233, !4234, !4235, !4244, !4267, !4268, !4271, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4285, !4286, !4372, !4380, !4381, !4382, !4384, !4388, !4389, !4393, !4394, !4395, !4396, !4398, !4399, !4400, !4407, !4408, !4409, !4411}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !378, file: !17, line: 403, baseType: !16, size: 32)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !378, file: !17, line: 406, baseType: !382, size: 128, offset: 64)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !383, line: 190, size: 128, elements: !384)
!383 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!384 = !{!385, !387}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !382, file: !383, line: 191, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !382, file: !383, line: 191, baseType: !386, size: 64, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !378, file: !17, line: 409, baseType: !389, size: 448, offset: 192)
!389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !390)
!390 = !{!391}
!391 = !DISubrange(count: 56)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !378, file: !17, line: 417, baseType: !393, size: 768, offset: 640)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !17, line: 45, size: 768, elements: !394)
!394 = !{!395, !4082, !4083, !4084, !4087}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !393, file: !17, line: 46, baseType: !396, size: 512)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !397, line: 64, size: 512, elements: !398)
!397 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!398 = !{!399, !402, !403, !405, !494, !3980, !4072, !4077, !4078, !4079, !4080, !4081}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !396, file: !397, line: 65, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !396, file: !397, line: 66, baseType: !382, size: 128, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !396, file: !397, line: 67, baseType: !404, size: 64, offset: 192)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !396, file: !397, line: 68, baseType: !406, size: 64, offset: 256)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !397, line: 168, size: 768, elements: !408)
!408 = !{!409, !410, !453, !454}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !407, file: !397, line: 169, baseType: !382, size: 128)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !407, file: !397, line: 170, baseType: !411, size: 32, offset: 128)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !412, line: 29, baseType: !413)
!412 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !412, line: 17, size: 32, elements: !414)
!414 = !{!415}
!415 = !DIDerivedType(tag: DW_TAG_member, scope: !413, file: !412, line: 18, baseType: !416, size: 32)
!416 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !413, file: !412, line: 18, size: 32, elements: !417)
!417 = !{!418}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !416, file: !412, line: 19, baseType: !419, size: 32)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !420, line: 14, size: 32, elements: !421)
!420 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!421 = !{!422}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !419, file: !420, line: 15, baseType: !423, size: 32)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !424, line: 44, baseType: !425)
!424 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !424, line: 14, size: 32, elements: !426)
!426 = !{!427}
!427 = !DIDerivedType(tag: DW_TAG_member, scope: !425, file: !424, line: 15, baseType: !428, size: 32)
!428 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !425, file: !424, line: 15, size: 32, elements: !429)
!429 = !{!430, !435, !445}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !428, file: !424, line: 16, baseType: !431, size: 32)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !383, line: 174, baseType: !432)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !383, line: 172, size: 32, elements: !433)
!433 = !{!434}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !432, file: !383, line: 173, baseType: !120, size: 32)
!435 = !DIDerivedType(tag: DW_TAG_member, scope: !428, file: !424, line: 24, baseType: !436, size: 16)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !428, file: !424, line: 24, size: 16, elements: !437)
!437 = !{!438, !444}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !436, file: !424, line: 25, baseType: !439, size: 8)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !440, line: 17, baseType: !441)
!440 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !442, line: 21, baseType: !443)
!442 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!443 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !436, file: !424, line: 26, baseType: !439, size: 8, offset: 8)
!445 = !DIDerivedType(tag: DW_TAG_member, scope: !428, file: !424, line: 28, baseType: !446, size: 32)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !428, file: !424, line: 28, size: 32, elements: !447)
!447 = !{!448, !452}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !446, file: !424, line: 29, baseType: !449, size: 16)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !440, line: 19, baseType: !450)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !442, line: 24, baseType: !451)
!451 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !446, file: !424, line: 30, baseType: !449, size: 16, offset: 16)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !407, file: !397, line: 171, baseType: !396, size: 512, offset: 192)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !407, file: !397, line: 172, baseType: !455, size: 64, offset: 704)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !457)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !397, line: 133, size: 192, elements: !458)
!458 = !{!459, !466, !471}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !457, file: !397, line: 134, baseType: !460, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !461)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DISubroutineType(types: !463)
!463 = !{!120, !464}
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !396)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !457, file: !397, line: 135, baseType: !467, size: 64, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !468)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{!400, !464}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !457, file: !397, line: 136, baseType: !472, size: 64, offset: 128)
!472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !473)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{!120, !464, !476}
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !397, line: 125, size: 20736, elements: !478)
!478 = !{!479, !484, !488, !489, !493}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !477, file: !397, line: 126, baseType: !480, size: 192)
!480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !481, size: 192, elements: !482)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!482 = !{!483}
!483 = !DISubrange(count: 3)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !477, file: !397, line: 127, baseType: !485, size: 4096, offset: 192)
!485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !481, size: 4096, elements: !486)
!486 = !{!487}
!487 = !DISubrange(count: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !477, file: !397, line: 128, baseType: !120, size: 32, offset: 4288)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !477, file: !397, line: 129, baseType: !490, size: 16384, offset: 4320)
!490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !491)
!491 = !{!492}
!492 = !DISubrange(count: 2048)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !477, file: !397, line: 130, baseType: !120, size: 32, offset: 20704)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !396, file: !397, line: 69, baseType: !495, size: 64, offset: 320)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !497)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !397, line: 116, size: 384, elements: !498)
!498 = !{!499, !503, !532, !3942, !3970, !3974}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !497, file: !397, line: 117, baseType: !500, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{null, !404}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !497, file: !397, line: 118, baseType: !504, size: 64, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !506)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !507, line: 254, size: 128, elements: !508)
!507 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!508 = !{!509, !524}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !506, file: !507, line: 255, baseType: !510, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{!513, !404, !518, !481}
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !383, line: 66, baseType: !514)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !515, line: 73, baseType: !516)
!515 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !515, line: 15, baseType: !517)
!517 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !507, line: 30, size: 128, elements: !520)
!520 = !{!521, !522}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !519, file: !507, line: 31, baseType: !400, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !519, file: !507, line: 32, baseType: !523, size: 16, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !383, line: 24, baseType: !451)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !506, file: !507, line: 256, baseType: !525, size: 64, offset: 64)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!513, !404, !518, !400, !528}
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !383, line: 61, baseType: !529)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !515, line: 72, baseType: !530)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !515, line: 16, baseType: !531)
!531 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !497, file: !397, line: 119, baseType: !533, size: 64, offset: 128)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !536)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !507, line: 84, size: 320, elements: !537)
!537 = !{!538, !539, !543, !3938, !3940}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !536, file: !507, line: 85, baseType: !400, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !536, file: !507, line: 86, baseType: !540, size: 64, offset: 64)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{!523, !404, !518, !120}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !536, file: !507, line: 88, baseType: !544, size: 64, offset: 128)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!523, !404, !547, !120}
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !507, line: 175, size: 512, elements: !549)
!549 = !{!550, !551, !552, !553, !3929, !3933, !3934}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !548, file: !507, line: 176, baseType: !519, size: 128)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !548, file: !507, line: 177, baseType: !528, size: 64, offset: 128)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !548, file: !507, line: 178, baseType: !376, size: 64, offset: 192)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !548, file: !507, line: 179, baseType: !554, size: 64, offset: 256)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DISubroutineType(types: !556)
!556 = !{!557}
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !25, line: 472, size: 1536, align: 64, elements: !559)
!559 = !{!560, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3923, !3924, !3925, !3926, !3927, !3928}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !558, file: !25, line: 473, baseType: !561, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !25, line: 641, size: 4800, elements: !563)
!563 = !{!564, !565, !566, !574, !575, !582, !583, !586, !587, !3702, !3703, !3704, !3705, !3706, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3746, !3749, !3750, !3751, !3760, !3761, !3762, !3763}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !562, file: !25, line: 642, baseType: !523, size: 16)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !562, file: !25, line: 643, baseType: !451, size: 16, offset: 16)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !562, file: !25, line: 644, baseType: !567, size: 32, offset: 32)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !568, line: 23, baseType: !569)
!568 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !568, line: 21, size: 32, elements: !570)
!570 = !{!571}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !569, file: !568, line: 22, baseType: !572, size: 32)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !383, line: 37, baseType: !573)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !515, line: 49, baseType: !18)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !562, file: !25, line: 645, baseType: !382, size: 128, offset: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !562, file: !25, line: 646, baseType: !576, size: 32, offset: 192)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !568, line: 28, baseType: !577)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !568, line: 26, size: 32, elements: !578)
!578 = !{!579}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !577, file: !568, line: 27, baseType: !580, size: 32)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !383, line: 38, baseType: !581)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !515, line: 50, baseType: !18)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !562, file: !25, line: 647, baseType: !18, size: 32, offset: 224)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !562, file: !25, line: 650, baseType: !584, size: 64, offset: 256)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !25, line: 607, flags: DIFlagFwdDecl)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !562, file: !25, line: 651, baseType: !584, size: 64, offset: 320)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !562, file: !25, line: 654, baseType: !588, size: 64, offset: 384)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !590)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !25, line: 1966, size: 2048, align: 512, elements: !591)
!591 = !{!592, !3533, !3546, !3550, !3554, !3558, !3562, !3566, !3570, !3574, !3578, !3579, !3583, !3587, !3624, !3653, !3657, !3663, !3667, !3671, !3675, !3679, !3683, !3689, !3693}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !590, file: !25, line: 1967, baseType: !593, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DISubroutineType(types: !595)
!595 = !{!596, !561, !596, !18}
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !598, line: 82, size: 1536, elements: !599)
!598 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!599 = !{!600, !601, !611, !619, !620, !640, !641, !645, !658, !3517, !3518, !3519, !3520, !3525, !3526, !3527}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !597, file: !598, line: 84, baseType: !18, size: 32)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !597, file: !598, line: 85, baseType: !602, size: 32, offset: 32)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !603, line: 275, baseType: !604)
!603 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !603, line: 275, size: 32, elements: !605)
!605 = !{!606}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !604, file: !603, line: 275, baseType: !607, size: 32)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !603, line: 69, baseType: !608)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !603, line: 64, size: 32, elements: !609)
!609 = !{!610}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !608, file: !603, line: 65, baseType: !18, size: 32)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !597, file: !598, line: 86, baseType: !612, size: 128, offset: 64)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !613, line: 38, size: 128, elements: !614)
!613 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!614 = !{!615, !617}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !612, file: !613, line: 39, baseType: !616, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !612, file: !613, line: 39, baseType: !618, size: 64, offset: 64)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !597, file: !598, line: 87, baseType: !596, size: 64, offset: 192)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !597, file: !598, line: 88, baseType: !621, size: 128, offset: 256)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !598, line: 49, size: 128, elements: !622)
!622 = !{!623, !637}
!623 = !DIDerivedType(tag: DW_TAG_member, scope: !621, file: !598, line: 50, baseType: !624, size: 64)
!624 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !621, file: !598, line: 50, size: 64, elements: !625)
!625 = !{!626, !633}
!626 = !DIDerivedType(tag: DW_TAG_member, scope: !624, file: !598, line: 51, baseType: !627, size: 64)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !624, file: !598, line: 51, size: 64, elements: !628)
!628 = !{!629, !632}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !627, file: !598, line: 52, baseType: !630, size: 32)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !440, line: 21, baseType: !631)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !442, line: 27, baseType: !18)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !627, file: !598, line: 52, baseType: !630, size: 32, offset: 32)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !624, file: !598, line: 54, baseType: !634, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !440, line: 23, baseType: !635)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !442, line: 31, baseType: !636)
!636 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !621, file: !598, line: 56, baseType: !638, size: 64, offset: 64)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !443)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !597, file: !598, line: 89, baseType: !561, size: 64, offset: 384)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !597, file: !598, line: 91, baseType: !642, size: 256, offset: 448)
!642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !443, size: 256, elements: !643)
!643 = !{!644}
!644 = !DISubrange(count: 32)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !597, file: !598, line: 94, baseType: !646, size: 64, offset: 704)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !647, line: 25, size: 64, elements: !648)
!647 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!648 = !{!649}
!649 = !DIDerivedType(tag: DW_TAG_member, scope: !646, file: !647, line: 26, baseType: !650, size: 64)
!650 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !646, file: !647, line: 26, size: 64, elements: !651)
!651 = !{!652, !653}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !650, file: !647, line: 28, baseType: !635, size: 64, align: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, scope: !650, file: !647, line: 30, baseType: !654, size: 64)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !650, file: !647, line: 30, size: 64, elements: !655)
!655 = !{!656, !657}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !654, file: !647, line: 31, baseType: !411, size: 32)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !654, file: !647, line: 32, baseType: !120, size: 32, offset: 32)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !597, file: !598, line: 95, baseType: !659, size: 64, offset: 768)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !661)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !598, line: 128, size: 1024, align: 512, elements: !662)
!662 = !{!663, !667, !668, !675, !681, !685, !689, !693, !694, !698, !702, !3507, !3511}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !661, file: !598, line: 129, baseType: !664, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DISubroutineType(types: !666)
!666 = !{!120, !596, !18}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !661, file: !598, line: 130, baseType: !664, size: 64, offset: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !661, file: !598, line: 131, baseType: !669, size: 64, offset: 128)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DISubroutineType(types: !671)
!671 = !{!120, !672, !674}
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !597)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !661, file: !598, line: 132, baseType: !676, size: 64, offset: 192)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DISubroutineType(types: !678)
!678 = !{!120, !672, !18, !400, !679}
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !621)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !661, file: !598, line: 134, baseType: !682, size: 64, offset: 256)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{!120, !672}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !661, file: !598, line: 135, baseType: !686, size: 64, offset: 320)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DISubroutineType(types: !688)
!688 = !{!120, !596}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !661, file: !598, line: 136, baseType: !690, size: 64, offset: 384)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DISubroutineType(types: !692)
!692 = !{null, !596}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !661, file: !598, line: 137, baseType: !690, size: 64, offset: 448)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !661, file: !598, line: 138, baseType: !695, size: 64, offset: 512)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DISubroutineType(types: !697)
!697 = !{null, !596, !561}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !661, file: !598, line: 139, baseType: !699, size: 64, offset: 576)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DISubroutineType(types: !701)
!701 = !{!481, !596, !481, !120}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !661, file: !598, line: 140, baseType: !703, size: 64, offset: 640)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DISubroutineType(types: !705)
!705 = !{!706, !3506}
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !708, line: 70, size: 256, elements: !709)
!708 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!709 = !{!710, !711, !3502, !3503}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !707, file: !708, line: 71, baseType: !596, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !707, file: !708, line: 72, baseType: !712, size: 64, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !25, line: 1190, size: 10752, elements: !714)
!714 = !{!715, !716, !719, !720, !721, !725, !773, !3204, !3244, !3329, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3346, !3350, !3351, !3354, !3357, !3360, !3363, !3364, !3365, !3406, !3433, !3434, !3435, !3436, !3437, !3438, !3441, !3443, !3450, !3451, !3452, !3453, !3454, !3469, !3470, !3471, !3472, !3473, !3476, !3477, !3478, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !713, file: !25, line: 1191, baseType: !382, size: 128)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !713, file: !25, line: 1192, baseType: !717, size: 32, offset: 128)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !383, line: 21, baseType: !718)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !383, line: 18, baseType: !630)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !713, file: !25, line: 1193, baseType: !443, size: 8, offset: 160)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !713, file: !25, line: 1194, baseType: !531, size: 64, offset: 192)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !713, file: !25, line: 1195, baseType: !722, size: 64, offset: 256)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !383, line: 52, baseType: !723)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !515, line: 88, baseType: !724)
!724 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !713, file: !25, line: 1196, baseType: !726, size: 64, offset: 320)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !25, line: 2366, size: 576, elements: !728)
!728 = !{!729, !730, !731, !737, !741, !745, !749, !750, !751, !761, !765, !766, !767, !769, !770, !771, !772}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !727, file: !25, line: 2367, baseType: !400, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !727, file: !25, line: 2368, baseType: !120, size: 32, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !727, file: !25, line: 2376, baseType: !732, size: 64, offset: 128)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DISubroutineType(types: !734)
!734 = !{!120, !735}
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !708, line: 21, flags: DIFlagFwdDecl)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !727, file: !25, line: 2377, baseType: !738, size: 64, offset: 192)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !740)
!740 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !25, line: 75, flags: DIFlagFwdDecl)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !727, file: !25, line: 2378, baseType: !742, size: 64, offset: 256)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{!596, !726, !120, !400, !376}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !727, file: !25, line: 2380, baseType: !746, size: 64, offset: 320)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{null, !712}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !727, file: !25, line: 2381, baseType: !377, size: 64, offset: 384)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !727, file: !25, line: 2382, baseType: !726, size: 64, offset: 448)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !727, file: !25, line: 2383, baseType: !752, size: 64, offset: 512)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !383, line: 194, size: 64, elements: !753)
!753 = !{!754}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !752, file: !383, line: 195, baseType: !755, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !383, line: 198, size: 128, elements: !757)
!757 = !{!758, !759}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !756, file: !383, line: 199, baseType: !755, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !756, file: !383, line: 199, baseType: !760, size: 64, offset: 64)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !727, file: !25, line: 2385, baseType: !762, offset: 576)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !763, line: 206, elements: !764)
!763 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!764 = !{}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !727, file: !25, line: 2386, baseType: !762, offset: 576)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !727, file: !25, line: 2387, baseType: !762, offset: 576)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !727, file: !25, line: 2388, baseType: !768, offset: 576)
!768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !762, elements: !482)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !727, file: !25, line: 2390, baseType: !762, offset: 576)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !727, file: !25, line: 2391, baseType: !762, offset: 576)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !727, file: !25, line: 2392, baseType: !762, offset: 576)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !727, file: !25, line: 2393, baseType: !762, offset: 576)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !713, file: !25, line: 1197, baseType: !774, size: 64, offset: 384)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !776)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !25, line: 2057, size: 1664, elements: !777)
!777 = !{!778, !782, !786, !787, !791, !797, !801, !802, !803, !807, !811, !815, !816, !817, !823, !828, !829, !3129, !3130, !3131, !3132, !3136, !3140, !3187, !3202, !3203}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !776, file: !25, line: 2058, baseType: !779, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DISubroutineType(types: !781)
!781 = !{!561, !712}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !776, file: !25, line: 2059, baseType: !783, size: 64, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DISubroutineType(types: !785)
!785 = !{null, !561}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !776, file: !25, line: 2060, baseType: !783, size: 64, offset: 128)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !776, file: !25, line: 2062, baseType: !788, size: 64, offset: 192)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DISubroutineType(types: !790)
!790 = !{null, !561, !120}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !776, file: !25, line: 2063, baseType: !792, size: 64, offset: 256)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DISubroutineType(types: !794)
!794 = !{!120, !561, !795}
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !25, line: 309, flags: DIFlagFwdDecl)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !776, file: !25, line: 2064, baseType: !798, size: 64, offset: 320)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DISubroutineType(types: !800)
!800 = !{!120, !561}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !776, file: !25, line: 2065, baseType: !783, size: 64, offset: 384)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !776, file: !25, line: 2066, baseType: !746, size: 64, offset: 448)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !776, file: !25, line: 2067, baseType: !804, size: 64, offset: 512)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DISubroutineType(types: !806)
!806 = !{!120, !712, !120}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !776, file: !25, line: 2068, baseType: !808, size: 64, offset: 576)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DISubroutineType(types: !810)
!810 = !{!120, !712, !24}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !776, file: !25, line: 2069, baseType: !812, size: 64, offset: 640)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DISubroutineType(types: !814)
!814 = !{!120, !712}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !776, file: !25, line: 2070, baseType: !808, size: 64, offset: 704)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !776, file: !25, line: 2071, baseType: !812, size: 64, offset: 768)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !776, file: !25, line: 2072, baseType: !818, size: 64, offset: 832)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DISubroutineType(types: !820)
!820 = !{!120, !596, !821}
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !25, line: 62, flags: DIFlagFwdDecl)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !776, file: !25, line: 2073, baseType: !824, size: 64, offset: 896)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{!120, !712, !827, !481}
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !776, file: !25, line: 2074, baseType: !746, size: 64, offset: 960)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !776, file: !25, line: 2076, baseType: !830, size: 64, offset: 1024)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DISubroutineType(types: !832)
!832 = !{!120, !833, !596}
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !835, line: 17, size: 960, elements: !836)
!835 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!836 = !{!837, !838, !839, !840, !841, !842, !843, !844, !865, !887, !888, !3128}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !834, file: !835, line: 18, baseType: !481, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !834, file: !835, line: 19, baseType: !528, size: 64, offset: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !834, file: !835, line: 20, baseType: !528, size: 64, offset: 128)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !834, file: !835, line: 21, baseType: !528, size: 64, offset: 192)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !834, file: !835, line: 22, baseType: !528, size: 64, offset: 256)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !834, file: !835, line: 23, baseType: !722, size: 64, offset: 320)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !834, file: !835, line: 24, baseType: !722, size: 64, offset: 384)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !834, file: !835, line: 25, baseType: !845, size: 256, offset: 448)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !846, line: 66, size: 256, elements: !847)
!846 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!847 = !{!848, !857, !859, !864}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !845, file: !846, line: 67, baseType: !849, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !850, line: 13, baseType: !851)
!850 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !383, line: 181, baseType: !852)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !383, line: 179, size: 64, elements: !853)
!853 = !{!854}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !852, file: !383, line: 180, baseType: !855, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !440, line: 22, baseType: !856)
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !442, line: 30, baseType: !724)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !845, file: !846, line: 68, baseType: !858, size: 32, offset: 64)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !420, line: 23, baseType: !419)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !845, file: !846, line: 70, baseType: !860, size: 32, offset: 96)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !861, line: 15, size: 32, elements: !862)
!861 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!862 = !{!863}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !860, file: !861, line: 20, baseType: !431, size: 32)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !845, file: !846, line: 72, baseType: !382, size: 128, offset: 128)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !834, file: !835, line: 26, baseType: !866, size: 64, offset: 704)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !868)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !835, line: 32, size: 256, elements: !869)
!869 = !{!870, !875, !879, !883}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !868, file: !835, line: 33, baseType: !871, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DISubroutineType(types: !873)
!873 = !{!376, !833, !874}
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !868, file: !835, line: 34, baseType: !876, size: 64, offset: 64)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DISubroutineType(types: !878)
!878 = !{null, !833, !376}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !868, file: !835, line: 35, baseType: !880, size: 64, offset: 128)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DISubroutineType(types: !882)
!882 = !{!376, !833, !376, !874}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !868, file: !835, line: 36, baseType: !884, size: 64, offset: 192)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DISubroutineType(types: !886)
!886 = !{!120, !833, !376}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !834, file: !835, line: 27, baseType: !120, size: 32, offset: 768)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !834, file: !835, line: 28, baseType: !889, size: 64, offset: 832)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !891)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !25, line: 994, size: 1856, align: 64, elements: !892)
!892 = !{!893, !912, !913, !915, !916, !917, !918, !919, !2933, !2934, !2943, !2949, !2950, !3118, !3119, !3120, !3121, !3123, !3124, !3127}
!893 = !DIDerivedType(tag: DW_TAG_member, scope: !891, file: !25, line: 995, baseType: !894, size: 128)
!894 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !891, file: !25, line: 995, size: 128, elements: !895)
!895 = !{!896, !902, !911}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !894, file: !25, line: 996, baseType: !897, size: 64)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !898, line: 60, size: 64, elements: !899)
!898 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!899 = !{!900}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !897, file: !898, line: 61, baseType: !901, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !894, file: !25, line: 997, baseType: !903, size: 128, align: 64)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !383, line: 232, size: 128, align: 64, elements: !904)
!904 = !{!905, !907}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !903, file: !383, line: 233, baseType: !906, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !903, file: !383, line: 234, baseType: !908, size: 64, offset: 64)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DISubroutineType(types: !910)
!910 = !{null, !906}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !894, file: !25, line: 998, baseType: !18, size: 32)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !891, file: !25, line: 1005, baseType: !411, size: 32, offset: 128)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !891, file: !25, line: 1006, baseType: !914, size: 32, offset: 160)
!914 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !383, line: 156, baseType: !18)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !891, file: !25, line: 1007, baseType: !849, size: 64, offset: 192)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !891, file: !25, line: 1008, baseType: !845, size: 256, offset: 256)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !891, file: !25, line: 1009, baseType: !722, size: 64, offset: 512)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !891, file: !25, line: 1010, baseType: !18, size: 32, offset: 576)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !891, file: !25, line: 1011, baseType: !920, size: 256, offset: 640)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !25, line: 948, size: 256, elements: !921)
!921 = !{!922, !943, !2929, !2930, !2931, !2932}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !920, file: !25, line: 949, baseType: !923, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !924, line: 34, baseType: !925)
!924 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !924, line: 25, size: 64, elements: !926)
!926 = !{!927}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !925, file: !924, line: 26, baseType: !928, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !929, line: 27, baseType: !930)
!929 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !929, line: 13, size: 64, elements: !931)
!931 = !{!932, !942}
!932 = !DIDerivedType(tag: DW_TAG_member, scope: !930, file: !929, line: 14, baseType: !933, size: 32)
!933 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !930, file: !929, line: 14, size: 32, elements: !934)
!934 = !{!935, !936}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !933, file: !929, line: 15, baseType: !431, size: 32)
!936 = !DIDerivedType(tag: DW_TAG_member, scope: !933, file: !929, line: 16, baseType: !937, size: 32)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !933, file: !929, line: 16, size: 32, elements: !938)
!938 = !{!939, !940}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !937, file: !929, line: 18, baseType: !439, size: 8)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !937, file: !929, line: 19, baseType: !941, size: 24, offset: 8)
!941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, size: 24, elements: !482)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !930, file: !929, line: 26, baseType: !423, size: 32, offset: 32)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !920, file: !25, line: 950, baseType: !944, size: 64, offset: 64)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !72, line: 59, size: 768, elements: !946)
!946 = !{!947, !953, !954, !955, !957, !958, !965, !966}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !945, file: !72, line: 61, baseType: !948, size: 32)
!948 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !949, line: 113, baseType: !950)
!949 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !949, line: 111, size: 32, elements: !951)
!951 = !{!952}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !950, file: !949, line: 112, baseType: !431, size: 32)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !945, file: !72, line: 62, baseType: !18, size: 32, offset: 32)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !945, file: !72, line: 63, baseType: !411, size: 32, offset: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !945, file: !72, line: 65, baseType: !956, size: 256, offset: 128)
!956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !752, size: 256, elements: !5)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !945, file: !72, line: 66, baseType: !752, size: 64, offset: 384)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !945, file: !72, line: 68, baseType: !959, size: 192, offset: 448)
!959 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !960, line: 41, baseType: !961)
!960 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !960, line: 37, size: 192, elements: !962)
!962 = !{!963, !964}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !961, file: !960, line: 38, baseType: !411, size: 32)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !961, file: !960, line: 39, baseType: !382, size: 128, offset: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !945, file: !72, line: 69, baseType: !903, size: 128, align: 64, offset: 640)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !945, file: !72, line: 70, baseType: !967, offset: 768)
!967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !968, elements: !1475)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !72, line: 54, size: 128, elements: !969)
!969 = !{!970, !971}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !968, file: !72, line: 55, baseType: !120, size: 32)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !968, file: !72, line: 56, baseType: !972, size: 64, offset: 64)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !974, line: 26, size: 1152, elements: !975)
!974 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!975 = !{!976, !990, !991, !992, !2905, !2909, !2910, !2911, !2914, !2915, !2916, !2917, !2928}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !973, file: !974, line: 27, baseType: !977, size: 192)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !978, line: 19, size: 192, elements: !979)
!978 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!979 = !{!980, !988, !989}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !977, file: !978, line: 20, baseType: !981, size: 128)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !982, line: 296, size: 128, elements: !983)
!982 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!983 = !{!984, !985, !987}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !981, file: !982, line: 297, baseType: !411, size: 32)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !981, file: !982, line: 299, baseType: !986, size: 32, offset: 32)
!986 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !383, line: 154, baseType: !18)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !981, file: !982, line: 300, baseType: !376, size: 64, offset: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !977, file: !978, line: 21, baseType: !18, size: 32, offset: 128)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !977, file: !978, line: 22, baseType: !18, size: 32, offset: 160)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !973, file: !974, line: 28, baseType: !903, size: 128, align: 64, offset: 192)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !973, file: !974, line: 29, baseType: !18, size: 32, offset: 320)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !973, file: !974, line: 30, baseType: !993, size: 64, offset: 384)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !995, line: 746, size: 58368, elements: !996)
!995 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!996 = !{!997, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1084, !1095, !1188, !1192, !1195, !1226, !1227, !1228, !1229, !1240, !1242, !1243, !1244, !1245, !1246, !1247, !1258, !1259, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1276, !1277, !1284, !1285, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1561, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1576, !1577, !1578, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1620, !1626, !1810, !1811, !1812, !1813, !1817, !1820, !1827, !1832, !1835, !1838, !1841, !1867, !2007, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2047, !2048, !2049, !2058, !2066, !2067, !2068, !2069, !2070, !2075, !2076, !2077, !2080, !2081, !2084, !2087, !2090, !2098, !2101, !2102, !2187, !2188, !2189, !2190, !2191, !2197, !2198, !2199, !2200, !2203, !2204, !2207, !2210, !2211, !2214, !2215, !2216, !2219, !2220, !2221, !2224, !2225, !2226, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2258, !2261, !2550, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2562, !2634, !2636, !2637, !2638, !2639, !2640, !2652, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2682, !2683, !2684}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !994, file: !995, line: 752, baseType: !998, size: 192)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !999, line: 56, size: 192, elements: !1000)
!999 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1000 = !{!1001, !1002, !1003, !1004}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !998, file: !999, line: 57, baseType: !531, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !998, file: !999, line: 58, baseType: !531, size: 64, offset: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !998, file: !999, line: 59, baseType: !630, size: 32, offset: 128)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !998, file: !999, line: 61, baseType: !630, size: 32, offset: 160)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !994, file: !995, line: 754, baseType: !18, size: 32, offset: 192)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !994, file: !995, line: 767, baseType: !376, size: 64, offset: 256)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !994, file: !995, line: 768, baseType: !948, size: 32, offset: 320)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !994, file: !995, line: 770, baseType: !18, size: 32, offset: 352)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !994, file: !995, line: 771, baseType: !18, size: 32, offset: 384)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !994, file: !995, line: 774, baseType: !120, size: 32, offset: 416)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !994, file: !995, line: 775, baseType: !1012, size: 128, offset: 448)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1013, line: 58, size: 128, elements: !1014)
!1013 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1014 = !{!1015, !1016, !1021, !1022}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1012, file: !1013, line: 59, baseType: !897, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, scope: !1012, file: !1013, line: 60, baseType: !1017, size: 32, offset: 64)
!1017 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1012, file: !1013, line: 60, size: 32, elements: !1018)
!1018 = !{!1019, !1020}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1017, file: !1013, line: 61, baseType: !18, size: 32)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1017, file: !1013, line: 62, baseType: !431, size: 32)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1012, file: !1013, line: 65, baseType: !449, size: 16, offset: 96)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1012, file: !1013, line: 65, baseType: !449, size: 16, offset: 112)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !994, file: !995, line: 776, baseType: !18, size: 32, offset: 576)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !994, file: !995, line: 777, baseType: !531, size: 64, offset: 640)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !994, file: !995, line: 778, baseType: !993, size: 64, offset: 704)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !994, file: !995, line: 787, baseType: !120, size: 32, offset: 768)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !994, file: !995, line: 788, baseType: !120, size: 32, offset: 800)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !994, file: !995, line: 790, baseType: !120, size: 32, offset: 832)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !994, file: !995, line: 792, baseType: !120, size: 32, offset: 864)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !994, file: !995, line: 793, baseType: !120, size: 32, offset: 896)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !994, file: !995, line: 794, baseType: !120, size: 32, offset: 928)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !994, file: !995, line: 795, baseType: !18, size: 32, offset: 960)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !994, file: !995, line: 797, baseType: !1034, size: 2048, offset: 1024)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !995, line: 551, size: 2048, elements: !1035)
!1035 = !{!1036, !1041, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1063, !1066, !1067, !1068}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1034, file: !995, line: 553, baseType: !1037, size: 128)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !995, line: 411, size: 128, elements: !1038)
!1038 = !{!1039, !1040}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1037, file: !995, line: 412, baseType: !531, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1037, file: !995, line: 413, baseType: !630, size: 32, offset: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1034, file: !995, line: 554, baseType: !1042, size: 192, align: 64, offset: 128)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1043, line: 5, size: 192, align: 64, elements: !1044)
!1043 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!1044 = !{!1045, !1046, !1048}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1042, file: !1043, line: 6, baseType: !531, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1042, file: !1043, line: 7, baseType: !1047, size: 64, offset: 64)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1042, file: !1043, line: 8, baseType: !1047, size: 64, offset: 128)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1034, file: !995, line: 555, baseType: !634, size: 64, offset: 320)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1034, file: !995, line: 556, baseType: !634, size: 64, offset: 384)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1034, file: !995, line: 558, baseType: !382, size: 128, offset: 448)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1034, file: !995, line: 559, baseType: !18, size: 32, offset: 576)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1034, file: !995, line: 561, baseType: !634, size: 64, offset: 640)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1034, file: !995, line: 562, baseType: !634, size: 64, offset: 704)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1034, file: !995, line: 563, baseType: !634, size: 64, offset: 768)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1034, file: !995, line: 564, baseType: !634, size: 64, offset: 832)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1034, file: !995, line: 565, baseType: !855, size: 64, offset: 896)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1034, file: !995, line: 566, baseType: !634, size: 64, offset: 960)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1034, file: !995, line: 568, baseType: !634, size: 64, offset: 1024)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1034, file: !995, line: 571, baseType: !120, size: 32, offset: 1088)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1034, file: !995, line: 572, baseType: !1062, size: 64, offset: 1152)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1034, file: !995, line: 574, baseType: !1064, size: 64, offset: 1216)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !995, line: 49, flags: DIFlagFwdDecl)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1034, file: !995, line: 576, baseType: !1064, size: 64, offset: 1280)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1034, file: !995, line: 578, baseType: !531, size: 64, offset: 1344)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1034, file: !995, line: 588, baseType: !1069, size: 512, align: 512, offset: 1536)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !995, line: 497, size: 512, align: 512, elements: !1070)
!1070 = !{!1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1069, file: !995, line: 498, baseType: !634, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1069, file: !995, line: 499, baseType: !634, size: 64, offset: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1069, file: !995, line: 500, baseType: !634, size: 64, offset: 128)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1069, file: !995, line: 501, baseType: !630, size: 32, offset: 192)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1069, file: !995, line: 502, baseType: !630, size: 32, offset: 224)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1069, file: !995, line: 503, baseType: !531, size: 64, offset: 256)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1069, file: !995, line: 504, baseType: !531, size: 64, offset: 320)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1069, file: !995, line: 505, baseType: !531, size: 64, offset: 384)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1069, file: !995, line: 506, baseType: !1080, size: 64, align: 64, offset: 448)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !995, line: 445, size: 64, align: 64, elements: !1081)
!1081 = !{!1082, !1083}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1080, file: !995, line: 446, baseType: !18, size: 32)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1080, file: !995, line: 447, baseType: !18, size: 32, offset: 32)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !994, file: !995, line: 798, baseType: !1085, size: 384, offset: 3072)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !995, line: 592, size: 384, elements: !1086)
!1086 = !{!1087, !1088, !1089, !1090, !1091, !1092, !1093}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1085, file: !995, line: 593, baseType: !382, size: 128)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1085, file: !995, line: 594, baseType: !531, size: 64, offset: 128)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1085, file: !995, line: 595, baseType: !531, size: 64, offset: 192)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1085, file: !995, line: 596, baseType: !18, size: 32, offset: 256)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1085, file: !995, line: 597, baseType: !451, size: 16, offset: 288)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1085, file: !995, line: 598, baseType: !451, size: 16, offset: 304)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1085, file: !995, line: 600, baseType: !1094, size: 64, offset: 320)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !994, file: !995, line: 799, baseType: !1096, size: 1792, offset: 3456)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !995, line: 610, size: 1792, elements: !1097)
!1097 = !{!1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1185, !1186}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1096, file: !995, line: 611, baseType: !1042, size: 192, align: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1096, file: !995, line: 618, baseType: !634, size: 64, offset: 192)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1096, file: !995, line: 619, baseType: !634, size: 64, offset: 256)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1096, file: !995, line: 620, baseType: !634, size: 64, offset: 320)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1096, file: !995, line: 621, baseType: !634, size: 64, offset: 384)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1096, file: !995, line: 622, baseType: !634, size: 64, offset: 448)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1096, file: !995, line: 629, baseType: !855, size: 64, offset: 512)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1096, file: !995, line: 630, baseType: !634, size: 64, offset: 576)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1096, file: !995, line: 631, baseType: !18, size: 32, offset: 640)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1096, file: !995, line: 653, baseType: !18, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1096, file: !995, line: 654, baseType: !18, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1096, file: !995, line: 655, baseType: !18, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1096, file: !995, line: 656, baseType: !18, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1096, file: !995, line: 662, baseType: !1112, size: 512, offset: 704)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !30, line: 118, size: 512, elements: !1113)
!1113 = !{!1114, !1122, !1123, !1128, !1181, !1182, !1183, !1184}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1112, file: !30, line: 119, baseType: !1115, size: 256)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1116, line: 9, size: 256, elements: !1117)
!1116 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1117 = !{!1118, !1119}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1115, file: !1116, line: 10, baseType: !1042, size: 192, align: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1115, file: !1116, line: 11, baseType: !1120, size: 64, offset: 192)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1121, line: 29, baseType: !855)
!1121 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1112, file: !30, line: 120, baseType: !1120, size: 64, offset: 256)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1112, file: !30, line: 121, baseType: !1124, size: 64, offset: 320)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!29, !1127}
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1112, file: !30, line: 122, baseType: !1129, size: 64, offset: 384)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !30, line: 159, size: 512, align: 512, elements: !1131)
!1131 = !{!1132, !1155, !1156, !1159, !1164, !1165, !1176, !1180}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1130, file: !30, line: 160, baseType: !1133, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !30, line: 215, size: 4608, align: 512, elements: !1135)
!1135 = !{!1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1134, file: !30, line: 216, baseType: !858, size: 32)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1134, file: !30, line: 217, baseType: !18, size: 32, offset: 32)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1134, file: !30, line: 218, baseType: !18, size: 32, offset: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1134, file: !30, line: 219, baseType: !18, size: 32, offset: 96)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1134, file: !30, line: 220, baseType: !18, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1134, file: !30, line: 221, baseType: !18, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1134, file: !30, line: 222, baseType: !18, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1134, file: !30, line: 223, baseType: !18, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1134, file: !30, line: 224, baseType: !18, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1134, file: !30, line: 226, baseType: !18, size: 32, offset: 160)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1134, file: !30, line: 227, baseType: !451, size: 16, offset: 192)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1134, file: !30, line: 228, baseType: !451, size: 16, offset: 208)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1134, file: !30, line: 229, baseType: !18, size: 32, offset: 224)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1134, file: !30, line: 235, baseType: !1120, size: 64, offset: 256)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1134, file: !30, line: 236, baseType: !1127, size: 64, offset: 320)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1134, file: !30, line: 237, baseType: !1120, size: 64, offset: 384)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1134, file: !30, line: 238, baseType: !1127, size: 64, offset: 448)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1134, file: !30, line: 239, baseType: !1154, size: 4096, align: 512, offset: 512)
!1154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1130, size: 4096, align: 512, elements: !10)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1130, file: !30, line: 161, baseType: !18, size: 32, offset: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1130, file: !30, line: 162, baseType: !1157, size: 32, offset: 96)
!1157 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !383, line: 32, baseType: !1158)
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !515, line: 96, baseType: !120)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1130, file: !30, line: 163, baseType: !1160, size: 32, offset: 128)
!1160 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !603, line: 274, baseType: !1161)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !603, line: 274, size: 32, elements: !1162)
!1162 = !{!1163}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1161, file: !603, line: 274, baseType: !607, size: 32)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1130, file: !30, line: 164, baseType: !1127, size: 64, offset: 192)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1130, file: !30, line: 165, baseType: !1166, size: 128, offset: 256)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1116, line: 14, size: 128, elements: !1167)
!1167 = !{!1168}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1166, file: !1116, line: 15, baseType: !1169, size: 128)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !1043, line: 26, size: 128, elements: !1170)
!1170 = !{!1171, !1175}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1169, file: !1043, line: 27, baseType: !1172, size: 64)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1043, line: 12, size: 64, elements: !1173)
!1173 = !{!1174}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1172, file: !1043, line: 13, baseType: !1047, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1169, file: !1043, line: 28, baseType: !1047, size: 64, offset: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1130, file: !30, line: 166, baseType: !1177, size: 64, offset: 384)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!1120}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1130, file: !30, line: 167, baseType: !1120, size: 64, offset: 448)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1112, file: !30, line: 123, baseType: !439, size: 8, offset: 448)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1112, file: !30, line: 124, baseType: !439, size: 8, offset: 456)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1112, file: !30, line: 125, baseType: !439, size: 8, offset: 464)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1112, file: !30, line: 126, baseType: !439, size: 8, offset: 472)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1096, file: !995, line: 671, baseType: !1112, size: 512, offset: 1216)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1096, file: !995, line: 679, baseType: !1187, size: 64, offset: 1728)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !994, file: !995, line: 800, baseType: !1189, size: 64, offset: 5248)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1191)
!1191 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !995, line: 800, flags: DIFlagFwdDecl)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !994, file: !995, line: 809, baseType: !1193, size: 64, offset: 5312)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !995, line: 70, flags: DIFlagFwdDecl)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !994, file: !995, line: 825, baseType: !1196, size: 2048, align: 512, offset: 5632)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !995, line: 509, size: 2048, align: 512, elements: !1197)
!1197 = !{!1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1196, file: !995, line: 511, baseType: !634, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1196, file: !995, line: 512, baseType: !634, size: 64, offset: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1196, file: !995, line: 513, baseType: !634, size: 64, offset: 128)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1196, file: !995, line: 514, baseType: !634, size: 64, offset: 192)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1196, file: !995, line: 515, baseType: !634, size: 64, offset: 256)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1196, file: !995, line: 516, baseType: !634, size: 64, offset: 320)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1196, file: !995, line: 518, baseType: !634, size: 64, offset: 384)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1196, file: !995, line: 519, baseType: !634, size: 64, offset: 448)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1196, file: !995, line: 520, baseType: !855, size: 64, offset: 512)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1196, file: !995, line: 522, baseType: !634, size: 64, offset: 576)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1196, file: !995, line: 523, baseType: !634, size: 64, offset: 640)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1196, file: !995, line: 524, baseType: !855, size: 64, offset: 704)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1196, file: !995, line: 526, baseType: !855, size: 64, offset: 768)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1196, file: !995, line: 527, baseType: !634, size: 64, offset: 832)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1196, file: !995, line: 529, baseType: !634, size: 64, offset: 896)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1196, file: !995, line: 530, baseType: !634, size: 64, offset: 960)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1196, file: !995, line: 531, baseType: !634, size: 64, offset: 1024)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1196, file: !995, line: 532, baseType: !634, size: 64, offset: 1088)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1196, file: !995, line: 533, baseType: !634, size: 64, offset: 1152)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1196, file: !995, line: 535, baseType: !634, size: 64, offset: 1216)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1196, file: !995, line: 536, baseType: !634, size: 64, offset: 1280)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1196, file: !995, line: 537, baseType: !634, size: 64, offset: 1344)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1196, file: !995, line: 538, baseType: !634, size: 64, offset: 1408)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1196, file: !995, line: 539, baseType: !634, size: 64, offset: 1472)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1196, file: !995, line: 540, baseType: !634, size: 64, offset: 1536)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1196, file: !995, line: 541, baseType: !634, size: 64, offset: 1600)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1196, file: !995, line: 542, baseType: !634, size: 64, offset: 1664)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1196, file: !995, line: 543, baseType: !634, size: 64, offset: 1728)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !994, file: !995, line: 833, baseType: !18, size: 32, offset: 7680)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !994, file: !995, line: 836, baseType: !18, size: 32, offset: 7712)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !994, file: !995, line: 837, baseType: !120, size: 32, offset: 7744)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !994, file: !995, line: 838, baseType: !1230, size: 64, offset: 7808)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1232)
!1232 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1233, line: 19, baseType: !1234)
!1233 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1233, line: 19, size: 64, elements: !1235)
!1235 = !{!1236}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1234, file: !1233, line: 19, baseType: !1237, size: 64)
!1237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !531, size: 64, elements: !1238)
!1238 = !{!1239}
!1239 = !DISubrange(count: 1)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !994, file: !995, line: 839, baseType: !1241, size: 64, offset: 7872)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !994, file: !995, line: 840, baseType: !1232, size: 64, offset: 7936)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !994, file: !995, line: 841, baseType: !376, size: 64, offset: 8000)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !994, file: !995, line: 843, baseType: !451, size: 16, offset: 8064)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !994, file: !995, line: 845, baseType: !451, size: 16, offset: 8080)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !994, file: !995, line: 848, baseType: !120, size: 32, offset: 8096)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !994, file: !995, line: 849, baseType: !1248, size: 32, offset: 8128)
!1248 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !995, line: 718, size: 32, elements: !1249)
!1249 = !{!1250, !1257}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1248, file: !995, line: 724, baseType: !1251, size: 32)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1248, file: !995, line: 719, size: 32, elements: !1252)
!1252 = !{!1253, !1254, !1255, !1256}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1251, file: !995, line: 720, baseType: !439, size: 8)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1251, file: !995, line: 721, baseType: !439, size: 8, offset: 8)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1251, file: !995, line: 722, baseType: !439, size: 8, offset: 16)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1251, file: !995, line: 723, baseType: !439, size: 8, offset: 24)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1248, file: !995, line: 725, baseType: !630, size: 32)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !994, file: !995, line: 850, baseType: !382, size: 128, offset: 8192)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !994, file: !995, line: 851, baseType: !1260, size: 64, offset: 8320)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !995, line: 60, flags: DIFlagFwdDecl)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !994, file: !995, line: 855, baseType: !531, size: 64, offset: 8384)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !994, file: !995, line: 856, baseType: !439, size: 8, offset: 8448)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !994, file: !995, line: 857, baseType: !439, size: 8, offset: 8456)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !994, file: !995, line: 858, baseType: !120, size: 32, offset: 8480)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !994, file: !995, line: 859, baseType: !382, size: 128, offset: 8512)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !994, file: !995, line: 860, baseType: !120, size: 32, offset: 8640)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !994, file: !995, line: 861, baseType: !382, size: 128, offset: 8704)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !994, file: !995, line: 873, baseType: !1270, size: 256, offset: 8832)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !995, line: 376, size: 256, elements: !1271)
!1271 = !{!1272, !1273, !1274, !1275}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1270, file: !995, line: 381, baseType: !531, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1270, file: !995, line: 384, baseType: !636, size: 64, offset: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1270, file: !995, line: 389, baseType: !636, size: 64, offset: 128)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1270, file: !995, line: 392, baseType: !636, size: 64, offset: 192)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !994, file: !995, line: 875, baseType: !382, size: 128, offset: 9088)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !994, file: !995, line: 877, baseType: !1278, size: 320, offset: 9216)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1279, line: 86, size: 320, elements: !1280)
!1279 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1280 = !{!1281, !1282, !1283}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1278, file: !1279, line: 87, baseType: !120, size: 32)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1278, file: !1279, line: 88, baseType: !382, size: 128, offset: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1278, file: !1279, line: 89, baseType: !382, size: 128, offset: 192)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !994, file: !995, line: 878, baseType: !1042, size: 192, align: 64, offset: 9536)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !994, file: !995, line: 881, baseType: !1286, size: 64, offset: 9728)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !49, line: 733, size: 10240, elements: !1288)
!1288 = !{!1289, !1473}
!1289 = !DIDerivedType(tag: DW_TAG_member, scope: !1287, file: !49, line: 734, baseType: !1290, size: 10240)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1287, file: !49, line: 734, size: 10240, elements: !1291)
!1291 = !{!1292, !1296, !1309, !1314, !1315, !1316, !1317, !1318, !1319, !1328, !1329, !1330, !1336, !1337, !1338, !1339, !1340, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1377, !1389, !1392, !1440, !1441, !1442, !1445, !1448, !1449, !1452, !1453, !1454, !1460, !1461}
!1292 = !DIDerivedType(tag: DW_TAG_member, scope: !1290, file: !49, line: 739, baseType: !1293, size: 512, align: 512)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1290, file: !49, line: 739, size: 512, align: 512, elements: !1294)
!1294 = !{!1295}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1293, file: !49, line: 747, baseType: !431, size: 32)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1290, file: !49, line: 750, baseType: !1297, size: 128, offset: 512)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1298, line: 218, size: 128, elements: !1299)
!1298 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1299 = !{!1300, !1307, !1308}
!1300 = !DIDerivedType(tag: DW_TAG_member, scope: !1297, file: !1298, line: 219, baseType: !1301, size: 32)
!1301 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1297, file: !1298, line: 219, size: 32, elements: !1302)
!1302 = !{!1303, !1304}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1301, file: !1298, line: 220, baseType: !411, size: 32)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1301, file: !1298, line: 221, baseType: !1305)
!1305 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1298, line: 197, baseType: !1306)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1298, line: 197, elements: !764)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1297, file: !1298, line: 223, baseType: !18, size: 32, offset: 32)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1297, file: !1298, line: 224, baseType: !376, size: 64, offset: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1290, file: !49, line: 752, baseType: !1310, size: 64, offset: 640)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{!531, !1313, !531, !531, !531, !531}
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1290, file: !49, line: 756, baseType: !531, size: 64, offset: 704)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1290, file: !49, line: 757, baseType: !531, size: 64, offset: 768)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1290, file: !49, line: 760, baseType: !531, size: 64, offset: 832)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1290, file: !49, line: 761, baseType: !531, size: 64, offset: 896)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1290, file: !49, line: 763, baseType: !531, size: 64, offset: 960)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1290, file: !49, line: 764, baseType: !1320, size: 64, offset: 1024)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1322, line: 299, baseType: !1323)
!1322 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1322, line: 299, size: 64, elements: !1324)
!1324 = !{!1325}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1323, file: !1322, line: 299, baseType: !1326, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1327, line: 18, baseType: !531)
!1327 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1290, file: !49, line: 773, baseType: !431, size: 32, offset: 1088)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1290, file: !49, line: 785, baseType: !431, size: 32, offset: 1120)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1290, file: !49, line: 795, baseType: !1331, size: 64, offset: 1152)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !49, line: 726, size: 128, elements: !1333)
!1333 = !{!1334, !1335}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1332, file: !49, line: 727, baseType: !634, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1332, file: !49, line: 728, baseType: !120, size: 32, offset: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1290, file: !49, line: 801, baseType: !531, size: 64, offset: 1216)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1290, file: !49, line: 804, baseType: !849, size: 64, offset: 1280)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1290, file: !49, line: 806, baseType: !120, size: 32, offset: 1344)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1290, file: !49, line: 808, baseType: !411, size: 32, offset: 1376)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1290, file: !49, line: 823, baseType: !1341, size: 320, offset: 1408)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1342, line: 48, size: 320, elements: !1343)
!1342 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1343 = !{!1344, !1345, !1346, !1347, !1348}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1341, file: !1342, line: 49, baseType: !849, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1341, file: !1342, line: 55, baseType: !849, size: 64, offset: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1341, file: !1342, line: 57, baseType: !860, size: 32, offset: 128)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1341, file: !1342, line: 59, baseType: !858, size: 32, offset: 160)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1341, file: !1342, line: 60, baseType: !382, size: 128, offset: 192)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1290, file: !49, line: 825, baseType: !382, size: 128, offset: 1728)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1290, file: !49, line: 845, baseType: !120, size: 32, offset: 1856)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1290, file: !49, line: 849, baseType: !531, size: 64, offset: 1920)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1290, file: !49, line: 850, baseType: !531, size: 64, offset: 1984)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1290, file: !49, line: 852, baseType: !531, size: 64, offset: 2048)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1290, file: !49, line: 853, baseType: !531, size: 64, offset: 2112)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1290, file: !49, line: 854, baseType: !851, size: 64, offset: 2176)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1290, file: !49, line: 855, baseType: !531, size: 64, offset: 2240)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1290, file: !49, line: 856, baseType: !531, size: 64, offset: 2304)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1290, file: !49, line: 857, baseType: !531, size: 64, offset: 2368)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1290, file: !49, line: 858, baseType: !531, size: 64, offset: 2432)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1290, file: !49, line: 865, baseType: !607, size: 32, offset: 2496)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1290, file: !49, line: 867, baseType: !411, size: 32, offset: 2528)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1290, file: !49, line: 869, baseType: !531, size: 64, offset: 2560)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1290, file: !49, line: 869, baseType: !531, size: 64, offset: 2624)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1290, file: !49, line: 869, baseType: !531, size: 64, offset: 2688)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1290, file: !49, line: 869, baseType: !531, size: 64, offset: 2752)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1290, file: !49, line: 870, baseType: !531, size: 64, offset: 2816)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1290, file: !49, line: 870, baseType: !531, size: 64, offset: 2880)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1290, file: !49, line: 870, baseType: !531, size: 64, offset: 2944)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1290, file: !49, line: 871, baseType: !531, size: 64, offset: 3008)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1290, file: !49, line: 871, baseType: !531, size: 64, offset: 3072)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1290, file: !49, line: 871, baseType: !531, size: 64, offset: 3136)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1290, file: !49, line: 871, baseType: !531, size: 64, offset: 3200)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1290, file: !49, line: 873, baseType: !1374, size: 3328, offset: 3264)
!1374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !531, size: 3328, elements: !1375)
!1375 = !{!1376}
!1376 = !DISubrange(count: 52)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1290, file: !49, line: 875, baseType: !1378, size: 1280, offset: 6592)
!1378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1379, size: 1280, elements: !5)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1380, line: 22, size: 320, elements: !1381)
!1380 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1381 = !{!1382, !1383, !1384, !1385}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1379, file: !1380, line: 23, baseType: !858, size: 32)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1379, file: !1380, line: 24, baseType: !855, size: 64, offset: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1379, file: !1380, line: 26, baseType: !382, size: 128, offset: 128)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1379, file: !1380, line: 28, baseType: !1386, size: 64, offset: 256)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !440, line: 20, baseType: !1388)
!1388 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !442, line: 26, baseType: !120)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1290, file: !49, line: 877, baseType: !1390, size: 64, offset: 7872)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !49, line: 877, flags: DIFlagFwdDecl)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1290, file: !49, line: 880, baseType: !1393, size: 1088, offset: 7936)
!1393 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1394, line: 72, baseType: !1395)
!1394 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1394, line: 23, size: 1088, elements: !1396)
!1396 = !{!1397, !1398, !1399, !1400, !1401, !1404, !1405, !1406, !1407, !1434, !1435, !1436}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1395, file: !1394, line: 28, baseType: !634, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1395, file: !1394, line: 38, baseType: !851, size: 64, offset: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1395, file: !1394, line: 40, baseType: !531, size: 64, offset: 128)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1395, file: !1394, line: 43, baseType: !1341, size: 320, offset: 192)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1395, file: !1394, line: 44, baseType: !1402, size: 64, offset: 512)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1394, line: 44, flags: DIFlagFwdDecl)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1395, file: !1394, line: 48, baseType: !531, size: 64, offset: 576)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1395, file: !1394, line: 59, baseType: !845, size: 256, offset: 640)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1395, file: !1394, line: 60, baseType: !376, size: 64, offset: 896)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1395, file: !1394, line: 61, baseType: !1408, size: 64, offset: 960)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1410)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1411, line: 13, size: 1216, elements: !1412)
!1411 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1412 = !{!1413, !1414, !1415, !1416, !1417, !1418, !1419, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1410, file: !1411, line: 14, baseType: !376, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1410, file: !1411, line: 15, baseType: !531, size: 64, offset: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1410, file: !1411, line: 17, baseType: !531, size: 64, offset: 128)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1410, file: !1411, line: 17, baseType: !531, size: 64, offset: 192)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1410, file: !1411, line: 18, baseType: !531, size: 64, offset: 256)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1410, file: !1411, line: 18, baseType: !531, size: 64, offset: 320)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1410, file: !1411, line: 19, baseType: !1420, size: 64, offset: 384)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1410, file: !1411, line: 21, baseType: !517, size: 64, offset: 448)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1410, file: !1411, line: 23, baseType: !517, size: 64, offset: 512)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1410, file: !1411, line: 24, baseType: !517, size: 64, offset: 576)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1410, file: !1411, line: 25, baseType: !517, size: 64, offset: 640)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1410, file: !1411, line: 26, baseType: !517, size: 64, offset: 704)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1410, file: !1411, line: 27, baseType: !517, size: 64, offset: 768)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1410, file: !1411, line: 28, baseType: !517, size: 64, offset: 832)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1410, file: !1411, line: 29, baseType: !517, size: 64, offset: 896)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1410, file: !1411, line: 30, baseType: !517, size: 64, offset: 960)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1410, file: !1411, line: 31, baseType: !517, size: 64, offset: 1024)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1410, file: !1411, line: 32, baseType: !517, size: 64, offset: 1088)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1410, file: !1411, line: 33, baseType: !517, size: 64, offset: 1152)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1395, file: !1394, line: 63, baseType: !431, size: 32, offset: 1024)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1395, file: !1394, line: 69, baseType: !449, size: 16, offset: 1056)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1395, file: !1394, line: 70, baseType: !1437, size: 16, offset: 1072)
!1437 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !440, line: 18, baseType: !1438)
!1438 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !442, line: 23, baseType: !1439)
!1439 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1290, file: !49, line: 882, baseType: !531, size: 64, offset: 9024)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1290, file: !49, line: 885, baseType: !411, size: 32, offset: 9088)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1290, file: !49, line: 886, baseType: !1443, size: 64, offset: 9152)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !49, line: 732, flags: DIFlagFwdDecl)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1290, file: !49, line: 901, baseType: !1446, size: 64, offset: 9216)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !568, line: 18, flags: DIFlagFwdDecl)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1290, file: !49, line: 904, baseType: !1313, size: 64, offset: 9280)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1290, file: !49, line: 906, baseType: !1450, size: 64, offset: 9344)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !49, line: 906, flags: DIFlagFwdDecl)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1290, file: !49, line: 930, baseType: !431, size: 32, offset: 9408)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1290, file: !49, line: 933, baseType: !431, size: 32, offset: 9440)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1290, file: !49, line: 935, baseType: !1455, size: 64, offset: 9472)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !65, line: 103, size: 64, elements: !1456)
!1456 = !{!1457}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1455, file: !65, line: 104, baseType: !1458, size: 64)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !65, line: 101, flags: DIFlagFwdDecl)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1290, file: !49, line: 940, baseType: !849, size: 64, offset: 9536)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1290, file: !49, line: 942, baseType: !1462, size: 256, offset: 9600)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1463, line: 98, size: 256, elements: !1464)
!1463 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1464 = !{!1465, !1466, !1467}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1462, file: !1463, line: 99, baseType: !849, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1462, file: !1463, line: 100, baseType: !382, size: 128, offset: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1462, file: !1463, line: 101, baseType: !1468, size: 64, offset: 192)
!1468 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1463, line: 21, baseType: !1469)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{null, !1472}
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1287, file: !49, line: 986, baseType: !1474, offset: 10240)
!1474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !531, elements: !1475)
!1475 = !{!1476}
!1476 = !DISubrange(count: -1)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !994, file: !995, line: 882, baseType: !1286, size: 64, offset: 9792)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !994, file: !995, line: 884, baseType: !120, size: 32, offset: 9856)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !994, file: !995, line: 885, baseType: !120, size: 32, offset: 9888)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !994, file: !995, line: 886, baseType: !120, size: 32, offset: 9920)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !994, file: !995, line: 888, baseType: !120, size: 32, offset: 9952)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !994, file: !995, line: 890, baseType: !531, size: 64, offset: 9984)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !994, file: !995, line: 893, baseType: !18, size: 32, offset: 10048)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !994, file: !995, line: 896, baseType: !18, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !994, file: !995, line: 897, baseType: !18, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !994, file: !995, line: 898, baseType: !18, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !994, file: !995, line: 899, baseType: !18, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !994, file: !995, line: 919, baseType: !18, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !994, file: !995, line: 922, baseType: !18, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !994, file: !995, line: 923, baseType: !18, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !994, file: !995, line: 925, baseType: !18, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !994, file: !995, line: 939, baseType: !18, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !994, file: !995, line: 941, baseType: !18, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !994, file: !995, line: 944, baseType: !18, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !994, file: !995, line: 956, baseType: !18, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !994, file: !995, line: 962, baseType: !18, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !994, file: !995, line: 966, baseType: !18, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !994, file: !995, line: 969, baseType: !531, size: 64, offset: 10176)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !994, file: !995, line: 971, baseType: !1500, size: 448, offset: 10240)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !35, line: 25, size: 448, elements: !1501)
!1501 = !{!1502, !1503, !1508}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1500, file: !35, line: 26, baseType: !531, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1500, file: !35, line: 27, baseType: !1504, size: 64, offset: 64)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{!517, !1507}
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, scope: !1500, file: !35, line: 28, baseType: !1509, size: 320, offset: 128)
!1509 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1500, file: !35, line: 28, size: 320, elements: !1510)
!1510 = !{!1511, !1521, !1546}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1509, file: !35, line: 37, baseType: !1512, size: 320)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1509, file: !35, line: 30, size: 320, elements: !1513)
!1513 = !{!1514, !1516, !1517, !1518, !1519, !1520}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1512, file: !35, line: 31, baseType: !1515, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1512, file: !35, line: 32, baseType: !630, size: 32, offset: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1512, file: !35, line: 33, baseType: !630, size: 32, offset: 96)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1512, file: !35, line: 34, baseType: !630, size: 32, offset: 128)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1512, file: !35, line: 35, baseType: !634, size: 64, offset: 192)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1512, file: !35, line: 36, baseType: !1515, size: 64, offset: 256)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1509, file: !35, line: 47, baseType: !1522, size: 192)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1509, file: !35, line: 39, size: 192, elements: !1523)
!1523 = !{!1524, !1525, !1526, !1545}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1522, file: !35, line: 40, baseType: !1157, size: 32)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1522, file: !35, line: 41, baseType: !34, size: 32, offset: 32)
!1526 = !DIDerivedType(tag: DW_TAG_member, scope: !1522, file: !35, line: 42, baseType: !1527, size: 64, offset: 64)
!1527 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1522, file: !35, line: 42, size: 64, elements: !1528)
!1528 = !{!1529, !1537}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1527, file: !35, line: 43, baseType: !1530, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1532, line: 7, size: 128, elements: !1533)
!1532 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1533 = !{!1534, !1536}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1531, file: !1532, line: 8, baseType: !1535, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !515, line: 93, baseType: !724)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1531, file: !1532, line: 9, baseType: !724, size: 64, offset: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1527, file: !35, line: 44, baseType: !1538, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1540, line: 7, size: 64, elements: !1541)
!1540 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1541 = !{!1542, !1544}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1539, file: !1540, line: 8, baseType: !1543, size: 32)
!1543 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1540, line: 5, baseType: !1387)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1539, file: !1540, line: 9, baseType: !1387, size: 32, offset: 32)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1522, file: !35, line: 46, baseType: !634, size: 64, offset: 128)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1509, file: !35, line: 55, baseType: !1547, size: 256)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1509, file: !35, line: 49, size: 256, elements: !1548)
!1548 = !{!1549, !1557, !1558, !1559, !1560}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1547, file: !35, line: 50, baseType: !1550, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1552, line: 36, size: 64, elements: !1553)
!1552 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!1553 = !{!1554, !1555, !1556}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1551, file: !1552, line: 37, baseType: !120, size: 32)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1551, file: !1552, line: 38, baseType: !1439, size: 16, offset: 32)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1551, file: !1552, line: 39, baseType: !1439, size: 16, offset: 48)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1547, file: !35, line: 51, baseType: !120, size: 32, offset: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1547, file: !35, line: 52, baseType: !120, size: 32, offset: 96)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1547, file: !35, line: 53, baseType: !531, size: 64, offset: 128)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1547, file: !35, line: 54, baseType: !531, size: 64, offset: 192)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !994, file: !995, line: 973, baseType: !1562, size: 32, offset: 10688)
!1562 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !383, line: 27, baseType: !1563)
!1563 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !515, line: 28, baseType: !120)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !994, file: !995, line: 974, baseType: !1562, size: 32, offset: 10720)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !994, file: !995, line: 978, baseType: !531, size: 64, offset: 10752)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !994, file: !995, line: 987, baseType: !993, size: 64, offset: 10816)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !994, file: !995, line: 990, baseType: !993, size: 64, offset: 10880)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !994, file: !995, line: 995, baseType: !382, size: 128, offset: 10944)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !994, file: !995, line: 996, baseType: !382, size: 128, offset: 11072)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !994, file: !995, line: 997, baseType: !993, size: 64, offset: 11200)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !994, file: !995, line: 1005, baseType: !382, size: 128, offset: 11264)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !994, file: !995, line: 1006, baseType: !382, size: 128, offset: 11392)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !994, file: !995, line: 1009, baseType: !944, size: 64, offset: 11520)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !994, file: !995, line: 1010, baseType: !1575, size: 512, offset: 11584)
!1575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !756, size: 512, elements: !5)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !994, file: !995, line: 1011, baseType: !382, size: 128, offset: 12096)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !994, file: !995, line: 1012, baseType: !382, size: 128, offset: 12224)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !994, file: !995, line: 1014, baseType: !1579, size: 64, offset: 12352)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1581, line: 26, size: 256, elements: !1582)
!1581 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1582 = !{!1583, !1584}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1580, file: !1581, line: 27, baseType: !18, size: 32)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1580, file: !1581, line: 28, baseType: !1585, size: 192, offset: 64)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1586, line: 43, size: 192, elements: !1587)
!1586 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1587 = !{!1588, !1589}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1585, file: !1586, line: 44, baseType: !858, size: 32)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1585, file: !1586, line: 45, baseType: !382, size: 128, offset: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !994, file: !995, line: 1017, baseType: !827, size: 64, offset: 12416)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !994, file: !995, line: 1020, baseType: !827, size: 64, offset: 12480)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !994, file: !995, line: 1023, baseType: !376, size: 64, offset: 12544)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !994, file: !995, line: 1025, baseType: !634, size: 64, offset: 12608)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !994, file: !995, line: 1026, baseType: !634, size: 64, offset: 12672)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !994, file: !995, line: 1031, baseType: !634, size: 64, offset: 12736)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !994, file: !995, line: 1032, baseType: !1597, size: 192, offset: 12800)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !995, line: 324, size: 192, elements: !1598)
!1598 = !{!1599, !1600, !1601}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1597, file: !995, line: 326, baseType: !634, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1597, file: !995, line: 327, baseType: !634, size: 64, offset: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1597, file: !995, line: 328, baseType: !858, size: 32, offset: 128)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !994, file: !995, line: 1041, baseType: !531, size: 64, offset: 12992)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !994, file: !995, line: 1042, baseType: !531, size: 64, offset: 13056)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !994, file: !995, line: 1045, baseType: !634, size: 64, offset: 13120)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !994, file: !995, line: 1048, baseType: !634, size: 64, offset: 13184)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !994, file: !995, line: 1051, baseType: !531, size: 64, offset: 13248)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !994, file: !995, line: 1052, baseType: !531, size: 64, offset: 13312)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !994, file: !995, line: 1055, baseType: !1609, size: 640, offset: 13376)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1610, line: 132, size: 640, elements: !1611)
!1610 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1611 = !{!1612, !1618, !1619}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1609, file: !1610, line: 133, baseType: !1613, size: 576)
!1613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1614, size: 576, elements: !482)
!1614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1610, line: 117, size: 192, elements: !1615)
!1615 = !{!1616, !1617}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1614, file: !1610, line: 118, baseType: !634, size: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1614, file: !1610, line: 119, baseType: !1166, size: 128, offset: 64)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1609, file: !1610, line: 134, baseType: !18, size: 32, offset: 576)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1609, file: !1610, line: 135, baseType: !18, size: 32, offset: 608)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !994, file: !995, line: 1058, baseType: !1621, size: 448, offset: 14016)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1610, line: 144, size: 448, elements: !1622)
!1622 = !{!1623, !1624, !1625}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1621, file: !1610, line: 145, baseType: !903, size: 128, align: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1621, file: !1610, line: 146, baseType: !845, size: 256, offset: 128)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1621, file: !1610, line: 147, baseType: !18, size: 32, offset: 384)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !994, file: !995, line: 1064, baseType: !1627, size: 64, offset: 14464)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1629)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1630, line: 110, size: 1472, elements: !1631)
!1630 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1631 = !{!1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1648, !1649, !1650, !1651, !1652, !1653, !1765, !1766, !1767, !1768, !1769, !1792, !1793, !1797, !1805}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1629, file: !1630, line: 111, baseType: !849, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1629, file: !1630, line: 112, baseType: !567, size: 32, offset: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1629, file: !1630, line: 113, baseType: !576, size: 32, offset: 96)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1629, file: !1630, line: 114, baseType: !567, size: 32, offset: 128)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1629, file: !1630, line: 115, baseType: !576, size: 32, offset: 160)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1629, file: !1630, line: 116, baseType: !567, size: 32, offset: 192)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1629, file: !1630, line: 117, baseType: !576, size: 32, offset: 224)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1629, file: !1630, line: 118, baseType: !567, size: 32, offset: 256)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1629, file: !1630, line: 119, baseType: !576, size: 32, offset: 288)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1629, file: !1630, line: 120, baseType: !18, size: 32, offset: 320)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1629, file: !1630, line: 121, baseType: !1643, size: 64, offset: 384)
!1643 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1644, line: 24, baseType: !1645)
!1644 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1644, line: 24, size: 64, elements: !1646)
!1646 = !{!1647}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1645, file: !1644, line: 24, baseType: !634, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1629, file: !1630, line: 122, baseType: !1643, size: 64, offset: 448)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1629, file: !1630, line: 123, baseType: !1643, size: 64, offset: 512)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1629, file: !1630, line: 124, baseType: !1643, size: 64, offset: 576)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1629, file: !1630, line: 125, baseType: !1643, size: 64, offset: 640)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1629, file: !1630, line: 127, baseType: !443, size: 8, offset: 704)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1629, file: !1630, line: 129, baseType: !1654, size: 64, offset: 768)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1656, line: 195, size: 1728, elements: !1657)
!1656 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1657 = !{!1658, !1659, !1662, !1667, !1668, !1671, !1672, !1679, !1680, !1681, !1682, !1685, !1686, !1687, !1688, !1689, !1729, !1750}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1655, file: !1656, line: 196, baseType: !948, size: 32)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1655, file: !1656, line: 197, baseType: !1660, size: 32, offset: 32)
!1660 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1656, line: 28, baseType: !1661)
!1661 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !383, line: 104, baseType: !1387)
!1662 = !DIDerivedType(tag: DW_TAG_member, scope: !1655, file: !1656, line: 198, baseType: !1663, size: 192, offset: 64)
!1663 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1655, file: !1656, line: 198, size: 192, elements: !1664)
!1664 = !{!1665, !1666}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1663, file: !1656, line: 199, baseType: !382, size: 128)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1663, file: !1656, line: 200, baseType: !1042, size: 192, align: 64)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1655, file: !1656, line: 205, baseType: !1341, size: 320, offset: 256)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1655, file: !1656, line: 206, baseType: !1669, size: 64, offset: 576)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1656, line: 206, flags: DIFlagFwdDecl)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1655, file: !1656, line: 207, baseType: !376, size: 64, offset: 640)
!1672 = !DIDerivedType(tag: DW_TAG_member, scope: !1655, file: !1656, line: 208, baseType: !1673, size: 64, offset: 704)
!1673 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1655, file: !1656, line: 208, size: 64, elements: !1674)
!1674 = !{!1675, !1678}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1673, file: !1656, line: 209, baseType: !1676, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1677, line: 8, baseType: !856)
!1677 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1673, file: !1656, line: 210, baseType: !1676, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1655, file: !1656, line: 212, baseType: !1676, size: 64, offset: 768)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1655, file: !1656, line: 213, baseType: !567, size: 32, offset: 832)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1655, file: !1656, line: 214, baseType: !576, size: 32, offset: 864)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1655, file: !1656, line: 215, baseType: !1683, size: 32, offset: 896)
!1683 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1656, line: 31, baseType: !1684)
!1684 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !383, line: 110, baseType: !630)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1655, file: !1656, line: 216, baseType: !451, size: 16, offset: 928)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1655, file: !1656, line: 217, baseType: !451, size: 16, offset: 944)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1655, file: !1656, line: 221, baseType: !1439, size: 16, offset: 960)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1655, file: !1656, line: 228, baseType: !531, size: 64, offset: 1024)
!1689 = !DIDerivedType(tag: DW_TAG_member, scope: !1655, file: !1656, line: 245, baseType: !1690, size: 320, offset: 1088)
!1690 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1655, file: !1656, line: 245, size: 320, elements: !1691)
!1691 = !{!1692, !1721}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1690, file: !1656, line: 246, baseType: !1693, size: 320)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1656, line: 114, size: 320, elements: !1694)
!1694 = !{!1695, !1696, !1708, !1711, !1720}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1693, file: !1656, line: 116, baseType: !531, size: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, scope: !1693, file: !1656, line: 117, baseType: !1697, size: 64, offset: 64)
!1697 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1693, file: !1656, line: 117, size: 64, elements: !1698)
!1698 = !{!1699, !1707}
!1699 = !DIDerivedType(tag: DW_TAG_member, scope: !1697, file: !1656, line: 118, baseType: !1700, size: 64)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1697, file: !1656, line: 118, size: 64, elements: !1701)
!1701 = !{!1702, !1703}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1700, file: !1656, line: 120, baseType: !449, size: 16)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1700, file: !1656, line: 121, baseType: !1704, size: 48, offset: 16)
!1704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !1705)
!1705 = !{!1706}
!1706 = !DISubrange(count: 6)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1697, file: !1656, line: 127, baseType: !531, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1693, file: !1656, line: 129, baseType: !1709, size: 64, offset: 128)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1656, line: 102, flags: DIFlagFwdDecl)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1693, file: !1656, line: 130, baseType: !1712, size: 64, offset: 192)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1656, line: 108, size: 192, elements: !1714)
!1714 = !{!1715, !1716, !1717}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1713, file: !1656, line: 109, baseType: !903, size: 128, align: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1713, file: !1656, line: 110, baseType: !948, size: 32, offset: 128)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1713, file: !1656, line: 111, baseType: !1718, size: 8, offset: 160)
!1718 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !383, line: 35, baseType: !1719)
!1719 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1693, file: !1656, line: 131, baseType: !400, size: 64, offset: 256)
!1721 = !DIDerivedType(tag: DW_TAG_member, scope: !1690, file: !1656, line: 247, baseType: !1722, size: 320)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1690, file: !1656, line: 247, size: 320, elements: !1723)
!1723 = !{!1724, !1725, !1726, !1727, !1728}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1722, file: !1656, line: 248, baseType: !531, size: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1722, file: !1656, line: 249, baseType: !531, size: 64, offset: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1722, file: !1656, line: 250, baseType: !1709, size: 64, offset: 128)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1722, file: !1656, line: 251, baseType: !1712, size: 64, offset: 192)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1722, file: !1656, line: 252, baseType: !481, size: 64, offset: 256)
!1729 = !DIDerivedType(tag: DW_TAG_member, scope: !1655, file: !1656, line: 260, baseType: !1730, size: 256, offset: 1408)
!1730 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1655, file: !1656, line: 260, size: 256, elements: !1731)
!1731 = !{!1732, !1738}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1730, file: !1656, line: 261, baseType: !1733, size: 256)
!1733 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1656, line: 134, size: 256, elements: !1734)
!1734 = !{!1735, !1736}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1733, file: !1656, line: 135, baseType: !376, size: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1733, file: !1656, line: 136, baseType: !1737, size: 256)
!1737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !376, size: 256, elements: !5)
!1738 = !DIDerivedType(tag: DW_TAG_member, scope: !1730, file: !1656, line: 262, baseType: !1739, size: 256)
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1730, file: !1656, line: 262, size: 256, elements: !1740)
!1740 = !{!1741, !1742}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1739, file: !1656, line: 264, baseType: !382, size: 128)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1739, file: !1656, line: 265, baseType: !1743, size: 128, offset: 128)
!1743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1744, line: 22, size: 128, elements: !1745)
!1744 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1745 = !{!1746, !1749}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1743, file: !1744, line: 23, baseType: !1747, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1744, line: 23, flags: DIFlagFwdDecl)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1743, file: !1744, line: 24, baseType: !531, size: 64, offset: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1655, file: !1656, line: 280, baseType: !1751, size: 64, offset: 1664)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1656, line: 176, size: 192, elements: !1753)
!1753 = !{!1754, !1763, !1764}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1752, file: !1656, line: 177, baseType: !1755, size: 64)
!1755 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1656, line: 171, baseType: !1756)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{!120, !1654, !1759, !1761, !1654}
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1710)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1733)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1752, file: !1656, line: 178, baseType: !1654, size: 64, offset: 64)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1752, file: !1656, line: 179, baseType: !1709, size: 64, offset: 128)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1629, file: !1630, line: 130, baseType: !1654, size: 64, offset: 832)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1629, file: !1630, line: 131, baseType: !1654, size: 64, offset: 896)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1629, file: !1630, line: 132, baseType: !1654, size: 64, offset: 960)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1629, file: !1630, line: 135, baseType: !376, size: 64, offset: 1024)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1629, file: !1630, line: 137, baseType: !1770, size: 64, offset: 1088)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1772, line: 14, size: 1088, elements: !1773)
!1772 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1773 = !{!1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1771, file: !1772, line: 15, baseType: !948, size: 32)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1771, file: !1772, line: 17, baseType: !1379, size: 320, offset: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1771, file: !1772, line: 19, baseType: !531, size: 64, offset: 384)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1771, file: !1772, line: 20, baseType: !849, size: 64, offset: 448)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1771, file: !1772, line: 23, baseType: !756, size: 128, offset: 512)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1771, file: !1772, line: 24, baseType: !567, size: 32, offset: 640)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1771, file: !1772, line: 29, baseType: !849, size: 64, offset: 704)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1771, file: !1772, line: 36, baseType: !1782, size: 320, offset: 768)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1783, line: 15, size: 320, elements: !1784)
!1783 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1784 = !{!1785, !1786, !1787, !1788, !1789, !1790, !1791}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1782, file: !1783, line: 16, baseType: !858, size: 32)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1782, file: !1783, line: 18, baseType: !120, size: 32, offset: 32)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1782, file: !1783, line: 19, baseType: !120, size: 32, offset: 64)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1782, file: !1783, line: 20, baseType: !120, size: 32, offset: 96)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1782, file: !1783, line: 21, baseType: !120, size: 32, offset: 128)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1782, file: !1783, line: 22, baseType: !531, size: 64, offset: 192)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1782, file: !1783, line: 23, baseType: !531, size: 64, offset: 256)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1629, file: !1630, line: 138, baseType: !1446, size: 64, offset: 1152)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1629, file: !1630, line: 139, baseType: !1794, size: 64, offset: 1216)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1796, line: 16, flags: DIFlagFwdDecl)
!1796 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1629, file: !1630, line: 140, baseType: !1798, size: 64, offset: 1280)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1630, line: 25, size: 64, elements: !1800)
!1800 = !{!1801, !1802, !1803}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1799, file: !1630, line: 26, baseType: !431, size: 32)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1799, file: !1630, line: 27, baseType: !120, size: 32, offset: 32)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1799, file: !1630, line: 28, baseType: !1804, offset: 64)
!1804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, elements: !1475)
!1805 = !DIDerivedType(tag: DW_TAG_member, scope: !1629, file: !1630, line: 142, baseType: !1806, size: 128, offset: 1344)
!1806 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1629, file: !1630, line: 142, size: 128, elements: !1807)
!1807 = !{!1808, !1809}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1806, file: !1630, line: 143, baseType: !120, size: 32)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1806, file: !1630, line: 144, baseType: !903, size: 128, align: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !994, file: !995, line: 1067, baseType: !1627, size: 64, offset: 14528)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !994, file: !995, line: 1070, baseType: !1627, size: 64, offset: 14592)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !994, file: !995, line: 1074, baseType: !1654, size: 64, offset: 14656)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !994, file: !995, line: 1084, baseType: !1814, size: 128, offset: 14720)
!1814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !1815)
!1815 = !{!1816}
!1816 = !DISubrange(count: 16)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !994, file: !995, line: 1086, baseType: !1818, size: 64, offset: 14848)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !995, line: 55, flags: DIFlagFwdDecl)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !994, file: !995, line: 1089, baseType: !1821, size: 64, offset: 14912)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1822, line: 12, size: 64, elements: !1823)
!1822 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1823 = !{!1824}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1821, file: !1822, line: 13, baseType: !1825, size: 64)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1822, line: 8, flags: DIFlagFwdDecl)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !994, file: !995, line: 1090, baseType: !1828, size: 128, offset: 14976)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1829, line: 13, size: 128, elements: !1830)
!1829 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1830 = !{!1831}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1828, file: !1829, line: 14, baseType: !382, size: 128)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !994, file: !995, line: 1097, baseType: !1833, size: 64, offset: 15104)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !995, line: 50, flags: DIFlagFwdDecl)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !994, file: !995, line: 1100, baseType: !1836, size: 64, offset: 15168)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !995, line: 1100, flags: DIFlagFwdDecl)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !994, file: !995, line: 1103, baseType: !1839, size: 64, offset: 15232)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !995, line: 53, flags: DIFlagFwdDecl)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !994, file: !995, line: 1107, baseType: !1842, size: 64, offset: 15296)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1844, line: 31, size: 576, elements: !1845)
!1844 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!1845 = !{!1846, !1847, !1850, !1853, !1856, !1857, !1860, !1863, !1864}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1843, file: !1844, line: 32, baseType: !948, size: 32)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !1843, file: !1844, line: 33, baseType: !1848, size: 64, offset: 64)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !1844, line: 9, flags: DIFlagFwdDecl)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !1843, file: !1844, line: 34, baseType: !1851, size: 64, offset: 128)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !1844, line: 10, flags: DIFlagFwdDecl)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !1843, file: !1844, line: 35, baseType: !1854, size: 64, offset: 192)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !1844, line: 8, flags: DIFlagFwdDecl)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !1843, file: !1844, line: 36, baseType: !972, size: 64, offset: 256)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1843, file: !1844, line: 37, baseType: !1858, size: 64, offset: 320)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1656, line: 34, flags: DIFlagFwdDecl)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !1843, file: !1844, line: 38, baseType: !1861, size: 64, offset: 384)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !1844, line: 38, flags: DIFlagFwdDecl)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !1843, file: !1844, line: 39, baseType: !1861, size: 64, offset: 448)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !1843, file: !1844, line: 40, baseType: !1865, size: 64, offset: 512)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !1844, line: 12, flags: DIFlagFwdDecl)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !994, file: !995, line: 1110, baseType: !1868, size: 64, offset: 15360)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1870, line: 93, size: 8768, elements: !1871)
!1870 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!1871 = !{!1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1921, !1930, !1931, !1933, !1934, !1935, !1938, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1976, !1977, !1984, !1994, !1997, !1998, !2001, !2002, !2003, !2004, !2005, !2006}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1869, file: !1870, line: 94, baseType: !948, size: 32)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1869, file: !1870, line: 95, baseType: !431, size: 32, offset: 32)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1869, file: !1870, line: 96, baseType: !120, size: 32, offset: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !1869, file: !1870, line: 97, baseType: !120, size: 32, offset: 96)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1869, file: !1870, line: 98, baseType: !382, size: 128, offset: 128)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1869, file: !1870, line: 100, baseType: !959, size: 192, offset: 256)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1869, file: !1870, line: 103, baseType: !993, size: 64, offset: 448)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1869, file: !1870, line: 106, baseType: !1880, size: 192, offset: 512)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1796, line: 32, size: 192, elements: !1881)
!1881 = !{!1882, !1883}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1880, file: !1796, line: 33, baseType: !382, size: 128)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1880, file: !1796, line: 34, baseType: !1884, size: 64, offset: 128)
!1884 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1885, line: 25, baseType: !1886)
!1885 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1885, line: 23, size: 64, elements: !1887)
!1887 = !{!1888}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1886, file: !1885, line: 24, baseType: !1237, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1869, file: !1870, line: 109, baseType: !752, size: 64, offset: 704)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1869, file: !1870, line: 112, baseType: !120, size: 32, offset: 768)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1869, file: !1870, line: 114, baseType: !120, size: 32, offset: 800)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !1869, file: !1870, line: 115, baseType: !993, size: 64, offset: 832)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1869, file: !1870, line: 118, baseType: !120, size: 32, offset: 896)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1869, file: !1870, line: 119, baseType: !18, size: 32, offset: 928)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1869, file: !1870, line: 121, baseType: !1896, size: 64, offset: 960)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !1870, line: 80, size: 448, elements: !1898)
!1898 = !{!1899, !1900, !1906}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1897, file: !1870, line: 81, baseType: !431, size: 32)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1897, file: !1870, line: 82, baseType: !1901, size: 128, offset: 64)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !1870, line: 75, size: 128, elements: !1902)
!1902 = !{!1903, !1904}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1901, file: !1870, line: 76, baseType: !993, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1901, file: !1870, line: 77, baseType: !1905, size: 64, offset: 64)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1897, file: !1870, line: 83, baseType: !1580, size: 256, offset: 192)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1869, file: !1870, line: 132, baseType: !18, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1869, file: !1870, line: 133, baseType: !18, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !1869, file: !1870, line: 138, baseType: !18, size: 32, offset: 1056)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1869, file: !1870, line: 139, baseType: !382, size: 128, offset: 1088)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1869, file: !1870, line: 142, baseType: !1112, size: 512, offset: 1216)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1869, file: !1870, line: 143, baseType: !1120, size: 64, offset: 1728)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1869, file: !1870, line: 150, baseType: !1914, size: 256, offset: 1792)
!1914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1915, size: 256, elements: !1919)
!1915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1870, line: 38, size: 128, elements: !1916)
!1916 = !{!1917, !1918}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1915, file: !1870, line: 39, baseType: !634, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1915, file: !1870, line: 40, baseType: !634, size: 64, offset: 64)
!1919 = !{!1920}
!1920 = !DISubrange(count: 2)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1869, file: !1870, line: 156, baseType: !1922, size: 192, offset: 2048)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1870, line: 66, size: 192, elements: !1923)
!1923 = !{!1924}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1922, file: !1870, line: 67, baseType: !1925, size: 192)
!1925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1870, line: 47, size: 192, elements: !1926)
!1926 = !{!1927, !1928, !1929}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1925, file: !1870, line: 48, baseType: !851, size: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1925, file: !1870, line: 49, baseType: !851, size: 64, offset: 64)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1925, file: !1870, line: 50, baseType: !851, size: 64, offset: 128)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1869, file: !1870, line: 160, baseType: !1609, size: 640, offset: 2240)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1869, file: !1870, line: 163, baseType: !1932, size: 256, offset: 2880)
!1932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !944, size: 256, elements: !5)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1869, file: !1870, line: 169, baseType: !944, size: 64, offset: 3136)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1869, file: !1870, line: 172, baseType: !120, size: 32, offset: 3200)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1869, file: !1870, line: 174, baseType: !1936, size: 64, offset: 3264)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1870, line: 174, flags: DIFlagFwdDecl)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1869, file: !1870, line: 185, baseType: !1939, size: 64, offset: 3328)
!1939 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !603, line: 860, baseType: !1940)
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !603, line: 853, size: 64, elements: !1941)
!1941 = !{!1942, !1943}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1940, file: !603, line: 858, baseType: !602, size: 32)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1940, file: !603, line: 859, baseType: !411, size: 32, offset: 32)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1869, file: !1870, line: 186, baseType: !634, size: 64, offset: 3392)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1869, file: !1870, line: 186, baseType: !634, size: 64, offset: 3456)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1869, file: !1870, line: 186, baseType: !634, size: 64, offset: 3520)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1869, file: !1870, line: 186, baseType: !634, size: 64, offset: 3584)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1869, file: !1870, line: 187, baseType: !634, size: 64, offset: 3648)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1869, file: !1870, line: 188, baseType: !634, size: 64, offset: 3712)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1869, file: !1870, line: 189, baseType: !1597, size: 192, offset: 3776)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1869, file: !1870, line: 190, baseType: !531, size: 64, offset: 3968)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1869, file: !1870, line: 190, baseType: !531, size: 64, offset: 4032)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1869, file: !1870, line: 190, baseType: !531, size: 64, offset: 4096)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1869, file: !1870, line: 190, baseType: !531, size: 64, offset: 4160)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1869, file: !1870, line: 191, baseType: !531, size: 64, offset: 4224)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1869, file: !1870, line: 191, baseType: !531, size: 64, offset: 4288)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1869, file: !1870, line: 191, baseType: !531, size: 64, offset: 4352)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1869, file: !1870, line: 191, baseType: !531, size: 64, offset: 4416)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1869, file: !1870, line: 192, baseType: !531, size: 64, offset: 4480)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1869, file: !1870, line: 192, baseType: !531, size: 64, offset: 4544)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1869, file: !1870, line: 192, baseType: !531, size: 64, offset: 4608)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1869, file: !1870, line: 192, baseType: !531, size: 64, offset: 4672)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1869, file: !1870, line: 193, baseType: !531, size: 64, offset: 4736)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1869, file: !1870, line: 193, baseType: !531, size: 64, offset: 4800)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1869, file: !1870, line: 194, baseType: !1966, size: 448, offset: 4864)
!1966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1967, line: 12, size: 448, elements: !1968)
!1967 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!1968 = !{!1969, !1970, !1971, !1972, !1973, !1974, !1975}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !1966, file: !1967, line: 15, baseType: !634, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !1966, file: !1967, line: 17, baseType: !634, size: 64, offset: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !1966, file: !1967, line: 19, baseType: !634, size: 64, offset: 128)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !1966, file: !1967, line: 21, baseType: !634, size: 64, offset: 192)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !1966, file: !1967, line: 29, baseType: !634, size: 64, offset: 256)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !1966, file: !1967, line: 35, baseType: !634, size: 64, offset: 320)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !1966, file: !1967, line: 44, baseType: !634, size: 64, offset: 384)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1869, file: !1870, line: 202, baseType: !636, size: 64, offset: 5312)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1869, file: !1870, line: 213, baseType: !1978, size: 2048, offset: 5376)
!1978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1979, size: 2048, elements: !1815)
!1979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1980, line: 43, size: 128, elements: !1981)
!1980 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!1981 = !{!1982, !1983}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1979, file: !1980, line: 44, baseType: !530, size: 64)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1979, file: !1980, line: 45, baseType: !530, size: 64, offset: 64)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !1869, file: !1870, line: 216, baseType: !1985, size: 448, offset: 7424)
!1985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !1870, line: 30, size: 448, elements: !1986)
!1986 = !{!1987, !1988, !1989, !1990, !1991, !1992, !1993}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !1985, file: !1870, line: 31, baseType: !120, size: 32)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !1985, file: !1870, line: 32, baseType: !517, size: 64, offset: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !1985, file: !1870, line: 33, baseType: !531, size: 64, offset: 128)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !1985, file: !1870, line: 34, baseType: !634, size: 64, offset: 192)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !1985, file: !1870, line: 34, baseType: !634, size: 64, offset: 256)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !1985, file: !1870, line: 35, baseType: !531, size: 64, offset: 320)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !1985, file: !1870, line: 35, baseType: !531, size: 64, offset: 384)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1869, file: !1870, line: 219, baseType: !1995, size: 64, offset: 7872)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !1870, line: 219, flags: DIFlagFwdDecl)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !1869, file: !1870, line: 222, baseType: !18, size: 32, offset: 7936)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !1869, file: !1870, line: 223, baseType: !1999, size: 64, offset: 8000)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !1870, line: 223, flags: DIFlagFwdDecl)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1869, file: !1870, line: 230, baseType: !1718, size: 8, offset: 8064)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1869, file: !1870, line: 231, baseType: !1439, size: 16, offset: 8080)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1869, file: !1870, line: 232, baseType: !1439, size: 16, offset: 8096)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1869, file: !1870, line: 234, baseType: !1286, size: 64, offset: 8128)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1869, file: !1870, line: 237, baseType: !845, size: 256, offset: 8192)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !1869, file: !1870, line: 243, baseType: !1341, size: 320, offset: 8448)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !994, file: !995, line: 1111, baseType: !2008, size: 64, offset: 15424)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1870, line: 20, size: 16640, elements: !2010)
!2010 = !{!2011, !2012, !2013, !2014}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2009, file: !1870, line: 21, baseType: !411, size: 32)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2009, file: !1870, line: 22, baseType: !948, size: 32, offset: 32)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2009, file: !1870, line: 23, baseType: !959, size: 192, offset: 64)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2009, file: !1870, line: 24, baseType: !2015, size: 16384, offset: 256)
!2015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2016, size: 16384, elements: !486)
!2016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1796, line: 51, size: 256, elements: !2017)
!2017 = !{!2018}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2016, file: !1796, line: 52, baseType: !2019, size: 256)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1796, line: 37, size: 256, elements: !2020)
!2020 = !{!2021, !2028, !2029, !2035}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2019, file: !1796, line: 39, baseType: !2022, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2023, line: 83, baseType: !2024)
!2023 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2023, line: 82, baseType: !2026)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{null, !120}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2019, file: !1796, line: 40, baseType: !531, size: 64, offset: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2019, file: !1796, line: 46, baseType: !2030, size: 64, offset: 128)
!2030 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2023, line: 86, baseType: !2031)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2023, line: 85, baseType: !2033)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{null}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2019, file: !1796, line: 48, baseType: !1884, size: 64, offset: 192)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !994, file: !995, line: 1112, baseType: !1884, size: 64, offset: 15488)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !994, file: !995, line: 1113, baseType: !1884, size: 64, offset: 15552)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !994, file: !995, line: 1115, baseType: !1884, size: 64, offset: 15616)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !994, file: !995, line: 1116, baseType: !1880, size: 192, offset: 15680)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !994, file: !995, line: 1117, baseType: !531, size: 64, offset: 15872)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !994, file: !995, line: 1118, baseType: !528, size: 64, offset: 15936)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !994, file: !995, line: 1119, baseType: !18, size: 32, offset: 16000)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !994, file: !995, line: 1121, baseType: !906, size: 64, offset: 16064)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !994, file: !995, line: 1125, baseType: !2045, size: 64, offset: 16128)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !995, line: 43, flags: DIFlagFwdDecl)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !994, file: !995, line: 1127, baseType: !567, size: 32, offset: 16192)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !994, file: !995, line: 1128, baseType: !18, size: 32, offset: 16224)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !994, file: !995, line: 1130, baseType: !2050, size: 128, offset: 16256)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2051, line: 37, size: 128, elements: !2052)
!2051 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2052 = !{!2053, !2054, !2055}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2050, file: !2051, line: 38, baseType: !120, size: 32)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2050, file: !2051, line: 39, baseType: !431, size: 32, offset: 32)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2050, file: !2051, line: 40, baseType: !2056, size: 64, offset: 64)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2051, line: 24, flags: DIFlagFwdDecl)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !994, file: !995, line: 1131, baseType: !2059, size: 256, offset: 16384)
!2059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2060, line: 12, size: 256, elements: !2061)
!2060 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2061 = !{!2062, !2063, !2064, !2065}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2059, file: !2060, line: 13, baseType: !481, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2059, file: !2060, line: 14, baseType: !531, size: 64, offset: 64)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2059, file: !2060, line: 15, baseType: !531, size: 64, offset: 128)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2059, file: !2060, line: 16, baseType: !1718, size: 8, offset: 192)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !994, file: !995, line: 1134, baseType: !634, size: 64, offset: 16640)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !994, file: !995, line: 1135, baseType: !634, size: 64, offset: 16704)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !994, file: !995, line: 1138, baseType: !411, size: 32, offset: 16768)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !994, file: !995, line: 1141, baseType: !858, size: 32, offset: 16800)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !994, file: !995, line: 1143, baseType: !2071, size: 64, offset: 16832)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !995, line: 735, size: 64, elements: !2072)
!2072 = !{!2073}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2071, file: !995, line: 736, baseType: !2074, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !994, file: !995, line: 1147, baseType: !1169, size: 128, offset: 16896)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !994, file: !995, line: 1149, baseType: !993, size: 64, offset: 17024)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !994, file: !995, line: 1151, baseType: !2078, size: 64, offset: 17088)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !995, line: 1151, flags: DIFlagFwdDecl)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !994, file: !995, line: 1188, baseType: !376, size: 64, offset: 17152)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !994, file: !995, line: 1191, baseType: !2082, size: 64, offset: 17216)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !995, line: 44, flags: DIFlagFwdDecl)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !994, file: !995, line: 1194, baseType: !2085, size: 64, offset: 17280)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !995, line: 45, flags: DIFlagFwdDecl)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !994, file: !995, line: 1197, baseType: !2088, size: 64, offset: 17344)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !995, line: 61, flags: DIFlagFwdDecl)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !994, file: !995, line: 1199, baseType: !2091, size: 64, offset: 17408)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2093, line: 99, size: 128, elements: !2094)
!2093 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2094 = !{!2095, !2096, !2097}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2092, file: !2093, line: 100, baseType: !849, size: 64)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2092, file: !2093, line: 101, baseType: !431, size: 32, offset: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2092, file: !2093, line: 103, baseType: !451, size: 16, offset: 96)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !994, file: !995, line: 1202, baseType: !2099, size: 64, offset: 17472)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !995, line: 48, flags: DIFlagFwdDecl)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !994, file: !995, line: 1205, baseType: !531, size: 64, offset: 17536)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !994, file: !995, line: 1206, baseType: !2103, size: 64, offset: 17600)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1796, line: 14, baseType: !2105)
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1796, line: 12, size: 384, elements: !2106)
!2106 = !{!2107}
!2107 = !DIDerivedType(tag: DW_TAG_member, scope: !2105, file: !1796, line: 13, baseType: !2108, size: 384)
!2108 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2105, file: !1796, line: 13, size: 384, elements: !2109)
!2109 = !{!2110, !2111, !2112, !2113}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2108, file: !1796, line: 13, baseType: !120, size: 32)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2108, file: !1796, line: 13, baseType: !120, size: 32, offset: 32)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2108, file: !1796, line: 13, baseType: !120, size: 32, offset: 64)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2108, file: !1796, line: 13, baseType: !2114, size: 256, offset: 128)
!2114 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2115, line: 37, size: 256, elements: !2116)
!2115 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2116 = !{!2117, !2122, !2135, !2141, !2150, !2176, !2181}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2114, file: !2115, line: 42, baseType: !2118, size: 64)
!2118 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2114, file: !2115, line: 39, size: 64, elements: !2119)
!2119 = !{!2120, !2121}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2118, file: !2115, line: 40, baseType: !1563, size: 32)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2118, file: !2115, line: 41, baseType: !573, size: 32, offset: 32)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2114, file: !2115, line: 50, baseType: !2123, size: 192)
!2123 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2114, file: !2115, line: 45, size: 192, elements: !2124)
!2124 = !{!2125, !2127, !2128, !2134}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2123, file: !2115, line: 46, baseType: !2126, size: 32)
!2126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !515, line: 95, baseType: !120)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2123, file: !2115, line: 47, baseType: !120, size: 32, offset: 32)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2123, file: !2115, line: 48, baseType: !2129, size: 64, offset: 64)
!2129 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2115, line: 11, baseType: !2130)
!2130 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2115, line: 8, size: 64, elements: !2131)
!2131 = !{!2132, !2133}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2130, file: !2115, line: 9, baseType: !120, size: 32)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2130, file: !2115, line: 10, baseType: !376, size: 64)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2123, file: !2115, line: 49, baseType: !120, size: 32, offset: 128)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2114, file: !2115, line: 57, baseType: !2136, size: 128)
!2136 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2114, file: !2115, line: 53, size: 128, elements: !2137)
!2137 = !{!2138, !2139, !2140}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2136, file: !2115, line: 54, baseType: !1563, size: 32)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2136, file: !2115, line: 55, baseType: !573, size: 32, offset: 32)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2136, file: !2115, line: 56, baseType: !2129, size: 64, offset: 64)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2114, file: !2115, line: 66, baseType: !2142, size: 256)
!2142 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2114, file: !2115, line: 60, size: 256, elements: !2143)
!2143 = !{!2144, !2145, !2146, !2147, !2149}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2142, file: !2115, line: 61, baseType: !1563, size: 32)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2142, file: !2115, line: 62, baseType: !573, size: 32, offset: 32)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2142, file: !2115, line: 63, baseType: !120, size: 32, offset: 64)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2142, file: !2115, line: 64, baseType: !2148, size: 64, offset: 128)
!2148 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !515, line: 94, baseType: !516)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2142, file: !2115, line: 65, baseType: !2148, size: 64, offset: 192)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2114, file: !2115, line: 105, baseType: !2151, size: 256)
!2151 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2114, file: !2115, line: 69, size: 256, elements: !2152)
!2152 = !{!2153, !2154}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2151, file: !2115, line: 70, baseType: !376, size: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, scope: !2151, file: !2115, line: 79, baseType: !2155, size: 192, offset: 64)
!2155 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2151, file: !2115, line: 79, size: 192, elements: !2156)
!2156 = !{!2157, !2158, !2159, !2165, !2170}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2155, file: !2115, line: 81, baseType: !120, size: 32)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2155, file: !2115, line: 86, baseType: !1439, size: 16)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2155, file: !2115, line: 92, baseType: !2160, size: 192)
!2160 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2155, file: !2115, line: 88, size: 192, elements: !2161)
!2161 = !{!2162, !2163, !2164}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2160, file: !2115, line: 89, baseType: !9, size: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2160, file: !2115, line: 90, baseType: !376, size: 64, offset: 64)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2160, file: !2115, line: 91, baseType: !376, size: 64, offset: 128)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2155, file: !2115, line: 97, baseType: !2166, size: 96)
!2166 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2155, file: !2115, line: 94, size: 96, elements: !2167)
!2167 = !{!2168, !2169}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2166, file: !2115, line: 95, baseType: !9, size: 64)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2166, file: !2115, line: 96, baseType: !631, size: 32, offset: 64)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2155, file: !2115, line: 103, baseType: !2171, size: 128)
!2171 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2155, file: !2115, line: 99, size: 128, elements: !2172)
!2172 = !{!2173, !2174, !2175}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2171, file: !2115, line: 100, baseType: !531, size: 64)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2171, file: !2115, line: 101, baseType: !631, size: 32, offset: 64)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2171, file: !2115, line: 102, baseType: !631, size: 32, offset: 96)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2114, file: !2115, line: 111, baseType: !2177, size: 128)
!2177 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2114, file: !2115, line: 108, size: 128, elements: !2178)
!2178 = !{!2179, !2180}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2177, file: !2115, line: 109, baseType: !517, size: 64)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2177, file: !2115, line: 110, baseType: !120, size: 32, offset: 64)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2114, file: !2115, line: 118, baseType: !2182, size: 128)
!2182 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2114, file: !2115, line: 114, size: 128, elements: !2183)
!2183 = !{!2184, !2185, !2186}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2182, file: !2115, line: 115, baseType: !376, size: 64)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2182, file: !2115, line: 116, baseType: !120, size: 32, offset: 64)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2182, file: !2115, line: 117, baseType: !18, size: 32, offset: 96)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !994, file: !995, line: 1208, baseType: !1966, size: 448, offset: 17664)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !994, file: !995, line: 1215, baseType: !634, size: 64, offset: 18112)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !994, file: !995, line: 1217, baseType: !634, size: 64, offset: 18176)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !994, file: !995, line: 1219, baseType: !634, size: 64, offset: 18240)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !994, file: !995, line: 1223, baseType: !2192, size: 64, offset: 18304)
!2192 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2193, line: 99, baseType: !2194)
!2193 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2193, line: 99, size: 64, elements: !2195)
!2195 = !{!2196}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2194, file: !2193, line: 99, baseType: !1237, size: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !994, file: !995, line: 1225, baseType: !602, size: 32, offset: 18368)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !994, file: !995, line: 1226, baseType: !120, size: 32, offset: 18400)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !994, file: !995, line: 1227, baseType: !120, size: 32, offset: 18432)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !994, file: !995, line: 1231, baseType: !2201, size: 64, offset: 18496)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !995, line: 1231, flags: DIFlagFwdDecl)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !994, file: !995, line: 1233, baseType: !382, size: 128, offset: 18560)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !994, file: !995, line: 1240, baseType: !2205, size: 64, offset: 18688)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !995, line: 62, flags: DIFlagFwdDecl)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !994, file: !995, line: 1242, baseType: !2208, size: 64, offset: 18752)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !995, line: 1242, flags: DIFlagFwdDecl)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !994, file: !995, line: 1244, baseType: !382, size: 128, offset: 18816)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !994, file: !995, line: 1245, baseType: !2212, size: 64, offset: 18944)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !995, line: 51, flags: DIFlagFwdDecl)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !994, file: !995, line: 1246, baseType: !845, size: 256, offset: 19008)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !994, file: !995, line: 1247, baseType: !18, size: 32, offset: 19264)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !994, file: !995, line: 1250, baseType: !2217, size: 64, offset: 19328)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !995, line: 57, flags: DIFlagFwdDecl)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !994, file: !995, line: 1251, baseType: !845, size: 256, offset: 19392)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !994, file: !995, line: 1252, baseType: !382, size: 128, offset: 19648)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !994, file: !995, line: 1259, baseType: !2222, size: 64, offset: 19776)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !49, line: 717, flags: DIFlagFwdDecl)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !994, file: !995, line: 1260, baseType: !1439, size: 16, offset: 19840)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !994, file: !995, line: 1261, baseType: !1439, size: 16, offset: 19856)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !994, file: !995, line: 1314, baseType: !2227, size: 64, offset: 19904)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2229, line: 62, size: 256, align: 256, elements: !2230)
!2229 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2230 = !{!2231, !2232, !2233, !2234, !2235, !2236, !2237}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2228, file: !2229, line: 75, baseType: !631, size: 32)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2228, file: !2229, line: 90, baseType: !631, size: 32, offset: 32)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2228, file: !2229, line: 112, baseType: !635, size: 64, offset: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2228, file: !2229, line: 132, baseType: !631, size: 32, offset: 128)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2228, file: !2229, line: 140, baseType: !631, size: 32, offset: 160)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2228, file: !2229, line: 149, baseType: !631, size: 32, offset: 192)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2228, file: !2229, line: 154, baseType: !2238, offset: 224)
!2238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !1475)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !994, file: !995, line: 1315, baseType: !630, size: 32, offset: 19968)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !994, file: !995, line: 1316, baseType: !630, size: 32, offset: 20000)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !994, file: !995, line: 1321, baseType: !531, size: 64, offset: 20032)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !994, file: !995, line: 1325, baseType: !120, size: 32, offset: 20096)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !994, file: !995, line: 1326, baseType: !120, size: 32, offset: 20128)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !994, file: !995, line: 1327, baseType: !120, size: 32, offset: 20160)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !994, file: !995, line: 1328, baseType: !120, size: 32, offset: 20192)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !994, file: !995, line: 1329, baseType: !903, size: 128, align: 64, offset: 20224)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !994, file: !995, line: 1332, baseType: !2248, size: 128, offset: 20352)
!2248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2249, line: 51, size: 128, elements: !2250)
!2249 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2250 = !{!2251, !2256, !2257}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2248, file: !2249, line: 60, baseType: !2252, size: 64)
!2252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2253, line: 7, size: 64, elements: !2254)
!2253 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2254 = !{!2255}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2252, file: !2253, line: 12, baseType: !1234, size: 64)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2248, file: !2249, line: 63, baseType: !1718, size: 8, offset: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2248, file: !2249, line: 70, baseType: !1718, size: 8, offset: 72)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !994, file: !995, line: 1335, baseType: !2259, size: 64, offset: 20480)
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !995, line: 59, flags: DIFlagFwdDecl)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !994, file: !995, line: 1337, baseType: !2262, size: 128, offset: 20544)
!2262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2249, line: 39, size: 128, elements: !2263)
!2263 = !{!2264, !2548, !2549}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2262, file: !2249, line: 40, baseType: !2265, size: 64)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !49, line: 74, size: 512, align: 128, elements: !2267)
!2267 = !{!2268, !2269, !2542, !2547}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2266, file: !49, line: 75, baseType: !531, size: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, scope: !2266, file: !49, line: 83, baseType: !2270, size: 320, offset: 64)
!2270 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2266, file: !49, line: 83, size: 320, elements: !2271)
!2271 = !{!2272, !2293, !2307, !2311, !2541}
!2272 = !DIDerivedType(tag: DW_TAG_member, scope: !2270, file: !49, line: 84, baseType: !2273, size: 320)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2270, file: !49, line: 84, size: 320, elements: !2274)
!2274 = !{!2275, !2286, !2287, !2292}
!2275 = !DIDerivedType(tag: DW_TAG_member, scope: !2273, file: !49, line: 90, baseType: !2276, size: 128)
!2276 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2273, file: !49, line: 90, size: 128, elements: !2277)
!2277 = !{!2278, !2279, !2284, !2285}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2276, file: !49, line: 91, baseType: !382, size: 128)
!2279 = !DIDerivedType(tag: DW_TAG_member, scope: !2276, file: !49, line: 94, baseType: !2280, size: 128)
!2280 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2276, file: !49, line: 94, size: 128, elements: !2281)
!2281 = !{!2282, !2283}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2280, file: !49, line: 96, baseType: !376, size: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2280, file: !49, line: 98, baseType: !18, size: 32, offset: 64)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2276, file: !49, line: 102, baseType: !382, size: 128)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2276, file: !49, line: 103, baseType: !382, size: 128)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2273, file: !49, line: 106, baseType: !557, size: 64, offset: 128)
!2287 = !DIDerivedType(tag: DW_TAG_member, scope: !2273, file: !49, line: 107, baseType: !2288, size: 64, offset: 192)
!2288 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2273, file: !49, line: 107, size: 64, elements: !2289)
!2289 = !{!2290, !2291}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2288, file: !49, line: 108, baseType: !531, size: 64)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2288, file: !49, line: 109, baseType: !531, size: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2273, file: !49, line: 117, baseType: !531, size: 64, offset: 256)
!2293 = !DIDerivedType(tag: DW_TAG_member, scope: !2270, file: !49, line: 119, baseType: !2294, size: 320)
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2270, file: !49, line: 119, size: 320, elements: !2295)
!2295 = !{!2296, !2297, !2300, !2301, !2302}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2294, file: !49, line: 124, baseType: !531, size: 64)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2294, file: !49, line: 125, baseType: !2298, size: 64, offset: 64)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !49, line: 125, flags: DIFlagFwdDecl)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2294, file: !49, line: 126, baseType: !531, size: 64, offset: 128)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2294, file: !49, line: 127, baseType: !531, size: 64, offset: 192)
!2302 = !DIDerivedType(tag: DW_TAG_member, scope: !2294, file: !49, line: 128, baseType: !2303, size: 64, offset: 256)
!2303 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2294, file: !49, line: 128, size: 64, elements: !2304)
!2304 = !{!2305, !2306}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2303, file: !49, line: 133, baseType: !531, size: 64)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2303, file: !49, line: 138, baseType: !849, size: 64)
!2307 = !DIDerivedType(tag: DW_TAG_member, scope: !2270, file: !49, line: 141, baseType: !2308, size: 64)
!2308 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2270, file: !49, line: 141, size: 64, elements: !2309)
!2309 = !{!2310}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2308, file: !49, line: 142, baseType: !531, size: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, scope: !2270, file: !49, line: 144, baseType: !2312, size: 128)
!2312 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2270, file: !49, line: 144, size: 128, elements: !2313)
!2313 = !{!2314, !2540}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2312, file: !49, line: 146, baseType: !2315, size: 64)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !41, line: 126, size: 1216, elements: !2317)
!2317 = !{!2318, !2328, !2349, !2350, !2351, !2352, !2353, !2522, !2523, !2524}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2316, file: !41, line: 127, baseType: !2319, size: 384)
!2319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !41, line: 21, size: 384, elements: !2320)
!2320 = !{!2321, !2322, !2324, !2325, !2326, !2327}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2319, file: !41, line: 22, baseType: !531, size: 64)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2319, file: !41, line: 23, baseType: !2323, size: 64, offset: 64)
!2323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !531)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2319, file: !41, line: 24, baseType: !2323, size: 64, offset: 128)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2319, file: !41, line: 25, baseType: !531, size: 64, offset: 192)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2319, file: !41, line: 26, baseType: !531, size: 64, offset: 256)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2319, file: !41, line: 27, baseType: !531, size: 64, offset: 320)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2316, file: !41, line: 128, baseType: !2329, size: 128, offset: 384)
!2329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2330, line: 105, size: 128, elements: !2331)
!2330 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2331 = !{!2332, !2333}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2329, file: !2330, line: 110, baseType: !531, size: 64)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2329, file: !2330, line: 118, baseType: !2334, size: 64, offset: 64)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2330, line: 95, size: 448, elements: !2336)
!2336 = !{!2337, !2338, !2344, !2345, !2346, !2347, !2348}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2335, file: !2330, line: 96, baseType: !849, size: 64)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2335, file: !2330, line: 97, baseType: !2339, size: 64, offset: 64)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2330, line: 60, baseType: !2341)
!2341 = !DISubroutineType(types: !2342)
!2342 = !{null, !2343}
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2335, file: !2330, line: 98, baseType: !2339, size: 64, offset: 128)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2335, file: !2330, line: 99, baseType: !1718, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2335, file: !2330, line: 100, baseType: !1718, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2335, file: !2330, line: 101, baseType: !903, size: 128, align: 64, offset: 256)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2335, file: !2330, line: 102, baseType: !2343, size: 64, offset: 384)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2316, file: !41, line: 129, baseType: !1580, size: 256, offset: 512)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2316, file: !41, line: 130, baseType: !40, size: 32, offset: 768)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2316, file: !41, line: 131, baseType: !18, size: 32, offset: 800)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2316, file: !41, line: 132, baseType: !531, size: 64, offset: 832)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2316, file: !41, line: 133, baseType: !2354, size: 64, offset: 896)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2356)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !41, line: 77, size: 192, elements: !2357)
!2357 = !{!2358, !2362, !2518}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2356, file: !41, line: 83, baseType: !2359, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{null, !2265}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2356, file: !41, line: 89, baseType: !2363, size: 64, offset: 64)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{!2366, !2367}
!2366 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !49, line: 1184, baseType: !18)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2369, line: 512, size: 896, elements: !2370)
!2369 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2370 = !{!2371, !2485, !2486, !2493, !2500, !2510, !2511, !2512, !2514, !2516}
!2371 = !DIDerivedType(tag: DW_TAG_member, scope: !2368, file: !2369, line: 513, baseType: !2372, size: 320)
!2372 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2368, file: !2369, line: 513, size: 320, elements: !2373)
!2373 = !{!2374, !2481, !2482, !2483, !2484}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2372, file: !2369, line: 514, baseType: !2375, size: 64)
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !49, line: 625, size: 1344, elements: !2377)
!2377 = !{!2378, !2387, !2388, !2394, !2401, !2402, !2407, !2408, !2413, !2414, !2417, !2474, !2475, !2476, !2477, !2478, !2479}
!2378 = !DIDerivedType(tag: DW_TAG_member, scope: !2376, file: !49, line: 628, baseType: !2379, size: 128)
!2379 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2376, file: !49, line: 628, size: 128, elements: !2380)
!2380 = !{!2381, !2386}
!2381 = !DIDerivedType(tag: DW_TAG_member, scope: !2379, file: !49, line: 629, baseType: !2382, size: 128)
!2382 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2379, file: !49, line: 629, size: 128, elements: !2383)
!2383 = !{!2384, !2385}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2382, file: !49, line: 631, baseType: !531, size: 64)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2382, file: !49, line: 632, baseType: !531, size: 64, offset: 64)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2379, file: !49, line: 635, baseType: !903, size: 128, align: 64)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2376, file: !49, line: 639, baseType: !1286, size: 64, offset: 128)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2376, file: !49, line: 640, baseType: !2389, size: 64, offset: 192)
!2389 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1322, line: 297, baseType: !2390)
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1322, line: 297, size: 64, elements: !2391)
!2391 = !{!2392}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2390, file: !1322, line: 297, baseType: !2393, size: 64)
!2393 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1327, line: 19, baseType: !531)
!2394 = !DIDerivedType(tag: DW_TAG_member, scope: !2376, file: !49, line: 646, baseType: !2395, size: 64, offset: 256)
!2395 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2376, file: !49, line: 646, size: 64, elements: !2396)
!2396 = !{!2397, !2400}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2395, file: !49, line: 647, baseType: !2398, size: 64)
!2398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2399)
!2399 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !49, line: 542, baseType: !531)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2395, file: !49, line: 648, baseType: !2399, size: 64)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2376, file: !49, line: 666, baseType: !120, size: 32, offset: 320)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2376, file: !49, line: 667, baseType: !2403, size: 64, offset: 384)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !49, line: 579, size: 320, elements: !2405)
!2405 = !{!2406}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2404, file: !49, line: 580, baseType: !1341, size: 320)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2376, file: !49, line: 670, baseType: !1718, size: 8, offset: 448)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2376, file: !49, line: 681, baseType: !2409, size: 256, offset: 512)
!2409 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2376, file: !49, line: 678, size: 256, elements: !2410)
!2410 = !{!2411, !2412}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2409, file: !49, line: 679, baseType: !1042, size: 192, align: 64)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2409, file: !49, line: 680, baseType: !531, size: 64, offset: 192)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2376, file: !49, line: 689, baseType: !382, size: 128, offset: 768)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2376, file: !49, line: 691, baseType: !2415, size: 64, offset: 896)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !49, line: 691, flags: DIFlagFwdDecl)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2376, file: !49, line: 694, baseType: !2418, size: 64, offset: 960)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2420)
!2420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2369, line: 563, size: 1024, elements: !2421)
!2421 = !{!2422, !2426, !2427, !2431, !2435, !2439, !2440, !2444, !2448, !2452, !2453, !2454, !2458, !2462, !2466, !2470}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2420, file: !2369, line: 564, baseType: !2423, size: 64)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{null, !2375}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2420, file: !2369, line: 569, baseType: !2423, size: 64, offset: 64)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2420, file: !2369, line: 571, baseType: !2428, size: 64, offset: 128)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{!120, !2375, !531}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2420, file: !2369, line: 572, baseType: !2432, size: 64, offset: 192)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = !DISubroutineType(types: !2434)
!2434 = !{!120, !2375}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2420, file: !2369, line: 578, baseType: !2436, size: 64, offset: 256)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = !DISubroutineType(types: !2438)
!2438 = !{!120, !2375, !531, !531, !531}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2420, file: !2369, line: 580, baseType: !2363, size: 64, offset: 320)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2420, file: !2369, line: 581, baseType: !2441, size: 64, offset: 384)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{!2366, !2367, !18}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2420, file: !2369, line: 582, baseType: !2445, size: 64, offset: 448)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = !DISubroutineType(types: !2447)
!2447 = !{!2366, !2367, !531, !531}
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2420, file: !2369, line: 584, baseType: !2449, size: 64, offset: 512)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2450 = !DISubroutineType(types: !2451)
!2451 = !{!531, !2375}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2420, file: !2369, line: 588, baseType: !2363, size: 64, offset: 576)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2420, file: !2369, line: 591, baseType: !2363, size: 64, offset: 640)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2420, file: !2369, line: 597, baseType: !2455, size: 64, offset: 704)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = !DISubroutineType(types: !2457)
!2457 = !{!120, !2375, !531, !376, !120, !120}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2420, file: !2369, line: 603, baseType: !2459, size: 64, offset: 768)
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2460 = !DISubroutineType(types: !2461)
!2461 = !{!400, !2375}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2420, file: !2369, line: 613, baseType: !2463, size: 64, offset: 832)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!120, !2375, !2222}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2420, file: !2369, line: 625, baseType: !2467, size: 64, offset: 896)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{!2222, !2375, !531}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2420, file: !2369, line: 633, baseType: !2471, size: 64, offset: 960)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = !DISubroutineType(types: !2473)
!2473 = !{!2265, !2375, !531}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2376, file: !49, line: 697, baseType: !531, size: 64, offset: 1024)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2376, file: !49, line: 699, baseType: !1313, size: 64, offset: 1088)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2376, file: !49, line: 700, baseType: !376, size: 64, offset: 1152)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2376, file: !49, line: 711, baseType: !849, size: 64, offset: 1216)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2376, file: !49, line: 717, baseType: !2222, size: 64, offset: 1280)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2376, file: !49, line: 722, baseType: !2480, offset: 1344)
!2480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !49, line: 570, elements: !764)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2372, file: !2369, line: 515, baseType: !986, size: 32, offset: 64)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2372, file: !2369, line: 516, baseType: !531, size: 64, offset: 128)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2372, file: !2369, line: 517, baseType: !531, size: 64, offset: 192)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2372, file: !2369, line: 518, baseType: !531, size: 64, offset: 256)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2368, file: !2369, line: 520, baseType: !48, size: 32, offset: 320)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2368, file: !2369, line: 522, baseType: !2487, size: 64, offset: 384)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1327, line: 22, baseType: !2489)
!2489 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1327, line: 22, size: 64, elements: !2490)
!2490 = !{!2491}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2489, file: !1327, line: 22, baseType: !2492, size: 64)
!2492 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1327, line: 15, baseType: !531)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2368, file: !2369, line: 524, baseType: !2494, size: 64, offset: 448)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1322, line: 372, baseType: !2496)
!2496 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1322, line: 372, size: 64, elements: !2497)
!2497 = !{!2498}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2496, file: !1322, line: 372, baseType: !2499, size: 64)
!2499 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1327, line: 16, baseType: !531)
!2500 = !DIDerivedType(tag: DW_TAG_member, scope: !2368, file: !2369, line: 527, baseType: !2501, size: 64, offset: 512)
!2501 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2368, file: !2369, line: 527, size: 64, elements: !2502)
!2502 = !{!2503, !2509}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2501, file: !2369, line: 528, baseType: !2504, size: 64)
!2504 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1327, line: 21, baseType: !2505)
!2505 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1327, line: 21, size: 64, elements: !2506)
!2506 = !{!2507}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2505, file: !1327, line: 21, baseType: !2508, size: 64)
!2508 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1327, line: 14, baseType: !531)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2501, file: !2369, line: 529, baseType: !2488, size: 64)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2368, file: !2369, line: 534, baseType: !2265, size: 64, offset: 576)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2368, file: !2369, line: 535, baseType: !2265, size: 64, offset: 640)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2368, file: !2369, line: 541, baseType: !2513, size: 64, offset: 704)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2368, file: !2369, line: 545, baseType: !2515, size: 64, offset: 768)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2368, file: !2369, line: 549, baseType: !2517, size: 64, offset: 832)
!2517 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1322, line: 520, baseType: !2265)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2356, file: !41, line: 100, baseType: !2519, size: 64, offset: 128)
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2520 = !DISubroutineType(types: !2521)
!2521 = !{!120, !2315, !531, !531, !120}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2316, file: !41, line: 134, baseType: !376, size: 64, offset: 960)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2316, file: !41, line: 135, baseType: !120, size: 32, offset: 1024)
!2524 = !DIDerivedType(tag: DW_TAG_member, scope: !2316, file: !41, line: 136, baseType: !2525, size: 128, offset: 1088)
!2525 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2316, file: !41, line: 136, size: 128, elements: !2526)
!2526 = !{!2527, !2533}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2525, file: !41, line: 137, baseType: !2528, size: 128)
!2528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2529, line: 6, size: 128, elements: !2530)
!2529 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2530 = !{!2531, !2532}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2528, file: !2529, line: 7, baseType: !634, size: 64)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2528, file: !2529, line: 8, baseType: !634, size: 64, offset: 64)
!2533 = !DIDerivedType(tag: DW_TAG_member, scope: !2525, file: !41, line: 138, baseType: !2534)
!2534 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2525, file: !41, line: 138, elements: !2535)
!2535 = !{!2536, !2538}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2534, file: !41, line: 138, baseType: !2537)
!2537 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2534, file: !41, line: 138, elements: !764)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2534, file: !41, line: 138, baseType: !2539)
!2539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2528, elements: !1475)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2312, file: !49, line: 147, baseType: !376, size: 64, offset: 64)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2270, file: !49, line: 161, baseType: !903, size: 128, align: 64)
!2542 = !DIDerivedType(tag: DW_TAG_member, scope: !2266, file: !49, line: 164, baseType: !2543, size: 32, offset: 384)
!2543 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2266, file: !49, line: 164, size: 32, elements: !2544)
!2544 = !{!2545, !2546}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2543, file: !49, line: 169, baseType: !431, size: 32)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2543, file: !49, line: 177, baseType: !18, size: 32)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2266, file: !49, line: 181, baseType: !431, size: 32, offset: 416)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2262, file: !2249, line: 42, baseType: !631, size: 32, offset: 64)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2262, file: !2249, line: 43, baseType: !631, size: 32, offset: 96)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !994, file: !995, line: 1340, baseType: !2551, size: 64, offset: 20672)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !995, line: 69, flags: DIFlagFwdDecl)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !994, file: !995, line: 1351, baseType: !120, size: 32, offset: 20736)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !994, file: !995, line: 1352, baseType: !120, size: 32, offset: 20768)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !994, file: !995, line: 1354, baseType: !531, size: 64, offset: 20800)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !994, file: !995, line: 1364, baseType: !634, size: 64, offset: 20864)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !994, file: !995, line: 1365, baseType: !634, size: 64, offset: 20928)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !994, file: !995, line: 1412, baseType: !531, size: 64, offset: 20992)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !994, file: !995, line: 1453, baseType: !2560, size: 64, offset: 21056)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !995, line: 1453, flags: DIFlagFwdDecl)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !994, file: !995, line: 1457, baseType: !2563, size: 64, offset: 21120)
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !65, line: 61, size: 576, elements: !2565)
!2565 = !{!2566, !2567, !2586, !2589, !2590, !2623, !2633}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2564, file: !65, line: 62, baseType: !64, size: 32)
!2567 = !DIDerivedType(tag: DW_TAG_member, scope: !2564, file: !65, line: 64, baseType: !2568, size: 192, offset: 64)
!2568 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2564, file: !65, line: 64, size: 192, elements: !2569)
!2569 = !{!2570, !2581}
!2570 = !DIDerivedType(tag: DW_TAG_member, scope: !2568, file: !65, line: 65, baseType: !2571, size: 192)
!2571 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2568, file: !65, line: 65, size: 192, elements: !2572)
!2572 = !{!2573, !2580}
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2571, file: !65, line: 66, baseType: !2574, size: 128)
!2574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2575, line: 50, size: 128, elements: !2576)
!2575 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2576 = !{!2577, !2578, !2579}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2574, file: !2575, line: 52, baseType: !531, size: 64)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2574, file: !2575, line: 54, baseType: !18, size: 32, offset: 64)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2574, file: !2575, line: 55, baseType: !18, size: 32, offset: 96)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2571, file: !65, line: 67, baseType: !531, size: 64, offset: 128)
!2581 = !DIDerivedType(tag: DW_TAG_member, scope: !2568, file: !65, line: 70, baseType: !2582, size: 192)
!2582 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2568, file: !65, line: 70, size: 192, elements: !2583)
!2583 = !{!2584, !2585}
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2582, file: !65, line: 71, baseType: !903, size: 128, align: 64)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2582, file: !65, line: 72, baseType: !531, size: 64, offset: 128)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2564, file: !65, line: 76, baseType: !2587, size: 64, offset: 256)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !65, line: 76, flags: DIFlagFwdDecl)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2564, file: !65, line: 77, baseType: !531, size: 64, offset: 320)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2564, file: !65, line: 79, baseType: !2591, size: 64, offset: 384)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2575, line: 25, size: 256, elements: !2593)
!2593 = !{!2594, !2600, !2604}
!2594 = !DIDerivedType(tag: DW_TAG_member, scope: !2592, file: !2575, line: 26, baseType: !2595, size: 128)
!2595 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2592, file: !2575, line: 26, size: 128, elements: !2596)
!2596 = !{!2597, !2599}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2595, file: !2575, line: 27, baseType: !2598, size: 128)
!2598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, size: 128, elements: !1815)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2595, file: !2575, line: 28, baseType: !2598, size: 128)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2592, file: !2575, line: 31, baseType: !2601, size: 64, offset: 128)
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2603)
!2603 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2575, line: 23, flags: DIFlagFwdDecl)
!2604 = !DIDerivedType(tag: DW_TAG_member, scope: !2592, file: !2575, line: 33, baseType: !2605, size: 64, offset: 192)
!2605 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2592, file: !2575, line: 33, size: 64, elements: !2606)
!2606 = !{!2607, !2613, !2618}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2605, file: !2575, line: 38, baseType: !2608, size: 64)
!2608 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2605, file: !2575, line: 34, size: 64, elements: !2609)
!2609 = !{!2610, !2611, !2612}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2608, file: !2575, line: 35, baseType: !1387, size: 32)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2608, file: !2575, line: 36, baseType: !439, size: 8, offset: 32)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2608, file: !2575, line: 37, baseType: !439, size: 8, offset: 40)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2605, file: !2575, line: 42, baseType: !2614, size: 16)
!2614 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2605, file: !2575, line: 39, size: 16, elements: !2615)
!2615 = !{!2616, !2617}
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2614, file: !2575, line: 40, baseType: !439, size: 8)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2614, file: !2575, line: 41, baseType: !439, size: 8, offset: 8)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2605, file: !2575, line: 46, baseType: !2619, size: 16)
!2619 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2605, file: !2575, line: 43, size: 16, elements: !2620)
!2620 = !{!2621, !2622}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2619, file: !2575, line: 44, baseType: !439, size: 8)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2619, file: !2575, line: 45, baseType: !439, size: 8, offset: 8)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2564, file: !65, line: 81, baseType: !2624, size: 64, offset: 448)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !65, line: 85, size: 384, elements: !2626)
!2626 = !{!2627, !2628, !2629, !2630, !2631, !2632}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2625, file: !65, line: 86, baseType: !2587, size: 64)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2625, file: !65, line: 87, baseType: !531, size: 64, offset: 64)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2625, file: !65, line: 88, baseType: !531, size: 64, offset: 128)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2625, file: !65, line: 89, baseType: !531, size: 64, offset: 192)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2625, file: !65, line: 90, baseType: !1718, size: 8, offset: 256)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2625, file: !65, line: 92, baseType: !2624, size: 64, offset: 320)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2564, file: !65, line: 82, baseType: !18, size: 32, offset: 512)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !994, file: !995, line: 1463, baseType: !2635, offset: 21184)
!2635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !995, line: 739, elements: !764)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !994, file: !995, line: 1470, baseType: !903, size: 128, align: 64, offset: 21184)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !994, file: !995, line: 1471, baseType: !948, size: 32, offset: 21312)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !994, file: !995, line: 1472, baseType: !120, size: 32, offset: 21344)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !994, file: !995, line: 1474, baseType: !993, size: 64, offset: 21376)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !994, file: !995, line: 1475, baseType: !2641, size: 320, offset: 21440)
!2641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2642, line: 11, size: 320, elements: !2643)
!2642 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2643 = !{!2644, !2645, !2646, !2651}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2641, file: !2642, line: 16, baseType: !756, size: 128)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2641, file: !2642, line: 17, baseType: !531, size: 64, offset: 128)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2641, file: !2642, line: 18, baseType: !2647, size: 64, offset: 192)
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = !DISubroutineType(types: !2649)
!2649 = !{null, !2650}
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2641, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2641, file: !2642, line: 19, baseType: !630, size: 32, offset: 256)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !994, file: !995, line: 1478, baseType: !2653, size: 64, offset: 21760)
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2655, line: 49, size: 512, elements: !2656)
!2655 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2656 = !{!2657, !2658, !2659, !2660, !2661, !2663, !2664, !2665, !2667}
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2654, file: !2655, line: 50, baseType: !2653, size: 64)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2654, file: !2655, line: 51, baseType: !376, size: 64, offset: 64)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2654, file: !2655, line: 52, baseType: !531, size: 64, offset: 128)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2654, file: !2655, line: 53, baseType: !531, size: 64, offset: 192)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2654, file: !2655, line: 54, baseType: !2662, size: 64, offset: 256)
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !2654, file: !2655, line: 56, baseType: !18, size: 32, offset: 320)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2654, file: !2655, line: 58, baseType: !18, size: 32, offset: 352)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2654, file: !2655, line: 59, baseType: !2666, size: 64, offset: 384)
!2666 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !383, line: 159, baseType: !634)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2654, file: !2655, line: 60, baseType: !1420, size: 64, offset: 448)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !994, file: !995, line: 1482, baseType: !948, size: 32, offset: 21824)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !994, file: !995, line: 1489, baseType: !376, size: 64, offset: 21888)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !994, file: !995, line: 1504, baseType: !376, size: 64, offset: 21952)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !994, file: !995, line: 1505, baseType: !635, size: 64, offset: 22016)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !994, file: !995, line: 1506, baseType: !634, size: 64, offset: 22080)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !994, file: !995, line: 1507, baseType: !635, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !994, file: !995, line: 1508, baseType: !635, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !994, file: !995, line: 1509, baseType: !635, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !994, file: !995, line: 1510, baseType: !903, size: 128, align: 64, offset: 22208)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !994, file: !995, line: 1511, baseType: !120, size: 32, offset: 22336)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !994, file: !995, line: 1515, baseType: !2679, size: 64, offset: 22400)
!2679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !898, line: 56, size: 64, elements: !2680)
!2680 = !{!2681}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2679, file: !898, line: 57, baseType: !901, size: 64)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !994, file: !995, line: 1518, baseType: !2679, size: 64, offset: 22464)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !994, file: !995, line: 1528, baseType: !903, size: 128, align: 64, offset: 22528)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !994, file: !995, line: 1552, baseType: !2685, size: 35328, offset: 23040)
!2685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2686, line: 430, size: 35328, elements: !2687)
!2686 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2687 = !{!2688, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2717, !2718, !2719, !2720, !2721, !2722, !2725, !2726, !2727, !2728}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2685, file: !2686, line: 432, baseType: !2689, size: 192)
!2689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2690, size: 192, elements: !482)
!2690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2691, line: 16, size: 64, elements: !2692)
!2691 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2692 = !{!2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2690, file: !2691, line: 17, baseType: !449, size: 16)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2690, file: !2691, line: 18, baseType: !449, size: 16, offset: 16)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2690, file: !2691, line: 19, baseType: !449, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2690, file: !2691, line: 19, baseType: !449, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2690, file: !2691, line: 19, baseType: !449, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2690, file: !2691, line: 19, baseType: !449, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2690, file: !2691, line: 19, baseType: !449, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2690, file: !2691, line: 20, baseType: !449, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2690, file: !2691, line: 20, baseType: !449, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2690, file: !2691, line: 20, baseType: !449, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2690, file: !2691, line: 20, baseType: !449, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2690, file: !2691, line: 20, baseType: !449, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2690, file: !2691, line: 20, baseType: !449, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2685, file: !2686, line: 436, baseType: !531, size: 64, offset: 192)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2685, file: !2686, line: 440, baseType: !451, size: 16, offset: 256)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2685, file: !2686, line: 441, baseType: !451, size: 16, offset: 272)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2685, file: !2686, line: 442, baseType: !451, size: 16, offset: 288)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2685, file: !2686, line: 443, baseType: !451, size: 16, offset: 304)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2685, file: !2686, line: 447, baseType: !531, size: 64, offset: 320)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2685, file: !2686, line: 448, baseType: !531, size: 64, offset: 384)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2685, file: !2686, line: 459, baseType: !2714, size: 256, offset: 448)
!2714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2715, size: 256, elements: !5)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2686, line: 428, flags: DIFlagFwdDecl)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2685, file: !2686, line: 461, baseType: !531, size: 64, offset: 704)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2685, file: !2686, line: 463, baseType: !531, size: 64, offset: 768)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2685, file: !2686, line: 465, baseType: !531, size: 64, offset: 832)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2685, file: !2686, line: 466, baseType: !531, size: 64, offset: 896)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2685, file: !2686, line: 467, baseType: !531, size: 64, offset: 960)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2685, file: !2686, line: 473, baseType: !2723, size: 64, offset: 1024)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2686, line: 10, flags: DIFlagFwdDecl)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2685, file: !2686, line: 480, baseType: !531, size: 64, offset: 1088)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2685, file: !2686, line: 482, baseType: !18, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2685, file: !2686, line: 491, baseType: !630, size: 32, offset: 1184)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2685, file: !2686, line: 501, baseType: !2729, size: 33792, offset: 1536)
!2729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2730, line: 448, size: 33792, elements: !2731)
!2730 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2731 = !{!2732, !2733, !2734, !2896, !2897, !2903, !2904}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2729, file: !2730, line: 461, baseType: !18, size: 32)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2729, file: !2730, line: 468, baseType: !531, size: 64, offset: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2729, file: !2730, line: 476, baseType: !2735, size: 64, offset: 128)
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2730, line: 356, size: 33280, align: 512, elements: !2737)
!2737 = !{!2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2736, file: !2730, line: 358, baseType: !18, size: 32)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2736, file: !2730, line: 361, baseType: !18, size: 32, offset: 32)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2736, file: !2730, line: 364, baseType: !634, size: 64, offset: 64)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2736, file: !2730, line: 367, baseType: !634, size: 64, offset: 128)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2736, file: !2730, line: 370, baseType: !634, size: 64, offset: 192)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2736, file: !2730, line: 373, baseType: !18, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2736, file: !2730, line: 376, baseType: !18, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2736, file: !2730, line: 391, baseType: !18, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2736, file: !2730, line: 394, baseType: !18, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2736, file: !2730, line: 397, baseType: !2748, size: 32768, offset: 512)
!2748 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2730, line: 348, size: 32768, elements: !2749)
!2749 = !{!2750, !2765, !2802, !2879, !2892}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2748, file: !2730, line: 349, baseType: !2751, size: 896)
!2751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2730, line: 12, size: 896, elements: !2752)
!2752 = !{!2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2764}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2751, file: !2730, line: 13, baseType: !630, size: 32)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2751, file: !2730, line: 14, baseType: !630, size: 32, offset: 32)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2751, file: !2730, line: 15, baseType: !630, size: 32, offset: 64)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2751, file: !2730, line: 16, baseType: !630, size: 32, offset: 96)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2751, file: !2730, line: 17, baseType: !630, size: 32, offset: 128)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2751, file: !2730, line: 18, baseType: !630, size: 32, offset: 160)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2751, file: !2730, line: 19, baseType: !630, size: 32, offset: 192)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2751, file: !2730, line: 22, baseType: !2761, size: 640, offset: 224)
!2761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !630, size: 640, elements: !2762)
!2762 = !{!2763}
!2763 = !DISubrange(count: 20)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2751, file: !2730, line: 25, baseType: !630, size: 32, offset: 864)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2748, file: !2730, line: 350, baseType: !2766, size: 4096, align: 128)
!2766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2730, line: 34, size: 4096, align: 128, elements: !2767)
!2767 = !{!2768, !2769, !2770, !2771, !2772, !2787, !2788, !2789, !2791, !2793, !2797}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2766, file: !2730, line: 35, baseType: !449, size: 16)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2766, file: !2730, line: 36, baseType: !449, size: 16, offset: 16)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2766, file: !2730, line: 37, baseType: !449, size: 16, offset: 32)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2766, file: !2730, line: 38, baseType: !449, size: 16, offset: 48)
!2772 = !DIDerivedType(tag: DW_TAG_member, scope: !2766, file: !2730, line: 39, baseType: !2773, size: 128, offset: 64)
!2773 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2766, file: !2730, line: 39, size: 128, elements: !2774)
!2774 = !{!2775, !2780}
!2775 = !DIDerivedType(tag: DW_TAG_member, scope: !2773, file: !2730, line: 40, baseType: !2776, size: 128)
!2776 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2773, file: !2730, line: 40, size: 128, elements: !2777)
!2777 = !{!2778, !2779}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2776, file: !2730, line: 41, baseType: !634, size: 64)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2776, file: !2730, line: 42, baseType: !634, size: 64, offset: 64)
!2780 = !DIDerivedType(tag: DW_TAG_member, scope: !2773, file: !2730, line: 44, baseType: !2781, size: 128)
!2781 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2773, file: !2730, line: 44, size: 128, elements: !2782)
!2782 = !{!2783, !2784, !2785, !2786}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2781, file: !2730, line: 45, baseType: !630, size: 32)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2781, file: !2730, line: 46, baseType: !630, size: 32, offset: 32)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2781, file: !2730, line: 47, baseType: !630, size: 32, offset: 64)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2781, file: !2730, line: 48, baseType: !630, size: 32, offset: 96)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2766, file: !2730, line: 51, baseType: !630, size: 32, offset: 192)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2766, file: !2730, line: 52, baseType: !630, size: 32, offset: 224)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2766, file: !2730, line: 55, baseType: !2790, size: 1024, offset: 256)
!2790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !630, size: 1024, elements: !643)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2766, file: !2730, line: 58, baseType: !2792, size: 2048, offset: 1280)
!2792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !630, size: 2048, elements: !486)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2766, file: !2730, line: 60, baseType: !2794, size: 384, offset: 3328)
!2794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !630, size: 384, elements: !2795)
!2795 = !{!2796}
!2796 = !DISubrange(count: 12)
!2797 = !DIDerivedType(tag: DW_TAG_member, scope: !2766, file: !2730, line: 62, baseType: !2798, size: 384, offset: 3712)
!2798 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2766, file: !2730, line: 62, size: 384, elements: !2799)
!2799 = !{!2800, !2801}
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2798, file: !2730, line: 63, baseType: !2794, size: 384)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2798, file: !2730, line: 64, baseType: !2794, size: 384)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2748, file: !2730, line: 351, baseType: !2803, size: 1088)
!2803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2730, line: 79, size: 1088, elements: !2804)
!2804 = !{!2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2878}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2803, file: !2730, line: 80, baseType: !630, size: 32)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2803, file: !2730, line: 81, baseType: !630, size: 32, offset: 32)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2803, file: !2730, line: 82, baseType: !630, size: 32, offset: 64)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2803, file: !2730, line: 83, baseType: !630, size: 32, offset: 96)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2803, file: !2730, line: 84, baseType: !630, size: 32, offset: 128)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2803, file: !2730, line: 85, baseType: !630, size: 32, offset: 160)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2803, file: !2730, line: 86, baseType: !630, size: 32, offset: 192)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2803, file: !2730, line: 88, baseType: !2761, size: 640, offset: 224)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2803, file: !2730, line: 89, baseType: !439, size: 8, offset: 864)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2803, file: !2730, line: 90, baseType: !439, size: 8, offset: 872)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2803, file: !2730, line: 91, baseType: !439, size: 8, offset: 880)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2803, file: !2730, line: 92, baseType: !439, size: 8, offset: 888)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2803, file: !2730, line: 93, baseType: !439, size: 8, offset: 896)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2803, file: !2730, line: 94, baseType: !439, size: 8, offset: 904)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2803, file: !2730, line: 95, baseType: !2820, size: 64, offset: 960)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2822, line: 11, size: 128, elements: !2823)
!2822 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!2823 = !{!2824, !2825}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2821, file: !2822, line: 12, baseType: !517, size: 64)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2821, file: !2822, line: 13, baseType: !2826, size: 64, offset: 64)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2828, line: 103, size: 1344, elements: !2829)
!2828 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!2829 = !{!2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2858, !2859, !2860}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2827, file: !2828, line: 109, baseType: !531, size: 64)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2827, file: !2828, line: 110, baseType: !531, size: 64, offset: 64)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2827, file: !2828, line: 111, baseType: !531, size: 64, offset: 128)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2827, file: !2828, line: 112, baseType: !531, size: 64, offset: 192)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2827, file: !2828, line: 113, baseType: !531, size: 64, offset: 256)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2827, file: !2828, line: 114, baseType: !531, size: 64, offset: 320)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2827, file: !2828, line: 117, baseType: !531, size: 64, offset: 384)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2827, file: !2828, line: 118, baseType: !531, size: 64, offset: 448)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2827, file: !2828, line: 119, baseType: !531, size: 64, offset: 512)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2827, file: !2828, line: 120, baseType: !531, size: 64, offset: 576)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2827, file: !2828, line: 121, baseType: !531, size: 64, offset: 640)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2827, file: !2828, line: 122, baseType: !531, size: 64, offset: 704)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2827, file: !2828, line: 123, baseType: !531, size: 64, offset: 768)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2827, file: !2828, line: 124, baseType: !531, size: 64, offset: 832)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2827, file: !2828, line: 125, baseType: !531, size: 64, offset: 896)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2827, file: !2828, line: 139, baseType: !531, size: 64, offset: 960)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2827, file: !2828, line: 142, baseType: !531, size: 64, offset: 1024)
!2847 = !DIDerivedType(tag: DW_TAG_member, scope: !2827, file: !2828, line: 144, baseType: !2848, size: 64, offset: 1088)
!2848 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2827, file: !2828, line: 144, size: 64, elements: !2849)
!2849 = !{!2850, !2851, !2852}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2848, file: !2828, line: 146, baseType: !449, size: 16)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !2848, file: !2828, line: 148, baseType: !634, size: 64)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !2848, file: !2828, line: 150, baseType: !2853, size: 64)
!2853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !2828, line: 59, size: 64, elements: !2854)
!2854 = !{!2855, !2856, !2857}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2853, file: !2828, line: 61, baseType: !634, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !2853, file: !2828, line: 63, baseType: !634, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !2853, file: !2828, line: 65, baseType: !634, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2827, file: !2828, line: 153, baseType: !531, size: 64, offset: 1152)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2827, file: !2828, line: 154, baseType: !531, size: 64, offset: 1216)
!2860 = !DIDerivedType(tag: DW_TAG_member, scope: !2827, file: !2828, line: 156, baseType: !2861, size: 64, offset: 1280)
!2861 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2827, file: !2828, line: 156, size: 64, elements: !2862)
!2862 = !{!2863, !2864, !2865}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2861, file: !2828, line: 158, baseType: !449, size: 16)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !2861, file: !2828, line: 160, baseType: !634, size: 64)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !2861, file: !2828, line: 162, baseType: !2866, size: 64)
!2866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !2828, line: 69, size: 64, elements: !2867)
!2867 = !{!2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2866, file: !2828, line: 71, baseType: !634, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !2866, file: !2828, line: 73, baseType: !634, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !2866, file: !2828, line: 75, baseType: !634, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !2866, file: !2828, line: 77, baseType: !634, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !2866, file: !2828, line: 80, baseType: !634, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2866, file: !2828, line: 83, baseType: !634, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !2866, file: !2828, line: 86, baseType: !634, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !2866, file: !2828, line: 88, baseType: !634, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !2866, file: !2828, line: 93, baseType: !634, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !2866, file: !2828, line: 100, baseType: !634, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2803, file: !2730, line: 96, baseType: !630, size: 32, offset: 1024)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2748, file: !2730, line: 352, baseType: !2880, size: 4608, align: 512)
!2880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2730, line: 333, size: 4608, align: 512, elements: !2881)
!2881 = !{!2882, !2883, !2890}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2880, file: !2730, line: 334, baseType: !2766, size: 4096, align: 128)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2880, file: !2730, line: 335, baseType: !2884, size: 512, offset: 4096)
!2884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2730, line: 312, size: 512, elements: !2885)
!2885 = !{!2886, !2887, !2888}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2884, file: !2730, line: 313, baseType: !634, size: 64)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2884, file: !2730, line: 314, baseType: !634, size: 64, offset: 64)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2884, file: !2730, line: 315, baseType: !2889, size: 384, offset: 128)
!2889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !634, size: 384, elements: !1705)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2880, file: !2730, line: 336, baseType: !2891, offset: 4608)
!2891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, elements: !1475)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2748, file: !2730, line: 353, baseType: !2893, size: 32768)
!2893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, size: 32768, elements: !2894)
!2894 = !{!2895}
!2895 = !DISubrange(count: 4096)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2729, file: !2730, line: 484, baseType: !2735, size: 64, offset: 192)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2729, file: !2730, line: 491, baseType: !2898, size: 128, offset: 256)
!2898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2730, line: 404, size: 128, elements: !2899)
!2899 = !{!2900, !2901, !2902}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !2898, file: !2730, line: 424, baseType: !634, size: 64)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !2898, file: !2730, line: 432, baseType: !18, size: 32, offset: 64)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !2898, file: !2730, line: 440, baseType: !18, size: 32, offset: 96)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2729, file: !2730, line: 498, baseType: !2898, size: 128, offset: 384)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2729, file: !2730, line: 508, baseType: !2736, size: 33280, align: 512, offset: 512)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !973, file: !974, line: 31, baseType: !2906, size: 64, offset: 448)
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2908, line: 325, flags: DIFlagFwdDecl)
!2908 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !973, file: !974, line: 32, baseType: !18, size: 32, offset: 512)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !973, file: !974, line: 33, baseType: !972, size: 64, offset: 576)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !973, file: !974, line: 35, baseType: !2912, size: 64, offset: 640)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !974, line: 17, flags: DIFlagFwdDecl)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !973, file: !974, line: 37, baseType: !1446, size: 64, offset: 704)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !973, file: !974, line: 38, baseType: !1794, size: 64, offset: 768)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !973, file: !974, line: 39, baseType: !120, size: 32, offset: 832)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !973, file: !974, line: 40, baseType: !2918, size: 192, offset: 896)
!2918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !2919, line: 9, size: 192, elements: !2920)
!2919 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!2920 = !{!2921, !2922, !2926, !2927}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !2918, file: !2919, line: 10, baseType: !849, size: 64)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2918, file: !2919, line: 11, baseType: !2923, size: 64, offset: 64)
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2924 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2925)
!2925 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !2919, line: 7, flags: DIFlagFwdDecl)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !2918, file: !2919, line: 12, baseType: !18, size: 32, offset: 128)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2918, file: !2919, line: 13, baseType: !948, size: 32, offset: 160)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !973, file: !974, line: 42, baseType: !120, size: 32, offset: 1088)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !920, file: !25, line: 951, baseType: !71, size: 32, offset: 128)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !920, file: !25, line: 952, baseType: !567, size: 32, offset: 160)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !920, file: !25, line: 952, baseType: !567, size: 32, offset: 192)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !920, file: !25, line: 953, baseType: !120, size: 32, offset: 224)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !891, file: !25, line: 1012, baseType: !1627, size: 64, offset: 896)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !891, file: !25, line: 1013, baseType: !2935, size: 256, offset: 960)
!2935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !25, line: 970, size: 256, elements: !2936)
!2936 = !{!2937, !2938, !2939, !2940, !2941, !2942}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2935, file: !25, line: 971, baseType: !531, size: 64)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2935, file: !25, line: 972, baseType: !18, size: 32, offset: 64)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2935, file: !25, line: 973, baseType: !18, size: 32, offset: 96)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2935, file: !25, line: 974, baseType: !18, size: 32, offset: 128)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2935, file: !25, line: 975, baseType: !18, size: 32, offset: 160)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2935, file: !25, line: 976, baseType: !722, size: 64, offset: 192)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !891, file: !25, line: 1014, baseType: !2944, size: 128, offset: 1216)
!2944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !2945, line: 8, size: 128, elements: !2946)
!2945 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!2946 = !{!2947, !2948}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !2944, file: !2945, line: 9, baseType: !706, size: 64)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !2944, file: !2945, line: 10, baseType: !596, size: 64, offset: 64)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !891, file: !25, line: 1015, baseType: !561, size: 64, offset: 1344)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !891, file: !25, line: 1016, baseType: !2951, size: 64, offset: 1408)
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2953)
!2953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !25, line: 1914, size: 2112, elements: !2954)
!2954 = !{!2955, !2956, !2960, !2964, !2968, !2996, !2997, !3003, !3016, !3033, !3037, !3038, !3042, !3043, !3047, !3052, !3053, !3057, !3061, !3067, !3068, !3072, !3073, !3077, !3081, !3085, !3091, !3095, !3099, !3103, !3107, !3108, !3114}
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2953, file: !25, line: 1915, baseType: !377, size: 64)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2953, file: !25, line: 1916, baseType: !2957, size: 64, offset: 64)
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2958, size: 64)
!2958 = !DISubroutineType(types: !2959)
!2959 = !{!722, !1313, !722, !120}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2953, file: !25, line: 1917, baseType: !2961, size: 64, offset: 128)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = !DISubroutineType(types: !2963)
!2963 = !{!513, !1313, !481, !528, !874}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2953, file: !25, line: 1918, baseType: !2965, size: 64, offset: 192)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = !DISubroutineType(types: !2967)
!2967 = !{!513, !1313, !400, !528, !874}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2953, file: !25, line: 1919, baseType: !2969, size: 64, offset: 256)
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = !DISubroutineType(types: !2971)
!2971 = !{!513, !2972, !2994}
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !25, line: 373, size: 384, elements: !2974)
!2974 = !{!2975, !2976, !2977, !2981, !2982, !2983, !2984}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2973, file: !25, line: 374, baseType: !1313, size: 64)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2973, file: !25, line: 375, baseType: !722, size: 64, offset: 64)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2973, file: !25, line: 376, baseType: !2978, size: 64, offset: 128)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{null, !2972, !517}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2973, file: !25, line: 377, baseType: !376, size: 64, offset: 192)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2973, file: !25, line: 378, baseType: !120, size: 32, offset: 256)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2973, file: !25, line: 379, baseType: !449, size: 16, offset: 288)
!2984 = !DIDerivedType(tag: DW_TAG_member, scope: !2973, file: !25, line: 380, baseType: !2985, size: 64, offset: 320)
!2985 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2973, file: !25, line: 380, size: 64, elements: !2986)
!2986 = !{!2987, !2990}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2985, file: !25, line: 386, baseType: !2988, size: 64)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !25, line: 386, flags: DIFlagFwdDecl)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2985, file: !25, line: 395, baseType: !2991, size: 64)
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2992, size: 64)
!2992 = !DISubroutineType(types: !2993)
!2993 = !{!513, !376}
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !25, line: 69, flags: DIFlagFwdDecl)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2953, file: !25, line: 1920, baseType: !2969, size: 64, offset: 320)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2953, file: !25, line: 1921, baseType: !2998, size: 64, offset: 384)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DISubroutineType(types: !3000)
!3000 = !{!120, !2972, !3001, !18}
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !25, line: 53, flags: DIFlagFwdDecl)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2953, file: !25, line: 1923, baseType: !3004, size: 64, offset: 448)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{!120, !1313, !3007}
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !25, line: 1858, size: 128, elements: !3009)
!3009 = !{!3010, !3015}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3008, file: !25, line: 1859, baseType: !3011, size: 64)
!3011 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !25, line: 1855, baseType: !3012)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{!1718, !3007, !400, !120, !722, !634, !18}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3008, file: !25, line: 1860, baseType: !722, size: 64, offset: 64)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2953, file: !25, line: 1924, baseType: !3017, size: 64, offset: 512)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{!3020, !1313, !3022}
!3020 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3021, line: 59, baseType: !18)
!3021 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !3024, line: 37, size: 128, elements: !3025)
!3024 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!3025 = !{!3026, !3032}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !3023, file: !3024, line: 38, baseType: !3027, size: 64)
!3027 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !3024, line: 31, baseType: !3028)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = !DISubroutineType(types: !3030)
!3030 = !{null, !1313, !3031, !3022}
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !3023, file: !3024, line: 39, baseType: !3020, size: 32, offset: 64)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2953, file: !25, line: 1925, baseType: !3034, size: 64, offset: 576)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{!517, !1313, !18, !531}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2953, file: !25, line: 1926, baseType: !3034, size: 64, offset: 640)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2953, file: !25, line: 1927, baseType: !3039, size: 64, offset: 704)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{!120, !1313, !2375}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2953, file: !25, line: 1928, baseType: !531, size: 64, offset: 768)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2953, file: !25, line: 1929, baseType: !3044, size: 64, offset: 832)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{!120, !561, !1313}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2953, file: !25, line: 1930, baseType: !3048, size: 64, offset: 896)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = !DISubroutineType(types: !3050)
!3050 = !{!120, !1313, !3051}
!3051 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !25, line: 1061, baseType: !376)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2953, file: !25, line: 1931, baseType: !3044, size: 64, offset: 960)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2953, file: !25, line: 1932, baseType: !3054, size: 64, offset: 1024)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = !DISubroutineType(types: !3056)
!3056 = !{!120, !1313, !722, !722, !120}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2953, file: !25, line: 1933, baseType: !3058, size: 64, offset: 1088)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{!120, !120, !1313, !120}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2953, file: !25, line: 1934, baseType: !3062, size: 64, offset: 1152)
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3063, size: 64)
!3063 = !DISubroutineType(types: !3064)
!3064 = !{!120, !1313, !120, !3065}
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3066 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !25, line: 1063, flags: DIFlagFwdDecl)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2953, file: !25, line: 1935, baseType: !1310, size: 64, offset: 1216)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2953, file: !25, line: 1936, baseType: !3069, size: 64, offset: 1280)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = !DISubroutineType(types: !3071)
!3071 = !{!120, !120}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2953, file: !25, line: 1937, baseType: !3062, size: 64, offset: 1344)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2953, file: !25, line: 1938, baseType: !3074, size: 64, offset: 1408)
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!3075 = !DISubroutineType(types: !3076)
!3076 = !{!513, !2259, !1313, !874, !528, !18}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2953, file: !25, line: 1939, baseType: !3078, size: 64, offset: 1472)
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3079, size: 64)
!3079 = !DISubroutineType(types: !3080)
!3080 = !{!513, !1313, !874, !2259, !528, !18}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2953, file: !25, line: 1940, baseType: !3082, size: 64, offset: 1536)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = !DISubroutineType(types: !3084)
!3084 = !{null, !1313}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2953, file: !25, line: 1941, baseType: !3086, size: 64, offset: 1600)
!3086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3087, size: 64)
!3087 = !DISubroutineType(types: !3088)
!3088 = !{!120, !1313, !120, !3089, !3090}
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2953, file: !25, line: 1942, baseType: !3092, size: 64, offset: 1664)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = !DISubroutineType(types: !3094)
!3094 = !{!517, !1313, !120, !722, !722}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2953, file: !25, line: 1944, baseType: !3096, size: 64, offset: 1728)
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3097, size: 64)
!3097 = !DISubroutineType(types: !3098)
!3098 = !{null, !833, !1313}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2953, file: !25, line: 1948, baseType: !3100, size: 64, offset: 1792)
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{!513, !1313, !722, !1313, !722, !528, !18}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2953, file: !25, line: 1950, baseType: !3104, size: 64, offset: 1856)
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3105, size: 64)
!3105 = !DISubroutineType(types: !3106)
!3106 = !{!722, !1313, !722, !1313, !722, !722, !18}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2953, file: !25, line: 1953, baseType: !3054, size: 64, offset: 1920)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2953, file: !25, line: 1954, baseType: !3109, size: 64, offset: 1984)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = !DISubroutineType(types: !3111)
!3111 = !{!120, !3112, !18}
!3112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3113, size: 64)
!3113 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !25, line: 1911, flags: DIFlagFwdDecl)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2953, file: !25, line: 1955, baseType: !3115, size: 64, offset: 2048)
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = !DISubroutineType(types: !3117)
!3117 = !{!120, !3112, !3001, !18}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !891, file: !25, line: 1018, baseType: !634, size: 64, offset: 1472)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !891, file: !25, line: 1020, baseType: !376, size: 64, offset: 1536)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !891, file: !25, line: 1023, baseType: !376, size: 64, offset: 1600)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !891, file: !25, line: 1027, baseType: !3122, size: 64, offset: 1664)
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !891, file: !25, line: 1029, baseType: !557, size: 64, offset: 1728)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !891, file: !25, line: 1030, baseType: !3125, size: 32, offset: 1792)
!3125 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !3126, line: 8, baseType: !630)
!3126 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !891, file: !25, line: 1031, baseType: !3125, size: 32, offset: 1824)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !834, file: !835, line: 29, baseType: !376, size: 64, offset: 896)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !776, file: !25, line: 2077, baseType: !830, size: 64, offset: 1088)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !776, file: !25, line: 2078, baseType: !830, size: 64, offset: 1152)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !776, file: !25, line: 2079, baseType: !830, size: 64, offset: 1216)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !776, file: !25, line: 2081, baseType: !3133, size: 64, offset: 1280)
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!3134 = !DISubroutineType(types: !3135)
!3135 = !{!513, !712, !120, !481, !528, !722}
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !776, file: !25, line: 2082, baseType: !3137, size: 64, offset: 1344)
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3138, size: 64)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!513, !712, !120, !400, !528, !722}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !776, file: !25, line: 2083, baseType: !3141, size: 64, offset: 1408)
!3141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3142, size: 64)
!3142 = !DISubroutineType(types: !3143)
!3143 = !{!3144, !561}
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3145, size: 64)
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !80, line: 296, size: 1664, elements: !3147)
!3147 = !{!3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3172, !3173, !3174}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !3146, file: !80, line: 297, baseType: !756, size: 128)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !3146, file: !80, line: 298, baseType: !382, size: 128, offset: 128)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !3146, file: !80, line: 299, baseType: !382, size: 128, offset: 256)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !3146, file: !80, line: 300, baseType: !382, size: 128, offset: 384)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !3146, file: !80, line: 301, baseType: !845, size: 256, offset: 512)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !3146, file: !80, line: 302, baseType: !411, size: 32, offset: 768)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !3146, file: !80, line: 303, baseType: !431, size: 32, offset: 800)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !3146, file: !80, line: 304, baseType: !712, size: 64, offset: 832)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !3146, file: !80, line: 305, baseType: !3157, size: 64, offset: 896)
!3157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !80, line: 68, size: 64, elements: !3158)
!3158 = !{!3159, !3171}
!3159 = !DIDerivedType(tag: DW_TAG_member, scope: !3157, file: !80, line: 69, baseType: !3160, size: 32)
!3160 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3157, file: !80, line: 69, size: 32, elements: !3161)
!3161 = !{!3162, !3163, !3164}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3160, file: !80, line: 70, baseType: !567, size: 32)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3160, file: !80, line: 71, baseType: !576, size: 32)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !3160, file: !80, line: 72, baseType: !3165, size: 32)
!3165 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !3166, line: 24, baseType: !3167)
!3166 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!3167 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3166, line: 22, size: 32, elements: !3168)
!3168 = !{!3169}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3167, file: !3166, line: 23, baseType: !3170, size: 32)
!3170 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !3166, line: 20, baseType: !573)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3157, file: !80, line: 74, baseType: !79, size: 32, offset: 32)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !3146, file: !80, line: 306, baseType: !722, size: 64, offset: 960)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !3146, file: !80, line: 307, baseType: !531, size: 64, offset: 1024)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !3146, file: !80, line: 308, baseType: !3175, size: 576, offset: 1088)
!3175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !80, line: 205, size: 576, elements: !3176)
!3176 = !{!3177, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3186}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !3175, file: !80, line: 206, baseType: !3178, size: 64)
!3178 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !80, line: 66, baseType: !724)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !3175, file: !80, line: 207, baseType: !3178, size: 64, offset: 64)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !3175, file: !80, line: 208, baseType: !3178, size: 64, offset: 128)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !3175, file: !80, line: 209, baseType: !3178, size: 64, offset: 192)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !3175, file: !80, line: 210, baseType: !3178, size: 64, offset: 256)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !3175, file: !80, line: 211, baseType: !3178, size: 64, offset: 320)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !3175, file: !80, line: 212, baseType: !3178, size: 64, offset: 384)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !3175, file: !80, line: 213, baseType: !1676, size: 64, offset: 448)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !3175, file: !80, line: 214, baseType: !1676, size: 64, offset: 512)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !776, file: !25, line: 2085, baseType: !3188, size: 64, offset: 1472)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = !DISubroutineType(types: !3190)
!3190 = !{!517, !712, !3191}
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !3193, line: 15, size: 256, elements: !3194)
!3193 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!3194 = !{!3195, !3196, !3197, !3198, !3199}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3192, file: !3193, line: 16, baseType: !986, size: 32)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !3192, file: !3193, line: 19, baseType: !120, size: 32, offset: 32)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !3192, file: !3193, line: 26, baseType: !531, size: 64, offset: 64)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !3192, file: !3193, line: 33, baseType: !531, size: 64, offset: 128)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !3192, file: !3193, line: 36, baseType: !3200, size: 64, offset: 192)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !3193, line: 36, flags: DIFlagFwdDecl)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !776, file: !25, line: 2087, baseType: !3188, size: 64, offset: 1536)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !776, file: !25, line: 2089, baseType: !746, size: 64, offset: 1600)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !713, file: !25, line: 1198, baseType: !3205, size: 64, offset: 448)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3207)
!3207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !80, line: 324, size: 704, elements: !3208)
!3208 = !{!3209, !3213, !3217, !3221, !3222, !3223, !3224, !3225, !3230, !3235, !3239}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !3207, file: !80, line: 325, baseType: !3210, size: 64)
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{!120, !3145}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !3207, file: !80, line: 326, baseType: !3214, size: 64, offset: 64)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{!3145, !712, !120}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !3207, file: !80, line: 327, baseType: !3218, size: 64, offset: 128)
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3219 = !DISubroutineType(types: !3220)
!3220 = !{null, !3145}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !3207, file: !80, line: 328, baseType: !3210, size: 64, offset: 192)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !3207, file: !80, line: 329, baseType: !3210, size: 64, offset: 256)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !3207, file: !80, line: 330, baseType: !3210, size: 64, offset: 320)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !3207, file: !80, line: 331, baseType: !804, size: 64, offset: 384)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !3207, file: !80, line: 334, baseType: !3226, size: 64, offset: 448)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{!3229, !561}
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !3207, file: !80, line: 335, baseType: !3231, size: 64, offset: 512)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3232 = !DISubroutineType(types: !3233)
!3233 = !{!120, !561, !3234}
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !3207, file: !80, line: 337, baseType: !3236, size: 64, offset: 576)
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = !DISubroutineType(types: !3238)
!3238 = !{!120, !561, !3229}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3207, file: !80, line: 339, baseType: !3240, size: 64, offset: 640)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = !DISubroutineType(types: !3242)
!3242 = !{!120, !712, !3243}
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !713, file: !25, line: 1199, baseType: !3245, size: 64, offset: 512)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3247)
!3247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !80, line: 430, size: 704, elements: !3248)
!3248 = !{!3249, !3255, !3256, !3260, !3261, !3262, !3277, !3300, !3304, !3305, !3328}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !3247, file: !80, line: 431, baseType: !3250, size: 64)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = !DISubroutineType(types: !3252)
!3252 = !{!120, !712, !120, !120, !3253}
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2944)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !3247, file: !80, line: 432, baseType: !804, size: 64, offset: 64)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !3247, file: !80, line: 433, baseType: !3257, size: 64, offset: 128)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{!120, !712, !18}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !3247, file: !80, line: 434, baseType: !3257, size: 64, offset: 192)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !3247, file: !80, line: 435, baseType: !804, size: 64, offset: 256)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !3247, file: !80, line: 436, baseType: !3263, size: 64, offset: 320)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = !DISubroutineType(types: !3265)
!3265 = !{!120, !712, !120, !3266}
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !80, line: 417, size: 256, elements: !3268)
!3268 = !{!3269, !3270, !3271, !3272, !3273, !3274, !3275, !3276}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !3267, file: !80, line: 418, baseType: !120, size: 32)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !3267, file: !80, line: 419, baseType: !18, size: 32, offset: 32)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !3267, file: !80, line: 420, baseType: !18, size: 32, offset: 64)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !3267, file: !80, line: 422, baseType: !18, size: 32, offset: 96)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !3267, file: !80, line: 423, baseType: !18, size: 32, offset: 128)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !3267, file: !80, line: 424, baseType: !18, size: 32, offset: 160)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !3267, file: !80, line: 425, baseType: !18, size: 32, offset: 192)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !3267, file: !80, line: 426, baseType: !18, size: 32, offset: 224)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !3247, file: !80, line: 437, baseType: !3278, size: 64, offset: 384)
!3278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3279, size: 64)
!3279 = !DISubroutineType(types: !3280)
!3280 = !{!120, !712, !3157, !3281}
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !80, line: 345, size: 960, elements: !3283)
!3283 = !{!3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !3282, file: !80, line: 346, baseType: !120, size: 32)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !3282, file: !80, line: 347, baseType: !634, size: 64, offset: 64)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !3282, file: !80, line: 348, baseType: !634, size: 64, offset: 128)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !3282, file: !80, line: 349, baseType: !634, size: 64, offset: 192)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !3282, file: !80, line: 350, baseType: !634, size: 64, offset: 256)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !3282, file: !80, line: 351, baseType: !634, size: 64, offset: 320)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !3282, file: !80, line: 352, baseType: !634, size: 64, offset: 384)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !3282, file: !80, line: 353, baseType: !855, size: 64, offset: 448)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !3282, file: !80, line: 355, baseType: !855, size: 64, offset: 512)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !3282, file: !80, line: 356, baseType: !120, size: 32, offset: 576)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !3282, file: !80, line: 357, baseType: !120, size: 32, offset: 608)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !3282, file: !80, line: 358, baseType: !634, size: 64, offset: 640)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !3282, file: !80, line: 359, baseType: !634, size: 64, offset: 704)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !3282, file: !80, line: 360, baseType: !634, size: 64, offset: 768)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !3282, file: !80, line: 361, baseType: !855, size: 64, offset: 832)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !3282, file: !80, line: 362, baseType: !120, size: 32, offset: 896)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !3247, file: !80, line: 438, baseType: !3301, size: 64, offset: 448)
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = !DISubroutineType(types: !3303)
!3303 = !{!120, !712, !3243, !3281}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !3247, file: !80, line: 440, baseType: !3278, size: 64, offset: 512)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !3247, file: !80, line: 441, baseType: !3306, size: 64, offset: 576)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{!120, !712, !3309}
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !80, line: 411, size: 1408, elements: !3311)
!3311 = !{!3312, !3313}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !3310, file: !80, line: 412, baseType: !18, size: 32)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !3310, file: !80, line: 413, baseType: !3314, size: 1344, offset: 64)
!3314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3315, size: 1344, elements: !482)
!3315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !80, line: 397, size: 448, elements: !3316)
!3316 = !{!3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3327}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3315, file: !80, line: 398, baseType: !18, size: 32)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !3315, file: !80, line: 399, baseType: !18, size: 32, offset: 32)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !3315, file: !80, line: 401, baseType: !18, size: 32, offset: 64)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !3315, file: !80, line: 402, baseType: !18, size: 32, offset: 96)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !3315, file: !80, line: 403, baseType: !18, size: 32, offset: 128)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !3315, file: !80, line: 404, baseType: !18, size: 32, offset: 160)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !3315, file: !80, line: 405, baseType: !18, size: 32, offset: 192)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3315, file: !80, line: 406, baseType: !636, size: 64, offset: 256)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3315, file: !80, line: 407, baseType: !3326, size: 64, offset: 320)
!3326 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !383, line: 132, baseType: !634)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !3315, file: !80, line: 408, baseType: !3326, size: 64, offset: 384)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !3247, file: !80, line: 442, baseType: !3257, size: 64, offset: 640)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !713, file: !25, line: 1200, baseType: !3330, size: 64, offset: 576)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3332)
!3332 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !25, line: 54, flags: DIFlagFwdDecl)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !713, file: !25, line: 1201, baseType: !531, size: 64, offset: 640)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !713, file: !25, line: 1202, baseType: !531, size: 64, offset: 704)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !713, file: !25, line: 1203, baseType: !531, size: 64, offset: 768)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !713, file: !25, line: 1204, baseType: !596, size: 64, offset: 832)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !713, file: !25, line: 1205, baseType: !1341, size: 320, offset: 896)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !713, file: !25, line: 1206, baseType: !120, size: 32, offset: 1216)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !713, file: !25, line: 1207, baseType: !431, size: 32, offset: 1248)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !713, file: !25, line: 1209, baseType: !376, size: 64, offset: 1280)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !713, file: !25, line: 1211, baseType: !3342, size: 64, offset: 1344)
!3342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3343, size: 64)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3345)
!3345 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !25, line: 1211, flags: DIFlagFwdDecl)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !713, file: !25, line: 1223, baseType: !3347, size: 64, offset: 1408)
!3347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !613, line: 34, size: 64, elements: !3348)
!3348 = !{!3349}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3347, file: !613, line: 35, baseType: !616, size: 64)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !713, file: !25, line: 1224, baseType: !382, size: 128, offset: 1472)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !713, file: !25, line: 1225, baseType: !3352, size: 64, offset: 1600)
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3353 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !25, line: 1225, flags: DIFlagFwdDecl)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !713, file: !25, line: 1226, baseType: !3355, size: 64, offset: 1664)
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3356 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !25, line: 1226, flags: DIFlagFwdDecl)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !713, file: !25, line: 1227, baseType: !3358, size: 64, offset: 1728)
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3359 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !25, line: 50, flags: DIFlagFwdDecl)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !713, file: !25, line: 1228, baseType: !3361, size: 64, offset: 1792)
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3362 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !25, line: 1228, flags: DIFlagFwdDecl)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !713, file: !25, line: 1229, baseType: !756, size: 128, offset: 1856)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !713, file: !25, line: 1230, baseType: !18, size: 32, offset: 1984)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !713, file: !25, line: 1231, baseType: !3366, size: 2496, offset: 2048)
!3366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !80, line: 521, size: 2496, elements: !3367)
!3367 = !{!3368, !3369, !3370, !3372, !3404}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3366, file: !80, line: 522, baseType: !18, size: 32)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3366, file: !80, line: 523, baseType: !1341, size: 320, offset: 64)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3366, file: !80, line: 524, baseType: !3371, size: 192, offset: 384)
!3371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !561, size: 192, elements: !482)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3366, file: !80, line: 525, baseType: !3373, size: 1728, offset: 576)
!3373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3374, size: 1728, elements: !482)
!3374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !80, line: 222, size: 576, elements: !3375)
!3375 = !{!3376, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3374, file: !80, line: 223, baseType: !3377, size: 64)
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3378, size: 64)
!3378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !80, line: 445, size: 256, elements: !3379)
!3379 = !{!3380, !3381, !3394, !3395}
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3378, file: !80, line: 446, baseType: !120, size: 32)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3378, file: !80, line: 447, baseType: !3382, size: 64, offset: 64)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3384)
!3384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !80, line: 312, size: 512, elements: !3385)
!3385 = !{!3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393}
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3384, file: !80, line: 313, baseType: !804, size: 64)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3384, file: !80, line: 314, baseType: !804, size: 64, offset: 64)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3384, file: !80, line: 315, baseType: !804, size: 64, offset: 128)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3384, file: !80, line: 316, baseType: !804, size: 64, offset: 192)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3384, file: !80, line: 317, baseType: !3210, size: 64, offset: 256)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3384, file: !80, line: 318, baseType: !3210, size: 64, offset: 320)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3384, file: !80, line: 319, baseType: !3210, size: 64, offset: 384)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3384, file: !80, line: 320, baseType: !3240, size: 64, offset: 448)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3378, file: !80, line: 448, baseType: !377, size: 64, offset: 128)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3378, file: !80, line: 449, baseType: !3377, size: 64, offset: 192)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3374, file: !80, line: 224, baseType: !120, size: 32, offset: 64)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3374, file: !80, line: 226, baseType: !382, size: 128, offset: 128)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3374, file: !80, line: 227, baseType: !531, size: 64, offset: 256)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3374, file: !80, line: 228, baseType: !18, size: 32, offset: 320)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3374, file: !80, line: 229, baseType: !18, size: 32, offset: 352)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3374, file: !80, line: 230, baseType: !3178, size: 64, offset: 384)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3374, file: !80, line: 231, baseType: !3178, size: 64, offset: 448)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3374, file: !80, line: 232, baseType: !376, size: 64, offset: 512)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3366, file: !80, line: 526, baseType: !3405, size: 192, offset: 2304)
!3405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3382, size: 192, elements: !482)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !713, file: !25, line: 1233, baseType: !3407, size: 2368, offset: 4544)
!3407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !25, line: 1184, size: 2368, elements: !3408)
!3408 = !{!3409, !3410, !3411}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3407, file: !25, line: 1185, baseType: !451, size: 16)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3407, file: !25, line: 1186, baseType: !451, size: 16, offset: 16)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3407, file: !25, line: 1187, baseType: !3412, size: 2304, offset: 64)
!3412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3413, size: 2304, elements: !482)
!3413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3414, line: 12, size: 768, elements: !3415)
!3414 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3415 = !{!3416, !3424, !3426, !3431, !3432}
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3413, file: !3414, line: 13, baseType: !3417, size: 384)
!3417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3418, line: 17, size: 384, elements: !3419)
!3418 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3419 = !{!3420, !3421, !3422, !3423}
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3417, file: !3418, line: 18, baseType: !120, size: 32)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3417, file: !3418, line: 19, baseType: !120, size: 32, offset: 32)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3417, file: !3418, line: 20, baseType: !959, size: 192, offset: 64)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3417, file: !3418, line: 22, baseType: !903, size: 128, align: 64, offset: 256)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3413, file: !3414, line: 14, baseType: !3425, size: 64, offset: 384)
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3413, file: !3414, line: 15, baseType: !3427, size: 64, offset: 448)
!3427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3428, line: 16, size: 64, elements: !3429)
!3428 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3429 = !{!3430}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3427, file: !3428, line: 17, baseType: !993, size: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3413, file: !3414, line: 16, baseType: !959, size: 192, offset: 512)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3413, file: !3414, line: 17, baseType: !431, size: 32, offset: 704)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !713, file: !25, line: 1240, baseType: !376, size: 64, offset: 6912)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !713, file: !25, line: 1243, baseType: !630, size: 32, offset: 6976)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !713, file: !25, line: 1245, baseType: !1676, size: 64, offset: 7040)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !713, file: !25, line: 1246, baseType: !1676, size: 64, offset: 7104)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !713, file: !25, line: 1248, baseType: !631, size: 32, offset: 7168)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !713, file: !25, line: 1249, baseType: !3439, size: 64, offset: 7232)
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 64)
!3440 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !25, line: 634, flags: DIFlagFwdDecl)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !713, file: !25, line: 1252, baseType: !3442, size: 256, offset: 7296)
!3442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !643)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !713, file: !25, line: 1253, baseType: !3444, size: 128, offset: 7552)
!3444 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3445, line: 21, baseType: !3446)
!3445 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3446 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3445, line: 19, size: 128, elements: !3447)
!3447 = !{!3448}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3446, file: !3445, line: 20, baseType: !3449, size: 128)
!3449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, size: 128, elements: !1815)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !713, file: !25, line: 1255, baseType: !18, size: 32, offset: 7680)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !713, file: !25, line: 1261, baseType: !845, size: 256, offset: 7744)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !713, file: !25, line: 1267, baseType: !400, size: 64, offset: 8000)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !713, file: !25, line: 1269, baseType: !659, size: 64, offset: 8064)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !713, file: !25, line: 1271, baseType: !3455, size: 448, offset: 8128)
!3455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !3193, line: 63, size: 448, elements: !3456)
!3456 = !{!3457, !3462, !3463, !3464, !3465, !3466, !3467}
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3455, file: !3193, line: 64, baseType: !3458, size: 64)
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3459, size: 64)
!3459 = !DISubroutineType(types: !3460)
!3460 = !{!531, !3461, !3191}
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3455, size: 64)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3455, file: !3193, line: 66, baseType: !3458, size: 64, offset: 64)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3455, file: !3193, line: 69, baseType: !517, size: 64, offset: 128)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3455, file: !3193, line: 70, baseType: !120, size: 32, offset: 192)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3455, file: !3193, line: 71, baseType: !18, size: 32, offset: 224)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3455, file: !3193, line: 74, baseType: !382, size: 128, offset: 256)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3455, file: !3193, line: 85, baseType: !3468, size: 64, offset: 384)
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !713, file: !25, line: 1274, baseType: !849, size: 64, offset: 8576)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !713, file: !25, line: 1280, baseType: !849, size: 64, offset: 8640)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !713, file: !25, line: 1283, baseType: !120, size: 32, offset: 8704)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !713, file: !25, line: 1286, baseType: !3125, size: 32, offset: 8736)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !713, file: !25, line: 1289, baseType: !3474, size: 64, offset: 8768)
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1463, line: 18, flags: DIFlagFwdDecl)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !713, file: !25, line: 1290, baseType: !752, size: 64, offset: 8832)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !713, file: !25, line: 1297, baseType: !1446, size: 64, offset: 8896)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !713, file: !25, line: 1304, baseType: !3479, size: 64, offset: 8960)
!3479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3480, line: 49, size: 64, elements: !3481)
!3480 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3481 = !{!3482}
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3479, file: !3480, line: 50, baseType: !3483, size: 64)
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3484, size: 64)
!3484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3480, line: 41, size: 512, align: 512, elements: !3485)
!3485 = !{!3486, !3487, !3492}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3484, file: !3480, line: 43, baseType: !411, size: 32)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3484, file: !3480, line: 45, baseType: !3488, size: 192, offset: 64)
!3488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3480, line: 29, size: 192, elements: !3489)
!3489 = !{!3490, !3491}
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3488, file: !3480, line: 30, baseType: !382, size: 128)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3488, file: !3480, line: 32, baseType: !517, size: 64, offset: 128)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3484, file: !3480, line: 46, baseType: !517, size: 64, offset: 256)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !713, file: !25, line: 1305, baseType: !3479, size: 64, offset: 9024)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !713, file: !25, line: 1306, baseType: !903, size: 128, align: 64, offset: 9088)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !713, file: !25, line: 1307, baseType: !1462, size: 256, offset: 9216)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !713, file: !25, line: 1309, baseType: !845, size: 256, offset: 9472)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !713, file: !25, line: 1314, baseType: !120, size: 32, offset: 9728)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !713, file: !25, line: 1317, baseType: !411, size: 32, align: 512, offset: 10240)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !713, file: !25, line: 1318, baseType: !382, size: 128, offset: 10304)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !713, file: !25, line: 1320, baseType: !411, size: 32, offset: 10432)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !713, file: !25, line: 1321, baseType: !382, size: 128, offset: 10496)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !707, file: !708, line: 73, baseType: !120, size: 32, offset: 128)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !707, file: !708, line: 74, baseType: !3504, size: 64, offset: 192)
!3504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3505, size: 64)
!3505 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1644, line: 42, flags: DIFlagFwdDecl)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !661, file: !598, line: 141, baseType: !3508, size: 64, offset: 704)
!3508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3509, size: 64)
!3509 = !DISubroutineType(types: !3510)
!3510 = !{!120, !3253, !1718}
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !661, file: !598, line: 142, baseType: !3512, size: 64, offset: 768)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DISubroutineType(types: !3514)
!3514 = !{!596, !596, !3515}
!3515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3516, size: 64)
!3516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !562)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !597, file: !598, line: 96, baseType: !712, size: 64, offset: 832)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !597, file: !598, line: 97, baseType: !531, size: 64, offset: 896)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !597, file: !598, line: 98, baseType: !376, size: 64, offset: 960)
!3520 = !DIDerivedType(tag: DW_TAG_member, scope: !597, file: !598, line: 100, baseType: !3521, size: 128, offset: 1024)
!3521 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !597, file: !598, line: 100, size: 128, elements: !3522)
!3522 = !{!3523, !3524}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3521, file: !598, line: 101, baseType: !382, size: 128)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3521, file: !598, line: 102, baseType: !3031, size: 64)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !597, file: !598, line: 104, baseType: !382, size: 128, offset: 1152)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !597, file: !598, line: 105, baseType: !382, size: 128, offset: 1280)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !597, file: !598, line: 113, baseType: !3528, size: 128, offset: 1408)
!3528 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !597, file: !598, line: 109, size: 128, elements: !3529)
!3529 = !{!3530, !3531, !3532}
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3528, file: !598, line: 110, baseType: !756, size: 128)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3528, file: !598, line: 111, baseType: !612, size: 128)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3528, file: !598, line: 112, baseType: !903, size: 128, align: 64)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !590, file: !25, line: 1968, baseType: !3534, size: 64, offset: 64)
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!3535 = !DISubroutineType(types: !3536)
!3536 = !{!400, !596, !561, !3537}
!3537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3538, size: 64)
!3538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3539, line: 10, size: 128, elements: !3540)
!3539 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3540 = !{!3541, !3545}
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3538, file: !3539, line: 11, baseType: !3542, size: 64)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3543 = !DISubroutineType(types: !3544)
!3544 = !{null, !376}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3538, file: !3539, line: 12, baseType: !376, size: 64, offset: 64)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !590, file: !25, line: 1969, baseType: !3547, size: 64, offset: 128)
!3547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3548, size: 64)
!3548 = !DISubroutineType(types: !3549)
!3549 = !{!120, !3504, !561, !120}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !590, file: !25, line: 1970, baseType: !3551, size: 64, offset: 192)
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = !DISubroutineType(types: !3553)
!3553 = !{!584, !561, !120, !1718}
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !590, file: !25, line: 1972, baseType: !3555, size: 64, offset: 256)
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3556, size: 64)
!3556 = !DISubroutineType(types: !3557)
!3557 = !{!120, !596, !481, !120}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !590, file: !25, line: 1974, baseType: !3559, size: 64, offset: 320)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = !DISubroutineType(types: !3561)
!3561 = !{!120, !3504, !561, !596, !523, !1718}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !590, file: !25, line: 1976, baseType: !3563, size: 64, offset: 384)
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3564 = !DISubroutineType(types: !3565)
!3565 = !{!120, !596, !561, !596}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !590, file: !25, line: 1977, baseType: !3567, size: 64, offset: 448)
!3567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3568, size: 64)
!3568 = !DISubroutineType(types: !3569)
!3569 = !{!120, !561, !596}
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !590, file: !25, line: 1978, baseType: !3571, size: 64, offset: 512)
!3571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3572, size: 64)
!3572 = !DISubroutineType(types: !3573)
!3573 = !{!120, !3504, !561, !596, !400}
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !590, file: !25, line: 1980, baseType: !3575, size: 64, offset: 576)
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3576, size: 64)
!3576 = !DISubroutineType(types: !3577)
!3577 = !{!120, !3504, !561, !596, !523}
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !590, file: !25, line: 1982, baseType: !3567, size: 64, offset: 640)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !590, file: !25, line: 1983, baseType: !3580, size: 64, offset: 704)
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64)
!3581 = !DISubroutineType(types: !3582)
!3582 = !{!120, !3504, !561, !596, !523, !717}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !590, file: !25, line: 1985, baseType: !3584, size: 64, offset: 768)
!3584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3585, size: 64)
!3585 = !DISubroutineType(types: !3586)
!3586 = !{!120, !3504, !561, !596, !561, !596, !18}
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !590, file: !25, line: 1987, baseType: !3588, size: 64, offset: 832)
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = !DISubroutineType(types: !3590)
!3590 = !{!120, !3504, !596, !3591}
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !25, line: 226, size: 640, elements: !3593)
!3593 = !{!3594, !3595, !3596, !3606, !3615, !3616, !3621, !3622, !3623}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3592, file: !25, line: 227, baseType: !18, size: 32)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3592, file: !25, line: 228, baseType: !523, size: 16, offset: 32)
!3596 = !DIDerivedType(tag: DW_TAG_member, scope: !3592, file: !25, line: 241, baseType: !3597, size: 32, offset: 64)
!3597 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3592, file: !25, line: 241, size: 32, elements: !3598)
!3598 = !{!3599, !3600}
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3597, file: !25, line: 242, baseType: !567, size: 32)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3597, file: !25, line: 243, baseType: !3601, size: 32)
!3601 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3602, line: 16, baseType: !3603)
!3602 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3603 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3602, line: 14, size: 32, elements: !3604)
!3604 = !{!3605}
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3603, file: !3602, line: 15, baseType: !572, size: 32)
!3606 = !DIDerivedType(tag: DW_TAG_member, scope: !3592, file: !25, line: 245, baseType: !3607, size: 32, offset: 96)
!3607 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3592, file: !25, line: 245, size: 32, elements: !3608)
!3608 = !{!3609, !3610}
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3607, file: !25, line: 246, baseType: !576, size: 32)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3607, file: !25, line: 247, baseType: !3611, size: 32)
!3611 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3602, line: 20, baseType: !3612)
!3612 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3602, line: 18, size: 32, elements: !3613)
!3613 = !{!3614}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3612, file: !3602, line: 19, baseType: !580, size: 32)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3592, file: !25, line: 249, baseType: !722, size: 64, offset: 128)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3592, file: !25, line: 250, baseType: !3617, size: 128, offset: 192)
!3617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1677, line: 13, size: 128, elements: !3618)
!3618 = !{!3619, !3620}
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3617, file: !1677, line: 14, baseType: !1676, size: 64)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3617, file: !1677, line: 15, baseType: !517, size: 64, offset: 64)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3592, file: !25, line: 251, baseType: !3617, size: 128, offset: 320)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3592, file: !25, line: 252, baseType: !3617, size: 128, offset: 448)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3592, file: !25, line: 259, baseType: !1313, size: 64, offset: 576)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !590, file: !25, line: 1988, baseType: !3625, size: 64, offset: 896)
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3626 = !DISubroutineType(types: !3627)
!3627 = !{!120, !3504, !3253, !3628, !630, !18}
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3630, line: 22, size: 1280, elements: !3631)
!3630 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3631 = !{!3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652}
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3629, file: !3630, line: 23, baseType: !630, size: 32)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3629, file: !3630, line: 24, baseType: !523, size: 16, offset: 32)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3629, file: !3630, line: 25, baseType: !18, size: 32, offset: 64)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3629, file: !3630, line: 26, baseType: !1684, size: 32, offset: 96)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3629, file: !3630, line: 27, baseType: !634, size: 64, offset: 128)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3629, file: !3630, line: 28, baseType: !634, size: 64, offset: 192)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3629, file: !3630, line: 41, baseType: !634, size: 64, offset: 256)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3629, file: !3630, line: 42, baseType: !717, size: 32, offset: 320)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3629, file: !3630, line: 43, baseType: !717, size: 32, offset: 352)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3629, file: !3630, line: 44, baseType: !567, size: 32, offset: 384)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3629, file: !3630, line: 45, baseType: !576, size: 32, offset: 416)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3629, file: !3630, line: 46, baseType: !722, size: 64, offset: 448)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3629, file: !3630, line: 47, baseType: !3617, size: 128, offset: 512)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3629, file: !3630, line: 48, baseType: !3617, size: 128, offset: 640)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3629, file: !3630, line: 49, baseType: !3617, size: 128, offset: 768)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3629, file: !3630, line: 50, baseType: !3617, size: 128, offset: 896)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3629, file: !3630, line: 51, baseType: !634, size: 64, offset: 1024)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3629, file: !3630, line: 52, baseType: !634, size: 64, offset: 1088)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3629, file: !3630, line: 53, baseType: !630, size: 32, offset: 1152)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3629, file: !3630, line: 54, baseType: !630, size: 32, offset: 1184)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3629, file: !3630, line: 55, baseType: !634, size: 64, offset: 1216)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !590, file: !25, line: 1990, baseType: !3654, size: 64, offset: 960)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3655, size: 64)
!3655 = !DISubroutineType(types: !3656)
!3656 = !{!513, !596, !481, !528}
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !590, file: !25, line: 1991, baseType: !3658, size: 64, offset: 1024)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = !DISubroutineType(types: !3660)
!3660 = !{!120, !561, !3661, !634, !634}
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !25, line: 55, flags: DIFlagFwdDecl)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !590, file: !25, line: 1993, baseType: !3664, size: 64, offset: 1088)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = !DISubroutineType(types: !3666)
!3666 = !{!120, !561, !120}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !590, file: !25, line: 1994, baseType: !3668, size: 64, offset: 1152)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DISubroutineType(types: !3670)
!3670 = !{!120, !561, !596, !1313, !18, !523}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !590, file: !25, line: 1997, baseType: !3672, size: 64, offset: 1216)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = !DISubroutineType(types: !3674)
!3674 = !{!120, !3504, !561, !1313, !523}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !590, file: !25, line: 1999, baseType: !3676, size: 64, offset: 1280)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{!584, !3504, !596, !120}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !590, file: !25, line: 2001, baseType: !3680, size: 64, offset: 1344)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DISubroutineType(types: !3682)
!3682 = !{!120, !3504, !596, !584, !120}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !590, file: !25, line: 2003, baseType: !3684, size: 64, offset: 1408)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DISubroutineType(types: !3686)
!3686 = !{!120, !3504, !596, !3687}
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !25, line: 76, flags: DIFlagFwdDecl)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !590, file: !25, line: 2005, baseType: !3690, size: 64, offset: 1472)
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64)
!3691 = !DISubroutineType(types: !3692)
!3692 = !{!120, !596, !3687}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !590, file: !25, line: 2006, baseType: !3694, size: 64, offset: 1536)
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = !DISubroutineType(types: !3696)
!3696 = !{!3697, !561}
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !25, line: 3192, size: 192, elements: !3699)
!3699 = !{!3700, !3701}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3698, file: !25, line: 3193, baseType: !981, size: 128)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3698, file: !25, line: 3194, baseType: !630, size: 32, offset: 128)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !562, file: !25, line: 655, baseType: !712, size: 64, offset: 448)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !562, file: !25, line: 656, baseType: !557, size: 64, offset: 512)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !562, file: !25, line: 659, baseType: !376, size: 64, offset: 576)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !562, file: !25, line: 663, baseType: !531, size: 64, offset: 640)
!3706 = !DIDerivedType(tag: DW_TAG_member, scope: !562, file: !25, line: 671, baseType: !3707, size: 32, offset: 704)
!3707 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !562, file: !25, line: 671, size: 32, elements: !3708)
!3708 = !{!3709, !3711}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3707, file: !25, line: 672, baseType: !3710, size: 32)
!3710 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3707, file: !25, line: 673, baseType: !18, size: 32)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !562, file: !25, line: 675, baseType: !717, size: 32, offset: 736)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !562, file: !25, line: 676, baseType: !722, size: 64, offset: 768)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !562, file: !25, line: 677, baseType: !3617, size: 128, offset: 832)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !562, file: !25, line: 678, baseType: !3617, size: 128, offset: 960)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !562, file: !25, line: 679, baseType: !3617, size: 128, offset: 1088)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !562, file: !25, line: 680, baseType: !411, size: 32, offset: 1216)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !562, file: !25, line: 681, baseType: !451, size: 16, offset: 1248)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !562, file: !25, line: 682, baseType: !439, size: 8, offset: 1264)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !562, file: !25, line: 683, baseType: !439, size: 8, offset: 1272)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !562, file: !25, line: 684, baseType: !3326, size: 64, offset: 1280)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !562, file: !25, line: 691, baseType: !531, size: 64, offset: 1344)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !562, file: !25, line: 692, baseType: !1341, size: 320, offset: 1408)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !562, file: !25, line: 694, baseType: !531, size: 64, offset: 1728)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !562, file: !25, line: 695, baseType: !531, size: 64, offset: 1792)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !562, file: !25, line: 697, baseType: !756, size: 128, offset: 1856)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !562, file: !25, line: 698, baseType: !382, size: 128, offset: 1984)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !562, file: !25, line: 707, baseType: !382, size: 128, offset: 2112)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !562, file: !25, line: 708, baseType: !382, size: 128, offset: 2240)
!3730 = !DIDerivedType(tag: DW_TAG_member, scope: !562, file: !25, line: 709, baseType: !3731, size: 128, offset: 2368)
!3731 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !562, file: !25, line: 709, size: 128, elements: !3732)
!3732 = !{!3733, !3734}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3731, file: !25, line: 710, baseType: !752, size: 64)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3731, file: !25, line: 711, baseType: !903, size: 128, align: 64)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !562, file: !25, line: 713, baseType: !851, size: 64, offset: 2496)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !562, file: !25, line: 714, baseType: !851, size: 64, offset: 2560)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !562, file: !25, line: 715, baseType: !431, size: 32, offset: 2624)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !562, file: !25, line: 716, baseType: !431, size: 32, offset: 2656)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !562, file: !25, line: 717, baseType: !431, size: 32, offset: 2688)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !562, file: !25, line: 719, baseType: !431, size: 32, offset: 2720)
!3741 = !DIDerivedType(tag: DW_TAG_member, scope: !562, file: !25, line: 721, baseType: !3742, size: 64, offset: 2752)
!3742 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !562, file: !25, line: 721, size: 64, elements: !3743)
!3743 = !{!3744, !3745}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3742, file: !25, line: 722, baseType: !2951, size: 64)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3742, file: !25, line: 723, baseType: !783, size: 64)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !562, file: !25, line: 725, baseType: !3747, size: 64, offset: 2816)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !25, line: 725, flags: DIFlagFwdDecl)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !562, file: !25, line: 726, baseType: !558, size: 1536, align: 64, offset: 2880)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !562, file: !25, line: 727, baseType: !382, size: 128, offset: 4416)
!3751 = !DIDerivedType(tag: DW_TAG_member, scope: !562, file: !25, line: 728, baseType: !3752, size: 64, offset: 4544)
!3752 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !562, file: !25, line: 728, size: 64, elements: !3753)
!3753 = !{!3754, !3755, !3758, !3759}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3752, file: !25, line: 729, baseType: !2259, size: 64)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3752, file: !25, line: 730, baseType: !3756, size: 64)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !25, line: 730, flags: DIFlagFwdDecl)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3752, file: !25, line: 731, baseType: !481, size: 64)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3752, file: !25, line: 732, baseType: !18, size: 32)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !562, file: !25, line: 735, baseType: !631, size: 32, offset: 4608)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !562, file: !25, line: 738, baseType: !631, size: 32, offset: 4640)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !562, file: !25, line: 739, baseType: !3439, size: 64, offset: 4672)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !562, file: !25, line: 750, baseType: !376, size: 64, offset: 4736)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !558, file: !25, line: 474, baseType: !981, size: 128, offset: 64)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !558, file: !25, line: 475, baseType: !1341, size: 320, offset: 192)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !558, file: !25, line: 476, baseType: !986, size: 32, offset: 512)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !558, file: !25, line: 477, baseType: !431, size: 32, offset: 544)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !558, file: !25, line: 482, baseType: !1169, size: 128, offset: 576)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !558, file: !25, line: 483, baseType: !531, size: 64, offset: 704)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !558, file: !25, line: 484, baseType: !531, size: 64, offset: 768)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !558, file: !25, line: 485, baseType: !3772, size: 64, offset: 832)
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3774)
!3774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !25, line: 404, size: 1280, elements: !3775)
!3775 = !{!3776, !3780, !3850, !3854, !3858, !3864, !3868, !3872, !3877, !3881, !3885, !3889, !3890, !3894, !3898, !3902, !3907, !3911, !3918, !3919}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3774, file: !25, line: 405, baseType: !3777, size: 64)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = !DISubroutineType(types: !3779)
!3779 = !{!120, !2265, !795}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3774, file: !25, line: 406, baseType: !3781, size: 64, offset: 64)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{!120, !1313, !3784}
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !49, line: 293, size: 1536, elements: !3786)
!3786 = !{!3787, !3817, !3831}
!3787 = !DIDerivedType(tag: DW_TAG_member, scope: !3785, file: !49, line: 295, baseType: !3788, size: 512)
!3788 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3785, file: !49, line: 295, size: 512, elements: !3789)
!3789 = !{!3790, !3816}
!3790 = !DIDerivedType(tag: DW_TAG_member, scope: !3788, file: !49, line: 296, baseType: !3791, size: 448)
!3791 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3788, file: !49, line: 296, size: 448, elements: !3792)
!3792 = !{!3793, !3794, !3803, !3804, !3805, !3814, !3815}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3791, file: !49, line: 298, baseType: !531, size: 64)
!3794 = !DIDerivedType(tag: DW_TAG_member, scope: !3791, file: !49, line: 299, baseType: !3795, size: 128, offset: 64)
!3795 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3791, file: !49, line: 299, size: 128, elements: !3796)
!3796 = !{!3797, !3798}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3795, file: !49, line: 300, baseType: !382, size: 128)
!3798 = !DIDerivedType(tag: DW_TAG_member, scope: !3795, file: !49, line: 302, baseType: !3799, size: 128)
!3799 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3795, file: !49, line: 302, size: 128, elements: !3800)
!3800 = !{!3801, !3802}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3799, file: !49, line: 303, baseType: !376, size: 64)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3799, file: !49, line: 305, baseType: !18, size: 32, offset: 64)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3791, file: !49, line: 310, baseType: !557, size: 64, offset: 192)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3791, file: !49, line: 311, baseType: !531, size: 64, offset: 256)
!3805 = !DIDerivedType(tag: DW_TAG_member, scope: !3791, file: !49, line: 312, baseType: !3806, size: 64, offset: 320)
!3806 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3791, file: !49, line: 312, size: 64, elements: !3807)
!3807 = !{!3808, !3809}
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3806, file: !49, line: 313, baseType: !376, size: 64)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3806, file: !49, line: 314, baseType: !3810, size: 64)
!3810 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !49, line: 257, baseType: !3811)
!3811 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !49, line: 255, size: 64, elements: !3812)
!3812 = !{!3813}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3811, file: !49, line: 256, baseType: !531, size: 64)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3791, file: !49, line: 316, baseType: !431, size: 32, offset: 384)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3791, file: !49, line: 317, baseType: !431, size: 32, offset: 416)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3788, file: !49, line: 323, baseType: !2266, size: 512, align: 128)
!3817 = !DIDerivedType(tag: DW_TAG_member, scope: !3785, file: !49, line: 325, baseType: !3818, size: 512, offset: 512)
!3818 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3785, file: !49, line: 325, size: 512, elements: !3819)
!3819 = !{!3820, !3830}
!3820 = !DIDerivedType(tag: DW_TAG_member, scope: !3818, file: !49, line: 326, baseType: !3821, size: 320)
!3821 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3818, file: !49, line: 326, size: 320, elements: !3822)
!3822 = !{!3823, !3824, !3825, !3826, !3827, !3828, !3829}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3821, file: !49, line: 327, baseType: !531, size: 64)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3821, file: !49, line: 328, baseType: !531, size: 64, offset: 64)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3821, file: !49, line: 329, baseType: !531, size: 64, offset: 128)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3821, file: !49, line: 331, baseType: !431, size: 32, offset: 192)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3821, file: !49, line: 332, baseType: !431, size: 32, offset: 224)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3821, file: !49, line: 333, baseType: !431, size: 32, offset: 256)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3821, file: !49, line: 335, baseType: !18, size: 32, offset: 288)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3818, file: !49, line: 339, baseType: !2266, size: 512, align: 128)
!3831 = !DIDerivedType(tag: DW_TAG_member, scope: !3785, file: !49, line: 341, baseType: !3832, size: 512, offset: 1024)
!3832 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3785, file: !49, line: 341, size: 512, elements: !3833)
!3833 = !{!3834, !3843, !3849}
!3834 = !DIDerivedType(tag: DW_TAG_member, scope: !3832, file: !49, line: 342, baseType: !3835, size: 384)
!3835 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3832, file: !49, line: 342, size: 384, elements: !3836)
!3836 = !{!3837, !3838, !3839, !3840, !3841, !3842}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3835, file: !49, line: 343, baseType: !531, size: 64)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3835, file: !49, line: 344, baseType: !531, size: 64, offset: 64)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3835, file: !49, line: 346, baseType: !376, size: 64, offset: 128)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3835, file: !49, line: 347, baseType: !376, size: 64, offset: 192)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3835, file: !49, line: 348, baseType: !376, size: 64, offset: 256)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3835, file: !49, line: 349, baseType: !376, size: 64, offset: 320)
!3843 = !DIDerivedType(tag: DW_TAG_member, scope: !3832, file: !49, line: 352, baseType: !3844, size: 256)
!3844 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3832, file: !49, line: 352, size: 256, elements: !3845)
!3845 = !{!3846, !3847, !3848}
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3844, file: !49, line: 353, baseType: !531, size: 64)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3844, file: !49, line: 354, baseType: !531, size: 64, offset: 64)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3844, file: !49, line: 356, baseType: !382, size: 128, offset: 128)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3832, file: !49, line: 359, baseType: !2266, size: 512, align: 128)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3774, file: !25, line: 409, baseType: !3851, size: 64, offset: 128)
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3852, size: 64)
!3852 = !DISubroutineType(types: !3853)
!3853 = !{!120, !557, !795}
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3774, file: !25, line: 412, baseType: !3855, size: 64, offset: 192)
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = !DISubroutineType(types: !3857)
!3857 = !{!1718, !557, !3784}
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3774, file: !25, line: 414, baseType: !3859, size: 64, offset: 256)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = !DISubroutineType(types: !3861)
!3861 = !{null, !3862}
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3863, size: 64)
!3863 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !25, line: 310, flags: DIFlagFwdDecl)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3774, file: !25, line: 416, baseType: !3865, size: 64, offset: 320)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{!120, !1313, !557, !722, !18, !2662, !3090}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3774, file: !25, line: 419, baseType: !3869, size: 64, offset: 384)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = !DISubroutineType(types: !3871)
!3871 = !{!120, !1313, !557, !722, !18, !18, !2265, !376}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3774, file: !25, line: 424, baseType: !3873, size: 64, offset: 448)
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3874 = !DISubroutineType(types: !3875)
!3875 = !{!3876, !557, !3876}
!3876 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !383, line: 131, baseType: !634)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3774, file: !25, line: 425, baseType: !3878, size: 64, offset: 512)
!3878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3879, size: 64)
!3879 = !DISubroutineType(types: !3880)
!3880 = !{null, !3784, !528, !528}
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3774, file: !25, line: 426, baseType: !3882, size: 64, offset: 576)
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = !DISubroutineType(types: !3884)
!3884 = !{!1718, !3784, !986}
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3774, file: !25, line: 427, baseType: !3886, size: 64, offset: 640)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{null, !3784}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3774, file: !25, line: 428, baseType: !2969, size: 64, offset: 704)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3774, file: !25, line: 433, baseType: !3891, size: 64, offset: 768)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = !DISubroutineType(types: !3893)
!3893 = !{!120, !557, !3784, !3784, !85}
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3774, file: !25, line: 435, baseType: !3895, size: 64, offset: 832)
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3896 = !DISubroutineType(types: !3897)
!3897 = !{!120, !3784}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3774, file: !25, line: 436, baseType: !3899, size: 64, offset: 896)
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = !DISubroutineType(types: !3901)
!3901 = !{!1718, !3784, !528, !528}
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3774, file: !25, line: 438, baseType: !3903, size: 64, offset: 960)
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3904, size: 64)
!3904 = !DISubroutineType(types: !3905)
!3905 = !{null, !3784, !3906, !3906}
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3774, file: !25, line: 439, baseType: !3908, size: 64, offset: 1024)
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3909 = !DISubroutineType(types: !3910)
!3910 = !{!120, !557, !2265}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3774, file: !25, line: 442, baseType: !3912, size: 64, offset: 1088)
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = !DISubroutineType(types: !3914)
!3914 = !{!120, !3915, !1313, !3917}
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3916 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !25, line: 66, flags: DIFlagFwdDecl)
!3917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3876, size: 64)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3774, file: !25, line: 444, baseType: !3082, size: 64, offset: 1152)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3774, file: !25, line: 445, baseType: !3920, size: 64, offset: 1216)
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = !DISubroutineType(types: !3922)
!3922 = !{!120, !2972, !2994}
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !558, file: !25, line: 486, baseType: !531, size: 64, offset: 896)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !558, file: !25, line: 487, baseType: !1341, size: 320, offset: 960)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !558, file: !25, line: 488, baseType: !3125, size: 32, offset: 1280)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !558, file: !25, line: 489, baseType: !411, size: 32, offset: 1312)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !558, file: !25, line: 490, baseType: !382, size: 128, offset: 1344)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !558, file: !25, line: 491, baseType: !376, size: 64, offset: 1472)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !548, file: !507, line: 180, baseType: !3930, size: 64, offset: 320)
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!3931 = !DISubroutineType(types: !3932)
!3932 = !{!513, !1313, !404, !547, !481, !722, !528}
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !548, file: !507, line: 182, baseType: !3930, size: 64, offset: 384)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !548, file: !507, line: 184, baseType: !3935, size: 64, offset: 448)
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = !DISubroutineType(types: !3937)
!3937 = !{!120, !1313, !404, !547, !2375}
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !536, file: !507, line: 90, baseType: !3939, size: 64, offset: 192)
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !536, file: !507, line: 91, baseType: !3941, size: 64, offset: 256)
!3941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !497, file: !397, line: 120, baseType: !3943, size: 64, offset: 192)
!3943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3944, size: 64)
!3944 = !DISubroutineType(types: !3945)
!3945 = !{!3946, !464}
!3946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3947, size: 64)
!3947 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3948)
!3948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !93, line: 39, size: 384, elements: !3949)
!3949 = !{!3950, !3951, !3955, !3959, !3965, !3969}
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3948, file: !93, line: 40, baseType: !92, size: 32)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3948, file: !93, line: 41, baseType: !3952, size: 64, offset: 64)
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = !DISubroutineType(types: !3954)
!3954 = !{!1718}
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3948, file: !93, line: 42, baseType: !3956, size: 64, offset: 128)
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3957 = !DISubroutineType(types: !3958)
!3958 = !{!376}
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3948, file: !93, line: 43, baseType: !3960, size: 64, offset: 192)
!3960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3961, size: 64)
!3961 = !DISubroutineType(types: !3962)
!3962 = !{!1420, !3963}
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !93, line: 19, flags: DIFlagFwdDecl)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3948, file: !93, line: 44, baseType: !3966, size: 64, offset: 256)
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3967 = !DISubroutineType(types: !3968)
!3968 = !{!1420}
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3948, file: !93, line: 45, baseType: !3542, size: 64, offset: 320)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !497, file: !397, line: 121, baseType: !3971, size: 64, offset: 256)
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3972, size: 64)
!3972 = !DISubroutineType(types: !3973)
!3973 = !{!1420, !464}
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !497, file: !397, line: 122, baseType: !3975, size: 64, offset: 320)
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = !DISubroutineType(types: !3977)
!3977 = !{null, !464, !3978, !3979}
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !396, file: !397, line: 70, baseType: !3981, size: 64, offset: 384)
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3982, size: 64)
!3982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !3983, line: 190, size: 1152, elements: !3984)
!3983 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!3984 = !{!3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992, !4064, !4065, !4066, !4067, !4068, !4071}
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3982, file: !3983, line: 191, baseType: !431, size: 32)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3982, file: !3983, line: 192, baseType: !431, size: 32, offset: 32)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3982, file: !3983, line: 202, baseType: !3981, size: 64, offset: 64)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3982, file: !3983, line: 203, baseType: !400, size: 64, offset: 128)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3982, file: !3983, line: 205, baseType: !1042, size: 192, align: 64, offset: 192)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3982, file: !3983, line: 207, baseType: !1420, size: 64, offset: 384)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3982, file: !3983, line: 208, baseType: !18, size: 32, offset: 448)
!3992 = !DIDerivedType(tag: DW_TAG_member, scope: !3982, file: !3983, line: 209, baseType: !3993, size: 256, offset: 512)
!3993 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3982, file: !3983, line: 209, size: 256, elements: !3994)
!3994 = !{!3995, !4004, !4008}
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3993, file: !3983, line: 210, baseType: !3996, size: 256)
!3996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !3983, line: 153, size: 256, elements: !3997)
!3997 = !{!3998, !3999, !4000, !4003}
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3996, file: !3983, line: 154, baseType: !531, size: 64)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3996, file: !3983, line: 156, baseType: !1172, size: 64, offset: 64)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3996, file: !3983, line: 162, baseType: !4001, size: 64, offset: 128)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !3983, line: 162, flags: DIFlagFwdDecl)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3996, file: !3983, line: 167, baseType: !531, size: 64, offset: 192)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3993, file: !3983, line: 211, baseType: !4005, size: 64)
!4005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !3983, line: 170, size: 64, elements: !4006)
!4006 = !{!4007}
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4005, file: !3983, line: 171, baseType: !3981, size: 64)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3993, file: !3983, line: 212, baseType: !4009, size: 256)
!4009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !3983, line: 174, size: 256, elements: !4010)
!4010 = !{!4011, !4059, !4062, !4063}
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4009, file: !3983, line: 175, baseType: !4012, size: 64)
!4012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4013 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4014)
!4014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !3983, line: 271, size: 768, elements: !4015)
!4015 = !{!4016, !4036, !4040, !4041, !4042, !4043, !4044, !4048, !4049, !4050, !4051, !4055}
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4014, file: !3983, line: 276, baseType: !4017, size: 64)
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4018, size: 64)
!4018 = !DISubroutineType(types: !4019)
!4019 = !{!120, !4020}
!4020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4021, size: 64)
!4021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !3983, line: 251, size: 1216, elements: !4022)
!4022 = !{!4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4034, !4035}
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4021, file: !3983, line: 253, baseType: !3981, size: 64)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4021, file: !3983, line: 254, baseType: !1313, size: 64, offset: 64)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4021, file: !3983, line: 255, baseType: !833, size: 64, offset: 128)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4021, file: !3983, line: 256, baseType: !376, size: 64, offset: 192)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4021, file: !3983, line: 259, baseType: !845, size: 256, offset: 256)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4021, file: !3983, line: 260, baseType: !845, size: 256, offset: 512)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4021, file: !3983, line: 261, baseType: !120, size: 32, offset: 768)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4021, file: !3983, line: 262, baseType: !382, size: 128, offset: 832)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4021, file: !3983, line: 263, baseType: !481, size: 64, offset: 960)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4021, file: !3983, line: 265, baseType: !528, size: 64, offset: 1024)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4021, file: !3983, line: 266, baseType: !1718, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4021, file: !3983, line: 267, baseType: !1718, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4021, file: !3983, line: 268, baseType: !2418, size: 64, offset: 1152)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4014, file: !3983, line: 277, baseType: !4037, size: 64, offset: 64)
!4037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4038, size: 64)
!4038 = !DISubroutineType(types: !4039)
!4039 = !{null, !4020}
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4014, file: !3983, line: 290, baseType: !884, size: 64, offset: 128)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4014, file: !3983, line: 292, baseType: !871, size: 64, offset: 192)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4014, file: !3983, line: 293, baseType: !880, size: 64, offset: 256)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4014, file: !3983, line: 294, baseType: !876, size: 64, offset: 320)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4014, file: !3983, line: 296, baseType: !4045, size: 64, offset: 384)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = !DISubroutineType(types: !4047)
!4047 = !{!513, !4020, !481, !528, !722}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4014, file: !3983, line: 306, baseType: !528, size: 64, offset: 448)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4014, file: !3983, line: 313, baseType: !1718, size: 8, offset: 512)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4014, file: !3983, line: 314, baseType: !4045, size: 64, offset: 576)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4014, file: !3983, line: 317, baseType: !4052, size: 64, offset: 640)
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4053, size: 64)
!4053 = !DISubroutineType(types: !4054)
!4054 = !{!3020, !4020, !3022}
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4014, file: !3983, line: 320, baseType: !4056, size: 64, offset: 704)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = !DISubroutineType(types: !4058)
!4058 = !{!120, !4020, !2375}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4009, file: !3983, line: 176, baseType: !4060, size: 64, offset: 64)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !3983, line: 35, flags: DIFlagFwdDecl)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4009, file: !3983, line: 177, baseType: !722, size: 64, offset: 128)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4009, file: !3983, line: 178, baseType: !3981, size: 64, offset: 192)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3982, file: !3983, line: 215, baseType: !376, size: 64, offset: 768)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3982, file: !3983, line: 221, baseType: !634, size: 64, offset: 832)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3982, file: !3983, line: 223, baseType: !451, size: 16, offset: 896)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3982, file: !3983, line: 224, baseType: !523, size: 16, offset: 912)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3982, file: !3983, line: 225, baseType: !4069, size: 64, offset: 960)
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4070, size: 64)
!4070 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !3983, line: 36, flags: DIFlagFwdDecl)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3982, file: !3983, line: 227, baseType: !903, size: 128, align: 64, offset: 1024)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !396, file: !397, line: 71, baseType: !4073, size: 32, offset: 448)
!4073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4074, line: 19, size: 32, elements: !4075)
!4074 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4075 = !{!4076}
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4073, file: !4074, line: 20, baseType: !948, size: 32)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !396, file: !397, line: 73, baseType: !18, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !396, file: !397, line: 74, baseType: !18, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !396, file: !397, line: 75, baseType: !18, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !396, file: !397, line: 76, baseType: !18, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !396, file: !397, line: 77, baseType: !18, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !393, file: !17, line: 47, baseType: !377, size: 64, offset: 512)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !393, file: !17, line: 48, baseType: !404, size: 64, offset: 576)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !393, file: !17, line: 49, baseType: !4085, size: 64, offset: 640)
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4086, size: 64)
!4086 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !17, line: 49, flags: DIFlagFwdDecl)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !393, file: !17, line: 50, baseType: !1579, size: 64, offset: 704)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !378, file: !17, line: 418, baseType: !4089, size: 64, offset: 1408)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !17, line: 53, size: 448, elements: !4091)
!4091 = !{!4092, !4093, !4098, !4102, !4106, !4110}
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4090, file: !17, line: 54, baseType: !519, size: 128)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4090, file: !17, line: 55, baseType: !4094, size: 64, offset: 128)
!4094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4095, size: 64)
!4095 = !DISubroutineType(types: !4096)
!4096 = !{!513, !4089, !4097, !481}
!4097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4090, file: !17, line: 57, baseType: !4099, size: 64, offset: 192)
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4100 = !DISubroutineType(types: !4101)
!4101 = !{!513, !4089, !4097, !400, !528}
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !4090, file: !17, line: 59, baseType: !4103, size: 64, offset: 256)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4104 = !DISubroutineType(types: !4105)
!4105 = !{null, !377, !400}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !4090, file: !17, line: 60, baseType: !4107, size: 64, offset: 320)
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4108 = !DISubroutineType(types: !4109)
!4109 = !{!120, !377}
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4090, file: !17, line: 61, baseType: !4111, size: 64, offset: 384)
!4111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4112, size: 64)
!4112 = !DISubroutineType(types: !4113)
!4113 = !{null, !377}
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !378, file: !17, line: 419, baseType: !400, size: 64, offset: 1472)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !378, file: !17, line: 420, baseType: !400, size: 64, offset: 1536)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !378, file: !17, line: 421, baseType: !404, size: 64, offset: 1600)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !378, file: !17, line: 424, baseType: !4118, size: 64, offset: 1664)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4120)
!4120 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !17, line: 424, flags: DIFlagFwdDecl)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !378, file: !17, line: 425, baseType: !4122, size: 64, offset: 1728)
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4123, size: 64)
!4123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1387)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !378, file: !17, line: 426, baseType: !18, size: 32, offset: 1792)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !378, file: !17, line: 435, baseType: !845, size: 256, offset: 1856)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !378, file: !17, line: 437, baseType: !4127, size: 64, offset: 2112)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !4129, line: 69, size: 320, elements: !4130)
!4129 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!4130 = !{!4131, !4132, !4133, !4150, !4152, !4156, !4157}
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4128, file: !4129, line: 70, baseType: !400, size: 64)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4128, file: !4129, line: 71, baseType: !377, size: 64, offset: 64)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4128, file: !4129, line: 72, baseType: !4134, size: 64, offset: 128)
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4135, size: 64)
!4135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4136)
!4136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !4129, line: 47, size: 256, elements: !4137)
!4137 = !{!4138, !4139, !4145, !4149}
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4136, file: !4129, line: 49, baseType: !18, size: 32)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !4136, file: !4129, line: 51, baseType: !4140, size: 64, offset: 64)
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4141 = !DISubroutineType(types: !4142)
!4142 = !{!120, !400, !4143}
!4143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4144, size: 64)
!4144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4128)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4136, file: !4129, line: 53, baseType: !4146, size: 64, offset: 128)
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4147, size: 64)
!4147 = !DISubroutineType(types: !4148)
!4148 = !{!120, !481, !4143}
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4136, file: !4129, line: 55, baseType: !3542, size: 64, offset: 192)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4128, file: !4129, line: 73, baseType: !4151, size: 16, offset: 192)
!4151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !449)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4128, file: !4129, line: 74, baseType: !4153, size: 8, offset: 208)
!4153 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !440, line: 16, baseType: !4154)
!4154 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !442, line: 20, baseType: !4155)
!4155 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4128, file: !4129, line: 75, baseType: !439, size: 8, offset: 216)
!4157 = !DIDerivedType(tag: DW_TAG_member, scope: !4128, file: !4129, line: 76, baseType: !4158, size: 64, offset: 256)
!4158 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4128, file: !4129, line: 76, size: 64, elements: !4159)
!4159 = !{!4160, !4161, !4168}
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4158, file: !4129, line: 77, baseType: !376, size: 64)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4158, file: !4129, line: 78, baseType: !4162, size: 64)
!4162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4163, size: 64)
!4163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4164)
!4164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !4129, line: 86, size: 128, elements: !4165)
!4165 = !{!4166, !4167}
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !4164, file: !4129, line: 87, baseType: !18, size: 32)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4164, file: !4129, line: 88, baseType: !481, size: 64, offset: 64)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !4158, file: !4129, line: 79, baseType: !4169, size: 64)
!4169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4170, size: 64)
!4170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4171)
!4171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !4129, line: 92, size: 256, elements: !4172)
!4172 = !{!4173, !4174, !4175, !4176, !4177}
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !4171, file: !4129, line: 94, baseType: !18, size: 32)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !4171, file: !4129, line: 95, baseType: !18, size: 32, offset: 32)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4171, file: !4129, line: 96, baseType: !3425, size: 64, offset: 64)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4171, file: !4129, line: 97, baseType: !4134, size: 64, offset: 128)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !4171, file: !4129, line: 98, baseType: !376, size: 64, offset: 192)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !378, file: !17, line: 438, baseType: !18, size: 32, offset: 2176)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !378, file: !17, line: 441, baseType: !18, size: 32, offset: 2208)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !378, file: !17, line: 442, baseType: !4118, size: 64, offset: 2240)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !378, file: !17, line: 443, baseType: !4122, size: 64, offset: 2304)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !378, file: !17, line: 444, baseType: !1718, size: 8, offset: 2368)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !378, file: !17, line: 451, baseType: !1718, size: 8, offset: 2376)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !378, file: !17, line: 454, baseType: !18, size: 32, offset: 2400)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !378, file: !17, line: 455, baseType: !4186, size: 64, offset: 2432)
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4187, size: 64)
!4187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !4188, line: 23, size: 96, elements: !4189)
!4188 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!4189 = !{!4190, !4191, !4192}
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4187, file: !4188, line: 24, baseType: !120, size: 32)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !4187, file: !4188, line: 24, baseType: !120, size: 32, offset: 32)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4187, file: !4188, line: 24, baseType: !120, size: 32, offset: 64)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !378, file: !17, line: 458, baseType: !4194, size: 64, offset: 2496)
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4195, size: 64)
!4195 = !DISubroutineType(types: !4196)
!4196 = !{!120}
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !378, file: !17, line: 460, baseType: !4198, size: 4032, align: 512, offset: 2560)
!4198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4199, size: 4032, elements: !4213)
!4199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !17, line: 362, size: 576, elements: !4200)
!4200 = !{!4201, !4202, !4203}
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4199, file: !17, line: 363, baseType: !376, size: 64)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4199, file: !17, line: 364, baseType: !18, size: 32, offset: 64)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !4199, file: !17, line: 367, baseType: !4204, size: 448, offset: 128)
!4204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !17, line: 319, size: 448, elements: !4205)
!4205 = !{!4206, !4207}
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4204, file: !17, line: 320, baseType: !377, size: 64)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4204, file: !17, line: 321, baseType: !4208, size: 384, offset: 64)
!4208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !4209, line: 40, size: 384, elements: !4210)
!4209 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!4210 = !{!4211}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4208, file: !4209, line: 41, baseType: !4212, size: 384, align: 64)
!4212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1042, size: 384, align: 64, elements: !1919)
!4213 = !{!4214}
!4214 = !DISubrange(count: 7)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !378, file: !17, line: 463, baseType: !4216, size: 192, offset: 6592)
!4216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !4217, line: 8, size: 192, elements: !4218)
!4217 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!4218 = !{!4219, !4220, !4221}
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !4216, file: !4217, line: 10, baseType: !18, size: 32)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !4216, file: !4217, line: 11, baseType: !827, size: 64, offset: 64)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !4216, file: !4217, line: 12, baseType: !4222, size: 64, offset: 128)
!4222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4223, size: 64)
!4223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !4224, line: 59, size: 48, elements: !4225)
!4224 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!4225 = !{!4226, !4227, !4228, !4229, !4230, !4231}
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !4223, file: !4224, line: 60, baseType: !1437, size: 16)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !4223, file: !4224, line: 61, baseType: !1437, size: 16, offset: 16)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !4223, file: !4224, line: 63, baseType: !18, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !4223, file: !4224, line: 64, baseType: !18, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4223, file: !4224, line: 65, baseType: !18, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4223, file: !4224, line: 66, baseType: !18, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !378, file: !17, line: 465, baseType: !531, size: 64, offset: 6784)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !378, file: !17, line: 469, baseType: !18, size: 32, offset: 6848)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !378, file: !17, line: 470, baseType: !382, size: 128, offset: 6912)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !378, file: !17, line: 471, baseType: !4236, size: 64, offset: 7040)
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !4238, line: 33, size: 96, elements: !4239)
!4238 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!4239 = !{!4240, !4241, !4242, !4243}
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !4237, file: !4238, line: 37, baseType: !120, size: 32)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !4237, file: !4238, line: 43, baseType: !120, size: 32, offset: 32)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !4237, file: !4238, line: 45, baseType: !451, size: 16, offset: 64)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4237, file: !4238, line: 47, baseType: !451, size: 16, offset: 80)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !378, file: !17, line: 476, baseType: !4245, size: 64, offset: 7104)
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4246, size: 64)
!4246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !17, line: 378, size: 256, elements: !4247)
!4247 = !{!4248, !4264, !4265, !4266}
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !4246, file: !17, line: 379, baseType: !4249, size: 64)
!4249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4250, size: 64)
!4250 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !4251, line: 204, baseType: !4252)
!4251 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!4252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !4251, line: 197, size: 192, elements: !4253)
!4253 = !{!4254, !4256, !4257, !4258, !4260, !4262}
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !4252, file: !4251, line: 198, baseType: !4255, size: 32)
!4255 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !4251, line: 21, baseType: !631)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !4252, file: !4251, line: 199, baseType: !443, size: 8, offset: 32)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !4252, file: !4251, line: 200, baseType: !443, size: 8, offset: 40)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !4252, file: !4251, line: 201, baseType: !4259, size: 16, offset: 48)
!4259 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !4251, line: 17, baseType: !450)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !4252, file: !4251, line: 202, baseType: !4261, size: 64, offset: 64)
!4261 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !4251, line: 16, baseType: !635)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !4252, file: !4251, line: 203, baseType: !4263, size: 64, offset: 128)
!4263 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !4251, line: 22, baseType: !635)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !4246, file: !17, line: 380, baseType: !18, size: 32, offset: 64)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !4246, file: !17, line: 381, baseType: !481, size: 64, offset: 128)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !4246, file: !17, line: 382, baseType: !481, size: 64, offset: 192)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !378, file: !17, line: 477, baseType: !4246, size: 256, offset: 7168)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !378, file: !17, line: 480, baseType: !4269, size: 64, offset: 7424)
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4270 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !17, line: 480, flags: DIFlagFwdDecl)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !378, file: !17, line: 483, baseType: !4272, size: 64, offset: 7488)
!4272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4273, size: 64)
!4273 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !17, line: 483, flags: DIFlagFwdDecl)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !378, file: !17, line: 488, baseType: !481, size: 64, offset: 7552)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !378, file: !17, line: 492, baseType: !376, size: 64, offset: 7616)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !378, file: !17, line: 493, baseType: !18, size: 32, offset: 7680)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !378, file: !17, line: 495, baseType: !376, size: 64, offset: 7744)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !378, file: !17, line: 496, baseType: !18, size: 32, offset: 7808)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !378, file: !17, line: 499, baseType: !18, size: 32, offset: 7840)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !378, file: !17, line: 500, baseType: !4281, size: 64, offset: 7872)
!4281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4282, size: 64)
!4282 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !4283, line: 45, baseType: !4284)
!4283 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!4284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !120)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !378, file: !17, line: 503, baseType: !18, size: 32, offset: 7936)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !378, file: !17, line: 504, baseType: !4287, size: 64, offset: 8000)
!4287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4288, size: 64)
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4289, size: 64)
!4289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !4290, line: 96, size: 192, elements: !4291)
!4290 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!4291 = !{!4292, !4293, !4336, !4338}
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !4289, file: !4290, line: 97, baseType: !18, size: 32)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !4289, file: !4290, line: 98, baseType: !4294, size: 64, offset: 64)
!4294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4295, size: 64)
!4295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !4290, line: 24, size: 3072, elements: !4296)
!4296 = !{!4297, !4299, !4300, !4301, !4302, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4333, !4334, !4335}
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !4295, file: !4290, line: 26, baseType: !4298, size: 128)
!4298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !849, size: 128, elements: !1919)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !4295, file: !4290, line: 27, baseType: !4298, size: 128, offset: 128)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !4295, file: !4290, line: 28, baseType: !120, size: 32, offset: 256)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4295, file: !4290, line: 31, baseType: !411, size: 32, align: 512, offset: 512)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !4295, file: !4290, line: 32, baseType: !4303, size: 960, offset: 576)
!4303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !4304, line: 206, size: 960, elements: !4305)
!4304 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!4305 = !{!4306, !4307, !4310, !4312, !4313, !4315}
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4303, file: !4304, line: 207, baseType: !906, size: 64)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !4303, file: !4304, line: 208, baseType: !4308, size: 256, offset: 64)
!4308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4309, size: 256, elements: !5)
!4309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !4303, file: !4304, line: 209, baseType: !4311, size: 256, offset: 320)
!4311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !531, size: 256, elements: !5)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4303, file: !4304, line: 213, baseType: !517, size: 64, offset: 576)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !4303, file: !4304, line: 215, baseType: !4314, size: 256, offset: 640)
!4314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, size: 256, elements: !5)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4303, file: !4304, line: 216, baseType: !439, size: 8, offset: 896)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4295, file: !4290, line: 33, baseType: !531, size: 64, offset: 1536)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4295, file: !4290, line: 34, baseType: !531, size: 64, offset: 1600)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !4295, file: !4290, line: 35, baseType: !1718, size: 8, offset: 1664)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !4295, file: !4290, line: 36, baseType: !2641, size: 320, offset: 1728)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4295, file: !4290, line: 37, baseType: !1462, size: 256, offset: 2048)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !4295, file: !4290, line: 38, baseType: !903, size: 128, align: 64, offset: 2304)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !4295, file: !4290, line: 39, baseType: !4323, size: 64, offset: 2432)
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !4290, line: 49, size: 768, elements: !4325)
!4325 = !{!4326, !4327, !4328, !4329, !4330, !4331, !4332}
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4324, file: !4290, line: 50, baseType: !411, size: 32)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !4324, file: !4290, line: 51, baseType: !4311, size: 256, offset: 64)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !4324, file: !4290, line: 53, baseType: !4311, size: 256, offset: 320)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4324, file: !4290, line: 54, baseType: !531, size: 64, offset: 576)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !4324, file: !4290, line: 55, baseType: !4323, size: 64, offset: 640)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !4324, file: !4290, line: 56, baseType: !120, size: 32, offset: 704)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !4324, file: !4290, line: 57, baseType: !120, size: 32, offset: 736)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !4295, file: !4290, line: 40, baseType: !531, size: 64, offset: 2496)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4295, file: !4290, line: 42, baseType: !120, size: 32, offset: 2560)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !4295, file: !4290, line: 43, baseType: !4288, size: 64, offset: 2624)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !4289, file: !4290, line: 99, baseType: !4337, offset: 128)
!4337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !763, line: 211, elements: !764)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !4289, file: !4290, line: 100, baseType: !4339, size: 64, offset: 128)
!4339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4340, size: 64)
!4340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !4290, line: 63, size: 3008, elements: !4341)
!4341 = !{!4342, !4343, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4359, !4360, !4361, !4362, !4363, !4364, !4371}
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4340, file: !4290, line: 64, baseType: !4323, size: 64)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4340, file: !4290, line: 65, baseType: !4344, size: 192, offset: 64)
!4344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4323, size: 192, elements: !482)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !4340, file: !4290, line: 67, baseType: !120, size: 32, offset: 256)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !4340, file: !4290, line: 68, baseType: !845, size: 256, offset: 320)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4340, file: !4290, line: 69, baseType: !411, size: 32, offset: 576)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !4340, file: !4290, line: 70, baseType: !845, size: 256, offset: 640)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !4340, file: !4290, line: 71, baseType: !531, size: 64, offset: 896)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4340, file: !4290, line: 72, baseType: !531, size: 64, offset: 960)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4340, file: !4290, line: 73, baseType: !531, size: 64, offset: 1024)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !4340, file: !4290, line: 74, baseType: !531, size: 64, offset: 1088)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !4340, file: !4290, line: 75, baseType: !531, size: 64, offset: 1152)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !4340, file: !4290, line: 76, baseType: !531, size: 64, offset: 1216)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !4340, file: !4290, line: 77, baseType: !531, size: 64, offset: 1280)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !4340, file: !4290, line: 78, baseType: !531, size: 64, offset: 1344)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !4340, file: !4290, line: 79, baseType: !1718, size: 8, offset: 1408)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !4340, file: !4290, line: 80, baseType: !531, size: 64, offset: 1472)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !4340, file: !4290, line: 81, baseType: !845, size: 256, offset: 1536)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !4340, file: !4290, line: 82, baseType: !1580, size: 256, offset: 1792)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !4340, file: !4290, line: 84, baseType: !431, size: 32, offset: 2048)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !4340, file: !4290, line: 87, baseType: !531, size: 64, offset: 2112)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !4340, file: !4290, line: 88, baseType: !531, size: 64, offset: 2176)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4340, file: !4290, line: 89, baseType: !4365, size: 704, offset: 2240)
!4365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1463, line: 111, size: 704, elements: !4366)
!4366 = !{!4367, !4368, !4369, !4370}
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4365, file: !1463, line: 112, baseType: !1462, size: 256)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4365, file: !1463, line: 113, baseType: !2641, size: 320, offset: 256)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4365, file: !1463, line: 116, baseType: !3474, size: 64, offset: 576)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4365, file: !1463, line: 117, baseType: !120, size: 32, offset: 640)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !4340, file: !4290, line: 90, baseType: !4288, size: 64, offset: 2944)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !378, file: !17, line: 515, baseType: !4373, size: 64, offset: 8064)
!4373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4374, size: 64)
!4374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !4375, line: 117, size: 128, elements: !4376)
!4375 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!4376 = !{!4377, !4378, !4379}
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4374, file: !4375, line: 118, baseType: !1387, size: 32)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !4374, file: !4375, line: 119, baseType: !1387, size: 32, offset: 32)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4374, file: !4375, line: 120, baseType: !517, size: 64, offset: 64)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !378, file: !17, line: 516, baseType: !18, size: 32, offset: 8128)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !378, file: !17, line: 519, baseType: !18, size: 32, offset: 8160)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !378, file: !17, line: 520, baseType: !4383, size: 64, offset: 8192)
!4383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !378, file: !17, line: 523, baseType: !4385, size: 64, offset: 8256)
!4385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4386, size: 64)
!4386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4387, size: 64)
!4387 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !17, line: 523, flags: DIFlagFwdDecl)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !378, file: !17, line: 524, baseType: !18, size: 32, offset: 8320)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !378, file: !17, line: 525, baseType: !4390, size: 64, offset: 8384)
!4390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4391, size: 64)
!4391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4392, size: 64)
!4392 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !17, line: 525, flags: DIFlagFwdDecl)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !378, file: !17, line: 526, baseType: !18, size: 32, offset: 8448)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !378, file: !17, line: 533, baseType: !376, size: 64, offset: 8512)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !378, file: !17, line: 534, baseType: !18, size: 32, offset: 8576)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !378, file: !17, line: 535, baseType: !4397, size: 64, offset: 8640)
!4397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !378, file: !17, line: 536, baseType: !18, size: 32, offset: 8704)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !378, file: !17, line: 539, baseType: !120, size: 32, offset: 8736)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !378, file: !17, line: 540, baseType: !4401, size: 64, offset: 8768)
!4401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4402, size: 64)
!4402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !4403, line: 32, size: 64, elements: !4404)
!4403 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!4404 = !{!4405, !4406}
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4402, file: !4403, line: 33, baseType: !1387, size: 32)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4402, file: !4403, line: 34, baseType: !1387, size: 32, offset: 32)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !378, file: !17, line: 563, baseType: !382, size: 128, offset: 8832)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !378, file: !17, line: 565, baseType: !382, size: 128, offset: 8960)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !378, file: !17, line: 568, baseType: !4410, size: 64, offset: 9088)
!4410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !378, file: !17, line: 570, baseType: !431, size: 32, offset: 9152)
!4412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4413, size: 64)
!4413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4414)
!4414 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !120)
!4415 = !{!0, !7, !4416, !4421, !4426, !12, !4428, !4433, !4435, !4437, !4439, !4442, !4447, !4449, !4452, !4457, !4463}
!4416 = !DIGlobalVariableExpression(var: !4417, expr: !DIExpression())
!4417 = distinct !DIGlobalVariable(scope: null, file: !2, line: 379, type: !4418, isLocal: true, isDefinition: true)
!4418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !4419)
!4419 = !{!4420}
!4420 = !DISubrange(count: 5)
!4421 = !DIGlobalVariableExpression(var: !4422, expr: !DIExpression())
!4422 = distinct !DIGlobalVariable(scope: null, file: !2, line: 419, type: !4423, isLocal: true, isDefinition: true)
!4423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !4424)
!4424 = !{!4425}
!4425 = !DISubrange(count: 51)
!4426 = !DIGlobalVariableExpression(var: !4427, expr: !DIExpression())
!4427 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_crtc_add_crc_entry309", scope: !14, file: !2, line: 438, type: !376, isLocal: true, isDefinition: true)
!4428 = !DIGlobalVariableExpression(var: !4429, expr: !DIExpression())
!4429 = distinct !DIGlobalVariable(scope: null, file: !2, line: 134, type: !4430, isLocal: true, isDefinition: true)
!4430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !4431)
!4431 = !{!4432}
!4432 = !DISubrange(count: 44)
!4433 = !DIGlobalVariableExpression(var: !4434, expr: !DIExpression())
!4434 = distinct !DIGlobalVariable(scope: null, file: !2, line: 101, type: !3, isLocal: true, isDefinition: true)
!4435 = !DIGlobalVariableExpression(var: !4436, expr: !DIExpression())
!4436 = distinct !DIGlobalVariable(scope: null, file: !2, line: 103, type: !4418, isLocal: true, isDefinition: true)
!4437 = !DIGlobalVariableExpression(var: !4438, expr: !DIExpression())
!4438 = distinct !DIGlobalVariable(name: "drm_crtc_crc_data_fops", scope: !14, file: !2, line: 360, type: !2952, isLocal: true, isDefinition: true)
!4439 = !DIGlobalVariableExpression(var: !4440, expr: !DIExpression())
!4440 = distinct !DIGlobalVariable(scope: null, file: !2, line: 330, type: !4441, isLocal: true, isDefinition: true)
!4441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !4213)
!4442 = !DIGlobalVariableExpression(var: !4443, expr: !DIExpression())
!4443 = distinct !DIGlobalVariable(scope: null, file: !2, line: 332, type: !4444, isLocal: true, isDefinition: true)
!4444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !4445)
!4445 = !{!4446}
!4446 = !DISubrange(count: 11)
!4447 = !DIGlobalVariableExpression(var: !4448, expr: !DIExpression())
!4448 = distinct !DIGlobalVariable(scope: null, file: !2, line: 335, type: !9, isLocal: true, isDefinition: true)
!4449 = !DIGlobalVariableExpression(var: !4450, expr: !DIExpression())
!4450 = distinct !DIGlobalVariable(scope: null, file: !2, line: 336, type: !4451, isLocal: true, isDefinition: true)
!4451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !1919)
!4452 = !DIGlobalVariableExpression(var: !4453, expr: !DIExpression())
!4453 = distinct !DIGlobalVariable(scope: null, file: !2, line: 180, type: !4454, isLocal: true, isDefinition: true)
!4454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !4455)
!4455 = !{!4456}
!4456 = !DISubrange(count: 34)
!4457 = !DIGlobalVariableExpression(var: !4458, expr: !DIExpression())
!4458 = distinct !DIGlobalVariable(scope: null, file: !4459, line: 249, type: !4460, isLocal: true, isDefinition: true)
!4459 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!4460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !4461)
!4461 = !{!4462}
!4462 = !DISubrange(count: 28)
!4463 = !DIGlobalVariableExpression(var: !4464, expr: !DIExpression())
!4464 = distinct !DIGlobalVariable(scope: null, file: !366, line: 480, type: !4465, isLocal: true, isDefinition: true)
!4465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !4466)
!4466 = !{!4467}
!4467 = !DISubrange(count: 21)
!4468 = !{i32 7, !"Dwarf Version", i32 5}
!4469 = !{i32 2, !"Debug Info Version", i32 3}
!4470 = !{i32 1, !"wchar_size", i32 2}
!4471 = !{i32 8, !"cf-protection-branch", i32 1}
!4472 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4473 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4474 = !{i32 1, !"Code Model", i32 2}
!4475 = !{i32 1, !"override-stack-alignment", i32 8}
!4476 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4477 = distinct !DISubprogram(name: "drm_debugfs_crtc_crc_add", scope: !2, file: !2, line: 368, type: !4478, scopeLine: 369, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6219)
!4478 = !DISubroutineType(types: !4479)
!4479 = !{null, !4480}
!4480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4481, size: 64)
!4481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc", file: !4482, line: 932, size: 8064, elements: !4483)
!4482 = !DIFile(filename: "./include/drm/drm_crtc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99ea98da3699d3be12a3062031f96ca9")
!4483 = !{!4484, !5522, !5523, !5524, !5525, !5526, !5527, !5664, !5665, !5666, !5667, !5668, !5669, !5670, !5671, !5672, !5673, !6177, !6178, !6180, !6184, !6185, !6186, !6187, !6188, !6189, !6190, !6212, !6213, !6214, !6215, !6216}
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4481, file: !4482, line: 934, baseType: !4485, size: 64)
!4485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4486, size: 64)
!4486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_device", file: !213, line: 50, size: 12736, elements: !4487)
!4487 = !{!4488, !4489, !4490, !4941, !4947, !5168, !5169, !5170, !5171, !5172, !5173, !5174, !5175, !5176, !5177, !5178, !5179, !5180, !5181, !5182, !5183, !5184, !5185, !5186, !5187, !5267, !5268, !5269, !5270, !5271, !5272, !5273, !5508, !5509, !5510, !5513, !5516, !5517, !5520, !5521}
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "if_version", scope: !4486, file: !213, line: 52, baseType: !120, size: 32)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4486, file: !213, line: 55, baseType: !4073, size: 32, offset: 32)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4486, file: !213, line: 58, baseType: !4491, size: 64, offset: 64)
!4491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4492, size: 64)
!4492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !105, line: 705, size: 5824, elements: !4493)
!4493 = !{!4494, !4495, !4496, !4499, !4500, !4553, !4623, !4624, !4625, !4626, !4627, !4634, !4726, !4739, !4749, !4753, !4755, !4756, !4757, !4761, !4768, !4769, !4772, !4775, !4779, !4883, !4884, !4885, !4886, !4887, !4888, !4918, !4919, !4920, !4923, !4926, !4935, !4936, !4937, !4938, !4939, !4940}
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4492, file: !105, line: 706, baseType: !396, size: 512)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4492, file: !105, line: 707, baseType: !4491, size: 64, offset: 512)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4492, file: !105, line: 709, baseType: !4497, size: 64, offset: 576)
!4497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4498, size: 64)
!4498 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !105, line: 37, flags: DIFlagFwdDecl)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4492, file: !105, line: 711, baseType: !400, size: 64, offset: 640)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4492, file: !105, line: 712, baseType: !4501, size: 64, offset: 704)
!4501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4502, size: 64)
!4502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4503)
!4503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !105, line: 89, size: 384, elements: !4504)
!4504 = !{!4505, !4506, !4507, !4513, !4518, !4522}
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4503, file: !105, line: 90, baseType: !400, size: 64)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4503, file: !105, line: 91, baseType: !533, size: 64, offset: 64)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4503, file: !105, line: 92, baseType: !4508, size: 64, offset: 128)
!4508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4509, size: 64)
!4509 = !DISubroutineType(types: !4510)
!4510 = !{!120, !4511, !476}
!4511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4512, size: 64)
!4512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4492)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4503, file: !105, line: 93, baseType: !4514, size: 64, offset: 192)
!4514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4515, size: 64)
!4515 = !DISubroutineType(types: !4516)
!4516 = !{!481, !4511, !4517, !3978, !3979}
!4517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4503, file: !105, line: 95, baseType: !4519, size: 64, offset: 256)
!4519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4520, size: 64)
!4520 = !DISubroutineType(types: !4521)
!4521 = !{null, !4491}
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4503, file: !105, line: 97, baseType: !4523, size: 64, offset: 320)
!4523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4524, size: 64)
!4524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4525)
!4525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !112, line: 286, size: 1472, elements: !4526)
!4526 = !{!4527, !4531, !4532, !4533, !4534, !4535, !4536, !4537, !4538, !4539, !4540, !4541, !4542, !4543, !4544, !4545, !4546, !4547, !4548, !4549, !4550, !4551, !4552}
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4525, file: !112, line: 287, baseType: !4528, size: 64)
!4528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4529, size: 64)
!4529 = !DISubroutineType(types: !4530)
!4530 = !{!120, !4491}
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4525, file: !112, line: 288, baseType: !4519, size: 64, offset: 64)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4525, file: !112, line: 289, baseType: !4528, size: 64, offset: 128)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4525, file: !112, line: 290, baseType: !4528, size: 64, offset: 192)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4525, file: !112, line: 291, baseType: !4528, size: 64, offset: 256)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4525, file: !112, line: 292, baseType: !4528, size: 64, offset: 320)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4525, file: !112, line: 293, baseType: !4528, size: 64, offset: 384)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4525, file: !112, line: 294, baseType: !4528, size: 64, offset: 448)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4525, file: !112, line: 295, baseType: !4528, size: 64, offset: 512)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4525, file: !112, line: 296, baseType: !4528, size: 64, offset: 576)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4525, file: !112, line: 297, baseType: !4528, size: 64, offset: 640)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4525, file: !112, line: 298, baseType: !4528, size: 64, offset: 704)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4525, file: !112, line: 299, baseType: !4528, size: 64, offset: 768)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4525, file: !112, line: 300, baseType: !4528, size: 64, offset: 832)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4525, file: !112, line: 301, baseType: !4528, size: 64, offset: 896)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4525, file: !112, line: 302, baseType: !4528, size: 64, offset: 960)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4525, file: !112, line: 303, baseType: !4528, size: 64, offset: 1024)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4525, file: !112, line: 304, baseType: !4528, size: 64, offset: 1088)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4525, file: !112, line: 305, baseType: !4528, size: 64, offset: 1152)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4525, file: !112, line: 306, baseType: !4528, size: 64, offset: 1216)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4525, file: !112, line: 307, baseType: !4528, size: 64, offset: 1280)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4525, file: !112, line: 308, baseType: !4528, size: 64, offset: 1344)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4525, file: !112, line: 309, baseType: !4528, size: 64, offset: 1408)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4492, file: !105, line: 714, baseType: !4554, size: 64, offset: 768)
!4554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4555, size: 64)
!4555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4556)
!4556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4557, line: 80, size: 1344, elements: !4558)
!4557 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4558 = !{!4559, !4560, !4561, !4562, !4563, !4564, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4615, !4616, !4617, !4618, !4622}
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4556, file: !4557, line: 81, baseType: !400, size: 64)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4556, file: !4557, line: 82, baseType: !400, size: 64, offset: 64)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4556, file: !4557, line: 83, baseType: !533, size: 64, offset: 128)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4556, file: !4557, line: 84, baseType: !533, size: 64, offset: 192)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4556, file: !4557, line: 85, baseType: !533, size: 64, offset: 256)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4556, file: !4557, line: 87, baseType: !4565, size: 64, offset: 320)
!4565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4566, size: 64)
!4566 = !DISubroutineType(types: !4567)
!4567 = !{!120, !4491, !4568}
!4568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4569, size: 64)
!4569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !99, line: 96, size: 1152, elements: !4570)
!4570 = !{!4571, !4572, !4573, !4574, !4575, !4576, !4577, !4581, !4585, !4586, !4587, !4588, !4589, !4597, !4598, !4599, !4600, !4601, !4602}
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4569, file: !99, line: 97, baseType: !400, size: 64)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4569, file: !99, line: 98, baseType: !4554, size: 64, offset: 64)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4569, file: !99, line: 100, baseType: !377, size: 64, offset: 128)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4569, file: !99, line: 101, baseType: !400, size: 64, offset: 192)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4569, file: !99, line: 103, baseType: !1718, size: 8, offset: 256)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4569, file: !99, line: 104, baseType: !98, size: 32, offset: 288)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4569, file: !99, line: 106, baseType: !4578, size: 64, offset: 320)
!4578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4579, size: 64)
!4579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4580)
!4580 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !99, line: 106, flags: DIFlagFwdDecl)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4569, file: !99, line: 107, baseType: !4582, size: 64, offset: 384)
!4582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4583, size: 64)
!4583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4584)
!4584 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !99, line: 107, flags: DIFlagFwdDecl)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4569, file: !99, line: 109, baseType: !4528, size: 64, offset: 448)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4569, file: !99, line: 110, baseType: !4519, size: 64, offset: 512)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4569, file: !99, line: 111, baseType: !4528, size: 64, offset: 576)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4569, file: !99, line: 112, baseType: !4519, size: 64, offset: 640)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4569, file: !99, line: 113, baseType: !4590, size: 64, offset: 704)
!4590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4591, size: 64)
!4591 = !DISubroutineType(types: !4592)
!4592 = !{!120, !4491, !4593}
!4593 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !112, line: 60, baseType: !4594)
!4594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !112, line: 58, size: 32, elements: !4595)
!4595 = !{!4596}
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4594, file: !112, line: 59, baseType: !120, size: 32)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4569, file: !99, line: 114, baseType: !4528, size: 64, offset: 768)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4569, file: !99, line: 115, baseType: !533, size: 64, offset: 832)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4569, file: !99, line: 116, baseType: !533, size: 64, offset: 896)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4569, file: !99, line: 118, baseType: !4523, size: 64, offset: 960)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4569, file: !99, line: 119, baseType: !4519, size: 64, offset: 1024)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4569, file: !99, line: 121, baseType: !4603, size: 64, offset: 1088)
!4603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4604, size: 64)
!4604 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !99, line: 121, flags: DIFlagFwdDecl)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4556, file: !4557, line: 88, baseType: !4508, size: 64, offset: 384)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4556, file: !4557, line: 89, baseType: !4528, size: 64, offset: 448)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4556, file: !4557, line: 90, baseType: !4519, size: 64, offset: 512)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4556, file: !4557, line: 91, baseType: !4519, size: 64, offset: 576)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4556, file: !4557, line: 92, baseType: !4519, size: 64, offset: 640)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4556, file: !4557, line: 94, baseType: !4528, size: 64, offset: 704)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4556, file: !4557, line: 95, baseType: !4528, size: 64, offset: 768)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4556, file: !4557, line: 97, baseType: !4590, size: 64, offset: 832)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4556, file: !4557, line: 98, baseType: !4528, size: 64, offset: 896)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4556, file: !4557, line: 100, baseType: !4528, size: 64, offset: 960)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4556, file: !4557, line: 102, baseType: !4528, size: 64, offset: 1024)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4556, file: !4557, line: 103, baseType: !4519, size: 64, offset: 1088)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4556, file: !4557, line: 105, baseType: !4523, size: 64, offset: 1152)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4556, file: !4557, line: 107, baseType: !4619, size: 64, offset: 1216)
!4619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4620, size: 64)
!4620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4621)
!4621 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4557, line: 107, flags: DIFlagFwdDecl)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4556, file: !4557, line: 109, baseType: !1718, size: 8, offset: 1280)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4492, file: !105, line: 715, baseType: !4568, size: 64, offset: 832)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4492, file: !105, line: 717, baseType: !376, size: 64, offset: 896)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4492, file: !105, line: 719, baseType: !376, size: 64, offset: 960)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4492, file: !105, line: 721, baseType: !845, size: 256, offset: 1024)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4492, file: !105, line: 725, baseType: !4628, size: 448, offset: 1280)
!4628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !105, line: 517, size: 448, elements: !4629)
!4629 = !{!4630, !4631, !4632, !4633}
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4628, file: !105, line: 518, baseType: !382, size: 128)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4628, file: !105, line: 519, baseType: !382, size: 128, offset: 128)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4628, file: !105, line: 520, baseType: !382, size: 128, offset: 256)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4628, file: !105, line: 521, baseType: !104, size: 32, offset: 384)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4492, file: !105, line: 726, baseType: !4635, size: 2496, offset: 1728)
!4635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !112, line: 663, size: 2496, elements: !4636)
!4636 = !{!4637, !4638, !4639, !4640, !4641, !4642, !4643, !4644, !4645, !4646, !4647, !4648, !4649, !4650, !4651, !4652, !4679, !4680, !4681, !4682, !4683, !4684, !4685, !4686, !4687, !4688, !4689, !4690, !4691, !4692, !4693, !4694, !4695, !4696, !4697, !4698, !4699, !4700, !4701, !4702, !4703, !4704, !4705, !4706, !4707, !4708, !4709, !4710, !4711, !4712, !4713, !4719, !4723}
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4635, file: !112, line: 664, baseType: !4593, size: 32)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4635, file: !112, line: 665, baseType: !18, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4635, file: !112, line: 666, baseType: !18, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4635, file: !112, line: 667, baseType: !1718, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4635, file: !112, line: 668, baseType: !1718, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4635, file: !112, line: 669, baseType: !1718, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4635, file: !112, line: 670, baseType: !1718, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4635, file: !112, line: 671, baseType: !1718, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4635, file: !112, line: 672, baseType: !1718, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4635, file: !112, line: 673, baseType: !1718, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4635, file: !112, line: 674, baseType: !1718, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4635, file: !112, line: 675, baseType: !630, size: 32, offset: 64)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4635, file: !112, line: 676, baseType: !411, size: 32, offset: 96)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4635, file: !112, line: 678, baseType: !382, size: 128, offset: 128)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4635, file: !112, line: 679, baseType: !1580, size: 256, offset: 256)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4635, file: !112, line: 680, baseType: !4653, size: 64, offset: 512)
!4653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4654, size: 64)
!4654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4655, line: 43, size: 1536, elements: !4656)
!4655 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4656 = !{!4657, !4658, !4659, !4660, !4661, !4664, !4665, !4666, !4667, !4668, !4669, !4670, !4671, !4672, !4673, !4674, !4675, !4676, !4677, !4678}
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4654, file: !4655, line: 44, baseType: !400, size: 64)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4654, file: !4655, line: 45, baseType: !120, size: 32, offset: 64)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4654, file: !4655, line: 46, baseType: !382, size: 128, offset: 128)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4654, file: !4655, line: 47, baseType: !411, size: 32, offset: 256)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4654, file: !4655, line: 48, baseType: !4662, size: 64, offset: 320)
!4662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4663, size: 64)
!4663 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !112, line: 629, flags: DIFlagFwdDecl)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4654, file: !4655, line: 49, baseType: !2641, size: 320, offset: 384)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4654, file: !4655, line: 50, baseType: !531, size: 64, offset: 704)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4654, file: !4655, line: 51, baseType: !1120, size: 64, offset: 768)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4654, file: !4655, line: 52, baseType: !1120, size: 64, offset: 832)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4654, file: !4655, line: 53, baseType: !1120, size: 64, offset: 896)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4654, file: !4655, line: 54, baseType: !1120, size: 64, offset: 960)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4654, file: !4655, line: 55, baseType: !1120, size: 64, offset: 1024)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4654, file: !4655, line: 56, baseType: !531, size: 64, offset: 1088)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4654, file: !4655, line: 57, baseType: !531, size: 64, offset: 1152)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4654, file: !4655, line: 58, baseType: !531, size: 64, offset: 1216)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4654, file: !4655, line: 59, baseType: !531, size: 64, offset: 1280)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4654, file: !4655, line: 60, baseType: !531, size: 64, offset: 1344)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4654, file: !4655, line: 61, baseType: !4491, size: 64, offset: 1408)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4654, file: !4655, line: 62, baseType: !1718, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4654, file: !4655, line: 63, baseType: !1718, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4635, file: !112, line: 681, baseType: !1718, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4635, file: !112, line: 682, baseType: !1718, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4635, file: !112, line: 683, baseType: !1718, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4635, file: !112, line: 684, baseType: !18, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4635, file: !112, line: 685, baseType: !18, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4635, file: !112, line: 690, baseType: !1112, size: 512, offset: 640)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4635, file: !112, line: 691, baseType: !634, size: 64, offset: 1152)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4635, file: !112, line: 692, baseType: !1462, size: 256, offset: 1216)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4635, file: !112, line: 693, baseType: !959, size: 192, offset: 1472)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4635, file: !112, line: 694, baseType: !4662, size: 64, offset: 1664)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4635, file: !112, line: 695, baseType: !431, size: 32, offset: 1728)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4635, file: !112, line: 696, baseType: !431, size: 32, offset: 1760)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4635, file: !112, line: 697, baseType: !18, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4635, file: !112, line: 698, baseType: !18, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4635, file: !112, line: 699, baseType: !18, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4635, file: !112, line: 700, baseType: !18, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4635, file: !112, line: 701, baseType: !18, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4635, file: !112, line: 702, baseType: !18, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4635, file: !112, line: 703, baseType: !1718, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4635, file: !112, line: 704, baseType: !18, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4635, file: !112, line: 705, baseType: !18, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4635, file: !112, line: 706, baseType: !18, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4635, file: !112, line: 707, baseType: !18, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4635, file: !112, line: 708, baseType: !18, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4635, file: !112, line: 709, baseType: !18, size: 32, offset: 1824)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4635, file: !112, line: 710, baseType: !111, size: 32, offset: 1856)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4635, file: !112, line: 711, baseType: !119, size: 32, offset: 1888)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4635, file: !112, line: 712, baseType: !119, size: 32, offset: 1920)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4635, file: !112, line: 713, baseType: !120, size: 32, offset: 1952)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4635, file: !112, line: 714, baseType: !120, size: 32, offset: 1984)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4635, file: !112, line: 715, baseType: !634, size: 64, offset: 2048)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4635, file: !112, line: 716, baseType: !634, size: 64, offset: 2112)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4635, file: !112, line: 717, baseType: !634, size: 64, offset: 2176)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4635, file: !112, line: 718, baseType: !634, size: 64, offset: 2240)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4635, file: !112, line: 720, baseType: !4714, size: 64, offset: 2304)
!4714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4715, size: 64)
!4715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !112, line: 632, size: 64, elements: !4716)
!4716 = !{!4717, !4718}
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4715, file: !112, line: 633, baseType: !411, size: 32)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4715, file: !112, line: 634, baseType: !18, size: 32, offset: 32)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4635, file: !112, line: 721, baseType: !4720, size: 64, offset: 2368)
!4720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4721, size: 64)
!4721 = !DISubroutineType(types: !4722)
!4722 = !{null, !4491, !1387}
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4635, file: !112, line: 722, baseType: !4724, size: 64, offset: 2432)
!4724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4725, size: 64)
!4725 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !112, line: 722, flags: DIFlagFwdDecl)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4492, file: !105, line: 727, baseType: !4727, size: 64, offset: 4224)
!4727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4728, size: 64)
!4728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !112, line: 742, size: 1792, elements: !4729)
!4729 = !{!4730, !4731, !4732, !4736, !4737, !4738}
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4728, file: !112, line: 743, baseType: !4525, size: 1472)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4728, file: !112, line: 744, baseType: !4528, size: 64, offset: 1472)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4728, file: !112, line: 745, baseType: !4733, size: 64, offset: 1536)
!4733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4734, size: 64)
!4734 = !DISubroutineType(types: !4735)
!4735 = !{null, !4491, !1718}
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4728, file: !112, line: 746, baseType: !4528, size: 64, offset: 1600)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4728, file: !112, line: 747, baseType: !4519, size: 64, offset: 1664)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4728, file: !112, line: 748, baseType: !4519, size: 64, offset: 1728)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4492, file: !105, line: 736, baseType: !4740, size: 128, offset: 4288)
!4740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !105, line: 529, size: 128, elements: !4741)
!4741 = !{!4742, !4746}
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4740, file: !105, line: 531, baseType: !4743, size: 64)
!4743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4744, size: 64)
!4744 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4745, line: 13, flags: DIFlagFwdDecl)
!4745 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4740, file: !105, line: 532, baseType: !4747, size: 64, offset: 64)
!4747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4748, size: 64)
!4748 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !105, line: 49, flags: DIFlagFwdDecl)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4492, file: !105, line: 738, baseType: !4750, size: 64, offset: 4416)
!4750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4751, size: 64)
!4751 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4752)
!4752 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !105, line: 738, flags: DIFlagFwdDecl)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4492, file: !105, line: 740, baseType: !4754, size: 64, offset: 4480)
!4754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4492, file: !105, line: 741, baseType: !634, size: 64, offset: 4544)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4492, file: !105, line: 746, baseType: !634, size: 64, offset: 4608)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4492, file: !105, line: 747, baseType: !4758, size: 64, offset: 4672)
!4758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4759, size: 64)
!4759 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4760)
!4760 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !105, line: 747, flags: DIFlagFwdDecl)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4492, file: !105, line: 749, baseType: !4762, size: 64, offset: 4736)
!4762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4763, size: 64)
!4763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !105, line: 428, size: 128, elements: !4764)
!4764 = !{!4765, !4766, !4767}
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4763, file: !105, line: 433, baseType: !18, size: 32)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4763, file: !105, line: 434, baseType: !18, size: 32, offset: 32)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4763, file: !105, line: 435, baseType: !531, size: 64, offset: 64)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4492, file: !105, line: 751, baseType: !382, size: 128, offset: 4800)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4492, file: !105, line: 762, baseType: !4770, size: 64, offset: 4928)
!4770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4771, size: 64)
!4771 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !105, line: 762, flags: DIFlagFwdDecl)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4492, file: !105, line: 770, baseType: !4773, offset: 4992)
!4773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4774, line: 5, elements: !764)
!4774 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4492, file: !105, line: 772, baseType: !4776, size: 64, offset: 4992)
!4776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4777, size: 64)
!4777 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4778, line: 18, flags: DIFlagFwdDecl)
!4778 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4492, file: !105, line: 773, baseType: !4780, size: 64, offset: 5056)
!4780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4781, size: 64)
!4781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4782, line: 41, size: 512, elements: !4783)
!4782 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4783 = !{!4784, !4785, !4879, !4880, !4881, !4882}
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4781, file: !4782, line: 42, baseType: !4780, size: 64)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4781, file: !4782, line: 43, baseType: !4786, size: 64, offset: 64)
!4786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4787, size: 64)
!4787 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4788)
!4788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4782, line: 125, size: 1408, elements: !4789)
!4789 = !{!4790, !4794, !4798, !4804, !4808, !4809, !4814, !4818, !4822, !4826, !4830, !4831, !4835, !4839, !4843, !4854, !4855, !4856, !4857, !4867, !4871, !4875}
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4788, file: !4782, line: 126, baseType: !4791, size: 64)
!4791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4792, size: 64)
!4792 = !DISubroutineType(types: !4793)
!4793 = !{!4780, !4780}
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4788, file: !4782, line: 127, baseType: !4795, size: 64, offset: 64)
!4795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4796, size: 64)
!4796 = !DISubroutineType(types: !4797)
!4797 = !{null, !4780}
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4788, file: !4782, line: 128, baseType: !4799, size: 64, offset: 128)
!4799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4800, size: 64)
!4800 = !DISubroutineType(types: !4801)
!4801 = !{!1718, !4802}
!4802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4803, size: 64)
!4803 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4781)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4788, file: !4782, line: 129, baseType: !4805, size: 64, offset: 192)
!4805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4806, size: 64)
!4806 = !DISubroutineType(types: !4807)
!4807 = !{!1420, !4802, !4511}
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4788, file: !4782, line: 131, baseType: !4799, size: 64, offset: 256)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4788, file: !4782, line: 133, baseType: !4810, size: 64, offset: 320)
!4810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4811, size: 64)
!4811 = !DISubroutineType(types: !4812)
!4812 = !{!4813, !4802}
!4813 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4782, line: 132, flags: DIFlagFwdDecl)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4788, file: !4782, line: 134, baseType: !4815, size: 64, offset: 384)
!4815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4816, size: 64)
!4816 = !DISubroutineType(types: !4817)
!4817 = !{!1718, !4802, !400}
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4788, file: !4782, line: 136, baseType: !4819, size: 64, offset: 448)
!4819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4820, size: 64)
!4820 = !DISubroutineType(types: !4821)
!4821 = !{!120, !4802, !400, !18, !376, !528}
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4788, file: !4782, line: 141, baseType: !4823, size: 64, offset: 512)
!4823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4824, size: 64)
!4824 = !DISubroutineType(types: !4825)
!4825 = !{!120, !4802, !400, !4383, !528}
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4788, file: !4782, line: 144, baseType: !4827, size: 64, offset: 576)
!4827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4828, size: 64)
!4828 = !DISubroutineType(types: !4829)
!4829 = !{!400, !4802}
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4788, file: !4782, line: 145, baseType: !4827, size: 64, offset: 640)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4788, file: !4782, line: 146, baseType: !4832, size: 64, offset: 704)
!4832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4833, size: 64)
!4833 = !DISubroutineType(types: !4834)
!4834 = !{!4780, !4802}
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4788, file: !4782, line: 148, baseType: !4836, size: 64, offset: 768)
!4836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4837, size: 64)
!4837 = !DISubroutineType(types: !4838)
!4838 = !{!4780, !4802, !4780}
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4788, file: !4782, line: 151, baseType: !4840, size: 64, offset: 832)
!4840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4841, size: 64)
!4841 = !DISubroutineType(types: !4842)
!4842 = !{!4780, !4802, !400}
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4788, file: !4782, line: 153, baseType: !4844, size: 64, offset: 896)
!4844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4845, size: 64)
!4845 = !DISubroutineType(types: !4846)
!4846 = !{!120, !4802, !400, !400, !18, !18, !4847}
!4847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4848, size: 64)
!4848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4782, line: 94, size: 640, elements: !4849)
!4849 = !{!4850, !4851, !4852}
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4848, file: !4782, line: 95, baseType: !4780, size: 64)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4848, file: !4782, line: 96, baseType: !18, size: 32, offset: 64)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4848, file: !4782, line: 97, baseType: !4853, size: 512, offset: 128)
!4853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !634, size: 512, elements: !10)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4788, file: !4782, line: 158, baseType: !4836, size: 64, offset: 960)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4788, file: !4782, line: 161, baseType: !4832, size: 64, offset: 1024)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4788, file: !4782, line: 163, baseType: !4791, size: 64, offset: 1088)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4788, file: !4782, line: 164, baseType: !4858, size: 64, offset: 1152)
!4858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4859, size: 64)
!4859 = !DISubroutineType(types: !4860)
!4860 = !{!120, !4802, !4861}
!4861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4862, size: 64)
!4862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4782, line: 73, size: 128, elements: !4863)
!4863 = !{!4864, !4865, !4866}
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4862, file: !4782, line: 74, baseType: !18, size: 32)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4862, file: !4782, line: 75, baseType: !18, size: 32, offset: 32)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4862, file: !4782, line: 76, baseType: !4802, size: 64, offset: 64)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4788, file: !4782, line: 166, baseType: !4868, size: 64, offset: 1216)
!4868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4869, size: 64)
!4869 = !DISubroutineType(types: !4870)
!4870 = !{!376, !4780, !120}
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4788, file: !4782, line: 167, baseType: !4872, size: 64, offset: 1280)
!4872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4873, size: 64)
!4873 = !DISubroutineType(types: !4874)
!4874 = !{!120, !4802, !18}
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4788, file: !4782, line: 168, baseType: !4876, size: 64, offset: 1344)
!4876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4877, size: 64)
!4877 = !DISubroutineType(types: !4878)
!4878 = !{!120, !4780}
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4781, file: !4782, line: 44, baseType: !4491, size: 64, offset: 128)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4781, file: !4782, line: 45, baseType: !382, size: 128, offset: 192)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4781, file: !4782, line: 46, baseType: !382, size: 128, offset: 320)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4781, file: !4782, line: 47, baseType: !439, size: 8, offset: 448)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4492, file: !105, line: 776, baseType: !120, size: 32, offset: 5120)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4492, file: !105, line: 778, baseType: !717, size: 32, offset: 5152)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4492, file: !105, line: 779, baseType: !630, size: 32, offset: 5184)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4492, file: !105, line: 781, baseType: !411, size: 32, offset: 5216)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4492, file: !105, line: 782, baseType: !382, size: 128, offset: 5248)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4492, file: !105, line: 784, baseType: !4889, size: 64, offset: 5376)
!4889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4890, size: 64)
!4890 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4891)
!4891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4892, line: 52, size: 768, elements: !4893)
!4892 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4893 = !{!4894, !4895, !4896, !4897, !4898, !4902, !4906, !4907, !4908, !4909, !4913, !4917}
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4891, file: !4892, line: 53, baseType: !400, size: 64)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4891, file: !4892, line: 55, baseType: !533, size: 64, offset: 64)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4891, file: !4892, line: 56, baseType: !533, size: 64, offset: 128)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4891, file: !4892, line: 58, baseType: !4508, size: 64, offset: 192)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4891, file: !4892, line: 59, baseType: !4899, size: 64, offset: 256)
!4899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4900, size: 64)
!4900 = !DISubroutineType(types: !4901)
!4901 = !{!481, !4511, !4517}
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4891, file: !4892, line: 61, baseType: !4903, size: 64, offset: 320)
!4903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4904, size: 64)
!4904 = !DISubroutineType(types: !4905)
!4905 = !{null, !4889}
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4891, file: !4892, line: 62, baseType: !4519, size: 64, offset: 384)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4891, file: !4892, line: 64, baseType: !4528, size: 64, offset: 448)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4891, file: !4892, line: 66, baseType: !3946, size: 64, offset: 512)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4891, file: !4892, line: 67, baseType: !4910, size: 64, offset: 576)
!4910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4911, size: 64)
!4911 = !DISubroutineType(types: !4912)
!4912 = !{!1420, !4511}
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4891, file: !4892, line: 69, baseType: !4914, size: 64, offset: 640)
!4914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4915, size: 64)
!4915 = !DISubroutineType(types: !4916)
!4916 = !{null, !4511, !3978, !3979}
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4891, file: !4892, line: 71, baseType: !4523, size: 64, offset: 704)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4492, file: !105, line: 785, baseType: !533, size: 64, offset: 5440)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4492, file: !105, line: 787, baseType: !4519, size: 64, offset: 5504)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4492, file: !105, line: 788, baseType: !4921, size: 64, offset: 5568)
!4921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4922, size: 64)
!4922 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !105, line: 46, flags: DIFlagFwdDecl)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4492, file: !105, line: 789, baseType: !4924, size: 64, offset: 5632)
!4924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4925, size: 64)
!4925 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !105, line: 48, flags: DIFlagFwdDecl)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4492, file: !105, line: 791, baseType: !4927, size: 64, offset: 5696)
!4927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4928, size: 64)
!4928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !105, line: 597, size: 128, elements: !4929)
!4929 = !{!4930, !4931, !4932, !4933, !4934}
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4928, file: !105, line: 598, baseType: !127, size: 32)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4928, file: !105, line: 599, baseType: !136, size: 32, offset: 32)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4928, file: !105, line: 600, baseType: !141, size: 32, offset: 64)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4928, file: !105, line: 601, baseType: !1718, size: 8, offset: 96)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4928, file: !105, line: 602, baseType: !1718, size: 8, offset: 104)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4492, file: !105, line: 793, baseType: !146, size: 32, offset: 5760)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4492, file: !105, line: 795, baseType: !1718, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4492, file: !105, line: 796, baseType: !1718, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4492, file: !105, line: 797, baseType: !1718, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4492, file: !105, line: 798, baseType: !1718, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4492, file: !105, line: 799, baseType: !1718, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "managed", scope: !4486, file: !213, line: 73, baseType: !4942, size: 256, offset: 128)
!4942 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4486, file: !213, line: 66, size: 256, elements: !4943)
!4943 = !{!4944, !4945, !4946}
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4942, file: !213, line: 68, baseType: !382, size: 128)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "final_kfree", scope: !4942, file: !213, line: 70, baseType: !376, size: 64, offset: 128)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4942, file: !213, line: 72, baseType: !411, size: 32, offset: 192)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4486, file: !213, line: 76, baseType: !4948, size: 64, offset: 384)
!4948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4949, size: 64)
!4949 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4950)
!4950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_driver", file: !348, line: 178, size: 1664, elements: !4951)
!4951 = !{!4952, !4956, !5029, !5033, !5037, !5038, !5039, !5043, !5044, !5048, !5054, !5058, !5063, !5069, !5092, !5106, !5112, !5146, !5147, !5148, !5149, !5150, !5151, !5152, !5153, !5166, !5167}
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !4950, file: !348, line: 195, baseType: !4953, size: 64)
!4953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4954, size: 64)
!4954 = !DISubroutineType(types: !4955)
!4955 = !{!120, !4485, !531}
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4950, file: !348, line: 215, baseType: !4957, size: 64, offset: 64)
!4957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4958, size: 64)
!4958 = !DISubroutineType(types: !4959)
!4959 = !{!120, !4485, !4960}
!4960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4961, size: 64)
!4961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_file", file: !4962, line: 166, size: 2944, elements: !4963)
!4962 = !DIFile(filename: "./include/drm/drm_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f20734895d003ad7da48316ffd72e54c")
!4963 = !{!4964, !4965, !4966, !4967, !4968, !4969, !4970, !4971, !4972, !4973, !4990, !4991, !4992, !4993, !4996, !4997, !5008, !5009, !5010, !5011, !5012, !5013, !5014, !5015, !5016, !5017, !5018, !5019, !5020, !5021, !5022}
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !4961, file: !4962, line: 176, baseType: !1718, size: 8)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "stereo_allowed", scope: !4961, file: !4962, line: 183, baseType: !1718, size: 8, offset: 8)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "universal_planes", scope: !4961, file: !4962, line: 191, baseType: !1718, size: 8, offset: 16)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "atomic", scope: !4961, file: !4962, line: 194, baseType: !1718, size: 8, offset: 24)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_allowed", scope: !4961, file: !4962, line: 202, baseType: !1718, size: 8, offset: 32)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_connectors", scope: !4961, file: !4962, line: 209, baseType: !1718, size: 8, offset: 40)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "was_master", scope: !4961, file: !4962, line: 220, baseType: !1718, size: 8, offset: 48)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "is_master", scope: !4961, file: !4962, line: 231, baseType: !1718, size: 8, offset: 56)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "supports_virtualized_cursor_plane", scope: !4961, file: !4962, line: 243, baseType: !1718, size: 8, offset: 64)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !4961, file: !4962, line: 268, baseType: !4974, size: 64, offset: 128)
!4974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4975, size: 64)
!4975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_master", file: !4976, line: 65, size: 1280, elements: !4977)
!4976 = !DIFile(filename: "./include/drm/drm_auth.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10e944a391afc2612335b30db18d0dee")
!4977 = !{!4978, !4979, !4980, !4981, !4982, !4983, !4984, !4985, !4986, !4987, !4988, !4989}
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4975, file: !4976, line: 66, baseType: !4073, size: 32)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4975, file: !4976, line: 67, baseType: !4485, size: 64, offset: 64)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !4975, file: !4976, line: 72, baseType: !481, size: 64, offset: 128)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "unique_len", scope: !4975, file: !4976, line: 77, baseType: !120, size: 32, offset: 192)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "magic_map", scope: !4975, file: !4976, line: 82, baseType: !977, size: 192, offset: 256)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "driver_priv", scope: !4975, file: !4976, line: 83, baseType: !376, size: 64, offset: 448)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "lessor", scope: !4975, file: !4976, line: 99, baseType: !4974, size: 64, offset: 512)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_id", scope: !4975, file: !4976, line: 107, baseType: !120, size: 32, offset: 576)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_list", scope: !4975, file: !4976, line: 116, baseType: !382, size: 128, offset: 640)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "lessees", scope: !4975, file: !4976, line: 128, baseType: !382, size: 128, offset: 768)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "leases", scope: !4975, file: !4976, line: 139, baseType: !977, size: 192, offset: 896)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_idr", scope: !4975, file: !4976, line: 147, baseType: !977, size: 192, offset: 1088)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "master_lookup_lock", scope: !4961, file: !4962, line: 271, baseType: !411, size: 32, offset: 192)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !4961, file: !4962, line: 281, baseType: !944, size: 64, offset: 256)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "client_id", scope: !4961, file: !4962, line: 284, baseType: !634, size: 64, offset: 320)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !4961, file: !4962, line: 287, baseType: !4994, size: 32, offset: 384)
!4994 = !DIDerivedType(tag: DW_TAG_typedef, name: "drm_magic_t", file: !4995, line: 85, baseType: !18)
!4995 = !DIFile(filename: "./include/uapi/drm/drm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9daee414dd46c3bd0bb57211914f5e3a")
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "lhead", scope: !4961, file: !4962, line: 295, baseType: !382, size: 128, offset: 448)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4961, file: !4962, line: 298, baseType: !4998, size: 64, offset: 576)
!4998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4999, size: 64)
!4999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_minor", file: !4962, line: 77, size: 640, elements: !5000)
!5000 = !{!5001, !5002, !5003, !5004, !5005, !5006, !5007}
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4999, file: !4962, line: 79, baseType: !120, size: 32)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4999, file: !4962, line: 80, baseType: !120, size: 32, offset: 32)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "kdev", scope: !4999, file: !4962, line: 81, baseType: !4491, size: 64, offset: 64)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4999, file: !4962, line: 82, baseType: !4485, size: 64, offset: 128)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_root", scope: !4999, file: !4962, line: 84, baseType: !596, size: 64, offset: 192)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_list", scope: !4999, file: !4962, line: 86, baseType: !382, size: 128, offset: 256)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_lock", scope: !4999, file: !4962, line: 87, baseType: !845, size: 256, offset: 384)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "object_idr", scope: !4961, file: !4962, line: 306, baseType: !977, size: 192, offset: 640)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "table_lock", scope: !4961, file: !4962, line: 309, baseType: !411, size: 32, offset: 832)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "syncobj_idr", scope: !4961, file: !4962, line: 312, baseType: !977, size: 192, offset: 896)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "syncobj_table_lock", scope: !4961, file: !4962, line: 314, baseType: !411, size: 32, offset: 1088)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "filp", scope: !4961, file: !4962, line: 317, baseType: !1313, size: 64, offset: 1152)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "driver_priv", scope: !4961, file: !4962, line: 325, baseType: !376, size: 64, offset: 1216)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "fbs", scope: !4961, file: !4962, line: 336, baseType: !382, size: 128, offset: 1280)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "fbs_lock", scope: !4961, file: !4962, line: 339, baseType: !845, size: 256, offset: 1408)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "blobs", scope: !4961, file: !4962, line: 349, baseType: !382, size: 128, offset: 1664)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "event_wait", scope: !4961, file: !4962, line: 352, baseType: !959, size: 192, offset: 1792)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "pending_event_list", scope: !4961, file: !4962, line: 363, baseType: !382, size: 128, offset: 1984)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !4961, file: !4962, line: 373, baseType: !382, size: 128, offset: 2112)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "event_space", scope: !4961, file: !4962, line: 382, baseType: !120, size: 32, offset: 2240)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "event_read_lock", scope: !4961, file: !4962, line: 385, baseType: !845, size: 256, offset: 2304)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "prime", scope: !4961, file: !4962, line: 392, baseType: !5023, size: 384, offset: 2560)
!5023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_prime_file_private", file: !5024, line: 45, size: 384, elements: !5025)
!5024 = !DIFile(filename: "./include/drm/drm_prime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "95f128be875629bb4216af76254b38de")
!5025 = !{!5026, !5027, !5028}
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5023, file: !5024, line: 47, baseType: !845, size: 256)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "dmabufs", scope: !5023, file: !5024, line: 48, baseType: !1172, size: 64, offset: 256)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "handles", scope: !5023, file: !5024, line: 49, baseType: !1172, size: 64, offset: 320)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "postclose", scope: !4950, file: !348, line: 229, baseType: !5030, size: 64, offset: 128)
!5030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5031, size: 64)
!5031 = !DISubroutineType(types: !5032)
!5032 = !{null, !4485, !4960}
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "lastclose", scope: !4950, file: !348, line: 257, baseType: !5034, size: 64, offset: 192)
!5034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5035, size: 64)
!5035 = !DISubroutineType(types: !5036)
!5036 = !{null, !4485}
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "unload", scope: !4950, file: !348, line: 274, baseType: !5034, size: 64, offset: 256)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4950, file: !348, line: 286, baseType: !5034, size: 64, offset: 320)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "master_set", scope: !4950, file: !348, line: 293, baseType: !5040, size: 64, offset: 384)
!5040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5041, size: 64)
!5041 = !DISubroutineType(types: !5042)
!5042 = !{null, !4485, !4960, !1718}
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "master_drop", scope: !4950, file: !348, line: 300, baseType: !5030, size: 64, offset: 448)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_init", scope: !4950, file: !348, line: 307, baseType: !5045, size: 64, offset: 512)
!5045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5046, size: 64)
!5046 = !DISubroutineType(types: !5047)
!5047 = !{null, !4998}
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "gem_create_object", scope: !4950, file: !348, line: 316, baseType: !5049, size: 64, offset: 576)
!5049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5050, size: 64)
!5050 = !DISubroutineType(types: !5051)
!5051 = !{!5052, !4485, !528}
!5052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5053, size: 64)
!5053 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_gem_object", file: !348, line: 38, flags: DIFlagFwdDecl)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "prime_handle_to_fd", scope: !4950, file: !348, line: 324, baseType: !5055, size: 64, offset: 640)
!5055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5056, size: 64)
!5056 = !DISubroutineType(types: !5057)
!5057 = !{!120, !4485, !4960, !1684, !1684, !827}
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "prime_fd_to_handle", scope: !4950, file: !348, line: 331, baseType: !5059, size: 64, offset: 704)
!5059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5060, size: 64)
!5060 = !DISubroutineType(types: !5061)
!5061 = !{!120, !4485, !4960, !120, !5062}
!5062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "gem_prime_import", scope: !4950, file: !348, line: 341, baseType: !5064, size: 64, offset: 768)
!5064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5065, size: 64)
!5065 = !DISubroutineType(types: !5066)
!5066 = !{!5052, !4485, !5067}
!5067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5068, size: 64)
!5068 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf", file: !348, line: 41, flags: DIFlagFwdDecl)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "gem_prime_import_sg_table", scope: !4950, file: !348, line: 349, baseType: !5070, size: 64, offset: 832)
!5070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5071, size: 64)
!5071 = !DISubroutineType(types: !5072)
!5072 = !{!5052, !4485, !5073, !5075}
!5073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5074, size: 64)
!5074 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf_attachment", file: !348, line: 42, flags: DIFlagFwdDecl)
!5075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5076, size: 64)
!5076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sg_table", file: !5077, line: 39, size: 128, elements: !5078)
!5077 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc5d709d01f4c0a80a46fc78d63fc593")
!5078 = !{!5079, !5090, !5091}
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "sgl", scope: !5076, file: !5077, line: 40, baseType: !5080, size: 64)
!5080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5081, size: 64)
!5081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !5077, line: 11, size: 256, elements: !5082)
!5082 = !{!5083, !5084, !5085, !5086, !5088, !5089}
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !5081, file: !5077, line: 12, baseType: !531, size: 64)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5081, file: !5077, line: 13, baseType: !18, size: 32, offset: 64)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5081, file: !5077, line: 14, baseType: !18, size: 32, offset: 96)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !5081, file: !5077, line: 15, baseType: !5087, size: 64, offset: 128)
!5087 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !383, line: 149, baseType: !634)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !5081, file: !5077, line: 17, baseType: !18, size: 32, offset: 192)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "dma_flags", scope: !5081, file: !5077, line: 20, baseType: !18, size: 32, offset: 224)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "nents", scope: !5076, file: !5077, line: 41, baseType: !18, size: 32, offset: 64)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "orig_nents", scope: !5076, file: !5077, line: 42, baseType: !18, size: 32, offset: 96)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "dumb_create", scope: !4950, file: !348, line: 375, baseType: !5093, size: 64, offset: 896)
!5093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5094, size: 64)
!5094 = !DISubroutineType(types: !5095)
!5095 = !{!120, !4960, !4485, !5096}
!5096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5097, size: 64)
!5097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_create_dumb", file: !265, line: 1036, size: 256, elements: !5098)
!5098 = !{!5099, !5100, !5101, !5102, !5103, !5104, !5105}
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !5097, file: !265, line: 1037, baseType: !631, size: 32)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !5097, file: !265, line: 1038, baseType: !631, size: 32, offset: 32)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "bpp", scope: !5097, file: !265, line: 1039, baseType: !631, size: 32, offset: 64)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5097, file: !265, line: 1040, baseType: !631, size: 32, offset: 96)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !5097, file: !265, line: 1042, baseType: !631, size: 32, offset: 128)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "pitch", scope: !5097, file: !265, line: 1043, baseType: !631, size: 32, offset: 160)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5097, file: !265, line: 1044, baseType: !635, size: 64, offset: 192)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "dumb_map_offset", scope: !4950, file: !348, line: 393, baseType: !5107, size: 64, offset: 960)
!5107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5108, size: 64)
!5108 = !DISubroutineType(types: !5109)
!5109 = !{!120, !4960, !4485, !1684, !5110}
!5110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5111, size: 64)
!5111 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !383, line: 113, baseType: !634)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4950, file: !348, line: 402, baseType: !5113, size: 64, offset: 1024)
!5113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5114, size: 64)
!5114 = !DISubroutineType(types: !5115)
!5115 = !{null, !5116, !4960}
!5116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5117, size: 64)
!5117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_printer", file: !335, line: 76, size: 256, elements: !5118)
!5118 = !{!5119, !5140, !5144, !5145}
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "printfn", scope: !5117, file: !335, line: 78, baseType: !5120, size: 64)
!5120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5121, size: 64)
!5121 = !DISubroutineType(types: !5122)
!5122 = !{null, !5116, !5123}
!5123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5124, size: 64)
!5124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "va_format", file: !5125, line: 79, size: 128, elements: !5126)
!5125 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!5126 = !{!5127, !5128}
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !5124, file: !5125, line: 80, baseType: !400, size: 64)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "va", scope: !5124, file: !5125, line: 81, baseType: !5129, size: 64, offset: 64)
!5129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5130, size: 64)
!5130 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !5131, line: 5, baseType: !5132)
!5131 = !DIFile(filename: "./include/linux/stdarg.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74c88f3ccfca7f499d1744438ad1d5b5")
!5132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2, baseType: !5133)
!5133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5134, size: 192, elements: !1238)
!5134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !5135)
!5135 = !{!5136, !5137, !5138, !5139}
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !5134, file: !2, baseType: !18, size: 32)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !5134, file: !2, baseType: !18, size: 32, offset: 32)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !5134, file: !2, baseType: !376, size: 64, offset: 64)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !5134, file: !2, baseType: !376, size: 64, offset: 128)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "puts", scope: !5117, file: !335, line: 79, baseType: !5141, size: 64, offset: 64)
!5141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5142, size: 64)
!5142 = !DISubroutineType(types: !5143)
!5143 = !{null, !5116, !400}
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !5117, file: !335, line: 80, baseType: !376, size: 64, offset: 128)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !5117, file: !335, line: 81, baseType: !400, size: 64, offset: 192)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !4950, file: !348, line: 405, baseType: !120, size: 32, offset: 1088)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4950, file: !348, line: 407, baseType: !120, size: 32, offset: 1120)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "patchlevel", scope: !4950, file: !348, line: 409, baseType: !120, size: 32, offset: 1152)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4950, file: !348, line: 411, baseType: !481, size: 64, offset: 1216)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4950, file: !348, line: 413, baseType: !481, size: 64, offset: 1280)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !4950, file: !348, line: 415, baseType: !481, size: 64, offset: 1344)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "driver_features", scope: !4950, file: !348, line: 423, baseType: !630, size: 32, offset: 1408)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "ioctls", scope: !4950, file: !348, line: 433, baseType: !5154, size: 64, offset: 1472)
!5154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5155, size: 64)
!5155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5156)
!5156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_ioctl_desc", file: !153, line: 145, size: 192, elements: !5157)
!5157 = !{!5158, !5159, !5160, !5165}
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !5156, file: !153, line: 146, baseType: !18, size: 32)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5156, file: !153, line: 147, baseType: !152, size: 32, offset: 32)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5156, file: !153, line: 148, baseType: !5161, size: 64, offset: 64)
!5161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5162, size: 64)
!5162 = !DIDerivedType(tag: DW_TAG_typedef, name: "drm_ioctl_t", file: !153, line: 54, baseType: !5163)
!5163 = !DISubroutineType(types: !5164)
!5164 = !{!120, !4485, !376, !4960}
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5156, file: !153, line: 149, baseType: !400, size: 64, offset: 128)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "num_ioctls", scope: !4950, file: !348, line: 435, baseType: !120, size: 32, offset: 1536)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !4950, file: !348, line: 444, baseType: !2951, size: 64, offset: 1600)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "dev_private", scope: !4486, file: !213, line: 88, baseType: !376, size: 64, offset: 448)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !4486, file: !213, line: 98, baseType: !4998, size: 64, offset: 512)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "render", scope: !4486, file: !213, line: 107, baseType: !4998, size: 64, offset: 576)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "accel", scope: !4486, file: !213, line: 110, baseType: !4998, size: 64, offset: 640)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !4486, file: !213, line: 117, baseType: !1718, size: 8, offset: 704)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !4486, file: !213, line: 125, baseType: !4974, size: 64, offset: 768)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "driver_features", scope: !4486, file: !213, line: 135, baseType: !630, size: 32, offset: 832)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "unplugged", scope: !4486, file: !213, line: 143, baseType: !1718, size: 8, offset: 864)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "anon_inode", scope: !4486, file: !213, line: 146, baseType: !561, size: 64, offset: 896)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !4486, file: !213, line: 149, baseType: !481, size: 64, offset: 960)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "struct_mutex", scope: !4486, file: !213, line: 159, baseType: !845, size: 256, offset: 1024)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "master_mutex", scope: !4486, file: !213, line: 166, baseType: !845, size: 256, offset: 1280)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "open_count", scope: !4486, file: !213, line: 174, baseType: !431, size: 32, offset: 1536)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_mutex", scope: !4486, file: !213, line: 177, baseType: !845, size: 256, offset: 1600)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !4486, file: !213, line: 183, baseType: !382, size: 128, offset: 1856)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_internal", scope: !4486, file: !213, line: 191, baseType: !382, size: 128, offset: 1984)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist_mutex", scope: !4486, file: !213, line: 198, baseType: !845, size: 256, offset: 2112)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist", scope: !4486, file: !213, line: 205, baseType: !382, size: 128, offset: 2368)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_disable_immediate", scope: !4486, file: !213, line: 220, baseType: !1718, size: 8, offset: 2496)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "vblank", scope: !4486, file: !213, line: 230, baseType: !5188, size: 64, offset: 2560)
!5188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5189, size: 64)
!5189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vblank_crtc", file: !5190, line: 91, size: 2432, elements: !5191)
!5190 = !DIFile(filename: "./include/drm/drm_vblank.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03c3f5f08fd7c156883238a0e593b6d6")
!5191 = !{!5192, !5193, !5194, !5195, !5196, !5197, !5198, !5199, !5200, !5201, !5202, !5203, !5204, !5205, !5242, !5243, !5265, !5266}
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5189, file: !5190, line: 95, baseType: !4485, size: 64)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !5189, file: !5190, line: 99, baseType: !959, size: 192, offset: 64)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "disable_timer", scope: !5189, file: !5190, line: 106, baseType: !2641, size: 320, offset: 256)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "seqlock", scope: !5189, file: !5190, line: 111, baseType: !1939, size: 64, offset: 576)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5189, file: !5190, line: 127, baseType: !851, size: 64, offset: 640)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !5189, file: !5190, line: 131, baseType: !1120, size: 64, offset: 704)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5189, file: !5190, line: 138, baseType: !431, size: 32, offset: 768)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !5189, file: !5190, line: 142, baseType: !630, size: 32, offset: 800)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "max_vblank_count", scope: !5189, file: !5190, line: 162, baseType: !630, size: 32, offset: 832)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "inmodeset", scope: !5189, file: !5190, line: 171, baseType: !18, size: 32, offset: 864)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !5189, file: !5190, line: 176, baseType: !18, size: 32, offset: 896)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "framedur_ns", scope: !5189, file: !5190, line: 182, baseType: !120, size: 32, offset: 928)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "linedur_ns", scope: !5189, file: !5190, line: 188, baseType: !120, size: 32, offset: 960)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "hwmode", scope: !5189, file: !5190, line: 199, baseType: !5206, size: 960, offset: 1024)
!5206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_display_mode", file: !161, line: 252, size: 960, elements: !5207)
!5207 = !{!5208, !5209, !5210, !5211, !5212, !5213, !5214, !5215, !5216, !5217, !5218, !5219, !5220, !5221, !5222, !5223, !5224, !5225, !5226, !5227, !5228, !5229, !5230, !5231, !5232, !5233, !5234, !5235, !5236, !5237, !5238, !5239, !5240, !5241}
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !5206, file: !161, line: 258, baseType: !120, size: 32)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "hdisplay", scope: !5206, file: !161, line: 259, baseType: !449, size: 16, offset: 32)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_start", scope: !5206, file: !161, line: 260, baseType: !449, size: 16, offset: 48)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_end", scope: !5206, file: !161, line: 261, baseType: !449, size: 16, offset: 64)
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "htotal", scope: !5206, file: !161, line: 262, baseType: !449, size: 16, offset: 80)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "hskew", scope: !5206, file: !161, line: 263, baseType: !449, size: 16, offset: 96)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "vdisplay", scope: !5206, file: !161, line: 264, baseType: !449, size: 16, offset: 112)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_start", scope: !5206, file: !161, line: 265, baseType: !449, size: 16, offset: 128)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_end", scope: !5206, file: !161, line: 266, baseType: !449, size: 16, offset: 144)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "vtotal", scope: !5206, file: !161, line: 267, baseType: !449, size: 16, offset: 160)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "vscan", scope: !5206, file: !161, line: 268, baseType: !449, size: 16, offset: 176)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5206, file: !161, line: 303, baseType: !630, size: 32, offset: 192)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_clock", scope: !5206, file: !161, line: 320, baseType: !120, size: 32, offset: 224)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hdisplay", scope: !5206, file: !161, line: 321, baseType: !449, size: 16, offset: 256)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hblank_start", scope: !5206, file: !161, line: 322, baseType: !449, size: 16, offset: 272)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hblank_end", scope: !5206, file: !161, line: 323, baseType: !449, size: 16, offset: 288)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hsync_start", scope: !5206, file: !161, line: 324, baseType: !449, size: 16, offset: 304)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hsync_end", scope: !5206, file: !161, line: 325, baseType: !449, size: 16, offset: 320)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_htotal", scope: !5206, file: !161, line: 326, baseType: !449, size: 16, offset: 336)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hskew", scope: !5206, file: !161, line: 327, baseType: !449, size: 16, offset: 352)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vdisplay", scope: !5206, file: !161, line: 328, baseType: !449, size: 16, offset: 368)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vblank_start", scope: !5206, file: !161, line: 329, baseType: !449, size: 16, offset: 384)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vblank_end", scope: !5206, file: !161, line: 330, baseType: !449, size: 16, offset: 400)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vsync_start", scope: !5206, file: !161, line: 331, baseType: !449, size: 16, offset: 416)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vsync_end", scope: !5206, file: !161, line: 332, baseType: !449, size: 16, offset: 432)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vtotal", scope: !5206, file: !161, line: 333, baseType: !449, size: 16, offset: 448)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "width_mm", scope: !5206, file: !161, line: 341, baseType: !449, size: 16, offset: 464)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "height_mm", scope: !5206, file: !161, line: 349, baseType: !449, size: 16, offset: 480)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5206, file: !161, line: 378, baseType: !439, size: 8, offset: 496)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "expose_to_userspace", scope: !5206, file: !161, line: 389, baseType: !1718, size: 8, offset: 504)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5206, file: !161, line: 396, baseType: !382, size: 128, offset: 512)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5206, file: !161, line: 403, baseType: !3442, size: 256, offset: 640)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5206, file: !161, line: 411, baseType: !160, size: 32, offset: 896)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "picture_aspect_ratio", scope: !5206, file: !161, line: 418, baseType: !203, size: 32, offset: 928)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !5189, file: !5190, line: 207, baseType: !1718, size: 8, offset: 1984)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !5189, file: !5190, line: 212, baseType: !5244, size: 64, offset: 2048)
!5244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5245, size: 64)
!5245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kthread_worker", file: !5246, line: 123, size: 448, elements: !5247)
!5246 = !DIFile(filename: "./include/linux/kthread.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6109a4682a3e6e690ff3777556e2c944")
!5247 = !{!5248, !5249, !5250, !5251, !5252, !5253}
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5245, file: !5246, line: 124, baseType: !18, size: 32)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5245, file: !5246, line: 125, baseType: !858, size: 32, offset: 32)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !5245, file: !5246, line: 126, baseType: !382, size: 128, offset: 64)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_work_list", scope: !5245, file: !5246, line: 127, baseType: !382, size: 128, offset: 192)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !5245, file: !5246, line: 128, baseType: !993, size: 64, offset: 320)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "current_work", scope: !5245, file: !5246, line: 129, baseType: !5254, size: 64, offset: 384)
!5254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5255, size: 64)
!5255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kthread_work", file: !5246, line: 132, size: 320, elements: !5256)
!5256 = !{!5257, !5258, !5263, !5264}
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5255, file: !5246, line: 133, baseType: !382, size: 128)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5255, file: !5246, line: 134, baseType: !5259, size: 64, offset: 128)
!5259 = !DIDerivedType(tag: DW_TAG_typedef, name: "kthread_work_func_t", file: !5246, line: 116, baseType: !5260)
!5260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5261, size: 64)
!5261 = !DISubroutineType(types: !5262)
!5262 = !{null, !5254}
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !5255, file: !5246, line: 135, baseType: !5244, size: 64, offset: 192)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "canceling", scope: !5255, file: !5246, line: 137, baseType: !120, size: 32, offset: 256)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work", scope: !5189, file: !5190, line: 218, baseType: !382, size: 128, offset: 2112)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "work_wait_queue", scope: !5189, file: !5190, line: 225, baseType: !959, size: 192, offset: 2240)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_time_lock", scope: !4486, file: !213, line: 237, baseType: !411, size: 32, offset: 2624)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "vbl_lock", scope: !4486, file: !213, line: 242, baseType: !411, size: 32, offset: 2656)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "max_vblank_count", scope: !4486, file: !213, line: 265, baseType: !630, size: 32, offset: 2688)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_event_list", scope: !4486, file: !213, line: 268, baseType: !382, size: 128, offset: 2752)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !4486, file: !213, line: 276, baseType: !411, size: 32, offset: 2880)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtcs", scope: !4486, file: !213, line: 279, baseType: !18, size: 32, offset: 2912)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "mode_config", scope: !4486, file: !213, line: 282, baseType: !5274, size: 8704, offset: 2944)
!5274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config", file: !5275, line: 375, size: 8704, elements: !5276)
!5275 = !DIFile(filename: "./include/drm/drm_mode_config.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3fe2bd3e9391801689324df8a16c9607")
!5276 = !{!5277, !5278, !5297, !5310, !5311, !5312, !5313, !5314, !5315, !5316, !5317, !5318, !5322, !5323, !5324, !5325, !5326, !5327, !5328, !5329, !5330, !5331, !5332, !5333, !5334, !5335, !5336, !5337, !5396, !5397, !5398, !5399, !5400, !5401, !5402, !5437, !5438, !5439, !5440, !5441, !5442, !5443, !5444, !5445, !5446, !5447, !5448, !5449, !5450, !5451, !5452, !5453, !5454, !5455, !5456, !5457, !5458, !5459, !5460, !5461, !5462, !5463, !5464, !5465, !5466, !5467, !5468, !5469, !5470, !5471, !5472, !5473, !5474, !5475, !5476, !5477, !5478, !5479, !5480, !5481, !5482, !5483, !5484, !5485, !5486, !5487, !5488, !5489, !5490, !5491, !5492, !5493, !5494, !5495, !5496, !5497, !5498, !5499, !5500, !5501, !5502, !5503, !5504}
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5274, file: !5275, line: 386, baseType: !845, size: 256)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "connection_mutex", scope: !5274, file: !5275, line: 396, baseType: !5279, size: 448, offset: 256)
!5279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_lock", file: !5280, line: 85, size: 448, elements: !5281)
!5280 = !DIFile(filename: "./include/drm/drm_modeset_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90e902ea14584677125d9e33023828e6")
!5281 = !{!5282, !5296}
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5279, file: !5280, line: 89, baseType: !5283, size: 320)
!5283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_mutex", file: !5284, line: 47, size: 320, elements: !5285)
!5284 = !DIFile(filename: "./include/linux/ww_mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a05845e2a030669ed50c8f228f8c6582")
!5285 = !{!5286, !5287}
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5283, file: !5284, line: 48, baseType: !845, size: 256)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !5283, file: !5284, line: 49, baseType: !5288, size: 64, offset: 256)
!5288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5289, size: 64)
!5289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_acquire_ctx", file: !5284, line: 55, size: 192, elements: !5290)
!5290 = !{!5291, !5292, !5293, !5294, !5295}
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !5289, file: !5284, line: 56, baseType: !993, size: 64)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !5289, file: !5284, line: 57, baseType: !531, size: 64, offset: 64)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "acquired", scope: !5289, file: !5284, line: 58, baseType: !18, size: 32, offset: 128)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "wounded", scope: !5289, file: !5284, line: 59, baseType: !451, size: 16, offset: 160)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "is_wait_die", scope: !5289, file: !5284, line: 60, baseType: !451, size: 16, offset: 176)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5279, file: !5280, line: 95, baseType: !382, size: 128, offset: 320)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_ctx", scope: !5274, file: !5275, line: 406, baseType: !5298, size: 64, offset: 704)
!5298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5299, size: 64)
!5299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_acquire_ctx", file: !5280, line: 46, size: 512, elements: !5300)
!5300 = !{!5301, !5302, !5304, !5307, !5308, !5309}
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "ww_ctx", scope: !5299, file: !5280, line: 48, baseType: !5289, size: 192)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "contended", scope: !5299, file: !5280, line: 55, baseType: !5303, size: 64, offset: 192)
!5303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5279, size: 64)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "stack_depot", scope: !5299, file: !5280, line: 61, baseType: !5305, size: 32, offset: 256)
!5305 = !DIDerivedType(tag: DW_TAG_typedef, name: "depot_stack_handle_t", file: !5306, line: 27, baseType: !630)
!5306 = !DIFile(filename: "./include/linux/stackdepot.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "787fdf2c1a48da25b4d7ecc2db077a40")
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !5299, file: !5280, line: 66, baseType: !382, size: 128, offset: 320)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_only", scope: !5299, file: !5280, line: 71, baseType: !1718, size: 8, offset: 448)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "interruptible", scope: !5299, file: !5280, line: 74, baseType: !1718, size: 8, offset: 456)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "idr_mutex", scope: !5274, file: !5275, line: 414, baseType: !845, size: 256, offset: 768)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "object_idr", scope: !5274, file: !5275, line: 422, baseType: !977, size: 192, offset: 1024)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "tile_idr", scope: !5274, file: !5275, line: 430, baseType: !977, size: 192, offset: 1216)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "fb_lock", scope: !5274, file: !5275, line: 433, baseType: !845, size: 256, offset: 1408)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "num_fb", scope: !5274, file: !5275, line: 435, baseType: !120, size: 32, offset: 1664)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "fb_list", scope: !5274, file: !5275, line: 437, baseType: !382, size: 128, offset: 1728)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list_lock", scope: !5274, file: !5275, line: 443, baseType: !411, size: 32, offset: 1856)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "num_connector", scope: !5274, file: !5275, line: 448, baseType: !120, size: 32, offset: 1888)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "connector_ida", scope: !5274, file: !5275, line: 452, baseType: !5319, size: 128, offset: 1920)
!5319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !978, line: 246, size: 128, elements: !5320)
!5320 = !{!5321}
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !5319, file: !978, line: 247, baseType: !981, size: 128)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list", scope: !5274, file: !5275, line: 460, baseType: !382, size: 128, offset: 2048)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_list", scope: !5274, file: !5275, line: 470, baseType: !2679, size: 64, offset: 2176)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_work", scope: !5274, file: !5275, line: 474, baseType: !1462, size: 256, offset: 2240)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "num_encoder", scope: !5274, file: !5275, line: 482, baseType: !120, size: 32, offset: 2496)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "encoder_list", scope: !5274, file: !5275, line: 490, baseType: !382, size: 128, offset: 2560)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "num_total_plane", scope: !5274, file: !5275, line: 499, baseType: !120, size: 32, offset: 2688)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "plane_list", scope: !5274, file: !5275, line: 506, baseType: !382, size: 128, offset: 2752)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtc", scope: !5274, file: !5275, line: 514, baseType: !120, size: 32, offset: 2880)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_list", scope: !5274, file: !5275, line: 521, baseType: !382, size: 128, offset: 2944)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "property_list", scope: !5274, file: !5275, line: 530, baseType: !382, size: 128, offset: 3072)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "privobj_list", scope: !5274, file: !5275, line: 539, baseType: !382, size: 128, offset: 3200)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "min_width", scope: !5274, file: !5275, line: 541, baseType: !120, size: 32, offset: 3328)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "min_height", scope: !5274, file: !5275, line: 541, baseType: !120, size: 32, offset: 3360)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "max_width", scope: !5274, file: !5275, line: 542, baseType: !120, size: 32, offset: 3392)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "max_height", scope: !5274, file: !5275, line: 542, baseType: !120, size: 32, offset: 3424)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !5274, file: !5275, line: 543, baseType: !5338, size: 64, offset: 3456)
!5338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5339, size: 64)
!5339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5340)
!5340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_funcs", file: !5275, line: 47, size: 576, elements: !5341)
!5341 = !{!5342, !5363, !5370, !5371, !5377, !5383, !5387, !5391, !5395}
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "fb_create", scope: !5340, file: !5275, line: 83, baseType: !5343, size: 64)
!5343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5344, size: 64)
!5344 = !DISubroutineType(types: !5345)
!5345 = !{!5346, !4485, !4960, !5348}
!5346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5347, size: 64)
!5347 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_framebuffer", file: !5275, line: 83, flags: DIFlagFwdDecl)
!5348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5349, size: 64)
!5349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5350)
!5350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_fb_cmd2", file: !265, line: 703, size: 832, elements: !5351)
!5351 = !{!5352, !5353, !5354, !5355, !5356, !5357, !5359, !5360, !5361}
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "fb_id", scope: !5350, file: !265, line: 705, baseType: !631, size: 32)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !5350, file: !265, line: 707, baseType: !631, size: 32, offset: 32)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !5350, file: !265, line: 709, baseType: !631, size: 32, offset: 64)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_format", scope: !5350, file: !265, line: 714, baseType: !631, size: 32, offset: 96)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5350, file: !265, line: 719, baseType: !631, size: 32, offset: 128)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "handles", scope: !5350, file: !265, line: 725, baseType: !5358, size: 128, offset: 160)
!5358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !631, size: 128, elements: !5)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "pitches", scope: !5350, file: !265, line: 727, baseType: !5358, size: 128, offset: 288)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !5350, file: !265, line: 729, baseType: !5358, size: 128, offset: 416)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "modifier", scope: !5350, file: !265, line: 735, baseType: !5362, size: 256, offset: 576)
!5362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !635, size: 256, elements: !5)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "get_format_info", scope: !5340, file: !5275, line: 98, baseType: !5364, size: 64, offset: 64)
!5364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5365, size: 64)
!5365 = !DISubroutineType(types: !5366)
!5366 = !{!5367, !5348}
!5367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5368, size: 64)
!5368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5369)
!5369 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_format_info", file: !5275, line: 38, flags: DIFlagFwdDecl)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_changed", scope: !5340, file: !5275, line: 114, baseType: !5034, size: 64, offset: 128)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "mode_valid", scope: !5340, file: !5275, line: 124, baseType: !5372, size: 64, offset: 192)
!5372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5373, size: 64)
!5373 = !DISubroutineType(types: !5374)
!5374 = !{!160, !4485, !5375}
!5375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5376, size: 64)
!5376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5206)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_check", scope: !5340, file: !5275, line: 201, baseType: !5378, size: 64, offset: 256)
!5378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5379, size: 64)
!5379 = !DISubroutineType(types: !5380)
!5380 = !{!120, !4485, !5381}
!5381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5382, size: 64)
!5382 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_atomic_state", file: !242, line: 921, flags: DIFlagFwdDecl)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_commit", scope: !5340, file: !5275, line: 283, baseType: !5384, size: 64, offset: 320)
!5384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5385, size: 64)
!5385 = !DISubroutineType(types: !5386)
!5386 = !{!120, !4485, !5381, !1718}
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_alloc", scope: !5340, file: !5275, line: 302, baseType: !5388, size: 64, offset: 384)
!5388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5389, size: 64)
!5389 = !DISubroutineType(types: !5390)
!5390 = !{!5381, !4485}
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_clear", scope: !5340, file: !5275, line: 323, baseType: !5392, size: 64, offset: 448)
!5392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5393, size: 64)
!5393 = !DISubroutineType(types: !5394)
!5394 = !{null, !5381}
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_free", scope: !5340, file: !5275, line: 338, baseType: !5392, size: 64, offset: 512)
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "poll_enabled", scope: !5274, file: !5275, line: 546, baseType: !1718, size: 8, offset: 3520)
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "poll_running", scope: !5274, file: !5275, line: 547, baseType: !1718, size: 8, offset: 3528)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_event", scope: !5274, file: !5275, line: 548, baseType: !1718, size: 8, offset: 3536)
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_work", scope: !5274, file: !5275, line: 549, baseType: !4365, size: 704, offset: 3584)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "blob_lock", scope: !5274, file: !5275, line: 557, baseType: !845, size: 256, offset: 4288)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "property_blob_list", scope: !5274, file: !5275, line: 565, baseType: !382, size: 128, offset: 4544)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "edid_property", scope: !5274, file: !5275, line: 573, baseType: !5403, size: 64, offset: 4672)
!5403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5404, size: 64)
!5404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_property", file: !5405, line: 80, size: 960, elements: !5406)
!5405 = !DIFile(filename: "./include/drm/drm_property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "320ae008033d09c99df86eb5eb8877c7")
!5406 = !{!5407, !5408, !5431, !5432, !5433, !5434, !5435, !5436}
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5404, file: !5405, line: 84, baseType: !382, size: 128)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5404, file: !5405, line: 89, baseType: !5409, size: 256, offset: 128)
!5409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_object", file: !5410, line: 55, size: 256, elements: !5411)
!5410 = !DIFile(filename: "./include/drm/drm_mode_object.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ffaf2d776d1d6cf92a08dd44b890967f")
!5411 = !{!5412, !5413, !5414, !5425, !5426}
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5409, file: !5410, line: 56, baseType: !1684, size: 32)
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5409, file: !5410, line: 57, baseType: !1684, size: 32, offset: 32)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5409, file: !5410, line: 58, baseType: !5415, size: 64, offset: 64)
!5415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5416, size: 64)
!5416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_object_properties", file: !5410, line: 67, size: 3136, elements: !5417)
!5417 = !{!5418, !5419, !5423}
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5416, file: !5410, line: 73, baseType: !120, size: 32)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5416, file: !5410, line: 82, baseType: !5420, size: 1536, offset: 64)
!5420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5403, size: 1536, elements: !5421)
!5421 = !{!5422}
!5422 = !DISubrange(count: 24)
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !5416, file: !5410, line: 106, baseType: !5424, size: 1536, offset: 1600)
!5424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5111, size: 1536, elements: !5421)
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5409, file: !5410, line: 59, baseType: !4073, size: 32, offset: 128)
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "free_cb", scope: !5409, file: !5410, line: 60, baseType: !5427, size: 64, offset: 192)
!5427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5428, size: 64)
!5428 = !DISubroutineType(types: !5429)
!5429 = !{null, !5430}
!5430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5404, file: !5405, line: 166, baseType: !1684, size: 32, offset: 384)
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5404, file: !5405, line: 171, baseType: !3442, size: 256, offset: 416)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "num_values", scope: !5404, file: !5405, line: 176, baseType: !1684, size: 32, offset: 672)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !5404, file: !5405, line: 184, baseType: !5110, size: 64, offset: 704)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5404, file: !5405, line: 189, baseType: !4485, size: 64, offset: 768)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "enum_list", scope: !5404, file: !5405, line: 197, baseType: !382, size: 128, offset: 832)
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "dpms_property", scope: !5274, file: !5275, line: 578, baseType: !5403, size: 64, offset: 4736)
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "path_property", scope: !5274, file: !5275, line: 583, baseType: !5403, size: 64, offset: 4800)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "tile_property", scope: !5274, file: !5275, line: 589, baseType: !5403, size: 64, offset: 4864)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "link_status_property", scope: !5274, file: !5275, line: 594, baseType: !5403, size: 64, offset: 4928)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "plane_type_property", scope: !5274, file: !5275, line: 599, baseType: !5403, size: 64, offset: 4992)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_x", scope: !5274, file: !5275, line: 604, baseType: !5403, size: 64, offset: 5056)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_y", scope: !5274, file: !5275, line: 609, baseType: !5403, size: 64, offset: 5120)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_w", scope: !5274, file: !5275, line: 614, baseType: !5403, size: 64, offset: 5184)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_h", scope: !5274, file: !5275, line: 619, baseType: !5403, size: 64, offset: 5248)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_x", scope: !5274, file: !5275, line: 624, baseType: !5403, size: 64, offset: 5312)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_y", scope: !5274, file: !5275, line: 629, baseType: !5403, size: 64, offset: 5376)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_w", scope: !5274, file: !5275, line: 634, baseType: !5403, size: 64, offset: 5440)
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_h", scope: !5274, file: !5275, line: 639, baseType: !5403, size: 64, offset: 5504)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_id", scope: !5274, file: !5275, line: 644, baseType: !5403, size: 64, offset: 5568)
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "prop_in_fence_fd", scope: !5274, file: !5275, line: 649, baseType: !5403, size: 64, offset: 5632)
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "prop_out_fence_ptr", scope: !5274, file: !5275, line: 655, baseType: !5403, size: 64, offset: 5696)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_id", scope: !5274, file: !5275, line: 660, baseType: !5403, size: 64, offset: 5760)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_damage_clips", scope: !5274, file: !5275, line: 669, baseType: !5403, size: 64, offset: 5824)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "prop_active", scope: !5274, file: !5275, line: 675, baseType: !5403, size: 64, offset: 5888)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "prop_mode_id", scope: !5274, file: !5275, line: 681, baseType: !5403, size: 64, offset: 5952)
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "prop_vrr_enabled", scope: !5274, file: !5275, line: 686, baseType: !5403, size: 64, offset: 6016)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_subconnector_property", scope: !5274, file: !5275, line: 692, baseType: !5403, size: 64, offset: 6080)
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_select_subconnector_property", scope: !5274, file: !5275, line: 697, baseType: !5403, size: 64, offset: 6144)
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "dp_subconnector_property", scope: !5274, file: !5275, line: 703, baseType: !5403, size: 64, offset: 6208)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "tv_subconnector_property", scope: !5274, file: !5275, line: 709, baseType: !5403, size: 64, offset: 6272)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "tv_select_subconnector_property", scope: !5274, file: !5275, line: 714, baseType: !5403, size: 64, offset: 6336)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_tv_mode_property", scope: !5274, file: !5275, line: 722, baseType: !5403, size: 64, offset: 6400)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "tv_mode_property", scope: !5274, file: !5275, line: 728, baseType: !5403, size: 64, offset: 6464)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "tv_left_margin_property", scope: !5274, file: !5275, line: 734, baseType: !5403, size: 64, offset: 6528)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "tv_right_margin_property", scope: !5274, file: !5275, line: 739, baseType: !5403, size: 64, offset: 6592)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "tv_top_margin_property", scope: !5274, file: !5275, line: 744, baseType: !5403, size: 64, offset: 6656)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "tv_bottom_margin_property", scope: !5274, file: !5275, line: 749, baseType: !5403, size: 64, offset: 6720)
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "tv_brightness_property", scope: !5274, file: !5275, line: 754, baseType: !5403, size: 64, offset: 6784)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "tv_contrast_property", scope: !5274, file: !5275, line: 759, baseType: !5403, size: 64, offset: 6848)
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "tv_flicker_reduction_property", scope: !5274, file: !5275, line: 764, baseType: !5403, size: 64, offset: 6912)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "tv_overscan_property", scope: !5274, file: !5275, line: 769, baseType: !5403, size: 64, offset: 6976)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "tv_saturation_property", scope: !5274, file: !5275, line: 774, baseType: !5403, size: 64, offset: 7040)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "tv_hue_property", scope: !5274, file: !5275, line: 778, baseType: !5403, size: 64, offset: 7104)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode_property", scope: !5274, file: !5275, line: 784, baseType: !5403, size: 64, offset: 7168)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_property", scope: !5274, file: !5275, line: 789, baseType: !5403, size: 64, offset: 7232)
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "content_type_property", scope: !5274, file: !5275, line: 794, baseType: !5403, size: 64, offset: 7296)
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_property", scope: !5274, file: !5275, line: 799, baseType: !5403, size: 64, offset: 7360)
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_size_property", scope: !5274, file: !5275, line: 804, baseType: !5403, size: 64, offset: 7424)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "ctm_property", scope: !5274, file: !5275, line: 810, baseType: !5403, size: 64, offset: 7488)
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_property", scope: !5274, file: !5275, line: 816, baseType: !5403, size: 64, offset: 7552)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_size_property", scope: !5274, file: !5275, line: 821, baseType: !5403, size: 64, offset: 7616)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_x_property", scope: !5274, file: !5275, line: 827, baseType: !5403, size: 64, offset: 7680)
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_y_property", scope: !5274, file: !5275, line: 832, baseType: !5403, size: 64, offset: 7744)
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "non_desktop_property", scope: !5274, file: !5275, line: 839, baseType: !5403, size: 64, offset: 7808)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation_property", scope: !5274, file: !5275, line: 846, baseType: !5403, size: 64, offset: 7872)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_fb_id_property", scope: !5274, file: !5275, line: 853, baseType: !5403, size: 64, offset: 7936)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_pixel_formats_property", scope: !5274, file: !5275, line: 861, baseType: !5403, size: 64, offset: 8000)
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_out_fence_ptr_property", scope: !5274, file: !5275, line: 869, baseType: !5403, size: 64, offset: 8064)
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_output_metadata_property", scope: !5274, file: !5275, line: 876, baseType: !5403, size: 64, offset: 8128)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "content_protection_property", scope: !5274, file: !5275, line: 882, baseType: !5403, size: 64, offset: 8192)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "hdcp_content_type_property", scope: !5274, file: !5275, line: 888, baseType: !5403, size: 64, offset: 8256)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "preferred_depth", scope: !5274, file: !5275, line: 891, baseType: !1684, size: 32, offset: 8320)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "prefer_shadow", scope: !5274, file: !5275, line: 891, baseType: !1684, size: 32, offset: 8352)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_xbgr_30bpp", scope: !5274, file: !5275, line: 899, baseType: !1718, size: 8, offset: 8384)
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_host_byte_order", scope: !5274, file: !5275, line: 913, baseType: !1718, size: 8, offset: 8392)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "async_page_flip", scope: !5274, file: !5275, line: 919, baseType: !1718, size: 8, offset: 8400)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "fb_modifiers_not_supported", scope: !5274, file: !5275, line: 929, baseType: !1718, size: 8, offset: 8408)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "normalize_zpos", scope: !5274, file: !5275, line: 937, baseType: !1718, size: 8, offset: 8416)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "modifiers_property", scope: !5274, file: !5275, line: 943, baseType: !5403, size: 64, offset: 8448)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_width", scope: !5274, file: !5275, line: 946, baseType: !1684, size: 32, offset: 8512)
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_height", scope: !5274, file: !5275, line: 946, baseType: !1684, size: 32, offset: 8544)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_state", scope: !5274, file: !5275, line: 955, baseType: !5381, size: 64, offset: 8576)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !5274, file: !5275, line: 957, baseType: !5505, size: 64, offset: 8640)
!5505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5506, size: 64)
!5506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5507)
!5507 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_helper_funcs", file: !5275, line: 957, flags: DIFlagFwdDecl)
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_lock", scope: !4486, file: !213, line: 285, baseType: !845, size: 256, offset: 11648)
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_idr", scope: !4486, file: !213, line: 288, baseType: !977, size: 192, offset: 11904)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "vma_offset_manager", scope: !4486, file: !213, line: 291, baseType: !5511, size: 64, offset: 12096)
!5511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5512, size: 64)
!5512 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vma_offset_manager", file: !213, line: 16, flags: DIFlagFwdDecl)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "vram_mm", scope: !4486, file: !213, line: 294, baseType: !5514, size: 64, offset: 12160)
!5514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5515, size: 64)
!5515 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vram_mm", file: !213, line: 17, flags: DIFlagFwdDecl)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "switch_power_state", scope: !4486, file: !213, line: 304, baseType: !212, size: 32, offset: 12224)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "fb_helper", scope: !4486, file: !213, line: 312, baseType: !5518, size: 64, offset: 12288)
!5518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5519, size: 64)
!5519 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_fb_helper", file: !213, line: 18, flags: DIFlagFwdDecl)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !4486, file: !213, line: 319, baseType: !845, size: 256, offset: 12352)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_list", scope: !4486, file: !213, line: 327, baseType: !382, size: 128, offset: 12608)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4481, file: !4482, line: 936, baseType: !4776, size: 64, offset: 64)
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4481, file: !4482, line: 944, baseType: !382, size: 128, offset: 128)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4481, file: !4482, line: 947, baseType: !481, size: 64, offset: 256)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4481, file: !4482, line: 959, baseType: !5279, size: 448, offset: 320)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4481, file: !4482, line: 962, baseType: !5409, size: 256, offset: 768)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !4481, file: !4482, line: 971, baseType: !5528, size: 64, offset: 1024)
!5528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5529, size: 64)
!5529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane", file: !232, line: 603, size: 5312, elements: !5530)
!5530 = !{!5531, !5532, !5533, !5534, !5535, !5536, !5537, !5538, !5539, !5540, !5541, !5542, !5543, !5544, !5545, !5649, !5650, !5651, !5652, !5656, !5657, !5658, !5659, !5660, !5661, !5662, !5663}
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5529, file: !232, line: 605, baseType: !4485, size: 64)
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5529, file: !232, line: 614, baseType: !382, size: 128, offset: 64)
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5529, file: !232, line: 617, baseType: !481, size: 64, offset: 192)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5529, file: !232, line: 628, baseType: !5279, size: 448, offset: 256)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5529, file: !232, line: 631, baseType: !5409, size: 256, offset: 704)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "possible_crtcs", scope: !5529, file: !232, line: 637, baseType: !1684, size: 32, offset: 960)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "format_types", scope: !5529, file: !232, line: 639, baseType: !5062, size: 64, offset: 1024)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "format_count", scope: !5529, file: !232, line: 641, baseType: !18, size: 32, offset: 1088)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "format_default", scope: !5529, file: !232, line: 646, baseType: !1718, size: 8, offset: 1120)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "modifiers", scope: !5529, file: !232, line: 649, baseType: !5110, size: 64, offset: 1152)
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "modifier_count", scope: !5529, file: !232, line: 651, baseType: !18, size: 32, offset: 1216)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5529, file: !232, line: 660, baseType: !4480, size: 64, offset: 1280)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "fb", scope: !5529, file: !232, line: 669, baseType: !5346, size: 64, offset: 1344)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "old_fb", scope: !5529, file: !232, line: 677, baseType: !5346, size: 64, offset: 1408)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !5529, file: !232, line: 680, baseType: !5546, size: 64, offset: 1472)
!5546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5547, size: 64)
!5547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5548)
!5548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane_funcs", file: !232, line: 279, size: 832, elements: !5549)
!5549 = !{!5550, !5554, !5558, !5562, !5563, !5567, !5622, !5626, !5630, !5636, !5640, !5641, !5645}
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "update_plane", scope: !5548, file: !232, line: 306, baseType: !5551, size: 64)
!5551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5552, size: 64)
!5552 = !DISubroutineType(types: !5553)
!5553 = !{!120, !5528, !4480, !5346, !120, !120, !18, !18, !1684, !1684, !1684, !1684, !5298}
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "disable_plane", scope: !5548, file: !232, line: 329, baseType: !5555, size: 64, offset: 64)
!5555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5556, size: 64)
!5556 = !DISubroutineType(types: !5557)
!5557 = !{!120, !5528, !5298}
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !5548, file: !232, line: 339, baseType: !5559, size: 64, offset: 128)
!5559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5560, size: 64)
!5560 = !DISubroutineType(types: !5561)
!5561 = !{null, !5528}
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5548, file: !232, line: 351, baseType: !5559, size: 64, offset: 192)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "set_property", scope: !5548, file: !232, line: 367, baseType: !5564, size: 64, offset: 256)
!5564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5565, size: 64)
!5565 = !DISubroutineType(types: !5566)
!5566 = !{!120, !5528, !5403, !5111}
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !5548, file: !232, line: 401, baseType: !5568, size: 64, offset: 320)
!5568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5569, size: 64)
!5569 = !DISubroutineType(types: !5570)
!5570 = !{!5571, !5528}
!5571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5572, size: 64)
!5572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane_state", file: !232, line: 52, size: 1280, elements: !5573)
!5573 = !{!5574, !5575, !5576, !5577, !5580, !5581, !5582, !5583, !5584, !5585, !5586, !5587, !5588, !5589, !5591, !5592, !5593, !5594, !5595, !5596, !5606, !5607, !5615, !5616, !5617, !5618, !5621}
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !5572, file: !232, line: 54, baseType: !5528, size: 64)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5572, file: !232, line: 62, baseType: !4480, size: 64, offset: 64)
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "fb", scope: !5572, file: !232, line: 70, baseType: !5346, size: 64, offset: 128)
!5577 = !DIDerivedType(tag: DW_TAG_member, name: "fence", scope: !5572, file: !232, line: 83, baseType: !5578, size: 64, offset: 192)
!5578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5579, size: 64)
!5579 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence", file: !232, line: 83, flags: DIFlagFwdDecl)
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_x", scope: !5572, file: !232, line: 92, baseType: !1661, size: 32, offset: 256)
!5581 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_y", scope: !5572, file: !232, line: 99, baseType: !1661, size: 32, offset: 288)
!5582 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_w", scope: !5572, file: !232, line: 103, baseType: !1684, size: 32, offset: 320)
!5583 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_h", scope: !5572, file: !232, line: 103, baseType: !1684, size: 32, offset: 352)
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "src_x", scope: !5572, file: !232, line: 109, baseType: !1684, size: 32, offset: 384)
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "src_y", scope: !5572, file: !232, line: 114, baseType: !1684, size: 32, offset: 416)
!5586 = !DIDerivedType(tag: DW_TAG_member, name: "src_h", scope: !5572, file: !232, line: 117, baseType: !1684, size: 32, offset: 448)
!5587 = !DIDerivedType(tag: DW_TAG_member, name: "src_w", scope: !5572, file: !232, line: 117, baseType: !1684, size: 32, offset: 480)
!5588 = !DIDerivedType(tag: DW_TAG_member, name: "alpha", scope: !5572, file: !232, line: 125, baseType: !449, size: 16, offset: 512)
!5589 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_blend_mode", scope: !5572, file: !232, line: 133, baseType: !5590, size: 16, offset: 528)
!5590 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !383, line: 109, baseType: !449)
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "rotation", scope: !5572, file: !232, line: 140, baseType: !18, size: 32, offset: 544)
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "zpos", scope: !5572, file: !232, line: 155, baseType: !18, size: 32, offset: 576)
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_zpos", scope: !5572, file: !232, line: 164, baseType: !18, size: 32, offset: 608)
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "color_encoding", scope: !5572, file: !232, line: 171, baseType: !219, size: 32, offset: 640)
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "color_range", scope: !5572, file: !232, line: 178, baseType: !226, size: 32, offset: 672)
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "fb_damage_clips", scope: !5572, file: !232, line: 191, baseType: !5597, size: 64, offset: 704)
!5597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5598, size: 64)
!5598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_property_blob", file: !5405, line: 216, size: 704, elements: !5599)
!5599 = !{!5600, !5601, !5602, !5603, !5604, !5605}
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5598, file: !5405, line: 217, baseType: !5409, size: 256)
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5598, file: !5405, line: 218, baseType: !4485, size: 64, offset: 256)
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "head_global", scope: !5598, file: !5405, line: 219, baseType: !382, size: 128, offset: 320)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "head_file", scope: !5598, file: !5405, line: 220, baseType: !382, size: 128, offset: 448)
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5598, file: !5405, line: 221, baseType: !528, size: 64, offset: 576)
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5598, file: !5405, line: 222, baseType: !376, size: 64, offset: 640)
!5606 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_damage_clips", scope: !5572, file: !232, line: 201, baseType: !1718, size: 8, offset: 768)
!5607 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !5572, file: !232, line: 223, baseType: !5608, size: 128, offset: 800)
!5608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_rect", file: !5609, line: 46, size: 128, elements: !5610)
!5609 = !DIFile(filename: "./include/drm/drm_rect.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "16c059bec9955b5d3fc8d798e393cc6b")
!5610 = !{!5611, !5612, !5613, !5614}
!5611 = !DIDerivedType(tag: DW_TAG_member, name: "x1", scope: !5608, file: !5609, line: 47, baseType: !120, size: 32)
!5612 = !DIDerivedType(tag: DW_TAG_member, name: "y1", scope: !5608, file: !5609, line: 47, baseType: !120, size: 32, offset: 32)
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "x2", scope: !5608, file: !5609, line: 47, baseType: !120, size: 32, offset: 64)
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "y2", scope: !5608, file: !5609, line: 47, baseType: !120, size: 32, offset: 96)
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !5572, file: !232, line: 223, baseType: !5608, size: 128, offset: 928)
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "visible", scope: !5572, file: !232, line: 231, baseType: !1718, size: 8, offset: 1056)
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_filter", scope: !5572, file: !232, line: 238, baseType: !231, size: 32, offset: 1088)
!5618 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !5572, file: !232, line: 246, baseType: !5619, size: 64, offset: 1152)
!5619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5620, size: 64)
!5620 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_commit", file: !242, line: 928, flags: DIFlagFwdDecl)
!5621 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5572, file: !232, line: 249, baseType: !5381, size: 64, offset: 1216)
!5622 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !5548, file: !232, line: 411, baseType: !5623, size: 64, offset: 384)
!5623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5624, size: 64)
!5624 = !DISubroutineType(types: !5625)
!5625 = !{null, !5528, !5571}
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_set_property", scope: !5548, file: !232, line: 456, baseType: !5627, size: 64, offset: 448)
!5627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5628, size: 64)
!5628 = !DISubroutineType(types: !5629)
!5629 = !{!120, !5528, !5571, !5403, !5111}
!5630 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_get_property", scope: !5548, file: !232, line: 479, baseType: !5631, size: 64, offset: 512)
!5631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5632, size: 64)
!5632 = !DISubroutineType(types: !5633)
!5633 = !{!120, !5528, !5634, !5403, !5110}
!5634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5635, size: 64)
!5635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5572)
!5636 = !DIDerivedType(tag: DW_TAG_member, name: "late_register", scope: !5548, file: !232, line: 496, baseType: !5637, size: 64, offset: 576)
!5637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5638, size: 64)
!5638 = !DISubroutineType(types: !5639)
!5639 = !{!120, !5528}
!5640 = !DIDerivedType(tag: DW_TAG_member, name: "early_unregister", scope: !5548, file: !232, line: 507, baseType: !5559, size: 64, offset: 640)
!5641 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_print_state", scope: !5548, file: !232, line: 518, baseType: !5642, size: 64, offset: 704)
!5642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5643, size: 64)
!5643 = !DISubroutineType(types: !5644)
!5644 = !{null, !5116, !5634}
!5645 = !DIDerivedType(tag: DW_TAG_member, name: "format_mod_supported", scope: !5548, file: !232, line: 537, baseType: !5646, size: 64, offset: 768)
!5646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5647, size: 64)
!5647 = !DISubroutineType(types: !5648)
!5648 = !{!1718, !5528, !1684, !5111}
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5529, file: !232, line: 683, baseType: !5416, size: 3136, offset: 1536)
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5529, file: !232, line: 686, baseType: !236, size: 32, offset: 4672)
!5651 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5529, file: !232, line: 692, baseType: !18, size: 32, offset: 4704)
!5652 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !5529, file: !232, line: 695, baseType: !5653, size: 64, offset: 4736)
!5653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5654, size: 64)
!5654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5655)
!5655 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane_helper_funcs", file: !232, line: 695, flags: DIFlagFwdDecl)
!5656 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5529, file: !232, line: 710, baseType: !5571, size: 64, offset: 4800)
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "alpha_property", scope: !5529, file: !232, line: 717, baseType: !5403, size: 64, offset: 4864)
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "zpos_property", scope: !5529, file: !232, line: 723, baseType: !5403, size: 64, offset: 4928)
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "rotation_property", scope: !5529, file: !232, line: 729, baseType: !5403, size: 64, offset: 4992)
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "blend_mode_property", scope: !5529, file: !232, line: 737, baseType: !5403, size: 64, offset: 5056)
!5661 = !DIDerivedType(tag: DW_TAG_member, name: "color_encoding_property", scope: !5529, file: !232, line: 746, baseType: !5403, size: 64, offset: 5120)
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "color_range_property", scope: !5529, file: !232, line: 754, baseType: !5403, size: 64, offset: 5184)
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_filter_property", scope: !5529, file: !232, line: 760, baseType: !5403, size: 64, offset: 5248)
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "cursor", scope: !4481, file: !4482, line: 980, baseType: !5528, size: 64, offset: 1088)
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4481, file: !4482, line: 986, baseType: !18, size: 32, offset: 1152)
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_x", scope: !4481, file: !4482, line: 995, baseType: !120, size: 32, offset: 1184)
!5667 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_y", scope: !4481, file: !4482, line: 1003, baseType: !120, size: 32, offset: 1216)
!5668 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4481, file: !4482, line: 1013, baseType: !1718, size: 8, offset: 1248)
!5669 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4481, file: !4482, line: 1023, baseType: !5206, size: 960, offset: 1280)
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "hwmode", scope: !4481, file: !4482, line: 1039, baseType: !5206, size: 960, offset: 2240)
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !4481, file: !4482, line: 1048, baseType: !120, size: 32, offset: 3200)
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !4481, file: !4482, line: 1056, baseType: !120, size: 32, offset: 3232)
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !4481, file: !4482, line: 1059, baseType: !5674, size: 64, offset: 3264)
!5674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5675, size: 64)
!5675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5676)
!5676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_funcs", file: !4482, line: 402, size: 1536, elements: !5677)
!5677 = !{!5678, !5680, !5684, !5688, !5692, !5697, !5698, !6039, !6086, !6090, !6094, !6128, !6132, !6136, !6142, !6146, !6147, !6151, !6156, !6162, !6166, !6170, !6171, !6172}
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5676, file: !4482, line: 413, baseType: !5679, size: 64)
!5679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4478, size: 64)
!5680 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_set", scope: !5676, file: !4482, line: 436, baseType: !5681, size: 64, offset: 64)
!5681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5682, size: 64)
!5682 = !DISubroutineType(types: !5683)
!5683 = !{!120, !4480, !4960, !1684, !1684, !1684}
!5684 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_set2", scope: !5676, file: !4482, line: 458, baseType: !5685, size: 64, offset: 128)
!5685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5686, size: 64)
!5686 = !DISubroutineType(types: !5687)
!5687 = !{!120, !4480, !4960, !1684, !1684, !1684, !1661, !1661}
!5688 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_move", scope: !5676, file: !4482, line: 478, baseType: !5689, size: 64, offset: 192)
!5689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5690, size: 64)
!5690 = !DISubroutineType(types: !5691)
!5691 = !{!120, !4480, !120, !120}
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_set", scope: !5676, file: !4482, line: 493, baseType: !5693, size: 64, offset: 256)
!5693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5694, size: 64)
!5694 = !DISubroutineType(types: !5695)
!5695 = !{!120, !4480, !5696, !5696, !5696, !1684, !5298}
!5696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!5697 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !5676, file: !4482, line: 504, baseType: !5679, size: 64, offset: 320)
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !5676, file: !4482, line: 520, baseType: !5699, size: 64, offset: 384)
!5699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5700, size: 64)
!5700 = !DISubroutineType(types: !5701)
!5701 = !{!120, !5702, !5298}
!5702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5703, size: 64)
!5703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_set", file: !4482, line: 1193, size: 384, elements: !5704)
!5704 = !{!5705, !5706, !5707, !5709, !5710, !5711, !6038}
!5705 = !DIDerivedType(tag: DW_TAG_member, name: "fb", scope: !5703, file: !4482, line: 1194, baseType: !5346, size: 64)
!5706 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5703, file: !4482, line: 1195, baseType: !4480, size: 64, offset: 64)
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5703, file: !4482, line: 1196, baseType: !5708, size: 64, offset: 128)
!5708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5206, size: 64)
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !5703, file: !4482, line: 1198, baseType: !1684, size: 32, offset: 192)
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !5703, file: !4482, line: 1199, baseType: !1684, size: 32, offset: 224)
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "connectors", scope: !5703, file: !4482, line: 1201, baseType: !5712, size: 64, offset: 256)
!5712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5713, size: 64)
!5713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5714, size: 64)
!5714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector", file: !242, line: 1494, size: 10880, elements: !5715)
!5715 = !{!5716, !5717, !5718, !5731, !5732, !5733, !5734, !5735, !5736, !5737, !5738, !5739, !5740, !5741, !5742, !5743, !5744, !5745, !5746, !5747, !5748, !5819, !5923, !5924, !5925, !5926, !5927, !5928, !5929, !5930, !5933, !5945, !5946, !5947, !5949, !5950, !5954, !5976, !5977, !5981, !5982, !5983, !5984, !5985, !5989, !5990, !5992, !5994, !5995, !5998, !5999, !6000, !6001, !6002, !6003, !6004, !6005, !6006, !6015, !6016, !6017, !6018, !6019, !6020, !6021, !6022, !6023}
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5714, file: !242, line: 1496, baseType: !4485, size: 64)
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "kdev", scope: !5714, file: !242, line: 1498, baseType: !4491, size: 64, offset: 64)
!5718 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5714, file: !242, line: 1500, baseType: !5719, size: 64, offset: 128)
!5719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5720, size: 64)
!5720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !105, line: 106, size: 256, elements: !5721)
!5721 = !{!5722, !5723, !5727}
!5722 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5720, file: !105, line: 107, baseType: !519, size: 128)
!5723 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !5720, file: !105, line: 108, baseType: !5724, size: 64, offset: 128)
!5724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5725, size: 64)
!5725 = !DISubroutineType(types: !5726)
!5726 = !{!513, !4491, !5719, !481}
!5727 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !5720, file: !105, line: 110, baseType: !5728, size: 64, offset: 192)
!5728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5729, size: 64)
!5729 = !DISubroutineType(types: !5730)
!5730 = !{!513, !4491, !5719, !400, !528}
!5731 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !5714, file: !242, line: 1508, baseType: !4780, size: 64, offset: 192)
!5732 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5714, file: !242, line: 1518, baseType: !382, size: 128, offset: 256)
!5733 = !DIDerivedType(tag: DW_TAG_member, name: "global_connector_list_entry", scope: !5714, file: !242, line: 1526, baseType: !382, size: 128, offset: 384)
!5734 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5714, file: !242, line: 1529, baseType: !5409, size: 256, offset: 512)
!5735 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5714, file: !242, line: 1532, baseType: !481, size: 64, offset: 768)
!5736 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5714, file: !242, line: 1539, baseType: !845, size: 256, offset: 832)
!5737 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5714, file: !242, line: 1547, baseType: !18, size: 32, offset: 1088)
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "connector_type", scope: !5714, file: !242, line: 1553, baseType: !120, size: 32, offset: 1120)
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "connector_type_id", scope: !5714, file: !242, line: 1555, baseType: !120, size: 32, offset: 1152)
!5740 = !DIDerivedType(tag: DW_TAG_member, name: "interlace_allowed", scope: !5714, file: !242, line: 1561, baseType: !1718, size: 8, offset: 1184)
!5741 = !DIDerivedType(tag: DW_TAG_member, name: "doublescan_allowed", scope: !5714, file: !242, line: 1567, baseType: !1718, size: 8, offset: 1192)
!5742 = !DIDerivedType(tag: DW_TAG_member, name: "stereo_allowed", scope: !5714, file: !242, line: 1573, baseType: !1718, size: 8, offset: 1200)
!5743 = !DIDerivedType(tag: DW_TAG_member, name: "ycbcr_420_allowed", scope: !5714, file: !242, line: 1581, baseType: !1718, size: 8, offset: 1208)
!5744 = !DIDerivedType(tag: DW_TAG_member, name: "registration_state", scope: !5714, file: !242, line: 1589, baseType: !241, size: 32, offset: 1216)
!5745 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !5714, file: !242, line: 1596, baseType: !382, size: 128, offset: 1280)
!5746 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5714, file: !242, line: 1603, baseType: !247, size: 32, offset: 1408)
!5747 = !DIDerivedType(tag: DW_TAG_member, name: "probed_modes", scope: !5714, file: !242, line: 1611, baseType: !382, size: 128, offset: 1472)
!5748 = !DIDerivedType(tag: DW_TAG_member, name: "display_info", scope: !5714, file: !242, line: 1622, baseType: !5749, size: 1536, offset: 1600)
!5749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_display_info", file: !242, line: 651, size: 1536, elements: !5750)
!5750 = !{!5751, !5752, !5753, !5754, !5755, !5756, !5757, !5760, !5761, !5762, !5763, !5764, !5765, !5766, !5767, !5768, !5769, !5770, !5771, !5801, !5802, !5807, !5812, !5813, !5814, !5815, !5817, !5818}
!5751 = !DIDerivedType(tag: DW_TAG_member, name: "width_mm", scope: !5749, file: !242, line: 655, baseType: !18, size: 32)
!5752 = !DIDerivedType(tag: DW_TAG_member, name: "height_mm", scope: !5749, file: !242, line: 660, baseType: !18, size: 32, offset: 32)
!5753 = !DIDerivedType(tag: DW_TAG_member, name: "bpc", scope: !5749, file: !242, line: 665, baseType: !18, size: 32, offset: 64)
!5754 = !DIDerivedType(tag: DW_TAG_member, name: "subpixel_order", scope: !5749, file: !242, line: 670, baseType: !252, size: 32, offset: 96)
!5755 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation", scope: !5749, file: !242, line: 684, baseType: !120, size: 32, offset: 128)
!5756 = !DIDerivedType(tag: DW_TAG_member, name: "color_formats", scope: !5749, file: !242, line: 692, baseType: !630, size: 32, offset: 160)
!5757 = !DIDerivedType(tag: DW_TAG_member, name: "bus_formats", scope: !5749, file: !242, line: 699, baseType: !5758, size: 64, offset: 192)
!5758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5759, size: 64)
!5759 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !630)
!5760 = !DIDerivedType(tag: DW_TAG_member, name: "num_bus_formats", scope: !5749, file: !242, line: 703, baseType: !18, size: 32, offset: 256)
!5761 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !5749, file: !242, line: 710, baseType: !630, size: 32, offset: 288)
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "max_tmds_clock", scope: !5749, file: !242, line: 716, baseType: !120, size: 32, offset: 320)
!5763 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_dual", scope: !5749, file: !242, line: 721, baseType: !1718, size: 8, offset: 352)
!5764 = !DIDerivedType(tag: DW_TAG_member, name: "is_hdmi", scope: !5749, file: !242, line: 729, baseType: !1718, size: 8, offset: 360)
!5765 = !DIDerivedType(tag: DW_TAG_member, name: "has_audio", scope: !5749, file: !242, line: 737, baseType: !1718, size: 8, offset: 368)
!5766 = !DIDerivedType(tag: DW_TAG_member, name: "has_hdmi_infoframe", scope: !5749, file: !242, line: 742, baseType: !1718, size: 8, offset: 376)
!5767 = !DIDerivedType(tag: DW_TAG_member, name: "rgb_quant_range_selectable", scope: !5749, file: !242, line: 748, baseType: !1718, size: 8, offset: 384)
!5768 = !DIDerivedType(tag: DW_TAG_member, name: "edid_hdmi_rgb444_dc_modes", scope: !5749, file: !242, line: 754, baseType: !439, size: 8, offset: 392)
!5769 = !DIDerivedType(tag: DW_TAG_member, name: "edid_hdmi_ycbcr444_dc_modes", scope: !5749, file: !242, line: 760, baseType: !439, size: 8, offset: 400)
!5770 = !DIDerivedType(tag: DW_TAG_member, name: "cea_rev", scope: !5749, file: !242, line: 765, baseType: !439, size: 8, offset: 408)
!5771 = !DIDerivedType(tag: DW_TAG_member, name: "hdmi", scope: !5749, file: !242, line: 770, baseType: !5772, size: 768, offset: 448)
!5772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_hdmi_info", file: !242, line: 293, size: 768, elements: !5773)
!5773 = !{!5774, !5784, !5785, !5786, !5787, !5788, !5789}
!5774 = !DIDerivedType(tag: DW_TAG_member, name: "scdc", scope: !5772, file: !242, line: 295, baseType: !5775, size: 32)
!5775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_scdc", file: !242, line: 231, size: 32, elements: !5776)
!5776 = !{!5777, !5778, !5779}
!5777 = !DIDerivedType(tag: DW_TAG_member, name: "supported", scope: !5775, file: !242, line: 235, baseType: !1718, size: 8)
!5778 = !DIDerivedType(tag: DW_TAG_member, name: "read_request", scope: !5775, file: !242, line: 239, baseType: !1718, size: 8, offset: 8)
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "scrambling", scope: !5775, file: !242, line: 243, baseType: !5780, size: 16, offset: 16)
!5780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_scrambling", file: !242, line: 214, size: 16, elements: !5781)
!5781 = !{!5782, !5783}
!5782 = !DIDerivedType(tag: DW_TAG_member, name: "supported", scope: !5780, file: !242, line: 218, baseType: !1718, size: 8)
!5783 = !DIDerivedType(tag: DW_TAG_member, name: "low_rates", scope: !5780, file: !242, line: 222, baseType: !1718, size: 8, offset: 8)
!5784 = !DIDerivedType(tag: DW_TAG_member, name: "y420_vdb_modes", scope: !5772, file: !242, line: 303, baseType: !4311, size: 256, offset: 64)
!5785 = !DIDerivedType(tag: DW_TAG_member, name: "y420_cmdb_modes", scope: !5772, file: !242, line: 311, baseType: !4311, size: 256, offset: 320)
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "y420_dc_modes", scope: !5772, file: !242, line: 314, baseType: !439, size: 8, offset: 576)
!5787 = !DIDerivedType(tag: DW_TAG_member, name: "max_frl_rate_per_lane", scope: !5772, file: !242, line: 317, baseType: !439, size: 8, offset: 584)
!5788 = !DIDerivedType(tag: DW_TAG_member, name: "max_lanes", scope: !5772, file: !242, line: 320, baseType: !439, size: 8, offset: 592)
!5789 = !DIDerivedType(tag: DW_TAG_member, name: "dsc_cap", scope: !5772, file: !242, line: 323, baseType: !5790, size: 128, offset: 608)
!5790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_hdmi_dsc_cap", file: !242, line: 253, size: 128, elements: !5791)
!5791 = !{!5792, !5793, !5794, !5795, !5796, !5797, !5798, !5799, !5800}
!5792 = !DIDerivedType(tag: DW_TAG_member, name: "v_1p2", scope: !5790, file: !242, line: 255, baseType: !1718, size: 8)
!5793 = !DIDerivedType(tag: DW_TAG_member, name: "native_420", scope: !5790, file: !242, line: 258, baseType: !1718, size: 8, offset: 8)
!5794 = !DIDerivedType(tag: DW_TAG_member, name: "all_bpp", scope: !5790, file: !242, line: 264, baseType: !1718, size: 8, offset: 16)
!5795 = !DIDerivedType(tag: DW_TAG_member, name: "bpc_supported", scope: !5790, file: !242, line: 269, baseType: !439, size: 8, offset: 24)
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "max_slices", scope: !5790, file: !242, line: 272, baseType: !439, size: 8, offset: 32)
!5797 = !DIDerivedType(tag: DW_TAG_member, name: "clk_per_slice", scope: !5790, file: !242, line: 275, baseType: !120, size: 32, offset: 64)
!5798 = !DIDerivedType(tag: DW_TAG_member, name: "max_lanes", scope: !5790, file: !242, line: 278, baseType: !439, size: 8, offset: 96)
!5799 = !DIDerivedType(tag: DW_TAG_member, name: "max_frl_rate_per_lane", scope: !5790, file: !242, line: 281, baseType: !439, size: 8, offset: 104)
!5800 = !DIDerivedType(tag: DW_TAG_member, name: "total_chunk_kbytes", scope: !5790, file: !242, line: 284, baseType: !439, size: 8, offset: 112)
!5801 = !DIDerivedType(tag: DW_TAG_member, name: "non_desktop", scope: !5749, file: !242, line: 775, baseType: !1718, size: 8, offset: 1216)
!5802 = !DIDerivedType(tag: DW_TAG_member, name: "monitor_range", scope: !5749, file: !242, line: 780, baseType: !5803, size: 32, offset: 1232)
!5803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_monitor_range_info", file: !242, line: 383, size: 32, elements: !5804)
!5804 = !{!5805, !5806}
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "min_vfreq", scope: !5803, file: !242, line: 384, baseType: !449, size: 16)
!5806 = !DIDerivedType(tag: DW_TAG_member, name: "max_vfreq", scope: !5803, file: !242, line: 385, baseType: !449, size: 16, offset: 16)
!5807 = !DIDerivedType(tag: DW_TAG_member, name: "luminance_range", scope: !5749, file: !242, line: 785, baseType: !5808, size: 64, offset: 1280)
!5808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_luminance_range_info", file: !242, line: 399, size: 64, elements: !5809)
!5809 = !{!5810, !5811}
!5810 = !DIDerivedType(tag: DW_TAG_member, name: "min_luminance", scope: !5808, file: !242, line: 400, baseType: !630, size: 32)
!5811 = !DIDerivedType(tag: DW_TAG_member, name: "max_luminance", scope: !5808, file: !242, line: 401, baseType: !630, size: 32, offset: 32)
!5812 = !DIDerivedType(tag: DW_TAG_member, name: "mso_stream_count", scope: !5749, file: !242, line: 792, baseType: !439, size: 8, offset: 1344)
!5813 = !DIDerivedType(tag: DW_TAG_member, name: "mso_pixel_overlap", scope: !5749, file: !242, line: 797, baseType: !439, size: 8, offset: 1352)
!5814 = !DIDerivedType(tag: DW_TAG_member, name: "max_dsc_bpp", scope: !5749, file: !242, line: 803, baseType: !630, size: 32, offset: 1376)
!5815 = !DIDerivedType(tag: DW_TAG_member, name: "vics", scope: !5749, file: !242, line: 808, baseType: !5816, size: 64, offset: 1408)
!5816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!5817 = !DIDerivedType(tag: DW_TAG_member, name: "vics_len", scope: !5749, file: !242, line: 813, baseType: !120, size: 32, offset: 1472)
!5818 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !5749, file: !242, line: 818, baseType: !630, size: 32, offset: 1504)
!5819 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !5714, file: !242, line: 1625, baseType: !5820, size: 64, offset: 3136)
!5820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5821, size: 64)
!5821 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5822)
!5822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_funcs", file: !242, line: 1034, size: 1024, elements: !5823)
!5823 = !{!5824, !5828, !5832, !5836, !5837, !5841, !5845, !5849, !5850, !5851, !5900, !5904, !5908, !5914, !5918, !5919}
!5824 = !DIDerivedType(tag: DW_TAG_member, name: "dpms", scope: !5822, file: !242, line: 1051, baseType: !5825, size: 64)
!5825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5826, size: 64)
!5826 = !DISubroutineType(types: !5827)
!5827 = !{!120, !5713, !120}
!5828 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5822, file: !242, line: 1063, baseType: !5829, size: 64, offset: 64)
!5829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5830, size: 64)
!5830 = !DISubroutineType(types: !5831)
!5831 = !{null, !5713}
!5832 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !5822, file: !242, line: 1096, baseType: !5833, size: 64, offset: 128)
!5833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5834, size: 64)
!5834 = !DISubroutineType(types: !5835)
!5835 = !{!247, !5713, !1718}
!5836 = !DIDerivedType(tag: DW_TAG_member, name: "force", scope: !5822, file: !242, line: 1113, baseType: !5829, size: 64, offset: 192)
!5837 = !DIDerivedType(tag: DW_TAG_member, name: "fill_modes", scope: !5822, file: !242, line: 1138, baseType: !5838, size: 64, offset: 256)
!5838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5839, size: 64)
!5839 = !DISubroutineType(types: !5840)
!5840 = !{!120, !5713, !1684, !1684}
!5841 = !DIDerivedType(tag: DW_TAG_member, name: "set_property", scope: !5822, file: !242, line: 1154, baseType: !5842, size: 64, offset: 320)
!5842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5843, size: 64)
!5843 = !DISubroutineType(types: !5844)
!5844 = !{!120, !5713, !5403, !5111}
!5845 = !DIDerivedType(tag: DW_TAG_member, name: "late_register", scope: !5822, file: !242, line: 1173, baseType: !5846, size: 64, offset: 384)
!5846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5847, size: 64)
!5847 = !DISubroutineType(types: !5848)
!5848 = !{!120, !5713}
!5849 = !DIDerivedType(tag: DW_TAG_member, name: "early_unregister", scope: !5822, file: !242, line: 1186, baseType: !5829, size: 64, offset: 448)
!5850 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !5822, file: !242, line: 1196, baseType: !5829, size: 64, offset: 512)
!5851 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !5822, file: !242, line: 1229, baseType: !5852, size: 64, offset: 576)
!5852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5853, size: 64)
!5853 = !DISubroutineType(types: !5854)
!5854 = !{!5855, !5713}
!5855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5856, size: 64)
!5856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_state", file: !242, line: 884, size: 1280, elements: !5857)
!5857 = !{!5858, !5859, !5860, !5863, !5864, !5865, !5866, !5886, !5887, !5888, !5889, !5890, !5891, !5892, !5893, !5896, !5897, !5898, !5899}
!5858 = !DIDerivedType(tag: DW_TAG_member, name: "connector", scope: !5856, file: !242, line: 886, baseType: !5713, size: 64)
!5859 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5856, file: !242, line: 894, baseType: !4480, size: 64, offset: 64)
!5860 = !DIDerivedType(tag: DW_TAG_member, name: "best_encoder", scope: !5856, file: !242, line: 912, baseType: !5861, size: 64, offset: 128)
!5861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5862, size: 64)
!5862 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_encoder", file: !242, line: 41, flags: DIFlagFwdDecl)
!5863 = !DIDerivedType(tag: DW_TAG_member, name: "link_status", scope: !5856, file: !242, line: 918, baseType: !260, size: 32, offset: 192)
!5864 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5856, file: !242, line: 921, baseType: !5381, size: 64, offset: 256)
!5865 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !5856, file: !242, line: 928, baseType: !5619, size: 64, offset: 320)
!5866 = !DIDerivedType(tag: DW_TAG_member, name: "tv", scope: !5856, file: !242, line: 931, baseType: !5867, size: 448, offset: 384)
!5867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_tv_connector_state", file: !242, line: 867, size: 448, elements: !5868)
!5868 = !{!5869, !5870, !5871, !5878, !5879, !5880, !5881, !5882, !5883, !5884, !5885}
!5869 = !DIDerivedType(tag: DW_TAG_member, name: "select_subconnector", scope: !5867, file: !242, line: 868, baseType: !264, size: 32)
!5870 = !DIDerivedType(tag: DW_TAG_member, name: "subconnector", scope: !5867, file: !242, line: 869, baseType: !264, size: 32, offset: 32)
!5871 = !DIDerivedType(tag: DW_TAG_member, name: "margins", scope: !5867, file: !242, line: 870, baseType: !5872, size: 128, offset: 64)
!5872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_tv_margins", file: !242, line: 831, size: 128, elements: !5873)
!5873 = !{!5874, !5875, !5876, !5877}
!5874 = !DIDerivedType(tag: DW_TAG_member, name: "bottom", scope: !5872, file: !242, line: 835, baseType: !18, size: 32)
!5875 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !5872, file: !242, line: 840, baseType: !18, size: 32, offset: 32)
!5876 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !5872, file: !242, line: 845, baseType: !18, size: 32, offset: 64)
!5877 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !5872, file: !242, line: 850, baseType: !18, size: 32, offset: 96)
!5878 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mode", scope: !5867, file: !242, line: 871, baseType: !18, size: 32, offset: 192)
!5879 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5867, file: !242, line: 872, baseType: !18, size: 32, offset: 224)
!5880 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !5867, file: !242, line: 873, baseType: !18, size: 32, offset: 256)
!5881 = !DIDerivedType(tag: DW_TAG_member, name: "contrast", scope: !5867, file: !242, line: 874, baseType: !18, size: 32, offset: 288)
!5882 = !DIDerivedType(tag: DW_TAG_member, name: "flicker_reduction", scope: !5867, file: !242, line: 875, baseType: !18, size: 32, offset: 320)
!5883 = !DIDerivedType(tag: DW_TAG_member, name: "overscan", scope: !5867, file: !242, line: 876, baseType: !18, size: 32, offset: 352)
!5884 = !DIDerivedType(tag: DW_TAG_member, name: "saturation", scope: !5867, file: !242, line: 877, baseType: !18, size: 32, offset: 384)
!5885 = !DIDerivedType(tag: DW_TAG_member, name: "hue", scope: !5867, file: !242, line: 878, baseType: !18, size: 32, offset: 416)
!5886 = !DIDerivedType(tag: DW_TAG_member, name: "self_refresh_aware", scope: !5856, file: !242, line: 945, baseType: !1718, size: 8, offset: 832)
!5887 = !DIDerivedType(tag: DW_TAG_member, name: "picture_aspect_ratio", scope: !5856, file: !242, line: 954, baseType: !203, size: 32, offset: 864)
!5888 = !DIDerivedType(tag: DW_TAG_member, name: "content_type", scope: !5856, file: !242, line: 962, baseType: !18, size: 32, offset: 896)
!5889 = !DIDerivedType(tag: DW_TAG_member, name: "hdcp_content_type", scope: !5856, file: !242, line: 968, baseType: !18, size: 32, offset: 928)
!5890 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode", scope: !5856, file: !242, line: 974, baseType: !18, size: 32, offset: 960)
!5891 = !DIDerivedType(tag: DW_TAG_member, name: "content_protection", scope: !5856, file: !242, line: 980, baseType: !18, size: 32, offset: 992)
!5892 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !5856, file: !242, line: 987, baseType: !280, size: 32, offset: 1024)
!5893 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_job", scope: !5856, file: !242, line: 1000, baseType: !5894, size: 64, offset: 1088)
!5894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5895, size: 64)
!5895 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_writeback_job", file: !242, line: 1000, flags: DIFlagFwdDecl)
!5896 = !DIDerivedType(tag: DW_TAG_member, name: "max_requested_bpc", scope: !5856, file: !242, line: 1006, baseType: !439, size: 8, offset: 1152)
!5897 = !DIDerivedType(tag: DW_TAG_member, name: "max_bpc", scope: !5856, file: !242, line: 1012, baseType: !439, size: 8, offset: 1160)
!5898 = !DIDerivedType(tag: DW_TAG_member, name: "privacy_screen_sw_state", scope: !5856, file: !242, line: 1018, baseType: !300, size: 32, offset: 1184)
!5899 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_output_metadata", scope: !5856, file: !242, line: 1024, baseType: !5597, size: 64, offset: 1216)
!5900 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !5822, file: !242, line: 1239, baseType: !5901, size: 64, offset: 640)
!5901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5902, size: 64)
!5902 = !DISubroutineType(types: !5903)
!5903 = !{null, !5713, !5855}
!5904 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_set_property", scope: !5822, file: !242, line: 1284, baseType: !5905, size: 64, offset: 704)
!5905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5906, size: 64)
!5906 = !DISubroutineType(types: !5907)
!5907 = !{!120, !5713, !5855, !5403, !5111}
!5908 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_get_property", scope: !5822, file: !242, line: 1307, baseType: !5909, size: 64, offset: 768)
!5909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5910, size: 64)
!5910 = !DISubroutineType(types: !5911)
!5911 = !{!120, !5713, !5912, !5403, !5110}
!5912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5913, size: 64)
!5913 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5856)
!5914 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_print_state", scope: !5822, file: !242, line: 1321, baseType: !5915, size: 64, offset: 832)
!5915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5916, size: 64)
!5916 = !DISubroutineType(types: !5917)
!5917 = !{null, !5116, !5912}
!5918 = !DIDerivedType(tag: DW_TAG_member, name: "oob_hotplug_event", scope: !5822, file: !242, line: 1330, baseType: !5829, size: 64, offset: 896)
!5919 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_init", scope: !5822, file: !242, line: 1337, baseType: !5920, size: 64, offset: 960)
!5920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5921, size: 64)
!5921 = !DISubroutineType(types: !5922)
!5922 = !{null, !5713, !596}
!5923 = !DIDerivedType(tag: DW_TAG_member, name: "edid_blob_ptr", scope: !5714, file: !242, line: 1632, baseType: !5597, size: 64, offset: 3200)
!5924 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5714, file: !242, line: 1635, baseType: !5416, size: 3136, offset: 3264)
!5925 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode_property", scope: !5714, file: !242, line: 1641, baseType: !5403, size: 64, offset: 6400)
!5926 = !DIDerivedType(tag: DW_TAG_member, name: "vrr_capable_property", scope: !5714, file: !242, line: 1652, baseType: !5403, size: 64, offset: 6464)
!5927 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace_property", scope: !5714, file: !242, line: 1658, baseType: !5403, size: 64, offset: 6528)
!5928 = !DIDerivedType(tag: DW_TAG_member, name: "path_blob_ptr", scope: !5714, file: !242, line: 1666, baseType: !5597, size: 64, offset: 6592)
!5929 = !DIDerivedType(tag: DW_TAG_member, name: "max_bpc_property", scope: !5714, file: !242, line: 1672, baseType: !5403, size: 64, offset: 6656)
!5930 = !DIDerivedType(tag: DW_TAG_member, name: "privacy_screen", scope: !5714, file: !242, line: 1675, baseType: !5931, size: 64, offset: 6720)
!5931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5932, size: 64)
!5932 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_privacy_screen", file: !242, line: 46, flags: DIFlagFwdDecl)
!5933 = !DIDerivedType(tag: DW_TAG_member, name: "privacy_screen_notifier", scope: !5714, file: !242, line: 1678, baseType: !5934, size: 192, offset: 6784)
!5934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !5935, line: 54, size: 192, elements: !5936)
!5935 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!5936 = !{!5937, !5943, !5944}
!5937 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !5934, file: !5935, line: 55, baseType: !5938, size: 64)
!5938 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !5935, line: 51, baseType: !5939)
!5939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5940, size: 64)
!5940 = !DISubroutineType(types: !5941)
!5941 = !{!120, !5942, !531, !376}
!5942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5934, size: 64)
!5943 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5934, file: !5935, line: 56, baseType: !5942, size: 64, offset: 64)
!5944 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !5934, file: !5935, line: 57, baseType: !120, size: 32, offset: 128)
!5945 = !DIDerivedType(tag: DW_TAG_member, name: "privacy_screen_sw_state_property", scope: !5714, file: !242, line: 1684, baseType: !5403, size: 64, offset: 6976)
!5946 = !DIDerivedType(tag: DW_TAG_member, name: "privacy_screen_hw_state_property", scope: !5714, file: !242, line: 1690, baseType: !5403, size: 64, offset: 7040)
!5947 = !DIDerivedType(tag: DW_TAG_member, name: "polled", scope: !5714, file: !242, line: 1717, baseType: !5948, size: 8, offset: 7104)
!5948 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !383, line: 108, baseType: !439)
!5949 = !DIDerivedType(tag: DW_TAG_member, name: "dpms", scope: !5714, file: !242, line: 1725, baseType: !120, size: 32, offset: 7136)
!5950 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !5714, file: !242, line: 1728, baseType: !5951, size: 64, offset: 7168)
!5951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5952, size: 64)
!5952 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5953)
!5953 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_helper_funcs", file: !242, line: 37, flags: DIFlagFwdDecl)
!5954 = !DIDerivedType(tag: DW_TAG_member, name: "cmdline_mode", scope: !5714, file: !242, line: 1731, baseType: !5955, size: 768, offset: 7232)
!5955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_cmdline_mode", file: !242, line: 1348, size: 768, elements: !5956)
!5956 = !{!5957, !5958, !5959, !5960, !5961, !5962, !5963, !5964, !5965, !5966, !5967, !5968, !5969, !5970, !5971, !5972, !5973, !5974, !5975}
!5957 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5955, file: !242, line: 1354, baseType: !3442, size: 256)
!5958 = !DIDerivedType(tag: DW_TAG_member, name: "specified", scope: !5955, file: !242, line: 1361, baseType: !1718, size: 8, offset: 256)
!5959 = !DIDerivedType(tag: DW_TAG_member, name: "refresh_specified", scope: !5955, file: !242, line: 1368, baseType: !1718, size: 8, offset: 264)
!5960 = !DIDerivedType(tag: DW_TAG_member, name: "bpp_specified", scope: !5955, file: !242, line: 1375, baseType: !1718, size: 8, offset: 272)
!5961 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_clock", scope: !5955, file: !242, line: 1382, baseType: !18, size: 32, offset: 288)
!5962 = !DIDerivedType(tag: DW_TAG_member, name: "xres", scope: !5955, file: !242, line: 1389, baseType: !120, size: 32, offset: 320)
!5963 = !DIDerivedType(tag: DW_TAG_member, name: "yres", scope: !5955, file: !242, line: 1396, baseType: !120, size: 32, offset: 352)
!5964 = !DIDerivedType(tag: DW_TAG_member, name: "bpp", scope: !5955, file: !242, line: 1403, baseType: !120, size: 32, offset: 384)
!5965 = !DIDerivedType(tag: DW_TAG_member, name: "refresh", scope: !5955, file: !242, line: 1410, baseType: !120, size: 32, offset: 416)
!5966 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !5955, file: !242, line: 1417, baseType: !1718, size: 8, offset: 448)
!5967 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !5955, file: !242, line: 1424, baseType: !1718, size: 8, offset: 456)
!5968 = !DIDerivedType(tag: DW_TAG_member, name: "cvt", scope: !5955, file: !242, line: 1432, baseType: !1718, size: 8, offset: 464)
!5969 = !DIDerivedType(tag: DW_TAG_member, name: "margins", scope: !5955, file: !242, line: 1440, baseType: !1718, size: 8, offset: 472)
!5970 = !DIDerivedType(tag: DW_TAG_member, name: "force", scope: !5955, file: !242, line: 1448, baseType: !306, size: 32, offset: 480)
!5971 = !DIDerivedType(tag: DW_TAG_member, name: "rotation_reflection", scope: !5955, file: !242, line: 1458, baseType: !18, size: 32, offset: 512)
!5972 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation", scope: !5955, file: !242, line: 1466, baseType: !312, size: 32, offset: 544)
!5973 = !DIDerivedType(tag: DW_TAG_member, name: "tv_margins", scope: !5955, file: !242, line: 1471, baseType: !5872, size: 128, offset: 576)
!5974 = !DIDerivedType(tag: DW_TAG_member, name: "tv_mode", scope: !5955, file: !242, line: 1476, baseType: !319, size: 32, offset: 704)
!5975 = !DIDerivedType(tag: DW_TAG_member, name: "tv_mode_specified", scope: !5955, file: !242, line: 1483, baseType: !1718, size: 8, offset: 736)
!5976 = !DIDerivedType(tag: DW_TAG_member, name: "force", scope: !5714, file: !242, line: 1733, baseType: !306, size: 32, offset: 8000)
!5977 = !DIDerivedType(tag: DW_TAG_member, name: "edid_override", scope: !5714, file: !242, line: 1741, baseType: !5978, size: 64, offset: 8064)
!5978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5979, size: 64)
!5979 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5980)
!5980 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_edid", file: !242, line: 1741, flags: DIFlagFwdDecl)
!5981 = !DIDerivedType(tag: DW_TAG_member, name: "edid_override_mutex", scope: !5714, file: !242, line: 1746, baseType: !845, size: 256, offset: 8128)
!5982 = !DIDerivedType(tag: DW_TAG_member, name: "epoch_counter", scope: !5714, file: !242, line: 1749, baseType: !634, size: 64, offset: 8384)
!5983 = !DIDerivedType(tag: DW_TAG_member, name: "possible_encoders", scope: !5714, file: !242, line: 1756, baseType: !630, size: 32, offset: 8448)
!5984 = !DIDerivedType(tag: DW_TAG_member, name: "encoder", scope: !5714, file: !242, line: 1764, baseType: !5861, size: 64, offset: 8512)
!5985 = !DIDerivedType(tag: DW_TAG_member, name: "eld", scope: !5714, file: !242, line: 1768, baseType: !5986, size: 1024, offset: 8576)
!5986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5948, size: 1024, elements: !5987)
!5987 = !{!5988}
!5988 = !DISubrange(count: 128)
!5989 = !DIDerivedType(tag: DW_TAG_member, name: "eld_mutex", scope: !5714, file: !242, line: 1770, baseType: !845, size: 256, offset: 9600)
!5990 = !DIDerivedType(tag: DW_TAG_member, name: "latency_present", scope: !5714, file: !242, line: 1773, baseType: !5991, size: 16, offset: 9856)
!5991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1718, size: 16, elements: !1919)
!5992 = !DIDerivedType(tag: DW_TAG_member, name: "video_latency", scope: !5714, file: !242, line: 1778, baseType: !5993, size: 64, offset: 9888)
!5993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 64, elements: !1919)
!5994 = !DIDerivedType(tag: DW_TAG_member, name: "audio_latency", scope: !5714, file: !242, line: 1783, baseType: !5993, size: 64, offset: 9952)
!5995 = !DIDerivedType(tag: DW_TAG_member, name: "ddc", scope: !5714, file: !242, line: 1794, baseType: !5996, size: 64, offset: 10048)
!5996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5997, size: 64)
!5997 = !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !242, line: 48, flags: DIFlagFwdDecl)
!5998 = !DIDerivedType(tag: DW_TAG_member, name: "null_edid_counter", scope: !5714, file: !242, line: 1800, baseType: !120, size: 32, offset: 10112)
!5999 = !DIDerivedType(tag: DW_TAG_member, name: "bad_edid_counter", scope: !5714, file: !242, line: 1803, baseType: !18, size: 32, offset: 10144)
!6000 = !DIDerivedType(tag: DW_TAG_member, name: "edid_corrupt", scope: !5714, file: !242, line: 1810, baseType: !1718, size: 8, offset: 10176)
!6001 = !DIDerivedType(tag: DW_TAG_member, name: "real_edid_checksum", scope: !5714, file: !242, line: 1816, baseType: !439, size: 8, offset: 10184)
!6002 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_entry", scope: !5714, file: !242, line: 1819, baseType: !596, size: 64, offset: 10240)
!6003 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5714, file: !242, line: 1835, baseType: !5855, size: 64, offset: 10304)
!6004 = !DIDerivedType(tag: DW_TAG_member, name: "tile_blob_ptr", scope: !5714, file: !242, line: 1852, baseType: !5597, size: 64, offset: 10368)
!6005 = !DIDerivedType(tag: DW_TAG_member, name: "has_tile", scope: !5714, file: !242, line: 1855, baseType: !1718, size: 8, offset: 10432)
!6006 = !DIDerivedType(tag: DW_TAG_member, name: "tile_group", scope: !5714, file: !242, line: 1857, baseType: !6007, size: 64, offset: 10496)
!6007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6008, size: 64)
!6008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_tile_group", file: !242, line: 2058, size: 256, elements: !6009)
!6009 = !{!6010, !6011, !6012, !6013}
!6010 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !6008, file: !242, line: 2059, baseType: !4073, size: 32)
!6011 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !6008, file: !242, line: 2060, baseType: !4485, size: 64, offset: 64)
!6012 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !6008, file: !242, line: 2061, baseType: !120, size: 32, offset: 128)
!6013 = !DIDerivedType(tag: DW_TAG_member, name: "group_data", scope: !6008, file: !242, line: 2062, baseType: !6014, size: 64, offset: 160)
!6014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, size: 64, elements: !10)
!6015 = !DIDerivedType(tag: DW_TAG_member, name: "tile_is_single_monitor", scope: !5714, file: !242, line: 1859, baseType: !1718, size: 8, offset: 10560)
!6016 = !DIDerivedType(tag: DW_TAG_member, name: "num_h_tile", scope: !5714, file: !242, line: 1863, baseType: !5948, size: 8, offset: 10568)
!6017 = !DIDerivedType(tag: DW_TAG_member, name: "num_v_tile", scope: !5714, file: !242, line: 1863, baseType: !5948, size: 8, offset: 10576)
!6018 = !DIDerivedType(tag: DW_TAG_member, name: "tile_h_loc", scope: !5714, file: !242, line: 1866, baseType: !5948, size: 8, offset: 10584)
!6019 = !DIDerivedType(tag: DW_TAG_member, name: "tile_v_loc", scope: !5714, file: !242, line: 1866, baseType: !5948, size: 8, offset: 10592)
!6020 = !DIDerivedType(tag: DW_TAG_member, name: "tile_h_size", scope: !5714, file: !242, line: 1869, baseType: !5590, size: 16, offset: 10608)
!6021 = !DIDerivedType(tag: DW_TAG_member, name: "tile_v_size", scope: !5714, file: !242, line: 1869, baseType: !5590, size: 16, offset: 10624)
!6022 = !DIDerivedType(tag: DW_TAG_member, name: "free_node", scope: !5714, file: !242, line: 1878, baseType: !897, size: 64, offset: 10688)
!6023 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_sink_metadata", scope: !5714, file: !242, line: 1881, baseType: !6024, size: 96, offset: 10752)
!6024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdr_sink_metadata", file: !204, line: 383, size: 96, elements: !6025)
!6025 = !{!6026, !6027}
!6026 = !DIDerivedType(tag: DW_TAG_member, name: "metadata_type", scope: !6024, file: !204, line: 387, baseType: !631, size: 32)
!6027 = !DIDerivedType(tag: DW_TAG_member, scope: !6024, file: !204, line: 391, baseType: !6028, size: 64, offset: 32)
!6028 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6024, file: !204, line: 391, size: 64, elements: !6029)
!6029 = !{!6030}
!6030 = !DIDerivedType(tag: DW_TAG_member, name: "hdmi_type1", scope: !6028, file: !204, line: 392, baseType: !6031, size: 64)
!6031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdr_static_metadata", file: !204, line: 370, size: 64, elements: !6032)
!6032 = !{!6033, !6034, !6035, !6036, !6037}
!6033 = !DIDerivedType(tag: DW_TAG_member, name: "eotf", scope: !6031, file: !204, line: 371, baseType: !441, size: 8)
!6034 = !DIDerivedType(tag: DW_TAG_member, name: "metadata_type", scope: !6031, file: !204, line: 372, baseType: !441, size: 8, offset: 8)
!6035 = !DIDerivedType(tag: DW_TAG_member, name: "max_cll", scope: !6031, file: !204, line: 373, baseType: !450, size: 16, offset: 16)
!6036 = !DIDerivedType(tag: DW_TAG_member, name: "max_fall", scope: !6031, file: !204, line: 374, baseType: !450, size: 16, offset: 32)
!6037 = !DIDerivedType(tag: DW_TAG_member, name: "min_cll", scope: !6031, file: !204, line: 375, baseType: !450, size: 16, offset: 48)
!6038 = !DIDerivedType(tag: DW_TAG_member, name: "num_connectors", scope: !5703, file: !4482, line: 1202, baseType: !528, size: 64, offset: 320)
!6039 = !DIDerivedType(tag: DW_TAG_member, name: "page_flip", scope: !5676, file: !4482, line: 576, baseType: !6040, size: 64, offset: 448)
!6040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6041, size: 64)
!6041 = !DISubroutineType(types: !6042)
!6042 = !{!120, !4480, !5346, !6043, !1684, !5298}
!6043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6044, size: 64)
!6044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_pending_vblank_event", file: !5190, line: 42, size: 960, elements: !6045)
!6045 = !{!6046, !6064, !6065, !6066}
!6046 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !6044, file: !5190, line: 46, baseType: !6047, size: 576)
!6047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_pending_event", file: !4962, line: 97, size: 576, elements: !6048)
!6048 = !{!6049, !6050, !6054, !6060, !6061, !6062, !6063}
!6049 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !6047, file: !4962, line: 105, baseType: !1579, size: 64)
!6050 = !DIDerivedType(tag: DW_TAG_member, name: "completion_release", scope: !6047, file: !4962, line: 114, baseType: !6051, size: 64, offset: 64)
!6051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6052, size: 64)
!6052 = !DISubroutineType(types: !6053)
!6053 = !{null, !1579}
!6054 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !6047, file: !4962, line: 124, baseType: !6055, size: 64, offset: 128)
!6055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6056, size: 64)
!6056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_event", file: !4995, line: 1226, size: 64, elements: !6057)
!6057 = !{!6058, !6059}
!6058 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6056, file: !4995, line: 1227, baseType: !631, size: 32)
!6059 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !6056, file: !4995, line: 1228, baseType: !631, size: 32, offset: 32)
!6060 = !DIDerivedType(tag: DW_TAG_member, name: "fence", scope: !6047, file: !4962, line: 132, baseType: !5578, size: 64, offset: 192)
!6061 = !DIDerivedType(tag: DW_TAG_member, name: "file_priv", scope: !6047, file: !4962, line: 140, baseType: !4960, size: 64, offset: 256)
!6062 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !6047, file: !4962, line: 149, baseType: !382, size: 128, offset: 320)
!6063 = !DIDerivedType(tag: DW_TAG_member, name: "pending_link", scope: !6047, file: !4962, line: 158, baseType: !382, size: 128, offset: 448)
!6064 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !6044, file: !5190, line: 50, baseType: !18, size: 32, offset: 576)
!6065 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !6044, file: !5190, line: 54, baseType: !634, size: 64, offset: 640)
!6066 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !6044, file: !5190, line: 78, baseType: !6067, size: 256, offset: 704)
!6067 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6044, file: !5190, line: 58, size: 256, elements: !6068)
!6068 = !{!6069, !6070, !6079}
!6069 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !6067, file: !5190, line: 62, baseType: !6056, size: 64)
!6070 = !DIDerivedType(tag: DW_TAG_member, name: "vbl", scope: !6067, file: !5190, line: 72, baseType: !6071, size: 256)
!6071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_event_vblank", file: !4995, line: 1258, size: 256, elements: !6072)
!6072 = !{!6073, !6074, !6075, !6076, !6077, !6078}
!6073 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !6071, file: !4995, line: 1259, baseType: !6056, size: 64)
!6074 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !6071, file: !4995, line: 1260, baseType: !635, size: 64, offset: 64)
!6075 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !6071, file: !4995, line: 1261, baseType: !631, size: 32, offset: 128)
!6076 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !6071, file: !4995, line: 1262, baseType: !631, size: 32, offset: 160)
!6077 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !6071, file: !4995, line: 1263, baseType: !631, size: 32, offset: 192)
!6078 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_id", scope: !6071, file: !4995, line: 1264, baseType: !631, size: 32, offset: 224)
!6079 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !6067, file: !5190, line: 77, baseType: !6080, size: 256)
!6080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_event_crtc_sequence", file: !4995, line: 1270, size: 256, elements: !6081)
!6081 = !{!6082, !6083, !6084, !6085}
!6082 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !6080, file: !4995, line: 1271, baseType: !6056, size: 64)
!6083 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !6080, file: !4995, line: 1272, baseType: !635, size: 64, offset: 64)
!6084 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !6080, file: !4995, line: 1273, baseType: !856, size: 64, offset: 128)
!6085 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !6080, file: !4995, line: 1274, baseType: !635, size: 64, offset: 192)
!6086 = !DIDerivedType(tag: DW_TAG_member, name: "page_flip_target", scope: !5676, file: !4482, line: 595, baseType: !6087, size: 64, offset: 512)
!6087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6088, size: 64)
!6088 = !DISubroutineType(types: !6089)
!6089 = !{!120, !4480, !5346, !6043, !1684, !1684, !5298}
!6090 = !DIDerivedType(tag: DW_TAG_member, name: "set_property", scope: !5676, file: !4482, line: 615, baseType: !6091, size: 64, offset: 576)
!6091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6092, size: 64)
!6092 = !DISubroutineType(types: !6093)
!6093 = !{!120, !4480, !5403, !5111}
!6094 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !5676, file: !4482, line: 649, baseType: !6095, size: 64, offset: 640)
!6095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6096, size: 64)
!6096 = !DISubroutineType(types: !6097)
!6097 = !{!6098, !4480}
!6098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6099, size: 64)
!6099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_state", file: !4482, line: 81, size: 2688, elements: !6100)
!6100 = !{!6101, !6102, !6103, !6104, !6105, !6106, !6107, !6108, !6109, !6110, !6111, !6112, !6113, !6114, !6115, !6116, !6117, !6118, !6119, !6120, !6121, !6122, !6123, !6124, !6125, !6126, !6127}
!6101 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !6099, file: !4482, line: 83, baseType: !4480, size: 64)
!6102 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !6099, file: !4482, line: 90, baseType: !1718, size: 8, offset: 64)
!6103 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !6099, file: !4482, line: 105, baseType: !1718, size: 8, offset: 72)
!6104 = !DIDerivedType(tag: DW_TAG_member, name: "planes_changed", scope: !6099, file: !4482, line: 111, baseType: !1718, size: 1, offset: 80, flags: DIFlagBitField, extraData: i64 80)
!6105 = !DIDerivedType(tag: DW_TAG_member, name: "mode_changed", scope: !6099, file: !4482, line: 123, baseType: !1718, size: 1, offset: 81, flags: DIFlagBitField, extraData: i64 80)
!6106 = !DIDerivedType(tag: DW_TAG_member, name: "active_changed", scope: !6099, file: !4482, line: 130, baseType: !1718, size: 1, offset: 82, flags: DIFlagBitField, extraData: i64 80)
!6107 = !DIDerivedType(tag: DW_TAG_member, name: "connectors_changed", scope: !6099, file: !4482, line: 141, baseType: !1718, size: 1, offset: 83, flags: DIFlagBitField, extraData: i64 80)
!6108 = !DIDerivedType(tag: DW_TAG_member, name: "zpos_changed", scope: !6099, file: !4482, line: 147, baseType: !1718, size: 1, offset: 84, flags: DIFlagBitField, extraData: i64 80)
!6109 = !DIDerivedType(tag: DW_TAG_member, name: "color_mgmt_changed", scope: !6099, file: !4482, line: 153, baseType: !1718, size: 1, offset: 85, flags: DIFlagBitField, extraData: i64 80)
!6110 = !DIDerivedType(tag: DW_TAG_member, name: "no_vblank", scope: !6099, file: !4482, line: 189, baseType: !1718, size: 1, offset: 86, flags: DIFlagBitField, extraData: i64 80)
!6111 = !DIDerivedType(tag: DW_TAG_member, name: "plane_mask", scope: !6099, file: !4482, line: 195, baseType: !630, size: 32, offset: 96)
!6112 = !DIDerivedType(tag: DW_TAG_member, name: "connector_mask", scope: !6099, file: !4482, line: 201, baseType: !630, size: 32, offset: 128)
!6113 = !DIDerivedType(tag: DW_TAG_member, name: "encoder_mask", scope: !6099, file: !4482, line: 207, baseType: !630, size: 32, offset: 160)
!6114 = !DIDerivedType(tag: DW_TAG_member, name: "adjusted_mode", scope: !6099, file: !4482, line: 222, baseType: !5206, size: 960, offset: 192)
!6115 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !6099, file: !4482, line: 239, baseType: !5206, size: 960, offset: 1152)
!6116 = !DIDerivedType(tag: DW_TAG_member, name: "mode_blob", scope: !6099, file: !4482, line: 245, baseType: !5597, size: 64, offset: 2112)
!6117 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut", scope: !6099, file: !4482, line: 254, baseType: !5597, size: 64, offset: 2176)
!6118 = !DIDerivedType(tag: DW_TAG_member, name: "ctm", scope: !6099, file: !4482, line: 262, baseType: !5597, size: 64, offset: 2240)
!6119 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut", scope: !6099, file: !4482, line: 275, baseType: !5597, size: 64, offset: 2304)
!6120 = !DIDerivedType(tag: DW_TAG_member, name: "target_vblank", scope: !6099, file: !4482, line: 283, baseType: !630, size: 32, offset: 2368)
!6121 = !DIDerivedType(tag: DW_TAG_member, name: "async_flip", scope: !6099, file: !4482, line: 291, baseType: !1718, size: 8, offset: 2400)
!6122 = !DIDerivedType(tag: DW_TAG_member, name: "vrr_enabled", scope: !6099, file: !4482, line: 300, baseType: !1718, size: 8, offset: 2408)
!6123 = !DIDerivedType(tag: DW_TAG_member, name: "self_refresh_active", scope: !6099, file: !4482, line: 311, baseType: !1718, size: 8, offset: 2416)
!6124 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_filter", scope: !6099, file: !4482, line: 318, baseType: !231, size: 32, offset: 2432)
!6125 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !6099, file: !4482, line: 375, baseType: !6043, size: 64, offset: 2496)
!6126 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !6099, file: !4482, line: 384, baseType: !5619, size: 64, offset: 2560)
!6127 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !6099, file: !4482, line: 387, baseType: !5381, size: 64, offset: 2624)
!6128 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !5676, file: !4482, line: 659, baseType: !6129, size: 64, offset: 704)
!6129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6130, size: 64)
!6130 = !DISubroutineType(types: !6131)
!6131 = !{null, !4480, !6098}
!6132 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_set_property", scope: !5676, file: !4482, line: 704, baseType: !6133, size: 64, offset: 768)
!6133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6134, size: 64)
!6134 = !DISubroutineType(types: !6135)
!6135 = !{!120, !4480, !6098, !5403, !5111}
!6136 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_get_property", scope: !5676, file: !4482, line: 726, baseType: !6137, size: 64, offset: 832)
!6137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6138, size: 64)
!6138 = !DISubroutineType(types: !6139)
!6139 = !{!120, !4480, !6140, !5403, !5110}
!6140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6141, size: 64)
!6141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6099)
!6142 = !DIDerivedType(tag: DW_TAG_member, name: "late_register", scope: !5676, file: !4482, line: 744, baseType: !6143, size: 64, offset: 896)
!6143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6144, size: 64)
!6144 = !DISubroutineType(types: !6145)
!6145 = !{!120, !4480}
!6146 = !DIDerivedType(tag: DW_TAG_member, name: "early_unregister", scope: !5676, file: !4482, line: 755, baseType: !5679, size: 64, offset: 960)
!6147 = !DIDerivedType(tag: DW_TAG_member, name: "set_crc_source", scope: !5676, file: !4482, line: 784, baseType: !6148, size: 64, offset: 1024)
!6148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6149, size: 64)
!6149 = !DISubroutineType(types: !6150)
!6150 = !{!120, !4480, !400}
!6151 = !DIDerivedType(tag: DW_TAG_member, name: "verify_crc_source", scope: !5676, file: !4482, line: 800, baseType: !6152, size: 64, offset: 1088)
!6152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6153, size: 64)
!6153 = !DISubroutineType(types: !6154)
!6154 = !{!120, !4480, !400, !6155}
!6155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!6156 = !DIDerivedType(tag: DW_TAG_member, name: "get_crc_sources", scope: !5676, file: !4482, line: 822, baseType: !6157, size: 64, offset: 1152)
!6157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6158, size: 64)
!6158 = !DISubroutineType(types: !6159)
!6159 = !{!6160, !4480, !6155}
!6160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6161, size: 64)
!6161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !400)
!6162 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_print_state", scope: !5676, file: !4482, line: 834, baseType: !6163, size: 64, offset: 1216)
!6163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6164, size: 64)
!6164 = !DISubroutineType(types: !6165)
!6165 = !{null, !5116, !6140}
!6166 = !DIDerivedType(tag: DW_TAG_member, name: "get_vblank_counter", scope: !5676, file: !4482, line: 861, baseType: !6167, size: 64, offset: 1280)
!6167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6168, size: 64)
!6168 = !DISubroutineType(types: !6169)
!6169 = !{!630, !4480}
!6170 = !DIDerivedType(tag: DW_TAG_member, name: "enable_vblank", scope: !5676, file: !4482, line: 874, baseType: !6143, size: 64, offset: 1344)
!6171 = !DIDerivedType(tag: DW_TAG_member, name: "disable_vblank", scope: !5676, file: !4482, line: 882, baseType: !5679, size: 64, offset: 1408)
!6172 = !DIDerivedType(tag: DW_TAG_member, name: "get_vblank_timestamp", scope: !5676, file: !4482, line: 920, baseType: !6173, size: 64, offset: 1472)
!6173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6174, size: 64)
!6174 = !DISubroutineType(types: !6175)
!6175 = !{!1718, !4480, !827, !6176, !1718}
!6176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!6177 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_size", scope: !4481, file: !4482, line: 1068, baseType: !1684, size: 32, offset: 3328)
!6178 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_store", scope: !4481, file: !4482, line: 1077, baseType: !6179, size: 64, offset: 3392)
!6179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5590, size: 64)
!6180 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !4481, file: !4482, line: 1080, baseType: !6181, size: 64, offset: 3456)
!6181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6182, size: 64)
!6182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6183)
!6183 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_helper_funcs", file: !4482, line: 63, flags: DIFlagFwdDecl)
!6184 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4481, file: !4482, line: 1083, baseType: !5416, size: 3136, offset: 3520)
!6185 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_filter_property", scope: !4481, file: !4482, line: 1089, baseType: !5403, size: 64, offset: 6656)
!6186 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4481, file: !4482, line: 1104, baseType: !6098, size: 64, offset: 6720)
!6187 = !DIDerivedType(tag: DW_TAG_member, name: "commit_list", scope: !4481, file: !4482, line: 1121, baseType: !382, size: 128, offset: 6784)
!6188 = !DIDerivedType(tag: DW_TAG_member, name: "commit_lock", scope: !4481, file: !4482, line: 1128, baseType: !411, size: 32, offset: 6912)
!6189 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_entry", scope: !4481, file: !4482, line: 1135, baseType: !596, size: 64, offset: 6976)
!6190 = !DIDerivedType(tag: DW_TAG_member, name: "crc", scope: !4481, file: !4482, line: 1142, baseType: !6191, size: 576, offset: 7040)
!6191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_crc", file: !6192, line: 53, size: 576, elements: !6193)
!6192 = !DIFile(filename: "./include/drm/drm_debugfs_crc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e277ec0ede400e3d94103804613a92f2")
!6193 = !{!6194, !6195, !6196, !6197, !6198, !6208, !6209, !6210, !6211}
!6194 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !6191, file: !6192, line: 54, baseType: !411, size: 32)
!6195 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !6191, file: !6192, line: 55, baseType: !400, size: 64, offset: 64)
!6196 = !DIDerivedType(tag: DW_TAG_member, name: "opened", scope: !6191, file: !6192, line: 56, baseType: !1718, size: 8, offset: 128)
!6197 = !DIDerivedType(tag: DW_TAG_member, name: "overflow", scope: !6191, file: !6192, line: 56, baseType: !1718, size: 8, offset: 136)
!6198 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !6191, file: !6192, line: 57, baseType: !6199, size: 64, offset: 192)
!6199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6200, size: 64)
!6200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_crc_entry", file: !6192, line: 33, size: 384, elements: !6201)
!6201 = !{!6202, !6203, !6204}
!6202 = !DIDerivedType(tag: DW_TAG_member, name: "has_frame_counter", scope: !6200, file: !6192, line: 34, baseType: !1718, size: 8)
!6203 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !6200, file: !6192, line: 35, baseType: !1684, size: 32, offset: 32)
!6204 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !6200, file: !6192, line: 36, baseType: !6205, size: 320, offset: 64)
!6205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1684, size: 320, elements: !6206)
!6206 = !{!6207}
!6207 = !DISubrange(count: 10)
!6208 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !6191, file: !6192, line: 58, baseType: !120, size: 32, offset: 256)
!6209 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !6191, file: !6192, line: 58, baseType: !120, size: 32, offset: 288)
!6210 = !DIDerivedType(tag: DW_TAG_member, name: "values_cnt", scope: !6191, file: !6192, line: 59, baseType: !528, size: 64, offset: 320)
!6211 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !6191, file: !6192, line: 60, baseType: !959, size: 192, offset: 384)
!6212 = !DIDerivedType(tag: DW_TAG_member, name: "fence_context", scope: !4481, file: !4482, line: 1149, baseType: !18, size: 32, offset: 7616)
!6213 = !DIDerivedType(tag: DW_TAG_member, name: "fence_lock", scope: !4481, file: !4482, line: 1156, baseType: !411, size: 32, offset: 7648)
!6214 = !DIDerivedType(tag: DW_TAG_member, name: "fence_seqno", scope: !4481, file: !4482, line: 1163, baseType: !531, size: 64, offset: 7680)
!6215 = !DIDerivedType(tag: DW_TAG_member, name: "timeline_name", scope: !4481, file: !4482, line: 1170, baseType: !3442, size: 256, offset: 7744)
!6216 = !DIDerivedType(tag: DW_TAG_member, name: "self_refresh_data", scope: !4481, file: !4482, line: 1177, baseType: !6217, size: 64, offset: 8000)
!6217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6218, size: 64)
!6218 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_self_refresh_data", file: !4482, line: 44, flags: DIFlagFwdDecl)
!6219 = !{!6220, !6221}
!6220 = !DILocalVariable(name: "crtc", arg: 1, scope: !4477, file: !2, line: 368, type: !4480)
!6221 = !DILocalVariable(name: "crc_ent", scope: !4477, file: !2, line: 370, type: !596)
!6222 = !DILocation(line: 368, column: 48, scope: !4477)
!6223 = !DILocation(line: 370, column: 2, scope: !4477)
!6224 = !DILocation(line: 370, column: 17, scope: !4477)
!6225 = !DILocation(line: 372, column: 7, scope: !6226)
!6226 = distinct !DILexicalBlock(scope: !4477, file: !2, line: 372, column: 6)
!6227 = !DILocation(line: 372, column: 13, scope: !6226)
!6228 = !DILocation(line: 372, column: 20, scope: !6226)
!6229 = !DILocation(line: 372, column: 35, scope: !6226)
!6230 = !DILocation(line: 372, column: 39, scope: !6226)
!6231 = !DILocation(line: 372, column: 45, scope: !6226)
!6232 = !DILocation(line: 372, column: 52, scope: !6226)
!6233 = !DILocation(line: 372, column: 6, scope: !4477)
!6234 = !DILocation(line: 373, column: 3, scope: !6226)
!6235 = !DILocation(line: 375, column: 38, scope: !4477)
!6236 = !DILocation(line: 375, column: 44, scope: !4477)
!6237 = !DILocation(line: 375, column: 12, scope: !4477)
!6238 = !DILocation(line: 375, column: 10, scope: !4477)
!6239 = !DILocation(line: 377, column: 52, scope: !4477)
!6240 = !DILocation(line: 377, column: 61, scope: !4477)
!6241 = !DILocation(line: 377, column: 2, scope: !4477)
!6242 = !DILocation(line: 379, column: 39, scope: !4477)
!6243 = !DILocation(line: 379, column: 48, scope: !4477)
!6244 = !DILocation(line: 379, column: 2, scope: !4477)
!6245 = !DILocation(line: 381, column: 1, scope: !4477)
!6246 = !DISubprogram(name: "debugfs_create_dir", scope: !6247, file: !6247, line: 87, type: !6248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6247 = !DIFile(filename: "./include/linux/debugfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6e6228d229e8266f5bff9327360d42a5")
!6248 = !DISubroutineType(types: !6249)
!6249 = !{!596, !400, !596}
!6250 = !DISubprogram(name: "debugfs_create_file", scope: !6247, file: !6247, line: 75, type: !6251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6251 = !DISubroutineType(types: !6252)
!6252 = !{!596, !400, !523, !596, !376, !2951}
!6253 = distinct !DISubprogram(name: "drm_crtc_add_crc_entry", scope: !2, file: !2, line: 393, type: !6254, scopeLine: 395, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6256)
!6254 = !DISubroutineType(types: !6255)
!6255 = !{!120, !4480, !1718, !1684, !5062}
!6256 = !{!6257, !6258, !6259, !6260, !6261, !6263, !6264, !6265, !6266, !6267, !6271, !6272}
!6257 = !DILocalVariable(name: "crtc", arg: 1, scope: !6253, file: !2, line: 393, type: !4480)
!6258 = !DILocalVariable(name: "has_frame", arg: 2, scope: !6253, file: !2, line: 393, type: !1718)
!6259 = !DILocalVariable(name: "frame", arg: 3, scope: !6253, file: !2, line: 394, type: !1684)
!6260 = !DILocalVariable(name: "crcs", arg: 4, scope: !6253, file: !2, line: 394, type: !5062)
!6261 = !DILocalVariable(name: "crc", scope: !6253, file: !2, line: 396, type: !6262)
!6262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6191, size: 64)
!6263 = !DILocalVariable(name: "entry", scope: !6253, file: !2, line: 397, type: !6199)
!6264 = !DILocalVariable(name: "head", scope: !6253, file: !2, line: 398, type: !120)
!6265 = !DILocalVariable(name: "tail", scope: !6253, file: !2, line: 398, type: !120)
!6266 = !DILocalVariable(name: "flags", scope: !6253, file: !2, line: 399, type: !531)
!6267 = !DILocalVariable(name: "__dummy", scope: !6268, file: !2, line: 401, type: !531)
!6268 = distinct !DILexicalBlock(scope: !6269, file: !2, line: 401, column: 2)
!6269 = distinct !DILexicalBlock(scope: !6270, file: !2, line: 401, column: 2)
!6270 = distinct !DILexicalBlock(scope: !6253, file: !2, line: 401, column: 2)
!6271 = !DILocalVariable(name: "__dummy2", scope: !6268, file: !2, line: 401, type: !531)
!6272 = !DILocalVariable(name: "was_overflow", scope: !6273, file: !2, line: 413, type: !1718)
!6273 = distinct !DILexicalBlock(scope: !6274, file: !2, line: 412, column: 54)
!6274 = distinct !DILexicalBlock(scope: !6253, file: !2, line: 412, column: 6)
!6275 = !DILocation(line: 393, column: 45, scope: !6253)
!6276 = !DILocation(line: 393, column: 56, scope: !6253)
!6277 = !DILocation(line: 394, column: 16, scope: !6253)
!6278 = !DILocation(line: 394, column: 33, scope: !6253)
!6279 = !DILocation(line: 396, column: 2, scope: !6253)
!6280 = !DILocation(line: 396, column: 23, scope: !6253)
!6281 = !DILocation(line: 396, column: 30, scope: !6253)
!6282 = !DILocation(line: 396, column: 36, scope: !6253)
!6283 = !DILocation(line: 397, column: 2, scope: !6253)
!6284 = !DILocation(line: 397, column: 29, scope: !6253)
!6285 = !DILocation(line: 398, column: 2, scope: !6253)
!6286 = !DILocation(line: 398, column: 6, scope: !6253)
!6287 = !DILocation(line: 398, column: 12, scope: !6253)
!6288 = !DILocation(line: 399, column: 2, scope: !6253)
!6289 = !DILocation(line: 399, column: 16, scope: !6253)
!6290 = !DILocation(line: 401, column: 2, scope: !6253)
!6291 = !DILocation(line: 401, column: 2, scope: !6270)
!6292 = !DILocation(line: 401, column: 2, scope: !6268)
!6293 = !DILocation(line: 401, column: 2, scope: !6269)
!6294 = !DILocation(line: 404, column: 7, scope: !6295)
!6295 = distinct !DILexicalBlock(scope: !6253, file: !2, line: 404, column: 6)
!6296 = !DILocation(line: 404, column: 12, scope: !6295)
!6297 = !DILocation(line: 404, column: 6, scope: !6253)
!6298 = !DILocation(line: 405, column: 27, scope: !6299)
!6299 = distinct !DILexicalBlock(scope: !6295, file: !2, line: 404, column: 21)
!6300 = !DILocation(line: 405, column: 32, scope: !6299)
!6301 = !DILocation(line: 405, column: 38, scope: !6299)
!6302 = !DILocation(line: 405, column: 3, scope: !6299)
!6303 = !DILocation(line: 406, column: 3, scope: !6299)
!6304 = !DILocation(line: 409, column: 9, scope: !6253)
!6305 = !DILocation(line: 409, column: 14, scope: !6253)
!6306 = !DILocation(line: 409, column: 7, scope: !6253)
!6307 = !DILocation(line: 410, column: 9, scope: !6253)
!6308 = !DILocation(line: 410, column: 14, scope: !6253)
!6309 = !DILocation(line: 410, column: 7, scope: !6253)
!6310 = !DILocation(line: 412, column: 6, scope: !6274)
!6311 = !DILocation(line: 412, column: 49, scope: !6274)
!6312 = !DILocation(line: 412, column: 6, scope: !6253)
!6313 = !DILocation(line: 413, column: 3, scope: !6273)
!6314 = !DILocation(line: 413, column: 8, scope: !6273)
!6315 = !DILocation(line: 413, column: 23, scope: !6273)
!6316 = !DILocation(line: 413, column: 28, scope: !6273)
!6317 = !{i8 0, i8 2}
!6318 = !DILocation(line: 415, column: 3, scope: !6273)
!6319 = !DILocation(line: 415, column: 8, scope: !6273)
!6320 = !DILocation(line: 415, column: 17, scope: !6273)
!6321 = !DILocation(line: 416, column: 27, scope: !6273)
!6322 = !DILocation(line: 416, column: 32, scope: !6273)
!6323 = !DILocation(line: 416, column: 38, scope: !6273)
!6324 = !DILocation(line: 416, column: 3, scope: !6273)
!6325 = !DILocation(line: 418, column: 8, scope: !6326)
!6326 = distinct !DILexicalBlock(scope: !6273, file: !2, line: 418, column: 7)
!6327 = !DILocation(line: 418, column: 7, scope: !6273)
!6328 = !DILocation(line: 419, column: 4, scope: !6326)
!6329 = !DILocation(line: 421, column: 3, scope: !6273)
!6330 = !DILocation(line: 422, column: 2, scope: !6274)
!6331 = !DILocation(line: 424, column: 11, scope: !6253)
!6332 = !DILocation(line: 424, column: 16, scope: !6253)
!6333 = !DILocation(line: 424, column: 24, scope: !6253)
!6334 = !DILocation(line: 424, column: 8, scope: !6253)
!6335 = !DILocation(line: 425, column: 17, scope: !6253)
!6336 = !DILocation(line: 425, column: 2, scope: !6253)
!6337 = !DILocation(line: 425, column: 9, scope: !6253)
!6338 = !DILocation(line: 425, column: 15, scope: !6253)
!6339 = !DILocation(line: 426, column: 29, scope: !6253)
!6340 = !DILocation(line: 426, column: 2, scope: !6253)
!6341 = !DILocation(line: 426, column: 9, scope: !6253)
!6342 = !DILocation(line: 426, column: 27, scope: !6253)
!6343 = !DILocation(line: 427, column: 10, scope: !6253)
!6344 = !DILocation(line: 427, column: 17, scope: !6253)
!6345 = !DILocation(line: 427, column: 23, scope: !6253)
!6346 = !DILocation(line: 427, column: 45, scope: !6253)
!6347 = !DILocation(line: 427, column: 50, scope: !6253)
!6348 = !DILocation(line: 427, column: 43, scope: !6253)
!6349 = !DILocation(line: 427, column: 2, scope: !6253)
!6350 = !DILocation(line: 429, column: 10, scope: !6253)
!6351 = !DILocation(line: 429, column: 15, scope: !6253)
!6352 = !DILocation(line: 429, column: 20, scope: !6253)
!6353 = !DILocation(line: 429, column: 7, scope: !6253)
!6354 = !DILocation(line: 430, column: 14, scope: !6253)
!6355 = !DILocation(line: 430, column: 2, scope: !6253)
!6356 = !DILocation(line: 430, column: 7, scope: !6253)
!6357 = !DILocation(line: 430, column: 12, scope: !6253)
!6358 = !DILocation(line: 432, column: 26, scope: !6253)
!6359 = !DILocation(line: 432, column: 31, scope: !6253)
!6360 = !DILocation(line: 432, column: 37, scope: !6253)
!6361 = !DILocation(line: 432, column: 2, scope: !6253)
!6362 = !DILocation(line: 434, column: 2, scope: !6253)
!6363 = !DILocation(line: 436, column: 2, scope: !6253)
!6364 = !DILocation(line: 437, column: 1, scope: !6253)
!6365 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !6366, file: !6366, line: 32, type: !6367, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6366 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!6367 = !DISubroutineType(types: !6368)
!6368 = !{!531, !6369}
!6369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!6370 = distinct !DISubprogram(name: "spinlock_check", scope: !6371, file: !6371, line: 324, type: !6372, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6374)
!6371 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!6372 = !DISubroutineType(types: !6373)
!6373 = !{!6369, !2515}
!6374 = !{!6375}
!6375 = !DILocalVariable(name: "lock", arg: 1, scope: !6370, file: !6371, line: 324, type: !2515)
!6376 = !DILocation(line: 324, column: 67, scope: !6370)
!6377 = !DILocation(line: 326, column: 10, scope: !6370)
!6378 = !DILocation(line: 326, column: 16, scope: !6370)
!6379 = !DILocation(line: 326, column: 2, scope: !6370)
!6380 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !6371, file: !6371, line: 404, type: !6381, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6383)
!6381 = !DISubroutineType(types: !6382)
!6382 = !{null, !2515, !531}
!6383 = !{!6384, !6385, !6386, !6389}
!6384 = !DILocalVariable(name: "lock", arg: 1, scope: !6380, file: !6371, line: 404, type: !2515)
!6385 = !DILocalVariable(name: "flags", arg: 2, scope: !6380, file: !6371, line: 404, type: !531)
!6386 = !DILocalVariable(name: "__dummy", scope: !6387, file: !6371, line: 406, type: !531)
!6387 = distinct !DILexicalBlock(scope: !6388, file: !6371, line: 406, column: 2)
!6388 = distinct !DILexicalBlock(scope: !6380, file: !6371, line: 406, column: 2)
!6389 = !DILocalVariable(name: "__dummy2", scope: !6387, file: !6371, line: 406, type: !531)
!6390 = !DILocation(line: 404, column: 64, scope: !6380)
!6391 = !DILocation(line: 404, column: 84, scope: !6380)
!6392 = !DILocation(line: 406, column: 2, scope: !6380)
!6393 = !DILocation(line: 406, column: 2, scope: !6387)
!6394 = !DILocation(line: 406, column: 2, scope: !6388)
!6395 = !DILocation(line: 407, column: 1, scope: !6380)
!6396 = !DISubprogram(name: "__drm_err", scope: !335, file: !335, line: 573, type: !6397, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6397 = !DISubroutineType(types: !6398)
!6398 = !{null, !400, null}
!6399 = !DISubprogram(name: "__wake_up", scope: !960, file: !960, line: 212, type: !6400, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6400 = !DISubroutineType(types: !6401)
!6401 = !{!120, !6402, !18, !120, !376}
!6402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!6403 = distinct !DISubprogram(name: "crc_control_write", scope: !2, file: !2, line: 120, type: !2966, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6404)
!6404 = !{!6405, !6406, !6407, !6408, !6409, !6410, !6411, !6412, !6413, !6414}
!6405 = !DILocalVariable(name: "file", arg: 1, scope: !6403, file: !2, line: 120, type: !1313)
!6406 = !DILocalVariable(name: "ubuf", arg: 2, scope: !6403, file: !2, line: 120, type: !400)
!6407 = !DILocalVariable(name: "len", arg: 3, scope: !6403, file: !2, line: 121, type: !528)
!6408 = !DILocalVariable(name: "offp", arg: 4, scope: !6403, file: !2, line: 121, type: !874)
!6409 = !DILocalVariable(name: "m", scope: !6403, file: !2, line: 123, type: !833)
!6410 = !DILocalVariable(name: "crtc", scope: !6403, file: !2, line: 124, type: !4480)
!6411 = !DILocalVariable(name: "crc", scope: !6403, file: !2, line: 125, type: !6262)
!6412 = !DILocalVariable(name: "source", scope: !6403, file: !2, line: 126, type: !481)
!6413 = !DILocalVariable(name: "values_cnt", scope: !6403, file: !2, line: 127, type: !528)
!6414 = !DILocalVariable(name: "ret", scope: !6403, file: !2, line: 128, type: !120)
!6415 = !DILocation(line: 120, column: 47, scope: !6403)
!6416 = !DILocation(line: 120, column: 72, scope: !6403)
!6417 = !DILocation(line: 121, column: 13, scope: !6403)
!6418 = !DILocation(line: 121, column: 26, scope: !6403)
!6419 = !DILocation(line: 123, column: 2, scope: !6403)
!6420 = !DILocation(line: 123, column: 19, scope: !6403)
!6421 = !DILocation(line: 123, column: 23, scope: !6403)
!6422 = !DILocation(line: 123, column: 29, scope: !6403)
!6423 = !DILocation(line: 124, column: 2, scope: !6403)
!6424 = !DILocation(line: 124, column: 19, scope: !6403)
!6425 = !DILocation(line: 124, column: 26, scope: !6403)
!6426 = !DILocation(line: 124, column: 29, scope: !6403)
!6427 = !DILocation(line: 125, column: 2, scope: !6403)
!6428 = !DILocation(line: 125, column: 23, scope: !6403)
!6429 = !DILocation(line: 125, column: 30, scope: !6403)
!6430 = !DILocation(line: 125, column: 36, scope: !6403)
!6431 = !DILocation(line: 126, column: 2, scope: !6403)
!6432 = !DILocation(line: 126, column: 8, scope: !6403)
!6433 = !DILocation(line: 127, column: 2, scope: !6403)
!6434 = !DILocation(line: 127, column: 9, scope: !6403)
!6435 = !DILocation(line: 128, column: 2, scope: !6403)
!6436 = !DILocation(line: 128, column: 6, scope: !6403)
!6437 = !DILocation(line: 130, column: 6, scope: !6438)
!6438 = distinct !DILexicalBlock(scope: !6403, file: !2, line: 130, column: 6)
!6439 = !DILocation(line: 130, column: 10, scope: !6438)
!6440 = !DILocation(line: 130, column: 6, scope: !6403)
!6441 = !DILocation(line: 131, column: 3, scope: !6438)
!6442 = !DILocation(line: 133, column: 6, scope: !6443)
!6443 = distinct !DILexicalBlock(scope: !6403, file: !2, line: 133, column: 6)
!6444 = !DILocation(line: 133, column: 10, scope: !6443)
!6445 = !DILocation(line: 133, column: 6, scope: !6403)
!6446 = !DILocation(line: 134, column: 3, scope: !6447)
!6447 = distinct !DILexicalBlock(scope: !6443, file: !2, line: 133, column: 27)
!6448 = !DILocation(line: 136, column: 3, scope: !6447)
!6449 = !DILocation(line: 139, column: 27, scope: !6403)
!6450 = !DILocation(line: 139, column: 33, scope: !6403)
!6451 = !DILocation(line: 139, column: 11, scope: !6403)
!6452 = !DILocation(line: 139, column: 9, scope: !6403)
!6453 = !DILocation(line: 140, column: 13, scope: !6454)
!6454 = distinct !DILexicalBlock(scope: !6403, file: !2, line: 140, column: 6)
!6455 = !DILocation(line: 140, column: 6, scope: !6454)
!6456 = !DILocation(line: 140, column: 6, scope: !6403)
!6457 = !DILocation(line: 141, column: 18, scope: !6454)
!6458 = !DILocation(line: 141, column: 10, scope: !6454)
!6459 = !DILocation(line: 141, column: 3, scope: !6454)
!6460 = !DILocation(line: 143, column: 6, scope: !6461)
!6461 = distinct !DILexicalBlock(scope: !6403, file: !2, line: 143, column: 6)
!6462 = !DILocation(line: 143, column: 13, scope: !6461)
!6463 = !DILocation(line: 143, column: 17, scope: !6461)
!6464 = !DILocation(line: 143, column: 22, scope: !6461)
!6465 = !DILocation(line: 143, column: 6, scope: !6403)
!6466 = !DILocation(line: 144, column: 3, scope: !6461)
!6467 = !DILocation(line: 144, column: 10, scope: !6461)
!6468 = !DILocation(line: 144, column: 14, scope: !6461)
!6469 = !DILocation(line: 144, column: 19, scope: !6461)
!6470 = !DILocation(line: 146, column: 8, scope: !6403)
!6471 = !DILocation(line: 146, column: 14, scope: !6403)
!6472 = !DILocation(line: 146, column: 21, scope: !6403)
!6473 = !DILocation(line: 146, column: 39, scope: !6403)
!6474 = !DILocation(line: 146, column: 45, scope: !6403)
!6475 = !DILocation(line: 146, column: 6, scope: !6403)
!6476 = !DILocation(line: 147, column: 6, scope: !6477)
!6477 = distinct !DILexicalBlock(scope: !6403, file: !2, line: 147, column: 6)
!6478 = !DILocation(line: 147, column: 6, scope: !6403)
!6479 = !DILocation(line: 148, column: 9, scope: !6480)
!6480 = distinct !DILexicalBlock(scope: !6477, file: !2, line: 147, column: 11)
!6481 = !DILocation(line: 148, column: 3, scope: !6480)
!6482 = !DILocation(line: 149, column: 10, scope: !6480)
!6483 = !DILocation(line: 149, column: 3, scope: !6480)
!6484 = !DILocation(line: 152, column: 17, scope: !6403)
!6485 = !DILocation(line: 152, column: 22, scope: !6403)
!6486 = !DILocation(line: 152, column: 2, scope: !6403)
!6487 = !DILocation(line: 154, column: 6, scope: !6488)
!6488 = distinct !DILexicalBlock(scope: !6403, file: !2, line: 154, column: 6)
!6489 = !DILocation(line: 154, column: 11, scope: !6488)
!6490 = !DILocation(line: 154, column: 6, scope: !6403)
!6491 = !DILocation(line: 155, column: 20, scope: !6492)
!6492 = distinct !DILexicalBlock(scope: !6488, file: !2, line: 154, column: 19)
!6493 = !DILocation(line: 155, column: 25, scope: !6492)
!6494 = !DILocation(line: 155, column: 3, scope: !6492)
!6495 = !DILocation(line: 156, column: 9, scope: !6492)
!6496 = !DILocation(line: 156, column: 3, scope: !6492)
!6497 = !DILocation(line: 157, column: 3, scope: !6492)
!6498 = !DILocation(line: 160, column: 8, scope: !6403)
!6499 = !DILocation(line: 160, column: 13, scope: !6403)
!6500 = !DILocation(line: 160, column: 2, scope: !6403)
!6501 = !DILocation(line: 161, column: 16, scope: !6403)
!6502 = !DILocation(line: 161, column: 2, scope: !6403)
!6503 = !DILocation(line: 161, column: 7, scope: !6403)
!6504 = !DILocation(line: 161, column: 14, scope: !6403)
!6505 = !DILocation(line: 163, column: 19, scope: !6403)
!6506 = !DILocation(line: 163, column: 24, scope: !6403)
!6507 = !DILocation(line: 163, column: 2, scope: !6403)
!6508 = !DILocation(line: 165, column: 11, scope: !6403)
!6509 = !DILocation(line: 165, column: 3, scope: !6403)
!6510 = !DILocation(line: 165, column: 8, scope: !6403)
!6511 = !DILocation(line: 166, column: 9, scope: !6403)
!6512 = !DILocation(line: 166, column: 2, scope: !6403)
!6513 = !DILocation(line: 167, column: 1, scope: !6403)
!6514 = distinct !DISubprogram(name: "crc_control_open", scope: !2, file: !2, line: 113, type: !3045, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6515)
!6515 = !{!6516, !6517, !6518}
!6516 = !DILocalVariable(name: "inode", arg: 1, scope: !6514, file: !2, line: 113, type: !561)
!6517 = !DILocalVariable(name: "file", arg: 2, scope: !6514, file: !2, line: 113, type: !1313)
!6518 = !DILocalVariable(name: "crtc", scope: !6514, file: !2, line: 115, type: !4480)
!6519 = !DILocation(line: 113, column: 43, scope: !6514)
!6520 = !DILocation(line: 113, column: 63, scope: !6514)
!6521 = !DILocation(line: 115, column: 2, scope: !6514)
!6522 = !DILocation(line: 115, column: 19, scope: !6514)
!6523 = !DILocation(line: 115, column: 26, scope: !6514)
!6524 = !DILocation(line: 115, column: 33, scope: !6514)
!6525 = !DILocation(line: 117, column: 21, scope: !6514)
!6526 = !DILocation(line: 117, column: 45, scope: !6514)
!6527 = !DILocation(line: 117, column: 9, scope: !6514)
!6528 = !DILocation(line: 118, column: 1, scope: !6514)
!6529 = !DILocation(line: 117, column: 2, scope: !6514)
!6530 = !DISubprogram(name: "___drm_dbg", scope: !335, file: !335, line: 571, type: !6531, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6531 = !DISubroutineType(types: !6532)
!6532 = !{null, !6533, !334, !400, null}
!6533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6534, size: 64)
!6534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ddebug", file: !6535, line: 16, size: 448, align: 64, elements: !6536)
!6535 = !DIFile(filename: "./include/linux/dynamic_debug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5870bc31a25115f490bd43a8eae18abb")
!6536 = !{!6537, !6538, !6539, !6540, !6541, !6542, !6543, !6544}
!6537 = !DIDerivedType(tag: DW_TAG_member, name: "modname", scope: !6534, file: !6535, line: 21, baseType: !400, size: 64)
!6538 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !6534, file: !6535, line: 22, baseType: !400, size: 64, offset: 64)
!6539 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !6534, file: !6535, line: 23, baseType: !400, size: 64, offset: 128)
!6540 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !6534, file: !6535, line: 24, baseType: !400, size: 64, offset: 192)
!6541 = !DIDerivedType(tag: DW_TAG_member, name: "lineno", scope: !6534, file: !6535, line: 25, baseType: !18, size: 18, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!6542 = !DIDerivedType(tag: DW_TAG_member, name: "class_id", scope: !6534, file: !6535, line: 27, baseType: !18, size: 6, offset: 274, flags: DIFlagBitField, extraData: i64 256)
!6543 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6534, file: !6535, line: 52, baseType: !18, size: 8, offset: 280, flags: DIFlagBitField, extraData: i64 256)
!6544 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !6534, file: !6535, line: 57, baseType: !6545, size: 128, offset: 320)
!6545 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6534, file: !6535, line: 54, size: 128, elements: !6546)
!6546 = !{!6547, !6562}
!6547 = !DIDerivedType(tag: DW_TAG_member, name: "dd_key_true", scope: !6545, file: !6535, line: 55, baseType: !6548, size: 128)
!6548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_true", file: !4375, line: 359, size: 128, elements: !6549)
!6549 = !{!6550}
!6550 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !6548, file: !4375, line: 360, baseType: !6551, size: 128)
!6551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !4375, line: 85, size: 128, elements: !6552)
!6552 = !{!6553, !6554}
!6553 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !6551, file: !4375, line: 86, baseType: !431, size: 32)
!6554 = !DIDerivedType(tag: DW_TAG_member, scope: !6551, file: !4375, line: 101, baseType: !6555, size: 64, offset: 64)
!6555 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6551, file: !4375, line: 101, size: 64, elements: !6556)
!6556 = !{!6557, !6558, !6559}
!6557 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6555, file: !4375, line: 102, baseType: !531, size: 64)
!6558 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !6555, file: !4375, line: 103, baseType: !4373, size: 64)
!6559 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !6555, file: !4375, line: 104, baseType: !6560, size: 64)
!6560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6561, size: 64)
!6561 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !4375, line: 104, flags: DIFlagFwdDecl)
!6562 = !DIDerivedType(tag: DW_TAG_member, name: "dd_key_false", scope: !6545, file: !6535, line: 56, baseType: !6563, size: 128)
!6563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_false", file: !4375, line: 363, size: 128, elements: !6564)
!6564 = !{!6565}
!6565 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !6563, file: !4375, line: 364, baseType: !6551, size: 128)
!6566 = !DISubprogram(name: "memdup_user_nul", scope: !6567, file: !6567, line: 17, type: !6568, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6567 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!6568 = !DISubroutineType(types: !6569)
!6569 = !{!376, !1420, !528}
!6570 = distinct !DISubprogram(name: "IS_ERR", scope: !6571, file: !6571, line: 59, type: !6572, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6574)
!6571 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!6572 = !DISubroutineType(types: !6573)
!6573 = !{!1718, !1420}
!6574 = !{!6575}
!6575 = !DILocalVariable(name: "ptr", arg: 1, scope: !6570, file: !6571, line: 59, type: !1420)
!6576 = !DILocation(line: 59, column: 60, scope: !6570)
!6577 = !DILocation(line: 61, column: 9, scope: !6570)
!6578 = !DILocation(line: 61, column: 2, scope: !6570)
!6579 = distinct !DISubprogram(name: "PTR_ERR", scope: !6571, file: !6571, line: 49, type: !6580, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6582)
!6580 = !DISubroutineType(types: !6581)
!6581 = !{!517, !1420}
!6582 = !{!6583}
!6583 = !DILocalVariable(name: "ptr", arg: 1, scope: !6579, file: !6571, line: 49, type: !1420)
!6584 = !DILocation(line: 49, column: 61, scope: !6579)
!6585 = !DILocation(line: 51, column: 16, scope: !6579)
!6586 = !DILocation(line: 51, column: 9, scope: !6579)
!6587 = !DILocation(line: 51, column: 2, scope: !6579)
!6588 = !DISubprogram(name: "kfree", scope: !366, file: !366, line: 227, type: !6589, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6589 = !DISubroutineType(types: !6590)
!6590 = !{null, !1420}
!6591 = distinct !DISubprogram(name: "spin_lock_irq", scope: !6371, file: !6371, line: 374, type: !6592, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6594)
!6592 = !DISubroutineType(types: !6593)
!6593 = !{null, !2515}
!6594 = !{!6595}
!6595 = !DILocalVariable(name: "lock", arg: 1, scope: !6591, file: !6371, line: 374, type: !2515)
!6596 = !DILocation(line: 374, column: 55, scope: !6591)
!6597 = !DILocation(line: 376, column: 2, scope: !6591)
!6598 = !DILocation(line: 377, column: 1, scope: !6591)
!6599 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !6371, file: !6371, line: 399, type: !6592, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6600)
!6600 = !{!6601}
!6601 = !DILocalVariable(name: "lock", arg: 1, scope: !6599, file: !6371, line: 399, type: !2515)
!6602 = !DILocation(line: 399, column: 57, scope: !6599)
!6603 = !DILocation(line: 401, column: 2, scope: !6599)
!6604 = !DILocation(line: 402, column: 1, scope: !6599)
!6605 = !DISubprogram(name: "_raw_spin_lock_irq", scope: !6366, file: !6366, line: 29, type: !6606, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6606 = !DISubroutineType(types: !6607)
!6607 = !{null, !6369}
!6608 = !DISubprogram(name: "_raw_spin_unlock_irq", scope: !6366, file: !6366, line: 41, type: !6606, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6609 = !DISubprogram(name: "single_open", scope: !835, file: !835, line: 166, type: !6610, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6610 = !DISubroutineType(types: !6611)
!6611 = !{!120, !1313, !884, !376}
!6612 = distinct !DISubprogram(name: "crc_control_show", scope: !2, file: !2, line: 83, type: !885, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6613)
!6613 = !{!6614, !6615, !6616, !6617, !6620, !6621, !6622, !6623}
!6614 = !DILocalVariable(name: "m", arg: 1, scope: !6612, file: !2, line: 83, type: !833)
!6615 = !DILocalVariable(name: "data", arg: 2, scope: !6612, file: !2, line: 83, type: !376)
!6616 = !DILocalVariable(name: "crtc", scope: !6612, file: !2, line: 85, type: !4480)
!6617 = !DILocalVariable(name: "count", scope: !6618, file: !2, line: 88, type: !528)
!6618 = distinct !DILexicalBlock(scope: !6619, file: !2, line: 87, column: 36)
!6619 = distinct !DILexicalBlock(scope: !6612, file: !2, line: 87, column: 6)
!6620 = !DILocalVariable(name: "sources", scope: !6618, file: !2, line: 89, type: !6160)
!6621 = !DILocalVariable(name: "values_cnt", scope: !6618, file: !2, line: 91, type: !528)
!6622 = !DILocalVariable(name: "i", scope: !6618, file: !2, line: 92, type: !120)
!6623 = !DILabel(scope: !6612, name: "out", file: !2, line: 108)
!6624 = !DILocation(line: 83, column: 46, scope: !6612)
!6625 = !DILocation(line: 83, column: 55, scope: !6612)
!6626 = !DILocation(line: 85, column: 2, scope: !6612)
!6627 = !DILocation(line: 85, column: 19, scope: !6612)
!6628 = !DILocation(line: 85, column: 26, scope: !6612)
!6629 = !DILocation(line: 85, column: 29, scope: !6612)
!6630 = !DILocation(line: 87, column: 6, scope: !6619)
!6631 = !DILocation(line: 87, column: 12, scope: !6619)
!6632 = !DILocation(line: 87, column: 19, scope: !6619)
!6633 = !DILocation(line: 87, column: 6, scope: !6612)
!6634 = !DILocation(line: 88, column: 3, scope: !6618)
!6635 = !DILocation(line: 88, column: 10, scope: !6618)
!6636 = !DILocation(line: 89, column: 3, scope: !6618)
!6637 = !DILocation(line: 89, column: 22, scope: !6618)
!6638 = !DILocation(line: 89, column: 32, scope: !6618)
!6639 = !DILocation(line: 89, column: 38, scope: !6618)
!6640 = !DILocation(line: 89, column: 45, scope: !6618)
!6641 = !DILocation(line: 89, column: 61, scope: !6618)
!6642 = !DILocation(line: 91, column: 3, scope: !6618)
!6643 = !DILocation(line: 91, column: 10, scope: !6618)
!6644 = !DILocation(line: 92, column: 3, scope: !6618)
!6645 = !DILocation(line: 92, column: 7, scope: !6618)
!6646 = !DILocation(line: 94, column: 7, scope: !6647)
!6647 = distinct !DILexicalBlock(scope: !6618, file: !2, line: 94, column: 7)
!6648 = !DILocation(line: 94, column: 13, scope: !6647)
!6649 = !DILocation(line: 94, column: 18, scope: !6647)
!6650 = !DILocation(line: 94, column: 22, scope: !6647)
!6651 = !DILocation(line: 94, column: 7, scope: !6618)
!6652 = !DILocation(line: 95, column: 4, scope: !6647)
!6653 = !DILocation(line: 97, column: 10, scope: !6654)
!6654 = distinct !DILexicalBlock(scope: !6618, file: !2, line: 97, column: 3)
!6655 = !DILocation(line: 97, column: 8, scope: !6654)
!6656 = !DILocation(line: 97, column: 15, scope: !6657)
!6657 = distinct !DILexicalBlock(scope: !6654, file: !2, line: 97, column: 3)
!6658 = !DILocation(line: 97, column: 19, scope: !6657)
!6659 = !DILocation(line: 97, column: 17, scope: !6657)
!6660 = !DILocation(line: 97, column: 3, scope: !6654)
!6661 = !DILocation(line: 98, column: 9, scope: !6662)
!6662 = distinct !DILexicalBlock(scope: !6657, file: !2, line: 98, column: 8)
!6663 = !DILocation(line: 98, column: 15, scope: !6662)
!6664 = !DILocation(line: 98, column: 22, scope: !6662)
!6665 = !DILocation(line: 98, column: 40, scope: !6662)
!6666 = !DILocation(line: 98, column: 46, scope: !6662)
!6667 = !DILocation(line: 98, column: 54, scope: !6662)
!6668 = !DILocation(line: 98, column: 8, scope: !6657)
!6669 = !DILocation(line: 100, column: 16, scope: !6670)
!6670 = distinct !DILexicalBlock(scope: !6671, file: !2, line: 100, column: 9)
!6671 = distinct !DILexicalBlock(scope: !6662, file: !2, line: 99, column: 26)
!6672 = !DILocation(line: 100, column: 24, scope: !6670)
!6673 = !DILocation(line: 100, column: 28, scope: !6670)
!6674 = !DILocation(line: 100, column: 34, scope: !6670)
!6675 = !DILocation(line: 100, column: 38, scope: !6670)
!6676 = !DILocation(line: 100, column: 9, scope: !6670)
!6677 = !DILocation(line: 100, column: 9, scope: !6671)
!6678 = !DILocation(line: 101, column: 17, scope: !6670)
!6679 = !DILocation(line: 101, column: 28, scope: !6670)
!6680 = !DILocation(line: 101, column: 36, scope: !6670)
!6681 = !DILocation(line: 101, column: 6, scope: !6670)
!6682 = !DILocation(line: 103, column: 17, scope: !6670)
!6683 = !DILocation(line: 103, column: 29, scope: !6670)
!6684 = !DILocation(line: 103, column: 37, scope: !6670)
!6685 = !DILocation(line: 103, column: 6, scope: !6670)
!6686 = !DILocation(line: 104, column: 4, scope: !6671)
!6687 = !DILocation(line: 99, column: 23, scope: !6662)
!6688 = !DILocation(line: 97, column: 27, scope: !6657)
!6689 = !DILocation(line: 97, column: 3, scope: !6657)
!6690 = distinct !{!6690, !6660, !6691, !6692, !6693}
!6691 = !DILocation(line: 104, column: 4, scope: !6654)
!6692 = !{!"llvm.loop.mustprogress"}
!6693 = !{!"llvm.loop.unroll.disable"}
!6694 = !DILocation(line: 105, column: 2, scope: !6619)
!6695 = !DILocation(line: 105, column: 2, scope: !6618)
!6696 = !DILocation(line: 106, column: 2, scope: !6612)
!6697 = !DILocation(line: 108, column: 1, scope: !6612)
!6698 = !DILocation(line: 109, column: 13, scope: !6612)
!6699 = !DILocation(line: 109, column: 25, scope: !6612)
!6700 = !DILocation(line: 109, column: 31, scope: !6612)
!6701 = !DILocation(line: 109, column: 35, scope: !6612)
!6702 = !DILocation(line: 109, column: 2, scope: !6612)
!6703 = !DILocation(line: 110, column: 2, scope: !6612)
!6704 = !DILocation(line: 111, column: 1, scope: !6612)
!6705 = !DISubprogram(name: "strcmp", scope: !6567, file: !6567, line: 88, type: !6706, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6706 = !DISubroutineType(types: !6707)
!6707 = !{!120, !400, !400}
!6708 = !DISubprogram(name: "seq_printf", scope: !835, file: !835, line: 119, type: !6709, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6709 = !DISubroutineType(types: !6710)
!6710 = !{null, !833, !400, null}
!6711 = distinct !DISubprogram(name: "crtc_crc_read", scope: !2, file: !2, line: 284, type: !2962, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6712)
!6712 = !{!6713, !6714, !6715, !6716, !6717, !6718, !6719, !6720, !6724, !6725, !6726, !6729, !6743, !6744, !6748}
!6713 = !DILocalVariable(name: "filep", arg: 1, scope: !6711, file: !2, line: 284, type: !1313)
!6714 = !DILocalVariable(name: "user_buf", arg: 2, scope: !6711, file: !2, line: 284, type: !481)
!6715 = !DILocalVariable(name: "count", arg: 3, scope: !6711, file: !2, line: 285, type: !528)
!6716 = !DILocalVariable(name: "pos", arg: 4, scope: !6711, file: !2, line: 285, type: !874)
!6717 = !DILocalVariable(name: "crtc", scope: !6711, file: !2, line: 287, type: !4480)
!6718 = !DILocalVariable(name: "crc", scope: !6711, file: !2, line: 288, type: !6262)
!6719 = !DILocalVariable(name: "entry", scope: !6711, file: !2, line: 289, type: !6199)
!6720 = !DILocalVariable(name: "buf", scope: !6711, file: !2, line: 290, type: !6721)
!6721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 976, elements: !6722)
!6722 = !{!6723}
!6723 = !DISubrange(count: 122)
!6724 = !DILocalVariable(name: "ret", scope: !6711, file: !2, line: 291, type: !120)
!6725 = !DILocalVariable(name: "i", scope: !6711, file: !2, line: 291, type: !120)
!6726 = !DILocalVariable(name: "__ret", scope: !6727, file: !2, line: 307, type: !120)
!6727 = distinct !DILexicalBlock(scope: !6728, file: !2, line: 307, column: 9)
!6728 = distinct !DILexicalBlock(scope: !6711, file: !2, line: 301, column: 40)
!6729 = !DILocalVariable(name: "__wq_entry", scope: !6730, file: !2, line: 307, type: !6732)
!6730 = distinct !DILexicalBlock(scope: !6731, file: !2, line: 307, column: 9)
!6731 = distinct !DILexicalBlock(scope: !6727, file: !2, line: 307, column: 9)
!6732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !960, line: 30, size: 320, elements: !6733)
!6733 = !{!6734, !6735, !6736, !6742}
!6734 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6732, file: !960, line: 31, baseType: !18, size: 32)
!6735 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !6732, file: !960, line: 32, baseType: !376, size: 64, offset: 64)
!6736 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !6732, file: !960, line: 33, baseType: !6737, size: 64, offset: 128)
!6737 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !960, line: 16, baseType: !6738)
!6738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6739, size: 64)
!6739 = !DISubroutineType(types: !6740)
!6740 = !{!120, !6741, !18, !120, !376}
!6741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6732, size: 64)
!6742 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !6732, file: !960, line: 34, baseType: !382, size: 128, offset: 192)
!6743 = !DILocalVariable(name: "__ret", scope: !6730, file: !2, line: 307, type: !517)
!6744 = !DILocalVariable(name: "__int", scope: !6745, file: !2, line: 307, type: !517)
!6745 = distinct !DILexicalBlock(scope: !6746, file: !2, line: 307, column: 9)
!6746 = distinct !DILexicalBlock(scope: !6747, file: !2, line: 307, column: 9)
!6747 = distinct !DILexicalBlock(scope: !6730, file: !2, line: 307, column: 9)
!6748 = !DILabel(scope: !6730, name: "__out", file: !2, line: 307)
!6749 = !DILocation(line: 284, column: 43, scope: !6711)
!6750 = !DILocation(line: 284, column: 63, scope: !6711)
!6751 = !DILocation(line: 285, column: 16, scope: !6711)
!6752 = !DILocation(line: 285, column: 31, scope: !6711)
!6753 = !DILocation(line: 287, column: 2, scope: !6711)
!6754 = !DILocation(line: 287, column: 19, scope: !6711)
!6755 = !DILocation(line: 287, column: 26, scope: !6711)
!6756 = !DILocation(line: 287, column: 33, scope: !6711)
!6757 = !DILocation(line: 287, column: 42, scope: !6711)
!6758 = !DILocation(line: 288, column: 2, scope: !6711)
!6759 = !DILocation(line: 288, column: 23, scope: !6711)
!6760 = !DILocation(line: 288, column: 30, scope: !6711)
!6761 = !DILocation(line: 288, column: 36, scope: !6711)
!6762 = !DILocation(line: 289, column: 2, scope: !6711)
!6763 = !DILocation(line: 289, column: 29, scope: !6711)
!6764 = !DILocation(line: 290, column: 2, scope: !6711)
!6765 = !DILocation(line: 290, column: 7, scope: !6711)
!6766 = !DILocation(line: 291, column: 2, scope: !6711)
!6767 = !DILocation(line: 291, column: 6, scope: !6711)
!6768 = !DILocation(line: 291, column: 11, scope: !6711)
!6769 = !DILocation(line: 293, column: 17, scope: !6711)
!6770 = !DILocation(line: 293, column: 22, scope: !6711)
!6771 = !DILocation(line: 293, column: 2, scope: !6711)
!6772 = !DILocation(line: 295, column: 7, scope: !6773)
!6773 = distinct !DILexicalBlock(scope: !6711, file: !2, line: 295, column: 6)
!6774 = !DILocation(line: 295, column: 12, scope: !6773)
!6775 = !DILocation(line: 295, column: 6, scope: !6711)
!6776 = !DILocation(line: 296, column: 20, scope: !6777)
!6777 = distinct !DILexicalBlock(scope: !6773, file: !2, line: 295, column: 20)
!6778 = !DILocation(line: 296, column: 25, scope: !6777)
!6779 = !DILocation(line: 296, column: 3, scope: !6777)
!6780 = !DILocation(line: 297, column: 3, scope: !6777)
!6781 = !DILocation(line: 301, column: 2, scope: !6711)
!6782 = !DILocation(line: 301, column: 29, scope: !6711)
!6783 = !DILocation(line: 301, column: 9, scope: !6711)
!6784 = !DILocation(line: 301, column: 34, scope: !6711)
!6785 = !DILocation(line: 302, column: 7, scope: !6786)
!6786 = distinct !DILexicalBlock(scope: !6728, file: !2, line: 302, column: 7)
!6787 = !DILocation(line: 302, column: 14, scope: !6786)
!6788 = !DILocation(line: 302, column: 22, scope: !6786)
!6789 = !DILocation(line: 302, column: 7, scope: !6728)
!6790 = !DILocation(line: 303, column: 21, scope: !6791)
!6791 = distinct !DILexicalBlock(scope: !6786, file: !2, line: 302, column: 36)
!6792 = !DILocation(line: 303, column: 26, scope: !6791)
!6793 = !DILocation(line: 303, column: 4, scope: !6791)
!6794 = !DILocation(line: 304, column: 4, scope: !6791)
!6795 = !DILocation(line: 307, column: 9, scope: !6727)
!6796 = !DILocation(line: 307, column: 9, scope: !6731)
!6797 = !DILocation(line: 307, column: 9, scope: !6730)
!6798 = !DILocation(line: 307, column: 9, scope: !6745)
!6799 = !DILocation(line: 307, column: 9, scope: !6800)
!6800 = distinct !DILexicalBlock(scope: !6745, file: !2, line: 307, column: 9)
!6801 = !DILocation(line: 307, column: 9, scope: !6802)
!6802 = distinct !DILexicalBlock(scope: !6745, file: !2, line: 307, column: 9)
!6803 = !DILocation(line: 307, column: 9, scope: !6804)
!6804 = distinct !DILexicalBlock(scope: !6802, file: !2, line: 307, column: 9)
!6805 = !DILocation(line: 307, column: 9, scope: !6746)
!6806 = distinct !{!6806, !6807, !6807, !6693}
!6807 = !DILocation(line: 307, column: 9, scope: !6747)
!6808 = !DILocation(line: 307, column: 9, scope: !6728)
!6809 = !DILocation(line: 307, column: 7, scope: !6728)
!6810 = !DILocation(line: 310, column: 7, scope: !6811)
!6811 = distinct !DILexicalBlock(scope: !6728, file: !2, line: 310, column: 7)
!6812 = !DILocation(line: 310, column: 7, scope: !6728)
!6813 = !DILocation(line: 311, column: 21, scope: !6814)
!6814 = distinct !DILexicalBlock(scope: !6811, file: !2, line: 310, column: 12)
!6815 = !DILocation(line: 311, column: 26, scope: !6814)
!6816 = !DILocation(line: 311, column: 4, scope: !6814)
!6817 = !DILocation(line: 312, column: 11, scope: !6814)
!6818 = !DILocation(line: 312, column: 4, scope: !6814)
!6819 = distinct !{!6819, !6781, !6820, !6692, !6693}
!6820 = !DILocation(line: 314, column: 2, scope: !6711)
!6821 = !DILocation(line: 317, column: 11, scope: !6711)
!6822 = !DILocation(line: 317, column: 16, scope: !6711)
!6823 = !DILocation(line: 317, column: 24, scope: !6711)
!6824 = !DILocation(line: 317, column: 29, scope: !6711)
!6825 = !DILocation(line: 317, column: 8, scope: !6711)
!6826 = !DILocation(line: 319, column: 6, scope: !6827)
!6827 = distinct !DILexicalBlock(scope: !6711, file: !2, line: 319, column: 6)
!6828 = !DILocation(line: 319, column: 14, scope: !6827)
!6829 = !DILocation(line: 319, column: 12, scope: !6827)
!6830 = !DILocation(line: 319, column: 6, scope: !6711)
!6831 = !DILocation(line: 320, column: 20, scope: !6832)
!6832 = distinct !DILexicalBlock(scope: !6827, file: !2, line: 319, column: 41)
!6833 = !DILocation(line: 320, column: 25, scope: !6832)
!6834 = !DILocation(line: 320, column: 3, scope: !6832)
!6835 = !DILocation(line: 321, column: 3, scope: !6832)
!6836 = !DILocation(line: 324, column: 2, scope: !6711)
!6837 = !DILocation(line: 324, column: 2, scope: !6838)
!6838 = distinct !DILexicalBlock(scope: !6711, file: !2, line: 324, column: 2)
!6839 = !DILocation(line: 325, column: 15, scope: !6711)
!6840 = !DILocation(line: 325, column: 20, scope: !6711)
!6841 = !DILocation(line: 325, column: 25, scope: !6711)
!6842 = !DILocation(line: 325, column: 30, scope: !6711)
!6843 = !DILocation(line: 325, column: 2, scope: !6711)
!6844 = !DILocation(line: 325, column: 7, scope: !6711)
!6845 = !DILocation(line: 325, column: 12, scope: !6711)
!6846 = !DILocation(line: 327, column: 19, scope: !6711)
!6847 = !DILocation(line: 327, column: 24, scope: !6711)
!6848 = !DILocation(line: 327, column: 2, scope: !6711)
!6849 = !DILocation(line: 329, column: 6, scope: !6850)
!6850 = distinct !DILexicalBlock(scope: !6711, file: !2, line: 329, column: 6)
!6851 = !DILocation(line: 329, column: 13, scope: !6850)
!6852 = !DILocation(line: 329, column: 6, scope: !6711)
!6853 = !DILocation(line: 330, column: 11, scope: !6850)
!6854 = !DILocation(line: 330, column: 26, scope: !6850)
!6855 = !DILocation(line: 330, column: 33, scope: !6850)
!6856 = !DILocation(line: 330, column: 3, scope: !6850)
!6857 = !DILocation(line: 332, column: 11, scope: !6850)
!6858 = !DILocation(line: 332, column: 3, scope: !6850)
!6859 = !DILocation(line: 334, column: 9, scope: !6860)
!6860 = distinct !DILexicalBlock(scope: !6711, file: !2, line: 334, column: 2)
!6861 = !DILocation(line: 334, column: 7, scope: !6860)
!6862 = !DILocation(line: 334, column: 14, scope: !6863)
!6863 = distinct !DILexicalBlock(scope: !6860, file: !2, line: 334, column: 2)
!6864 = !DILocation(line: 334, column: 18, scope: !6863)
!6865 = !DILocation(line: 334, column: 23, scope: !6863)
!6866 = !DILocation(line: 334, column: 16, scope: !6863)
!6867 = !DILocation(line: 334, column: 2, scope: !6860)
!6868 = !DILocation(line: 335, column: 11, scope: !6863)
!6869 = !DILocation(line: 335, column: 15, scope: !6863)
!6870 = !DILocation(line: 335, column: 22, scope: !6863)
!6871 = !DILocation(line: 335, column: 24, scope: !6863)
!6872 = !DILocation(line: 335, column: 20, scope: !6863)
!6873 = !DILocation(line: 335, column: 41, scope: !6863)
!6874 = !DILocation(line: 335, column: 48, scope: !6863)
!6875 = !DILocation(line: 335, column: 53, scope: !6863)
!6876 = !DILocation(line: 335, column: 3, scope: !6863)
!6877 = !DILocation(line: 334, column: 36, scope: !6863)
!6878 = !DILocation(line: 334, column: 2, scope: !6863)
!6879 = distinct !{!6879, !6867, !6880, !6692, !6693}
!6880 = !DILocation(line: 335, column: 55, scope: !6860)
!6881 = !DILocation(line: 336, column: 10, scope: !6711)
!6882 = !DILocation(line: 336, column: 14, scope: !6711)
!6883 = !DILocation(line: 336, column: 21, scope: !6711)
!6884 = !DILocation(line: 336, column: 26, scope: !6711)
!6885 = !DILocation(line: 336, column: 37, scope: !6711)
!6886 = !DILocation(line: 336, column: 19, scope: !6711)
!6887 = !DILocation(line: 336, column: 2, scope: !6711)
!6888 = !DILocation(line: 338, column: 19, scope: !6889)
!6889 = distinct !DILexicalBlock(scope: !6711, file: !2, line: 338, column: 6)
!6890 = !DILocation(line: 338, column: 29, scope: !6889)
!6891 = !DILocation(line: 338, column: 34, scope: !6889)
!6892 = !DILocation(line: 338, column: 6, scope: !6889)
!6893 = !DILocation(line: 338, column: 6, scope: !6711)
!6894 = !DILocation(line: 339, column: 3, scope: !6889)
!6895 = !DILocation(line: 341, column: 9, scope: !6711)
!6896 = !DILocation(line: 341, column: 2, scope: !6711)
!6897 = !DILocation(line: 342, column: 1, scope: !6711)
!6898 = distinct !DISubprogram(name: "crtc_crc_poll", scope: !2, file: !2, line: 344, type: !6899, scopeLine: 345, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6903)
!6899 = !DISubroutineType(types: !6900)
!6900 = !{!3020, !1313, !6901}
!6901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6902, size: 64)
!6902 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_table", file: !3024, line: 40, baseType: !3023)
!6903 = !{!6904, !6905, !6906, !6907, !6908}
!6904 = !DILocalVariable(name: "file", arg: 1, scope: !6898, file: !2, line: 344, type: !1313)
!6905 = !DILocalVariable(name: "wait", arg: 2, scope: !6898, file: !2, line: 344, type: !6901)
!6906 = !DILocalVariable(name: "crtc", scope: !6898, file: !2, line: 346, type: !4480)
!6907 = !DILocalVariable(name: "crc", scope: !6898, file: !2, line: 347, type: !6262)
!6908 = !DILocalVariable(name: "ret", scope: !6898, file: !2, line: 348, type: !3020)
!6909 = !DILocation(line: 344, column: 44, scope: !6898)
!6910 = !DILocation(line: 344, column: 62, scope: !6898)
!6911 = !DILocation(line: 346, column: 2, scope: !6898)
!6912 = !DILocation(line: 346, column: 19, scope: !6898)
!6913 = !DILocation(line: 346, column: 26, scope: !6898)
!6914 = !DILocation(line: 346, column: 32, scope: !6898)
!6915 = !DILocation(line: 346, column: 41, scope: !6898)
!6916 = !DILocation(line: 347, column: 2, scope: !6898)
!6917 = !DILocation(line: 347, column: 23, scope: !6898)
!6918 = !DILocation(line: 347, column: 30, scope: !6898)
!6919 = !DILocation(line: 347, column: 36, scope: !6898)
!6920 = !DILocation(line: 348, column: 2, scope: !6898)
!6921 = !DILocation(line: 348, column: 11, scope: !6898)
!6922 = !DILocation(line: 350, column: 12, scope: !6898)
!6923 = !DILocation(line: 350, column: 19, scope: !6898)
!6924 = !DILocation(line: 350, column: 24, scope: !6898)
!6925 = !DILocation(line: 350, column: 28, scope: !6898)
!6926 = !DILocation(line: 350, column: 2, scope: !6898)
!6927 = !DILocation(line: 352, column: 17, scope: !6898)
!6928 = !DILocation(line: 352, column: 22, scope: !6898)
!6929 = !DILocation(line: 352, column: 2, scope: !6898)
!6930 = !DILocation(line: 353, column: 6, scope: !6931)
!6931 = distinct !DILexicalBlock(scope: !6898, file: !2, line: 353, column: 6)
!6932 = !DILocation(line: 353, column: 11, scope: !6931)
!6933 = !DILocation(line: 353, column: 18, scope: !6931)
!6934 = !DILocation(line: 353, column: 41, scope: !6931)
!6935 = !DILocation(line: 353, column: 21, scope: !6931)
!6936 = !DILocation(line: 353, column: 6, scope: !6898)
!6937 = !DILocation(line: 354, column: 7, scope: !6931)
!6938 = !DILocation(line: 354, column: 3, scope: !6931)
!6939 = !DILocation(line: 355, column: 19, scope: !6898)
!6940 = !DILocation(line: 355, column: 24, scope: !6898)
!6941 = !DILocation(line: 355, column: 2, scope: !6898)
!6942 = !DILocation(line: 357, column: 9, scope: !6898)
!6943 = !DILocation(line: 358, column: 1, scope: !6898)
!6944 = !DILocation(line: 357, column: 2, scope: !6898)
!6945 = distinct !DISubprogram(name: "crtc_crc_open", scope: !2, file: !2, line: 195, type: !3045, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !6946)
!6946 = !{!6947, !6948, !6949, !6950, !6951, !6952, !6953, !6954, !6957, !6960, !6963, !6966}
!6947 = !DILocalVariable(name: "inode", arg: 1, scope: !6945, file: !2, line: 195, type: !561)
!6948 = !DILocalVariable(name: "filep", arg: 2, scope: !6945, file: !2, line: 195, type: !1313)
!6949 = !DILocalVariable(name: "crtc", scope: !6945, file: !2, line: 197, type: !4480)
!6950 = !DILocalVariable(name: "crc", scope: !6945, file: !2, line: 198, type: !6262)
!6951 = !DILocalVariable(name: "entries", scope: !6945, file: !2, line: 199, type: !6199)
!6952 = !DILocalVariable(name: "values_cnt", scope: !6945, file: !2, line: 200, type: !528)
!6953 = !DILocalVariable(name: "ret", scope: !6945, file: !2, line: 201, type: !120)
!6954 = !DILocalVariable(name: "__ret_warn_on", scope: !6955, file: !2, line: 220, type: !120)
!6955 = distinct !DILexicalBlock(scope: !6956, file: !2, line: 220, column: 6)
!6956 = distinct !DILexicalBlock(scope: !6945, file: !2, line: 220, column: 6)
!6957 = !DILocalVariable(name: "__flags", scope: !6958, file: !2, line: 220, type: !120)
!6958 = distinct !DILexicalBlock(scope: !6959, file: !2, line: 220, column: 6)
!6959 = distinct !DILexicalBlock(scope: !6955, file: !2, line: 220, column: 6)
!6960 = !DILocalVariable(name: "__ret_warn_on", scope: !6961, file: !2, line: 223, type: !120)
!6961 = distinct !DILexicalBlock(scope: !6962, file: !2, line: 223, column: 6)
!6962 = distinct !DILexicalBlock(scope: !6945, file: !2, line: 223, column: 6)
!6963 = !DILocalVariable(name: "__flags", scope: !6964, file: !2, line: 223, type: !120)
!6964 = distinct !DILexicalBlock(scope: !6965, file: !2, line: 223, column: 6)
!6965 = distinct !DILexicalBlock(scope: !6961, file: !2, line: 223, column: 6)
!6966 = !DILabel(scope: !6945, name: "err", file: !2, line: 251)
!6967 = !DILocation(line: 195, column: 40, scope: !6945)
!6968 = !DILocation(line: 195, column: 60, scope: !6945)
!6969 = !DILocation(line: 197, column: 2, scope: !6945)
!6970 = !DILocation(line: 197, column: 19, scope: !6945)
!6971 = !DILocation(line: 197, column: 26, scope: !6945)
!6972 = !DILocation(line: 197, column: 33, scope: !6945)
!6973 = !DILocation(line: 198, column: 2, scope: !6945)
!6974 = !DILocation(line: 198, column: 23, scope: !6945)
!6975 = !DILocation(line: 198, column: 30, scope: !6945)
!6976 = !DILocation(line: 198, column: 36, scope: !6945)
!6977 = !DILocation(line: 199, column: 2, scope: !6945)
!6978 = !DILocation(line: 199, column: 29, scope: !6945)
!6979 = !DILocation(line: 200, column: 2, scope: !6945)
!6980 = !DILocation(line: 200, column: 9, scope: !6945)
!6981 = !DILocation(line: 201, column: 2, scope: !6945)
!6982 = !DILocation(line: 201, column: 6, scope: !6945)
!6983 = !DILocation(line: 203, column: 34, scope: !6984)
!6984 = distinct !DILexicalBlock(scope: !6945, file: !2, line: 203, column: 6)
!6985 = !DILocation(line: 203, column: 40, scope: !6984)
!6986 = !DILocation(line: 203, column: 6, scope: !6984)
!6987 = !DILocation(line: 203, column: 6, scope: !6945)
!6988 = !DILocation(line: 204, column: 48, scope: !6989)
!6989 = distinct !DILexicalBlock(scope: !6984, file: !2, line: 203, column: 46)
!6990 = !DILocation(line: 204, column: 54, scope: !6989)
!6991 = !DILocation(line: 204, column: 9, scope: !6989)
!6992 = !DILocation(line: 204, column: 7, scope: !6989)
!6993 = !DILocation(line: 205, column: 7, scope: !6994)
!6994 = distinct !DILexicalBlock(scope: !6989, file: !2, line: 205, column: 7)
!6995 = !DILocation(line: 205, column: 7, scope: !6989)
!6996 = !DILocation(line: 206, column: 11, scope: !6994)
!6997 = !DILocation(line: 206, column: 4, scope: !6994)
!6998 = !DILocation(line: 208, column: 8, scope: !6999)
!6999 = distinct !DILexicalBlock(scope: !6989, file: !2, line: 208, column: 7)
!7000 = !DILocation(line: 208, column: 14, scope: !6999)
!7001 = !DILocation(line: 208, column: 21, scope: !6999)
!7002 = !DILocation(line: 208, column: 7, scope: !6989)
!7003 = !DILocation(line: 209, column: 8, scope: !6999)
!7004 = !DILocation(line: 209, column: 4, scope: !6999)
!7005 = !DILocation(line: 210, column: 23, scope: !6989)
!7006 = !DILocation(line: 210, column: 29, scope: !6989)
!7007 = !DILocation(line: 210, column: 3, scope: !6989)
!7008 = !DILocation(line: 212, column: 7, scope: !7009)
!7009 = distinct !DILexicalBlock(scope: !6989, file: !2, line: 212, column: 7)
!7010 = !DILocation(line: 212, column: 7, scope: !6989)
!7011 = !DILocation(line: 213, column: 11, scope: !7009)
!7012 = !DILocation(line: 213, column: 4, scope: !7009)
!7013 = !DILocation(line: 214, column: 2, scope: !6989)
!7014 = !DILocation(line: 216, column: 8, scope: !6945)
!7015 = !DILocation(line: 216, column: 14, scope: !6945)
!7016 = !DILocation(line: 216, column: 21, scope: !6945)
!7017 = !DILocation(line: 216, column: 39, scope: !6945)
!7018 = !DILocation(line: 216, column: 45, scope: !6945)
!7019 = !DILocation(line: 216, column: 50, scope: !6945)
!7020 = !DILocation(line: 216, column: 6, scope: !6945)
!7021 = !DILocation(line: 217, column: 6, scope: !7022)
!7022 = distinct !DILexicalBlock(scope: !6945, file: !2, line: 217, column: 6)
!7023 = !DILocation(line: 217, column: 6, scope: !6945)
!7024 = !DILocation(line: 218, column: 10, scope: !7022)
!7025 = !DILocation(line: 218, column: 3, scope: !7022)
!7026 = !DILocation(line: 220, column: 6, scope: !6955)
!7027 = !DILocation(line: 220, column: 6, scope: !6959)
!7028 = !DILocation(line: 220, column: 6, scope: !6958)
!7029 = !DILocation(line: 220, column: 6, scope: !7030)
!7030 = distinct !DILexicalBlock(scope: !6958, file: !2, line: 220, column: 6)
!7031 = !DILocation(line: 220, column: 6, scope: !7032)
!7032 = distinct !DILexicalBlock(scope: !6958, file: !2, line: 220, column: 6)
!7033 = !{i64 2155540361, i64 2155540390, i64 2155540436, i64 2155540494, i64 2155540548, i64 2155540602, i64 2155540657, i64 2155540688, i64 2155540996, i64 2155541002, i64 2155541049, i64 2155541072, i64 2155541098}
!7034 = !DILocation(line: 220, column: 6, scope: !7035)
!7035 = distinct !DILexicalBlock(scope: !6958, file: !2, line: 220, column: 6)
!7036 = !DILocation(line: 220, column: 6, scope: !6956)
!7037 = !DILocation(line: 220, column: 6, scope: !6945)
!7038 = !DILocation(line: 221, column: 3, scope: !6956)
!7039 = !DILocation(line: 223, column: 6, scope: !6961)
!7040 = !DILocation(line: 223, column: 6, scope: !6965)
!7041 = !DILocation(line: 223, column: 6, scope: !6964)
!7042 = !DILocation(line: 223, column: 6, scope: !7043)
!7043 = distinct !DILexicalBlock(scope: !6964, file: !2, line: 223, column: 6)
!7044 = !DILocation(line: 223, column: 6, scope: !7045)
!7045 = distinct !DILexicalBlock(scope: !6964, file: !2, line: 223, column: 6)
!7046 = !{i64 2155541876, i64 2155541905, i64 2155541951, i64 2155542009, i64 2155542063, i64 2155542117, i64 2155542172, i64 2155542203, i64 2155542511, i64 2155542517, i64 2155542564, i64 2155542587, i64 2155542613}
!7047 = !DILocation(line: 223, column: 6, scope: !7048)
!7048 = distinct !DILexicalBlock(scope: !6964, file: !2, line: 223, column: 6)
!7049 = !DILocation(line: 223, column: 6, scope: !6962)
!7050 = !DILocation(line: 223, column: 6, scope: !6945)
!7051 = !DILocation(line: 224, column: 3, scope: !6962)
!7052 = !DILocation(line: 226, column: 12, scope: !6945)
!7053 = !DILocation(line: 226, column: 10, scope: !6945)
!7054 = !DILocation(line: 227, column: 7, scope: !7055)
!7055 = distinct !DILexicalBlock(scope: !6945, file: !2, line: 227, column: 6)
!7056 = !DILocation(line: 227, column: 6, scope: !6945)
!7057 = !DILocation(line: 228, column: 3, scope: !7055)
!7058 = !DILocation(line: 230, column: 17, scope: !6945)
!7059 = !DILocation(line: 230, column: 22, scope: !6945)
!7060 = !DILocation(line: 230, column: 2, scope: !6945)
!7061 = !DILocation(line: 231, column: 7, scope: !7062)
!7062 = distinct !DILexicalBlock(scope: !6945, file: !2, line: 231, column: 6)
!7063 = !DILocation(line: 231, column: 12, scope: !7062)
!7064 = !DILocation(line: 231, column: 6, scope: !6945)
!7065 = !DILocation(line: 232, column: 3, scope: !7066)
!7066 = distinct !DILexicalBlock(scope: !7062, file: !2, line: 231, column: 20)
!7067 = !DILocation(line: 232, column: 8, scope: !7066)
!7068 = !DILocation(line: 232, column: 15, scope: !7066)
!7069 = !DILocation(line: 233, column: 18, scope: !7066)
!7070 = !DILocation(line: 233, column: 3, scope: !7066)
!7071 = !DILocation(line: 233, column: 8, scope: !7066)
!7072 = !DILocation(line: 233, column: 16, scope: !7066)
!7073 = !DILocation(line: 234, column: 21, scope: !7066)
!7074 = !DILocation(line: 234, column: 3, scope: !7066)
!7075 = !DILocation(line: 234, column: 8, scope: !7066)
!7076 = !DILocation(line: 234, column: 19, scope: !7066)
!7077 = !DILocation(line: 235, column: 2, scope: !7066)
!7078 = !DILocation(line: 236, column: 7, scope: !7079)
!7079 = distinct !DILexicalBlock(scope: !7062, file: !2, line: 235, column: 9)
!7080 = !DILocation(line: 238, column: 19, scope: !6945)
!7081 = !DILocation(line: 238, column: 24, scope: !6945)
!7082 = !DILocation(line: 238, column: 2, scope: !6945)
!7083 = !DILocation(line: 240, column: 6, scope: !7084)
!7084 = distinct !DILexicalBlock(scope: !6945, file: !2, line: 240, column: 6)
!7085 = !DILocation(line: 240, column: 6, scope: !6945)
!7086 = !DILocation(line: 241, column: 9, scope: !7087)
!7087 = distinct !DILexicalBlock(scope: !7084, file: !2, line: 240, column: 11)
!7088 = !DILocation(line: 241, column: 3, scope: !7087)
!7089 = !DILocation(line: 242, column: 10, scope: !7087)
!7090 = !DILocation(line: 242, column: 3, scope: !7087)
!7091 = !DILocation(line: 245, column: 8, scope: !6945)
!7092 = !DILocation(line: 245, column: 14, scope: !6945)
!7093 = !DILocation(line: 245, column: 21, scope: !6945)
!7094 = !DILocation(line: 245, column: 36, scope: !6945)
!7095 = !DILocation(line: 245, column: 42, scope: !6945)
!7096 = !DILocation(line: 245, column: 47, scope: !6945)
!7097 = !DILocation(line: 245, column: 6, scope: !6945)
!7098 = !DILocation(line: 246, column: 6, scope: !7099)
!7099 = distinct !DILexicalBlock(scope: !6945, file: !2, line: 246, column: 6)
!7100 = !DILocation(line: 246, column: 6, scope: !6945)
!7101 = !DILocation(line: 247, column: 3, scope: !7099)
!7102 = !DILocation(line: 249, column: 2, scope: !6945)
!7103 = !DILocation(line: 251, column: 1, scope: !6945)
!7104 = !DILocation(line: 252, column: 17, scope: !6945)
!7105 = !DILocation(line: 252, column: 22, scope: !6945)
!7106 = !DILocation(line: 252, column: 2, scope: !6945)
!7107 = !DILocation(line: 253, column: 19, scope: !6945)
!7108 = !DILocation(line: 253, column: 2, scope: !6945)
!7109 = !DILocation(line: 254, column: 19, scope: !6945)
!7110 = !DILocation(line: 254, column: 24, scope: !6945)
!7111 = !DILocation(line: 254, column: 2, scope: !6945)
!7112 = !DILocation(line: 255, column: 9, scope: !6945)
!7113 = !DILocation(line: 255, column: 2, scope: !6945)
!7114 = !DILocation(line: 256, column: 1, scope: !6945)
!7115 = distinct !DISubprogram(name: "crtc_crc_release", scope: !2, file: !2, line: 258, type: !3045, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !7116)
!7116 = !{!7117, !7118, !7119, !7120}
!7117 = !DILocalVariable(name: "inode", arg: 1, scope: !7115, file: !2, line: 258, type: !561)
!7118 = !DILocalVariable(name: "filep", arg: 2, scope: !7115, file: !2, line: 258, type: !1313)
!7119 = !DILocalVariable(name: "crtc", scope: !7115, file: !2, line: 260, type: !4480)
!7120 = !DILocalVariable(name: "crc", scope: !7115, file: !2, line: 261, type: !6262)
!7121 = !DILocation(line: 258, column: 43, scope: !7115)
!7122 = !DILocation(line: 258, column: 63, scope: !7115)
!7123 = !DILocation(line: 260, column: 2, scope: !7115)
!7124 = !DILocation(line: 260, column: 19, scope: !7115)
!7125 = !DILocation(line: 260, column: 26, scope: !7115)
!7126 = !DILocation(line: 260, column: 33, scope: !7115)
!7127 = !DILocation(line: 260, column: 42, scope: !7115)
!7128 = !DILocation(line: 261, column: 2, scope: !7115)
!7129 = !DILocation(line: 261, column: 23, scope: !7115)
!7130 = !DILocation(line: 261, column: 30, scope: !7115)
!7131 = !DILocation(line: 261, column: 36, scope: !7115)
!7132 = !DILocation(line: 264, column: 17, scope: !7115)
!7133 = !DILocation(line: 264, column: 22, scope: !7115)
!7134 = !DILocation(line: 264, column: 2, scope: !7115)
!7135 = !DILocation(line: 265, column: 2, scope: !7115)
!7136 = !DILocation(line: 265, column: 7, scope: !7115)
!7137 = !DILocation(line: 265, column: 14, scope: !7115)
!7138 = !DILocation(line: 266, column: 19, scope: !7115)
!7139 = !DILocation(line: 266, column: 24, scope: !7115)
!7140 = !DILocation(line: 266, column: 2, scope: !7115)
!7141 = !DILocation(line: 268, column: 2, scope: !7115)
!7142 = !DILocation(line: 268, column: 8, scope: !7115)
!7143 = !DILocation(line: 268, column: 15, scope: !7115)
!7144 = !DILocation(line: 268, column: 30, scope: !7115)
!7145 = !DILocation(line: 270, column: 17, scope: !7115)
!7146 = !DILocation(line: 270, column: 22, scope: !7115)
!7147 = !DILocation(line: 270, column: 2, scope: !7115)
!7148 = !DILocation(line: 271, column: 19, scope: !7115)
!7149 = !DILocation(line: 271, column: 2, scope: !7115)
!7150 = !DILocation(line: 272, column: 19, scope: !7115)
!7151 = !DILocation(line: 272, column: 24, scope: !7115)
!7152 = !DILocation(line: 272, column: 2, scope: !7115)
!7153 = !DILocation(line: 275, column: 1, scope: !7115)
!7154 = !DILocation(line: 274, column: 2, scope: !7115)
!7155 = distinct !DISubprogram(name: "crtc_crc_data_count", scope: !2, file: !2, line: 178, type: !7156, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !7158)
!7156 = !DISubroutineType(types: !7157)
!7157 = !{!120, !6262}
!7158 = !{!7159}
!7159 = !DILocalVariable(name: "crc", arg: 1, scope: !7155, file: !2, line: 178, type: !6262)
!7160 = !DILocation(line: 178, column: 53, scope: !7155)
!7161 = !DILocation(line: 180, column: 2, scope: !7155)
!7162 = !DILocation(line: 180, column: 2, scope: !7163)
!7163 = distinct !DILexicalBlock(scope: !7164, file: !2, line: 180, column: 2)
!7164 = distinct !DILexicalBlock(scope: !7155, file: !2, line: 180, column: 2)
!7165 = !DILocation(line: 180, column: 2, scope: !7164)
!7166 = !DILocation(line: 180, column: 2, scope: !7167)
!7167 = distinct !DILexicalBlock(scope: !7163, file: !2, line: 180, column: 2)
!7168 = !DILocation(line: 180, column: 2, scope: !7169)
!7169 = distinct !DILexicalBlock(scope: !7167, file: !2, line: 180, column: 2)
!7170 = !DILocation(line: 180, column: 2, scope: !7171)
!7171 = distinct !DILexicalBlock(scope: !7167, file: !2, line: 180, column: 2)
!7172 = !{i64 2155539033, i64 2155539062, i64 2155539108, i64 2155539166, i64 2155539220, i64 2155539274, i64 2155539329, i64 2155539360}
!7173 = !DILocation(line: 181, column: 9, scope: !7155)
!7174 = !DILocation(line: 181, column: 2, scope: !7155)
!7175 = !DISubprogram(name: "init_wait_entry", scope: !960, file: !960, line: 290, type: !7176, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7176 = !DISubroutineType(types: !7177)
!7177 = !{null, !6741, !120}
!7178 = !DISubprogram(name: "prepare_to_wait_event", scope: !960, file: !960, line: 1199, type: !7179, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7179 = !DISubroutineType(types: !7180)
!7180 = !{!517, !6402, !6741, !120}
!7181 = !DISubprogram(name: "schedule", scope: !995, file: !995, line: 303, type: !2033, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7182 = !DISubprogram(name: "finish_wait", scope: !960, file: !960, line: 1200, type: !7183, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7183 = !DISubroutineType(types: !7184)
!7184 = !{null, !6402, !6741}
!7185 = !DISubprogram(name: "sprintf", scope: !7186, file: !7186, line: 10, type: !7187, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7186 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!7187 = !DISubroutineType(types: !7188)
!7188 = !{!120, !481, !400, null}
!7189 = distinct !DISubprogram(name: "copy_to_user", scope: !7190, file: !7190, line: 188, type: !7191, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !7193)
!7190 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!7191 = !DISubroutineType(types: !7192)
!7192 = !{!531, !376, !1420, !531}
!7193 = !{!7194, !7195, !7196}
!7194 = !DILocalVariable(name: "to", arg: 1, scope: !7189, file: !7190, line: 188, type: !376)
!7195 = !DILocalVariable(name: "from", arg: 2, scope: !7189, file: !7190, line: 188, type: !1420)
!7196 = !DILocalVariable(name: "n", arg: 3, scope: !7189, file: !7190, line: 188, type: !531)
!7197 = !DILocation(line: 188, column: 27, scope: !7189)
!7198 = !DILocation(line: 188, column: 43, scope: !7189)
!7199 = !DILocation(line: 188, column: 63, scope: !7189)
!7200 = !DILocation(line: 190, column: 22, scope: !7201)
!7201 = distinct !DILexicalBlock(scope: !7189, file: !7190, line: 190, column: 6)
!7202 = !DILocation(line: 190, column: 28, scope: !7201)
!7203 = !DILocation(line: 190, column: 6, scope: !7201)
!7204 = !DILocation(line: 190, column: 6, scope: !7189)
!7205 = !DILocation(line: 191, column: 21, scope: !7201)
!7206 = !DILocation(line: 191, column: 25, scope: !7201)
!7207 = !DILocation(line: 191, column: 31, scope: !7201)
!7208 = !DILocation(line: 191, column: 7, scope: !7201)
!7209 = !DILocation(line: 191, column: 5, scope: !7201)
!7210 = !DILocation(line: 191, column: 3, scope: !7201)
!7211 = !DILocation(line: 192, column: 9, scope: !7189)
!7212 = !DILocation(line: 192, column: 2, scope: !7189)
!7213 = distinct !DISubprogram(name: "queued_spin_is_locked", scope: !7214, file: !7214, line: 51, type: !7215, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !7218)
!7214 = !DIFile(filename: "./include/asm-generic/qspinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9ee2071dbdb30625b016b6622681cc28")
!7215 = !DISubroutineType(types: !7216)
!7216 = !{!120, !7217}
!7217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!7218 = !{!7219}
!7219 = !DILocalVariable(name: "lock", arg: 1, scope: !7213, file: !7214, line: 51, type: !7217)
!7220 = !DILocation(line: 51, column: 68, scope: !7213)
!7221 = !DILocation(line: 57, column: 22, scope: !7213)
!7222 = !DILocation(line: 57, column: 28, scope: !7213)
!7223 = !DILocation(line: 57, column: 9, scope: !7213)
!7224 = !DILocation(line: 57, column: 2, scope: !7213)
!7225 = distinct !DISubprogram(name: "atomic_read", scope: !7226, file: !7226, line: 30, type: !7227, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !7231)
!7226 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!7227 = !DISubroutineType(types: !7228)
!7228 = !{!120, !7229}
!7229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7230, size: 64)
!7230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !431)
!7231 = !{!7232}
!7232 = !DILocalVariable(name: "v", arg: 1, scope: !7225, file: !7226, line: 30, type: !7229)
!7233 = !DILocation(line: 30, column: 29, scope: !7225)
!7234 = !DILocation(line: 32, column: 25, scope: !7225)
!7235 = !DILocation(line: 32, column: 2, scope: !7225)
!7236 = !DILocation(line: 33, column: 25, scope: !7225)
!7237 = !DILocation(line: 33, column: 9, scope: !7225)
!7238 = !DILocation(line: 33, column: 2, scope: !7225)
!7239 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !7240, file: !7240, line: 66, type: !7241, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !7246)
!7240 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!7241 = !DISubroutineType(types: !7242)
!7242 = !{null, !7243, !528}
!7243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7244, size: 64)
!7244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7245)
!7245 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!7246 = !{!7247, !7248}
!7247 = !DILocalVariable(name: "v", arg: 1, scope: !7239, file: !7240, line: 66, type: !7243)
!7248 = !DILocalVariable(name: "size", arg: 2, scope: !7239, file: !7240, line: 66, type: !528)
!7249 = !DILocation(line: 66, column: 73, scope: !7239)
!7250 = !DILocation(line: 66, column: 83, scope: !7239)
!7251 = !DILocation(line: 68, column: 19, scope: !7239)
!7252 = !DILocation(line: 68, column: 22, scope: !7239)
!7253 = !DILocation(line: 68, column: 2, scope: !7239)
!7254 = !DILocation(line: 69, column: 2, scope: !7239)
!7255 = !DILocation(line: 70, column: 1, scope: !7239)
!7256 = distinct !DISubprogram(name: "raw_atomic_read", scope: !7257, file: !7257, line: 442, type: !7227, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !7258)
!7257 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!7258 = !{!7259}
!7259 = !DILocalVariable(name: "v", arg: 1, scope: !7256, file: !7257, line: 442, type: !7229)
!7260 = !DILocation(line: 442, column: 33, scope: !7256)
!7261 = !DILocation(line: 444, column: 26, scope: !7256)
!7262 = !DILocation(line: 444, column: 9, scope: !7256)
!7263 = !DILocation(line: 444, column: 2, scope: !7256)
!7264 = distinct !DISubprogram(name: "kasan_check_read", scope: !7265, file: !7265, line: 40, type: !7266, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !7268)
!7265 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!7266 = !DISubroutineType(types: !7267)
!7267 = !{!1718, !7243, !18}
!7268 = !{!7269, !7270}
!7269 = !DILocalVariable(name: "p", arg: 1, scope: !7264, file: !7265, line: 40, type: !7243)
!7270 = !DILocalVariable(name: "size", arg: 2, scope: !7264, file: !7265, line: 40, type: !18)
!7271 = !DILocation(line: 40, column: 58, scope: !7264)
!7272 = !DILocation(line: 40, column: 74, scope: !7264)
!7273 = !DILocation(line: 42, column: 2, scope: !7264)
!7274 = distinct !DISubprogram(name: "kcsan_check_access", scope: !7275, file: !7275, line: 229, type: !7276, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !7278)
!7275 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!7276 = !DISubroutineType(types: !7277)
!7277 = !{null, !7243, !528, !120}
!7278 = !{!7279, !7280, !7281}
!7279 = !DILocalVariable(name: "ptr", arg: 1, scope: !7274, file: !7275, line: 229, type: !7243)
!7280 = !DILocalVariable(name: "size", arg: 2, scope: !7274, file: !7275, line: 229, type: !528)
!7281 = !DILocalVariable(name: "type", arg: 3, scope: !7274, file: !7275, line: 230, type: !120)
!7282 = !DILocation(line: 229, column: 60, scope: !7274)
!7283 = !DILocation(line: 229, column: 72, scope: !7274)
!7284 = !DILocation(line: 230, column: 15, scope: !7274)
!7285 = !DILocation(line: 230, column: 23, scope: !7274)
!7286 = distinct !DISubprogram(name: "arch_atomic_read", scope: !7287, file: !7287, line: 17, type: !7227, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !7288)
!7287 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!7288 = !{!7289}
!7289 = !DILocalVariable(name: "v", arg: 1, scope: !7286, file: !7287, line: 17, type: !7229)
!7290 = !DILocation(line: 17, column: 61, scope: !7286)
!7291 = !DILocation(line: 23, column: 9, scope: !7286)
!7292 = !DILocation(line: 23, column: 2, scope: !7286)
!7293 = distinct !DISubprogram(name: "check_copy_size", scope: !4459, file: !4459, line: 237, type: !7294, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !7296)
!7294 = !DISubroutineType(types: !7295)
!7295 = !{!1718, !1420, !528, !1718}
!7296 = !{!7297, !7298, !7299, !7300, !7301, !7304}
!7297 = !DILocalVariable(name: "addr", arg: 1, scope: !7293, file: !4459, line: 237, type: !1420)
!7298 = !DILocalVariable(name: "bytes", arg: 2, scope: !7293, file: !4459, line: 237, type: !528)
!7299 = !DILocalVariable(name: "is_source", arg: 3, scope: !7293, file: !4459, line: 237, type: !1718)
!7300 = !DILocalVariable(name: "sz", scope: !7293, file: !4459, line: 239, type: !120)
!7301 = !DILocalVariable(name: "__ret_warn_on", scope: !7302, file: !4459, line: 249, type: !120)
!7302 = distinct !DILexicalBlock(scope: !7303, file: !4459, line: 249, column: 6)
!7303 = distinct !DILexicalBlock(scope: !7293, file: !4459, line: 249, column: 6)
!7304 = !DILocalVariable(name: "__flags", scope: !7305, file: !4459, line: 249, type: !120)
!7305 = distinct !DILexicalBlock(scope: !7306, file: !4459, line: 249, column: 6)
!7306 = distinct !DILexicalBlock(scope: !7302, file: !4459, line: 249, column: 6)
!7307 = !DILocation(line: 237, column: 29, scope: !7293)
!7308 = !DILocation(line: 237, column: 42, scope: !7293)
!7309 = !DILocation(line: 237, column: 54, scope: !7293)
!7310 = !DILocation(line: 239, column: 2, scope: !7293)
!7311 = !DILocation(line: 239, column: 6, scope: !7293)
!7312 = !DILocation(line: 239, column: 33, scope: !7293)
!7313 = !DILocation(line: 239, column: 11, scope: !7293)
!7314 = !DILocation(line: 240, column: 6, scope: !7315)
!7315 = distinct !DILexicalBlock(scope: !7293, file: !4459, line: 240, column: 6)
!7316 = !DILocation(line: 0, scope: !7315)
!7317 = !DILocation(line: 240, column: 6, scope: !7293)
!7318 = !DILocation(line: 241, column: 29, scope: !7319)
!7319 = distinct !DILexicalBlock(scope: !7320, file: !4459, line: 241, column: 7)
!7320 = distinct !DILexicalBlock(scope: !7315, file: !4459, line: 240, column: 39)
!7321 = !DILocation(line: 241, column: 8, scope: !7319)
!7322 = !DILocation(line: 241, column: 7, scope: !7320)
!7323 = !DILocation(line: 242, column: 18, scope: !7319)
!7324 = !DILocation(line: 242, column: 22, scope: !7319)
!7325 = !DILocation(line: 242, column: 4, scope: !7319)
!7326 = !DILocation(line: 243, column: 12, scope: !7327)
!7327 = distinct !DILexicalBlock(scope: !7319, file: !4459, line: 243, column: 12)
!7328 = !DILocation(line: 243, column: 12, scope: !7319)
!7329 = !DILocation(line: 244, column: 4, scope: !7327)
!7330 = !{i32 985309}
!7331 = !DILocation(line: 246, column: 4, scope: !7327)
!7332 = !{i32 985338}
!7333 = !DILocation(line: 247, column: 3, scope: !7320)
!7334 = !DILocation(line: 249, column: 6, scope: !7302)
!7335 = !DILocation(line: 249, column: 6, scope: !7306)
!7336 = !DILocation(line: 249, column: 6, scope: !7305)
!7337 = !DILocation(line: 249, column: 6, scope: !7338)
!7338 = distinct !DILexicalBlock(scope: !7305, file: !4459, line: 249, column: 6)
!7339 = !DILocation(line: 249, column: 6, scope: !7340)
!7340 = distinct !DILexicalBlock(scope: !7305, file: !4459, line: 249, column: 6)
!7341 = !{i64 2149637580, i64 2149637609, i64 2149637655, i64 2149637713, i64 2149637767, i64 2149637821, i64 2149637876, i64 2149637907, i64 2149638215, i64 2149638221, i64 2149638268, i64 2149638291, i64 2149638317}
!7342 = !DILocation(line: 249, column: 6, scope: !7343)
!7343 = distinct !DILexicalBlock(scope: !7305, file: !4459, line: 249, column: 6)
!7344 = !DILocation(line: 249, column: 6, scope: !7303)
!7345 = !DILocation(line: 249, column: 6, scope: !7293)
!7346 = !DILocation(line: 250, column: 3, scope: !7303)
!7347 = !DILocation(line: 251, column: 20, scope: !7293)
!7348 = !DILocation(line: 251, column: 26, scope: !7293)
!7349 = !DILocation(line: 251, column: 33, scope: !7293)
!7350 = !DILocation(line: 251, column: 2, scope: !7293)
!7351 = !DILocation(line: 252, column: 2, scope: !7293)
!7352 = !DILocation(line: 253, column: 1, scope: !7293)
!7353 = !DISubprogram(name: "_copy_to_user", scope: !7190, file: !7190, line: 176, type: !7191, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7354 = distinct !DISubprogram(name: "copy_overflow", scope: !4459, file: !4459, line: 230, type: !7355, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !7357)
!7355 = !DISubroutineType(types: !7356)
!7356 = !{null, !120, !531}
!7357 = !{!7358, !7359}
!7358 = !DILocalVariable(name: "size", arg: 1, scope: !7354, file: !4459, line: 230, type: !120)
!7359 = !DILocalVariable(name: "count", arg: 2, scope: !7354, file: !4459, line: 230, type: !531)
!7360 = !DILocation(line: 230, column: 38, scope: !7354)
!7361 = !DILocation(line: 230, column: 58, scope: !7354)
!7362 = !DILocation(line: 233, column: 19, scope: !7363)
!7363 = distinct !DILexicalBlock(scope: !7354, file: !4459, line: 232, column: 6)
!7364 = !DILocation(line: 233, column: 25, scope: !7363)
!7365 = !DILocation(line: 233, column: 3, scope: !7363)
!7366 = !DILocation(line: 234, column: 1, scope: !7354)
!7367 = !DISubprogram(name: "__bad_copy_from", scope: !4459, file: !4459, line: 224, type: !2033, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7368 = !DISubprogram(name: "__bad_copy_to", scope: !4459, file: !4459, line: 226, type: !2033, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7369 = distinct !DISubprogram(name: "check_object_size", scope: !4459, file: !4459, line: 218, type: !7370, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !7372)
!7370 = !DISubroutineType(types: !7371)
!7371 = !{null, !1420, !531, !1718}
!7372 = !{!7373, !7374, !7375}
!7373 = !DILocalVariable(name: "ptr", arg: 1, scope: !7369, file: !4459, line: 218, type: !1420)
!7374 = !DILocalVariable(name: "n", arg: 2, scope: !7369, file: !4459, line: 218, type: !531)
!7375 = !DILocalVariable(name: "to_user", arg: 3, scope: !7369, file: !4459, line: 219, type: !1718)
!7376 = !DILocation(line: 218, column: 50, scope: !7369)
!7377 = !DILocation(line: 218, column: 69, scope: !7369)
!7378 = !DILocation(line: 219, column: 15, scope: !7369)
!7379 = !DILocation(line: 220, column: 3, scope: !7369)
!7380 = !DISubprogram(name: "__copy_overflow", scope: !4459, file: !4459, line: 228, type: !7355, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7381 = distinct !DISubprogram(name: "poll_wait", scope: !3024, file: !3024, line: 42, type: !7382, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !7384)
!7382 = !DISubroutineType(types: !7383)
!7383 = !{null, !1313, !3031, !6901}
!7384 = !{!7385, !7386, !7387}
!7385 = !DILocalVariable(name: "filp", arg: 1, scope: !7381, file: !3024, line: 42, type: !1313)
!7386 = !DILocalVariable(name: "wait_address", arg: 2, scope: !7381, file: !3024, line: 42, type: !3031)
!7387 = !DILocalVariable(name: "p", arg: 3, scope: !7381, file: !3024, line: 42, type: !6901)
!7388 = !DILocation(line: 42, column: 44, scope: !7381)
!7389 = !DILocation(line: 42, column: 70, scope: !7381)
!7390 = !DILocation(line: 42, column: 96, scope: !7381)
!7391 = !DILocation(line: 44, column: 6, scope: !7392)
!7392 = distinct !DILexicalBlock(scope: !7381, file: !3024, line: 44, column: 6)
!7393 = !DILocation(line: 44, column: 8, scope: !7392)
!7394 = !DILocation(line: 44, column: 11, scope: !7392)
!7395 = !DILocation(line: 44, column: 14, scope: !7392)
!7396 = !DILocation(line: 44, column: 21, scope: !7392)
!7397 = !DILocation(line: 44, column: 24, scope: !7392)
!7398 = !DILocation(line: 44, column: 6, scope: !7381)
!7399 = !DILocation(line: 45, column: 3, scope: !7400)
!7400 = distinct !DILexicalBlock(scope: !7392, file: !3024, line: 44, column: 38)
!7401 = !DILocation(line: 45, column: 6, scope: !7400)
!7402 = !DILocation(line: 45, column: 13, scope: !7400)
!7403 = !DILocation(line: 45, column: 19, scope: !7400)
!7404 = !DILocation(line: 45, column: 33, scope: !7400)
!7405 = !DILocation(line: 52, column: 3, scope: !7400)
!7406 = !DILocation(line: 52, column: 3, scope: !7407)
!7407 = distinct !DILexicalBlock(scope: !7400, file: !3024, line: 52, column: 3)
!7408 = !DILocation(line: 52, column: 3, scope: !7409)
!7409 = distinct !DILexicalBlock(scope: !7407, file: !3024, line: 52, column: 3)
!7410 = !{i64 2153416173}
!7411 = !DILocation(line: 53, column: 2, scope: !7400)
!7412 = !DILocation(line: 54, column: 1, scope: !7381)
!7413 = distinct !DISubprogram(name: "drm_drv_uses_atomic_modeset", scope: !348, file: !348, line: 580, type: !7414, scopeLine: 581, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !7416)
!7414 = !DISubroutineType(types: !7415)
!7415 = !{!1718, !4485}
!7416 = !{!7417}
!7417 = !DILocalVariable(name: "dev", arg: 1, scope: !7413, file: !348, line: 580, type: !4485)
!7418 = !DILocation(line: 580, column: 67, scope: !7413)
!7419 = !DILocation(line: 582, column: 32, scope: !7413)
!7420 = !DILocation(line: 582, column: 9, scope: !7413)
!7421 = !DILocation(line: 582, column: 52, scope: !7413)
!7422 = !DILocation(line: 583, column: 4, scope: !7413)
!7423 = !DILocation(line: 583, column: 9, scope: !7413)
!7424 = !DILocation(line: 583, column: 21, scope: !7413)
!7425 = !DILocation(line: 583, column: 27, scope: !7413)
!7426 = !DILocation(line: 583, column: 30, scope: !7413)
!7427 = !DILocation(line: 583, column: 35, scope: !7413)
!7428 = !DILocation(line: 583, column: 47, scope: !7413)
!7429 = !DILocation(line: 583, column: 54, scope: !7413)
!7430 = !DILocation(line: 583, column: 68, scope: !7413)
!7431 = !DILocation(line: 0, scope: !7413)
!7432 = !DILocation(line: 582, column: 2, scope: !7413)
!7433 = !DISubprogram(name: "drm_modeset_lock_single_interruptible", scope: !5280, file: !5280, line: 137, type: !7434, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7434 = !DISubroutineType(types: !7435)
!7435 = !{!120, !5303}
!7436 = !DISubprogram(name: "drm_modeset_unlock", scope: !5280, file: !5280, line: 138, type: !7437, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7437 = !DISubroutineType(types: !7438)
!7438 = !{null, !5303}
!7439 = distinct !DISubprogram(name: "kcalloc", scope: !366, file: !366, line: 666, type: !7440, scopeLine: 667, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !7442)
!7440 = !DISubroutineType(types: !7441)
!7441 = !{!376, !528, !528, !986}
!7442 = !{!7443, !7444, !7445}
!7443 = !DILocalVariable(name: "n", arg: 1, scope: !7439, file: !366, line: 666, type: !528)
!7444 = !DILocalVariable(name: "size", arg: 2, scope: !7439, file: !366, line: 666, type: !528)
!7445 = !DILocalVariable(name: "flags", arg: 3, scope: !7439, file: !366, line: 666, type: !986)
!7446 = !DILocation(line: 666, column: 55, scope: !7439)
!7447 = !DILocation(line: 666, column: 65, scope: !7439)
!7448 = !DILocation(line: 666, column: 77, scope: !7439)
!7449 = !DILocation(line: 668, column: 23, scope: !7439)
!7450 = !DILocation(line: 668, column: 26, scope: !7439)
!7451 = !DILocation(line: 668, column: 32, scope: !7439)
!7452 = !DILocation(line: 668, column: 38, scope: !7439)
!7453 = !DILocation(line: 668, column: 9, scope: !7439)
!7454 = !DILocation(line: 668, column: 2, scope: !7439)
!7455 = distinct !DISubprogram(name: "crtc_crc_cleanup", scope: !2, file: !2, line: 184, type: !7456, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !7458)
!7456 = !DISubroutineType(types: !7457)
!7457 = !{null, !6262}
!7458 = !{!7459}
!7459 = !DILocalVariable(name: "crc", arg: 1, scope: !7455, file: !2, line: 184, type: !6262)
!7460 = !DILocation(line: 184, column: 51, scope: !7455)
!7461 = !DILocation(line: 186, column: 8, scope: !7455)
!7462 = !DILocation(line: 186, column: 13, scope: !7455)
!7463 = !DILocation(line: 186, column: 2, scope: !7455)
!7464 = !DILocation(line: 187, column: 2, scope: !7455)
!7465 = !DILocation(line: 187, column: 7, scope: !7455)
!7466 = !DILocation(line: 187, column: 16, scope: !7455)
!7467 = !DILocation(line: 188, column: 2, scope: !7455)
!7468 = !DILocation(line: 188, column: 7, scope: !7455)
!7469 = !DILocation(line: 188, column: 15, scope: !7455)
!7470 = !DILocation(line: 189, column: 2, scope: !7455)
!7471 = !DILocation(line: 189, column: 7, scope: !7455)
!7472 = !DILocation(line: 189, column: 12, scope: !7455)
!7473 = !DILocation(line: 190, column: 2, scope: !7455)
!7474 = !DILocation(line: 190, column: 7, scope: !7455)
!7475 = !DILocation(line: 190, column: 12, scope: !7455)
!7476 = !DILocation(line: 191, column: 2, scope: !7455)
!7477 = !DILocation(line: 191, column: 7, scope: !7455)
!7478 = !DILocation(line: 191, column: 18, scope: !7455)
!7479 = !DILocation(line: 192, column: 2, scope: !7455)
!7480 = !DILocation(line: 192, column: 7, scope: !7455)
!7481 = !DILocation(line: 192, column: 14, scope: !7455)
!7482 = !DILocation(line: 193, column: 1, scope: !7455)
!7483 = distinct !DISubprogram(name: "drm_core_check_feature", scope: !348, file: !348, line: 566, type: !7484, scopeLine: 568, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !7488)
!7484 = !DISubroutineType(types: !7485)
!7485 = !{!1718, !7486, !347}
!7486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7487, size: 64)
!7487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4486)
!7488 = !{!7489, !7490}
!7489 = !DILocalVariable(name: "dev", arg: 1, scope: !7483, file: !348, line: 566, type: !7486)
!7490 = !DILocalVariable(name: "feature", arg: 2, scope: !7483, file: !348, line: 567, type: !347)
!7491 = !DILocation(line: 566, column: 68, scope: !7483)
!7492 = !DILocation(line: 567, column: 32, scope: !7483)
!7493 = !DILocation(line: 569, column: 37, scope: !7483)
!7494 = !DILocation(line: 569, column: 42, scope: !7483)
!7495 = !DILocation(line: 569, column: 9, scope: !7483)
!7496 = !DILocation(line: 569, column: 2, scope: !7483)
!7497 = distinct !DISubprogram(name: "drm_core_check_all_features", scope: !348, file: !348, line: 548, type: !7498, scopeLine: 550, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !7500)
!7498 = !DISubroutineType(types: !7499)
!7499 = !{!1718, !7486, !630}
!7500 = !{!7501, !7502, !7503}
!7501 = !DILocalVariable(name: "dev", arg: 1, scope: !7497, file: !348, line: 548, type: !7486)
!7502 = !DILocalVariable(name: "features", arg: 2, scope: !7497, file: !348, line: 549, type: !630)
!7503 = !DILocalVariable(name: "supported", scope: !7497, file: !348, line: 551, type: !630)
!7504 = !DILocation(line: 548, column: 73, scope: !7497)
!7505 = !DILocation(line: 549, column: 17, scope: !7497)
!7506 = !DILocation(line: 551, column: 2, scope: !7497)
!7507 = !DILocation(line: 551, column: 6, scope: !7497)
!7508 = !DILocation(line: 551, column: 18, scope: !7497)
!7509 = !DILocation(line: 551, column: 23, scope: !7497)
!7510 = !DILocation(line: 551, column: 31, scope: !7497)
!7511 = !DILocation(line: 551, column: 49, scope: !7497)
!7512 = !DILocation(line: 551, column: 54, scope: !7497)
!7513 = !DILocation(line: 551, column: 47, scope: !7497)
!7514 = !DILocation(line: 553, column: 9, scope: !7497)
!7515 = !DILocation(line: 553, column: 18, scope: !7497)
!7516 = !DILocation(line: 553, column: 22, scope: !7497)
!7517 = !DILocation(line: 553, column: 34, scope: !7497)
!7518 = !DILocation(line: 553, column: 32, scope: !7497)
!7519 = !DILocation(line: 553, column: 47, scope: !7497)
!7520 = !DILocation(line: 553, column: 44, scope: !7497)
!7521 = !DILocation(line: 0, scope: !7497)
!7522 = !DILocation(line: 554, column: 1, scope: !7497)
!7523 = !DILocation(line: 553, column: 2, scope: !7497)
!7524 = distinct !DISubprogram(name: "kmalloc_array", scope: !366, file: !366, line: 629, type: !7440, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !7525)
!7525 = !{!7526, !7527, !7528, !7529}
!7526 = !DILocalVariable(name: "n", arg: 1, scope: !7524, file: !366, line: 629, type: !528)
!7527 = !DILocalVariable(name: "size", arg: 2, scope: !7524, file: !366, line: 629, type: !528)
!7528 = !DILocalVariable(name: "flags", arg: 3, scope: !7524, file: !366, line: 629, type: !986)
!7529 = !DILocalVariable(name: "bytes", scope: !7524, file: !366, line: 631, type: !528)
!7530 = !DILocation(line: 629, column: 61, scope: !7524)
!7531 = !DILocation(line: 629, column: 71, scope: !7524)
!7532 = !DILocation(line: 629, column: 83, scope: !7524)
!7533 = !DILocation(line: 631, column: 2, scope: !7524)
!7534 = !DILocation(line: 631, column: 9, scope: !7524)
!7535 = !DILocation(line: 633, column: 6, scope: !7536)
!7536 = distinct !DILexicalBlock(scope: !7524, file: !366, line: 633, column: 6)
!7537 = !DILocation(line: 633, column: 6, scope: !7524)
!7538 = !DILocation(line: 634, column: 3, scope: !7536)
!7539 = !DILocation(line: 635, column: 27, scope: !7540)
!7540 = distinct !DILexicalBlock(scope: !7524, file: !366, line: 635, column: 6)
!7541 = !DILocation(line: 635, column: 6, scope: !7540)
!7542 = !DILocation(line: 635, column: 30, scope: !7540)
!7543 = !DILocation(line: 635, column: 54, scope: !7540)
!7544 = !DILocation(line: 635, column: 33, scope: !7540)
!7545 = !DILocation(line: 635, column: 6, scope: !7524)
!7546 = !DILocation(line: 636, column: 18, scope: !7540)
!7547 = !DILocation(line: 636, column: 25, scope: !7540)
!7548 = !DILocation(line: 636, column: 10, scope: !7540)
!7549 = !DILocation(line: 636, column: 3, scope: !7540)
!7550 = !DILocation(line: 637, column: 19, scope: !7524)
!7551 = !DILocation(line: 637, column: 26, scope: !7524)
!7552 = !DILocation(line: 637, column: 9, scope: !7524)
!7553 = !DILocation(line: 637, column: 2, scope: !7524)
!7554 = !DILocation(line: 638, column: 1, scope: !7524)
!7555 = distinct !DISubprogram(name: "__must_check_overflow", scope: !7556, file: !7556, line: 51, type: !7557, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !7559)
!7556 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!7557 = !DISubroutineType(types: !7558)
!7558 = !{!1718, !1718}
!7559 = !{!7560}
!7560 = !DILocalVariable(name: "overflow", arg: 1, scope: !7555, file: !7556, line: 51, type: !1718)
!7561 = !DILocation(line: 51, column: 60, scope: !7555)
!7562 = !DILocation(line: 53, column: 9, scope: !7555)
!7563 = !DILocation(line: 53, column: 2, scope: !7555)
!7564 = distinct !DISubprogram(name: "kmalloc", scope: !366, file: !366, line: 591, type: !7565, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !7567)
!7565 = !DISubroutineType(types: !7566)
!7566 = !{!376, !528, !986}
!7567 = !{!7568, !7569, !7570}
!7568 = !DILocalVariable(name: "size", arg: 1, scope: !7564, file: !366, line: 591, type: !528)
!7569 = !DILocalVariable(name: "flags", arg: 2, scope: !7564, file: !366, line: 591, type: !986)
!7570 = !DILocalVariable(name: "index", scope: !7571, file: !366, line: 594, type: !18)
!7571 = distinct !DILexicalBlock(scope: !7572, file: !366, line: 593, column: 42)
!7572 = distinct !DILexicalBlock(scope: !7564, file: !366, line: 593, column: 6)
!7573 = !DILocation(line: 591, column: 61, scope: !7564)
!7574 = !DILocation(line: 591, column: 73, scope: !7564)
!7575 = !DILocation(line: 593, column: 27, scope: !7572)
!7576 = !DILocation(line: 593, column: 6, scope: !7572)
!7577 = !DILocation(line: 593, column: 33, scope: !7572)
!7578 = !DILocation(line: 593, column: 36, scope: !7572)
!7579 = !DILocation(line: 593, column: 6, scope: !7564)
!7580 = !DILocation(line: 594, column: 3, scope: !7571)
!7581 = !DILocation(line: 594, column: 16, scope: !7571)
!7582 = !DILocation(line: 596, column: 7, scope: !7583)
!7583 = distinct !DILexicalBlock(scope: !7571, file: !366, line: 596, column: 7)
!7584 = !DILocation(line: 596, column: 12, scope: !7583)
!7585 = !DILocation(line: 596, column: 7, scope: !7571)
!7586 = !DILocation(line: 597, column: 25, scope: !7583)
!7587 = !DILocation(line: 597, column: 31, scope: !7583)
!7588 = !DILocation(line: 597, column: 11, scope: !7583)
!7589 = !DILocation(line: 597, column: 4, scope: !7583)
!7590 = !DILocation(line: 599, column: 11, scope: !7571)
!7591 = !DILocation(line: 599, column: 9, scope: !7571)
!7592 = !DILocation(line: 601, column: 33, scope: !7571)
!7593 = !DILocation(line: 601, column: 40, scope: !7571)
!7594 = !DILocation(line: 601, column: 20, scope: !7571)
!7595 = !DILocation(line: 601, column: 5, scope: !7571)
!7596 = !DILocation(line: 601, column: 51, scope: !7571)
!7597 = !DILocation(line: 602, column: 5, scope: !7571)
!7598 = !DILocation(line: 602, column: 12, scope: !7571)
!7599 = !DILocation(line: 600, column: 10, scope: !7571)
!7600 = !DILocation(line: 600, column: 3, scope: !7571)
!7601 = !DILocation(line: 603, column: 2, scope: !7572)
!7602 = !DILocation(line: 604, column: 19, scope: !7564)
!7603 = !DILocation(line: 604, column: 25, scope: !7564)
!7604 = !DILocation(line: 604, column: 9, scope: !7564)
!7605 = !DILocation(line: 604, column: 2, scope: !7564)
!7606 = !DILocation(line: 605, column: 1, scope: !7564)
!7607 = !DISubprogram(name: "__kmalloc", scope: !366, file: !366, line: 488, type: !7565, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7608 = !DISubprogram(name: "kmalloc_large", scope: !366, file: !366, line: 531, type: !7565, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7609 = distinct !DISubprogram(name: "__kmalloc_index", scope: !366, file: !366, line: 444, type: !7610, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !7612)
!7610 = !DISubroutineType(types: !7611)
!7611 = !{!18, !528, !1718}
!7612 = !{!7613, !7614}
!7613 = !DILocalVariable(name: "size", arg: 1, scope: !7609, file: !366, line: 444, type: !528)
!7614 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !7609, file: !366, line: 445, type: !1718)
!7615 = !DILocation(line: 444, column: 60, scope: !7609)
!7616 = !DILocation(line: 445, column: 16, scope: !7609)
!7617 = !DILocation(line: 447, column: 7, scope: !7618)
!7618 = distinct !DILexicalBlock(scope: !7609, file: !366, line: 447, column: 6)
!7619 = !DILocation(line: 447, column: 6, scope: !7609)
!7620 = !DILocation(line: 448, column: 3, scope: !7618)
!7621 = !DILocation(line: 450, column: 6, scope: !7622)
!7622 = distinct !DILexicalBlock(scope: !7609, file: !366, line: 450, column: 6)
!7623 = !DILocation(line: 450, column: 11, scope: !7622)
!7624 = !DILocation(line: 450, column: 6, scope: !7609)
!7625 = !DILocation(line: 451, column: 3, scope: !7622)
!7626 = !DILocation(line: 453, column: 32, scope: !7627)
!7627 = distinct !DILexicalBlock(scope: !7609, file: !366, line: 453, column: 6)
!7628 = !DILocation(line: 453, column: 37, scope: !7627)
!7629 = !DILocation(line: 453, column: 42, scope: !7627)
!7630 = !DILocation(line: 453, column: 45, scope: !7627)
!7631 = !DILocation(line: 453, column: 50, scope: !7627)
!7632 = !DILocation(line: 453, column: 6, scope: !7609)
!7633 = !DILocation(line: 454, column: 3, scope: !7627)
!7634 = !DILocation(line: 455, column: 32, scope: !7635)
!7635 = distinct !DILexicalBlock(scope: !7609, file: !366, line: 455, column: 6)
!7636 = !DILocation(line: 455, column: 37, scope: !7635)
!7637 = !DILocation(line: 455, column: 43, scope: !7635)
!7638 = !DILocation(line: 455, column: 46, scope: !7635)
!7639 = !DILocation(line: 455, column: 51, scope: !7635)
!7640 = !DILocation(line: 455, column: 6, scope: !7609)
!7641 = !DILocation(line: 456, column: 3, scope: !7635)
!7642 = !DILocation(line: 457, column: 6, scope: !7643)
!7643 = distinct !DILexicalBlock(scope: !7609, file: !366, line: 457, column: 6)
!7644 = !DILocation(line: 457, column: 11, scope: !7643)
!7645 = !DILocation(line: 457, column: 6, scope: !7609)
!7646 = !DILocation(line: 457, column: 26, scope: !7643)
!7647 = !DILocation(line: 458, column: 6, scope: !7648)
!7648 = distinct !DILexicalBlock(scope: !7609, file: !366, line: 458, column: 6)
!7649 = !DILocation(line: 458, column: 11, scope: !7648)
!7650 = !DILocation(line: 458, column: 6, scope: !7609)
!7651 = !DILocation(line: 458, column: 26, scope: !7648)
!7652 = !DILocation(line: 459, column: 6, scope: !7653)
!7653 = distinct !DILexicalBlock(scope: !7609, file: !366, line: 459, column: 6)
!7654 = !DILocation(line: 459, column: 11, scope: !7653)
!7655 = !DILocation(line: 459, column: 6, scope: !7609)
!7656 = !DILocation(line: 459, column: 26, scope: !7653)
!7657 = !DILocation(line: 460, column: 6, scope: !7658)
!7658 = distinct !DILexicalBlock(scope: !7609, file: !366, line: 460, column: 6)
!7659 = !DILocation(line: 460, column: 11, scope: !7658)
!7660 = !DILocation(line: 460, column: 6, scope: !7609)
!7661 = !DILocation(line: 460, column: 26, scope: !7658)
!7662 = !DILocation(line: 461, column: 6, scope: !7663)
!7663 = distinct !DILexicalBlock(scope: !7609, file: !366, line: 461, column: 6)
!7664 = !DILocation(line: 461, column: 11, scope: !7663)
!7665 = !DILocation(line: 461, column: 6, scope: !7609)
!7666 = !DILocation(line: 461, column: 26, scope: !7663)
!7667 = !DILocation(line: 462, column: 6, scope: !7668)
!7668 = distinct !DILexicalBlock(scope: !7609, file: !366, line: 462, column: 6)
!7669 = !DILocation(line: 462, column: 11, scope: !7668)
!7670 = !DILocation(line: 462, column: 6, scope: !7609)
!7671 = !DILocation(line: 462, column: 26, scope: !7668)
!7672 = !DILocation(line: 463, column: 6, scope: !7673)
!7673 = distinct !DILexicalBlock(scope: !7609, file: !366, line: 463, column: 6)
!7674 = !DILocation(line: 463, column: 11, scope: !7673)
!7675 = !DILocation(line: 463, column: 6, scope: !7609)
!7676 = !DILocation(line: 463, column: 26, scope: !7673)
!7677 = !DILocation(line: 464, column: 6, scope: !7678)
!7678 = distinct !DILexicalBlock(scope: !7609, file: !366, line: 464, column: 6)
!7679 = !DILocation(line: 464, column: 11, scope: !7678)
!7680 = !DILocation(line: 464, column: 6, scope: !7609)
!7681 = !DILocation(line: 464, column: 26, scope: !7678)
!7682 = !DILocation(line: 465, column: 6, scope: !7683)
!7683 = distinct !DILexicalBlock(scope: !7609, file: !366, line: 465, column: 6)
!7684 = !DILocation(line: 465, column: 11, scope: !7683)
!7685 = !DILocation(line: 465, column: 6, scope: !7609)
!7686 = !DILocation(line: 465, column: 26, scope: !7683)
!7687 = !DILocation(line: 466, column: 6, scope: !7688)
!7688 = distinct !DILexicalBlock(scope: !7609, file: !366, line: 466, column: 6)
!7689 = !DILocation(line: 466, column: 11, scope: !7688)
!7690 = !DILocation(line: 466, column: 6, scope: !7609)
!7691 = !DILocation(line: 466, column: 26, scope: !7688)
!7692 = !DILocation(line: 467, column: 6, scope: !7693)
!7693 = distinct !DILexicalBlock(scope: !7609, file: !366, line: 467, column: 6)
!7694 = !DILocation(line: 467, column: 11, scope: !7693)
!7695 = !DILocation(line: 467, column: 6, scope: !7609)
!7696 = !DILocation(line: 467, column: 26, scope: !7693)
!7697 = !DILocation(line: 468, column: 6, scope: !7698)
!7698 = distinct !DILexicalBlock(scope: !7609, file: !366, line: 468, column: 6)
!7699 = !DILocation(line: 468, column: 11, scope: !7698)
!7700 = !DILocation(line: 468, column: 6, scope: !7609)
!7701 = !DILocation(line: 468, column: 26, scope: !7698)
!7702 = !DILocation(line: 469, column: 6, scope: !7703)
!7703 = distinct !DILexicalBlock(scope: !7609, file: !366, line: 469, column: 6)
!7704 = !DILocation(line: 469, column: 11, scope: !7703)
!7705 = !DILocation(line: 469, column: 6, scope: !7609)
!7706 = !DILocation(line: 469, column: 26, scope: !7703)
!7707 = !DILocation(line: 470, column: 6, scope: !7708)
!7708 = distinct !DILexicalBlock(scope: !7609, file: !366, line: 470, column: 6)
!7709 = !DILocation(line: 470, column: 11, scope: !7708)
!7710 = !DILocation(line: 470, column: 6, scope: !7609)
!7711 = !DILocation(line: 470, column: 26, scope: !7708)
!7712 = !DILocation(line: 471, column: 6, scope: !7713)
!7713 = distinct !DILexicalBlock(scope: !7609, file: !366, line: 471, column: 6)
!7714 = !DILocation(line: 471, column: 11, scope: !7713)
!7715 = !DILocation(line: 471, column: 6, scope: !7609)
!7716 = !DILocation(line: 471, column: 26, scope: !7713)
!7717 = !DILocation(line: 472, column: 6, scope: !7718)
!7718 = distinct !DILexicalBlock(scope: !7609, file: !366, line: 472, column: 6)
!7719 = !DILocation(line: 472, column: 11, scope: !7718)
!7720 = !DILocation(line: 472, column: 6, scope: !7609)
!7721 = !DILocation(line: 472, column: 26, scope: !7718)
!7722 = !DILocation(line: 473, column: 6, scope: !7723)
!7723 = distinct !DILexicalBlock(scope: !7609, file: !366, line: 473, column: 6)
!7724 = !DILocation(line: 473, column: 11, scope: !7723)
!7725 = !DILocation(line: 473, column: 6, scope: !7609)
!7726 = !DILocation(line: 473, column: 26, scope: !7723)
!7727 = !DILocation(line: 474, column: 6, scope: !7728)
!7728 = distinct !DILexicalBlock(scope: !7609, file: !366, line: 474, column: 6)
!7729 = !DILocation(line: 474, column: 11, scope: !7728)
!7730 = !DILocation(line: 474, column: 6, scope: !7609)
!7731 = !DILocation(line: 474, column: 27, scope: !7728)
!7732 = !DILocation(line: 475, column: 6, scope: !7733)
!7733 = distinct !DILexicalBlock(scope: !7609, file: !366, line: 475, column: 6)
!7734 = !DILocation(line: 475, column: 11, scope: !7733)
!7735 = !DILocation(line: 475, column: 6, scope: !7609)
!7736 = !DILocation(line: 475, column: 32, scope: !7733)
!7737 = !DILocation(line: 477, column: 50, scope: !7738)
!7738 = distinct !DILexicalBlock(scope: !7609, file: !366, line: 477, column: 6)
!7739 = !DILocation(line: 477, column: 6, scope: !7609)
!7740 = !DILocation(line: 478, column: 3, scope: !7738)
!7741 = !DILocation(line: 478, column: 3, scope: !7742)
!7742 = distinct !DILexicalBlock(scope: !7743, file: !366, line: 478, column: 3)
!7743 = distinct !DILexicalBlock(scope: !7738, file: !366, line: 478, column: 3)
!7744 = !{i32 -2141696812}
!7745 = !DILocation(line: 478, column: 3, scope: !7743)
!7746 = !DILocation(line: 480, column: 3, scope: !7738)
!7747 = !DILocation(line: 480, column: 3, scope: !7748)
!7748 = distinct !DILexicalBlock(scope: !7738, file: !366, line: 480, column: 3)
!7749 = !DILocation(line: 480, column: 3, scope: !7750)
!7750 = distinct !DILexicalBlock(scope: !7748, file: !366, line: 480, column: 3)
!7751 = !DILocation(line: 480, column: 3, scope: !7752)
!7752 = distinct !DILexicalBlock(scope: !7748, file: !366, line: 480, column: 3)
!7753 = !{i64 2153270687, i64 2153270716, i64 2153270762, i64 2153270820, i64 2153270874, i64 2153270928, i64 2153270983, i64 2153271014}
!7754 = !DILocation(line: 483, column: 2, scope: !7609)
!7755 = !DILocation(line: 484, column: 1, scope: !7609)
!7756 = !DISubprogram(name: "kmalloc_trace", scope: !366, file: !366, line: 525, type: !7757, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7757 = !DISubroutineType(types: !7758)
!7758 = !{!376, !2906, !986, !528}
!7759 = distinct !DISubprogram(name: "kmalloc_type", scope: !366, file: !366, line: 401, type: !7760, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !7762)
!7760 = !DISubroutineType(types: !7761)
!7761 = !{!365, !986, !531}
!7762 = !{!7763, !7764}
!7763 = !DILocalVariable(name: "flags", arg: 1, scope: !7759, file: !366, line: 401, type: !986)
!7764 = !DILocalVariable(name: "caller", arg: 2, scope: !7759, file: !366, line: 401, type: !531)
!7765 = !DILocation(line: 401, column: 67, scope: !7759)
!7766 = !DILocation(line: 401, column: 88, scope: !7759)
!7767 = !DILocation(line: 407, column: 6, scope: !7768)
!7768 = distinct !DILexicalBlock(scope: !7759, file: !366, line: 407, column: 6)
!7769 = !DILocation(line: 407, column: 6, scope: !7759)
!7770 = !DILocation(line: 413, column: 3, scope: !7768)
!7771 = !DILocation(line: 423, column: 38, scope: !7772)
!7772 = distinct !DILexicalBlock(scope: !7759, file: !366, line: 423, column: 6)
!7773 = !DILocation(line: 423, column: 44, scope: !7772)
!7774 = !DILocation(line: 423, column: 6, scope: !7759)
!7775 = !DILocation(line: 424, column: 3, scope: !7772)
!7776 = !DILocation(line: 426, column: 3, scope: !7777)
!7777 = distinct !DILexicalBlock(scope: !7759, file: !366, line: 425, column: 6)
!7778 = !DILocation(line: 429, column: 1, scope: !7759)
!7779 = !DISubprogram(name: "__compiletime_assert_245", scope: !366, file: !366, line: 478, type: !2033, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!7780 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !6366, file: !6366, line: 43, type: !7781, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7781 = !DISubroutineType(types: !7782)
!7782 = !{null, !6369, !531}
