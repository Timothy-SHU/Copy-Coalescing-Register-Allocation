; ModuleID = 'sound/core/info.c'
source_filename = "sound/core/info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_seq_root: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_seq_root ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_info_get_line: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_info_get_line ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_info_get_str: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_info_get_str ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_info_create_module_entry: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_info_create_module_entry ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_info_create_card_entry: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_info_create_card_entry ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_info_free_entry: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_info_free_entry ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_info_register: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_info_register ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_card_rw_proc_new: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_card_rw_proc_new ; .previous"

%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uts_namespace = type { %struct.new_utsname, ptr, ptr, %struct.ns_common }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.ns_common = type { %struct.atomic64_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.snd_info_entry = type { ptr, i16, i64, i16, %union.anon.13, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.13 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, ptr, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i64, %struct.list_head, %struct.list_head, %struct.xarray, %struct.xarray, i8, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i64, %struct.mutex, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.14, %struct.qspinlock }
%union.anon.14 = type { %struct.atomic_t }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_info_buffer = type { ptr, i32, i32, i32, i32, i32 }
%struct.file = type { %union.anon.16, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.16 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.path = type { ptr, ptr }
%struct.snd_info_entry_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_info_private_data = type { ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.17, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.18, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.19, ptr, %struct.address_space, %struct.list_head, %union.anon.20, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.17 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.18 = type { %struct.callback_head }
%union.anon.19 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.20 = type { ptr }
%struct.seq_file = type { ptr, i64, i64, i64, i64, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@snd_info_check_reserved_words.reserved = internal constant [12 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr null], align 16, !dbg !0
@.str = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !4266
@.str.1 = private unnamed_addr constant [8 x i8] c"meminfo\00", align 1, !dbg !4268
@.str.2 = private unnamed_addr constant [9 x i8] c"memdebug\00", align 1, !dbg !4270
@.str.3 = private unnamed_addr constant [7 x i8] c"detect\00", align 1, !dbg !4275
@.str.4 = private unnamed_addr constant [8 x i8] c"devices\00", align 1, !dbg !4278
@.str.5 = private unnamed_addr constant [4 x i8] c"oss\00", align 1, !dbg !4280
@.str.6 = private unnamed_addr constant [6 x i8] c"cards\00", align 1, !dbg !4283
@.str.7 = private unnamed_addr constant [7 x i8] c"timers\00", align 1, !dbg !4285
@.str.8 = private unnamed_addr constant [6 x i8] c"synth\00", align 1, !dbg !4287
@.str.9 = private unnamed_addr constant [4 x i8] c"pcm\00", align 1, !dbg !4289
@.str.10 = private unnamed_addr constant [4 x i8] c"seq\00", align 1, !dbg !4291
@.str.11 = private unnamed_addr constant [5 x i8] c"card\00", align 1, !dbg !4293
@snd_seq_root = hidden global ptr null, align 8, !dbg !4323
@__UNIQUE_ID___addressable_snd_seq_root289 = internal global ptr @snd_seq_root, section ".discard.addressable", align 8, !dbg !4298
@.str.12 = private unnamed_addr constant [7 x i8] c"asound\00", align 1, !dbg !4300
@snd_proc_root = internal global ptr null, align 8, !dbg !4321
@.str.13 = private unnamed_addr constant [7 x i8] c"card%i\00", align 1, !dbg !4302
@.str.14 = private unnamed_addr constant [3 x i8] c"id\00", align 1, !dbg !4304
@info_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @info_mutex, i64 16), ptr getelementptr (i8, ptr @info_mutex, i64 16) } }, align 8, !dbg !4327
@__UNIQUE_ID___addressable_snd_info_get_line294 = internal global ptr @snd_info_get_line, section ".discard.addressable", align 8, !dbg !4307
@__UNIQUE_ID___addressable_snd_info_get_str295 = internal global ptr @snd_info_get_str, section ".discard.addressable", align 8, !dbg !4309
@__UNIQUE_ID___addressable_snd_info_create_module_entry296 = internal global ptr @snd_info_create_module_entry, section ".discard.addressable", align 8, !dbg !4311
@__UNIQUE_ID___addressable_snd_info_create_card_entry297 = internal global ptr @snd_info_create_card_entry, section ".discard.addressable", align 8, !dbg !4313
@__UNIQUE_ID___addressable_snd_info_free_entry298 = internal global ptr @snd_info_free_entry, section ".discard.addressable", align 8, !dbg !4315
@__UNIQUE_ID___addressable_snd_info_register299 = internal global ptr @snd_info_register, section ".discard.addressable", align 8, !dbg !4317
@__UNIQUE_ID___addressable_snd_card_rw_proc_new300 = internal global ptr @snd_card_rw_proc_new, section ".discard.addressable", align 8, !dbg !4319
@.str.15 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !4325
@snd_info_create_entry.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4329
@.str.16 = private unnamed_addr constant [15 x i8] c"&entry->access\00", align 1, !dbg !4339
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.17 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4344
@snd_info_entry_operations = internal constant %struct.proc_ops { i32 0, ptr @snd_info_entry_open, ptr @snd_info_entry_read, ptr null, ptr @snd_info_entry_write, ptr @snd_info_entry_llseek, ptr @snd_info_entry_release, ptr @snd_info_entry_poll, ptr @snd_info_entry_ioctl, ptr null, ptr @snd_info_entry_mmap, ptr null }, align 8, !dbg !4349
@snd_info_text_entry_ops = internal constant %struct.proc_ops { i32 0, ptr @snd_info_text_entry_open, ptr @seq_read, ptr null, ptr @snd_info_text_entry_write, ptr @seq_lseek, ptr @snd_info_text_entry_release, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !4367
@.str.18 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1, !dbg !4369
@.str.19 = private unnamed_addr constant [55 x i8] c"Advanced Linux Sound Architecture Driver Version k%s.\0A\00", align 1, !dbg !4375
@init_uts_ns = external dso_local global %struct.uts_namespace, align 8
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID___addressable_snd_seq_root289, ptr @snd_info_done, ptr @__UNIQUE_ID___addressable_snd_info_get_line294, ptr @__UNIQUE_ID___addressable_snd_info_get_str295, ptr @__UNIQUE_ID___addressable_snd_info_create_module_entry296, ptr @__UNIQUE_ID___addressable_snd_info_create_card_entry297, ptr @__UNIQUE_ID___addressable_snd_info_free_entry298, ptr @__UNIQUE_ID___addressable_snd_info_register299, ptr @__UNIQUE_ID___addressable_snd_card_rw_proc_new300], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_info_check_reserved_words(ptr noundef %str) #0 align 16 !dbg !2 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca ptr, align 8
  %xstr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !4381, metadata !DIExpression()), !dbg !4395
  call void @llvm.lifetime.start.p0(i64 8, ptr %xstr) #16, !dbg !4396
  call void @llvm.dbg.declare(metadata ptr %xstr, metadata !4382, metadata !DIExpression()), !dbg !4397
  store ptr @snd_info_check_reserved_words.reserved, ptr %xstr, align 8, !dbg !4397
  br label %while.cond, !dbg !4398

while.cond:                                       ; preds = %if.end, %entry
  %0 = load ptr, ptr %xstr, align 8, !dbg !4399
  %1 = load ptr, ptr %0, align 8, !dbg !4400
  %tobool = icmp ne ptr %1, null, !dbg !4398
  br i1 %tobool, label %while.body, label %while.end, !dbg !4398

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %xstr, align 8, !dbg !4401
  %3 = load ptr, ptr %2, align 8, !dbg !4404
  %4 = load ptr, ptr %str.addr, align 8, !dbg !4405
  %call = call i32 @strcmp(ptr noundef %3, ptr noundef %4) #17, !dbg !4406
  %tobool1 = icmp ne i32 %call, 0, !dbg !4406
  br i1 %tobool1, label %if.end, label %if.then, !dbg !4407

if.then:                                          ; preds = %while.body
  store i32 0, ptr %retval, align 4, !dbg !4408
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4408

if.end:                                           ; preds = %while.body
  %5 = load ptr, ptr %xstr, align 8, !dbg !4409
  %incdec.ptr = getelementptr ptr, ptr %5, i32 1, !dbg !4409
  store ptr %incdec.ptr, ptr %xstr, align 8, !dbg !4409
  br label %while.cond, !dbg !4398, !llvm.loop !4410

while.end:                                        ; preds = %while.cond
  %6 = load ptr, ptr %str.addr, align 8, !dbg !4414
  %call2 = call i32 @strncmp(ptr noundef %6, ptr noundef @.str.11, i64 noundef 4) #17, !dbg !4416
  %tobool3 = icmp ne i32 %call2, 0, !dbg !4416
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !4417

if.then4:                                         ; preds = %while.end
  store i32 0, ptr %retval, align 4, !dbg !4418
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4418

if.end5:                                          ; preds = %while.end
  store i32 1, ptr %retval, align 4, !dbg !4419
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4419

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %xstr) #16, !dbg !4420
  %7 = load i32, ptr %retval, align 4, !dbg !4420
  ret i32 %7, !dbg !4420
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4421 dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4425 dso_local i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @snd_info_init() #4 section ".init.text" align 16 !dbg !4428 {
entry:
  %retval = alloca i32, align 4
  %call = call ptr @snd_info_create_entry(ptr noundef @.str.12, ptr noundef null, ptr noundef null) #17, !dbg !4431
  store ptr %call, ptr @snd_proc_root, align 8, !dbg !4432
  %0 = load ptr, ptr @snd_proc_root, align 8, !dbg !4433
  %tobool = icmp ne ptr %0, null, !dbg !4433
  br i1 %tobool, label %if.end, label %if.then, !dbg !4435

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !4436
  br label %return, !dbg !4436

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @snd_proc_root, align 8, !dbg !4437
  %mode = getelementptr inbounds %struct.snd_info_entry, ptr %1, i32 0, i32 1, !dbg !4438
  store i16 16749, ptr %mode, align 8, !dbg !4439
  %call1 = call ptr @proc_mkdir(ptr noundef @.str.12, ptr noundef null) #17, !dbg !4440
  %2 = load ptr, ptr @snd_proc_root, align 8, !dbg !4441
  %p = getelementptr inbounds %struct.snd_info_entry, ptr %2, i32 0, i32 9, !dbg !4442
  store ptr %call1, ptr %p, align 8, !dbg !4443
  %3 = load ptr, ptr @snd_proc_root, align 8, !dbg !4444
  %p2 = getelementptr inbounds %struct.snd_info_entry, ptr %3, i32 0, i32 9, !dbg !4446
  %4 = load ptr, ptr %p2, align 8, !dbg !4446
  %tobool3 = icmp ne ptr %4, null, !dbg !4444
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !4447

if.then4:                                         ; preds = %if.end
  br label %error, !dbg !4448

if.end5:                                          ; preds = %if.end
  %call6 = call ptr @create_subdir(ptr noundef null, ptr noundef @.str.10) #17, !dbg !4449
  store ptr %call6, ptr @snd_seq_root, align 8, !dbg !4450
  %5 = load ptr, ptr @snd_seq_root, align 8, !dbg !4451
  %tobool7 = icmp ne ptr %5, null, !dbg !4451
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !4453

if.then8:                                         ; preds = %if.end5
  br label %error, !dbg !4454

if.end9:                                          ; preds = %if.end5
  %call10 = call i32 @snd_info_version_init() #17, !dbg !4455
  %cmp = icmp slt i32 %call10, 0, !dbg !4457
  br i1 %cmp, label %if.then19, label %lor.lhs.false, !dbg !4458

lor.lhs.false:                                    ; preds = %if.end9
  %call11 = call i32 @snd_minor_info_init() #17, !dbg !4459
  %cmp12 = icmp slt i32 %call11, 0, !dbg !4460
  br i1 %cmp12, label %if.then19, label %lor.lhs.false13, !dbg !4461

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %call14 = call i32 @snd_minor_info_oss_init() #17, !dbg !4462
  %cmp15 = icmp slt i32 %call14, 0, !dbg !4463
  br i1 %cmp15, label %if.then19, label %lor.lhs.false16, !dbg !4464

lor.lhs.false16:                                  ; preds = %lor.lhs.false13
  %call17 = call i32 @snd_card_info_init() #17, !dbg !4465
  %cmp18 = icmp slt i32 %call17, 0, !dbg !4466
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !4467

if.then19:                                        ; preds = %lor.lhs.false16, %lor.lhs.false13, %lor.lhs.false, %if.end9
  br label %error, !dbg !4468

if.end20:                                         ; preds = %lor.lhs.false16
  store i32 0, ptr %retval, align 4, !dbg !4469
  br label %return, !dbg !4469

error:                                            ; preds = %if.then19, %if.then8, %if.then4
  call void @llvm.dbg.label(metadata !4430), !dbg !4470
  %6 = load ptr, ptr @snd_proc_root, align 8, !dbg !4471
  call void @snd_info_free_entry(ptr noundef %6) #17, !dbg !4472
  store i32 -12, ptr %retval, align 4, !dbg !4473
  br label %return, !dbg !4473

return:                                           ; preds = %error, %if.end20, %if.then
  %7 = load i32, ptr %retval, align 4, !dbg !4474
  ret i32 %7, !dbg !4474
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @snd_info_create_entry(ptr noundef %name, ptr noundef %parent, ptr noundef %module) #0 align 16 !dbg !4331 {
entry:
  %retval = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %module.addr = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !4335, metadata !DIExpression()), !dbg !4475
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !4336, metadata !DIExpression()), !dbg !4476
  store ptr %module, ptr %module.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %module.addr, metadata !4337, metadata !DIExpression()), !dbg !4477
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #16, !dbg !4478
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !4338, metadata !DIExpression()), !dbg !4479
  %call = call noalias ptr @kzalloc(i64 noundef 152, i32 noundef 3264) #18, !dbg !4480
  store ptr %call, ptr %entry1, align 8, !dbg !4481
  %0 = load ptr, ptr %entry1, align 8, !dbg !4482
  %cmp = icmp eq ptr %0, null, !dbg !4484
  br i1 %cmp, label %if.then, label %if.end, !dbg !4485

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !4486
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4486

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %name.addr, align 8, !dbg !4487
  %call2 = call noalias ptr @kstrdup(ptr noundef %1, i32 noundef 3264) #17, !dbg !4488
  %2 = load ptr, ptr %entry1, align 8, !dbg !4489
  %name3 = getelementptr inbounds %struct.snd_info_entry, ptr %2, i32 0, i32 0, !dbg !4490
  store ptr %call2, ptr %name3, align 8, !dbg !4491
  %3 = load ptr, ptr %entry1, align 8, !dbg !4492
  %name4 = getelementptr inbounds %struct.snd_info_entry, ptr %3, i32 0, i32 0, !dbg !4494
  %4 = load ptr, ptr %name4, align 8, !dbg !4494
  %cmp5 = icmp eq ptr %4, null, !dbg !4495
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !4496

if.then6:                                         ; preds = %if.end
  %5 = load ptr, ptr %entry1, align 8, !dbg !4497
  call void @kfree(ptr noundef %5) #17, !dbg !4499
  store ptr null, ptr %retval, align 8, !dbg !4500
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4500

if.end7:                                          ; preds = %if.end
  %6 = load ptr, ptr %entry1, align 8, !dbg !4501
  %mode = getelementptr inbounds %struct.snd_info_entry, ptr %6, i32 0, i32 1, !dbg !4502
  store i16 -32476, ptr %mode, align 8, !dbg !4503
  %7 = load ptr, ptr %entry1, align 8, !dbg !4504
  %content = getelementptr inbounds %struct.snd_info_entry, ptr %7, i32 0, i32 3, !dbg !4505
  store i16 0, ptr %content, align 8, !dbg !4506
  br label %do.body, !dbg !4507

do.body:                                          ; preds = %if.end7
  %8 = load ptr, ptr %entry1, align 8, !dbg !4508
  %access = getelementptr inbounds %struct.snd_info_entry, ptr %8, i32 0, i32 10, !dbg !4508
  call void @__mutex_init(ptr noundef %access, ptr noundef @.str.16, ptr noundef @snd_info_create_entry.__key) #17, !dbg !4508
  br label %do.cond, !dbg !4508

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4508

do.end:                                           ; preds = %do.cond
  %9 = load ptr, ptr %entry1, align 8, !dbg !4510
  %children = getelementptr inbounds %struct.snd_info_entry, ptr %9, i32 0, i32 11, !dbg !4511
  call void @INIT_LIST_HEAD(ptr noundef %children) #17, !dbg !4512
  %10 = load ptr, ptr %entry1, align 8, !dbg !4513
  %list = getelementptr inbounds %struct.snd_info_entry, ptr %10, i32 0, i32 12, !dbg !4514
  call void @INIT_LIST_HEAD(ptr noundef %list) #17, !dbg !4515
  %11 = load ptr, ptr %parent.addr, align 8, !dbg !4516
  %12 = load ptr, ptr %entry1, align 8, !dbg !4517
  %parent8 = getelementptr inbounds %struct.snd_info_entry, ptr %12, i32 0, i32 5, !dbg !4518
  store ptr %11, ptr %parent8, align 8, !dbg !4519
  %13 = load ptr, ptr %module.addr, align 8, !dbg !4520
  %14 = load ptr, ptr %entry1, align 8, !dbg !4521
  %module9 = getelementptr inbounds %struct.snd_info_entry, ptr %14, i32 0, i32 6, !dbg !4522
  store ptr %13, ptr %module9, align 8, !dbg !4523
  %15 = load ptr, ptr %parent.addr, align 8, !dbg !4524
  %tobool = icmp ne ptr %15, null, !dbg !4524
  br i1 %tobool, label %if.then10, label %if.end15, !dbg !4526

if.then10:                                        ; preds = %do.end
  %16 = load ptr, ptr %parent.addr, align 8, !dbg !4527
  %access11 = getelementptr inbounds %struct.snd_info_entry, ptr %16, i32 0, i32 10, !dbg !4529
  call void @mutex_lock(ptr noundef %access11) #17, !dbg !4530
  %17 = load ptr, ptr %entry1, align 8, !dbg !4531
  %list12 = getelementptr inbounds %struct.snd_info_entry, ptr %17, i32 0, i32 12, !dbg !4532
  %18 = load ptr, ptr %parent.addr, align 8, !dbg !4533
  %children13 = getelementptr inbounds %struct.snd_info_entry, ptr %18, i32 0, i32 11, !dbg !4534
  call void @list_add_tail(ptr noundef %list12, ptr noundef %children13) #17, !dbg !4535
  %19 = load ptr, ptr %parent.addr, align 8, !dbg !4536
  %access14 = getelementptr inbounds %struct.snd_info_entry, ptr %19, i32 0, i32 10, !dbg !4537
  call void @mutex_unlock(ptr noundef %access14) #17, !dbg !4538
  br label %if.end15, !dbg !4539

if.end15:                                         ; preds = %if.then10, %do.end
  %20 = load ptr, ptr %entry1, align 8, !dbg !4540
  store ptr %20, ptr %retval, align 8, !dbg !4541
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4541

cleanup:                                          ; preds = %if.end15, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #16, !dbg !4542
  %21 = load ptr, ptr %retval, align 8, !dbg !4542
  ret ptr %21, !dbg !4542
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4543 dso_local ptr @proc_mkdir(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @create_subdir(ptr noundef %mod, ptr noundef %name) #0 align 16 !dbg !4546 {
entry:
  %retval = alloca ptr, align 8
  %mod.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !4550, metadata !DIExpression()), !dbg !4553
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !4551, metadata !DIExpression()), !dbg !4554
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #16, !dbg !4555
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !4552, metadata !DIExpression()), !dbg !4556
  %0 = load ptr, ptr %mod.addr, align 8, !dbg !4557
  %1 = load ptr, ptr %name.addr, align 8, !dbg !4558
  %call = call ptr @snd_info_create_module_entry(ptr noundef %0, ptr noundef %1, ptr noundef null) #17, !dbg !4559
  store ptr %call, ptr %entry1, align 8, !dbg !4560
  %2 = load ptr, ptr %entry1, align 8, !dbg !4561
  %tobool = icmp ne ptr %2, null, !dbg !4561
  br i1 %tobool, label %if.end, label %if.then, !dbg !4563

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !4564
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4564

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %entry1, align 8, !dbg !4565
  %mode = getelementptr inbounds %struct.snd_info_entry, ptr %3, i32 0, i32 1, !dbg !4566
  store i16 16749, ptr %mode, align 8, !dbg !4567
  %4 = load ptr, ptr %entry1, align 8, !dbg !4568
  %call2 = call i32 @snd_info_register(ptr noundef %4) #17, !dbg !4570
  %cmp = icmp slt i32 %call2, 0, !dbg !4571
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !4572

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %entry1, align 8, !dbg !4573
  call void @snd_info_free_entry(ptr noundef %5) #17, !dbg !4575
  store ptr null, ptr %retval, align 8, !dbg !4576
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4576

if.end4:                                          ; preds = %if.end
  %6 = load ptr, ptr %entry1, align 8, !dbg !4577
  store ptr %6, ptr %retval, align 8, !dbg !4578
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4578

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #16, !dbg !4579
  %7 = load ptr, ptr %retval, align 8, !dbg !4579
  ret ptr %7, !dbg !4579
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @snd_info_version_init() #4 section ".init.text" align 16 !dbg !4580 {
entry:
  %retval = alloca i32, align 4
  %entry1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #16, !dbg !4583
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !4582, metadata !DIExpression()), !dbg !4584
  %call = call ptr @snd_info_create_module_entry(ptr noundef null, ptr noundef @.str, ptr noundef null) #17, !dbg !4585
  store ptr %call, ptr %entry1, align 8, !dbg !4586
  %0 = load ptr, ptr %entry1, align 8, !dbg !4587
  %cmp = icmp eq ptr %0, null, !dbg !4589
  br i1 %cmp, label %if.then, label %if.end, !dbg !4590

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !4591
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4591

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry1, align 8, !dbg !4592
  %c = getelementptr inbounds %struct.snd_info_entry, ptr %1, i32 0, i32 4, !dbg !4593
  %read = getelementptr inbounds %struct.snd_info_entry_text, ptr %c, i32 0, i32 0, !dbg !4594
  store ptr @snd_info_version_read, ptr %read, align 8, !dbg !4595
  %2 = load ptr, ptr %entry1, align 8, !dbg !4596
  %call2 = call i32 @snd_info_register(ptr noundef %2) #17, !dbg !4597
  store i32 %call2, ptr %retval, align 4, !dbg !4598
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4598

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #16, !dbg !4599
  %3 = load i32, ptr %retval, align 4, !dbg !4599
  ret i32 %3, !dbg !4599
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4600 dso_local i32 @snd_minor_info_init() #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @snd_minor_info_oss_init() #5 align 16 !dbg !4601 {
entry:
  ret i32 0, !dbg !4602
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4603 dso_local i32 @snd_card_info_init() #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @snd_info_free_entry(ptr noundef %entry1) #0 align 16 !dbg !4604 {
entry:
  %entry.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %n = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr7 = alloca ptr, align 8
  %tmp9 = alloca ptr, align 8
  %__mptr13 = alloca ptr, align 8
  %tmp16 = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !4606, metadata !DIExpression()), !dbg !4617
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !4618
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4607, metadata !DIExpression()), !dbg !4619
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #16, !dbg !4618
  call void @llvm.dbg.declare(metadata ptr %n, metadata !4608, metadata !DIExpression()), !dbg !4620
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !4621
  %tobool = icmp ne ptr %0, null, !dbg !4621
  br i1 %tobool, label %if.end, label %if.then, !dbg !4623

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4624

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !4625
  %p2 = getelementptr inbounds %struct.snd_info_entry, ptr %1, i32 0, i32 9, !dbg !4627
  %2 = load ptr, ptr %p2, align 8, !dbg !4627
  %tobool3 = icmp ne ptr %2, null, !dbg !4625
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !4628

if.then4:                                         ; preds = %if.end
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !4629
  %p5 = getelementptr inbounds %struct.snd_info_entry, ptr %3, i32 0, i32 9, !dbg !4631
  %4 = load ptr, ptr %p5, align 8, !dbg !4631
  call void @proc_remove(ptr noundef %4) #17, !dbg !4632
  call void @mutex_lock(ptr noundef @info_mutex) #17, !dbg !4633
  %5 = load ptr, ptr %entry.addr, align 8, !dbg !4634
  call void @snd_info_clear_entries(ptr noundef %5) #17, !dbg !4635
  call void @mutex_unlock(ptr noundef @info_mutex) #17, !dbg !4636
  br label %if.end6, !dbg !4637

if.end6:                                          ; preds = %if.then4, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !4638
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4609, metadata !DIExpression()), !dbg !4638
  %6 = load ptr, ptr %entry.addr, align 8, !dbg !4638
  %children = getelementptr inbounds %struct.snd_info_entry, ptr %6, i32 0, i32 11, !dbg !4638
  %next = getelementptr inbounds %struct.list_head, ptr %children, i32 0, i32 0, !dbg !4638
  %7 = load ptr, ptr %next, align 8, !dbg !4638
  store ptr %7, ptr %__mptr, align 8, !dbg !4638
  %8 = load ptr, ptr %__mptr, align 8, !dbg !4638
  %add.ptr = getelementptr i8, ptr %8, i64 -136, !dbg !4638
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4638
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !4639
  %9 = load ptr, ptr %tmp, align 8, !dbg !4638
  store ptr %9, ptr %p, align 8, !dbg !4639
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr7) #16, !dbg !4640
  call void @llvm.dbg.declare(metadata ptr %__mptr7, metadata !4612, metadata !DIExpression()), !dbg !4640
  %10 = load ptr, ptr %p, align 8, !dbg !4640
  %list = getelementptr inbounds %struct.snd_info_entry, ptr %10, i32 0, i32 12, !dbg !4640
  %next8 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 0, !dbg !4640
  %11 = load ptr, ptr %next8, align 8, !dbg !4640
  store ptr %11, ptr %__mptr7, align 8, !dbg !4640
  %12 = load ptr, ptr %__mptr7, align 8, !dbg !4640
  %add.ptr10 = getelementptr i8, ptr %12, i64 -136, !dbg !4640
  store ptr %add.ptr10, ptr %tmp9, align 8, !dbg !4640
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr7) #16, !dbg !4639
  %13 = load ptr, ptr %tmp9, align 8, !dbg !4640
  store ptr %13, ptr %n, align 8, !dbg !4639
  br label %for.cond, !dbg !4639

for.cond:                                         ; preds = %for.inc, %if.end6
  %14 = load ptr, ptr %p, align 8, !dbg !4641
  %list11 = getelementptr inbounds %struct.snd_info_entry, ptr %14, i32 0, i32 12, !dbg !4641
  %15 = load ptr, ptr %entry.addr, align 8, !dbg !4641
  %children12 = getelementptr inbounds %struct.snd_info_entry, ptr %15, i32 0, i32 11, !dbg !4641
  %cmp = icmp eq ptr %list11, %children12, !dbg !4641
  %lnot = xor i1 %cmp, true, !dbg !4641
  br i1 %lnot, label %for.body, label %for.end, !dbg !4639

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %p, align 8, !dbg !4642
  call void @snd_info_free_entry(ptr noundef %16) #17, !dbg !4643
  br label %for.inc, !dbg !4643

for.inc:                                          ; preds = %for.body
  %17 = load ptr, ptr %n, align 8, !dbg !4641
  store ptr %17, ptr %p, align 8, !dbg !4641
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr13) #16, !dbg !4644
  call void @llvm.dbg.declare(metadata ptr %__mptr13, metadata !4614, metadata !DIExpression()), !dbg !4644
  %18 = load ptr, ptr %n, align 8, !dbg !4644
  %list14 = getelementptr inbounds %struct.snd_info_entry, ptr %18, i32 0, i32 12, !dbg !4644
  %next15 = getelementptr inbounds %struct.list_head, ptr %list14, i32 0, i32 0, !dbg !4644
  %19 = load ptr, ptr %next15, align 8, !dbg !4644
  store ptr %19, ptr %__mptr13, align 8, !dbg !4644
  %20 = load ptr, ptr %__mptr13, align 8, !dbg !4644
  %add.ptr17 = getelementptr i8, ptr %20, i64 -136, !dbg !4644
  store ptr %add.ptr17, ptr %tmp16, align 8, !dbg !4644
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr13) #16, !dbg !4641
  %21 = load ptr, ptr %tmp16, align 8, !dbg !4644
  store ptr %21, ptr %n, align 8, !dbg !4641
  br label %for.cond, !dbg !4641, !llvm.loop !4645

for.end:                                          ; preds = %for.cond
  %22 = load ptr, ptr %entry.addr, align 8, !dbg !4647
  %parent = getelementptr inbounds %struct.snd_info_entry, ptr %22, i32 0, i32 5, !dbg !4648
  %23 = load ptr, ptr %parent, align 8, !dbg !4648
  store ptr %23, ptr %p, align 8, !dbg !4649
  %24 = load ptr, ptr %p, align 8, !dbg !4650
  %tobool18 = icmp ne ptr %24, null, !dbg !4650
  br i1 %tobool18, label %if.then19, label %if.end22, !dbg !4652

if.then19:                                        ; preds = %for.end
  %25 = load ptr, ptr %p, align 8, !dbg !4653
  %access = getelementptr inbounds %struct.snd_info_entry, ptr %25, i32 0, i32 10, !dbg !4655
  call void @mutex_lock(ptr noundef %access) #17, !dbg !4656
  %26 = load ptr, ptr %entry.addr, align 8, !dbg !4657
  %list20 = getelementptr inbounds %struct.snd_info_entry, ptr %26, i32 0, i32 12, !dbg !4658
  call void @list_del(ptr noundef %list20) #17, !dbg !4659
  %27 = load ptr, ptr %p, align 8, !dbg !4660
  %access21 = getelementptr inbounds %struct.snd_info_entry, ptr %27, i32 0, i32 10, !dbg !4661
  call void @mutex_unlock(ptr noundef %access21) #17, !dbg !4662
  br label %if.end22, !dbg !4663

if.end22:                                         ; preds = %if.then19, %for.end
  %28 = load ptr, ptr %entry.addr, align 8, !dbg !4664
  %name = getelementptr inbounds %struct.snd_info_entry, ptr %28, i32 0, i32 0, !dbg !4665
  %29 = load ptr, ptr %name, align 8, !dbg !4665
  call void @kfree(ptr noundef %29) #17, !dbg !4666
  %30 = load ptr, ptr %entry.addr, align 8, !dbg !4667
  %private_free = getelementptr inbounds %struct.snd_info_entry, ptr %30, i32 0, i32 8, !dbg !4669
  %31 = load ptr, ptr %private_free, align 8, !dbg !4669
  %tobool23 = icmp ne ptr %31, null, !dbg !4667
  br i1 %tobool23, label %if.then24, label %if.end26, !dbg !4670

if.then24:                                        ; preds = %if.end22
  %32 = load ptr, ptr %entry.addr, align 8, !dbg !4671
  %private_free25 = getelementptr inbounds %struct.snd_info_entry, ptr %32, i32 0, i32 8, !dbg !4672
  %33 = load ptr, ptr %private_free25, align 8, !dbg !4672
  %34 = load ptr, ptr %entry.addr, align 8, !dbg !4673
  call void %33(ptr noundef %34) #17, !dbg !4671
  br label %if.end26, !dbg !4671

if.end26:                                         ; preds = %if.then24, %if.end22
  %35 = load ptr, ptr %entry.addr, align 8, !dbg !4674
  call void @kfree(ptr noundef %35) #17, !dbg !4675
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4676
  br label %cleanup, !dbg !4676

cleanup:                                          ; preds = %if.end26, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #16, !dbg !4676
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !4676
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4676

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @snd_info_done() #4 section ".exit.text" align 16 !dbg !4677 {
entry:
  %0 = load ptr, ptr @snd_proc_root, align 8, !dbg !4678
  call void @snd_info_free_entry(ptr noundef %0) #17, !dbg !4679
  ret i32 0, !dbg !4680
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_info_card_create(ptr noundef %card) #0 align 16 !dbg !4681 {
entry:
  %retval = alloca i32, align 4
  %card.addr = alloca ptr, align 8
  %str = alloca [8 x i8], align 1
  %entry1 = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %card, ptr %card.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %card.addr, metadata !5093, metadata !DIExpression()), !dbg !5099
  call void @llvm.lifetime.start.p0(i64 8, ptr %str) #16, !dbg !5100
  call void @llvm.dbg.declare(metadata ptr %str, metadata !5094, metadata !DIExpression()), !dbg !5101
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #16, !dbg !5102
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !5095, metadata !DIExpression()), !dbg !5103
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5104
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5096, metadata !DIExpression()), !dbg !5104
  %0 = load ptr, ptr %card.addr, align 8, !dbg !5104
  %tobool = icmp ne ptr %0, null, !dbg !5104
  %lnot = xor i1 %tobool, true, !dbg !5104
  %lnot2 = xor i1 %lnot, true, !dbg !5104
  %lnot3 = xor i1 %lnot2, true, !dbg !5104
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5104
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5104
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !5104
  %tobool4 = icmp ne i32 %1, 0, !dbg !5104
  %lnot5 = xor i1 %tobool4, true, !dbg !5104
  %lnot7 = xor i1 %lnot5, true, !dbg !5104
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !5104
  %conv = sext i32 %lnot.ext8 to i64, !dbg !5104
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5104
  store i64 %expval, ptr %tmp, align 8, !dbg !5104
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5105
  %2 = load i64, ptr %tmp, align 8, !dbg !5104
  %tobool9 = icmp ne i64 %2, 0, !dbg !5105
  br i1 %tobool9, label %if.then, label %if.end, !dbg !5106

if.then:                                          ; preds = %entry
  store i32 -6, ptr %retval, align 4, !dbg !5107
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5107

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [8 x i8], ptr %str, i64 0, i64 0, !dbg !5108
  %3 = load ptr, ptr %card.addr, align 8, !dbg !5109
  %number = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 0, !dbg !5110
  %4 = load i32, ptr %number, align 8, !dbg !5110
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay, ptr noundef @.str.13, i32 noundef %4) #17, !dbg !5111
  %5 = load ptr, ptr %card.addr, align 8, !dbg !5112
  %module = getelementptr inbounds %struct.snd_card, ptr %5, i32 0, i32 8, !dbg !5113
  %6 = load ptr, ptr %module, align 8, !dbg !5113
  %arraydecay10 = getelementptr inbounds [8 x i8], ptr %str, i64 0, i64 0, !dbg !5114
  %call11 = call ptr @create_subdir(ptr noundef %6, ptr noundef %arraydecay10) #17, !dbg !5115
  store ptr %call11, ptr %entry1, align 8, !dbg !5116
  %7 = load ptr, ptr %entry1, align 8, !dbg !5117
  %tobool12 = icmp ne ptr %7, null, !dbg !5117
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !5119

if.then13:                                        ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !5120
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5120

if.end14:                                         ; preds = %if.end
  %8 = load ptr, ptr %entry1, align 8, !dbg !5121
  %9 = load ptr, ptr %card.addr, align 8, !dbg !5122
  %proc_root = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 23, !dbg !5123
  store ptr %8, ptr %proc_root, align 8, !dbg !5124
  %10 = load ptr, ptr %card.addr, align 8, !dbg !5125
  %11 = load ptr, ptr %card.addr, align 8, !dbg !5126
  %call15 = call i32 @snd_card_ro_proc_new(ptr noundef %10, ptr noundef @.str.14, ptr noundef %11, ptr noundef @snd_card_id_read) #17, !dbg !5127
  store i32 %call15, ptr %retval, align 4, !dbg !5128
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5128

cleanup:                                          ; preds = %if.end14, %if.then13, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #16, !dbg !5129
  call void @llvm.lifetime.end.p0(i64 8, ptr %str) #16, !dbg !5129
  %12 = load i32, ptr %retval, align 4, !dbg !5129
  ret i32 %12, !dbg !5129
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5130 dso_local i32 @sprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @snd_card_ro_proc_new(ptr noundef %card, ptr noundef %name, ptr noundef %private_data, ptr noundef %read) #5 align 16 !dbg !5134 {
entry:
  %card.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %private_data.addr = alloca ptr, align 8
  %read.addr = alloca ptr, align 8
  store ptr %card, ptr %card.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %card.addr, metadata !5138, metadata !DIExpression()), !dbg !5142
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5139, metadata !DIExpression()), !dbg !5143
  store ptr %private_data, ptr %private_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %private_data.addr, metadata !5140, metadata !DIExpression()), !dbg !5144
  store ptr %read, ptr %read.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %read.addr, metadata !5141, metadata !DIExpression()), !dbg !5145
  %0 = load ptr, ptr %card.addr, align 8, !dbg !5146
  %1 = load ptr, ptr %name.addr, align 8, !dbg !5147
  %2 = load ptr, ptr %private_data.addr, align 8, !dbg !5148
  %3 = load ptr, ptr %read.addr, align 8, !dbg !5149
  %call = call i32 @snd_card_rw_proc_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef null) #17, !dbg !5150
  ret i32 %call, !dbg !5151
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @snd_card_id_read(ptr noundef %entry1, ptr noundef %buffer) #0 align 16 !dbg !5152 {
entry:
  %entry.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %card = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5154, metadata !DIExpression()), !dbg !5157
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !5155, metadata !DIExpression()), !dbg !5158
  call void @llvm.lifetime.start.p0(i64 8, ptr %card) #16, !dbg !5159
  call void @llvm.dbg.declare(metadata ptr %card, metadata !5156, metadata !DIExpression()), !dbg !5160
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5161
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %0, i32 0, i32 7, !dbg !5162
  %1 = load ptr, ptr %private_data, align 8, !dbg !5162
  store ptr %1, ptr %card, align 8, !dbg !5160
  %2 = load ptr, ptr %buffer.addr, align 8, !dbg !5163
  %buffer2 = getelementptr inbounds %struct.snd_info_buffer, ptr %2, i32 0, i32 0, !dbg !5163
  %3 = load ptr, ptr %buffer2, align 8, !dbg !5163
  %4 = load ptr, ptr %card, align 8, !dbg !5163
  %id = getelementptr inbounds %struct.snd_card, ptr %4, i32 0, i32 1, !dbg !5163
  %arraydecay = getelementptr inbounds [16 x i8], ptr %id, i64 0, i64 0, !dbg !5163
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef @.str.15, ptr noundef %arraydecay) #17, !dbg !5163
  call void @llvm.lifetime.end.p0(i64 8, ptr %card) #16, !dbg !5164
  ret void, !dbg !5164
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_info_card_register(ptr noundef %card) #0 align 16 !dbg !5165 {
entry:
  %retval = alloca i32, align 4
  %card.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %err = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %card, ptr %card.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %card.addr, metadata !5167, metadata !DIExpression()), !dbg !5173
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !5174
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5168, metadata !DIExpression()), !dbg !5175
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !5176
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5169, metadata !DIExpression()), !dbg !5177
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5178
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5170, metadata !DIExpression()), !dbg !5178
  %0 = load ptr, ptr %card.addr, align 8, !dbg !5178
  %tobool = icmp ne ptr %0, null, !dbg !5178
  %lnot = xor i1 %tobool, true, !dbg !5178
  %lnot1 = xor i1 %lnot, true, !dbg !5178
  %lnot2 = xor i1 %lnot1, true, !dbg !5178
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5178
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5178
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !5178
  %tobool3 = icmp ne i32 %1, 0, !dbg !5178
  %lnot4 = xor i1 %tobool3, true, !dbg !5178
  %lnot6 = xor i1 %lnot4, true, !dbg !5178
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !5178
  %conv = sext i32 %lnot.ext7 to i64, !dbg !5178
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5178
  store i64 %expval, ptr %tmp, align 8, !dbg !5178
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5179
  %2 = load i64, ptr %tmp, align 8, !dbg !5178
  %tobool8 = icmp ne i64 %2, 0, !dbg !5179
  br i1 %tobool8, label %if.then, label %if.end, !dbg !5180

if.then:                                          ; preds = %entry
  store i32 -6, ptr %retval, align 4, !dbg !5181
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5181

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %card.addr, align 8, !dbg !5182
  %proc_root = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 23, !dbg !5183
  %4 = load ptr, ptr %proc_root, align 8, !dbg !5183
  %call = call i32 @snd_info_register(ptr noundef %4) #17, !dbg !5184
  store i32 %call, ptr %err, align 4, !dbg !5185
  %5 = load i32, ptr %err, align 4, !dbg !5186
  %cmp = icmp slt i32 %5, 0, !dbg !5188
  br i1 %cmp, label %if.then10, label %if.end11, !dbg !5189

if.then10:                                        ; preds = %if.end
  %6 = load i32, ptr %err, align 4, !dbg !5190
  store i32 %6, ptr %retval, align 4, !dbg !5191
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5191

if.end11:                                         ; preds = %if.end
  %7 = load ptr, ptr %card.addr, align 8, !dbg !5192
  %id = getelementptr inbounds %struct.snd_card, ptr %7, i32 0, i32 1, !dbg !5194
  %arraydecay = getelementptr inbounds [16 x i8], ptr %id, i64 0, i64 0, !dbg !5192
  %8 = load ptr, ptr %card.addr, align 8, !dbg !5195
  %proc_root12 = getelementptr inbounds %struct.snd_card, ptr %8, i32 0, i32 23, !dbg !5196
  %9 = load ptr, ptr %proc_root12, align 8, !dbg !5196
  %name = getelementptr inbounds %struct.snd_info_entry, ptr %9, i32 0, i32 0, !dbg !5197
  %10 = load ptr, ptr %name, align 8, !dbg !5197
  %call13 = call i32 @strcmp(ptr noundef %arraydecay, ptr noundef %10) #17, !dbg !5198
  %tobool14 = icmp ne i32 %call13, 0, !dbg !5198
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !5199

if.then15:                                        ; preds = %if.end11
  store i32 0, ptr %retval, align 4, !dbg !5200
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5200

if.end16:                                         ; preds = %if.end11
  %11 = load ptr, ptr %card.addr, align 8, !dbg !5201
  %proc_root_link = getelementptr inbounds %struct.snd_card, ptr %11, i32 0, i32 24, !dbg !5203
  %12 = load ptr, ptr %proc_root_link, align 8, !dbg !5203
  %tobool17 = icmp ne ptr %12, null, !dbg !5201
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !5204

if.then18:                                        ; preds = %if.end16
  store i32 0, ptr %retval, align 4, !dbg !5205
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5205

if.end19:                                         ; preds = %if.end16
  %13 = load ptr, ptr %card.addr, align 8, !dbg !5206
  %id20 = getelementptr inbounds %struct.snd_card, ptr %13, i32 0, i32 1, !dbg !5207
  %arraydecay21 = getelementptr inbounds [16 x i8], ptr %id20, i64 0, i64 0, !dbg !5206
  %14 = load ptr, ptr @snd_proc_root, align 8, !dbg !5208
  %p22 = getelementptr inbounds %struct.snd_info_entry, ptr %14, i32 0, i32 9, !dbg !5209
  %15 = load ptr, ptr %p22, align 8, !dbg !5209
  %16 = load ptr, ptr %card.addr, align 8, !dbg !5210
  %proc_root23 = getelementptr inbounds %struct.snd_card, ptr %16, i32 0, i32 23, !dbg !5211
  %17 = load ptr, ptr %proc_root23, align 8, !dbg !5211
  %name24 = getelementptr inbounds %struct.snd_info_entry, ptr %17, i32 0, i32 0, !dbg !5212
  %18 = load ptr, ptr %name24, align 8, !dbg !5212
  %call25 = call ptr @proc_symlink(ptr noundef %arraydecay21, ptr noundef %15, ptr noundef %18) #17, !dbg !5213
  store ptr %call25, ptr %p, align 8, !dbg !5214
  %19 = load ptr, ptr %p, align 8, !dbg !5215
  %tobool26 = icmp ne ptr %19, null, !dbg !5215
  br i1 %tobool26, label %if.end28, label %if.then27, !dbg !5217

if.then27:                                        ; preds = %if.end19
  store i32 -12, ptr %retval, align 4, !dbg !5218
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5218

if.end28:                                         ; preds = %if.end19
  %20 = load ptr, ptr %p, align 8, !dbg !5219
  %21 = load ptr, ptr %card.addr, align 8, !dbg !5220
  %proc_root_link29 = getelementptr inbounds %struct.snd_card, ptr %21, i32 0, i32 24, !dbg !5221
  store ptr %20, ptr %proc_root_link29, align 8, !dbg !5222
  store i32 0, ptr %retval, align 4, !dbg !5223
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5223

cleanup:                                          ; preds = %if.end28, %if.then27, %if.then18, %if.then15, %if.then10, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !5224
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !5224
  %22 = load i32, ptr %retval, align 4, !dbg !5224
  ret i32 %22, !dbg !5224
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_info_register(ptr noundef %entry1) #0 align 16 !dbg !5225 {
entry:
  %retval = alloca i32, align 4
  %entry.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr11 = alloca ptr, align 8
  %tmp14 = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5229, metadata !DIExpression()), !dbg !5238
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !5239
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5230, metadata !DIExpression()), !dbg !5240
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !5241
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5231, metadata !DIExpression()), !dbg !5242
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5243
  %p2 = getelementptr inbounds %struct.snd_info_entry, ptr %0, i32 0, i32 9, !dbg !5245
  %1 = load ptr, ptr %p2, align 8, !dbg !5245
  %tobool = icmp ne ptr %1, null, !dbg !5243
  br i1 %tobool, label %if.end4, label %if.then, !dbg !5246

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !5247
  %call = call i32 @__snd_info_register(ptr noundef %2) #17, !dbg !5249
  store i32 %call, ptr %err, align 4, !dbg !5250
  %3 = load i32, ptr %err, align 4, !dbg !5251
  %cmp = icmp slt i32 %3, 0, !dbg !5253
  br i1 %cmp, label %if.then3, label %if.end, !dbg !5254

if.then3:                                         ; preds = %if.then
  %4 = load i32, ptr %err, align 4, !dbg !5255
  store i32 %4, ptr %retval, align 4, !dbg !5256
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5256

if.end:                                           ; preds = %if.then
  br label %if.end4, !dbg !5257

if.end4:                                          ; preds = %if.end, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !5258
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5232, metadata !DIExpression()), !dbg !5258
  %5 = load ptr, ptr %entry.addr, align 8, !dbg !5258
  %children = getelementptr inbounds %struct.snd_info_entry, ptr %5, i32 0, i32 11, !dbg !5258
  %next = getelementptr inbounds %struct.list_head, ptr %children, i32 0, i32 0, !dbg !5258
  %6 = load ptr, ptr %next, align 8, !dbg !5258
  store ptr %6, ptr %__mptr, align 8, !dbg !5258
  %7 = load ptr, ptr %__mptr, align 8, !dbg !5258
  %add.ptr = getelementptr i8, ptr %7, i64 -136, !dbg !5258
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5258
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !5259
  %8 = load ptr, ptr %tmp, align 8, !dbg !5258
  store ptr %8, ptr %p, align 8, !dbg !5259
  br label %for.cond, !dbg !5259

for.cond:                                         ; preds = %for.inc, %if.end4
  %9 = load ptr, ptr %p, align 8, !dbg !5260
  %list = getelementptr inbounds %struct.snd_info_entry, ptr %9, i32 0, i32 12, !dbg !5260
  %10 = load ptr, ptr %entry.addr, align 8, !dbg !5260
  %children5 = getelementptr inbounds %struct.snd_info_entry, ptr %10, i32 0, i32 11, !dbg !5260
  %cmp6 = icmp eq ptr %list, %children5, !dbg !5260
  %lnot = xor i1 %cmp6, true, !dbg !5260
  br i1 %lnot, label %for.body, label %for.end, !dbg !5259

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %p, align 8, !dbg !5261
  %call7 = call i32 @snd_info_register(ptr noundef %11) #17, !dbg !5263
  store i32 %call7, ptr %err, align 4, !dbg !5264
  %12 = load i32, ptr %err, align 4, !dbg !5265
  %cmp8 = icmp slt i32 %12, 0, !dbg !5267
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !5268

if.then9:                                         ; preds = %for.body
  %13 = load i32, ptr %err, align 4, !dbg !5269
  store i32 %13, ptr %retval, align 4, !dbg !5270
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5270

if.end10:                                         ; preds = %for.body
  br label %for.inc, !dbg !5271

for.inc:                                          ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr11) #16, !dbg !5272
  call void @llvm.dbg.declare(metadata ptr %__mptr11, metadata !5235, metadata !DIExpression()), !dbg !5272
  %14 = load ptr, ptr %p, align 8, !dbg !5272
  %list12 = getelementptr inbounds %struct.snd_info_entry, ptr %14, i32 0, i32 12, !dbg !5272
  %next13 = getelementptr inbounds %struct.list_head, ptr %list12, i32 0, i32 0, !dbg !5272
  %15 = load ptr, ptr %next13, align 8, !dbg !5272
  store ptr %15, ptr %__mptr11, align 8, !dbg !5272
  %16 = load ptr, ptr %__mptr11, align 8, !dbg !5272
  %add.ptr15 = getelementptr i8, ptr %16, i64 -136, !dbg !5272
  store ptr %add.ptr15, ptr %tmp14, align 8, !dbg !5272
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr11) #16, !dbg !5260
  %17 = load ptr, ptr %tmp14, align 8, !dbg !5272
  store ptr %17, ptr %p, align 8, !dbg !5260
  br label %for.cond, !dbg !5260, !llvm.loop !5273

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !5275
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5275

cleanup:                                          ; preds = %for.end, %if.then9, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !5276
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !5276
  %18 = load i32, ptr %retval, align 4, !dbg !5276
  ret i32 %18, !dbg !5276
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5277 dso_local ptr @proc_symlink(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @snd_info_card_id_change(ptr noundef %card) #0 align 16 !dbg !5280 {
entry:
  %card.addr = alloca ptr, align 8
  store ptr %card, ptr %card.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %card.addr, metadata !5282, metadata !DIExpression()), !dbg !5283
  call void @mutex_lock(ptr noundef @info_mutex) #17, !dbg !5284
  %0 = load ptr, ptr %card.addr, align 8, !dbg !5285
  %proc_root_link = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 24, !dbg !5287
  %1 = load ptr, ptr %proc_root_link, align 8, !dbg !5287
  %tobool = icmp ne ptr %1, null, !dbg !5285
  br i1 %tobool, label %if.then, label %if.end, !dbg !5288

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %card.addr, align 8, !dbg !5289
  %proc_root_link1 = getelementptr inbounds %struct.snd_card, ptr %2, i32 0, i32 24, !dbg !5291
  %3 = load ptr, ptr %proc_root_link1, align 8, !dbg !5291
  call void @proc_remove(ptr noundef %3) #17, !dbg !5292
  %4 = load ptr, ptr %card.addr, align 8, !dbg !5293
  %proc_root_link2 = getelementptr inbounds %struct.snd_card, ptr %4, i32 0, i32 24, !dbg !5294
  store ptr null, ptr %proc_root_link2, align 8, !dbg !5295
  br label %if.end, !dbg !5296

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %card.addr, align 8, !dbg !5297
  %id = getelementptr inbounds %struct.snd_card, ptr %5, i32 0, i32 1, !dbg !5299
  %arraydecay = getelementptr inbounds [16 x i8], ptr %id, i64 0, i64 0, !dbg !5297
  %6 = load ptr, ptr %card.addr, align 8, !dbg !5300
  %proc_root = getelementptr inbounds %struct.snd_card, ptr %6, i32 0, i32 23, !dbg !5301
  %7 = load ptr, ptr %proc_root, align 8, !dbg !5301
  %name = getelementptr inbounds %struct.snd_info_entry, ptr %7, i32 0, i32 0, !dbg !5302
  %8 = load ptr, ptr %name, align 8, !dbg !5302
  %call = call i32 @strcmp(ptr noundef %arraydecay, ptr noundef %8) #17, !dbg !5303
  %tobool3 = icmp ne i32 %call, 0, !dbg !5303
  br i1 %tobool3, label %if.then4, label %if.end11, !dbg !5304

if.then4:                                         ; preds = %if.end
  %9 = load ptr, ptr %card.addr, align 8, !dbg !5305
  %id5 = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 1, !dbg !5306
  %arraydecay6 = getelementptr inbounds [16 x i8], ptr %id5, i64 0, i64 0, !dbg !5305
  %10 = load ptr, ptr @snd_proc_root, align 8, !dbg !5307
  %p = getelementptr inbounds %struct.snd_info_entry, ptr %10, i32 0, i32 9, !dbg !5308
  %11 = load ptr, ptr %p, align 8, !dbg !5308
  %12 = load ptr, ptr %card.addr, align 8, !dbg !5309
  %proc_root7 = getelementptr inbounds %struct.snd_card, ptr %12, i32 0, i32 23, !dbg !5310
  %13 = load ptr, ptr %proc_root7, align 8, !dbg !5310
  %name8 = getelementptr inbounds %struct.snd_info_entry, ptr %13, i32 0, i32 0, !dbg !5311
  %14 = load ptr, ptr %name8, align 8, !dbg !5311
  %call9 = call ptr @proc_symlink(ptr noundef %arraydecay6, ptr noundef %11, ptr noundef %14) #17, !dbg !5312
  %15 = load ptr, ptr %card.addr, align 8, !dbg !5313
  %proc_root_link10 = getelementptr inbounds %struct.snd_card, ptr %15, i32 0, i32 24, !dbg !5314
  store ptr %call9, ptr %proc_root_link10, align 8, !dbg !5315
  br label %if.end11, !dbg !5313

if.end11:                                         ; preds = %if.then4, %if.end
  call void @mutex_unlock(ptr noundef @info_mutex) #17, !dbg !5316
  ret void, !dbg !5317
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5318 dso_local void @mutex_lock(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5322 dso_local void @proc_remove(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5325 dso_local void @mutex_unlock(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @snd_info_card_disconnect(ptr noundef %card) #0 align 16 !dbg !5326 {
entry:
  %card.addr = alloca ptr, align 8
  store ptr %card, ptr %card.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %card.addr, metadata !5328, metadata !DIExpression()), !dbg !5329
  %0 = load ptr, ptr %card.addr, align 8, !dbg !5330
  %tobool = icmp ne ptr %0, null, !dbg !5330
  br i1 %tobool, label %if.end, label %if.then, !dbg !5332

if.then:                                          ; preds = %entry
  br label %return, !dbg !5333

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %card.addr, align 8, !dbg !5334
  %proc_root_link = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 24, !dbg !5335
  %2 = load ptr, ptr %proc_root_link, align 8, !dbg !5335
  call void @proc_remove(ptr noundef %2) #17, !dbg !5336
  %3 = load ptr, ptr %card.addr, align 8, !dbg !5337
  %proc_root = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 23, !dbg !5339
  %4 = load ptr, ptr %proc_root, align 8, !dbg !5339
  %tobool1 = icmp ne ptr %4, null, !dbg !5337
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !5340

if.then2:                                         ; preds = %if.end
  %5 = load ptr, ptr %card.addr, align 8, !dbg !5341
  %proc_root3 = getelementptr inbounds %struct.snd_card, ptr %5, i32 0, i32 23, !dbg !5342
  %6 = load ptr, ptr %proc_root3, align 8, !dbg !5342
  %p = getelementptr inbounds %struct.snd_info_entry, ptr %6, i32 0, i32 9, !dbg !5343
  %7 = load ptr, ptr %p, align 8, !dbg !5343
  call void @proc_remove(ptr noundef %7) #17, !dbg !5344
  br label %if.end4, !dbg !5344

if.end4:                                          ; preds = %if.then2, %if.end
  call void @mutex_lock(ptr noundef @info_mutex) #17, !dbg !5345
  %8 = load ptr, ptr %card.addr, align 8, !dbg !5346
  %proc_root5 = getelementptr inbounds %struct.snd_card, ptr %8, i32 0, i32 23, !dbg !5348
  %9 = load ptr, ptr %proc_root5, align 8, !dbg !5348
  %tobool6 = icmp ne ptr %9, null, !dbg !5346
  br i1 %tobool6, label %if.then7, label %if.end9, !dbg !5349

if.then7:                                         ; preds = %if.end4
  %10 = load ptr, ptr %card.addr, align 8, !dbg !5350
  %proc_root8 = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 23, !dbg !5351
  %11 = load ptr, ptr %proc_root8, align 8, !dbg !5351
  call void @snd_info_clear_entries(ptr noundef %11) #17, !dbg !5352
  br label %if.end9, !dbg !5352

if.end9:                                          ; preds = %if.then7, %if.end4
  %12 = load ptr, ptr %card.addr, align 8, !dbg !5353
  %proc_root_link10 = getelementptr inbounds %struct.snd_card, ptr %12, i32 0, i32 24, !dbg !5354
  store ptr null, ptr %proc_root_link10, align 8, !dbg !5355
  %13 = load ptr, ptr %card.addr, align 8, !dbg !5356
  %proc_root11 = getelementptr inbounds %struct.snd_card, ptr %13, i32 0, i32 23, !dbg !5357
  store ptr null, ptr %proc_root11, align 8, !dbg !5358
  call void @mutex_unlock(ptr noundef @info_mutex) #17, !dbg !5359
  br label %return, !dbg !5360

return:                                           ; preds = %if.end9, %if.then
  ret void, !dbg !5360
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @snd_info_clear_entries(ptr noundef %entry1) #0 align 16 !dbg !5361 {
entry:
  %entry.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr4 = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5363, metadata !DIExpression()), !dbg !5371
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !5372
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5364, metadata !DIExpression()), !dbg !5373
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5374
  %p2 = getelementptr inbounds %struct.snd_info_entry, ptr %0, i32 0, i32 9, !dbg !5376
  %1 = load ptr, ptr %p2, align 8, !dbg !5376
  %tobool = icmp ne ptr %1, null, !dbg !5374
  br i1 %tobool, label %if.end, label %if.then, !dbg !5377

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5378

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !5379
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5365, metadata !DIExpression()), !dbg !5379
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !5379
  %children = getelementptr inbounds %struct.snd_info_entry, ptr %2, i32 0, i32 11, !dbg !5379
  %next = getelementptr inbounds %struct.list_head, ptr %children, i32 0, i32 0, !dbg !5379
  %3 = load ptr, ptr %next, align 8, !dbg !5379
  store ptr %3, ptr %__mptr, align 8, !dbg !5379
  %4 = load ptr, ptr %__mptr, align 8, !dbg !5379
  %add.ptr = getelementptr i8, ptr %4, i64 -136, !dbg !5379
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5379
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !5380
  %5 = load ptr, ptr %tmp, align 8, !dbg !5379
  store ptr %5, ptr %p, align 8, !dbg !5380
  br label %for.cond, !dbg !5380

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load ptr, ptr %p, align 8, !dbg !5381
  %list = getelementptr inbounds %struct.snd_info_entry, ptr %6, i32 0, i32 12, !dbg !5381
  %7 = load ptr, ptr %entry.addr, align 8, !dbg !5381
  %children3 = getelementptr inbounds %struct.snd_info_entry, ptr %7, i32 0, i32 11, !dbg !5381
  %cmp = icmp eq ptr %list, %children3, !dbg !5381
  %lnot = xor i1 %cmp, true, !dbg !5381
  br i1 %lnot, label %for.body, label %for.end, !dbg !5380

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %p, align 8, !dbg !5382
  call void @snd_info_clear_entries(ptr noundef %8) #17, !dbg !5383
  br label %for.inc, !dbg !5383

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr4) #16, !dbg !5384
  call void @llvm.dbg.declare(metadata ptr %__mptr4, metadata !5368, metadata !DIExpression()), !dbg !5384
  %9 = load ptr, ptr %p, align 8, !dbg !5384
  %list5 = getelementptr inbounds %struct.snd_info_entry, ptr %9, i32 0, i32 12, !dbg !5384
  %next6 = getelementptr inbounds %struct.list_head, ptr %list5, i32 0, i32 0, !dbg !5384
  %10 = load ptr, ptr %next6, align 8, !dbg !5384
  store ptr %10, ptr %__mptr4, align 8, !dbg !5384
  %11 = load ptr, ptr %__mptr4, align 8, !dbg !5384
  %add.ptr8 = getelementptr i8, ptr %11, i64 -136, !dbg !5384
  store ptr %add.ptr8, ptr %tmp7, align 8, !dbg !5384
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr4) #16, !dbg !5381
  %12 = load ptr, ptr %tmp7, align 8, !dbg !5384
  store ptr %12, ptr %p, align 8, !dbg !5381
  br label %for.cond, !dbg !5381, !llvm.loop !5385

for.end:                                          ; preds = %for.cond
  %13 = load ptr, ptr %entry.addr, align 8, !dbg !5387
  %p9 = getelementptr inbounds %struct.snd_info_entry, ptr %13, i32 0, i32 9, !dbg !5388
  store ptr null, ptr %p9, align 8, !dbg !5389
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5390
  br label %cleanup, !dbg !5390

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !5390
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5390

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_info_card_free(ptr noundef %card) #0 align 16 !dbg !5391 {
entry:
  %retval = alloca i32, align 4
  %card.addr = alloca ptr, align 8
  store ptr %card, ptr %card.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %card.addr, metadata !5393, metadata !DIExpression()), !dbg !5394
  %0 = load ptr, ptr %card.addr, align 8, !dbg !5395
  %tobool = icmp ne ptr %0, null, !dbg !5395
  br i1 %tobool, label %if.end, label %if.then, !dbg !5397

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5398
  br label %return, !dbg !5398

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %card.addr, align 8, !dbg !5399
  %proc_root = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 23, !dbg !5400
  %2 = load ptr, ptr %proc_root, align 8, !dbg !5400
  call void @snd_info_free_entry(ptr noundef %2) #17, !dbg !5401
  %3 = load ptr, ptr %card.addr, align 8, !dbg !5402
  %proc_root1 = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 23, !dbg !5403
  store ptr null, ptr %proc_root1, align 8, !dbg !5404
  store i32 0, ptr %retval, align 4, !dbg !5405
  br label %return, !dbg !5405

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, ptr %retval, align 4, !dbg !5406
  ret i32 %4, !dbg !5406
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_info_get_line(ptr noundef %buffer, ptr noundef %line, i32 noundef %len) #0 align 16 !dbg !5407 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca ptr, align 8
  %line.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %c = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !5411, metadata !DIExpression()), !dbg !5418
  store ptr %line, ptr %line.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %line.addr, metadata !5412, metadata !DIExpression()), !dbg !5419
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !5413, metadata !DIExpression()), !dbg !5420
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #16, !dbg !5421
  call void @llvm.dbg.declare(metadata ptr %c, metadata !5414, metadata !DIExpression()), !dbg !5422
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5423
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5415, metadata !DIExpression()), !dbg !5423
  %0 = load ptr, ptr %buffer.addr, align 8, !dbg !5423
  %tobool = icmp ne ptr %0, null, !dbg !5423
  %lnot = xor i1 %tobool, true, !dbg !5423
  %lnot1 = xor i1 %lnot, true, !dbg !5423
  %lnot2 = xor i1 %lnot1, true, !dbg !5423
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5423
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5423
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !5423
  %tobool3 = icmp ne i32 %1, 0, !dbg !5423
  %lnot4 = xor i1 %tobool3, true, !dbg !5423
  %lnot6 = xor i1 %lnot4, true, !dbg !5423
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !5423
  %conv = sext i32 %lnot.ext7 to i64, !dbg !5423
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5423
  store i64 %expval, ptr %tmp, align 8, !dbg !5423
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5424
  %2 = load i64, ptr %tmp, align 8, !dbg !5423
  %tobool8 = icmp ne i64 %2, 0, !dbg !5424
  br i1 %tobool8, label %if.then, label %if.end, !dbg !5425

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !5426
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5426

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %buffer.addr, align 8, !dbg !5427
  %buffer9 = getelementptr inbounds %struct.snd_info_buffer, ptr %3, i32 0, i32 0, !dbg !5429
  %4 = load ptr, ptr %buffer9, align 8, !dbg !5429
  %tobool10 = icmp ne ptr %4, null, !dbg !5427
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !5430

if.then11:                                        ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5431
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5431

if.end12:                                         ; preds = %if.end
  %5 = load i32, ptr %len.addr, align 4, !dbg !5432
  %cmp = icmp sle i32 %5, 0, !dbg !5434
  br i1 %cmp, label %if.then17, label %lor.lhs.false, !dbg !5435

lor.lhs.false:                                    ; preds = %if.end12
  %6 = load ptr, ptr %buffer.addr, align 8, !dbg !5436
  %stop = getelementptr inbounds %struct.snd_info_buffer, ptr %6, i32 0, i32 4, !dbg !5437
  %7 = load i32, ptr %stop, align 4, !dbg !5437
  %tobool14 = icmp ne i32 %7, 0, !dbg !5436
  br i1 %tobool14, label %if.then17, label %lor.lhs.false15, !dbg !5438

lor.lhs.false15:                                  ; preds = %lor.lhs.false
  %8 = load ptr, ptr %buffer.addr, align 8, !dbg !5439
  %error = getelementptr inbounds %struct.snd_info_buffer, ptr %8, i32 0, i32 5, !dbg !5440
  %9 = load i32, ptr %error, align 8, !dbg !5440
  %tobool16 = icmp ne i32 %9, 0, !dbg !5439
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !5441

if.then17:                                        ; preds = %lor.lhs.false15, %lor.lhs.false, %if.end12
  store i32 1, ptr %retval, align 4, !dbg !5442
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5442

if.end18:                                         ; preds = %lor.lhs.false15
  br label %while.cond, !dbg !5443

while.cond:                                       ; preds = %if.end39, %if.end18
  %10 = load ptr, ptr %buffer.addr, align 8, !dbg !5444
  %stop19 = getelementptr inbounds %struct.snd_info_buffer, ptr %10, i32 0, i32 4, !dbg !5445
  %11 = load i32, ptr %stop19, align 4, !dbg !5445
  %tobool20 = icmp ne i32 %11, 0, !dbg !5446
  %lnot21 = xor i1 %tobool20, true, !dbg !5446
  br i1 %lnot21, label %while.body, label %while.end, !dbg !5443

while.body:                                       ; preds = %while.cond
  %12 = load ptr, ptr %buffer.addr, align 8, !dbg !5447
  %buffer23 = getelementptr inbounds %struct.snd_info_buffer, ptr %12, i32 0, i32 0, !dbg !5449
  %13 = load ptr, ptr %buffer23, align 8, !dbg !5449
  %14 = load ptr, ptr %buffer.addr, align 8, !dbg !5450
  %curr = getelementptr inbounds %struct.snd_info_buffer, ptr %14, i32 0, i32 1, !dbg !5451
  %15 = load i32, ptr %curr, align 8, !dbg !5452
  %inc = add i32 %15, 1, !dbg !5452
  store i32 %inc, ptr %curr, align 8, !dbg !5452
  %idxprom = zext i32 %15 to i64, !dbg !5447
  %arrayidx = getelementptr i8, ptr %13, i64 %idxprom, !dbg !5447
  %16 = load i8, ptr %arrayidx, align 1, !dbg !5447
  %conv24 = zext i8 %16 to i32, !dbg !5447
  store i32 %conv24, ptr %c, align 4, !dbg !5453
  %17 = load ptr, ptr %buffer.addr, align 8, !dbg !5454
  %curr25 = getelementptr inbounds %struct.snd_info_buffer, ptr %17, i32 0, i32 1, !dbg !5456
  %18 = load i32, ptr %curr25, align 8, !dbg !5456
  %19 = load ptr, ptr %buffer.addr, align 8, !dbg !5457
  %size = getelementptr inbounds %struct.snd_info_buffer, ptr %19, i32 0, i32 2, !dbg !5458
  %20 = load i32, ptr %size, align 4, !dbg !5458
  %cmp26 = icmp uge i32 %18, %20, !dbg !5459
  br i1 %cmp26, label %if.then28, label %if.end30, !dbg !5460

if.then28:                                        ; preds = %while.body
  %21 = load ptr, ptr %buffer.addr, align 8, !dbg !5461
  %stop29 = getelementptr inbounds %struct.snd_info_buffer, ptr %21, i32 0, i32 4, !dbg !5462
  store i32 1, ptr %stop29, align 4, !dbg !5463
  br label %if.end30, !dbg !5461

if.end30:                                         ; preds = %if.then28, %while.body
  %22 = load i32, ptr %c, align 4, !dbg !5464
  %cmp31 = icmp eq i32 %22, 10, !dbg !5466
  br i1 %cmp31, label %if.then33, label %if.end34, !dbg !5467

if.then33:                                        ; preds = %if.end30
  br label %while.end, !dbg !5468

if.end34:                                         ; preds = %if.end30
  %23 = load i32, ptr %len.addr, align 4, !dbg !5469
  %cmp35 = icmp sgt i32 %23, 1, !dbg !5471
  br i1 %cmp35, label %if.then37, label %if.end39, !dbg !5472

if.then37:                                        ; preds = %if.end34
  %24 = load i32, ptr %len.addr, align 4, !dbg !5473
  %dec = add i32 %24, -1, !dbg !5473
  store i32 %dec, ptr %len.addr, align 4, !dbg !5473
  %25 = load i32, ptr %c, align 4, !dbg !5475
  %conv38 = trunc i32 %25 to i8, !dbg !5475
  %26 = load ptr, ptr %line.addr, align 8, !dbg !5476
  %incdec.ptr = getelementptr i8, ptr %26, i32 1, !dbg !5476
  store ptr %incdec.ptr, ptr %line.addr, align 8, !dbg !5476
  store i8 %conv38, ptr %26, align 1, !dbg !5477
  br label %if.end39, !dbg !5478

if.end39:                                         ; preds = %if.then37, %if.end34
  br label %while.cond, !dbg !5443, !llvm.loop !5479

while.end:                                        ; preds = %if.then33, %while.cond
  %27 = load ptr, ptr %line.addr, align 8, !dbg !5481
  store i8 0, ptr %27, align 1, !dbg !5482
  store i32 0, ptr %retval, align 4, !dbg !5483
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5483

cleanup:                                          ; preds = %while.end, %if.then17, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #16, !dbg !5484
  %28 = load i32, ptr %retval, align 4, !dbg !5484
  ret i32 %28, !dbg !5484
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @snd_info_get_str(ptr noundef %dest, ptr noundef %src, i32 noundef %len) #0 align 16 !dbg !5485 {
entry:
  %dest.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %c = alloca i32, align 4
  store ptr %dest, ptr %dest.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !5489, metadata !DIExpression()), !dbg !5493
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !5490, metadata !DIExpression()), !dbg !5494
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !5491, metadata !DIExpression()), !dbg !5495
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #16, !dbg !5496
  call void @llvm.dbg.declare(metadata ptr %c, metadata !5492, metadata !DIExpression()), !dbg !5497
  br label %while.cond, !dbg !5498

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %src.addr, align 8, !dbg !5499
  %1 = load i8, ptr %0, align 1, !dbg !5500
  %conv = zext i8 %1 to i32, !dbg !5500
  %cmp = icmp eq i32 %conv, 32, !dbg !5501
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !5502

lor.rhs:                                          ; preds = %while.cond
  %2 = load ptr, ptr %src.addr, align 8, !dbg !5503
  %3 = load i8, ptr %2, align 1, !dbg !5504
  %conv2 = zext i8 %3 to i32, !dbg !5504
  %cmp3 = icmp eq i32 %conv2, 9, !dbg !5505
  br label %lor.end, !dbg !5502

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %4 = phi i1 [ true, %while.cond ], [ %cmp3, %lor.rhs ]
  br i1 %4, label %while.body, label %while.end, !dbg !5498

while.body:                                       ; preds = %lor.end
  %5 = load ptr, ptr %src.addr, align 8, !dbg !5506
  %incdec.ptr = getelementptr i8, ptr %5, i32 1, !dbg !5506
  store ptr %incdec.ptr, ptr %src.addr, align 8, !dbg !5506
  br label %while.cond, !dbg !5498, !llvm.loop !5507

while.end:                                        ; preds = %lor.end
  %6 = load ptr, ptr %src.addr, align 8, !dbg !5508
  %7 = load i8, ptr %6, align 1, !dbg !5510
  %conv5 = zext i8 %7 to i32, !dbg !5510
  %cmp6 = icmp eq i32 %conv5, 34, !dbg !5511
  br i1 %cmp6, label %if.then, label %lor.lhs.false, !dbg !5512

lor.lhs.false:                                    ; preds = %while.end
  %8 = load ptr, ptr %src.addr, align 8, !dbg !5513
  %9 = load i8, ptr %8, align 1, !dbg !5514
  %conv8 = zext i8 %9 to i32, !dbg !5514
  %cmp9 = icmp eq i32 %conv8, 39, !dbg !5515
  br i1 %cmp9, label %if.then, label %if.else, !dbg !5516

if.then:                                          ; preds = %lor.lhs.false, %while.end
  %10 = load ptr, ptr %src.addr, align 8, !dbg !5517
  %incdec.ptr11 = getelementptr i8, ptr %10, i32 1, !dbg !5517
  store ptr %incdec.ptr11, ptr %src.addr, align 8, !dbg !5517
  %11 = load i8, ptr %10, align 1, !dbg !5519
  %conv12 = zext i8 %11 to i32, !dbg !5519
  store i32 %conv12, ptr %c, align 4, !dbg !5520
  br label %while.cond13, !dbg !5521

while.cond13:                                     ; preds = %while.body20, %if.then
  %12 = load i32, ptr %len.addr, align 4, !dbg !5522
  %dec = add i32 %12, -1, !dbg !5522
  store i32 %dec, ptr %len.addr, align 4, !dbg !5522
  %cmp14 = icmp sgt i32 %dec, 0, !dbg !5523
  br i1 %cmp14, label %land.lhs.true, label %land.end, !dbg !5524

land.lhs.true:                                    ; preds = %while.cond13
  %13 = load ptr, ptr %src.addr, align 8, !dbg !5525
  %14 = load i8, ptr %13, align 1, !dbg !5526
  %conv16 = zext i8 %14 to i32, !dbg !5526
  %tobool = icmp ne i32 %conv16, 0, !dbg !5526
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !5527

land.rhs:                                         ; preds = %land.lhs.true
  %15 = load ptr, ptr %src.addr, align 8, !dbg !5528
  %16 = load i8, ptr %15, align 1, !dbg !5529
  %conv17 = zext i8 %16 to i32, !dbg !5529
  %17 = load i32, ptr %c, align 4, !dbg !5530
  %cmp18 = icmp ne i32 %conv17, %17, !dbg !5531
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond13
  %18 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond13 ], [ %cmp18, %land.rhs ], !dbg !5532
  br i1 %18, label %while.body20, label %while.end23, !dbg !5521

while.body20:                                     ; preds = %land.end
  %19 = load ptr, ptr %src.addr, align 8, !dbg !5533
  %incdec.ptr21 = getelementptr i8, ptr %19, i32 1, !dbg !5533
  store ptr %incdec.ptr21, ptr %src.addr, align 8, !dbg !5533
  %20 = load i8, ptr %19, align 1, !dbg !5535
  %21 = load ptr, ptr %dest.addr, align 8, !dbg !5536
  %incdec.ptr22 = getelementptr i8, ptr %21, i32 1, !dbg !5536
  store ptr %incdec.ptr22, ptr %dest.addr, align 8, !dbg !5536
  store i8 %20, ptr %21, align 1, !dbg !5537
  br label %while.cond13, !dbg !5521, !llvm.loop !5538

while.end23:                                      ; preds = %land.end
  %22 = load ptr, ptr %src.addr, align 8, !dbg !5540
  %23 = load i8, ptr %22, align 1, !dbg !5542
  %conv24 = zext i8 %23 to i32, !dbg !5542
  %24 = load i32, ptr %c, align 4, !dbg !5543
  %cmp25 = icmp eq i32 %conv24, %24, !dbg !5544
  br i1 %cmp25, label %if.then27, label %if.end, !dbg !5545

if.then27:                                        ; preds = %while.end23
  %25 = load ptr, ptr %src.addr, align 8, !dbg !5546
  %incdec.ptr28 = getelementptr i8, ptr %25, i32 1, !dbg !5546
  store ptr %incdec.ptr28, ptr %src.addr, align 8, !dbg !5546
  br label %if.end, !dbg !5547

if.end:                                           ; preds = %if.then27, %while.end23
  br label %if.end49, !dbg !5548

if.else:                                          ; preds = %lor.lhs.false
  br label %while.cond29, !dbg !5549

while.cond29:                                     ; preds = %while.body45, %if.else
  %26 = load i32, ptr %len.addr, align 4, !dbg !5551
  %dec30 = add i32 %26, -1, !dbg !5551
  store i32 %dec30, ptr %len.addr, align 4, !dbg !5551
  %cmp31 = icmp sgt i32 %dec30, 0, !dbg !5552
  br i1 %cmp31, label %land.lhs.true33, label %land.end44, !dbg !5553

land.lhs.true33:                                  ; preds = %while.cond29
  %27 = load ptr, ptr %src.addr, align 8, !dbg !5554
  %28 = load i8, ptr %27, align 1, !dbg !5555
  %conv34 = zext i8 %28 to i32, !dbg !5555
  %tobool35 = icmp ne i32 %conv34, 0, !dbg !5555
  br i1 %tobool35, label %land.lhs.true36, label %land.end44, !dbg !5556

land.lhs.true36:                                  ; preds = %land.lhs.true33
  %29 = load ptr, ptr %src.addr, align 8, !dbg !5557
  %30 = load i8, ptr %29, align 1, !dbg !5558
  %conv37 = zext i8 %30 to i32, !dbg !5558
  %cmp38 = icmp ne i32 %conv37, 32, !dbg !5559
  br i1 %cmp38, label %land.rhs40, label %land.end44, !dbg !5560

land.rhs40:                                       ; preds = %land.lhs.true36
  %31 = load ptr, ptr %src.addr, align 8, !dbg !5561
  %32 = load i8, ptr %31, align 1, !dbg !5562
  %conv41 = zext i8 %32 to i32, !dbg !5562
  %cmp42 = icmp ne i32 %conv41, 9, !dbg !5563
  br label %land.end44

land.end44:                                       ; preds = %land.rhs40, %land.lhs.true36, %land.lhs.true33, %while.cond29
  %33 = phi i1 [ false, %land.lhs.true36 ], [ false, %land.lhs.true33 ], [ false, %while.cond29 ], [ %cmp42, %land.rhs40 ], !dbg !5564
  br i1 %33, label %while.body45, label %while.end48, !dbg !5549

while.body45:                                     ; preds = %land.end44
  %34 = load ptr, ptr %src.addr, align 8, !dbg !5565
  %incdec.ptr46 = getelementptr i8, ptr %34, i32 1, !dbg !5565
  store ptr %incdec.ptr46, ptr %src.addr, align 8, !dbg !5565
  %35 = load i8, ptr %34, align 1, !dbg !5567
  %36 = load ptr, ptr %dest.addr, align 8, !dbg !5568
  %incdec.ptr47 = getelementptr i8, ptr %36, i32 1, !dbg !5568
  store ptr %incdec.ptr47, ptr %dest.addr, align 8, !dbg !5568
  store i8 %35, ptr %36, align 1, !dbg !5569
  br label %while.cond29, !dbg !5549, !llvm.loop !5570

while.end48:                                      ; preds = %land.end44
  br label %if.end49

if.end49:                                         ; preds = %while.end48, %if.end
  %37 = load ptr, ptr %dest.addr, align 8, !dbg !5572
  store i8 0, ptr %37, align 1, !dbg !5573
  br label %while.cond50, !dbg !5574

while.cond50:                                     ; preds = %while.body59, %if.end49
  %38 = load ptr, ptr %src.addr, align 8, !dbg !5575
  %39 = load i8, ptr %38, align 1, !dbg !5576
  %conv51 = zext i8 %39 to i32, !dbg !5576
  %cmp52 = icmp eq i32 %conv51, 32, !dbg !5577
  br i1 %cmp52, label %lor.end58, label %lor.rhs54, !dbg !5578

lor.rhs54:                                        ; preds = %while.cond50
  %40 = load ptr, ptr %src.addr, align 8, !dbg !5579
  %41 = load i8, ptr %40, align 1, !dbg !5580
  %conv55 = zext i8 %41 to i32, !dbg !5580
  %cmp56 = icmp eq i32 %conv55, 9, !dbg !5581
  br label %lor.end58, !dbg !5578

lor.end58:                                        ; preds = %lor.rhs54, %while.cond50
  %42 = phi i1 [ true, %while.cond50 ], [ %cmp56, %lor.rhs54 ]
  br i1 %42, label %while.body59, label %while.end61, !dbg !5574

while.body59:                                     ; preds = %lor.end58
  %43 = load ptr, ptr %src.addr, align 8, !dbg !5582
  %incdec.ptr60 = getelementptr i8, ptr %43, i32 1, !dbg !5582
  store ptr %incdec.ptr60, ptr %src.addr, align 8, !dbg !5582
  br label %while.cond50, !dbg !5574, !llvm.loop !5583

while.end61:                                      ; preds = %lor.end58
  %44 = load ptr, ptr %src.addr, align 8, !dbg !5584
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #16, !dbg !5585
  ret ptr %44, !dbg !5586
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @snd_info_create_module_entry(ptr noundef %module, ptr noundef %name, ptr noundef %parent) #0 align 16 !dbg !5587 {
entry:
  %module.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  store ptr %module, ptr %module.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %module.addr, metadata !5591, metadata !DIExpression()), !dbg !5594
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5592, metadata !DIExpression()), !dbg !5595
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !5593, metadata !DIExpression()), !dbg !5596
  %0 = load ptr, ptr %parent.addr, align 8, !dbg !5597
  %tobool = icmp ne ptr %0, null, !dbg !5597
  br i1 %tobool, label %if.end, label %if.then, !dbg !5599

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @snd_proc_root, align 8, !dbg !5600
  store ptr %1, ptr %parent.addr, align 8, !dbg !5601
  br label %if.end, !dbg !5602

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %name.addr, align 8, !dbg !5603
  %3 = load ptr, ptr %parent.addr, align 8, !dbg !5604
  %4 = load ptr, ptr %module.addr, align 8, !dbg !5605
  %call = call ptr @snd_info_create_entry(ptr noundef %2, ptr noundef %3, ptr noundef %4) #17, !dbg !5606
  ret ptr %call, !dbg !5607
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @snd_info_create_card_entry(ptr noundef %card, ptr noundef %name, ptr noundef %parent) #0 align 16 !dbg !5608 {
entry:
  %card.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  store ptr %card, ptr %card.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %card.addr, metadata !5612, metadata !DIExpression()), !dbg !5615
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5613, metadata !DIExpression()), !dbg !5616
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !5614, metadata !DIExpression()), !dbg !5617
  %0 = load ptr, ptr %parent.addr, align 8, !dbg !5618
  %tobool = icmp ne ptr %0, null, !dbg !5618
  br i1 %tobool, label %if.end, label %if.then, !dbg !5620

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %card.addr, align 8, !dbg !5621
  %proc_root = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 23, !dbg !5622
  %2 = load ptr, ptr %proc_root, align 8, !dbg !5622
  store ptr %2, ptr %parent.addr, align 8, !dbg !5623
  br label %if.end, !dbg !5624

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %name.addr, align 8, !dbg !5625
  %4 = load ptr, ptr %parent.addr, align 8, !dbg !5626
  %5 = load ptr, ptr %card.addr, align 8, !dbg !5627
  %module = getelementptr inbounds %struct.snd_card, ptr %5, i32 0, i32 8, !dbg !5628
  %6 = load ptr, ptr %module, align 8, !dbg !5628
  %call = call ptr @snd_info_create_entry(ptr noundef %3, ptr noundef %4, ptr noundef %6) #17, !dbg !5629
  ret ptr %call, !dbg !5630
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #5 align 16 !dbg !5631 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5636, metadata !DIExpression()), !dbg !5637
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5638
  call void @__list_del_entry(ptr noundef %0) #17, !dbg !5639
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5640
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5641
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !5642
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !5643
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !5644
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !5645
  ret void, !dbg !5646
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5647 dso_local void @kfree(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__snd_info_register(ptr noundef %entry1) #0 align 16 !dbg !5650 {
entry:
  %retval = alloca i32, align 4
  %entry.addr = alloca ptr, align 8
  %root = alloca ptr, align 8
  %p = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %ops = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5652, metadata !DIExpression()), !dbg !5663
  call void @llvm.lifetime.start.p0(i64 8, ptr %root) #16, !dbg !5664
  call void @llvm.dbg.declare(metadata ptr %root, metadata !5653, metadata !DIExpression()), !dbg !5665
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !5664
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5654, metadata !DIExpression()), !dbg !5666
  store ptr null, ptr %p, align 8, !dbg !5666
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5667
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5655, metadata !DIExpression()), !dbg !5667
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5667
  %tobool = icmp ne ptr %0, null, !dbg !5667
  %lnot = xor i1 %tobool, true, !dbg !5667
  %lnot2 = xor i1 %lnot, true, !dbg !5667
  %lnot3 = xor i1 %lnot2, true, !dbg !5667
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5667
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5667
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !5667
  %tobool4 = icmp ne i32 %1, 0, !dbg !5667
  %lnot5 = xor i1 %tobool4, true, !dbg !5667
  %lnot7 = xor i1 %lnot5, true, !dbg !5667
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !5667
  %conv = sext i32 %lnot.ext8 to i64, !dbg !5667
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5667
  store i64 %expval, ptr %tmp, align 8, !dbg !5667
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5668
  %2 = load i64, ptr %tmp, align 8, !dbg !5667
  %tobool9 = icmp ne i64 %2, 0, !dbg !5668
  br i1 %tobool9, label %if.then, label %if.end, !dbg !5669

if.then:                                          ; preds = %entry
  store i32 -6, ptr %retval, align 4, !dbg !5670
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup41, !dbg !5670

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !5671
  %parent = getelementptr inbounds %struct.snd_info_entry, ptr %3, i32 0, i32 5, !dbg !5672
  %4 = load ptr, ptr %parent, align 8, !dbg !5672
  %cmp = icmp eq ptr %4, null, !dbg !5673
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5671

cond.true:                                        ; preds = %if.end
  %5 = load ptr, ptr @snd_proc_root, align 8, !dbg !5674
  %p11 = getelementptr inbounds %struct.snd_info_entry, ptr %5, i32 0, i32 9, !dbg !5675
  %6 = load ptr, ptr %p11, align 8, !dbg !5675
  br label %cond.end, !dbg !5671

cond.false:                                       ; preds = %if.end
  %7 = load ptr, ptr %entry.addr, align 8, !dbg !5676
  %parent12 = getelementptr inbounds %struct.snd_info_entry, ptr %7, i32 0, i32 5, !dbg !5677
  %8 = load ptr, ptr %parent12, align 8, !dbg !5677
  %p13 = getelementptr inbounds %struct.snd_info_entry, ptr %8, i32 0, i32 9, !dbg !5678
  %9 = load ptr, ptr %p13, align 8, !dbg !5678
  br label %cond.end, !dbg !5671

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %6, %cond.true ], [ %9, %cond.false ], !dbg !5671
  store ptr %cond, ptr %root, align 8, !dbg !5679
  call void @mutex_lock(ptr noundef @info_mutex) #17, !dbg !5680
  %10 = load ptr, ptr %entry.addr, align 8, !dbg !5681
  %p14 = getelementptr inbounds %struct.snd_info_entry, ptr %10, i32 0, i32 9, !dbg !5683
  %11 = load ptr, ptr %p14, align 8, !dbg !5683
  %tobool15 = icmp ne ptr %11, null, !dbg !5681
  br i1 %tobool15, label %if.then17, label %lor.lhs.false, !dbg !5684

lor.lhs.false:                                    ; preds = %cond.end
  %12 = load ptr, ptr %root, align 8, !dbg !5685
  %tobool16 = icmp ne ptr %12, null, !dbg !5685
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !5686

if.then17:                                        ; preds = %lor.lhs.false, %cond.end
  br label %unlock, !dbg !5687

if.end18:                                         ; preds = %lor.lhs.false
  %13 = load ptr, ptr %entry.addr, align 8, !dbg !5688
  %mode = getelementptr inbounds %struct.snd_info_entry, ptr %13, i32 0, i32 1, !dbg !5688
  %14 = load i16, ptr %mode, align 8, !dbg !5688
  %conv19 = zext i16 %14 to i32, !dbg !5688
  %and = and i32 %conv19, 61440, !dbg !5688
  %cmp20 = icmp eq i32 %and, 16384, !dbg !5688
  br i1 %cmp20, label %if.then22, label %if.else, !dbg !5689

if.then22:                                        ; preds = %if.end18
  %15 = load ptr, ptr %entry.addr, align 8, !dbg !5690
  %name = getelementptr inbounds %struct.snd_info_entry, ptr %15, i32 0, i32 0, !dbg !5692
  %16 = load ptr, ptr %name, align 8, !dbg !5692
  %17 = load ptr, ptr %entry.addr, align 8, !dbg !5693
  %mode23 = getelementptr inbounds %struct.snd_info_entry, ptr %17, i32 0, i32 1, !dbg !5694
  %18 = load i16, ptr %mode23, align 8, !dbg !5694
  %19 = load ptr, ptr %root, align 8, !dbg !5695
  %call = call ptr @proc_mkdir_mode(ptr noundef %16, i16 noundef zeroext %18, ptr noundef %19) #17, !dbg !5696
  store ptr %call, ptr %p, align 8, !dbg !5697
  %20 = load ptr, ptr %p, align 8, !dbg !5698
  %tobool24 = icmp ne ptr %20, null, !dbg !5698
  br i1 %tobool24, label %if.end26, label %if.then25, !dbg !5700

if.then25:                                        ; preds = %if.then22
  call void @mutex_unlock(ptr noundef @info_mutex) #17, !dbg !5701
  store i32 -12, ptr %retval, align 4, !dbg !5703
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup41, !dbg !5703

if.end26:                                         ; preds = %if.then22
  br label %if.end39, !dbg !5704

if.else:                                          ; preds = %if.end18
  call void @llvm.lifetime.start.p0(i64 8, ptr %ops) #16, !dbg !5705
  call void @llvm.dbg.declare(metadata ptr %ops, metadata !5658, metadata !DIExpression()), !dbg !5706
  %21 = load ptr, ptr %entry.addr, align 8, !dbg !5707
  %content = getelementptr inbounds %struct.snd_info_entry, ptr %21, i32 0, i32 3, !dbg !5709
  %22 = load i16, ptr %content, align 8, !dbg !5709
  %conv27 = zext i16 %22 to i32, !dbg !5707
  %cmp28 = icmp eq i32 %conv27, 1, !dbg !5710
  br i1 %cmp28, label %if.then30, label %if.else31, !dbg !5711

if.then30:                                        ; preds = %if.else
  store ptr @snd_info_entry_operations, ptr %ops, align 8, !dbg !5712
  br label %if.end32, !dbg !5713

if.else31:                                        ; preds = %if.else
  store ptr @snd_info_text_entry_ops, ptr %ops, align 8, !dbg !5714
  br label %if.end32

if.end32:                                         ; preds = %if.else31, %if.then30
  %23 = load ptr, ptr %entry.addr, align 8, !dbg !5715
  %name33 = getelementptr inbounds %struct.snd_info_entry, ptr %23, i32 0, i32 0, !dbg !5716
  %24 = load ptr, ptr %name33, align 8, !dbg !5716
  %25 = load ptr, ptr %entry.addr, align 8, !dbg !5717
  %mode34 = getelementptr inbounds %struct.snd_info_entry, ptr %25, i32 0, i32 1, !dbg !5718
  %26 = load i16, ptr %mode34, align 8, !dbg !5718
  %27 = load ptr, ptr %root, align 8, !dbg !5719
  %28 = load ptr, ptr %ops, align 8, !dbg !5720
  %29 = load ptr, ptr %entry.addr, align 8, !dbg !5721
  %call35 = call ptr @proc_create_data(ptr noundef %24, i16 noundef zeroext %26, ptr noundef %27, ptr noundef %28, ptr noundef %29) #17, !dbg !5722
  store ptr %call35, ptr %p, align 8, !dbg !5723
  %30 = load ptr, ptr %p, align 8, !dbg !5724
  %tobool36 = icmp ne ptr %30, null, !dbg !5724
  br i1 %tobool36, label %if.end38, label %if.then37, !dbg !5726

if.then37:                                        ; preds = %if.end32
  call void @mutex_unlock(ptr noundef @info_mutex) #17, !dbg !5727
  store i32 -12, ptr %retval, align 4, !dbg !5729
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5729

if.end38:                                         ; preds = %if.end32
  %31 = load ptr, ptr %p, align 8, !dbg !5730
  %32 = load ptr, ptr %entry.addr, align 8, !dbg !5731
  %size = getelementptr inbounds %struct.snd_info_entry, ptr %32, i32 0, i32 2, !dbg !5732
  %33 = load i64, ptr %size, align 8, !dbg !5732
  call void @proc_set_size(ptr noundef %31, i64 noundef %33) #17, !dbg !5733
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5734
  br label %cleanup, !dbg !5734

cleanup:                                          ; preds = %if.end38, %if.then37
  call void @llvm.lifetime.end.p0(i64 8, ptr %ops) #16, !dbg !5734
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup41 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end39

if.end39:                                         ; preds = %cleanup.cont, %if.end26
  %34 = load ptr, ptr %p, align 8, !dbg !5735
  %35 = load ptr, ptr %entry.addr, align 8, !dbg !5736
  %p40 = getelementptr inbounds %struct.snd_info_entry, ptr %35, i32 0, i32 9, !dbg !5737
  store ptr %34, ptr %p40, align 8, !dbg !5738
  br label %unlock, !dbg !5736

unlock:                                           ; preds = %if.end39, %if.then17
  call void @llvm.dbg.label(metadata !5662), !dbg !5739
  call void @mutex_unlock(ptr noundef @info_mutex) #17, !dbg !5740
  store i32 0, ptr %retval, align 4, !dbg !5741
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup41, !dbg !5741

cleanup41:                                        ; preds = %unlock, %cleanup, %if.then25, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !5742
  call void @llvm.lifetime.end.p0(i64 8, ptr %root) #16, !dbg !5742
  %36 = load i32, ptr %retval, align 4, !dbg !5742
  ret i32 %36, !dbg !5742
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_card_rw_proc_new(ptr noundef %card, ptr noundef %name, ptr noundef %private_data, ptr noundef %read, ptr noundef %write) #0 align 16 !dbg !5743 {
entry:
  %retval = alloca i32, align 4
  %card.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %private_data.addr = alloca ptr, align 8
  %read.addr = alloca ptr, align 8
  %write.addr = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %card, ptr %card.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %card.addr, metadata !5747, metadata !DIExpression()), !dbg !5753
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5748, metadata !DIExpression()), !dbg !5754
  store ptr %private_data, ptr %private_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %private_data.addr, metadata !5749, metadata !DIExpression()), !dbg !5755
  store ptr %read, ptr %read.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %read.addr, metadata !5750, metadata !DIExpression()), !dbg !5756
  store ptr %write, ptr %write.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %write.addr, metadata !5751, metadata !DIExpression()), !dbg !5757
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #16, !dbg !5758
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !5752, metadata !DIExpression()), !dbg !5759
  %0 = load ptr, ptr %card.addr, align 8, !dbg !5760
  %1 = load ptr, ptr %name.addr, align 8, !dbg !5761
  %2 = load ptr, ptr %card.addr, align 8, !dbg !5762
  %proc_root = getelementptr inbounds %struct.snd_card, ptr %2, i32 0, i32 23, !dbg !5763
  %3 = load ptr, ptr %proc_root, align 8, !dbg !5763
  %call = call ptr @snd_info_create_card_entry(ptr noundef %0, ptr noundef %1, ptr noundef %3) #17, !dbg !5764
  store ptr %call, ptr %entry1, align 8, !dbg !5765
  %4 = load ptr, ptr %entry1, align 8, !dbg !5766
  %tobool = icmp ne ptr %4, null, !dbg !5766
  br i1 %tobool, label %if.end, label %if.then, !dbg !5768

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !5769
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5769

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %entry1, align 8, !dbg !5770
  %6 = load ptr, ptr %private_data.addr, align 8, !dbg !5771
  %7 = load ptr, ptr %read.addr, align 8, !dbg !5772
  call void @snd_info_set_text_ops(ptr noundef %5, ptr noundef %6, ptr noundef %7) #17, !dbg !5773
  %8 = load ptr, ptr %write.addr, align 8, !dbg !5774
  %tobool2 = icmp ne ptr %8, null, !dbg !5774
  br i1 %tobool2, label %if.then3, label %if.end6, !dbg !5776

if.then3:                                         ; preds = %if.end
  %9 = load ptr, ptr %entry1, align 8, !dbg !5777
  %mode = getelementptr inbounds %struct.snd_info_entry, ptr %9, i32 0, i32 1, !dbg !5779
  %10 = load i16, ptr %mode, align 8, !dbg !5780
  %conv = zext i16 %10 to i32, !dbg !5780
  %or = or i32 %conv, 128, !dbg !5780
  %conv4 = trunc i32 %or to i16, !dbg !5780
  store i16 %conv4, ptr %mode, align 8, !dbg !5780
  %11 = load ptr, ptr %write.addr, align 8, !dbg !5781
  %12 = load ptr, ptr %entry1, align 8, !dbg !5782
  %c = getelementptr inbounds %struct.snd_info_entry, ptr %12, i32 0, i32 4, !dbg !5783
  %write5 = getelementptr inbounds %struct.snd_info_entry_text, ptr %c, i32 0, i32 1, !dbg !5784
  store ptr %11, ptr %write5, align 8, !dbg !5785
  br label %if.end6, !dbg !5786

if.end6:                                          ; preds = %if.then3, %if.end
  store i32 0, ptr %retval, align 4, !dbg !5787
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5787

cleanup:                                          ; preds = %if.end6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #16, !dbg !5788
  %13 = load i32, ptr %retval, align 4, !dbg !5788
  ret i32 %13, !dbg !5788
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @snd_info_set_text_ops(ptr noundef %entry1, ptr noundef %private_data, ptr noundef %read) #5 align 16 !dbg !5789 {
entry:
  %entry.addr = alloca ptr, align 8
  %private_data.addr = alloca ptr, align 8
  %read.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5793, metadata !DIExpression()), !dbg !5796
  store ptr %private_data, ptr %private_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %private_data.addr, metadata !5794, metadata !DIExpression()), !dbg !5797
  store ptr %read, ptr %read.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %read.addr, metadata !5795, metadata !DIExpression()), !dbg !5798
  %0 = load ptr, ptr %private_data.addr, align 8, !dbg !5799
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5800
  %private_data2 = getelementptr inbounds %struct.snd_info_entry, ptr %1, i32 0, i32 7, !dbg !5801
  store ptr %0, ptr %private_data2, align 8, !dbg !5802
  %2 = load ptr, ptr %read.addr, align 8, !dbg !5803
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !5804
  %c = getelementptr inbounds %struct.snd_info_entry, ptr %3, i32 0, i32 4, !dbg !5805
  %read3 = getelementptr inbounds %struct.snd_info_entry_text, ptr %c, i32 0, i32 0, !dbg !5806
  store ptr %2, ptr %read3, align 8, !dbg !5807
  ret void, !dbg !5808
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5809 dso_local void @seq_printf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !5812 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5816, metadata !DIExpression()), !dbg !5818
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5817, metadata !DIExpression()), !dbg !5819
  %0 = load i64, ptr %size.addr, align 8, !dbg !5820
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5821
  %or = or i32 %1, 256, !dbg !5822
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #18, !dbg !5823
  ret ptr %call, !dbg !5824
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5825 dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5828 dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #5 align 16 !dbg !5832 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !5834, metadata !DIExpression()), !dbg !5835
  br label %do.body, !dbg !5836

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5837

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5839

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5837

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !5841
  %1 = load ptr, ptr %list.addr, align 8, !dbg !5841
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5841
  store volatile ptr %0, ptr %next, align 8, !dbg !5841
  br label %do.end3, !dbg !5841

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5837

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !5843

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !5844

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !5846

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !5844

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !5848
  %3 = load ptr, ptr %list.addr, align 8, !dbg !5848
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !5848
  store volatile ptr %2, ptr %prev, align 8, !dbg !5848
  br label %do.end9, !dbg !5848

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !5844

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !5850
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #5 align 16 !dbg !5851 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5855, metadata !DIExpression()), !dbg !5857
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5856, metadata !DIExpression()), !dbg !5858
  %0 = load ptr, ptr %new.addr, align 8, !dbg !5859
  %1 = load ptr, ptr %head.addr, align 8, !dbg !5860
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5861
  %2 = load ptr, ptr %prev, align 8, !dbg !5861
  %3 = load ptr, ptr %head.addr, align 8, !dbg !5862
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #17, !dbg !5863
  ret void, !dbg !5864
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !5865 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5867, metadata !DIExpression()), !dbg !5872
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5868, metadata !DIExpression()), !dbg !5873
  %0 = load i64, ptr %size.addr, align 8, !dbg !5874
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5875
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5876

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5877
  %tobool = icmp ne i64 %2, 0, !dbg !5877
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5878

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !5879
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5869, metadata !DIExpression()), !dbg !5880
  %3 = load i64, ptr %size.addr, align 8, !dbg !5881
  %cmp = icmp ugt i64 %3, 8192, !dbg !5883
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5884

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5885
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5886
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #18, !dbg !5887
  store ptr %call, ptr %retval, align 8, !dbg !5888
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5888

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5889
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !5889
  store i32 %call2, ptr %index, align 4, !dbg !5890
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5891
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5892
  %9 = ptrtoint ptr %8 to i64, !dbg !5892
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !5893
  %idxprom = zext i32 %call3 to i64, !dbg !5894
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5894
  %10 = load i32, ptr %index, align 4, !dbg !5895
  %idxprom4 = zext i32 %10 to i64, !dbg !5894
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5894
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5894
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5896
  %13 = load i64, ptr %size.addr, align 8, !dbg !5897
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #19, !dbg !5898
  store ptr %call6, ptr %retval, align 8, !dbg !5899
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5899

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !5900
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5901
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5902
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #18, !dbg !5903
  store ptr %call8, ptr %retval, align 8, !dbg !5904
  br label %return, !dbg !5904

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5905
  ret ptr %16, !dbg !5905
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5906 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #11 align 16 !dbg !5907 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5911, metadata !DIExpression()), !dbg !5913
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5912, metadata !DIExpression()), !dbg !5914
  %0 = load i64, ptr %size.addr, align 8, !dbg !5915
  %tobool = icmp ne i64 %0, 0, !dbg !5915
  br i1 %tobool, label %if.end, label %if.then, !dbg !5917

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5918
  br label %return, !dbg !5918

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5919
  %cmp = icmp ule i64 %1, 8, !dbg !5921
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5922

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5923
  br label %return, !dbg !5923

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5924
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5926
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5927

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5928
  %cmp4 = icmp ule i64 %3, 96, !dbg !5929
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5930

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5931
  br label %return, !dbg !5931

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5932
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5934
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5935

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5936
  %cmp9 = icmp ule i64 %5, 192, !dbg !5937
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5938

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5939
  br label %return, !dbg !5939

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5940
  %cmp12 = icmp ule i64 %6, 8, !dbg !5942
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5943

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5944
  br label %return, !dbg !5944

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5945
  %cmp15 = icmp ule i64 %7, 16, !dbg !5947
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5948

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5949
  br label %return, !dbg !5949

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5950
  %cmp18 = icmp ule i64 %8, 32, !dbg !5952
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5953

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5954
  br label %return, !dbg !5954

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5955
  %cmp21 = icmp ule i64 %9, 64, !dbg !5957
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5958

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5959
  br label %return, !dbg !5959

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5960
  %cmp24 = icmp ule i64 %10, 128, !dbg !5962
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5963

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5964
  br label %return, !dbg !5964

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5965
  %cmp27 = icmp ule i64 %11, 256, !dbg !5967
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5968

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5969
  br label %return, !dbg !5969

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5970
  %cmp30 = icmp ule i64 %12, 512, !dbg !5972
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5973

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5974
  br label %return, !dbg !5974

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5975
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5977
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5978

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5979
  br label %return, !dbg !5979

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5980
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5982
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5983

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5984
  br label %return, !dbg !5984

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5985
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5987
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5988

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5989
  br label %return, !dbg !5989

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5990
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5992
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5993

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5994
  br label %return, !dbg !5994

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5995
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5997
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5998

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5999
  br label %return, !dbg !5999

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6000
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6002
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6003

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6004
  br label %return, !dbg !6004

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6005
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6007
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6008

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6009
  br label %return, !dbg !6009

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6010
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6012
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6013

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6014
  br label %return, !dbg !6014

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6015
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6017
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6018

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6019
  br label %return, !dbg !6019

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6020
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6022
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6023

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6024
  br label %return, !dbg !6024

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6025
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6027
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6028

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6029
  br label %return, !dbg !6029

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6030
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6032
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6033

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6034
  br label %return, !dbg !6034

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6035, !range !6037, !noundef !549
  %tobool69 = trunc i8 %25 to i1, !dbg !6035
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6038

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6039

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_206() #20, !dbg !6040, !srcloc !6043
  unreachable, !dbg !6040

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6044

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6045

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6046

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6048

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6046

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.17, i32 480, i32 0, i64 12) #16, !dbg !6050, !srcloc !6052
  br label %do.end75, !dbg !6050

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6046

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6053
  br label %return, !dbg !6053

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6054
  ret i32 %26, !dbg !6054
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6055 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #11 align 16 !dbg !6061 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6065, metadata !DIExpression()), !dbg !6067
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6066, metadata !DIExpression()), !dbg !6068
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6069
  %and = and i32 %0, 17, !dbg !6069
  %cmp = icmp eq i32 %and, 0, !dbg !6069
  %lnot = xor i1 %cmp, true, !dbg !6069
  %lnot1 = xor i1 %lnot, true, !dbg !6069
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6069
  %conv = sext i32 %lnot.ext to i64, !dbg !6069
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6069
  %tobool = icmp ne i64 %expval, 0, !dbg !6069
  br i1 %tobool, label %if.then, label %if.end, !dbg !6071

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6072
  br label %return, !dbg !6072

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6073
  %and2 = and i32 %1, 1, !dbg !6075
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6075
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6076

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6077
  br label %return, !dbg !6077

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6078
  br label %return, !dbg !6078

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6080
  ret i32 %2, !dbg !6080
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6081 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6082 dso_local void @__compiletime_assert_206() #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !6083 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6087, metadata !DIExpression()), !dbg !6090
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6088, metadata !DIExpression()), !dbg !6091
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6089, metadata !DIExpression()), !dbg !6092
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6093
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !6095
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6096
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17, !dbg !6097
  br i1 %call, label %if.end, label %if.then, !dbg !6098

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !6099

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !6100
  %4 = load ptr, ptr %next.addr, align 8, !dbg !6101
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !6102
  store ptr %3, ptr %prev1, align 8, !dbg !6103
  %5 = load ptr, ptr %next.addr, align 8, !dbg !6104
  %6 = load ptr, ptr %new.addr, align 8, !dbg !6105
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !6106
  store ptr %5, ptr %next2, align 8, !dbg !6107
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !6108
  %8 = load ptr, ptr %new.addr, align 8, !dbg !6109
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !6110
  store ptr %7, ptr %prev3, align 8, !dbg !6111
  br label %do.body, !dbg !6112

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !6113

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !6115

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !6113

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !6117
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !6117
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !6117
  store volatile ptr %9, ptr %next6, align 8, !dbg !6117
  br label %do.end7, !dbg !6117

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !6113

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !6119
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !6120 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6124, metadata !DIExpression()), !dbg !6127
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6125, metadata !DIExpression()), !dbg !6128
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6126, metadata !DIExpression()), !dbg !6129
  ret i1 true, !dbg !6130
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #5 align 16 !dbg !6131 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6133, metadata !DIExpression()), !dbg !6134
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6135
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #17, !dbg !6137
  br i1 %call, label %if.end, label %if.then, !dbg !6138

if.then:                                          ; preds = %entry
  br label %return, !dbg !6139

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6140
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6141
  %2 = load ptr, ptr %prev, align 8, !dbg !6141
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !6142
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6143
  %4 = load ptr, ptr %next, align 8, !dbg !6143
  call void @__list_del(ptr noundef %2, ptr noundef %4) #17, !dbg !6144
  br label %return, !dbg !6145

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6145
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #5 align 16 !dbg !6146 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6150, metadata !DIExpression()), !dbg !6151
  ret i1 true, !dbg !6152
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !6153 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6155, metadata !DIExpression()), !dbg !6157
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6156, metadata !DIExpression()), !dbg !6158
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !6159
  %1 = load ptr, ptr %next.addr, align 8, !dbg !6160
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6161
  store ptr %0, ptr %prev1, align 8, !dbg !6162
  br label %do.body, !dbg !6163

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6164

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !6166

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !6164

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6168
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !6168
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6168
  store volatile ptr %2, ptr %next4, align 8, !dbg !6168
  br label %do.end5, !dbg !6168

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !6164

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !6170
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6171 dso_local ptr @proc_mkdir_mode(ptr noundef, i16 noundef zeroext, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6174 dso_local ptr @proc_create_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6177 dso_local void @proc_set_size(ptr noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @snd_info_entry_open(ptr noundef %inode, ptr noundef %file) #0 align 16 !dbg !6180 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %data = alloca ptr, align 8
  %mode = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6182, metadata !DIExpression()), !dbg !6197
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6183, metadata !DIExpression()), !dbg !6198
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #16, !dbg !6199
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !6184, metadata !DIExpression()), !dbg !6200
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !6201
  %call = call ptr @pde_data(ptr noundef %0) #17, !dbg !6202
  store ptr %call, ptr %entry1, align 8, !dbg !6200
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #16, !dbg !6203
  call void @llvm.dbg.declare(metadata ptr %data, metadata !6185, metadata !DIExpression()), !dbg !6204
  call void @llvm.lifetime.start.p0(i64 4, ptr %mode) #16, !dbg !6205
  call void @llvm.dbg.declare(metadata ptr %mode, metadata !6193, metadata !DIExpression()), !dbg !6206
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !6205
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6194, metadata !DIExpression()), !dbg !6207
  call void @mutex_lock(ptr noundef @info_mutex) #17, !dbg !6208
  %1 = load ptr, ptr %entry1, align 8, !dbg !6209
  %call2 = call i32 @alloc_info_private(ptr noundef %1, ptr noundef %data) #17, !dbg !6210
  store i32 %call2, ptr %err, align 4, !dbg !6211
  %2 = load i32, ptr %err, align 4, !dbg !6212
  %cmp = icmp slt i32 %2, 0, !dbg !6214
  br i1 %cmp, label %if.then, label %if.end, !dbg !6215

if.then:                                          ; preds = %entry
  br label %unlock, !dbg !6216

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %file.addr, align 8, !dbg !6217
  %f_flags = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 6, !dbg !6218
  %4 = load i32, ptr %f_flags, align 8, !dbg !6218
  %and = and i32 %4, 3, !dbg !6219
  store i32 %and, ptr %mode, align 4, !dbg !6220
  %5 = load i32, ptr %mode, align 4, !dbg !6221
  %cmp3 = icmp eq i32 %5, 0, !dbg !6223
  br i1 %cmp3, label %land.lhs.true, label %lor.lhs.false, !dbg !6224

lor.lhs.false:                                    ; preds = %if.end
  %6 = load i32, ptr %mode, align 4, !dbg !6225
  %cmp4 = icmp eq i32 %6, 2, !dbg !6226
  br i1 %cmp4, label %land.lhs.true, label %lor.lhs.false5, !dbg !6227

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end
  %7 = load ptr, ptr %entry1, align 8, !dbg !6228
  %c = getelementptr inbounds %struct.snd_info_entry, ptr %7, i32 0, i32 4, !dbg !6229
  %8 = load ptr, ptr %c, align 8, !dbg !6230
  %read = getelementptr inbounds %struct.snd_info_entry_ops, ptr %8, i32 0, i32 2, !dbg !6231
  %9 = load ptr, ptr %read, align 8, !dbg !6231
  %tobool = icmp ne ptr %9, null, !dbg !6228
  br i1 %tobool, label %lor.lhs.false5, label %if.then12, !dbg !6232

lor.lhs.false5:                                   ; preds = %land.lhs.true, %lor.lhs.false
  %10 = load i32, ptr %mode, align 4, !dbg !6233
  %cmp6 = icmp eq i32 %10, 1, !dbg !6234
  br i1 %cmp6, label %land.lhs.true9, label %lor.lhs.false7, !dbg !6235

lor.lhs.false7:                                   ; preds = %lor.lhs.false5
  %11 = load i32, ptr %mode, align 4, !dbg !6236
  %cmp8 = icmp eq i32 %11, 2, !dbg !6237
  br i1 %cmp8, label %land.lhs.true9, label %if.end13, !dbg !6238

land.lhs.true9:                                   ; preds = %lor.lhs.false7, %lor.lhs.false5
  %12 = load ptr, ptr %entry1, align 8, !dbg !6239
  %c10 = getelementptr inbounds %struct.snd_info_entry, ptr %12, i32 0, i32 4, !dbg !6240
  %13 = load ptr, ptr %c10, align 8, !dbg !6241
  %write = getelementptr inbounds %struct.snd_info_entry_ops, ptr %13, i32 0, i32 3, !dbg !6242
  %14 = load ptr, ptr %write, align 8, !dbg !6242
  %tobool11 = icmp ne ptr %14, null, !dbg !6239
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !6243

if.then12:                                        ; preds = %land.lhs.true9, %land.lhs.true
  store i32 -19, ptr %err, align 4, !dbg !6244
  br label %error, !dbg !6246

if.end13:                                         ; preds = %land.lhs.true9, %lor.lhs.false7
  %15 = load ptr, ptr %entry1, align 8, !dbg !6247
  %c14 = getelementptr inbounds %struct.snd_info_entry, ptr %15, i32 0, i32 4, !dbg !6249
  %16 = load ptr, ptr %c14, align 8, !dbg !6250
  %open = getelementptr inbounds %struct.snd_info_entry_ops, ptr %16, i32 0, i32 0, !dbg !6251
  %17 = load ptr, ptr %open, align 8, !dbg !6251
  %tobool15 = icmp ne ptr %17, null, !dbg !6247
  br i1 %tobool15, label %if.then16, label %if.end24, !dbg !6252

if.then16:                                        ; preds = %if.end13
  %18 = load ptr, ptr %entry1, align 8, !dbg !6253
  %c17 = getelementptr inbounds %struct.snd_info_entry, ptr %18, i32 0, i32 4, !dbg !6255
  %19 = load ptr, ptr %c17, align 8, !dbg !6256
  %open18 = getelementptr inbounds %struct.snd_info_entry_ops, ptr %19, i32 0, i32 0, !dbg !6257
  %20 = load ptr, ptr %open18, align 8, !dbg !6257
  %21 = load ptr, ptr %entry1, align 8, !dbg !6258
  %22 = load i32, ptr %mode, align 4, !dbg !6259
  %conv = trunc i32 %22 to i16, !dbg !6259
  %23 = load ptr, ptr %data, align 8, !dbg !6260
  %file_private_data = getelementptr inbounds %struct.snd_info_private_data, ptr %23, i32 0, i32 3, !dbg !6261
  %call19 = call i32 %20(ptr noundef %21, i16 noundef zeroext %conv, ptr noundef %file_private_data) #17, !dbg !6253
  store i32 %call19, ptr %err, align 4, !dbg !6262
  %24 = load i32, ptr %err, align 4, !dbg !6263
  %cmp20 = icmp slt i32 %24, 0, !dbg !6265
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !6266

if.then22:                                        ; preds = %if.then16
  br label %error, !dbg !6267

if.end23:                                         ; preds = %if.then16
  br label %if.end24, !dbg !6268

if.end24:                                         ; preds = %if.end23, %if.end13
  %25 = load ptr, ptr %data, align 8, !dbg !6269
  %26 = load ptr, ptr %file.addr, align 8, !dbg !6270
  %private_data = getelementptr inbounds %struct.file, ptr %26, i32 0, i32 15, !dbg !6271
  store ptr %25, ptr %private_data, align 8, !dbg !6272
  call void @mutex_unlock(ptr noundef @info_mutex) #17, !dbg !6273
  store i32 0, ptr %retval, align 4, !dbg !6274
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6274

error:                                            ; preds = %if.then22, %if.then12
  call void @llvm.dbg.label(metadata !6195), !dbg !6275
  %27 = load ptr, ptr %data, align 8, !dbg !6276
  call void @kfree(ptr noundef %27) #17, !dbg !6277
  %28 = load ptr, ptr %entry1, align 8, !dbg !6278
  %module = getelementptr inbounds %struct.snd_info_entry, ptr %28, i32 0, i32 6, !dbg !6279
  %29 = load ptr, ptr %module, align 8, !dbg !6279
  call void @module_put(ptr noundef %29) #17, !dbg !6280
  br label %unlock, !dbg !6280

unlock:                                           ; preds = %error, %if.then
  call void @llvm.dbg.label(metadata !6196), !dbg !6281
  call void @mutex_unlock(ptr noundef @info_mutex) #17, !dbg !6282
  %30 = load i32, ptr %err, align 4, !dbg !6283
  store i32 %30, ptr %retval, align 4, !dbg !6284
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6284

cleanup:                                          ; preds = %unlock, %if.end24
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !6285
  call void @llvm.lifetime.end.p0(i64 4, ptr %mode) #16, !dbg !6285
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #16, !dbg !6285
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #16, !dbg !6285
  %31 = load i32, ptr %retval, align 4, !dbg !6285
  ret i32 %31, !dbg !6285
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @snd_info_entry_read(ptr noundef %file, ptr noundef %buffer, i64 noundef %count, ptr noundef %offset) #0 align 16 !dbg !6286 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %offset.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %size = alloca i64, align 8
  %pos = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID___x290 = alloca i64, align 8
  %__UNIQUE_ID___y291 = alloca i64, align 8
  %tmp = alloca i64, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6288, metadata !DIExpression()), !dbg !6299
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !6289, metadata !DIExpression()), !dbg !6300
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6290, metadata !DIExpression()), !dbg !6301
  store ptr %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !6291, metadata !DIExpression()), !dbg !6302
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #16, !dbg !6303
  call void @llvm.dbg.declare(metadata ptr %data, metadata !6292, metadata !DIExpression()), !dbg !6304
  %0 = load ptr, ptr %file.addr, align 8, !dbg !6305
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !6306
  %1 = load ptr, ptr %private_data, align 8, !dbg !6306
  store ptr %1, ptr %data, align 8, !dbg !6304
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #16, !dbg !6307
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !6293, metadata !DIExpression()), !dbg !6308
  %2 = load ptr, ptr %data, align 8, !dbg !6309
  %entry2 = getelementptr inbounds %struct.snd_info_private_data, ptr %2, i32 0, i32 2, !dbg !6310
  %3 = load ptr, ptr %entry2, align 8, !dbg !6310
  store ptr %3, ptr %entry1, align 8, !dbg !6308
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #16, !dbg !6311
  call void @llvm.dbg.declare(metadata ptr %size, metadata !6294, metadata !DIExpression()), !dbg !6312
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #16, !dbg !6313
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !6295, metadata !DIExpression()), !dbg !6314
  %4 = load ptr, ptr %offset.addr, align 8, !dbg !6315
  %5 = load i64, ptr %4, align 8, !dbg !6316
  store i64 %5, ptr %pos, align 8, !dbg !6317
  %6 = load i64, ptr %pos, align 8, !dbg !6318
  %7 = load i64, ptr %count.addr, align 8, !dbg !6320
  %call = call zeroext i1 @valid_pos(i64 noundef %6, i64 noundef %7) #17, !dbg !6321
  br i1 %call, label %if.end, label %if.then, !dbg !6322

if.then:                                          ; preds = %entry
  store i64 -5, ptr %retval, align 8, !dbg !6323
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6323

if.end:                                           ; preds = %entry
  %8 = load i64, ptr %pos, align 8, !dbg !6324
  %9 = load ptr, ptr %entry1, align 8, !dbg !6326
  %size3 = getelementptr inbounds %struct.snd_info_entry, ptr %9, i32 0, i32 2, !dbg !6327
  %10 = load i64, ptr %size3, align 8, !dbg !6327
  %cmp = icmp sge i64 %8, %10, !dbg !6328
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !6329

if.then4:                                         ; preds = %if.end
  store i64 0, ptr %retval, align 8, !dbg !6330
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6330

if.end5:                                          ; preds = %if.end
  %11 = load ptr, ptr %entry1, align 8, !dbg !6331
  %size6 = getelementptr inbounds %struct.snd_info_entry, ptr %11, i32 0, i32 2, !dbg !6332
  %12 = load i64, ptr %size6, align 8, !dbg !6332
  %13 = load i64, ptr %pos, align 8, !dbg !6333
  %sub = sub i64 %12, %13, !dbg !6334
  store i64 %sub, ptr %size, align 8, !dbg !6335
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x290) #16, !dbg !6336
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x290, metadata !6296, metadata !DIExpression()), !dbg !6336
  %14 = load i64, ptr %count.addr, align 8, !dbg !6336
  store i64 %14, ptr %__UNIQUE_ID___x290, align 8, !dbg !6336
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y291) #16, !dbg !6336
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y291, metadata !6298, metadata !DIExpression()), !dbg !6336
  %15 = load i64, ptr %size, align 8, !dbg !6336
  store i64 %15, ptr %__UNIQUE_ID___y291, align 8, !dbg !6336
  %16 = load i64, ptr %__UNIQUE_ID___x290, align 8, !dbg !6336
  %17 = load i64, ptr %__UNIQUE_ID___y291, align 8, !dbg !6336
  %cmp7 = icmp ult i64 %16, %17, !dbg !6336
  br i1 %cmp7, label %cond.true, label %cond.false, !dbg !6336

cond.true:                                        ; preds = %if.end5
  %18 = load i64, ptr %__UNIQUE_ID___x290, align 8, !dbg !6336
  br label %cond.end, !dbg !6336

cond.false:                                       ; preds = %if.end5
  %19 = load i64, ptr %__UNIQUE_ID___y291, align 8, !dbg !6336
  br label %cond.end, !dbg !6336

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %18, %cond.true ], [ %19, %cond.false ], !dbg !6336
  store i64 %cond, ptr %tmp, align 8, !dbg !6336
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y291) #16, !dbg !6337
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x290) #16, !dbg !6337
  %20 = load i64, ptr %tmp, align 8, !dbg !6336
  store i64 %20, ptr %size, align 8, !dbg !6338
  %21 = load ptr, ptr %entry1, align 8, !dbg !6339
  %c = getelementptr inbounds %struct.snd_info_entry, ptr %21, i32 0, i32 4, !dbg !6340
  %22 = load ptr, ptr %c, align 8, !dbg !6341
  %read = getelementptr inbounds %struct.snd_info_entry_ops, ptr %22, i32 0, i32 2, !dbg !6342
  %23 = load ptr, ptr %read, align 8, !dbg !6342
  %24 = load ptr, ptr %entry1, align 8, !dbg !6343
  %25 = load ptr, ptr %data, align 8, !dbg !6344
  %file_private_data = getelementptr inbounds %struct.snd_info_private_data, ptr %25, i32 0, i32 3, !dbg !6345
  %26 = load ptr, ptr %file_private_data, align 8, !dbg !6345
  %27 = load ptr, ptr %file.addr, align 8, !dbg !6346
  %28 = load ptr, ptr %buffer.addr, align 8, !dbg !6347
  %29 = load i64, ptr %size, align 8, !dbg !6348
  %30 = load i64, ptr %pos, align 8, !dbg !6349
  %call8 = call i64 %23(ptr noundef %24, ptr noundef %26, ptr noundef %27, ptr noundef %28, i64 noundef %29, i64 noundef %30) #17, !dbg !6339
  store i64 %call8, ptr %size, align 8, !dbg !6350
  %31 = load i64, ptr %size, align 8, !dbg !6351
  %cmp9 = icmp sgt i64 %31, 0, !dbg !6353
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6354

if.then10:                                        ; preds = %cond.end
  %32 = load i64, ptr %pos, align 8, !dbg !6355
  %33 = load i64, ptr %size, align 8, !dbg !6356
  %add = add i64 %32, %33, !dbg !6357
  %34 = load ptr, ptr %offset.addr, align 8, !dbg !6358
  store i64 %add, ptr %34, align 8, !dbg !6359
  br label %if.end11, !dbg !6360

if.end11:                                         ; preds = %if.then10, %cond.end
  %35 = load i64, ptr %size, align 8, !dbg !6361
  store i64 %35, ptr %retval, align 8, !dbg !6362
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6362

cleanup:                                          ; preds = %if.end11, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #16, !dbg !6363
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #16, !dbg !6363
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #16, !dbg !6363
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #16, !dbg !6363
  %36 = load i64, ptr %retval, align 8, !dbg !6363
  ret i64 %36, !dbg !6363
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @snd_info_entry_write(ptr noundef %file, ptr noundef %buffer, i64 noundef %count, ptr noundef %offset) #0 align 16 !dbg !6364 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %offset.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %size = alloca i64, align 8
  %pos = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %maxsize = alloca i64, align 8
  %__UNIQUE_ID___x292 = alloca i64, align 8
  %__UNIQUE_ID___y293 = alloca i64, align 8
  %tmp = alloca i64, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6366, metadata !DIExpression()), !dbg !6380
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !6367, metadata !DIExpression()), !dbg !6381
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6368, metadata !DIExpression()), !dbg !6382
  store ptr %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !6369, metadata !DIExpression()), !dbg !6383
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #16, !dbg !6384
  call void @llvm.dbg.declare(metadata ptr %data, metadata !6370, metadata !DIExpression()), !dbg !6385
  %0 = load ptr, ptr %file.addr, align 8, !dbg !6386
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !6387
  %1 = load ptr, ptr %private_data, align 8, !dbg !6387
  store ptr %1, ptr %data, align 8, !dbg !6385
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #16, !dbg !6388
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !6371, metadata !DIExpression()), !dbg !6389
  %2 = load ptr, ptr %data, align 8, !dbg !6390
  %entry2 = getelementptr inbounds %struct.snd_info_private_data, ptr %2, i32 0, i32 2, !dbg !6391
  %3 = load ptr, ptr %entry2, align 8, !dbg !6391
  store ptr %3, ptr %entry1, align 8, !dbg !6389
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #16, !dbg !6392
  call void @llvm.dbg.declare(metadata ptr %size, metadata !6372, metadata !DIExpression()), !dbg !6393
  store i64 0, ptr %size, align 8, !dbg !6393
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #16, !dbg !6394
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !6373, metadata !DIExpression()), !dbg !6395
  %4 = load ptr, ptr %offset.addr, align 8, !dbg !6396
  %5 = load i64, ptr %4, align 8, !dbg !6397
  store i64 %5, ptr %pos, align 8, !dbg !6398
  %6 = load i64, ptr %pos, align 8, !dbg !6399
  %7 = load i64, ptr %count.addr, align 8, !dbg !6401
  %call = call zeroext i1 @valid_pos(i64 noundef %6, i64 noundef %7) #17, !dbg !6402
  br i1 %call, label %if.end, label %if.then, !dbg !6403

if.then:                                          ; preds = %entry
  store i64 -5, ptr %retval, align 8, !dbg !6404
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6404

if.end:                                           ; preds = %entry
  %8 = load i64, ptr %count.addr, align 8, !dbg !6405
  %cmp = icmp ugt i64 %8, 0, !dbg !6406
  br i1 %cmp, label %if.then3, label %if.end7, !dbg !6407

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %maxsize) #16, !dbg !6408
  call void @llvm.dbg.declare(metadata ptr %maxsize, metadata !6374, metadata !DIExpression()), !dbg !6409
  %9 = load ptr, ptr %entry1, align 8, !dbg !6410
  %size4 = getelementptr inbounds %struct.snd_info_entry, ptr %9, i32 0, i32 2, !dbg !6411
  %10 = load i64, ptr %size4, align 8, !dbg !6411
  %11 = load i64, ptr %pos, align 8, !dbg !6412
  %sub = sub i64 %10, %11, !dbg !6413
  store i64 %sub, ptr %maxsize, align 8, !dbg !6409
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x292) #16, !dbg !6414
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x292, metadata !6377, metadata !DIExpression()), !dbg !6414
  %12 = load i64, ptr %count.addr, align 8, !dbg !6414
  store i64 %12, ptr %__UNIQUE_ID___x292, align 8, !dbg !6414
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y293) #16, !dbg !6414
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y293, metadata !6379, metadata !DIExpression()), !dbg !6414
  %13 = load i64, ptr %maxsize, align 8, !dbg !6414
  store i64 %13, ptr %__UNIQUE_ID___y293, align 8, !dbg !6414
  %14 = load i64, ptr %__UNIQUE_ID___x292, align 8, !dbg !6414
  %15 = load i64, ptr %__UNIQUE_ID___y293, align 8, !dbg !6414
  %cmp5 = icmp ult i64 %14, %15, !dbg !6414
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !6414

cond.true:                                        ; preds = %if.then3
  %16 = load i64, ptr %__UNIQUE_ID___x292, align 8, !dbg !6414
  br label %cond.end, !dbg !6414

cond.false:                                       ; preds = %if.then3
  %17 = load i64, ptr %__UNIQUE_ID___y293, align 8, !dbg !6414
  br label %cond.end, !dbg !6414

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %16, %cond.true ], [ %17, %cond.false ], !dbg !6414
  store i64 %cond, ptr %tmp, align 8, !dbg !6414
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y293) #16, !dbg !6415
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x292) #16, !dbg !6415
  %18 = load i64, ptr %tmp, align 8, !dbg !6414
  store i64 %18, ptr %count.addr, align 8, !dbg !6416
  %19 = load ptr, ptr %entry1, align 8, !dbg !6417
  %c = getelementptr inbounds %struct.snd_info_entry, ptr %19, i32 0, i32 4, !dbg !6418
  %20 = load ptr, ptr %c, align 8, !dbg !6419
  %write = getelementptr inbounds %struct.snd_info_entry_ops, ptr %20, i32 0, i32 3, !dbg !6420
  %21 = load ptr, ptr %write, align 8, !dbg !6420
  %22 = load ptr, ptr %entry1, align 8, !dbg !6421
  %23 = load ptr, ptr %data, align 8, !dbg !6422
  %file_private_data = getelementptr inbounds %struct.snd_info_private_data, ptr %23, i32 0, i32 3, !dbg !6423
  %24 = load ptr, ptr %file_private_data, align 8, !dbg !6423
  %25 = load ptr, ptr %file.addr, align 8, !dbg !6424
  %26 = load ptr, ptr %buffer.addr, align 8, !dbg !6425
  %27 = load i64, ptr %count.addr, align 8, !dbg !6426
  %28 = load i64, ptr %pos, align 8, !dbg !6427
  %call6 = call i64 %21(ptr noundef %22, ptr noundef %24, ptr noundef %25, ptr noundef %26, i64 noundef %27, i64 noundef %28) #17, !dbg !6417
  store i64 %call6, ptr %size, align 8, !dbg !6428
  call void @llvm.lifetime.end.p0(i64 8, ptr %maxsize) #16, !dbg !6429
  br label %if.end7, !dbg !6430

if.end7:                                          ; preds = %cond.end, %if.end
  %29 = load i64, ptr %size, align 8, !dbg !6431
  %cmp8 = icmp sgt i64 %29, 0, !dbg !6433
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !6434

if.then9:                                         ; preds = %if.end7
  %30 = load i64, ptr %pos, align 8, !dbg !6435
  %31 = load i64, ptr %size, align 8, !dbg !6436
  %add = add i64 %30, %31, !dbg !6437
  %32 = load ptr, ptr %offset.addr, align 8, !dbg !6438
  store i64 %add, ptr %32, align 8, !dbg !6439
  br label %if.end10, !dbg !6440

if.end10:                                         ; preds = %if.then9, %if.end7
  %33 = load i64, ptr %size, align 8, !dbg !6441
  store i64 %33, ptr %retval, align 8, !dbg !6442
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6442

cleanup:                                          ; preds = %if.end10, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #16, !dbg !6443
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #16, !dbg !6443
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #16, !dbg !6443
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #16, !dbg !6443
  %34 = load i64, ptr %retval, align 8, !dbg !6443
  ret i64 %34, !dbg !6443
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @snd_info_entry_llseek(ptr noundef %file, i64 noundef %offset, i32 noundef %orig) #0 align 16 !dbg !6444 {
entry:
  %file.addr = alloca ptr, align 8
  %offset.addr = alloca i64, align 8
  %orig.addr = alloca i32, align 4
  %data = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %ret = alloca i64, align 8
  %size = alloca i64, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6446, metadata !DIExpression()), !dbg !6454
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !6447, metadata !DIExpression()), !dbg !6455
  store i32 %orig, ptr %orig.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %orig.addr, metadata !6448, metadata !DIExpression()), !dbg !6456
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #16, !dbg !6457
  call void @llvm.dbg.declare(metadata ptr %data, metadata !6449, metadata !DIExpression()), !dbg !6458
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #16, !dbg !6459
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !6450, metadata !DIExpression()), !dbg !6460
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #16, !dbg !6461
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6451, metadata !DIExpression()), !dbg !6462
  store i64 -22, ptr %ret, align 8, !dbg !6462
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #16, !dbg !6461
  call void @llvm.dbg.declare(metadata ptr %size, metadata !6452, metadata !DIExpression()), !dbg !6463
  %0 = load ptr, ptr %file.addr, align 8, !dbg !6464
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !6465
  %1 = load ptr, ptr %private_data, align 8, !dbg !6465
  store ptr %1, ptr %data, align 8, !dbg !6466
  %2 = load ptr, ptr %data, align 8, !dbg !6467
  %entry2 = getelementptr inbounds %struct.snd_info_private_data, ptr %2, i32 0, i32 2, !dbg !6468
  %3 = load ptr, ptr %entry2, align 8, !dbg !6468
  store ptr %3, ptr %entry1, align 8, !dbg !6469
  %4 = load ptr, ptr %entry1, align 8, !dbg !6470
  %access = getelementptr inbounds %struct.snd_info_entry, ptr %4, i32 0, i32 10, !dbg !6471
  call void @mutex_lock(ptr noundef %access) #17, !dbg !6472
  %5 = load ptr, ptr %entry1, align 8, !dbg !6473
  %c = getelementptr inbounds %struct.snd_info_entry, ptr %5, i32 0, i32 4, !dbg !6475
  %6 = load ptr, ptr %c, align 8, !dbg !6476
  %llseek = getelementptr inbounds %struct.snd_info_entry_ops, ptr %6, i32 0, i32 4, !dbg !6477
  %7 = load ptr, ptr %llseek, align 8, !dbg !6477
  %tobool = icmp ne ptr %7, null, !dbg !6473
  br i1 %tobool, label %if.then, label %if.end, !dbg !6478

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %entry1, align 8, !dbg !6479
  %c3 = getelementptr inbounds %struct.snd_info_entry, ptr %8, i32 0, i32 4, !dbg !6481
  %9 = load ptr, ptr %c3, align 8, !dbg !6482
  %llseek4 = getelementptr inbounds %struct.snd_info_entry_ops, ptr %9, i32 0, i32 4, !dbg !6483
  %10 = load ptr, ptr %llseek4, align 8, !dbg !6483
  %11 = load ptr, ptr %entry1, align 8, !dbg !6484
  %12 = load ptr, ptr %data, align 8, !dbg !6485
  %file_private_data = getelementptr inbounds %struct.snd_info_private_data, ptr %12, i32 0, i32 3, !dbg !6486
  %13 = load ptr, ptr %file_private_data, align 8, !dbg !6486
  %14 = load ptr, ptr %file.addr, align 8, !dbg !6487
  %15 = load i64, ptr %offset.addr, align 8, !dbg !6488
  %16 = load i32, ptr %orig.addr, align 4, !dbg !6489
  %call = call i64 %10(ptr noundef %11, ptr noundef %13, ptr noundef %14, i64 noundef %15, i32 noundef %16) #17, !dbg !6479
  store i64 %call, ptr %ret, align 8, !dbg !6490
  br label %out, !dbg !6491

if.end:                                           ; preds = %entry
  %17 = load ptr, ptr %entry1, align 8, !dbg !6492
  %size5 = getelementptr inbounds %struct.snd_info_entry, ptr %17, i32 0, i32 2, !dbg !6493
  %18 = load i64, ptr %size5, align 8, !dbg !6493
  store i64 %18, ptr %size, align 8, !dbg !6494
  %19 = load i32, ptr %orig.addr, align 4, !dbg !6495
  switch i32 %19, label %sw.default [
    i32 0, label %sw.epilog
    i32 1, label %sw.bb
    i32 2, label %sw.bb6
  ], !dbg !6496

sw.bb:                                            ; preds = %if.end
  %20 = load ptr, ptr %file.addr, align 8, !dbg !6497
  %f_pos = getelementptr inbounds %struct.file, ptr %20, i32 0, i32 5, !dbg !6499
  %21 = load i64, ptr %f_pos, align 8, !dbg !6499
  %22 = load i64, ptr %offset.addr, align 8, !dbg !6500
  %add = add i64 %22, %21, !dbg !6500
  store i64 %add, ptr %offset.addr, align 8, !dbg !6500
  br label %sw.epilog, !dbg !6501

sw.bb6:                                           ; preds = %if.end
  %23 = load i64, ptr %size, align 8, !dbg !6502
  %tobool7 = icmp ne i64 %23, 0, !dbg !6502
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !6504

if.then8:                                         ; preds = %sw.bb6
  br label %out, !dbg !6505

if.end9:                                          ; preds = %sw.bb6
  %24 = load i64, ptr %size, align 8, !dbg !6506
  %25 = load i64, ptr %offset.addr, align 8, !dbg !6507
  %add10 = add i64 %25, %24, !dbg !6507
  store i64 %add10, ptr %offset.addr, align 8, !dbg !6507
  br label %sw.epilog, !dbg !6508

sw.default:                                       ; preds = %if.end
  br label %out, !dbg !6509

sw.epilog:                                        ; preds = %if.end9, %sw.bb, %if.end
  %26 = load i64, ptr %offset.addr, align 8, !dbg !6510
  %cmp = icmp slt i64 %26, 0, !dbg !6512
  br i1 %cmp, label %if.then11, label %if.end12, !dbg !6513

if.then11:                                        ; preds = %sw.epilog
  br label %out, !dbg !6514

if.end12:                                         ; preds = %sw.epilog
  %27 = load i64, ptr %size, align 8, !dbg !6515
  %tobool13 = icmp ne i64 %27, 0, !dbg !6515
  br i1 %tobool13, label %land.lhs.true, label %if.end16, !dbg !6517

land.lhs.true:                                    ; preds = %if.end12
  %28 = load i64, ptr %offset.addr, align 8, !dbg !6518
  %29 = load i64, ptr %size, align 8, !dbg !6519
  %cmp14 = icmp sgt i64 %28, %29, !dbg !6520
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !6521

if.then15:                                        ; preds = %land.lhs.true
  %30 = load i64, ptr %size, align 8, !dbg !6522
  store i64 %30, ptr %offset.addr, align 8, !dbg !6523
  br label %if.end16, !dbg !6524

if.end16:                                         ; preds = %if.then15, %land.lhs.true, %if.end12
  %31 = load i64, ptr %offset.addr, align 8, !dbg !6525
  %32 = load ptr, ptr %file.addr, align 8, !dbg !6526
  %f_pos17 = getelementptr inbounds %struct.file, ptr %32, i32 0, i32 5, !dbg !6527
  store i64 %31, ptr %f_pos17, align 8, !dbg !6528
  %33 = load i64, ptr %offset.addr, align 8, !dbg !6529
  store i64 %33, ptr %ret, align 8, !dbg !6530
  br label %out, !dbg !6531

out:                                              ; preds = %if.end16, %if.then11, %sw.default, %if.then8, %if.then
  call void @llvm.dbg.label(metadata !6453), !dbg !6532
  %34 = load ptr, ptr %entry1, align 8, !dbg !6533
  %access18 = getelementptr inbounds %struct.snd_info_entry, ptr %34, i32 0, i32 10, !dbg !6534
  call void @mutex_unlock(ptr noundef %access18) #17, !dbg !6535
  %35 = load i64, ptr %ret, align 8, !dbg !6536
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #16, !dbg !6537
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #16, !dbg !6537
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #16, !dbg !6537
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #16, !dbg !6537
  ret i64 %35, !dbg !6538
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @snd_info_entry_release(ptr noundef %inode, ptr noundef %file) #0 align 16 !dbg !6539 {
entry:
  %inode.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6541, metadata !DIExpression()), !dbg !6545
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6542, metadata !DIExpression()), !dbg !6546
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #16, !dbg !6547
  call void @llvm.dbg.declare(metadata ptr %data, metadata !6543, metadata !DIExpression()), !dbg !6548
  %0 = load ptr, ptr %file.addr, align 8, !dbg !6549
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !6550
  %1 = load ptr, ptr %private_data, align 8, !dbg !6550
  store ptr %1, ptr %data, align 8, !dbg !6548
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #16, !dbg !6551
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !6544, metadata !DIExpression()), !dbg !6552
  %2 = load ptr, ptr %data, align 8, !dbg !6553
  %entry2 = getelementptr inbounds %struct.snd_info_private_data, ptr %2, i32 0, i32 2, !dbg !6554
  %3 = load ptr, ptr %entry2, align 8, !dbg !6554
  store ptr %3, ptr %entry1, align 8, !dbg !6552
  %4 = load ptr, ptr %entry1, align 8, !dbg !6555
  %c = getelementptr inbounds %struct.snd_info_entry, ptr %4, i32 0, i32 4, !dbg !6557
  %5 = load ptr, ptr %c, align 8, !dbg !6558
  %release = getelementptr inbounds %struct.snd_info_entry_ops, ptr %5, i32 0, i32 1, !dbg !6559
  %6 = load ptr, ptr %release, align 8, !dbg !6559
  %tobool = icmp ne ptr %6, null, !dbg !6555
  br i1 %tobool, label %if.then, label %if.end, !dbg !6560

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %entry1, align 8, !dbg !6561
  %c3 = getelementptr inbounds %struct.snd_info_entry, ptr %7, i32 0, i32 4, !dbg !6562
  %8 = load ptr, ptr %c3, align 8, !dbg !6563
  %release4 = getelementptr inbounds %struct.snd_info_entry_ops, ptr %8, i32 0, i32 1, !dbg !6564
  %9 = load ptr, ptr %release4, align 8, !dbg !6564
  %10 = load ptr, ptr %entry1, align 8, !dbg !6565
  %11 = load ptr, ptr %file.addr, align 8, !dbg !6566
  %f_flags = getelementptr inbounds %struct.file, ptr %11, i32 0, i32 6, !dbg !6567
  %12 = load i32, ptr %f_flags, align 8, !dbg !6567
  %and = and i32 %12, 3, !dbg !6568
  %conv = trunc i32 %and to i16, !dbg !6566
  %13 = load ptr, ptr %data, align 8, !dbg !6569
  %file_private_data = getelementptr inbounds %struct.snd_info_private_data, ptr %13, i32 0, i32 3, !dbg !6570
  %14 = load ptr, ptr %file_private_data, align 8, !dbg !6570
  %call = call i32 %9(ptr noundef %10, i16 noundef zeroext %conv, ptr noundef %14) #17, !dbg !6561
  br label %if.end, !dbg !6561

if.end:                                           ; preds = %if.then, %entry
  %15 = load ptr, ptr %entry1, align 8, !dbg !6571
  %module = getelementptr inbounds %struct.snd_info_entry, ptr %15, i32 0, i32 6, !dbg !6572
  %16 = load ptr, ptr %module, align 8, !dbg !6572
  call void @module_put(ptr noundef %16) #17, !dbg !6573
  %17 = load ptr, ptr %data, align 8, !dbg !6574
  call void @kfree(ptr noundef %17) #17, !dbg !6575
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #16, !dbg !6576
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #16, !dbg !6576
  ret i32 0, !dbg !6577
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @snd_info_entry_poll(ptr noundef %file, ptr noundef %wait) #0 align 16 !dbg !6578 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %wait.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %mask = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6582, metadata !DIExpression()), !dbg !6587
  store ptr %wait, ptr %wait.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wait.addr, metadata !6583, metadata !DIExpression()), !dbg !6588
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #16, !dbg !6589
  call void @llvm.dbg.declare(metadata ptr %data, metadata !6584, metadata !DIExpression()), !dbg !6590
  %0 = load ptr, ptr %file.addr, align 8, !dbg !6591
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !6592
  %1 = load ptr, ptr %private_data, align 8, !dbg !6592
  store ptr %1, ptr %data, align 8, !dbg !6590
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #16, !dbg !6593
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !6585, metadata !DIExpression()), !dbg !6594
  %2 = load ptr, ptr %data, align 8, !dbg !6595
  %entry2 = getelementptr inbounds %struct.snd_info_private_data, ptr %2, i32 0, i32 2, !dbg !6596
  %3 = load ptr, ptr %entry2, align 8, !dbg !6596
  store ptr %3, ptr %entry1, align 8, !dbg !6594
  call void @llvm.lifetime.start.p0(i64 4, ptr %mask) #16, !dbg !6597
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !6586, metadata !DIExpression()), !dbg !6598
  store i32 0, ptr %mask, align 4, !dbg !6598
  %4 = load ptr, ptr %entry1, align 8, !dbg !6599
  %c = getelementptr inbounds %struct.snd_info_entry, ptr %4, i32 0, i32 4, !dbg !6601
  %5 = load ptr, ptr %c, align 8, !dbg !6602
  %poll = getelementptr inbounds %struct.snd_info_entry_ops, ptr %5, i32 0, i32 5, !dbg !6603
  %6 = load ptr, ptr %poll, align 8, !dbg !6603
  %tobool = icmp ne ptr %6, null, !dbg !6599
  br i1 %tobool, label %if.then, label %if.end, !dbg !6604

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %entry1, align 8, !dbg !6605
  %c3 = getelementptr inbounds %struct.snd_info_entry, ptr %7, i32 0, i32 4, !dbg !6606
  %8 = load ptr, ptr %c3, align 8, !dbg !6607
  %poll4 = getelementptr inbounds %struct.snd_info_entry_ops, ptr %8, i32 0, i32 5, !dbg !6608
  %9 = load ptr, ptr %poll4, align 8, !dbg !6608
  %10 = load ptr, ptr %entry1, align 8, !dbg !6609
  %11 = load ptr, ptr %data, align 8, !dbg !6610
  %file_private_data = getelementptr inbounds %struct.snd_info_private_data, ptr %11, i32 0, i32 3, !dbg !6611
  %12 = load ptr, ptr %file_private_data, align 8, !dbg !6611
  %13 = load ptr, ptr %file.addr, align 8, !dbg !6612
  %14 = load ptr, ptr %wait.addr, align 8, !dbg !6613
  %call = call i32 %9(ptr noundef %10, ptr noundef %12, ptr noundef %13, ptr noundef %14) #17, !dbg !6605
  store i32 %call, ptr %retval, align 4, !dbg !6614
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6614

if.end:                                           ; preds = %entry
  %15 = load ptr, ptr %entry1, align 8, !dbg !6615
  %c5 = getelementptr inbounds %struct.snd_info_entry, ptr %15, i32 0, i32 4, !dbg !6617
  %16 = load ptr, ptr %c5, align 8, !dbg !6618
  %read = getelementptr inbounds %struct.snd_info_entry_ops, ptr %16, i32 0, i32 2, !dbg !6619
  %17 = load ptr, ptr %read, align 8, !dbg !6619
  %tobool6 = icmp ne ptr %17, null, !dbg !6615
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !6620

if.then7:                                         ; preds = %if.end
  %18 = load i32, ptr %mask, align 4, !dbg !6621
  %or = or i32 %18, 65, !dbg !6621
  store i32 %or, ptr %mask, align 4, !dbg !6621
  br label %if.end8, !dbg !6622

if.end8:                                          ; preds = %if.then7, %if.end
  %19 = load ptr, ptr %entry1, align 8, !dbg !6623
  %c9 = getelementptr inbounds %struct.snd_info_entry, ptr %19, i32 0, i32 4, !dbg !6625
  %20 = load ptr, ptr %c9, align 8, !dbg !6626
  %write = getelementptr inbounds %struct.snd_info_entry_ops, ptr %20, i32 0, i32 3, !dbg !6627
  %21 = load ptr, ptr %write, align 8, !dbg !6627
  %tobool10 = icmp ne ptr %21, null, !dbg !6623
  br i1 %tobool10, label %if.then11, label %if.end13, !dbg !6628

if.then11:                                        ; preds = %if.end8
  %22 = load i32, ptr %mask, align 4, !dbg !6629
  %or12 = or i32 %22, 260, !dbg !6629
  store i32 %or12, ptr %mask, align 4, !dbg !6629
  br label %if.end13, !dbg !6630

if.end13:                                         ; preds = %if.then11, %if.end8
  %23 = load i32, ptr %mask, align 4, !dbg !6631
  store i32 %23, ptr %retval, align 4, !dbg !6632
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6632

cleanup:                                          ; preds = %if.end13, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %mask) #16, !dbg !6633
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #16, !dbg !6633
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #16, !dbg !6633
  %24 = load i32, ptr %retval, align 4, !dbg !6633
  ret i32 %24, !dbg !6633
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @snd_info_entry_ioctl(ptr noundef %file, i32 noundef %cmd, i64 noundef %arg) #0 align 16 !dbg !6634 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i64, align 8
  %data = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6636, metadata !DIExpression()), !dbg !6641
  store i32 %cmd, ptr %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !6637, metadata !DIExpression()), !dbg !6642
  store i64 %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !6638, metadata !DIExpression()), !dbg !6643
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #16, !dbg !6644
  call void @llvm.dbg.declare(metadata ptr %data, metadata !6639, metadata !DIExpression()), !dbg !6645
  %0 = load ptr, ptr %file.addr, align 8, !dbg !6646
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !6647
  %1 = load ptr, ptr %private_data, align 8, !dbg !6647
  store ptr %1, ptr %data, align 8, !dbg !6645
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #16, !dbg !6648
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !6640, metadata !DIExpression()), !dbg !6649
  %2 = load ptr, ptr %data, align 8, !dbg !6650
  %entry2 = getelementptr inbounds %struct.snd_info_private_data, ptr %2, i32 0, i32 2, !dbg !6651
  %3 = load ptr, ptr %entry2, align 8, !dbg !6651
  store ptr %3, ptr %entry1, align 8, !dbg !6649
  %4 = load ptr, ptr %entry1, align 8, !dbg !6652
  %c = getelementptr inbounds %struct.snd_info_entry, ptr %4, i32 0, i32 4, !dbg !6654
  %5 = load ptr, ptr %c, align 8, !dbg !6655
  %ioctl = getelementptr inbounds %struct.snd_info_entry_ops, ptr %5, i32 0, i32 6, !dbg !6656
  %6 = load ptr, ptr %ioctl, align 8, !dbg !6656
  %tobool = icmp ne ptr %6, null, !dbg !6652
  br i1 %tobool, label %if.end, label %if.then, !dbg !6657

if.then:                                          ; preds = %entry
  store i64 -25, ptr %retval, align 8, !dbg !6658
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6658

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %entry1, align 8, !dbg !6659
  %c3 = getelementptr inbounds %struct.snd_info_entry, ptr %7, i32 0, i32 4, !dbg !6660
  %8 = load ptr, ptr %c3, align 8, !dbg !6661
  %ioctl4 = getelementptr inbounds %struct.snd_info_entry_ops, ptr %8, i32 0, i32 6, !dbg !6662
  %9 = load ptr, ptr %ioctl4, align 8, !dbg !6662
  %10 = load ptr, ptr %entry1, align 8, !dbg !6663
  %11 = load ptr, ptr %data, align 8, !dbg !6664
  %file_private_data = getelementptr inbounds %struct.snd_info_private_data, ptr %11, i32 0, i32 3, !dbg !6665
  %12 = load ptr, ptr %file_private_data, align 8, !dbg !6665
  %13 = load ptr, ptr %file.addr, align 8, !dbg !6666
  %14 = load i32, ptr %cmd.addr, align 4, !dbg !6667
  %15 = load i64, ptr %arg.addr, align 8, !dbg !6668
  %call = call i32 %9(ptr noundef %10, ptr noundef %12, ptr noundef %13, i32 noundef %14, i64 noundef %15) #17, !dbg !6659
  %conv = sext i32 %call to i64, !dbg !6659
  store i64 %conv, ptr %retval, align 8, !dbg !6669
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6669

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #16, !dbg !6670
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #16, !dbg !6670
  %16 = load i64, ptr %retval, align 8, !dbg !6670
  ret i64 %16, !dbg !6670
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @snd_info_entry_mmap(ptr noundef %file, ptr noundef %vma) #0 align 16 !dbg !6671 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %vma.addr = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %data = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6673, metadata !DIExpression()), !dbg !6678
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !6674, metadata !DIExpression()), !dbg !6679
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #16, !dbg !6680
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !6675, metadata !DIExpression()), !dbg !6681
  %0 = load ptr, ptr %file.addr, align 8, !dbg !6682
  %call = call ptr @file_inode(ptr noundef %0) #17, !dbg !6683
  store ptr %call, ptr %inode, align 8, !dbg !6681
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #16, !dbg !6684
  call void @llvm.dbg.declare(metadata ptr %data, metadata !6676, metadata !DIExpression()), !dbg !6685
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #16, !dbg !6686
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !6677, metadata !DIExpression()), !dbg !6687
  %1 = load ptr, ptr %file.addr, align 8, !dbg !6688
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15, !dbg !6689
  %2 = load ptr, ptr %private_data, align 8, !dbg !6689
  store ptr %2, ptr %data, align 8, !dbg !6690
  %3 = load ptr, ptr %data, align 8, !dbg !6691
  %cmp = icmp eq ptr %3, null, !dbg !6693
  br i1 %cmp, label %if.then, label %if.end, !dbg !6694

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6695
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6695

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %data, align 8, !dbg !6696
  %entry2 = getelementptr inbounds %struct.snd_info_private_data, ptr %4, i32 0, i32 2, !dbg !6697
  %5 = load ptr, ptr %entry2, align 8, !dbg !6697
  store ptr %5, ptr %entry1, align 8, !dbg !6698
  %6 = load ptr, ptr %entry1, align 8, !dbg !6699
  %c = getelementptr inbounds %struct.snd_info_entry, ptr %6, i32 0, i32 4, !dbg !6701
  %7 = load ptr, ptr %c, align 8, !dbg !6702
  %mmap = getelementptr inbounds %struct.snd_info_entry_ops, ptr %7, i32 0, i32 7, !dbg !6703
  %8 = load ptr, ptr %mmap, align 8, !dbg !6703
  %tobool = icmp ne ptr %8, null, !dbg !6699
  br i1 %tobool, label %if.end4, label %if.then3, !dbg !6704

if.then3:                                         ; preds = %if.end
  store i32 -6, ptr %retval, align 4, !dbg !6705
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6705

if.end4:                                          ; preds = %if.end
  %9 = load ptr, ptr %entry1, align 8, !dbg !6706
  %c5 = getelementptr inbounds %struct.snd_info_entry, ptr %9, i32 0, i32 4, !dbg !6707
  %10 = load ptr, ptr %c5, align 8, !dbg !6708
  %mmap6 = getelementptr inbounds %struct.snd_info_entry_ops, ptr %10, i32 0, i32 7, !dbg !6709
  %11 = load ptr, ptr %mmap6, align 8, !dbg !6709
  %12 = load ptr, ptr %entry1, align 8, !dbg !6710
  %13 = load ptr, ptr %data, align 8, !dbg !6711
  %file_private_data = getelementptr inbounds %struct.snd_info_private_data, ptr %13, i32 0, i32 3, !dbg !6712
  %14 = load ptr, ptr %file_private_data, align 8, !dbg !6712
  %15 = load ptr, ptr %inode, align 8, !dbg !6713
  %16 = load ptr, ptr %file.addr, align 8, !dbg !6714
  %17 = load ptr, ptr %vma.addr, align 8, !dbg !6715
  %call7 = call i32 %11(ptr noundef %12, ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef %17) #17, !dbg !6706
  store i32 %call7, ptr %retval, align 4, !dbg !6716
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6716

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #16, !dbg !6717
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #16, !dbg !6717
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #16, !dbg !6717
  %18 = load i32, ptr %retval, align 4, !dbg !6717
  ret i32 %18, !dbg !6717
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pde_data(ptr noundef %inode) #5 align 16 !dbg !6718 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6722, metadata !DIExpression()), !dbg !6723
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !6724
  %i_private = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47, !dbg !6725
  %1 = load ptr, ptr %i_private, align 8, !dbg !6725
  ret ptr %1, !dbg !6726
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @alloc_info_private(ptr noundef %entry1, ptr noundef %ret) #0 align 16 !dbg !6727 {
entry:
  %retval = alloca i32, align 4
  %entry.addr = alloca ptr, align 8
  %ret.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6732, metadata !DIExpression()), !dbg !6735
  store ptr %ret, ptr %ret.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ret.addr, metadata !6733, metadata !DIExpression()), !dbg !6736
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #16, !dbg !6737
  call void @llvm.dbg.declare(metadata ptr %data, metadata !6734, metadata !DIExpression()), !dbg !6738
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6739
  %tobool = icmp ne ptr %0, null, !dbg !6739
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !6741

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6742
  %p = getelementptr inbounds %struct.snd_info_entry, ptr %1, i32 0, i32 9, !dbg !6743
  %2 = load ptr, ptr %p, align 8, !dbg !6743
  %tobool2 = icmp ne ptr %2, null, !dbg !6742
  br i1 %tobool2, label %if.end, label %if.then, !dbg !6744

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -19, ptr %retval, align 4, !dbg !6745
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6745

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !6746
  %module = getelementptr inbounds %struct.snd_info_entry, ptr %3, i32 0, i32 6, !dbg !6748
  %4 = load ptr, ptr %module, align 8, !dbg !6748
  %call = call zeroext i1 @try_module_get(ptr noundef %4) #17, !dbg !6749
  br i1 %call, label %if.end4, label %if.then3, !dbg !6750

if.then3:                                         ; preds = %if.end
  store i32 -14, ptr %retval, align 4, !dbg !6751
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6751

if.end4:                                          ; preds = %if.end
  %call5 = call noalias ptr @kzalloc(i64 noundef 32, i32 noundef 3264) #18, !dbg !6752
  store ptr %call5, ptr %data, align 8, !dbg !6753
  %5 = load ptr, ptr %data, align 8, !dbg !6754
  %tobool6 = icmp ne ptr %5, null, !dbg !6754
  br i1 %tobool6, label %if.end9, label %if.then7, !dbg !6756

if.then7:                                         ; preds = %if.end4
  %6 = load ptr, ptr %entry.addr, align 8, !dbg !6757
  %module8 = getelementptr inbounds %struct.snd_info_entry, ptr %6, i32 0, i32 6, !dbg !6759
  %7 = load ptr, ptr %module8, align 8, !dbg !6759
  call void @module_put(ptr noundef %7) #17, !dbg !6760
  store i32 -12, ptr %retval, align 4, !dbg !6761
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6761

if.end9:                                          ; preds = %if.end4
  %8 = load ptr, ptr %entry.addr, align 8, !dbg !6762
  %9 = load ptr, ptr %data, align 8, !dbg !6763
  %entry10 = getelementptr inbounds %struct.snd_info_private_data, ptr %9, i32 0, i32 2, !dbg !6764
  store ptr %8, ptr %entry10, align 8, !dbg !6765
  %10 = load ptr, ptr %data, align 8, !dbg !6766
  %11 = load ptr, ptr %ret.addr, align 8, !dbg !6767
  store ptr %10, ptr %11, align 8, !dbg !6768
  store i32 0, ptr %retval, align 4, !dbg !6769
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6769

cleanup:                                          ; preds = %if.end9, %if.then7, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #16, !dbg !6770
  %12 = load i32, ptr %retval, align 4, !dbg !6770
  ret i32 %12, !dbg !6770
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6771 dso_local void @module_put(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6772 dso_local zeroext i1 @try_module_get(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @valid_pos(i64 noundef %pos, i64 noundef %count) #0 align 16 !dbg !6775 {
entry:
  %retval = alloca i1, align 1
  %pos.addr = alloca i64, align 8
  %count.addr = alloca i64, align 8
  store i64 %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !6779, metadata !DIExpression()), !dbg !6781
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6780, metadata !DIExpression()), !dbg !6782
  %0 = load i64, ptr %pos.addr, align 8, !dbg !6783
  %cmp = icmp slt i64 %0, 0, !dbg !6785
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !6786

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, ptr %pos.addr, align 8, !dbg !6787
  %2 = load i64, ptr %pos.addr, align 8, !dbg !6788
  %cmp1 = icmp ne i64 %1, %2, !dbg !6789
  br i1 %cmp1, label %if.then, label %lor.lhs.false2, !dbg !6790

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load i64, ptr %count.addr, align 8, !dbg !6791
  %cmp3 = icmp slt i64 %3, 0, !dbg !6792
  br i1 %cmp3, label %if.then, label %if.end, !dbg !6793

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i1 false, ptr %retval, align 1, !dbg !6794
  br label %return, !dbg !6794

if.end:                                           ; preds = %lor.lhs.false2
  %4 = load i64, ptr %pos.addr, align 8, !dbg !6795
  %5 = load i64, ptr %count.addr, align 8, !dbg !6797
  %add = add i64 %4, %5, !dbg !6798
  %6 = load i64, ptr %pos.addr, align 8, !dbg !6799
  %cmp4 = icmp ult i64 %add, %6, !dbg !6800
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6801

if.then5:                                         ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !6802
  br label %return, !dbg !6802

if.end6:                                          ; preds = %if.end
  store i1 true, ptr %retval, align 1, !dbg !6803
  br label %return, !dbg !6803

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %7 = load i1, ptr %retval, align 1, !dbg !6804
  ret i1 %7, !dbg !6804
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @file_inode(ptr noundef %f) #5 align 16 !dbg !6805 {
entry:
  %f.addr = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !6809, metadata !DIExpression()), !dbg !6810
  %0 = load ptr, ptr %f.addr, align 8, !dbg !6811
  %f_inode = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 11, !dbg !6812
  %1 = load ptr, ptr %f_inode, align 8, !dbg !6812
  ret ptr %1, !dbg !6813
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @snd_info_text_entry_open(ptr noundef %inode, ptr noundef %file) #0 align 16 !dbg !6814 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %data = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6816, metadata !DIExpression()), !dbg !6823
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6817, metadata !DIExpression()), !dbg !6824
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #16, !dbg !6825
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !6818, metadata !DIExpression()), !dbg !6826
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !6827
  %call = call ptr @pde_data(ptr noundef %0) #17, !dbg !6828
  store ptr %call, ptr %entry1, align 8, !dbg !6826
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #16, !dbg !6829
  call void @llvm.dbg.declare(metadata ptr %data, metadata !6819, metadata !DIExpression()), !dbg !6830
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !6831
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6820, metadata !DIExpression()), !dbg !6832
  call void @mutex_lock(ptr noundef @info_mutex) #17, !dbg !6833
  %1 = load ptr, ptr %entry1, align 8, !dbg !6834
  %call2 = call i32 @alloc_info_private(ptr noundef %1, ptr noundef %data) #17, !dbg !6835
  store i32 %call2, ptr %err, align 4, !dbg !6836
  %2 = load i32, ptr %err, align 4, !dbg !6837
  %cmp = icmp slt i32 %2, 0, !dbg !6839
  br i1 %cmp, label %if.then, label %if.end, !dbg !6840

if.then:                                          ; preds = %entry
  br label %unlock, !dbg !6841

if.end:                                           ; preds = %entry
  %call3 = call noalias ptr @kzalloc(i64 noundef 32, i32 noundef 3264) #18, !dbg !6842
  %3 = load ptr, ptr %data, align 8, !dbg !6843
  %rbuffer = getelementptr inbounds %struct.snd_info_private_data, ptr %3, i32 0, i32 0, !dbg !6844
  store ptr %call3, ptr %rbuffer, align 8, !dbg !6845
  %4 = load ptr, ptr %data, align 8, !dbg !6846
  %rbuffer4 = getelementptr inbounds %struct.snd_info_private_data, ptr %4, i32 0, i32 0, !dbg !6848
  %5 = load ptr, ptr %rbuffer4, align 8, !dbg !6848
  %tobool = icmp ne ptr %5, null, !dbg !6846
  br i1 %tobool, label %if.end6, label %if.then5, !dbg !6849

if.then5:                                         ; preds = %if.end
  store i32 -12, ptr %err, align 4, !dbg !6850
  br label %error, !dbg !6852

if.end6:                                          ; preds = %if.end
  %6 = load ptr, ptr %entry1, align 8, !dbg !6853
  %size = getelementptr inbounds %struct.snd_info_entry, ptr %6, i32 0, i32 2, !dbg !6855
  %7 = load i64, ptr %size, align 8, !dbg !6855
  %tobool7 = icmp ne i64 %7, 0, !dbg !6853
  br i1 %tobool7, label %if.then8, label %if.else, !dbg !6856

if.then8:                                         ; preds = %if.end6
  %8 = load ptr, ptr %file.addr, align 8, !dbg !6857
  %9 = load ptr, ptr %data, align 8, !dbg !6858
  %10 = load ptr, ptr %entry1, align 8, !dbg !6859
  %size9 = getelementptr inbounds %struct.snd_info_entry, ptr %10, i32 0, i32 2, !dbg !6860
  %11 = load i64, ptr %size9, align 8, !dbg !6860
  %call10 = call i32 @single_open_size(ptr noundef %8, ptr noundef @snd_info_seq_show, ptr noundef %9, i64 noundef %11) #17, !dbg !6861
  store i32 %call10, ptr %err, align 4, !dbg !6862
  br label %if.end12, !dbg !6863

if.else:                                          ; preds = %if.end6
  %12 = load ptr, ptr %file.addr, align 8, !dbg !6864
  %13 = load ptr, ptr %data, align 8, !dbg !6865
  %call11 = call i32 @single_open(ptr noundef %12, ptr noundef @snd_info_seq_show, ptr noundef %13) #17, !dbg !6866
  store i32 %call11, ptr %err, align 4, !dbg !6867
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then8
  %14 = load i32, ptr %err, align 4, !dbg !6868
  %cmp13 = icmp slt i32 %14, 0, !dbg !6870
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !6871

if.then14:                                        ; preds = %if.end12
  br label %error, !dbg !6872

if.end15:                                         ; preds = %if.end12
  call void @mutex_unlock(ptr noundef @info_mutex) #17, !dbg !6873
  store i32 0, ptr %retval, align 4, !dbg !6874
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6874

error:                                            ; preds = %if.then14, %if.then5
  call void @llvm.dbg.label(metadata !6821), !dbg !6875
  %15 = load ptr, ptr %data, align 8, !dbg !6876
  %rbuffer16 = getelementptr inbounds %struct.snd_info_private_data, ptr %15, i32 0, i32 0, !dbg !6877
  %16 = load ptr, ptr %rbuffer16, align 8, !dbg !6877
  call void @kfree(ptr noundef %16) #17, !dbg !6878
  %17 = load ptr, ptr %data, align 8, !dbg !6879
  call void @kfree(ptr noundef %17) #17, !dbg !6880
  %18 = load ptr, ptr %entry1, align 8, !dbg !6881
  %module = getelementptr inbounds %struct.snd_info_entry, ptr %18, i32 0, i32 6, !dbg !6882
  %19 = load ptr, ptr %module, align 8, !dbg !6882
  call void @module_put(ptr noundef %19) #17, !dbg !6883
  br label %unlock, !dbg !6883

unlock:                                           ; preds = %error, %if.then
  call void @llvm.dbg.label(metadata !6822), !dbg !6884
  call void @mutex_unlock(ptr noundef @info_mutex) #17, !dbg !6885
  %20 = load i32, ptr %err, align 4, !dbg !6886
  store i32 %20, ptr %retval, align 4, !dbg !6887
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6887

cleanup:                                          ; preds = %unlock, %if.end15
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !6888
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #16, !dbg !6888
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #16, !dbg !6888
  %21 = load i32, ptr %retval, align 4, !dbg !6888
  ret i32 %21, !dbg !6888
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @seq_read(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @snd_info_text_entry_write(ptr noundef %file, ptr noundef %buffer, i64 noundef %count, ptr noundef %offset) #0 align 16 !dbg !6889 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %offset.addr = alloca ptr, align 8
  %m = alloca ptr, align 8
  %data = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %buf = alloca ptr, align 8
  %pos = alloca i64, align 8
  %next = alloca i64, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %nbuf = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6891, metadata !DIExpression()), !dbg !6906
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !6892, metadata !DIExpression()), !dbg !6907
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6893, metadata !DIExpression()), !dbg !6908
  store ptr %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !6894, metadata !DIExpression()), !dbg !6909
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #16, !dbg !6910
  call void @llvm.dbg.declare(metadata ptr %m, metadata !6895, metadata !DIExpression()), !dbg !6911
  %0 = load ptr, ptr %file.addr, align 8, !dbg !6912
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !6913
  %1 = load ptr, ptr %private_data, align 8, !dbg !6913
  store ptr %1, ptr %m, align 8, !dbg !6911
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #16, !dbg !6914
  call void @llvm.dbg.declare(metadata ptr %data, metadata !6896, metadata !DIExpression()), !dbg !6915
  %2 = load ptr, ptr %m, align 8, !dbg !6916
  %private = getelementptr inbounds %struct.seq_file, ptr %2, i32 0, i32 11, !dbg !6917
  %3 = load ptr, ptr %private, align 8, !dbg !6917
  store ptr %3, ptr %data, align 8, !dbg !6915
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #16, !dbg !6918
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !6897, metadata !DIExpression()), !dbg !6919
  %4 = load ptr, ptr %data, align 8, !dbg !6920
  %entry2 = getelementptr inbounds %struct.snd_info_private_data, ptr %4, i32 0, i32 2, !dbg !6921
  %5 = load ptr, ptr %entry2, align 8, !dbg !6921
  store ptr %5, ptr %entry1, align 8, !dbg !6919
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #16, !dbg !6922
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !6898, metadata !DIExpression()), !dbg !6923
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #16, !dbg !6924
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !6899, metadata !DIExpression()), !dbg !6925
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #16, !dbg !6926
  call void @llvm.dbg.declare(metadata ptr %next, metadata !6900, metadata !DIExpression()), !dbg !6927
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !6928
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6901, metadata !DIExpression()), !dbg !6929
  store i32 0, ptr %err, align 4, !dbg !6929
  %6 = load ptr, ptr %entry1, align 8, !dbg !6930
  %c = getelementptr inbounds %struct.snd_info_entry, ptr %6, i32 0, i32 4, !dbg !6932
  %write = getelementptr inbounds %struct.snd_info_entry_text, ptr %c, i32 0, i32 1, !dbg !6933
  %7 = load ptr, ptr %write, align 8, !dbg !6933
  %tobool = icmp ne ptr %7, null, !dbg !6930
  br i1 %tobool, label %if.end, label %if.then, !dbg !6934

if.then:                                          ; preds = %entry
  store i64 -5, ptr %retval, align 8, !dbg !6935
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup42, !dbg !6935

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %offset.addr, align 8, !dbg !6936
  %9 = load i64, ptr %8, align 8, !dbg !6937
  store i64 %9, ptr %pos, align 8, !dbg !6938
  %10 = load i64, ptr %pos, align 8, !dbg !6939
  %11 = load i64, ptr %count.addr, align 8, !dbg !6941
  %call = call zeroext i1 @valid_pos(i64 noundef %10, i64 noundef %11) #17, !dbg !6942
  br i1 %call, label %if.end4, label %if.then3, !dbg !6943

if.then3:                                         ; preds = %if.end
  store i64 -5, ptr %retval, align 8, !dbg !6944
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup42, !dbg !6944

if.end4:                                          ; preds = %if.end
  %12 = load i64, ptr %pos, align 8, !dbg !6945
  %13 = load i64, ptr %count.addr, align 8, !dbg !6946
  %add = add i64 %12, %13, !dbg !6947
  store i64 %add, ptr %next, align 8, !dbg !6948
  %14 = load i64, ptr %next, align 8, !dbg !6949
  %cmp = icmp ugt i64 %14, 16384, !dbg !6951
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !6952

if.then5:                                         ; preds = %if.end4
  store i64 -5, ptr %retval, align 8, !dbg !6953
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup42, !dbg !6953

if.end6:                                          ; preds = %if.end4
  %15 = load ptr, ptr %entry1, align 8, !dbg !6954
  %access = getelementptr inbounds %struct.snd_info_entry, ptr %15, i32 0, i32 10, !dbg !6955
  call void @mutex_lock(ptr noundef %access) #17, !dbg !6956
  %16 = load ptr, ptr %data, align 8, !dbg !6957
  %wbuffer = getelementptr inbounds %struct.snd_info_private_data, ptr %16, i32 0, i32 1, !dbg !6958
  %17 = load ptr, ptr %wbuffer, align 8, !dbg !6958
  store ptr %17, ptr %buf, align 8, !dbg !6959
  %18 = load ptr, ptr %buf, align 8, !dbg !6960
  %tobool7 = icmp ne ptr %18, null, !dbg !6960
  br i1 %tobool7, label %if.end14, label %if.then8, !dbg !6962

if.then8:                                         ; preds = %if.end6
  %call9 = call noalias ptr @kzalloc(i64 noundef 32, i32 noundef 3264) #18, !dbg !6963
  store ptr %call9, ptr %buf, align 8, !dbg !6965
  %19 = load ptr, ptr %data, align 8, !dbg !6966
  %wbuffer10 = getelementptr inbounds %struct.snd_info_private_data, ptr %19, i32 0, i32 1, !dbg !6967
  store ptr %call9, ptr %wbuffer10, align 8, !dbg !6968
  %20 = load ptr, ptr %buf, align 8, !dbg !6969
  %tobool11 = icmp ne ptr %20, null, !dbg !6969
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !6971

if.then12:                                        ; preds = %if.then8
  store i32 -12, ptr %err, align 4, !dbg !6972
  br label %error, !dbg !6974

if.end13:                                         ; preds = %if.then8
  br label %if.end14, !dbg !6975

if.end14:                                         ; preds = %if.end13, %if.end6
  %21 = load i64, ptr %next, align 8, !dbg !6976
  %22 = load ptr, ptr %buf, align 8, !dbg !6977
  %len = getelementptr inbounds %struct.snd_info_buffer, ptr %22, i32 0, i32 3, !dbg !6978
  %23 = load i32, ptr %len, align 8, !dbg !6978
  %conv = zext i32 %23 to i64, !dbg !6977
  %cmp15 = icmp ugt i64 %21, %conv, !dbg !6979
  br i1 %cmp15, label %if.then17, label %if.end29, !dbg !6980

if.then17:                                        ; preds = %if.end14
  call void @llvm.lifetime.start.p0(i64 8, ptr %nbuf) #16, !dbg !6981
  call void @llvm.dbg.declare(metadata ptr %nbuf, metadata !6902, metadata !DIExpression()), !dbg !6982
  %24 = load i64, ptr %next, align 8, !dbg !6983
  %add18 = add i64 %24, 4095, !dbg !6983
  %and = and i64 %add18, -4096, !dbg !6983
  %call19 = call noalias ptr @kvzalloc(i64 noundef %and, i32 noundef 3264) #18, !dbg !6984
  store ptr %call19, ptr %nbuf, align 8, !dbg !6982
  %25 = load ptr, ptr %nbuf, align 8, !dbg !6985
  %tobool20 = icmp ne ptr %25, null, !dbg !6985
  br i1 %tobool20, label %if.end22, label %if.then21, !dbg !6987

if.then21:                                        ; preds = %if.then17
  store i32 -12, ptr %err, align 4, !dbg !6988
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6990

if.end22:                                         ; preds = %if.then17
  %26 = load ptr, ptr %buf, align 8, !dbg !6991
  %buffer23 = getelementptr inbounds %struct.snd_info_buffer, ptr %26, i32 0, i32 0, !dbg !6992
  %27 = load ptr, ptr %buffer23, align 8, !dbg !6992
  call void @kvfree(ptr noundef %27) #17, !dbg !6993
  %28 = load ptr, ptr %nbuf, align 8, !dbg !6994
  %29 = load ptr, ptr %buf, align 8, !dbg !6995
  %buffer24 = getelementptr inbounds %struct.snd_info_buffer, ptr %29, i32 0, i32 0, !dbg !6996
  store ptr %28, ptr %buffer24, align 8, !dbg !6997
  %30 = load i64, ptr %next, align 8, !dbg !6998
  %add25 = add i64 %30, 4095, !dbg !6998
  %and26 = and i64 %add25, -4096, !dbg !6998
  %conv27 = trunc i64 %and26 to i32, !dbg !6998
  %31 = load ptr, ptr %buf, align 8, !dbg !6999
  %len28 = getelementptr inbounds %struct.snd_info_buffer, ptr %31, i32 0, i32 3, !dbg !7000
  store i32 %conv27, ptr %len28, align 8, !dbg !7001
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !7002
  br label %cleanup, !dbg !7002

cleanup:                                          ; preds = %if.then21, %if.end22
  call void @llvm.lifetime.end.p0(i64 8, ptr %nbuf) #16, !dbg !7002
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup42 [
    i32 0, label %cleanup.cont
    i32 2, label %error
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end29, !dbg !7003

if.end29:                                         ; preds = %cleanup.cont, %if.end14
  %32 = load ptr, ptr %buf, align 8, !dbg !7004
  %buffer30 = getelementptr inbounds %struct.snd_info_buffer, ptr %32, i32 0, i32 0, !dbg !7006
  %33 = load ptr, ptr %buffer30, align 8, !dbg !7006
  %34 = load i64, ptr %pos, align 8, !dbg !7007
  %add.ptr = getelementptr i8, ptr %33, i64 %34, !dbg !7008
  %35 = load ptr, ptr %buffer.addr, align 8, !dbg !7009
  %36 = load i64, ptr %count.addr, align 8, !dbg !7010
  %call31 = call i64 @copy_from_user(ptr noundef %add.ptr, ptr noundef %35, i64 noundef %36) #17, !dbg !7011
  %tobool32 = icmp ne i64 %call31, 0, !dbg !7011
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !7012

if.then33:                                        ; preds = %if.end29
  store i32 -14, ptr %err, align 4, !dbg !7013
  br label %error, !dbg !7015

if.end34:                                         ; preds = %if.end29
  %37 = load i64, ptr %next, align 8, !dbg !7016
  %conv35 = trunc i64 %37 to i32, !dbg !7016
  %38 = load ptr, ptr %buf, align 8, !dbg !7017
  %size = getelementptr inbounds %struct.snd_info_buffer, ptr %38, i32 0, i32 2, !dbg !7018
  store i32 %conv35, ptr %size, align 4, !dbg !7019
  br label %error, !dbg !7017

error:                                            ; preds = %if.end34, %cleanup, %if.then33, %if.then12
  call void @llvm.dbg.label(metadata !6905), !dbg !7020
  %39 = load ptr, ptr %entry1, align 8, !dbg !7021
  %access36 = getelementptr inbounds %struct.snd_info_entry, ptr %39, i32 0, i32 10, !dbg !7022
  call void @mutex_unlock(ptr noundef %access36) #17, !dbg !7023
  %40 = load i32, ptr %err, align 4, !dbg !7024
  %cmp37 = icmp slt i32 %40, 0, !dbg !7026
  br i1 %cmp37, label %if.then39, label %if.end41, !dbg !7027

if.then39:                                        ; preds = %error
  %41 = load i32, ptr %err, align 4, !dbg !7028
  %conv40 = sext i32 %41 to i64, !dbg !7028
  store i64 %conv40, ptr %retval, align 8, !dbg !7029
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup42, !dbg !7029

if.end41:                                         ; preds = %error
  %42 = load i64, ptr %next, align 8, !dbg !7030
  %43 = load ptr, ptr %offset.addr, align 8, !dbg !7031
  store i64 %42, ptr %43, align 8, !dbg !7032
  %44 = load i64, ptr %count.addr, align 8, !dbg !7033
  store i64 %44, ptr %retval, align 8, !dbg !7034
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup42, !dbg !7034

cleanup42:                                        ; preds = %if.end41, %if.then39, %cleanup, %if.then5, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !7035
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #16, !dbg !7035
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #16, !dbg !7035
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #16, !dbg !7035
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #16, !dbg !7035
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #16, !dbg !7035
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #16, !dbg !7035
  %45 = load i64, ptr %retval, align 8, !dbg !7035
  ret i64 %45, !dbg !7035
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @snd_info_text_entry_release(ptr noundef %inode, ptr noundef %file) #0 align 16 !dbg !7036 {
entry:
  %inode.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %m = alloca ptr, align 8
  %data = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !7038, metadata !DIExpression()), !dbg !7043
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !7039, metadata !DIExpression()), !dbg !7044
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #16, !dbg !7045
  call void @llvm.dbg.declare(metadata ptr %m, metadata !7040, metadata !DIExpression()), !dbg !7046
  %0 = load ptr, ptr %file.addr, align 8, !dbg !7047
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !7048
  %1 = load ptr, ptr %private_data, align 8, !dbg !7048
  store ptr %1, ptr %m, align 8, !dbg !7046
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #16, !dbg !7049
  call void @llvm.dbg.declare(metadata ptr %data, metadata !7041, metadata !DIExpression()), !dbg !7050
  %2 = load ptr, ptr %m, align 8, !dbg !7051
  %private = getelementptr inbounds %struct.seq_file, ptr %2, i32 0, i32 11, !dbg !7052
  %3 = load ptr, ptr %private, align 8, !dbg !7052
  store ptr %3, ptr %data, align 8, !dbg !7050
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #16, !dbg !7053
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !7042, metadata !DIExpression()), !dbg !7054
  %4 = load ptr, ptr %data, align 8, !dbg !7055
  %entry2 = getelementptr inbounds %struct.snd_info_private_data, ptr %4, i32 0, i32 2, !dbg !7056
  %5 = load ptr, ptr %entry2, align 8, !dbg !7056
  store ptr %5, ptr %entry1, align 8, !dbg !7054
  %6 = load ptr, ptr %data, align 8, !dbg !7057
  %wbuffer = getelementptr inbounds %struct.snd_info_private_data, ptr %6, i32 0, i32 1, !dbg !7059
  %7 = load ptr, ptr %wbuffer, align 8, !dbg !7059
  %tobool = icmp ne ptr %7, null, !dbg !7057
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !7060

land.lhs.true:                                    ; preds = %entry
  %8 = load ptr, ptr %entry1, align 8, !dbg !7061
  %c = getelementptr inbounds %struct.snd_info_entry, ptr %8, i32 0, i32 4, !dbg !7062
  %write = getelementptr inbounds %struct.snd_info_entry_text, ptr %c, i32 0, i32 1, !dbg !7063
  %9 = load ptr, ptr %write, align 8, !dbg !7063
  %tobool3 = icmp ne ptr %9, null, !dbg !7061
  br i1 %tobool3, label %if.then, label %if.end, !dbg !7064

if.then:                                          ; preds = %land.lhs.true
  %10 = load ptr, ptr %entry1, align 8, !dbg !7065
  %c4 = getelementptr inbounds %struct.snd_info_entry, ptr %10, i32 0, i32 4, !dbg !7066
  %write5 = getelementptr inbounds %struct.snd_info_entry_text, ptr %c4, i32 0, i32 1, !dbg !7067
  %11 = load ptr, ptr %write5, align 8, !dbg !7067
  %12 = load ptr, ptr %entry1, align 8, !dbg !7068
  %13 = load ptr, ptr %data, align 8, !dbg !7069
  %wbuffer6 = getelementptr inbounds %struct.snd_info_private_data, ptr %13, i32 0, i32 1, !dbg !7070
  %14 = load ptr, ptr %wbuffer6, align 8, !dbg !7070
  call void %11(ptr noundef %12, ptr noundef %14) #17, !dbg !7065
  br label %if.end, !dbg !7065

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %15 = load ptr, ptr %inode.addr, align 8, !dbg !7071
  %16 = load ptr, ptr %file.addr, align 8, !dbg !7072
  %call = call i32 @single_release(ptr noundef %15, ptr noundef %16) #17, !dbg !7073
  %17 = load ptr, ptr %data, align 8, !dbg !7074
  %rbuffer = getelementptr inbounds %struct.snd_info_private_data, ptr %17, i32 0, i32 0, !dbg !7075
  %18 = load ptr, ptr %rbuffer, align 8, !dbg !7075
  call void @kfree(ptr noundef %18) #17, !dbg !7076
  %19 = load ptr, ptr %data, align 8, !dbg !7077
  %wbuffer7 = getelementptr inbounds %struct.snd_info_private_data, ptr %19, i32 0, i32 1, !dbg !7079
  %20 = load ptr, ptr %wbuffer7, align 8, !dbg !7079
  %tobool8 = icmp ne ptr %20, null, !dbg !7077
  br i1 %tobool8, label %if.then9, label %if.end12, !dbg !7080

if.then9:                                         ; preds = %if.end
  %21 = load ptr, ptr %data, align 8, !dbg !7081
  %wbuffer10 = getelementptr inbounds %struct.snd_info_private_data, ptr %21, i32 0, i32 1, !dbg !7083
  %22 = load ptr, ptr %wbuffer10, align 8, !dbg !7083
  %buffer = getelementptr inbounds %struct.snd_info_buffer, ptr %22, i32 0, i32 0, !dbg !7084
  %23 = load ptr, ptr %buffer, align 8, !dbg !7084
  call void @kvfree(ptr noundef %23) #17, !dbg !7085
  %24 = load ptr, ptr %data, align 8, !dbg !7086
  %wbuffer11 = getelementptr inbounds %struct.snd_info_private_data, ptr %24, i32 0, i32 1, !dbg !7087
  %25 = load ptr, ptr %wbuffer11, align 8, !dbg !7087
  call void @kfree(ptr noundef %25) #17, !dbg !7088
  br label %if.end12, !dbg !7089

if.end12:                                         ; preds = %if.then9, %if.end
  %26 = load ptr, ptr %entry1, align 8, !dbg !7090
  %module = getelementptr inbounds %struct.snd_info_entry, ptr %26, i32 0, i32 6, !dbg !7091
  %27 = load ptr, ptr %module, align 8, !dbg !7091
  call void @module_put(ptr noundef %27) #17, !dbg !7092
  %28 = load ptr, ptr %data, align 8, !dbg !7093
  call void @kfree(ptr noundef %28) #17, !dbg !7094
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #16, !dbg !7095
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #16, !dbg !7095
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #16, !dbg !7095
  ret i32 0, !dbg !7096
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7097 dso_local i32 @single_open_size(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @snd_info_seq_show(ptr noundef %seq, ptr noundef %p) #0 align 16 !dbg !7100 {
entry:
  %retval = alloca i32, align 4
  %seq.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %seq, ptr %seq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !7102, metadata !DIExpression()), !dbg !7106
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7103, metadata !DIExpression()), !dbg !7107
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #16, !dbg !7108
  call void @llvm.dbg.declare(metadata ptr %data, metadata !7104, metadata !DIExpression()), !dbg !7109
  %0 = load ptr, ptr %seq.addr, align 8, !dbg !7110
  %private = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11, !dbg !7111
  %1 = load ptr, ptr %private, align 8, !dbg !7111
  store ptr %1, ptr %data, align 8, !dbg !7109
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #16, !dbg !7112
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !7105, metadata !DIExpression()), !dbg !7113
  %2 = load ptr, ptr %data, align 8, !dbg !7114
  %entry2 = getelementptr inbounds %struct.snd_info_private_data, ptr %2, i32 0, i32 2, !dbg !7115
  %3 = load ptr, ptr %entry2, align 8, !dbg !7115
  store ptr %3, ptr %entry1, align 8, !dbg !7113
  %4 = load ptr, ptr %entry1, align 8, !dbg !7116
  %c = getelementptr inbounds %struct.snd_info_entry, ptr %4, i32 0, i32 4, !dbg !7118
  %read = getelementptr inbounds %struct.snd_info_entry_text, ptr %c, i32 0, i32 0, !dbg !7119
  %5 = load ptr, ptr %read, align 8, !dbg !7119
  %tobool = icmp ne ptr %5, null, !dbg !7116
  br i1 %tobool, label %if.else, label %if.then, !dbg !7120

if.then:                                          ; preds = %entry
  store i32 -5, ptr %retval, align 4, !dbg !7121
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7121

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %seq.addr, align 8, !dbg !7123
  %7 = load ptr, ptr %data, align 8, !dbg !7125
  %rbuffer = getelementptr inbounds %struct.snd_info_private_data, ptr %7, i32 0, i32 0, !dbg !7126
  %8 = load ptr, ptr %rbuffer, align 8, !dbg !7126
  %buffer = getelementptr inbounds %struct.snd_info_buffer, ptr %8, i32 0, i32 0, !dbg !7127
  store ptr %6, ptr %buffer, align 8, !dbg !7128
  %9 = load ptr, ptr %entry1, align 8, !dbg !7129
  %c3 = getelementptr inbounds %struct.snd_info_entry, ptr %9, i32 0, i32 4, !dbg !7130
  %read4 = getelementptr inbounds %struct.snd_info_entry_text, ptr %c3, i32 0, i32 0, !dbg !7131
  %10 = load ptr, ptr %read4, align 8, !dbg !7131
  %11 = load ptr, ptr %entry1, align 8, !dbg !7132
  %12 = load ptr, ptr %data, align 8, !dbg !7133
  %rbuffer5 = getelementptr inbounds %struct.snd_info_private_data, ptr %12, i32 0, i32 0, !dbg !7134
  %13 = load ptr, ptr %rbuffer5, align 8, !dbg !7134
  call void %10(ptr noundef %11, ptr noundef %13) #17, !dbg !7129
  br label %if.end

if.end:                                           ; preds = %if.else
  store i32 0, ptr %retval, align 4, !dbg !7135
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7135

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #16, !dbg !7136
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #16, !dbg !7136
  %14 = load i32, ptr %retval, align 4, !dbg !7136
  ret i32 %14, !dbg !7136
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7137 dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kvzalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !7140 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7142, metadata !DIExpression()), !dbg !7144
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7143, metadata !DIExpression()), !dbg !7145
  %0 = load i64, ptr %size.addr, align 8, !dbg !7146
  %1 = load i32, ptr %flags.addr, align 4, !dbg !7147
  %or = or i32 %1, 256, !dbg !7148
  %call = call noalias ptr @kvmalloc(i64 noundef %0, i32 noundef %or) #18, !dbg !7149
  ret ptr %call, !dbg !7150
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7151 dso_local void @kvfree(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_from_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #11 align 16 !dbg !7152 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !7157, metadata !DIExpression()), !dbg !7160
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !7158, metadata !DIExpression()), !dbg !7161
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !7159, metadata !DIExpression()), !dbg !7162
  %0 = load ptr, ptr %to.addr, align 8, !dbg !7163
  %1 = load i64, ptr %n.addr, align 8, !dbg !7165
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false) #17, !dbg !7166
  br i1 %call, label %if.then, label %if.end, !dbg !7167

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !7168
  %3 = load ptr, ptr %from.addr, align 8, !dbg !7169
  %4 = load i64, ptr %n.addr, align 8, !dbg !7170
  %call1 = call i64 @_copy_from_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #17, !dbg !7171
  store i64 %call1, ptr %n.addr, align 8, !dbg !7172
  br label %if.end, !dbg !7173

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !7174
  ret i64 %5, !dbg !7175
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kvmalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !7176 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7178, metadata !DIExpression()), !dbg !7180
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7179, metadata !DIExpression()), !dbg !7181
  %0 = load i64, ptr %size.addr, align 8, !dbg !7182
  %1 = load i32, ptr %flags.addr, align 4, !dbg !7183
  %call = call noalias ptr @kvmalloc_node(i64 noundef %0, i32 noundef %1, i32 noundef -1) #18, !dbg !7184
  ret ptr %call, !dbg !7185
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !7186 dso_local noalias ptr @kvmalloc_node(i64 noundef, i32 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_copy_size(ptr noundef %addr, i64 noundef %bytes, i1 noundef zeroext %is_source) #11 align 16 !dbg !7189 {
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
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7193, metadata !DIExpression()), !dbg !7203
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !7194, metadata !DIExpression()), !dbg !7204
  %frombool = zext i1 %is_source to i8
  store i8 %frombool, ptr %is_source.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_source.addr, metadata !7195, metadata !DIExpression()), !dbg !7205
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #16, !dbg !7206
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !7196, metadata !DIExpression()), !dbg !7207
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7208
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false), !dbg !7209
  %conv = trunc i64 %1 to i32, !dbg !7209
  store i32 %conv, ptr %sz, align 4, !dbg !7207
  %2 = load i32, ptr %sz, align 4, !dbg !7210
  %cmp = icmp sge i32 %2, 0, !dbg !7210
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !7210

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !7210
  %conv2 = sext i32 %3 to i64, !dbg !7210
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !7210
  %cmp3 = icmp ult i64 %conv2, %4, !dbg !7210
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !7212
  %lnot = xor i1 %5, true, !dbg !7210
  %lnot5 = xor i1 %lnot, true, !dbg !7210
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !7210
  %conv6 = sext i32 %lnot.ext to i64, !dbg !7210
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !7210
  %tobool = icmp ne i64 %expval, 0, !dbg !7210
  br i1 %tobool, label %if.then, label %if.end12, !dbg !7213

if.then:                                          ; preds = %land.end
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !7214
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !7217
  br i1 %7, label %if.else, label %if.then7, !dbg !7218

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %sz, align 4, !dbg !7219
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !7220
  call void @copy_overflow(i32 noundef %8, i64 noundef %9) #17, !dbg !7221
  br label %if.end11, !dbg !7221

if.else:                                          ; preds = %if.then
  %10 = load i8, ptr %is_source.addr, align 1, !dbg !7222, !range !6037, !noundef !549
  %tobool8 = trunc i8 %10 to i1, !dbg !7222
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !7224

if.then9:                                         ; preds = %if.else
  call void @__bad_copy_from() #17, !dbg !7225, !srcloc !7226
  br label %if.end, !dbg !7225

if.else10:                                        ; preds = %if.else
  call void @__bad_copy_to() #17, !dbg !7227, !srcloc !7228
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  store i1 false, ptr %retval, align 1, !dbg !7229
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7229

if.end12:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !7230
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !7197, metadata !DIExpression()), !dbg !7230
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !7230
  %cmp13 = icmp ugt i64 %11, 2147483647, !dbg !7230
  %lnot15 = xor i1 %cmp13, true, !dbg !7230
  %lnot17 = xor i1 %lnot15, true, !dbg !7230
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !7230
  store i32 %lnot.ext18, ptr %__ret_warn_on, align 4, !dbg !7230
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !7231
  %tobool19 = icmp ne i32 %12, 0, !dbg !7231
  %lnot20 = xor i1 %tobool19, true, !dbg !7231
  %lnot22 = xor i1 %lnot20, true, !dbg !7231
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !7231
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !7231
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !7231
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !7231
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !7230

if.then27:                                        ; preds = %if.end12
  br label %do.body, !dbg !7231

do.body:                                          ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !7232
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !7200, metadata !DIExpression()), !dbg !7232
  store i32 2307, ptr %__flags, align 4, !dbg !7232
  br label %do.body28, !dbg !7232

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !7233

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !7233

do.end:                                           ; preds = %do.cond
  br label %do.body29, !dbg !7232

do.body29:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !7235
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.18, i32 249, i32 %13, i64 12) #16, !dbg !7235, !srcloc !7237
  br label %do.cond30, !dbg !7235

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !7235

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !7232

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !7238

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !7238

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !7231
  br label %do.cond35, !dbg !7232

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !7232

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !7232

if.end37:                                         ; preds = %do.end36, %if.end12
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !7230
  %tobool38 = icmp ne i32 %14, 0, !dbg !7230
  %lnot39 = xor i1 %tobool38, true, !dbg !7230
  %lnot41 = xor i1 %lnot39, true, !dbg !7230
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !7230
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !7230
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !7230
  store i64 %expval44, ptr %tmp, align 8, !dbg !7231
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !7240
  %15 = load i64, ptr %tmp, align 8, !dbg !7230
  %tobool45 = icmp ne i64 %15, 0, !dbg !7240
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !7241

if.then46:                                        ; preds = %if.end37
  store i1 false, ptr %retval, align 1, !dbg !7242
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7242

if.end47:                                         ; preds = %if.end37
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !7243
  %17 = load i64, ptr %bytes.addr, align 8, !dbg !7244
  %18 = load i8, ptr %is_source.addr, align 1, !dbg !7245, !range !6037, !noundef !549
  %tobool48 = trunc i8 %18 to i1, !dbg !7245
  call void @check_object_size(ptr noundef %16, i64 noundef %17, i1 noundef zeroext %tobool48) #17, !dbg !7246
  store i1 true, ptr %retval, align 1, !dbg !7247
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7247

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #16, !dbg !7248
  %19 = load i1, ptr %retval, align 1, !dbg !7248
  ret i1 %19, !dbg !7248
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7249 dso_local i64 @_copy_from_user(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_overflow(i32 noundef %size, i64 noundef %count) #5 align 16 !dbg !7250 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7254, metadata !DIExpression()), !dbg !7256
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !7255, metadata !DIExpression()), !dbg !7257
  %0 = load i32, ptr %size.addr, align 4, !dbg !7258
  %1 = load i64, ptr %count.addr, align 8, !dbg !7260
  call void @__copy_overflow(i32 noundef %0, i64 noundef %1) #17, !dbg !7261
  ret void, !dbg !7262
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7263 dso_local void @__bad_copy_from() #14

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7264 dso_local void @__bad_copy_to() #15

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #5 align 16 !dbg !7265 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7269, metadata !DIExpression()), !dbg !7272
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !7270, metadata !DIExpression()), !dbg !7273
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !7271, metadata !DIExpression()), !dbg !7274
  ret void, !dbg !7275
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7276 dso_local void @__copy_overflow(i32 noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7277 dso_local i32 @single_release(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @snd_info_version_read(ptr noundef %entry1, ptr noundef %buffer) #0 align 16 !dbg !7278 {
entry:
  %entry.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !7280, metadata !DIExpression()), !dbg !7282
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !7281, metadata !DIExpression()), !dbg !7283
  %0 = load ptr, ptr %buffer.addr, align 8, !dbg !7284
  %buffer2 = getelementptr inbounds %struct.snd_info_buffer, ptr %0, i32 0, i32 0, !dbg !7284
  %1 = load ptr, ptr %buffer2, align 8, !dbg !7284
  %call = call ptr @init_utsname() #17, !dbg !7284
  %release = getelementptr inbounds %struct.new_utsname, ptr %call, i32 0, i32 2, !dbg !7284
  %arraydecay = getelementptr inbounds [65 x i8], ptr %release, i64 0, i64 0, !dbg !7284
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef @.str.19, ptr noundef %arraydecay) #17, !dbg !7284
  ret void, !dbg !7285
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @init_utsname() #5 align 16 !dbg !7286 {
entry:
  ret ptr @init_uts_ns, !dbg !7290
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid "dontcall-error"="copy source size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone null_pointer_is_valid "dontcall-error"="copy destination size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { nounwind }
attributes #17 = { noredzone }
attributes #18 = { noredzone allocsize(0) }
attributes #19 = { noredzone allocsize(2) }
attributes #20 = { noredzone noreturn }

!llvm.dbg.cu = !{!10}
!llvm.module.flags = !{!4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393}
!llvm.ident = !{!4394}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "reserved", scope: !2, file: !3, line: 22, type: !4385, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "snd_info_check_reserved_words", scope: !3, file: !3, line: 20, type: !4, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !4380)
!3 = !DIFile(filename: "sound/core/info.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee80b8a20dec82c14fe0927450006da2")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !7}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!10 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF sound/core/.info.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22sound/core/snd\22 -D KBUILD_BASENAME=\22info\22 -D KBUILD_MODNAME=\22snd\22 -D __KBUILD_MODNAME=kmod_snd -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o sound/core/info.ll sound/core/info.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !162, globals: !4265, splitDebugInlining: false, nameTableKind: None)
!11 = !{!12, !20, !25, !33, !49, !57, !63, !68, !74, !81, !88, !94, !100, !107, !115, !122, !131, !136, !141, !147, !152}
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !13, line: 312, baseType: !14, size: 32, elements: !15)
!13 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !{!16, !17, !18, !19}
!16 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!17 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!18 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!19 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !21, line: 2052, baseType: !14, size: 32, elements: !22)
!21 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!22 = !{!23, !24}
!23 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!24 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !26, line: 9, baseType: !14, size: 32, elements: !27)
!26 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!27 = !{!28, !29, !30, !31, !32}
!28 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!29 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!30 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!31 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!32 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!33 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !34, line: 1325, baseType: !14, size: 32, elements: !35)
!34 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!35 = !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48}
!36 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!37 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!38 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!39 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!40 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!41 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!42 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!43 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!44 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!45 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!46 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!47 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!48 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !50, line: 68, baseType: !14, size: 32, elements: !51)
!50 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!51 = !{!52, !53, !54, !55, !56}
!52 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!53 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!54 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!55 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!56 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !58, line: 54, baseType: !14, size: 32, elements: !59)
!58 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!59 = !{!60, !61, !62}
!60 = !DIEnumerator(name: "USRQUOTA", value: 0)
!61 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!62 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !64, line: 65, baseType: !14, size: 32, elements: !65)
!64 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!65 = !{!66, !67}
!66 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!67 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !69, line: 16, baseType: !14, size: 32, elements: !70)
!69 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!70 = !{!71, !72, !73}
!71 = !DIEnumerator(name: "TT_NONE", value: 0)
!72 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!73 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !75, line: 51, baseType: !14, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!76 = !{!77, !78, !79, !80}
!77 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!78 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!79 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!80 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !82, line: 15, baseType: !14, size: 32, elements: !83)
!82 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!83 = !{!84, !85, !86, !87}
!84 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!85 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!86 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!87 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!88 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !89, line: 26, baseType: !14, size: 32, elements: !90)
!89 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!90 = !{!91, !92, !93}
!91 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!92 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!93 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !95, line: 45, baseType: !14, size: 32, elements: !96)
!95 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!96 = !{!97, !98, !99}
!97 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!98 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!99 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !101, line: 487, baseType: !14, size: 32, elements: !102)
!101 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!102 = !{!103, !104, !105, !106}
!103 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!104 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!105 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!106 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !108, line: 620, baseType: !14, size: 32, elements: !109)
!108 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!109 = !{!110, !111, !112, !113, !114}
!110 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!111 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!112 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!113 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!114 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!115 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !108, line: 597, baseType: !6, size: 32, elements: !116)
!116 = !{!117, !118, !119, !120, !121}
!117 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!118 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!119 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!120 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!121 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !101, line: 547, baseType: !14, size: 32, elements: !123)
!123 = !{!124, !125, !126, !127, !128, !129, !130}
!124 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!125 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!126 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!127 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!128 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!129 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!130 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!131 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !101, line: 564, baseType: !14, size: 32, elements: !132)
!132 = !{!133, !134, !135}
!133 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!134 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!135 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!136 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !101, line: 577, baseType: !14, size: 32, elements: !137)
!137 = !{!138, !139, !140}
!138 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!139 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!140 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !101, line: 503, baseType: !14, size: 32, elements: !142)
!142 = !{!143, !144, !145, !146}
!143 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!144 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!145 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!146 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !148, line: 10, baseType: !14, size: 32, elements: !149)
!148 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!149 = !{!150, !151}
!150 = !DIEnumerator(name: "false", value: 0)
!151 = !DIEnumerator(name: "true", value: 1)
!152 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !153, line: 364, baseType: !14, size: 32, elements: !154)
!153 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!154 = !{!155, !156, !157, !158, !159, !160, !161}
!155 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!156 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!157 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!158 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!159 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!160 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!161 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!162 = !{!163, !164, !4182, !618, !1333, !316, !4263, !298, !302, !1066, !266, !313, !6}
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !13, line: 402, size: 9216, align: 512, elements: !166)
!166 = !{!167, !168, !175, !179, !3858, !3884, !3885, !3886, !3887, !3891, !3894, !3895, !3896, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3963, !3967, !3985, !4002, !4003, !4004, !4005, !4014, !4037, !4038, !4041, !4044, !4045, !4046, !4047, !4048, !4049, !4050, !4055, !4056, !4142, !4150, !4151, !4152, !4154, !4158, !4159, !4163, !4164, !4165, !4166, !4168, !4169, !4170, !4177, !4178, !4179, !4181}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !165, file: !13, line: 403, baseType: !12, size: 32)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !165, file: !13, line: 406, baseType: !169, size: 128, offset: 64)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !170, line: 190, size: 128, elements: !171)
!170 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!171 = !{!172, !174}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !169, file: !170, line: 191, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !169, file: !170, line: 191, baseType: !173, size: 64, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !165, file: !13, line: 409, baseType: !176, size: 448, offset: 192)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 448, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 56)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !165, file: !13, line: 417, baseType: !180, size: 768, offset: 640)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !13, line: 45, size: 768, elements: !181)
!181 = !{!182, !3852, !3853, !3854, !3857}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !180, file: !13, line: 46, baseType: !183, size: 512)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !184, line: 64, size: 512, elements: !185)
!184 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!185 = !{!186, !187, !188, !190, !279, !3750, !3842, !3847, !3848, !3849, !3850, !3851}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !183, file: !184, line: 65, baseType: !7, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !183, file: !184, line: 66, baseType: !169, size: 128, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !183, file: !184, line: 67, baseType: !189, size: 64, offset: 192)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !183, file: !184, line: 68, baseType: !191, size: 64, offset: 256)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !184, line: 168, size: 768, elements: !193)
!193 = !{!194, !195, !238, !239}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !192, file: !184, line: 169, baseType: !169, size: 128)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !192, file: !184, line: 170, baseType: !196, size: 32, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !197, line: 29, baseType: !198)
!197 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !197, line: 17, size: 32, elements: !199)
!199 = !{!200}
!200 = !DIDerivedType(tag: DW_TAG_member, scope: !198, file: !197, line: 18, baseType: !201, size: 32)
!201 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !198, file: !197, line: 18, size: 32, elements: !202)
!202 = !{!203}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !201, file: !197, line: 19, baseType: !204, size: 32)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !205, line: 14, size: 32, elements: !206)
!205 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!206 = !{!207}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !204, file: !205, line: 15, baseType: !208, size: 32)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !209, line: 44, baseType: !210)
!209 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !209, line: 14, size: 32, elements: !211)
!211 = !{!212}
!212 = !DIDerivedType(tag: DW_TAG_member, scope: !210, file: !209, line: 15, baseType: !213, size: 32)
!213 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !210, file: !209, line: 15, size: 32, elements: !214)
!214 = !{!215, !220, !230}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !213, file: !209, line: 16, baseType: !216, size: 32)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !170, line: 174, baseType: !217)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !170, line: 172, size: 32, elements: !218)
!218 = !{!219}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !217, file: !170, line: 173, baseType: !6, size: 32)
!220 = !DIDerivedType(tag: DW_TAG_member, scope: !213, file: !209, line: 24, baseType: !221, size: 16)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !213, file: !209, line: 24, size: 16, elements: !222)
!222 = !{!223, !229}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !221, file: !209, line: 25, baseType: !224, size: 8)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !225, line: 17, baseType: !226)
!225 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !227, line: 21, baseType: !228)
!227 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!228 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !221, file: !209, line: 26, baseType: !224, size: 8, offset: 8)
!230 = !DIDerivedType(tag: DW_TAG_member, scope: !213, file: !209, line: 28, baseType: !231, size: 32)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !213, file: !209, line: 28, size: 32, elements: !232)
!232 = !{!233, !237}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !231, file: !209, line: 29, baseType: !234, size: 16)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !225, line: 19, baseType: !235)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !227, line: 24, baseType: !236)
!236 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !231, file: !209, line: 30, baseType: !234, size: 16, offset: 16)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !192, file: !184, line: 171, baseType: !183, size: 512, offset: 192)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !192, file: !184, line: 172, baseType: !240, size: 64, offset: 704)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !242)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !184, line: 133, size: 192, elements: !243)
!243 = !{!244, !251, !256}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !242, file: !184, line: 134, baseType: !245, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !246)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{!6, !249}
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !183)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !242, file: !184, line: 135, baseType: !252, size: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{!7, !249}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !242, file: !184, line: 136, baseType: !257, size: 64, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !258)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{!6, !249, !261}
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !184, line: 125, size: 20736, elements: !263)
!263 = !{!264, !269, !273, !274, !278}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !262, file: !184, line: 126, baseType: !265, size: 192)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 192, elements: !267)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!267 = !{!268}
!268 = !DISubrange(count: 3)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !262, file: !184, line: 127, baseType: !270, size: 4096, offset: 192)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 4096, elements: !271)
!271 = !{!272}
!272 = !DISubrange(count: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !262, file: !184, line: 128, baseType: !6, size: 32, offset: 4288)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !262, file: !184, line: 129, baseType: !275, size: 16384, offset: 4320)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 16384, elements: !276)
!276 = !{!277}
!277 = !DISubrange(count: 2048)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !262, file: !184, line: 130, baseType: !6, size: 32, offset: 20704)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !183, file: !184, line: 69, baseType: !280, size: 64, offset: 320)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !282)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !184, line: 116, size: 384, elements: !283)
!283 = !{!284, !288, !317, !3712, !3740, !3744}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !282, file: !184, line: 117, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{null, !189}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !282, file: !184, line: 118, baseType: !289, size: 64, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !291)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !292, line: 254, size: 128, elements: !293)
!292 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!293 = !{!294, !309}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !291, file: !292, line: 255, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DISubroutineType(types: !297)
!297 = !{!298, !189, !303, !266}
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !170, line: 66, baseType: !299)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !300, line: 73, baseType: !301)
!300 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !300, line: 15, baseType: !302)
!302 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !292, line: 30, size: 128, elements: !305)
!305 = !{!306, !307}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !304, file: !292, line: 31, baseType: !7, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !304, file: !292, line: 32, baseType: !308, size: 16, offset: 64)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !170, line: 24, baseType: !236)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !291, file: !292, line: 256, baseType: !310, size: 64, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!298, !189, !303, !7, !313}
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !170, line: 61, baseType: !314)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !300, line: 72, baseType: !315)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !300, line: 16, baseType: !316)
!316 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !282, file: !184, line: 119, baseType: !318, size: 64, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !321)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !292, line: 84, size: 320, elements: !322)
!322 = !{!323, !324, !328, !3708, !3710}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !321, file: !292, line: 85, baseType: !7, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !321, file: !292, line: 86, baseType: !325, size: 64, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{!308, !189, !303, !6}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !321, file: !292, line: 88, baseType: !329, size: 64, offset: 128)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DISubroutineType(types: !331)
!331 = !{!308, !189, !332, !6}
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !292, line: 175, size: 512, elements: !334)
!334 = !{!335, !336, !337, !338, !3699, !3703, !3704}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !333, file: !292, line: 176, baseType: !304, size: 128)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !333, file: !292, line: 177, baseType: !313, size: 64, offset: 128)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !333, file: !292, line: 178, baseType: !163, size: 64, offset: 192)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !333, file: !292, line: 179, baseType: !339, size: 64, offset: 256)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DISubroutineType(types: !341)
!341 = !{!342}
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !21, line: 472, size: 1536, align: 64, elements: !344)
!344 = !{!345, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3693, !3694, !3695, !3696, !3697, !3698}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !343, file: !21, line: 473, baseType: !346, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !21, line: 641, size: 4800, elements: !348)
!348 = !{!349, !350, !351, !359, !360, !367, !368, !371, !372, !3471, !3472, !3473, !3474, !3475, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3515, !3518, !3519, !3520, !3529, !3530, !3531, !3532}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !347, file: !21, line: 642, baseType: !308, size: 16)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !347, file: !21, line: 643, baseType: !236, size: 16, offset: 16)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !347, file: !21, line: 644, baseType: !352, size: 32, offset: 32)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !353, line: 23, baseType: !354)
!353 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !353, line: 21, size: 32, elements: !355)
!355 = !{!356}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !354, file: !353, line: 22, baseType: !357, size: 32)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !170, line: 37, baseType: !358)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !300, line: 49, baseType: !14)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !347, file: !21, line: 645, baseType: !169, size: 128, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !347, file: !21, line: 646, baseType: !361, size: 32, offset: 192)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !353, line: 28, baseType: !362)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !353, line: 26, size: 32, elements: !363)
!363 = !{!364}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !362, file: !353, line: 27, baseType: !365, size: 32)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !170, line: 38, baseType: !366)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !300, line: 50, baseType: !14)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !347, file: !21, line: 647, baseType: !14, size: 32, offset: 224)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !347, file: !21, line: 650, baseType: !369, size: 64, offset: 256)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !21, line: 607, flags: DIFlagFwdDecl)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !347, file: !21, line: 651, baseType: !369, size: 64, offset: 320)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !347, file: !21, line: 654, baseType: !373, size: 64, offset: 384)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !375)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !21, line: 1966, size: 2048, align: 512, elements: !376)
!376 = !{!377, !3296, !3309, !3313, !3317, !3321, !3325, !3329, !3333, !3337, !3341, !3342, !3346, !3350, !3387, !3416, !3420, !3426, !3430, !3434, !3438, !3442, !3446, !3452, !3456}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !375, file: !21, line: 1967, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DISubroutineType(types: !380)
!380 = !{!381, !346, !381, !14}
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !383, line: 82, size: 1536, elements: !384)
!383 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!384 = !{!385, !386, !396, !404, !405, !425, !426, !430, !443, !3280, !3281, !3282, !3283, !3288, !3289, !3290}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !382, file: !383, line: 84, baseType: !14, size: 32)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !382, file: !383, line: 85, baseType: !387, size: 32, offset: 32)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !388, line: 275, baseType: !389)
!388 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !388, line: 275, size: 32, elements: !390)
!390 = !{!391}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !389, file: !388, line: 275, baseType: !392, size: 32)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !388, line: 69, baseType: !393)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !388, line: 64, size: 32, elements: !394)
!394 = !{!395}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !393, file: !388, line: 65, baseType: !14, size: 32)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !382, file: !383, line: 86, baseType: !397, size: 128, offset: 64)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !398, line: 38, size: 128, elements: !399)
!398 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!399 = !{!400, !402}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !397, file: !398, line: 39, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !397, file: !398, line: 39, baseType: !403, size: 64, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !382, file: !383, line: 87, baseType: !381, size: 64, offset: 192)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !382, file: !383, line: 88, baseType: !406, size: 128, offset: 256)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !383, line: 49, size: 128, elements: !407)
!407 = !{!408, !422}
!408 = !DIDerivedType(tag: DW_TAG_member, scope: !406, file: !383, line: 50, baseType: !409, size: 64)
!409 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !406, file: !383, line: 50, size: 64, elements: !410)
!410 = !{!411, !418}
!411 = !DIDerivedType(tag: DW_TAG_member, scope: !409, file: !383, line: 51, baseType: !412, size: 64)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !409, file: !383, line: 51, size: 64, elements: !413)
!413 = !{!414, !417}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !412, file: !383, line: 52, baseType: !415, size: 32)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !225, line: 21, baseType: !416)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !227, line: 27, baseType: !14)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !412, file: !383, line: 52, baseType: !415, size: 32, offset: 32)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !409, file: !383, line: 54, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !225, line: 23, baseType: !420)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !227, line: 31, baseType: !421)
!421 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !406, file: !383, line: 56, baseType: !423, size: 64, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !228)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !382, file: !383, line: 89, baseType: !346, size: 64, offset: 384)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !382, file: !383, line: 91, baseType: !427, size: 256, offset: 448)
!427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 256, elements: !428)
!428 = !{!429}
!429 = !DISubrange(count: 32)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !382, file: !383, line: 94, baseType: !431, size: 64, offset: 704)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !432, line: 25, size: 64, elements: !433)
!432 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!433 = !{!434}
!434 = !DIDerivedType(tag: DW_TAG_member, scope: !431, file: !432, line: 26, baseType: !435, size: 64)
!435 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !431, file: !432, line: 26, size: 64, elements: !436)
!436 = !{!437, !438}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !435, file: !432, line: 28, baseType: !420, size: 64, align: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, scope: !435, file: !432, line: 30, baseType: !439, size: 64)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !435, file: !432, line: 30, size: 64, elements: !440)
!440 = !{!441, !442}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !439, file: !432, line: 31, baseType: !196, size: 32)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !439, file: !432, line: 32, baseType: !6, size: 32, offset: 32)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !382, file: !383, line: 95, baseType: !444, size: 64, offset: 768)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !446)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !383, line: 128, size: 1024, align: 512, elements: !447)
!447 = !{!448, !452, !453, !460, !466, !470, !474, !478, !479, !483, !487, !3270, !3274}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !446, file: !383, line: 129, baseType: !449, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DISubroutineType(types: !451)
!451 = !{!6, !381, !14}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !446, file: !383, line: 130, baseType: !449, size: 64, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !446, file: !383, line: 131, baseType: !454, size: 64, offset: 128)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DISubroutineType(types: !456)
!456 = !{!6, !457, !459}
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !382)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !446, file: !383, line: 132, baseType: !461, size: 64, offset: 192)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DISubroutineType(types: !463)
!463 = !{!6, !457, !14, !7, !464}
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !406)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !446, file: !383, line: 134, baseType: !467, size: 64, offset: 256)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{!6, !457}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !446, file: !383, line: 135, baseType: !471, size: 64, offset: 320)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{!6, !381}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !446, file: !383, line: 136, baseType: !475, size: 64, offset: 384)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{null, !381}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !446, file: !383, line: 137, baseType: !475, size: 64, offset: 448)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !446, file: !383, line: 138, baseType: !480, size: 64, offset: 512)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{null, !381, !346}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !446, file: !383, line: 139, baseType: !484, size: 64, offset: 576)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{!266, !381, !266, !6}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !446, file: !383, line: 140, baseType: !488, size: 64, offset: 640)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DISubroutineType(types: !490)
!490 = !{!491, !3269}
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !493, line: 70, size: 256, elements: !494)
!493 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!494 = !{!495, !496, !3265, !3266}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !492, file: !493, line: 71, baseType: !381, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !492, file: !493, line: 72, baseType: !497, size: 64, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !21, line: 1190, size: 10752, elements: !499)
!499 = !{!500, !501, !504, !505, !506, !510, !558, !1716, !1756, !1841, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1858, !1862, !1863, !1866, !1869, !1872, !1875, !1876, !1877, !1918, !3196, !3197, !3198, !3199, !3200, !3201, !3204, !3206, !3213, !3214, !3215, !3216, !3217, !3232, !3233, !3234, !3235, !3236, !3239, !3240, !3241, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !498, file: !21, line: 1191, baseType: !169, size: 128)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !498, file: !21, line: 1192, baseType: !502, size: 32, offset: 128)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !170, line: 21, baseType: !503)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !170, line: 18, baseType: !415)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !498, file: !21, line: 1193, baseType: !228, size: 8, offset: 160)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !498, file: !21, line: 1194, baseType: !316, size: 64, offset: 192)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !498, file: !21, line: 1195, baseType: !507, size: 64, offset: 256)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !170, line: 52, baseType: !508)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !300, line: 88, baseType: !509)
!509 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !498, file: !21, line: 1196, baseType: !511, size: 64, offset: 320)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !21, line: 2366, size: 576, elements: !513)
!513 = !{!514, !515, !516, !522, !526, !530, !534, !535, !536, !546, !550, !551, !552, !554, !555, !556, !557}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !512, file: !21, line: 2367, baseType: !7, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !512, file: !21, line: 2368, baseType: !6, size: 32, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !512, file: !21, line: 2376, baseType: !517, size: 64, offset: 128)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{!6, !520}
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !493, line: 21, flags: DIFlagFwdDecl)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !512, file: !21, line: 2377, baseType: !523, size: 64, offset: 192)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !525)
!525 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !21, line: 75, flags: DIFlagFwdDecl)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !512, file: !21, line: 2378, baseType: !527, size: 64, offset: 256)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!381, !511, !6, !7, !163}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !512, file: !21, line: 2380, baseType: !531, size: 64, offset: 320)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{null, !497}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !512, file: !21, line: 2381, baseType: !164, size: 64, offset: 384)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !512, file: !21, line: 2382, baseType: !511, size: 64, offset: 448)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !512, file: !21, line: 2383, baseType: !537, size: 64, offset: 512)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !170, line: 194, size: 64, elements: !538)
!538 = !{!539}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !537, file: !170, line: 195, baseType: !540, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !170, line: 198, size: 128, elements: !542)
!542 = !{!543, !544}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !541, file: !170, line: 199, baseType: !540, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !541, file: !170, line: 199, baseType: !545, size: 64, offset: 64)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !512, file: !21, line: 2385, baseType: !547, offset: 576)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !548, line: 206, elements: !549)
!548 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!549 = !{}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !512, file: !21, line: 2386, baseType: !547, offset: 576)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !512, file: !21, line: 2387, baseType: !547, offset: 576)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !512, file: !21, line: 2388, baseType: !553, offset: 576)
!553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !547, elements: !267)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !512, file: !21, line: 2390, baseType: !547, offset: 576)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !512, file: !21, line: 2391, baseType: !547, offset: 576)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !512, file: !21, line: 2392, baseType: !547, offset: 576)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !512, file: !21, line: 2393, baseType: !547, offset: 576)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !498, file: !21, line: 1197, baseType: !559, size: 64, offset: 384)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !561)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !21, line: 2057, size: 1664, elements: !562)
!562 = !{!563, !567, !571, !572, !576, !582, !586, !587, !588, !592, !596, !600, !601, !602, !608, !613, !614, !1641, !1642, !1643, !1644, !1648, !1652, !1699, !1714, !1715}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !561, file: !21, line: 2058, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DISubroutineType(types: !566)
!566 = !{!346, !497}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !561, file: !21, line: 2059, baseType: !568, size: 64, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{null, !346}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !561, file: !21, line: 2060, baseType: !568, size: 64, offset: 128)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !561, file: !21, line: 2062, baseType: !573, size: 64, offset: 192)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DISubroutineType(types: !575)
!575 = !{null, !346, !6}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !561, file: !21, line: 2063, baseType: !577, size: 64, offset: 256)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{!6, !346, !580}
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !21, line: 309, flags: DIFlagFwdDecl)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !561, file: !21, line: 2064, baseType: !583, size: 64, offset: 320)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DISubroutineType(types: !585)
!585 = !{!6, !346}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !561, file: !21, line: 2065, baseType: !568, size: 64, offset: 384)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !561, file: !21, line: 2066, baseType: !531, size: 64, offset: 448)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !561, file: !21, line: 2067, baseType: !589, size: 64, offset: 512)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{!6, !497, !6}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !561, file: !21, line: 2068, baseType: !593, size: 64, offset: 576)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DISubroutineType(types: !595)
!595 = !{!6, !497, !20}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !561, file: !21, line: 2069, baseType: !597, size: 64, offset: 640)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DISubroutineType(types: !599)
!599 = !{!6, !497}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !561, file: !21, line: 2070, baseType: !593, size: 64, offset: 704)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !561, file: !21, line: 2071, baseType: !597, size: 64, offset: 768)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !561, file: !21, line: 2072, baseType: !603, size: 64, offset: 832)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DISubroutineType(types: !605)
!605 = !{!6, !381, !606}
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !21, line: 62, flags: DIFlagFwdDecl)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !561, file: !21, line: 2073, baseType: !609, size: 64, offset: 896)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DISubroutineType(types: !611)
!611 = !{!6, !497, !612, !266}
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !561, file: !21, line: 2074, baseType: !531, size: 64, offset: 960)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !561, file: !21, line: 2076, baseType: !615, size: 64, offset: 1024)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{!6, !618, !381}
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !620, line: 17, size: 960, elements: !621)
!620 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!621 = !{!622, !623, !624, !625, !626, !627, !628, !629, !650, !672, !673, !1640}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !619, file: !620, line: 18, baseType: !266, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !619, file: !620, line: 19, baseType: !313, size: 64, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !619, file: !620, line: 20, baseType: !313, size: 64, offset: 128)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !619, file: !620, line: 21, baseType: !313, size: 64, offset: 192)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !619, file: !620, line: 22, baseType: !313, size: 64, offset: 256)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !619, file: !620, line: 23, baseType: !507, size: 64, offset: 320)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !619, file: !620, line: 24, baseType: !507, size: 64, offset: 384)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !619, file: !620, line: 25, baseType: !630, size: 256, offset: 448)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !631, line: 66, size: 256, elements: !632)
!631 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!632 = !{!633, !642, !644, !649}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !630, file: !631, line: 67, baseType: !634, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !635, line: 13, baseType: !636)
!635 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !170, line: 181, baseType: !637)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !170, line: 179, size: 64, elements: !638)
!638 = !{!639}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !637, file: !170, line: 180, baseType: !640, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !225, line: 22, baseType: !641)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !227, line: 30, baseType: !509)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !630, file: !631, line: 68, baseType: !643, size: 32, offset: 64)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !205, line: 23, baseType: !204)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !630, file: !631, line: 70, baseType: !645, size: 32, offset: 96)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !646, line: 15, size: 32, elements: !647)
!646 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!647 = !{!648}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !645, file: !646, line: 20, baseType: !216, size: 32)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !630, file: !631, line: 72, baseType: !169, size: 128, offset: 128)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !619, file: !620, line: 26, baseType: !651, size: 64, offset: 704)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !653)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !620, line: 32, size: 256, elements: !654)
!654 = !{!655, !660, !664, !668}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !653, file: !620, line: 33, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{!163, !618, !659}
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !653, file: !620, line: 34, baseType: !661, size: 64, offset: 64)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{null, !618, !163}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !653, file: !620, line: 35, baseType: !665, size: 64, offset: 128)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{!163, !618, !163, !659}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !653, file: !620, line: 36, baseType: !669, size: 64, offset: 192)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DISubroutineType(types: !671)
!671 = !{!6, !618, !163}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !619, file: !620, line: 27, baseType: !6, size: 32, offset: 768)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !619, file: !620, line: 28, baseType: !674, size: 64, offset: 832)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !676)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !21, line: 994, size: 1856, align: 64, elements: !677)
!677 = !{!678, !697, !698, !700, !701, !702, !703, !704, !767, !979, !988, !994, !995, !1630, !1631, !1632, !1633, !1635, !1636, !1639}
!678 = !DIDerivedType(tag: DW_TAG_member, scope: !676, file: !21, line: 995, baseType: !679, size: 128)
!679 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !676, file: !21, line: 995, size: 128, elements: !680)
!680 = !{!681, !687, !696}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !679, file: !21, line: 996, baseType: !682, size: 64)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !683, line: 60, size: 64, elements: !684)
!683 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!684 = !{!685}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !682, file: !683, line: 61, baseType: !686, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !679, file: !21, line: 997, baseType: !688, size: 128, align: 64)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !170, line: 232, size: 128, align: 64, elements: !689)
!689 = !{!690, !692}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !688, file: !170, line: 233, baseType: !691, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !688, file: !170, line: 234, baseType: !693, size: 64, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DISubroutineType(types: !695)
!695 = !{null, !691}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !679, file: !21, line: 998, baseType: !14, size: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !676, file: !21, line: 1005, baseType: !196, size: 32, offset: 128)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !676, file: !21, line: 1006, baseType: !699, size: 32, offset: 160)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !170, line: 156, baseType: !14)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !676, file: !21, line: 1007, baseType: !634, size: 64, offset: 192)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !676, file: !21, line: 1008, baseType: !630, size: 256, offset: 256)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !676, file: !21, line: 1009, baseType: !507, size: 64, offset: 512)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !676, file: !21, line: 1010, baseType: !14, size: 32, offset: 576)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !676, file: !21, line: 1011, baseType: !705, size: 256, offset: 640)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !21, line: 948, size: 256, elements: !706)
!706 = !{!707, !728, !763, !764, !765, !766}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !705, file: !21, line: 949, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !709, line: 34, baseType: !710)
!709 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !709, line: 25, size: 64, elements: !711)
!711 = !{!712}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !710, file: !709, line: 26, baseType: !713, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !714, line: 27, baseType: !715)
!714 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !714, line: 13, size: 64, elements: !716)
!716 = !{!717, !727}
!717 = !DIDerivedType(tag: DW_TAG_member, scope: !715, file: !714, line: 14, baseType: !718, size: 32)
!718 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !715, file: !714, line: 14, size: 32, elements: !719)
!719 = !{!720, !721}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !718, file: !714, line: 15, baseType: !216, size: 32)
!721 = !DIDerivedType(tag: DW_TAG_member, scope: !718, file: !714, line: 16, baseType: !722, size: 32)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !718, file: !714, line: 16, size: 32, elements: !723)
!723 = !{!724, !725}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !722, file: !714, line: 18, baseType: !224, size: 8)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !722, file: !714, line: 19, baseType: !726, size: 24, offset: 8)
!726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 24, elements: !267)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !715, file: !714, line: 26, baseType: !208, size: 32, offset: 32)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !705, file: !21, line: 950, baseType: !729, size: 64, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !26, line: 59, size: 768, elements: !731)
!731 = !{!732, !738, !739, !740, !744, !745, !752, !753}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !730, file: !26, line: 61, baseType: !733, size: 32)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !734, line: 113, baseType: !735)
!734 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !734, line: 111, size: 32, elements: !736)
!736 = !{!737}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !735, file: !734, line: 112, baseType: !216, size: 32)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !730, file: !26, line: 62, baseType: !14, size: 32, offset: 32)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !730, file: !26, line: 63, baseType: !196, size: 32, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !730, file: !26, line: 65, baseType: !741, size: 256, offset: 128)
!741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !537, size: 256, elements: !742)
!742 = !{!743}
!743 = !DISubrange(count: 4)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !730, file: !26, line: 66, baseType: !537, size: 64, offset: 384)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !730, file: !26, line: 68, baseType: !746, size: 192, offset: 448)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !747, line: 41, baseType: !748)
!747 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !747, line: 37, size: 192, elements: !749)
!749 = !{!750, !751}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !748, file: !747, line: 38, baseType: !196, size: 32)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !748, file: !747, line: 39, baseType: !169, size: 128, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !730, file: !26, line: 69, baseType: !688, size: 128, align: 64, offset: 640)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !730, file: !26, line: 70, baseType: !754, offset: 768)
!754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !755, elements: !761)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !26, line: 54, size: 128, elements: !756)
!756 = !{!757, !758}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !755, file: !26, line: 55, baseType: !6, size: 32)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !755, file: !26, line: 56, baseType: !759, size: 64, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !26, line: 56, flags: DIFlagFwdDecl)
!761 = !{!762}
!762 = !DISubrange(count: -1)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !705, file: !21, line: 951, baseType: !25, size: 32, offset: 128)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !705, file: !21, line: 952, baseType: !352, size: 32, offset: 160)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !705, file: !21, line: 952, baseType: !352, size: 32, offset: 192)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !705, file: !21, line: 953, baseType: !6, size: 32, offset: 224)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !676, file: !21, line: 1012, baseType: !768, size: 64, offset: 896)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !770)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !771, line: 110, size: 1472, elements: !772)
!771 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!772 = !{!773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !789, !790, !791, !792, !793, !794, !924, !925, !926, !927, !928, !959, !962, !966, !974}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !770, file: !771, line: 111, baseType: !634, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !770, file: !771, line: 112, baseType: !352, size: 32, offset: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !770, file: !771, line: 113, baseType: !361, size: 32, offset: 96)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !770, file: !771, line: 114, baseType: !352, size: 32, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !770, file: !771, line: 115, baseType: !361, size: 32, offset: 160)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !770, file: !771, line: 116, baseType: !352, size: 32, offset: 192)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !770, file: !771, line: 117, baseType: !361, size: 32, offset: 224)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !770, file: !771, line: 118, baseType: !352, size: 32, offset: 256)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !770, file: !771, line: 119, baseType: !361, size: 32, offset: 288)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !770, file: !771, line: 120, baseType: !14, size: 32, offset: 320)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !770, file: !771, line: 121, baseType: !784, size: 64, offset: 384)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !785, line: 24, baseType: !786)
!785 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !785, line: 24, size: 64, elements: !787)
!787 = !{!788}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !786, file: !785, line: 24, baseType: !419, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !770, file: !771, line: 122, baseType: !784, size: 64, offset: 448)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !770, file: !771, line: 123, baseType: !784, size: 64, offset: 512)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !770, file: !771, line: 124, baseType: !784, size: 64, offset: 576)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !770, file: !771, line: 125, baseType: !784, size: 64, offset: 640)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !770, file: !771, line: 127, baseType: !228, size: 8, offset: 704)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !770, file: !771, line: 129, baseType: !795, size: 64, offset: 768)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !797, line: 195, size: 1728, elements: !798)
!797 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!798 = !{!799, !800, !805, !817, !826, !829, !830, !837, !838, !839, !840, !843, !844, !845, !847, !848, !888, !909}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !796, file: !797, line: 196, baseType: !733, size: 32)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !796, file: !797, line: 197, baseType: !801, size: 32, offset: 32)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !797, line: 28, baseType: !802)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !170, line: 104, baseType: !803)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !225, line: 20, baseType: !804)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !227, line: 26, baseType: !6)
!805 = !DIDerivedType(tag: DW_TAG_member, scope: !796, file: !797, line: 198, baseType: !806, size: 192, offset: 64)
!806 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !796, file: !797, line: 198, size: 192, elements: !807)
!807 = !{!808, !809}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !806, file: !797, line: 199, baseType: !169, size: 128)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !806, file: !797, line: 200, baseType: !810, size: 192, align: 64)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !811, line: 5, size: 192, align: 64, elements: !812)
!811 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!812 = !{!813, !814, !816}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !810, file: !811, line: 6, baseType: !316, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !810, file: !811, line: 7, baseType: !815, size: 64, offset: 64)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !810, file: !811, line: 8, baseType: !815, size: 64, offset: 128)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !796, file: !797, line: 205, baseType: !818, size: 320, offset: 256)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !819, line: 48, size: 320, elements: !820)
!819 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!820 = !{!821, !822, !823, !824, !825}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !818, file: !819, line: 49, baseType: !634, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !818, file: !819, line: 55, baseType: !634, size: 64, offset: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !818, file: !819, line: 57, baseType: !645, size: 32, offset: 128)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !818, file: !819, line: 59, baseType: !643, size: 32, offset: 160)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !818, file: !819, line: 60, baseType: !169, size: 128, offset: 192)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !796, file: !797, line: 206, baseType: !827, size: 64, offset: 576)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !797, line: 206, flags: DIFlagFwdDecl)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !796, file: !797, line: 207, baseType: !163, size: 64, offset: 640)
!830 = !DIDerivedType(tag: DW_TAG_member, scope: !796, file: !797, line: 208, baseType: !831, size: 64, offset: 704)
!831 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !796, file: !797, line: 208, size: 64, elements: !832)
!832 = !{!833, !836}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !831, file: !797, line: 209, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !835, line: 8, baseType: !641)
!835 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!836 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !831, file: !797, line: 210, baseType: !834, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !796, file: !797, line: 212, baseType: !834, size: 64, offset: 768)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !796, file: !797, line: 213, baseType: !352, size: 32, offset: 832)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !796, file: !797, line: 214, baseType: !361, size: 32, offset: 864)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !796, file: !797, line: 215, baseType: !841, size: 32, offset: 896)
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !797, line: 31, baseType: !842)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !170, line: 110, baseType: !415)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !796, file: !797, line: 216, baseType: !236, size: 16, offset: 928)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !796, file: !797, line: 217, baseType: !236, size: 16, offset: 944)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !796, file: !797, line: 221, baseType: !846, size: 16, offset: 960)
!846 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !796, file: !797, line: 228, baseType: !316, size: 64, offset: 1024)
!848 = !DIDerivedType(tag: DW_TAG_member, scope: !796, file: !797, line: 245, baseType: !849, size: 320, offset: 1088)
!849 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !796, file: !797, line: 245, size: 320, elements: !850)
!850 = !{!851, !880}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !849, file: !797, line: 246, baseType: !852, size: 320)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !797, line: 114, size: 320, elements: !853)
!853 = !{!854, !855, !867, !870, !879}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !852, file: !797, line: 116, baseType: !316, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, scope: !852, file: !797, line: 117, baseType: !856, size: 64, offset: 64)
!856 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !852, file: !797, line: 117, size: 64, elements: !857)
!857 = !{!858, !866}
!858 = !DIDerivedType(tag: DW_TAG_member, scope: !856, file: !797, line: 118, baseType: !859, size: 64)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !856, file: !797, line: 118, size: 64, elements: !860)
!860 = !{!861, !862}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !859, file: !797, line: 120, baseType: !234, size: 16)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !859, file: !797, line: 121, baseType: !863, size: 48, offset: 16)
!863 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 48, elements: !864)
!864 = !{!865}
!865 = !DISubrange(count: 6)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !856, file: !797, line: 127, baseType: !316, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !852, file: !797, line: 129, baseType: !868, size: 64, offset: 128)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !797, line: 102, flags: DIFlagFwdDecl)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !852, file: !797, line: 130, baseType: !871, size: 64, offset: 192)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !797, line: 108, size: 192, elements: !873)
!873 = !{!874, !875, !876}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !872, file: !797, line: 109, baseType: !688, size: 128, align: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !872, file: !797, line: 110, baseType: !733, size: 32, offset: 128)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !872, file: !797, line: 111, baseType: !877, size: 8, offset: 160)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !170, line: 35, baseType: !878)
!878 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !852, file: !797, line: 131, baseType: !7, size: 64, offset: 256)
!880 = !DIDerivedType(tag: DW_TAG_member, scope: !849, file: !797, line: 247, baseType: !881, size: 320)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !849, file: !797, line: 247, size: 320, elements: !882)
!882 = !{!883, !884, !885, !886, !887}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !881, file: !797, line: 248, baseType: !316, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !881, file: !797, line: 249, baseType: !316, size: 64, offset: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !881, file: !797, line: 250, baseType: !868, size: 64, offset: 128)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !881, file: !797, line: 251, baseType: !871, size: 64, offset: 192)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !881, file: !797, line: 252, baseType: !266, size: 64, offset: 256)
!888 = !DIDerivedType(tag: DW_TAG_member, scope: !796, file: !797, line: 260, baseType: !889, size: 256, offset: 1408)
!889 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !796, file: !797, line: 260, size: 256, elements: !890)
!890 = !{!891, !897}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !889, file: !797, line: 261, baseType: !892, size: 256)
!892 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !797, line: 134, size: 256, elements: !893)
!893 = !{!894, !895}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !892, file: !797, line: 135, baseType: !163, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !892, file: !797, line: 136, baseType: !896, size: 256)
!896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 256, elements: !742)
!897 = !DIDerivedType(tag: DW_TAG_member, scope: !889, file: !797, line: 262, baseType: !898, size: 256)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !889, file: !797, line: 262, size: 256, elements: !899)
!899 = !{!900, !901}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !898, file: !797, line: 264, baseType: !169, size: 128)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !898, file: !797, line: 265, baseType: !902, size: 128, offset: 128)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !903, line: 22, size: 128, elements: !904)
!903 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!904 = !{!905, !908}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !902, file: !903, line: 23, baseType: !906, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !903, line: 23, flags: DIFlagFwdDecl)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !902, file: !903, line: 24, baseType: !316, size: 64, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !796, file: !797, line: 280, baseType: !910, size: 64, offset: 1664)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !797, line: 176, size: 192, elements: !912)
!912 = !{!913, !922, !923}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !911, file: !797, line: 177, baseType: !914, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !797, line: 171, baseType: !915)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DISubroutineType(types: !917)
!917 = !{!6, !795, !918, !920, !795}
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !869)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !892)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !911, file: !797, line: 178, baseType: !795, size: 64, offset: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !911, file: !797, line: 179, baseType: !868, size: 64, offset: 128)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !770, file: !771, line: 130, baseType: !795, size: 64, offset: 832)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !770, file: !771, line: 131, baseType: !795, size: 64, offset: 896)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !770, file: !771, line: 132, baseType: !795, size: 64, offset: 960)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !770, file: !771, line: 135, baseType: !163, size: 64, offset: 1024)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !770, file: !771, line: 137, baseType: !929, size: 64, offset: 1088)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !931, line: 14, size: 1088, elements: !932)
!931 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!932 = !{!933, !934, !943, !944, !945, !946, !947, !948}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !930, file: !931, line: 15, baseType: !733, size: 32)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !930, file: !931, line: 17, baseType: !935, size: 320, offset: 64)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !936, line: 22, size: 320, elements: !937)
!936 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!937 = !{!938, !939, !940, !941}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !935, file: !936, line: 23, baseType: !643, size: 32)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !935, file: !936, line: 24, baseType: !640, size: 64, offset: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !935, file: !936, line: 26, baseType: !169, size: 128, offset: 128)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !935, file: !936, line: 28, baseType: !942, size: 64, offset: 256)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !930, file: !931, line: 19, baseType: !316, size: 64, offset: 384)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !930, file: !931, line: 20, baseType: !634, size: 64, offset: 448)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !930, file: !931, line: 23, baseType: !541, size: 128, offset: 512)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !930, file: !931, line: 24, baseType: !352, size: 32, offset: 640)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !930, file: !931, line: 29, baseType: !634, size: 64, offset: 704)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !930, file: !931, line: 36, baseType: !949, size: 320, offset: 768)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !950, line: 15, size: 320, elements: !951)
!950 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!951 = !{!952, !953, !954, !955, !956, !957, !958}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !949, file: !950, line: 16, baseType: !643, size: 32)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !949, file: !950, line: 18, baseType: !6, size: 32, offset: 32)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !949, file: !950, line: 19, baseType: !6, size: 32, offset: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !949, file: !950, line: 20, baseType: !6, size: 32, offset: 96)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !949, file: !950, line: 21, baseType: !6, size: 32, offset: 128)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !949, file: !950, line: 22, baseType: !316, size: 64, offset: 192)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !949, file: !950, line: 23, baseType: !316, size: 64, offset: 256)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !770, file: !771, line: 138, baseType: !960, size: 64, offset: 1152)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !34, line: 901, flags: DIFlagFwdDecl)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !770, file: !771, line: 139, baseType: !963, size: 64, offset: 1216)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !965, line: 16, flags: DIFlagFwdDecl)
!965 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!966 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !770, file: !771, line: 140, baseType: !967, size: 64, offset: 1280)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !771, line: 25, size: 64, elements: !969)
!969 = !{!970, !971, !972}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !968, file: !771, line: 26, baseType: !216, size: 32)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !968, file: !771, line: 27, baseType: !6, size: 32, offset: 32)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !968, file: !771, line: 28, baseType: !973, offset: 64)
!973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, elements: !761)
!974 = !DIDerivedType(tag: DW_TAG_member, scope: !770, file: !771, line: 142, baseType: !975, size: 128, offset: 1344)
!975 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !770, file: !771, line: 142, size: 128, elements: !976)
!976 = !{!977, !978}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !975, file: !771, line: 143, baseType: !6, size: 32)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !975, file: !771, line: 144, baseType: !688, size: 128, align: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !676, file: !21, line: 1013, baseType: !980, size: 256, offset: 960)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !21, line: 970, size: 256, elements: !981)
!981 = !{!982, !983, !984, !985, !986, !987}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !980, file: !21, line: 971, baseType: !316, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !980, file: !21, line: 972, baseType: !14, size: 32, offset: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !980, file: !21, line: 973, baseType: !14, size: 32, offset: 96)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !980, file: !21, line: 974, baseType: !14, size: 32, offset: 128)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !980, file: !21, line: 975, baseType: !14, size: 32, offset: 160)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !980, file: !21, line: 976, baseType: !507, size: 64, offset: 192)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !676, file: !21, line: 1014, baseType: !989, size: 128, offset: 1216)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !990, line: 8, size: 128, elements: !991)
!990 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!991 = !{!992, !993}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !989, file: !990, line: 9, baseType: !491, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !989, file: !990, line: 10, baseType: !381, size: 64, offset: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !676, file: !21, line: 1015, baseType: !346, size: 64, offset: 1344)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !676, file: !21, line: 1016, baseType: !996, size: 64, offset: 1408)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !998)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !21, line: 1914, size: 2112, elements: !999)
!999 = !{!1000, !1001, !1006, !1010, !1014, !1042, !1043, !1049, !1062, !1079, !1083, !1084, !1551, !1552, !1556, !1561, !1562, !1566, !1570, !1576, !1577, !1581, !1582, !1589, !1593, !1597, !1603, !1607, !1611, !1615, !1619, !1620, !1626}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !998, file: !21, line: 1915, baseType: !164, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !998, file: !21, line: 1916, baseType: !1002, size: 64, offset: 64)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!507, !1005, !507, !6}
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !998, file: !21, line: 1917, baseType: !1007, size: 64, offset: 128)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!298, !1005, !266, !313, !659}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !998, file: !21, line: 1918, baseType: !1011, size: 64, offset: 192)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!298, !1005, !7, !313, !659}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !998, file: !21, line: 1919, baseType: !1015, size: 64, offset: 256)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!298, !1018, !1040}
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !21, line: 373, size: 384, elements: !1020)
!1020 = !{!1021, !1022, !1023, !1027, !1028, !1029, !1030}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1019, file: !21, line: 374, baseType: !1005, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1019, file: !21, line: 375, baseType: !507, size: 64, offset: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1019, file: !21, line: 376, baseType: !1024, size: 64, offset: 128)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{null, !1018, !302}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1019, file: !21, line: 377, baseType: !163, size: 64, offset: 192)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1019, file: !21, line: 378, baseType: !6, size: 32, offset: 256)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1019, file: !21, line: 379, baseType: !234, size: 16, offset: 288)
!1030 = !DIDerivedType(tag: DW_TAG_member, scope: !1019, file: !21, line: 380, baseType: !1031, size: 64, offset: 320)
!1031 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1019, file: !21, line: 380, size: 64, elements: !1032)
!1032 = !{!1033, !1036}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1031, file: !21, line: 386, baseType: !1034, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !21, line: 386, flags: DIFlagFwdDecl)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1031, file: !21, line: 395, baseType: !1037, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!298, !163}
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !21, line: 69, flags: DIFlagFwdDecl)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !998, file: !21, line: 1920, baseType: !1015, size: 64, offset: 320)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !998, file: !21, line: 1921, baseType: !1044, size: 64, offset: 384)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!6, !1018, !1047, !14}
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !21, line: 53, flags: DIFlagFwdDecl)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !998, file: !21, line: 1923, baseType: !1050, size: 64, offset: 448)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!6, !1005, !1053}
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !21, line: 1858, size: 128, elements: !1055)
!1055 = !{!1056, !1061}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1054, file: !21, line: 1859, baseType: !1057, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !21, line: 1855, baseType: !1058)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!877, !1053, !7, !6, !507, !419, !14}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1054, file: !21, line: 1860, baseType: !507, size: 64, offset: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !998, file: !21, line: 1924, baseType: !1063, size: 64, offset: 512)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!1066, !1005, !1068}
!1066 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1067, line: 59, baseType: !14)
!1067 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1070, line: 37, size: 128, elements: !1071)
!1070 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!1071 = !{!1072, !1078}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !1069, file: !1070, line: 38, baseType: !1073, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !1070, line: 31, baseType: !1074)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{null, !1005, !1077, !1068}
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !1069, file: !1070, line: 39, baseType: !1066, size: 32, offset: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !998, file: !21, line: 1925, baseType: !1080, size: 64, offset: 576)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!302, !1005, !14, !316}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !998, file: !21, line: 1926, baseType: !1080, size: 64, offset: 640)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !998, file: !21, line: 1927, baseType: !1085, size: 64, offset: 704)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!6, !1005, !1088}
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !34, line: 625, size: 1344, elements: !1090)
!1090 = !{!1091, !1100, !1268, !1274, !1281, !1282, !1287, !1288, !1293, !1294, !1297, !1544, !1545, !1546, !1547, !1548, !1549}
!1091 = !DIDerivedType(tag: DW_TAG_member, scope: !1089, file: !34, line: 628, baseType: !1092, size: 128)
!1092 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1089, file: !34, line: 628, size: 128, elements: !1093)
!1093 = !{!1094, !1099}
!1094 = !DIDerivedType(tag: DW_TAG_member, scope: !1092, file: !34, line: 629, baseType: !1095, size: 128)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1092, file: !34, line: 629, size: 128, elements: !1096)
!1096 = !{!1097, !1098}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1095, file: !34, line: 631, baseType: !316, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1095, file: !34, line: 632, baseType: !316, size: 64, offset: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1092, file: !34, line: 635, baseType: !688, size: 128, align: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1089, file: !34, line: 639, baseType: !1101, size: 64, offset: 128)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !34, line: 733, size: 10240, elements: !1103)
!1103 = !{!1104, !1266}
!1104 = !DIDerivedType(tag: DW_TAG_member, scope: !1102, file: !34, line: 734, baseType: !1105, size: 10240)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1102, file: !34, line: 734, size: 10240, elements: !1106)
!1106 = !{!1107, !1111, !1124, !1128, !1129, !1130, !1131, !1132, !1133, !1142, !1143, !1144, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1183, !1185, !1188, !1235, !1236, !1237, !1240, !1241, !1242, !1245, !1246, !1247, !1253, !1254}
!1107 = !DIDerivedType(tag: DW_TAG_member, scope: !1105, file: !34, line: 739, baseType: !1108, size: 512, align: 512)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1105, file: !34, line: 739, size: 512, align: 512, elements: !1109)
!1109 = !{!1110}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1108, file: !34, line: 747, baseType: !216, size: 32)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1105, file: !34, line: 750, baseType: !1112, size: 128, offset: 512)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1113, line: 218, size: 128, elements: !1114)
!1113 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1114 = !{!1115, !1122, !1123}
!1115 = !DIDerivedType(tag: DW_TAG_member, scope: !1112, file: !1113, line: 219, baseType: !1116, size: 32)
!1116 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1112, file: !1113, line: 219, size: 32, elements: !1117)
!1117 = !{!1118, !1119}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1116, file: !1113, line: 220, baseType: !196, size: 32)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1116, file: !1113, line: 221, baseType: !1120)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1113, line: 197, baseType: !1121)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1113, line: 197, elements: !549)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1112, file: !1113, line: 223, baseType: !14, size: 32, offset: 32)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1112, file: !1113, line: 224, baseType: !163, size: 64, offset: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1105, file: !34, line: 752, baseType: !1125, size: 64, offset: 640)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!316, !1005, !316, !316, !316, !316}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1105, file: !34, line: 756, baseType: !316, size: 64, offset: 704)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1105, file: !34, line: 757, baseType: !316, size: 64, offset: 768)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1105, file: !34, line: 760, baseType: !316, size: 64, offset: 832)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1105, file: !34, line: 761, baseType: !316, size: 64, offset: 896)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1105, file: !34, line: 763, baseType: !316, size: 64, offset: 960)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1105, file: !34, line: 764, baseType: !1134, size: 64, offset: 1024)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1136, line: 299, baseType: !1137)
!1136 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1136, line: 299, size: 64, elements: !1138)
!1138 = !{!1139}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1137, file: !1136, line: 299, baseType: !1140, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1141, line: 18, baseType: !316)
!1141 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1105, file: !34, line: 773, baseType: !216, size: 32, offset: 1088)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1105, file: !34, line: 785, baseType: !216, size: 32, offset: 1120)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1105, file: !34, line: 795, baseType: !1145, size: 64, offset: 1152)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !34, line: 726, size: 128, elements: !1147)
!1147 = !{!1148, !1149}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1146, file: !34, line: 727, baseType: !419, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1146, file: !34, line: 728, baseType: !6, size: 32, offset: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1105, file: !34, line: 801, baseType: !316, size: 64, offset: 1216)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1105, file: !34, line: 804, baseType: !634, size: 64, offset: 1280)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1105, file: !34, line: 806, baseType: !6, size: 32, offset: 1344)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1105, file: !34, line: 808, baseType: !196, size: 32, offset: 1376)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1105, file: !34, line: 823, baseType: !818, size: 320, offset: 1408)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1105, file: !34, line: 825, baseType: !169, size: 128, offset: 1728)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1105, file: !34, line: 845, baseType: !6, size: 32, offset: 1856)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1105, file: !34, line: 849, baseType: !316, size: 64, offset: 1920)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1105, file: !34, line: 850, baseType: !316, size: 64, offset: 1984)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1105, file: !34, line: 852, baseType: !316, size: 64, offset: 2048)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1105, file: !34, line: 853, baseType: !316, size: 64, offset: 2112)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1105, file: !34, line: 854, baseType: !636, size: 64, offset: 2176)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1105, file: !34, line: 855, baseType: !316, size: 64, offset: 2240)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1105, file: !34, line: 856, baseType: !316, size: 64, offset: 2304)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1105, file: !34, line: 857, baseType: !316, size: 64, offset: 2368)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1105, file: !34, line: 858, baseType: !316, size: 64, offset: 2432)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1105, file: !34, line: 865, baseType: !392, size: 32, offset: 2496)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1105, file: !34, line: 867, baseType: !196, size: 32, offset: 2528)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1105, file: !34, line: 869, baseType: !316, size: 64, offset: 2560)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1105, file: !34, line: 869, baseType: !316, size: 64, offset: 2624)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1105, file: !34, line: 869, baseType: !316, size: 64, offset: 2688)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1105, file: !34, line: 869, baseType: !316, size: 64, offset: 2752)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1105, file: !34, line: 870, baseType: !316, size: 64, offset: 2816)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1105, file: !34, line: 870, baseType: !316, size: 64, offset: 2880)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1105, file: !34, line: 870, baseType: !316, size: 64, offset: 2944)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1105, file: !34, line: 871, baseType: !316, size: 64, offset: 3008)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1105, file: !34, line: 871, baseType: !316, size: 64, offset: 3072)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1105, file: !34, line: 871, baseType: !316, size: 64, offset: 3136)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1105, file: !34, line: 871, baseType: !316, size: 64, offset: 3200)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1105, file: !34, line: 873, baseType: !1180, size: 3328, offset: 3264)
!1180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 3328, elements: !1181)
!1181 = !{!1182}
!1182 = !DISubrange(count: 52)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1105, file: !34, line: 875, baseType: !1184, size: 1280, offset: 6592)
!1184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !935, size: 1280, elements: !742)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1105, file: !34, line: 877, baseType: !1186, size: 64, offset: 7872)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !34, line: 877, flags: DIFlagFwdDecl)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1105, file: !34, line: 880, baseType: !1189, size: 1088, offset: 7936)
!1189 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1190, line: 72, baseType: !1191)
!1190 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1190, line: 23, size: 1088, elements: !1192)
!1192 = !{!1193, !1194, !1195, !1196, !1197, !1200, !1201, !1202, !1203, !1230, !1231, !1232}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1191, file: !1190, line: 28, baseType: !419, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1191, file: !1190, line: 38, baseType: !636, size: 64, offset: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1191, file: !1190, line: 40, baseType: !316, size: 64, offset: 128)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1191, file: !1190, line: 43, baseType: !818, size: 320, offset: 192)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1191, file: !1190, line: 44, baseType: !1198, size: 64, offset: 512)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1190, line: 44, flags: DIFlagFwdDecl)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1191, file: !1190, line: 48, baseType: !316, size: 64, offset: 576)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1191, file: !1190, line: 59, baseType: !630, size: 256, offset: 640)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1191, file: !1190, line: 60, baseType: !163, size: 64, offset: 896)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1191, file: !1190, line: 61, baseType: !1204, size: 64, offset: 960)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1206)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1207, line: 13, size: 1216, elements: !1208)
!1207 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1208 = !{!1209, !1210, !1211, !1212, !1213, !1214, !1215, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1206, file: !1207, line: 14, baseType: !163, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1206, file: !1207, line: 15, baseType: !316, size: 64, offset: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1206, file: !1207, line: 17, baseType: !316, size: 64, offset: 128)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1206, file: !1207, line: 17, baseType: !316, size: 64, offset: 192)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1206, file: !1207, line: 18, baseType: !316, size: 64, offset: 256)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1206, file: !1207, line: 18, baseType: !316, size: 64, offset: 320)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1206, file: !1207, line: 19, baseType: !1216, size: 64, offset: 384)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1206, file: !1207, line: 21, baseType: !302, size: 64, offset: 448)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1206, file: !1207, line: 23, baseType: !302, size: 64, offset: 512)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1206, file: !1207, line: 24, baseType: !302, size: 64, offset: 576)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1206, file: !1207, line: 25, baseType: !302, size: 64, offset: 640)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1206, file: !1207, line: 26, baseType: !302, size: 64, offset: 704)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1206, file: !1207, line: 27, baseType: !302, size: 64, offset: 768)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1206, file: !1207, line: 28, baseType: !302, size: 64, offset: 832)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1206, file: !1207, line: 29, baseType: !302, size: 64, offset: 896)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1206, file: !1207, line: 30, baseType: !302, size: 64, offset: 960)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1206, file: !1207, line: 31, baseType: !302, size: 64, offset: 1024)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1206, file: !1207, line: 32, baseType: !302, size: 64, offset: 1088)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1206, file: !1207, line: 33, baseType: !302, size: 64, offset: 1152)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1191, file: !1190, line: 63, baseType: !216, size: 32, offset: 1024)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1191, file: !1190, line: 69, baseType: !234, size: 16, offset: 1056)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1191, file: !1190, line: 70, baseType: !1233, size: 16, offset: 1072)
!1233 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !225, line: 18, baseType: !1234)
!1234 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !227, line: 23, baseType: !846)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1105, file: !34, line: 882, baseType: !316, size: 64, offset: 9024)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1105, file: !34, line: 885, baseType: !196, size: 32, offset: 9088)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1105, file: !34, line: 886, baseType: !1238, size: 64, offset: 9152)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !34, line: 732, flags: DIFlagFwdDecl)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1105, file: !34, line: 901, baseType: !960, size: 64, offset: 9216)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1105, file: !34, line: 904, baseType: !1005, size: 64, offset: 9280)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1105, file: !34, line: 906, baseType: !1243, size: 64, offset: 9344)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !34, line: 906, flags: DIFlagFwdDecl)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1105, file: !34, line: 930, baseType: !216, size: 32, offset: 9408)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1105, file: !34, line: 933, baseType: !216, size: 32, offset: 9440)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1105, file: !34, line: 935, baseType: !1248, size: 64, offset: 9472)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !75, line: 103, size: 64, elements: !1249)
!1249 = !{!1250}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1248, file: !75, line: 104, baseType: !1251, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !75, line: 101, flags: DIFlagFwdDecl)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1105, file: !34, line: 940, baseType: !634, size: 64, offset: 9536)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1105, file: !34, line: 942, baseType: !1255, size: 256, offset: 9600)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1256, line: 98, size: 256, elements: !1257)
!1256 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1257 = !{!1258, !1259, !1260}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1255, file: !1256, line: 99, baseType: !634, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1255, file: !1256, line: 100, baseType: !169, size: 128, offset: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1255, file: !1256, line: 101, baseType: !1261, size: 64, offset: 192)
!1261 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1256, line: 21, baseType: !1262)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{null, !1265}
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1102, file: !34, line: 986, baseType: !1267, offset: 10240)
!1267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, elements: !761)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1089, file: !34, line: 640, baseType: !1269, size: 64, offset: 192)
!1269 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1136, line: 297, baseType: !1270)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1136, line: 297, size: 64, elements: !1271)
!1271 = !{!1272}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1270, file: !1136, line: 297, baseType: !1273, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1141, line: 19, baseType: !316)
!1274 = !DIDerivedType(tag: DW_TAG_member, scope: !1089, file: !34, line: 646, baseType: !1275, size: 64, offset: 256)
!1275 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1089, file: !34, line: 646, size: 64, elements: !1276)
!1276 = !{!1277, !1280}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1275, file: !34, line: 647, baseType: !1278, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1279)
!1279 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !34, line: 542, baseType: !316)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1275, file: !34, line: 648, baseType: !1279, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1089, file: !34, line: 666, baseType: !6, size: 32, offset: 320)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1089, file: !34, line: 667, baseType: !1283, size: 64, offset: 384)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !34, line: 579, size: 320, elements: !1285)
!1285 = !{!1286}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1284, file: !34, line: 580, baseType: !818, size: 320)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1089, file: !34, line: 670, baseType: !877, size: 8, offset: 448)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1089, file: !34, line: 681, baseType: !1289, size: 256, offset: 512)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1089, file: !34, line: 678, size: 256, elements: !1290)
!1290 = !{!1291, !1292}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1289, file: !34, line: 679, baseType: !810, size: 192, align: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1289, file: !34, line: 680, baseType: !316, size: 64, offset: 192)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1089, file: !34, line: 689, baseType: !169, size: 128, offset: 768)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1089, file: !34, line: 691, baseType: !1295, size: 64, offset: 896)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !34, line: 691, flags: DIFlagFwdDecl)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1089, file: !34, line: 694, baseType: !1298, size: 64, offset: 960)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1300)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1301, line: 563, size: 1024, elements: !1302)
!1301 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1302 = !{!1303, !1307, !1308, !1312, !1316, !1320, !1508, !1512, !1516, !1520, !1521, !1522, !1526, !1530, !1536, !1540}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1300, file: !1301, line: 564, baseType: !1304, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DISubroutineType(types: !1306)
!1306 = !{null, !1088}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1300, file: !1301, line: 569, baseType: !1304, size: 64, offset: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1300, file: !1301, line: 571, baseType: !1309, size: 64, offset: 128)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!6, !1088, !316}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1300, file: !1301, line: 572, baseType: !1313, size: 64, offset: 192)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{!6, !1088}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1300, file: !1301, line: 578, baseType: !1317, size: 64, offset: 256)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DISubroutineType(types: !1319)
!1319 = !{!6, !1088, !316, !316, !316}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1300, file: !1301, line: 580, baseType: !1321, size: 64, offset: 320)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{!1324, !1325}
!1324 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !34, line: 1184, baseType: !14)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1301, line: 512, size: 896, elements: !1327)
!1327 = !{!1328, !1337, !1338, !1345, !1352, !1362, !1501, !1502, !1504, !1506}
!1328 = !DIDerivedType(tag: DW_TAG_member, scope: !1326, file: !1301, line: 513, baseType: !1329, size: 320)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1326, file: !1301, line: 513, size: 320, elements: !1330)
!1330 = !{!1331, !1332, !1334, !1335, !1336}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1329, file: !1301, line: 514, baseType: !1088, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1329, file: !1301, line: 515, baseType: !1333, size: 32, offset: 64)
!1333 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !170, line: 154, baseType: !14)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1329, file: !1301, line: 516, baseType: !316, size: 64, offset: 128)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1329, file: !1301, line: 517, baseType: !316, size: 64, offset: 192)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1329, file: !1301, line: 518, baseType: !316, size: 64, offset: 256)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1326, file: !1301, line: 520, baseType: !33, size: 32, offset: 320)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1326, file: !1301, line: 522, baseType: !1339, size: 64, offset: 384)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1141, line: 22, baseType: !1341)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1141, line: 22, size: 64, elements: !1342)
!1342 = !{!1343}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1341, file: !1141, line: 22, baseType: !1344, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1141, line: 15, baseType: !316)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1326, file: !1301, line: 524, baseType: !1346, size: 64, offset: 448)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1136, line: 372, baseType: !1348)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1136, line: 372, size: 64, elements: !1349)
!1349 = !{!1350}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1348, file: !1136, line: 372, baseType: !1351, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1141, line: 16, baseType: !316)
!1352 = !DIDerivedType(tag: DW_TAG_member, scope: !1326, file: !1301, line: 527, baseType: !1353, size: 64, offset: 512)
!1353 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1326, file: !1301, line: 527, size: 64, elements: !1354)
!1354 = !{!1355, !1361}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1353, file: !1301, line: 528, baseType: !1356, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1141, line: 21, baseType: !1357)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1141, line: 21, size: 64, elements: !1358)
!1358 = !{!1359}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1357, file: !1141, line: 21, baseType: !1360, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1141, line: 14, baseType: !316)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1353, file: !1301, line: 529, baseType: !1340, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1326, file: !1301, line: 534, baseType: !1363, size: 64, offset: 576)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !34, line: 74, size: 512, align: 128, elements: !1365)
!1365 = !{!1366, !1367, !1495, !1500}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1364, file: !34, line: 75, baseType: !316, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, scope: !1364, file: !34, line: 83, baseType: !1368, size: 320, offset: 64)
!1368 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1364, file: !34, line: 83, size: 320, elements: !1369)
!1369 = !{!1370, !1391, !1405, !1409, !1494}
!1370 = !DIDerivedType(tag: DW_TAG_member, scope: !1368, file: !34, line: 84, baseType: !1371, size: 320)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1368, file: !34, line: 84, size: 320, elements: !1372)
!1372 = !{!1373, !1384, !1385, !1390}
!1373 = !DIDerivedType(tag: DW_TAG_member, scope: !1371, file: !34, line: 90, baseType: !1374, size: 128)
!1374 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1371, file: !34, line: 90, size: 128, elements: !1375)
!1375 = !{!1376, !1377, !1382, !1383}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1374, file: !34, line: 91, baseType: !169, size: 128)
!1377 = !DIDerivedType(tag: DW_TAG_member, scope: !1374, file: !34, line: 94, baseType: !1378, size: 128)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1374, file: !34, line: 94, size: 128, elements: !1379)
!1379 = !{!1380, !1381}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1378, file: !34, line: 96, baseType: !163, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1378, file: !34, line: 98, baseType: !14, size: 32, offset: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1374, file: !34, line: 102, baseType: !169, size: 128)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1374, file: !34, line: 103, baseType: !169, size: 128)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1371, file: !34, line: 106, baseType: !342, size: 64, offset: 128)
!1385 = !DIDerivedType(tag: DW_TAG_member, scope: !1371, file: !34, line: 107, baseType: !1386, size: 64, offset: 192)
!1386 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1371, file: !34, line: 107, size: 64, elements: !1387)
!1387 = !{!1388, !1389}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1386, file: !34, line: 108, baseType: !316, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1386, file: !34, line: 109, baseType: !316, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1371, file: !34, line: 117, baseType: !316, size: 64, offset: 256)
!1391 = !DIDerivedType(tag: DW_TAG_member, scope: !1368, file: !34, line: 119, baseType: !1392, size: 320)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1368, file: !34, line: 119, size: 320, elements: !1393)
!1393 = !{!1394, !1395, !1398, !1399, !1400}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1392, file: !34, line: 124, baseType: !316, size: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1392, file: !34, line: 125, baseType: !1396, size: 64, offset: 64)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !34, line: 125, flags: DIFlagFwdDecl)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1392, file: !34, line: 126, baseType: !316, size: 64, offset: 128)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1392, file: !34, line: 127, baseType: !316, size: 64, offset: 192)
!1400 = !DIDerivedType(tag: DW_TAG_member, scope: !1392, file: !34, line: 128, baseType: !1401, size: 64, offset: 256)
!1401 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1392, file: !34, line: 128, size: 64, elements: !1402)
!1402 = !{!1403, !1404}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1401, file: !34, line: 133, baseType: !316, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1401, file: !34, line: 138, baseType: !634, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, scope: !1368, file: !34, line: 141, baseType: !1406, size: 64)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1368, file: !34, line: 141, size: 64, elements: !1407)
!1407 = !{!1408}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1406, file: !34, line: 142, baseType: !316, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, scope: !1368, file: !34, line: 144, baseType: !1410, size: 128)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1368, file: !34, line: 144, size: 128, elements: !1411)
!1411 = !{!1412, !1493}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1410, file: !34, line: 146, baseType: !1413, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !50, line: 126, size: 1216, elements: !1415)
!1415 = !{!1416, !1426, !1447, !1458, !1459, !1460, !1461, !1475, !1476, !1477}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1414, file: !50, line: 127, baseType: !1417, size: 384)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !50, line: 21, size: 384, elements: !1418)
!1418 = !{!1419, !1420, !1422, !1423, !1424, !1425}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1417, file: !50, line: 22, baseType: !316, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1417, file: !50, line: 23, baseType: !1421, size: 64, offset: 64)
!1421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !316)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1417, file: !50, line: 24, baseType: !1421, size: 64, offset: 128)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1417, file: !50, line: 25, baseType: !316, size: 64, offset: 192)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1417, file: !50, line: 26, baseType: !316, size: 64, offset: 256)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1417, file: !50, line: 27, baseType: !316, size: 64, offset: 320)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1414, file: !50, line: 128, baseType: !1427, size: 128, offset: 384)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1428, line: 105, size: 128, elements: !1429)
!1428 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1429 = !{!1430, !1431}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1427, file: !1428, line: 110, baseType: !316, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1427, file: !1428, line: 118, baseType: !1432, size: 64, offset: 64)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1428, line: 95, size: 448, elements: !1434)
!1434 = !{!1435, !1436, !1442, !1443, !1444, !1445, !1446}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1433, file: !1428, line: 96, baseType: !634, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1433, file: !1428, line: 97, baseType: !1437, size: 64, offset: 64)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1428, line: 60, baseType: !1439)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{null, !1441}
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1433, file: !1428, line: 98, baseType: !1437, size: 64, offset: 128)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1433, file: !1428, line: 99, baseType: !877, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1433, file: !1428, line: 100, baseType: !877, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1433, file: !1428, line: 101, baseType: !688, size: 128, align: 64, offset: 256)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1433, file: !1428, line: 102, baseType: !1441, size: 64, offset: 384)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1414, file: !50, line: 129, baseType: !1448, size: 256, offset: 512)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1449, line: 26, size: 256, elements: !1450)
!1449 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1450 = !{!1451, !1452}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1448, file: !1449, line: 27, baseType: !14, size: 32)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1448, file: !1449, line: 28, baseType: !1453, size: 192, offset: 64)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1454, line: 43, size: 192, elements: !1455)
!1454 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1455 = !{!1456, !1457}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1453, file: !1454, line: 44, baseType: !643, size: 32)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1453, file: !1454, line: 45, baseType: !169, size: 128, offset: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1414, file: !50, line: 130, baseType: !49, size: 32, offset: 768)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1414, file: !50, line: 131, baseType: !14, size: 32, offset: 800)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1414, file: !50, line: 132, baseType: !316, size: 64, offset: 832)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1414, file: !50, line: 133, baseType: !1462, size: 64, offset: 896)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1464)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !50, line: 77, size: 192, elements: !1465)
!1465 = !{!1466, !1470, !1471}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1464, file: !50, line: 83, baseType: !1467, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{null, !1363}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1464, file: !50, line: 89, baseType: !1321, size: 64, offset: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1464, file: !50, line: 100, baseType: !1472, size: 64, offset: 128)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = !DISubroutineType(types: !1474)
!1474 = !{!6, !1413, !316, !316, !6}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1414, file: !50, line: 134, baseType: !163, size: 64, offset: 960)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1414, file: !50, line: 135, baseType: !6, size: 32, offset: 1024)
!1477 = !DIDerivedType(tag: DW_TAG_member, scope: !1414, file: !50, line: 136, baseType: !1478, size: 128, offset: 1088)
!1478 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1414, file: !50, line: 136, size: 128, elements: !1479)
!1479 = !{!1480, !1486}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1478, file: !50, line: 137, baseType: !1481, size: 128)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1482, line: 6, size: 128, elements: !1483)
!1482 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1483 = !{!1484, !1485}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1481, file: !1482, line: 7, baseType: !419, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1481, file: !1482, line: 8, baseType: !419, size: 64, offset: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, scope: !1478, file: !50, line: 138, baseType: !1487)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1478, file: !50, line: 138, elements: !1488)
!1488 = !{!1489, !1491}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1487, file: !50, line: 138, baseType: !1490)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1487, file: !50, line: 138, elements: !549)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1487, file: !50, line: 138, baseType: !1492)
!1492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1481, elements: !761)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1410, file: !34, line: 147, baseType: !163, size: 64, offset: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1368, file: !34, line: 161, baseType: !688, size: 128, align: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, scope: !1364, file: !34, line: 164, baseType: !1496, size: 32, offset: 384)
!1496 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1364, file: !34, line: 164, size: 32, elements: !1497)
!1497 = !{!1498, !1499}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1496, file: !34, line: 169, baseType: !216, size: 32)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1496, file: !34, line: 177, baseType: !14, size: 32)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1364, file: !34, line: 181, baseType: !216, size: 32, offset: 416)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1326, file: !1301, line: 535, baseType: !1363, size: 64, offset: 640)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1326, file: !1301, line: 541, baseType: !1503, size: 64, offset: 704)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1326, file: !1301, line: 545, baseType: !1505, size: 64, offset: 768)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1326, file: !1301, line: 549, baseType: !1507, size: 64, offset: 832)
!1507 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1136, line: 520, baseType: !1363)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1300, file: !1301, line: 581, baseType: !1509, size: 64, offset: 384)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{!1324, !1325, !14}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1300, file: !1301, line: 582, baseType: !1513, size: 64, offset: 448)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{!1324, !1325, !316, !316}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1300, file: !1301, line: 584, baseType: !1517, size: 64, offset: 512)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DISubroutineType(types: !1519)
!1519 = !{!316, !1088}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1300, file: !1301, line: 588, baseType: !1321, size: 64, offset: 576)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1300, file: !1301, line: 591, baseType: !1321, size: 64, offset: 640)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1300, file: !1301, line: 597, baseType: !1523, size: 64, offset: 704)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!6, !1088, !316, !163, !6, !6}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1300, file: !1301, line: 603, baseType: !1527, size: 64, offset: 768)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{!7, !1088}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1300, file: !1301, line: 613, baseType: !1531, size: 64, offset: 832)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{!6, !1088, !1534}
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !34, line: 717, flags: DIFlagFwdDecl)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1300, file: !1301, line: 625, baseType: !1537, size: 64, offset: 896)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!1534, !1088, !316}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1300, file: !1301, line: 633, baseType: !1541, size: 64, offset: 960)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{!1363, !1088, !316}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1089, file: !34, line: 697, baseType: !316, size: 64, offset: 1024)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1089, file: !34, line: 699, baseType: !1005, size: 64, offset: 1088)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1089, file: !34, line: 700, baseType: !163, size: 64, offset: 1152)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1089, file: !34, line: 711, baseType: !634, size: 64, offset: 1216)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1089, file: !34, line: 717, baseType: !1534, size: 64, offset: 1280)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1089, file: !34, line: 722, baseType: !1550, offset: 1344)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !34, line: 570, elements: !549)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !998, file: !21, line: 1928, baseType: !316, size: 64, offset: 768)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !998, file: !21, line: 1929, baseType: !1553, size: 64, offset: 832)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DISubroutineType(types: !1555)
!1555 = !{!6, !346, !1005}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !998, file: !21, line: 1930, baseType: !1557, size: 64, offset: 896)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{!6, !1005, !1560}
!1560 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !21, line: 1061, baseType: !163)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !998, file: !21, line: 1931, baseType: !1553, size: 64, offset: 960)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !998, file: !21, line: 1932, baseType: !1563, size: 64, offset: 1024)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{!6, !1005, !507, !507, !6}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !998, file: !21, line: 1933, baseType: !1567, size: 64, offset: 1088)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{!6, !6, !1005, !6}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !998, file: !21, line: 1934, baseType: !1571, size: 64, offset: 1152)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!6, !1005, !6, !1574}
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !21, line: 1063, flags: DIFlagFwdDecl)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !998, file: !21, line: 1935, baseType: !1125, size: 64, offset: 1216)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !998, file: !21, line: 1936, baseType: !1578, size: 64, offset: 1280)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!6, !6}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !998, file: !21, line: 1937, baseType: !1571, size: 64, offset: 1344)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !998, file: !21, line: 1938, baseType: !1583, size: 64, offset: 1408)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{!298, !1586, !1005, !659, !313, !14}
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1588, line: 59, flags: DIFlagFwdDecl)
!1588 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !998, file: !21, line: 1939, baseType: !1590, size: 64, offset: 1472)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{!298, !1005, !659, !1586, !313, !14}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !998, file: !21, line: 1940, baseType: !1594, size: 64, offset: 1536)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{null, !1005}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !998, file: !21, line: 1941, baseType: !1598, size: 64, offset: 1600)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!6, !1005, !6, !1601, !1602}
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !998, file: !21, line: 1942, baseType: !1604, size: 64, offset: 1664)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{!302, !1005, !6, !507, !507}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !998, file: !21, line: 1944, baseType: !1608, size: 64, offset: 1728)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{null, !618, !1005}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !998, file: !21, line: 1948, baseType: !1612, size: 64, offset: 1792)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{!298, !1005, !507, !1005, !507, !313, !14}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !998, file: !21, line: 1950, baseType: !1616, size: 64, offset: 1856)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{!507, !1005, !507, !1005, !507, !507, !14}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !998, file: !21, line: 1953, baseType: !1563, size: 64, offset: 1920)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !998, file: !21, line: 1954, baseType: !1621, size: 64, offset: 1984)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!6, !1624, !14}
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !21, line: 1911, flags: DIFlagFwdDecl)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !998, file: !21, line: 1955, baseType: !1627, size: 64, offset: 2048)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{!6, !1624, !1047, !14}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !676, file: !21, line: 1018, baseType: !419, size: 64, offset: 1472)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !676, file: !21, line: 1020, baseType: !163, size: 64, offset: 1536)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !676, file: !21, line: 1023, baseType: !163, size: 64, offset: 1600)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !676, file: !21, line: 1027, baseType: !1634, size: 64, offset: 1664)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !676, file: !21, line: 1029, baseType: !342, size: 64, offset: 1728)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !676, file: !21, line: 1030, baseType: !1637, size: 32, offset: 1792)
!1637 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1638, line: 8, baseType: !415)
!1638 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !676, file: !21, line: 1031, baseType: !1637, size: 32, offset: 1824)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !619, file: !620, line: 29, baseType: !163, size: 64, offset: 896)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !561, file: !21, line: 2077, baseType: !615, size: 64, offset: 1088)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !561, file: !21, line: 2078, baseType: !615, size: 64, offset: 1152)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !561, file: !21, line: 2079, baseType: !615, size: 64, offset: 1216)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !561, file: !21, line: 2081, baseType: !1645, size: 64, offset: 1280)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!298, !497, !6, !266, !313, !507}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !561, file: !21, line: 2082, baseType: !1649, size: 64, offset: 1344)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{!298, !497, !6, !7, !313, !507}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !561, file: !21, line: 2083, baseType: !1653, size: 64, offset: 1408)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{!1656, !346}
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !58, line: 296, size: 1664, elements: !1659)
!1659 = !{!1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1684, !1685, !1686}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1658, file: !58, line: 297, baseType: !541, size: 128)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1658, file: !58, line: 298, baseType: !169, size: 128, offset: 128)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1658, file: !58, line: 299, baseType: !169, size: 128, offset: 256)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1658, file: !58, line: 300, baseType: !169, size: 128, offset: 384)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1658, file: !58, line: 301, baseType: !630, size: 256, offset: 512)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1658, file: !58, line: 302, baseType: !196, size: 32, offset: 768)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1658, file: !58, line: 303, baseType: !216, size: 32, offset: 800)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1658, file: !58, line: 304, baseType: !497, size: 64, offset: 832)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1658, file: !58, line: 305, baseType: !1669, size: 64, offset: 896)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !58, line: 68, size: 64, elements: !1670)
!1670 = !{!1671, !1683}
!1671 = !DIDerivedType(tag: DW_TAG_member, scope: !1669, file: !58, line: 69, baseType: !1672, size: 32)
!1672 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1669, file: !58, line: 69, size: 32, elements: !1673)
!1673 = !{!1674, !1675, !1676}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1672, file: !58, line: 70, baseType: !352, size: 32)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1672, file: !58, line: 71, baseType: !361, size: 32)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1672, file: !58, line: 72, baseType: !1677, size: 32)
!1677 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1678, line: 24, baseType: !1679)
!1678 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1678, line: 22, size: 32, elements: !1680)
!1680 = !{!1681}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1679, file: !1678, line: 23, baseType: !1682, size: 32)
!1682 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1678, line: 20, baseType: !358)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1669, file: !58, line: 74, baseType: !57, size: 32, offset: 32)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1658, file: !58, line: 306, baseType: !507, size: 64, offset: 960)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1658, file: !58, line: 307, baseType: !316, size: 64, offset: 1024)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1658, file: !58, line: 308, baseType: !1687, size: 576, offset: 1088)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !58, line: 205, size: 576, elements: !1688)
!1688 = !{!1689, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1687, file: !58, line: 206, baseType: !1690, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !58, line: 66, baseType: !509)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1687, file: !58, line: 207, baseType: !1690, size: 64, offset: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1687, file: !58, line: 208, baseType: !1690, size: 64, offset: 128)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1687, file: !58, line: 209, baseType: !1690, size: 64, offset: 192)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1687, file: !58, line: 210, baseType: !1690, size: 64, offset: 256)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1687, file: !58, line: 211, baseType: !1690, size: 64, offset: 320)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1687, file: !58, line: 212, baseType: !1690, size: 64, offset: 384)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1687, file: !58, line: 213, baseType: !834, size: 64, offset: 448)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1687, file: !58, line: 214, baseType: !834, size: 64, offset: 512)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !561, file: !21, line: 2085, baseType: !1700, size: 64, offset: 1472)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{!302, !497, !1703}
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1705, line: 15, size: 256, elements: !1706)
!1705 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1706 = !{!1707, !1708, !1709, !1710, !1711}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1704, file: !1705, line: 16, baseType: !1333, size: 32)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1704, file: !1705, line: 19, baseType: !6, size: 32, offset: 32)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1704, file: !1705, line: 26, baseType: !316, size: 64, offset: 64)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1704, file: !1705, line: 33, baseType: !316, size: 64, offset: 128)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1704, file: !1705, line: 36, baseType: !1712, size: 64, offset: 192)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !34, line: 33, flags: DIFlagFwdDecl)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !561, file: !21, line: 2087, baseType: !1700, size: 64, offset: 1536)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !561, file: !21, line: 2089, baseType: !531, size: 64, offset: 1600)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !498, file: !21, line: 1198, baseType: !1717, size: 64, offset: 448)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1719)
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !58, line: 324, size: 704, elements: !1720)
!1720 = !{!1721, !1725, !1729, !1733, !1734, !1735, !1736, !1737, !1742, !1747, !1751}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1719, file: !58, line: 325, baseType: !1722, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DISubroutineType(types: !1724)
!1724 = !{!6, !1657}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1719, file: !58, line: 326, baseType: !1726, size: 64, offset: 64)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = !DISubroutineType(types: !1728)
!1728 = !{!1657, !497, !6}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1719, file: !58, line: 327, baseType: !1730, size: 64, offset: 128)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{null, !1657}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1719, file: !58, line: 328, baseType: !1722, size: 64, offset: 192)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1719, file: !58, line: 329, baseType: !1722, size: 64, offset: 256)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1719, file: !58, line: 330, baseType: !1722, size: 64, offset: 320)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1719, file: !58, line: 331, baseType: !589, size: 64, offset: 384)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1719, file: !58, line: 334, baseType: !1738, size: 64, offset: 448)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DISubroutineType(types: !1740)
!1740 = !{!1741, !346}
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1719, file: !58, line: 335, baseType: !1743, size: 64, offset: 512)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DISubroutineType(types: !1745)
!1745 = !{!6, !346, !1746}
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1719, file: !58, line: 337, baseType: !1748, size: 64, offset: 576)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DISubroutineType(types: !1750)
!1750 = !{!6, !346, !1741}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1719, file: !58, line: 339, baseType: !1752, size: 64, offset: 640)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{!6, !497, !1755}
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !498, file: !21, line: 1199, baseType: !1757, size: 64, offset: 512)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1759)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !58, line: 430, size: 704, elements: !1760)
!1760 = !{!1761, !1767, !1768, !1772, !1773, !1774, !1789, !1812, !1816, !1817, !1840}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1759, file: !58, line: 431, baseType: !1762, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DISubroutineType(types: !1764)
!1764 = !{!6, !497, !6, !6, !1765}
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !989)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1759, file: !58, line: 432, baseType: !589, size: 64, offset: 64)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1759, file: !58, line: 433, baseType: !1769, size: 64, offset: 128)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!6, !497, !14}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1759, file: !58, line: 434, baseType: !1769, size: 64, offset: 192)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1759, file: !58, line: 435, baseType: !589, size: 64, offset: 256)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1759, file: !58, line: 436, baseType: !1775, size: 64, offset: 320)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = !DISubroutineType(types: !1777)
!1777 = !{!6, !497, !6, !1778}
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !58, line: 417, size: 256, elements: !1780)
!1780 = !{!1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1779, file: !58, line: 418, baseType: !6, size: 32)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1779, file: !58, line: 419, baseType: !14, size: 32, offset: 32)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1779, file: !58, line: 420, baseType: !14, size: 32, offset: 64)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1779, file: !58, line: 422, baseType: !14, size: 32, offset: 96)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1779, file: !58, line: 423, baseType: !14, size: 32, offset: 128)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1779, file: !58, line: 424, baseType: !14, size: 32, offset: 160)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1779, file: !58, line: 425, baseType: !14, size: 32, offset: 192)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1779, file: !58, line: 426, baseType: !14, size: 32, offset: 224)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1759, file: !58, line: 437, baseType: !1790, size: 64, offset: 384)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{!6, !497, !1669, !1793}
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !58, line: 345, size: 960, elements: !1795)
!1795 = !{!1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1794, file: !58, line: 346, baseType: !6, size: 32)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1794, file: !58, line: 347, baseType: !419, size: 64, offset: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1794, file: !58, line: 348, baseType: !419, size: 64, offset: 128)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1794, file: !58, line: 349, baseType: !419, size: 64, offset: 192)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1794, file: !58, line: 350, baseType: !419, size: 64, offset: 256)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1794, file: !58, line: 351, baseType: !419, size: 64, offset: 320)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1794, file: !58, line: 352, baseType: !419, size: 64, offset: 384)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1794, file: !58, line: 353, baseType: !640, size: 64, offset: 448)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1794, file: !58, line: 355, baseType: !640, size: 64, offset: 512)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1794, file: !58, line: 356, baseType: !6, size: 32, offset: 576)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1794, file: !58, line: 357, baseType: !6, size: 32, offset: 608)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1794, file: !58, line: 358, baseType: !419, size: 64, offset: 640)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1794, file: !58, line: 359, baseType: !419, size: 64, offset: 704)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1794, file: !58, line: 360, baseType: !419, size: 64, offset: 768)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1794, file: !58, line: 361, baseType: !640, size: 64, offset: 832)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1794, file: !58, line: 362, baseType: !6, size: 32, offset: 896)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1759, file: !58, line: 438, baseType: !1813, size: 64, offset: 448)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DISubroutineType(types: !1815)
!1815 = !{!6, !497, !1755, !1793}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1759, file: !58, line: 440, baseType: !1790, size: 64, offset: 512)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1759, file: !58, line: 441, baseType: !1818, size: 64, offset: 576)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{!6, !497, !1821}
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !58, line: 411, size: 1408, elements: !1823)
!1823 = !{!1824, !1825}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1822, file: !58, line: 412, baseType: !14, size: 32)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1822, file: !58, line: 413, baseType: !1826, size: 1344, offset: 64)
!1826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1827, size: 1344, elements: !267)
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !58, line: 397, size: 448, elements: !1828)
!1828 = !{!1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1839}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1827, file: !58, line: 398, baseType: !14, size: 32)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1827, file: !58, line: 399, baseType: !14, size: 32, offset: 32)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1827, file: !58, line: 401, baseType: !14, size: 32, offset: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1827, file: !58, line: 402, baseType: !14, size: 32, offset: 96)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1827, file: !58, line: 403, baseType: !14, size: 32, offset: 128)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1827, file: !58, line: 404, baseType: !14, size: 32, offset: 160)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1827, file: !58, line: 405, baseType: !14, size: 32, offset: 192)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1827, file: !58, line: 406, baseType: !421, size: 64, offset: 256)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1827, file: !58, line: 407, baseType: !1838, size: 64, offset: 320)
!1838 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !170, line: 132, baseType: !419)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1827, file: !58, line: 408, baseType: !1838, size: 64, offset: 384)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1759, file: !58, line: 442, baseType: !1769, size: 64, offset: 640)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !498, file: !21, line: 1200, baseType: !1842, size: 64, offset: 576)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1844)
!1844 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !21, line: 54, flags: DIFlagFwdDecl)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !498, file: !21, line: 1201, baseType: !316, size: 64, offset: 640)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !498, file: !21, line: 1202, baseType: !316, size: 64, offset: 704)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !498, file: !21, line: 1203, baseType: !316, size: 64, offset: 768)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !498, file: !21, line: 1204, baseType: !381, size: 64, offset: 832)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !498, file: !21, line: 1205, baseType: !818, size: 320, offset: 896)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !498, file: !21, line: 1206, baseType: !6, size: 32, offset: 1216)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !498, file: !21, line: 1207, baseType: !216, size: 32, offset: 1248)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !498, file: !21, line: 1209, baseType: !163, size: 64, offset: 1280)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !498, file: !21, line: 1211, baseType: !1854, size: 64, offset: 1344)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1857)
!1857 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !21, line: 1211, flags: DIFlagFwdDecl)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !498, file: !21, line: 1223, baseType: !1859, size: 64, offset: 1408)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !398, line: 34, size: 64, elements: !1860)
!1860 = !{!1861}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1859, file: !398, line: 35, baseType: !401, size: 64)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !498, file: !21, line: 1224, baseType: !169, size: 128, offset: 1472)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !498, file: !21, line: 1225, baseType: !1864, size: 64, offset: 1600)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !21, line: 1225, flags: DIFlagFwdDecl)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !498, file: !21, line: 1226, baseType: !1867, size: 64, offset: 1664)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !21, line: 1226, flags: DIFlagFwdDecl)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !498, file: !21, line: 1227, baseType: !1870, size: 64, offset: 1728)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !21, line: 50, flags: DIFlagFwdDecl)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !498, file: !21, line: 1228, baseType: !1873, size: 64, offset: 1792)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !21, line: 1228, flags: DIFlagFwdDecl)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !498, file: !21, line: 1229, baseType: !541, size: 128, offset: 1856)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !498, file: !21, line: 1230, baseType: !14, size: 32, offset: 1984)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !498, file: !21, line: 1231, baseType: !1878, size: 2496, offset: 2048)
!1878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !58, line: 521, size: 2496, elements: !1879)
!1879 = !{!1880, !1881, !1882, !1884, !1916}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1878, file: !58, line: 522, baseType: !14, size: 32)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1878, file: !58, line: 523, baseType: !818, size: 320, offset: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1878, file: !58, line: 524, baseType: !1883, size: 192, offset: 384)
!1883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !346, size: 192, elements: !267)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1878, file: !58, line: 525, baseType: !1885, size: 1728, offset: 576)
!1885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1886, size: 1728, elements: !267)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !58, line: 222, size: 576, elements: !1887)
!1887 = !{!1888, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1886, file: !58, line: 223, baseType: !1889, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !58, line: 445, size: 256, elements: !1891)
!1891 = !{!1892, !1893, !1906, !1907}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1890, file: !58, line: 446, baseType: !6, size: 32)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1890, file: !58, line: 447, baseType: !1894, size: 64, offset: 64)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1896)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !58, line: 312, size: 512, elements: !1897)
!1897 = !{!1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1896, file: !58, line: 313, baseType: !589, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1896, file: !58, line: 314, baseType: !589, size: 64, offset: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1896, file: !58, line: 315, baseType: !589, size: 64, offset: 128)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1896, file: !58, line: 316, baseType: !589, size: 64, offset: 192)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1896, file: !58, line: 317, baseType: !1722, size: 64, offset: 256)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1896, file: !58, line: 318, baseType: !1722, size: 64, offset: 320)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1896, file: !58, line: 319, baseType: !1722, size: 64, offset: 384)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1896, file: !58, line: 320, baseType: !1752, size: 64, offset: 448)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1890, file: !58, line: 448, baseType: !164, size: 64, offset: 128)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1890, file: !58, line: 449, baseType: !1889, size: 64, offset: 192)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1886, file: !58, line: 224, baseType: !6, size: 32, offset: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1886, file: !58, line: 226, baseType: !169, size: 128, offset: 128)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1886, file: !58, line: 227, baseType: !316, size: 64, offset: 256)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1886, file: !58, line: 228, baseType: !14, size: 32, offset: 320)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1886, file: !58, line: 229, baseType: !14, size: 32, offset: 352)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1886, file: !58, line: 230, baseType: !1690, size: 64, offset: 384)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1886, file: !58, line: 231, baseType: !1690, size: 64, offset: 448)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1886, file: !58, line: 232, baseType: !163, size: 64, offset: 512)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1878, file: !58, line: 526, baseType: !1917, size: 192, offset: 2304)
!1917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1894, size: 192, elements: !267)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !498, file: !21, line: 1233, baseType: !1919, size: 2368, offset: 4544)
!1919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !21, line: 1184, size: 2368, elements: !1920)
!1920 = !{!1921, !1922, !1923}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1919, file: !21, line: 1185, baseType: !236, size: 16)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1919, file: !21, line: 1186, baseType: !236, size: 16, offset: 16)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1919, file: !21, line: 1187, baseType: !1924, size: 2304, offset: 64)
!1924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1925, size: 2304, elements: !267)
!1925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1926, line: 12, size: 768, elements: !1927)
!1926 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1927 = !{!1928, !1936, !1938, !3194, !3195}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1925, file: !1926, line: 13, baseType: !1929, size: 384)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1930, line: 17, size: 384, elements: !1931)
!1930 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1931 = !{!1932, !1933, !1934, !1935}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1929, file: !1930, line: 18, baseType: !6, size: 32)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1929, file: !1930, line: 19, baseType: !6, size: 32, offset: 32)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1929, file: !1930, line: 20, baseType: !746, size: 192, offset: 64)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1929, file: !1930, line: 22, baseType: !688, size: 128, align: 64, offset: 256)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1925, file: !1926, line: 14, baseType: !1937, size: 64, offset: 384)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1925, file: !1926, line: 15, baseType: !1939, size: 64, offset: 448)
!1939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1940, line: 16, size: 64, elements: !1941)
!1940 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1941 = !{!1942}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1939, file: !1940, line: 17, baseType: !1943, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1588, line: 746, size: 58368, elements: !1945)
!1945 = !{!1946, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !2026, !2037, !2132, !2136, !2139, !2170, !2171, !2172, !2173, !2184, !2186, !2187, !2188, !2189, !2190, !2191, !2202, !2203, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2213, !2220, !2221, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2314, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2329, !2330, !2331, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2363, !2369, !2370, !2371, !2372, !2373, !2377, !2380, !2387, !2392, !2395, !2398, !2401, !2455, !2595, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2635, !2636, !2637, !2646, !2654, !2655, !2656, !2657, !2658, !2663, !2664, !2665, !2668, !2669, !2672, !2675, !2678, !2686, !2689, !2690, !2776, !2777, !2778, !2779, !2780, !2786, !2787, !2788, !2789, !2792, !2793, !2796, !2799, !2800, !2803, !2804, !2805, !2808, !2809, !2810, !2811, !2812, !2813, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2845, !2846, !2852, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2864, !2936, !2938, !2939, !2940, !2941, !2942, !2954, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2971, !2972, !2973}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1944, file: !1588, line: 752, baseType: !1947, size: 192)
!1947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1948, line: 56, size: 192, elements: !1949)
!1948 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1949 = !{!1950, !1951, !1952, !1953}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1947, file: !1948, line: 57, baseType: !316, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1947, file: !1948, line: 58, baseType: !316, size: 64, offset: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1947, file: !1948, line: 59, baseType: !415, size: 32, offset: 128)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1947, file: !1948, line: 61, baseType: !415, size: 32, offset: 160)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1944, file: !1588, line: 754, baseType: !14, size: 32, offset: 192)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1944, file: !1588, line: 767, baseType: !163, size: 64, offset: 256)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1944, file: !1588, line: 768, baseType: !733, size: 32, offset: 320)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1944, file: !1588, line: 770, baseType: !14, size: 32, offset: 352)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1944, file: !1588, line: 771, baseType: !14, size: 32, offset: 384)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1944, file: !1588, line: 774, baseType: !6, size: 32, offset: 416)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1944, file: !1588, line: 775, baseType: !1961, size: 128, offset: 448)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1962, line: 58, size: 128, elements: !1963)
!1962 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1963 = !{!1964, !1965, !1970, !1971}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1961, file: !1962, line: 59, baseType: !682, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, scope: !1961, file: !1962, line: 60, baseType: !1966, size: 32, offset: 64)
!1966 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1961, file: !1962, line: 60, size: 32, elements: !1967)
!1967 = !{!1968, !1969}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1966, file: !1962, line: 61, baseType: !14, size: 32)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1966, file: !1962, line: 62, baseType: !216, size: 32)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1961, file: !1962, line: 65, baseType: !234, size: 16, offset: 96)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1961, file: !1962, line: 65, baseType: !234, size: 16, offset: 112)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1944, file: !1588, line: 776, baseType: !14, size: 32, offset: 576)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1944, file: !1588, line: 777, baseType: !316, size: 64, offset: 640)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1944, file: !1588, line: 778, baseType: !1943, size: 64, offset: 704)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1944, file: !1588, line: 787, baseType: !6, size: 32, offset: 768)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1944, file: !1588, line: 788, baseType: !6, size: 32, offset: 800)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1944, file: !1588, line: 790, baseType: !6, size: 32, offset: 832)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1944, file: !1588, line: 792, baseType: !6, size: 32, offset: 864)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1944, file: !1588, line: 793, baseType: !6, size: 32, offset: 896)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1944, file: !1588, line: 794, baseType: !6, size: 32, offset: 928)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1944, file: !1588, line: 795, baseType: !14, size: 32, offset: 960)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1944, file: !1588, line: 797, baseType: !1983, size: 2048, offset: 1024)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1588, line: 551, size: 2048, elements: !1984)
!1984 = !{!1985, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2005, !2008, !2009, !2010}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1983, file: !1588, line: 553, baseType: !1986, size: 128)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1588, line: 411, size: 128, elements: !1987)
!1987 = !{!1988, !1989}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1986, file: !1588, line: 412, baseType: !316, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1986, file: !1588, line: 413, baseType: !415, size: 32, offset: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1983, file: !1588, line: 554, baseType: !810, size: 192, align: 64, offset: 128)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1983, file: !1588, line: 555, baseType: !419, size: 64, offset: 320)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1983, file: !1588, line: 556, baseType: !419, size: 64, offset: 384)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1983, file: !1588, line: 558, baseType: !169, size: 128, offset: 448)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1983, file: !1588, line: 559, baseType: !14, size: 32, offset: 576)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1983, file: !1588, line: 561, baseType: !419, size: 64, offset: 640)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1983, file: !1588, line: 562, baseType: !419, size: 64, offset: 704)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1983, file: !1588, line: 563, baseType: !419, size: 64, offset: 768)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1983, file: !1588, line: 564, baseType: !419, size: 64, offset: 832)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1983, file: !1588, line: 565, baseType: !640, size: 64, offset: 896)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1983, file: !1588, line: 566, baseType: !419, size: 64, offset: 960)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1983, file: !1588, line: 568, baseType: !419, size: 64, offset: 1024)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1983, file: !1588, line: 571, baseType: !6, size: 32, offset: 1088)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1983, file: !1588, line: 572, baseType: !2004, size: 64, offset: 1152)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1983, file: !1588, line: 574, baseType: !2006, size: 64, offset: 1216)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1588, line: 49, flags: DIFlagFwdDecl)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1983, file: !1588, line: 576, baseType: !2006, size: 64, offset: 1280)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1983, file: !1588, line: 578, baseType: !316, size: 64, offset: 1344)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1983, file: !1588, line: 588, baseType: !2011, size: 512, align: 512, offset: 1536)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1588, line: 497, size: 512, align: 512, elements: !2012)
!2012 = !{!2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2011, file: !1588, line: 498, baseType: !419, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2011, file: !1588, line: 499, baseType: !419, size: 64, offset: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2011, file: !1588, line: 500, baseType: !419, size: 64, offset: 128)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2011, file: !1588, line: 501, baseType: !415, size: 32, offset: 192)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2011, file: !1588, line: 502, baseType: !415, size: 32, offset: 224)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2011, file: !1588, line: 503, baseType: !316, size: 64, offset: 256)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2011, file: !1588, line: 504, baseType: !316, size: 64, offset: 320)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2011, file: !1588, line: 505, baseType: !316, size: 64, offset: 384)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2011, file: !1588, line: 506, baseType: !2022, size: 64, align: 64, offset: 448)
!2022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1588, line: 445, size: 64, align: 64, elements: !2023)
!2023 = !{!2024, !2025}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2022, file: !1588, line: 446, baseType: !14, size: 32)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2022, file: !1588, line: 447, baseType: !14, size: 32, offset: 32)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1944, file: !1588, line: 798, baseType: !2027, size: 384, offset: 3072)
!2027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1588, line: 592, size: 384, elements: !2028)
!2028 = !{!2029, !2030, !2031, !2032, !2033, !2034, !2035}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2027, file: !1588, line: 593, baseType: !169, size: 128)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2027, file: !1588, line: 594, baseType: !316, size: 64, offset: 128)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2027, file: !1588, line: 595, baseType: !316, size: 64, offset: 192)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2027, file: !1588, line: 596, baseType: !14, size: 32, offset: 256)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2027, file: !1588, line: 597, baseType: !236, size: 16, offset: 288)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2027, file: !1588, line: 598, baseType: !236, size: 16, offset: 304)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2027, file: !1588, line: 600, baseType: !2036, size: 64, offset: 320)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1944, file: !1588, line: 799, baseType: !2038, size: 1792, offset: 3456)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1588, line: 610, size: 1792, elements: !2039)
!2039 = !{!2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2129, !2130}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2038, file: !1588, line: 611, baseType: !810, size: 192, align: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2038, file: !1588, line: 618, baseType: !419, size: 64, offset: 192)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2038, file: !1588, line: 619, baseType: !419, size: 64, offset: 256)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2038, file: !1588, line: 620, baseType: !419, size: 64, offset: 320)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2038, file: !1588, line: 621, baseType: !419, size: 64, offset: 384)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2038, file: !1588, line: 622, baseType: !419, size: 64, offset: 448)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2038, file: !1588, line: 629, baseType: !640, size: 64, offset: 512)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2038, file: !1588, line: 630, baseType: !419, size: 64, offset: 576)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2038, file: !1588, line: 631, baseType: !14, size: 32, offset: 640)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2038, file: !1588, line: 653, baseType: !14, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2038, file: !1588, line: 654, baseType: !14, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2038, file: !1588, line: 655, baseType: !14, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2038, file: !1588, line: 656, baseType: !14, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2038, file: !1588, line: 662, baseType: !2054, size: 512, offset: 704)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !64, line: 118, size: 512, elements: !2055)
!2055 = !{!2056, !2064, !2065, !2070, !2125, !2126, !2127, !2128}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2054, file: !64, line: 119, baseType: !2057, size: 256)
!2057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2058, line: 9, size: 256, elements: !2059)
!2058 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2059 = !{!2060, !2061}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2057, file: !2058, line: 10, baseType: !810, size: 192, align: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2057, file: !2058, line: 11, baseType: !2062, size: 64, offset: 192)
!2062 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2063, line: 29, baseType: !640)
!2063 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2054, file: !64, line: 120, baseType: !2062, size: 64, offset: 256)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2054, file: !64, line: 121, baseType: !2066, size: 64, offset: 320)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{!63, !2069}
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2054, file: !64, line: 122, baseType: !2071, size: 64, offset: 384)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !64, line: 159, size: 512, align: 512, elements: !2073)
!2073 = !{!2074, !2099, !2100, !2103, !2108, !2109, !2120, !2124}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2072, file: !64, line: 160, baseType: !2075, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !64, line: 215, size: 4608, align: 512, elements: !2077)
!2077 = !{!2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2076, file: !64, line: 216, baseType: !643, size: 32)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2076, file: !64, line: 217, baseType: !14, size: 32, offset: 32)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2076, file: !64, line: 218, baseType: !14, size: 32, offset: 64)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2076, file: !64, line: 219, baseType: !14, size: 32, offset: 96)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2076, file: !64, line: 220, baseType: !14, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2076, file: !64, line: 221, baseType: !14, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2076, file: !64, line: 222, baseType: !14, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2076, file: !64, line: 223, baseType: !14, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2076, file: !64, line: 224, baseType: !14, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2076, file: !64, line: 226, baseType: !14, size: 32, offset: 160)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2076, file: !64, line: 227, baseType: !236, size: 16, offset: 192)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2076, file: !64, line: 228, baseType: !236, size: 16, offset: 208)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2076, file: !64, line: 229, baseType: !14, size: 32, offset: 224)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2076, file: !64, line: 235, baseType: !2062, size: 64, offset: 256)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2076, file: !64, line: 236, baseType: !2069, size: 64, offset: 320)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2076, file: !64, line: 237, baseType: !2062, size: 64, offset: 384)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2076, file: !64, line: 238, baseType: !2069, size: 64, offset: 448)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2076, file: !64, line: 239, baseType: !2096, size: 4096, align: 512, offset: 512)
!2096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2072, size: 4096, align: 512, elements: !2097)
!2097 = !{!2098}
!2098 = !DISubrange(count: 8)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2072, file: !64, line: 161, baseType: !14, size: 32, offset: 64)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2072, file: !64, line: 162, baseType: !2101, size: 32, offset: 96)
!2101 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !170, line: 32, baseType: !2102)
!2102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !300, line: 96, baseType: !6)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2072, file: !64, line: 163, baseType: !2104, size: 32, offset: 128)
!2104 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !388, line: 274, baseType: !2105)
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !388, line: 274, size: 32, elements: !2106)
!2106 = !{!2107}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2105, file: !388, line: 274, baseType: !392, size: 32)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2072, file: !64, line: 164, baseType: !2069, size: 64, offset: 192)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2072, file: !64, line: 165, baseType: !2110, size: 128, offset: 256)
!2110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2058, line: 14, size: 128, elements: !2111)
!2111 = !{!2112}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2110, file: !2058, line: 15, baseType: !2113, size: 128)
!2113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !811, line: 26, size: 128, elements: !2114)
!2114 = !{!2115, !2119}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2113, file: !811, line: 27, baseType: !2116, size: 64)
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !811, line: 12, size: 64, elements: !2117)
!2117 = !{!2118}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2116, file: !811, line: 13, baseType: !815, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2113, file: !811, line: 28, baseType: !815, size: 64, offset: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2072, file: !64, line: 166, baseType: !2121, size: 64, offset: 384)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{!2062}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2072, file: !64, line: 167, baseType: !2062, size: 64, offset: 448)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2054, file: !64, line: 123, baseType: !224, size: 8, offset: 448)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2054, file: !64, line: 124, baseType: !224, size: 8, offset: 456)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2054, file: !64, line: 125, baseType: !224, size: 8, offset: 464)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2054, file: !64, line: 126, baseType: !224, size: 8, offset: 472)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2038, file: !1588, line: 671, baseType: !2054, size: 512, offset: 1216)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2038, file: !1588, line: 679, baseType: !2131, size: 64, offset: 1728)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1944, file: !1588, line: 800, baseType: !2133, size: 64, offset: 5248)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2135)
!2135 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1588, line: 800, flags: DIFlagFwdDecl)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1944, file: !1588, line: 809, baseType: !2137, size: 64, offset: 5312)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1588, line: 70, flags: DIFlagFwdDecl)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1944, file: !1588, line: 825, baseType: !2140, size: 2048, align: 512, offset: 5632)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1588, line: 509, size: 2048, align: 512, elements: !2141)
!2141 = !{!2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2140, file: !1588, line: 511, baseType: !419, size: 64)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2140, file: !1588, line: 512, baseType: !419, size: 64, offset: 64)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2140, file: !1588, line: 513, baseType: !419, size: 64, offset: 128)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2140, file: !1588, line: 514, baseType: !419, size: 64, offset: 192)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2140, file: !1588, line: 515, baseType: !419, size: 64, offset: 256)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2140, file: !1588, line: 516, baseType: !419, size: 64, offset: 320)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2140, file: !1588, line: 518, baseType: !419, size: 64, offset: 384)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2140, file: !1588, line: 519, baseType: !419, size: 64, offset: 448)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2140, file: !1588, line: 520, baseType: !640, size: 64, offset: 512)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2140, file: !1588, line: 522, baseType: !419, size: 64, offset: 576)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2140, file: !1588, line: 523, baseType: !419, size: 64, offset: 640)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2140, file: !1588, line: 524, baseType: !640, size: 64, offset: 704)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2140, file: !1588, line: 526, baseType: !640, size: 64, offset: 768)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2140, file: !1588, line: 527, baseType: !419, size: 64, offset: 832)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2140, file: !1588, line: 529, baseType: !419, size: 64, offset: 896)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2140, file: !1588, line: 530, baseType: !419, size: 64, offset: 960)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2140, file: !1588, line: 531, baseType: !419, size: 64, offset: 1024)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2140, file: !1588, line: 532, baseType: !419, size: 64, offset: 1088)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2140, file: !1588, line: 533, baseType: !419, size: 64, offset: 1152)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2140, file: !1588, line: 535, baseType: !419, size: 64, offset: 1216)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2140, file: !1588, line: 536, baseType: !419, size: 64, offset: 1280)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2140, file: !1588, line: 537, baseType: !419, size: 64, offset: 1344)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2140, file: !1588, line: 538, baseType: !419, size: 64, offset: 1408)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2140, file: !1588, line: 539, baseType: !419, size: 64, offset: 1472)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2140, file: !1588, line: 540, baseType: !419, size: 64, offset: 1536)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2140, file: !1588, line: 541, baseType: !419, size: 64, offset: 1600)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2140, file: !1588, line: 542, baseType: !419, size: 64, offset: 1664)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2140, file: !1588, line: 543, baseType: !419, size: 64, offset: 1728)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1944, file: !1588, line: 833, baseType: !14, size: 32, offset: 7680)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1944, file: !1588, line: 836, baseType: !14, size: 32, offset: 7712)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1944, file: !1588, line: 837, baseType: !6, size: 32, offset: 7744)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1944, file: !1588, line: 838, baseType: !2174, size: 64, offset: 7808)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2176)
!2176 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2177, line: 19, baseType: !2178)
!2177 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2177, line: 19, size: 64, elements: !2179)
!2179 = !{!2180}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2178, file: !2177, line: 19, baseType: !2181, size: 64)
!2181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 64, elements: !2182)
!2182 = !{!2183}
!2183 = !DISubrange(count: 1)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1944, file: !1588, line: 839, baseType: !2185, size: 64, offset: 7872)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1944, file: !1588, line: 840, baseType: !2176, size: 64, offset: 7936)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1944, file: !1588, line: 841, baseType: !163, size: 64, offset: 8000)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1944, file: !1588, line: 843, baseType: !236, size: 16, offset: 8064)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1944, file: !1588, line: 845, baseType: !236, size: 16, offset: 8080)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1944, file: !1588, line: 848, baseType: !6, size: 32, offset: 8096)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1944, file: !1588, line: 849, baseType: !2192, size: 32, offset: 8128)
!2192 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1588, line: 718, size: 32, elements: !2193)
!2193 = !{!2194, !2201}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2192, file: !1588, line: 724, baseType: !2195, size: 32)
!2195 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2192, file: !1588, line: 719, size: 32, elements: !2196)
!2196 = !{!2197, !2198, !2199, !2200}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2195, file: !1588, line: 720, baseType: !224, size: 8)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2195, file: !1588, line: 721, baseType: !224, size: 8, offset: 8)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2195, file: !1588, line: 722, baseType: !224, size: 8, offset: 16)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2195, file: !1588, line: 723, baseType: !224, size: 8, offset: 24)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2192, file: !1588, line: 725, baseType: !415, size: 32)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1944, file: !1588, line: 850, baseType: !169, size: 128, offset: 8192)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1944, file: !1588, line: 851, baseType: !2204, size: 64, offset: 8320)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1588, line: 60, flags: DIFlagFwdDecl)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1944, file: !1588, line: 855, baseType: !316, size: 64, offset: 8384)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1944, file: !1588, line: 856, baseType: !224, size: 8, offset: 8448)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1944, file: !1588, line: 857, baseType: !224, size: 8, offset: 8456)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1944, file: !1588, line: 858, baseType: !6, size: 32, offset: 8480)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1944, file: !1588, line: 859, baseType: !169, size: 128, offset: 8512)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1944, file: !1588, line: 860, baseType: !6, size: 32, offset: 8640)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1944, file: !1588, line: 861, baseType: !169, size: 128, offset: 8704)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1944, file: !1588, line: 873, baseType: !2214, size: 256, offset: 8832)
!2214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1588, line: 376, size: 256, elements: !2215)
!2215 = !{!2216, !2217, !2218, !2219}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2214, file: !1588, line: 381, baseType: !316, size: 64)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2214, file: !1588, line: 384, baseType: !421, size: 64, offset: 64)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2214, file: !1588, line: 389, baseType: !421, size: 64, offset: 128)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2214, file: !1588, line: 392, baseType: !421, size: 64, offset: 192)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1944, file: !1588, line: 875, baseType: !169, size: 128, offset: 9088)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1944, file: !1588, line: 877, baseType: !2222, size: 320, offset: 9216)
!2222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2223, line: 86, size: 320, elements: !2224)
!2223 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2224 = !{!2225, !2226, !2227}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2222, file: !2223, line: 87, baseType: !6, size: 32)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2222, file: !2223, line: 88, baseType: !169, size: 128, offset: 64)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2222, file: !2223, line: 89, baseType: !169, size: 128, offset: 192)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1944, file: !1588, line: 878, baseType: !810, size: 192, align: 64, offset: 9536)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1944, file: !1588, line: 881, baseType: !1101, size: 64, offset: 9728)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1944, file: !1588, line: 882, baseType: !1101, size: 64, offset: 9792)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1944, file: !1588, line: 884, baseType: !6, size: 32, offset: 9856)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1944, file: !1588, line: 885, baseType: !6, size: 32, offset: 9888)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1944, file: !1588, line: 886, baseType: !6, size: 32, offset: 9920)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1944, file: !1588, line: 888, baseType: !6, size: 32, offset: 9952)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1944, file: !1588, line: 890, baseType: !316, size: 64, offset: 9984)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1944, file: !1588, line: 893, baseType: !14, size: 32, offset: 10048)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1944, file: !1588, line: 896, baseType: !14, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1944, file: !1588, line: 897, baseType: !14, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1944, file: !1588, line: 898, baseType: !14, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1944, file: !1588, line: 899, baseType: !14, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1944, file: !1588, line: 919, baseType: !14, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1944, file: !1588, line: 922, baseType: !14, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1944, file: !1588, line: 923, baseType: !14, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1944, file: !1588, line: 925, baseType: !14, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1944, file: !1588, line: 939, baseType: !14, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1944, file: !1588, line: 941, baseType: !14, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1944, file: !1588, line: 944, baseType: !14, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1944, file: !1588, line: 956, baseType: !14, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1944, file: !1588, line: 962, baseType: !14, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1944, file: !1588, line: 966, baseType: !14, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1944, file: !1588, line: 969, baseType: !316, size: 64, offset: 10176)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1944, file: !1588, line: 971, baseType: !2253, size: 448, offset: 10240)
!2253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !69, line: 25, size: 448, elements: !2254)
!2254 = !{!2255, !2256, !2261}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2253, file: !69, line: 26, baseType: !316, size: 64)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2253, file: !69, line: 27, baseType: !2257, size: 64, offset: 64)
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2258 = !DISubroutineType(types: !2259)
!2259 = !{!302, !2260}
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2261 = !DIDerivedType(tag: DW_TAG_member, scope: !2253, file: !69, line: 28, baseType: !2262, size: 320, offset: 128)
!2262 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2253, file: !69, line: 28, size: 320, elements: !2263)
!2263 = !{!2264, !2274, !2299}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2262, file: !69, line: 37, baseType: !2265, size: 320)
!2265 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2262, file: !69, line: 30, size: 320, elements: !2266)
!2266 = !{!2267, !2269, !2270, !2271, !2272, !2273}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2265, file: !69, line: 31, baseType: !2268, size: 64)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2265, file: !69, line: 32, baseType: !415, size: 32, offset: 64)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2265, file: !69, line: 33, baseType: !415, size: 32, offset: 96)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2265, file: !69, line: 34, baseType: !415, size: 32, offset: 128)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2265, file: !69, line: 35, baseType: !419, size: 64, offset: 192)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2265, file: !69, line: 36, baseType: !2268, size: 64, offset: 256)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2262, file: !69, line: 47, baseType: !2275, size: 192)
!2275 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2262, file: !69, line: 39, size: 192, elements: !2276)
!2276 = !{!2277, !2278, !2279, !2298}
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2275, file: !69, line: 40, baseType: !2101, size: 32)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2275, file: !69, line: 41, baseType: !68, size: 32, offset: 32)
!2279 = !DIDerivedType(tag: DW_TAG_member, scope: !2275, file: !69, line: 42, baseType: !2280, size: 64, offset: 64)
!2280 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2275, file: !69, line: 42, size: 64, elements: !2281)
!2281 = !{!2282, !2290}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2280, file: !69, line: 43, baseType: !2283, size: 64)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2285, line: 7, size: 128, elements: !2286)
!2285 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2286 = !{!2287, !2289}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2284, file: !2285, line: 8, baseType: !2288, size: 64)
!2288 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !300, line: 93, baseType: !509)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2284, file: !2285, line: 9, baseType: !509, size: 64, offset: 64)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2280, file: !69, line: 44, baseType: !2291, size: 64)
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2293, line: 7, size: 64, elements: !2294)
!2293 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2294 = !{!2295, !2297}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2292, file: !2293, line: 8, baseType: !2296, size: 32)
!2296 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2293, line: 5, baseType: !803)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2292, file: !2293, line: 9, baseType: !803, size: 32, offset: 32)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2275, file: !69, line: 46, baseType: !419, size: 64, offset: 128)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2262, file: !69, line: 55, baseType: !2300, size: 256)
!2300 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2262, file: !69, line: 49, size: 256, elements: !2301)
!2301 = !{!2302, !2310, !2311, !2312, !2313}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2300, file: !69, line: 50, baseType: !2303, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !2305, line: 36, size: 64, elements: !2306)
!2305 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!2306 = !{!2307, !2308, !2309}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2304, file: !2305, line: 37, baseType: !6, size: 32)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2304, file: !2305, line: 38, baseType: !846, size: 16, offset: 32)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !2304, file: !2305, line: 39, baseType: !846, size: 16, offset: 48)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2300, file: !69, line: 51, baseType: !6, size: 32, offset: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2300, file: !69, line: 52, baseType: !6, size: 32, offset: 96)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2300, file: !69, line: 53, baseType: !316, size: 64, offset: 128)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2300, file: !69, line: 54, baseType: !316, size: 64, offset: 192)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1944, file: !1588, line: 973, baseType: !2315, size: 32, offset: 10688)
!2315 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !170, line: 27, baseType: !2316)
!2316 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !300, line: 28, baseType: !6)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1944, file: !1588, line: 974, baseType: !2315, size: 32, offset: 10720)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1944, file: !1588, line: 978, baseType: !316, size: 64, offset: 10752)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1944, file: !1588, line: 987, baseType: !1943, size: 64, offset: 10816)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1944, file: !1588, line: 990, baseType: !1943, size: 64, offset: 10880)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1944, file: !1588, line: 995, baseType: !169, size: 128, offset: 10944)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1944, file: !1588, line: 996, baseType: !169, size: 128, offset: 11072)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1944, file: !1588, line: 997, baseType: !1943, size: 64, offset: 11200)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1944, file: !1588, line: 1005, baseType: !169, size: 128, offset: 11264)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1944, file: !1588, line: 1006, baseType: !169, size: 128, offset: 11392)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1944, file: !1588, line: 1009, baseType: !729, size: 64, offset: 11520)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1944, file: !1588, line: 1010, baseType: !2328, size: 512, offset: 11584)
!2328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !541, size: 512, elements: !742)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1944, file: !1588, line: 1011, baseType: !169, size: 128, offset: 12096)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1944, file: !1588, line: 1012, baseType: !169, size: 128, offset: 12224)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1944, file: !1588, line: 1014, baseType: !2332, size: 64, offset: 12352)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1944, file: !1588, line: 1017, baseType: !612, size: 64, offset: 12416)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1944, file: !1588, line: 1020, baseType: !612, size: 64, offset: 12480)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1944, file: !1588, line: 1023, baseType: !163, size: 64, offset: 12544)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1944, file: !1588, line: 1025, baseType: !419, size: 64, offset: 12608)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1944, file: !1588, line: 1026, baseType: !419, size: 64, offset: 12672)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1944, file: !1588, line: 1031, baseType: !419, size: 64, offset: 12736)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1944, file: !1588, line: 1032, baseType: !2340, size: 192, offset: 12800)
!2340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1588, line: 324, size: 192, elements: !2341)
!2341 = !{!2342, !2343, !2344}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2340, file: !1588, line: 326, baseType: !419, size: 64)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2340, file: !1588, line: 327, baseType: !419, size: 64, offset: 64)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2340, file: !1588, line: 328, baseType: !643, size: 32, offset: 128)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1944, file: !1588, line: 1041, baseType: !316, size: 64, offset: 12992)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1944, file: !1588, line: 1042, baseType: !316, size: 64, offset: 13056)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1944, file: !1588, line: 1045, baseType: !419, size: 64, offset: 13120)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1944, file: !1588, line: 1048, baseType: !419, size: 64, offset: 13184)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1944, file: !1588, line: 1051, baseType: !316, size: 64, offset: 13248)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1944, file: !1588, line: 1052, baseType: !316, size: 64, offset: 13312)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1944, file: !1588, line: 1055, baseType: !2352, size: 640, offset: 13376)
!2352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2353, line: 132, size: 640, elements: !2354)
!2353 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2354 = !{!2355, !2361, !2362}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2352, file: !2353, line: 133, baseType: !2356, size: 576)
!2356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2357, size: 576, elements: !267)
!2357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2353, line: 117, size: 192, elements: !2358)
!2358 = !{!2359, !2360}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2357, file: !2353, line: 118, baseType: !419, size: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2357, file: !2353, line: 119, baseType: !2110, size: 128, offset: 64)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2352, file: !2353, line: 134, baseType: !14, size: 32, offset: 576)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2352, file: !2353, line: 135, baseType: !14, size: 32, offset: 608)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1944, file: !1588, line: 1058, baseType: !2364, size: 448, offset: 14016)
!2364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2353, line: 144, size: 448, elements: !2365)
!2365 = !{!2366, !2367, !2368}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2364, file: !2353, line: 145, baseType: !688, size: 128, align: 64)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2364, file: !2353, line: 146, baseType: !630, size: 256, offset: 128)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2364, file: !2353, line: 147, baseType: !14, size: 32, offset: 384)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1944, file: !1588, line: 1064, baseType: !768, size: 64, offset: 14464)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1944, file: !1588, line: 1067, baseType: !768, size: 64, offset: 14528)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1944, file: !1588, line: 1070, baseType: !768, size: 64, offset: 14592)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1944, file: !1588, line: 1074, baseType: !795, size: 64, offset: 14656)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1944, file: !1588, line: 1084, baseType: !2374, size: 128, offset: 14720)
!2374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 128, elements: !2375)
!2375 = !{!2376}
!2376 = !DISubrange(count: 16)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1944, file: !1588, line: 1086, baseType: !2378, size: 64, offset: 14848)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1588, line: 55, flags: DIFlagFwdDecl)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1944, file: !1588, line: 1089, baseType: !2381, size: 64, offset: 14912)
!2381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2382, line: 12, size: 64, elements: !2383)
!2382 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2383 = !{!2384}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2381, file: !2382, line: 13, baseType: !2385, size: 64)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2382, line: 8, flags: DIFlagFwdDecl)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1944, file: !1588, line: 1090, baseType: !2388, size: 128, offset: 14976)
!2388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2389, line: 13, size: 128, elements: !2390)
!2389 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2390 = !{!2391}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2388, file: !2389, line: 14, baseType: !169, size: 128)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1944, file: !1588, line: 1097, baseType: !2393, size: 64, offset: 15104)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1588, line: 50, flags: DIFlagFwdDecl)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1944, file: !1588, line: 1100, baseType: !2396, size: 64, offset: 15168)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1588, line: 1100, flags: DIFlagFwdDecl)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1944, file: !1588, line: 1103, baseType: !2399, size: 64, offset: 15232)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1588, line: 53, flags: DIFlagFwdDecl)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1944, file: !1588, line: 1107, baseType: !2402, size: 64, offset: 15296)
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2403, size: 64)
!2403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2404, line: 31, size: 576, elements: !2405)
!2404 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!2405 = !{!2406, !2407, !2438, !2441, !2444, !2445, !2448, !2451, !2452}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2403, file: !2404, line: 32, baseType: !733, size: 32)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !2403, file: !2404, line: 33, baseType: !2408, size: 64, offset: 64)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !2410, line: 24, size: 3456, elements: !2411)
!2410 = !DIFile(filename: "./include/linux/utsname.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d7c7738a60e085c4dfa8b09989fd6dce")
!2411 = !{!2412, !2425, !2426, !2427}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2409, file: !2410, line: 25, baseType: !2413, size: 3120)
!2413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "new_utsname", file: !2414, line: 25, size: 3120, elements: !2415)
!2414 = !DIFile(filename: "./include/uapi/linux/utsname.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ce568c2f88d7dce3b32bd7d3c8b00b87")
!2415 = !{!2416, !2420, !2421, !2422, !2423, !2424}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "sysname", scope: !2413, file: !2414, line: 26, baseType: !2417, size: 520)
!2417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 520, elements: !2418)
!2418 = !{!2419}
!2419 = !DISubrange(count: 65)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "nodename", scope: !2413, file: !2414, line: 27, baseType: !2417, size: 520, offset: 520)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2413, file: !2414, line: 28, baseType: !2417, size: 520, offset: 1040)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2413, file: !2414, line: 29, baseType: !2417, size: 520, offset: 1560)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !2413, file: !2414, line: 30, baseType: !2417, size: 520, offset: 2080)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "domainname", scope: !2413, file: !2414, line: 31, baseType: !2417, size: 520, offset: 2600)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2409, file: !2410, line: 26, baseType: !960, size: 64, offset: 3136)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !2409, file: !2410, line: 27, baseType: !963, size: 64, offset: 3200)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2409, file: !2410, line: 28, baseType: !2428, size: 192, offset: 3264)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !2429, line: 9, size: 192, elements: !2430)
!2429 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!2430 = !{!2431, !2432, !2436, !2437}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !2428, file: !2429, line: 10, baseType: !634, size: 64)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2428, file: !2429, line: 11, baseType: !2433, size: 64, offset: 64)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2435)
!2435 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !2429, line: 7, flags: DIFlagFwdDecl)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !2428, file: !2429, line: 12, baseType: !14, size: 32, offset: 128)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2428, file: !2429, line: 13, baseType: !733, size: 32, offset: 160)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !2403, file: !2404, line: 34, baseType: !2439, size: 64, offset: 128)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !2404, line: 10, flags: DIFlagFwdDecl)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !2403, file: !2404, line: 35, baseType: !2442, size: 64, offset: 192)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !2404, line: 8, flags: DIFlagFwdDecl)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !2403, file: !2404, line: 36, baseType: !759, size: 64, offset: 256)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !2403, file: !2404, line: 37, baseType: !2446, size: 64, offset: 320)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !797, line: 34, flags: DIFlagFwdDecl)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !2403, file: !2404, line: 38, baseType: !2449, size: 64, offset: 384)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2450 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !2404, line: 38, flags: DIFlagFwdDecl)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !2403, file: !2404, line: 39, baseType: !2449, size: 64, offset: 448)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !2403, file: !2404, line: 40, baseType: !2453, size: 64, offset: 512)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !2404, line: 12, flags: DIFlagFwdDecl)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1944, file: !1588, line: 1110, baseType: !2456, size: 64, offset: 15360)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2458, line: 93, size: 8768, elements: !2459)
!2458 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2459 = !{!2460, !2461, !2462, !2463, !2464, !2465, !2466, !2467, !2477, !2478, !2479, !2480, !2481, !2482, !2483, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2509, !2518, !2519, !2521, !2522, !2523, !2526, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2564, !2565, !2572, !2582, !2585, !2586, !2589, !2590, !2591, !2592, !2593, !2594}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2457, file: !2458, line: 94, baseType: !733, size: 32)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2457, file: !2458, line: 95, baseType: !216, size: 32, offset: 32)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2457, file: !2458, line: 96, baseType: !6, size: 32, offset: 64)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2457, file: !2458, line: 97, baseType: !6, size: 32, offset: 96)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2457, file: !2458, line: 98, baseType: !169, size: 128, offset: 128)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2457, file: !2458, line: 100, baseType: !746, size: 192, offset: 256)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2457, file: !2458, line: 103, baseType: !1943, size: 64, offset: 448)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2457, file: !2458, line: 106, baseType: !2468, size: 192, offset: 512)
!2468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !965, line: 32, size: 192, elements: !2469)
!2469 = !{!2470, !2471}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2468, file: !965, line: 33, baseType: !169, size: 128)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2468, file: !965, line: 34, baseType: !2472, size: 64, offset: 128)
!2472 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2473, line: 25, baseType: !2474)
!2473 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2474 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2473, line: 23, size: 64, elements: !2475)
!2475 = !{!2476}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2474, file: !2473, line: 24, baseType: !2181, size: 64)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2457, file: !2458, line: 109, baseType: !537, size: 64, offset: 704)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2457, file: !2458, line: 112, baseType: !6, size: 32, offset: 768)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2457, file: !2458, line: 114, baseType: !6, size: 32, offset: 800)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2457, file: !2458, line: 115, baseType: !1943, size: 64, offset: 832)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2457, file: !2458, line: 118, baseType: !6, size: 32, offset: 896)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2457, file: !2458, line: 119, baseType: !14, size: 32, offset: 928)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2457, file: !2458, line: 121, baseType: !2484, size: 64, offset: 960)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2458, line: 80, size: 448, elements: !2486)
!2486 = !{!2487, !2488, !2494}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2485, file: !2458, line: 81, baseType: !216, size: 32)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2485, file: !2458, line: 82, baseType: !2489, size: 128, offset: 64)
!2489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2458, line: 75, size: 128, elements: !2490)
!2490 = !{!2491, !2492}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2489, file: !2458, line: 76, baseType: !1943, size: 64)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2489, file: !2458, line: 77, baseType: !2493, size: 64, offset: 64)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2485, file: !2458, line: 83, baseType: !1448, size: 256, offset: 192)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2457, file: !2458, line: 132, baseType: !14, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2457, file: !2458, line: 133, baseType: !14, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2457, file: !2458, line: 138, baseType: !14, size: 32, offset: 1056)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2457, file: !2458, line: 139, baseType: !169, size: 128, offset: 1088)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2457, file: !2458, line: 142, baseType: !2054, size: 512, offset: 1216)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2457, file: !2458, line: 143, baseType: !2062, size: 64, offset: 1728)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2457, file: !2458, line: 150, baseType: !2502, size: 256, offset: 1792)
!2502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2503, size: 256, elements: !2507)
!2503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2458, line: 38, size: 128, elements: !2504)
!2504 = !{!2505, !2506}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2503, file: !2458, line: 39, baseType: !419, size: 64)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2503, file: !2458, line: 40, baseType: !419, size: 64, offset: 64)
!2507 = !{!2508}
!2508 = !DISubrange(count: 2)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2457, file: !2458, line: 156, baseType: !2510, size: 192, offset: 2048)
!2510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2458, line: 66, size: 192, elements: !2511)
!2511 = !{!2512}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2510, file: !2458, line: 67, baseType: !2513, size: 192)
!2513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2458, line: 47, size: 192, elements: !2514)
!2514 = !{!2515, !2516, !2517}
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2513, file: !2458, line: 48, baseType: !636, size: 64)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2513, file: !2458, line: 49, baseType: !636, size: 64, offset: 64)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2513, file: !2458, line: 50, baseType: !636, size: 64, offset: 128)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2457, file: !2458, line: 160, baseType: !2352, size: 640, offset: 2240)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2457, file: !2458, line: 163, baseType: !2520, size: 256, offset: 2880)
!2520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !729, size: 256, elements: !742)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2457, file: !2458, line: 169, baseType: !729, size: 64, offset: 3136)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2457, file: !2458, line: 172, baseType: !6, size: 32, offset: 3200)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2457, file: !2458, line: 174, baseType: !2524, size: 64, offset: 3264)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2458, line: 174, flags: DIFlagFwdDecl)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2457, file: !2458, line: 185, baseType: !2527, size: 64, offset: 3328)
!2527 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !388, line: 860, baseType: !2528)
!2528 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !388, line: 853, size: 64, elements: !2529)
!2529 = !{!2530, !2531}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2528, file: !388, line: 858, baseType: !387, size: 32)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2528, file: !388, line: 859, baseType: !196, size: 32, offset: 32)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2457, file: !2458, line: 186, baseType: !419, size: 64, offset: 3392)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2457, file: !2458, line: 186, baseType: !419, size: 64, offset: 3456)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2457, file: !2458, line: 186, baseType: !419, size: 64, offset: 3520)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2457, file: !2458, line: 186, baseType: !419, size: 64, offset: 3584)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2457, file: !2458, line: 187, baseType: !419, size: 64, offset: 3648)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2457, file: !2458, line: 188, baseType: !419, size: 64, offset: 3712)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2457, file: !2458, line: 189, baseType: !2340, size: 192, offset: 3776)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2457, file: !2458, line: 190, baseType: !316, size: 64, offset: 3968)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2457, file: !2458, line: 190, baseType: !316, size: 64, offset: 4032)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2457, file: !2458, line: 190, baseType: !316, size: 64, offset: 4096)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2457, file: !2458, line: 190, baseType: !316, size: 64, offset: 4160)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2457, file: !2458, line: 191, baseType: !316, size: 64, offset: 4224)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2457, file: !2458, line: 191, baseType: !316, size: 64, offset: 4288)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2457, file: !2458, line: 191, baseType: !316, size: 64, offset: 4352)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2457, file: !2458, line: 191, baseType: !316, size: 64, offset: 4416)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2457, file: !2458, line: 192, baseType: !316, size: 64, offset: 4480)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2457, file: !2458, line: 192, baseType: !316, size: 64, offset: 4544)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2457, file: !2458, line: 192, baseType: !316, size: 64, offset: 4608)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2457, file: !2458, line: 192, baseType: !316, size: 64, offset: 4672)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2457, file: !2458, line: 193, baseType: !316, size: 64, offset: 4736)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2457, file: !2458, line: 193, baseType: !316, size: 64, offset: 4800)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2457, file: !2458, line: 194, baseType: !2554, size: 448, offset: 4864)
!2554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2555, line: 12, size: 448, elements: !2556)
!2555 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2556 = !{!2557, !2558, !2559, !2560, !2561, !2562, !2563}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2554, file: !2555, line: 15, baseType: !419, size: 64)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2554, file: !2555, line: 17, baseType: !419, size: 64, offset: 64)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2554, file: !2555, line: 19, baseType: !419, size: 64, offset: 128)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2554, file: !2555, line: 21, baseType: !419, size: 64, offset: 192)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2554, file: !2555, line: 29, baseType: !419, size: 64, offset: 256)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2554, file: !2555, line: 35, baseType: !419, size: 64, offset: 320)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2554, file: !2555, line: 44, baseType: !419, size: 64, offset: 384)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2457, file: !2458, line: 202, baseType: !421, size: 64, offset: 5312)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2457, file: !2458, line: 213, baseType: !2566, size: 2048, offset: 5376)
!2566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2567, size: 2048, elements: !2375)
!2567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2568, line: 43, size: 128, elements: !2569)
!2568 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2569 = !{!2570, !2571}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2567, file: !2568, line: 44, baseType: !315, size: 64)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2567, file: !2568, line: 45, baseType: !315, size: 64, offset: 64)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2457, file: !2458, line: 216, baseType: !2573, size: 448, offset: 7424)
!2573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2458, line: 30, size: 448, elements: !2574)
!2574 = !{!2575, !2576, !2577, !2578, !2579, !2580, !2581}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2573, file: !2458, line: 31, baseType: !6, size: 32)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2573, file: !2458, line: 32, baseType: !302, size: 64, offset: 64)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2573, file: !2458, line: 33, baseType: !316, size: 64, offset: 128)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2573, file: !2458, line: 34, baseType: !419, size: 64, offset: 192)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2573, file: !2458, line: 34, baseType: !419, size: 64, offset: 256)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2573, file: !2458, line: 35, baseType: !316, size: 64, offset: 320)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2573, file: !2458, line: 35, baseType: !316, size: 64, offset: 384)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2457, file: !2458, line: 219, baseType: !2583, size: 64, offset: 7872)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2458, line: 219, flags: DIFlagFwdDecl)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2457, file: !2458, line: 222, baseType: !14, size: 32, offset: 7936)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2457, file: !2458, line: 223, baseType: !2587, size: 64, offset: 8000)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2458, line: 223, flags: DIFlagFwdDecl)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2457, file: !2458, line: 230, baseType: !877, size: 8, offset: 8064)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2457, file: !2458, line: 231, baseType: !846, size: 16, offset: 8080)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2457, file: !2458, line: 232, baseType: !846, size: 16, offset: 8096)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2457, file: !2458, line: 234, baseType: !1101, size: 64, offset: 8128)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2457, file: !2458, line: 237, baseType: !630, size: 256, offset: 8192)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2457, file: !2458, line: 243, baseType: !818, size: 320, offset: 8448)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1944, file: !1588, line: 1111, baseType: !2596, size: 64, offset: 15424)
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2458, line: 20, size: 16640, elements: !2598)
!2598 = !{!2599, !2600, !2601, !2602}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2597, file: !2458, line: 21, baseType: !196, size: 32)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2597, file: !2458, line: 22, baseType: !733, size: 32, offset: 32)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2597, file: !2458, line: 23, baseType: !746, size: 192, offset: 64)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2597, file: !2458, line: 24, baseType: !2603, size: 16384, offset: 256)
!2603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2604, size: 16384, elements: !271)
!2604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !965, line: 51, size: 256, elements: !2605)
!2605 = !{!2606}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2604, file: !965, line: 52, baseType: !2607, size: 256)
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !965, line: 37, size: 256, elements: !2608)
!2608 = !{!2609, !2616, !2617, !2623}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2607, file: !965, line: 39, baseType: !2610, size: 64)
!2610 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2611, line: 83, baseType: !2612)
!2611 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2611, line: 82, baseType: !2614)
!2614 = !DISubroutineType(types: !2615)
!2615 = !{null, !6}
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2607, file: !965, line: 40, baseType: !316, size: 64, offset: 64)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2607, file: !965, line: 46, baseType: !2618, size: 64, offset: 128)
!2618 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2611, line: 86, baseType: !2619)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2611, line: 85, baseType: !2621)
!2621 = !DISubroutineType(types: !2622)
!2622 = !{null}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2607, file: !965, line: 48, baseType: !2472, size: 64, offset: 192)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1944, file: !1588, line: 1112, baseType: !2472, size: 64, offset: 15488)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1944, file: !1588, line: 1113, baseType: !2472, size: 64, offset: 15552)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1944, file: !1588, line: 1115, baseType: !2472, size: 64, offset: 15616)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1944, file: !1588, line: 1116, baseType: !2468, size: 192, offset: 15680)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1944, file: !1588, line: 1117, baseType: !316, size: 64, offset: 15872)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1944, file: !1588, line: 1118, baseType: !313, size: 64, offset: 15936)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1944, file: !1588, line: 1119, baseType: !14, size: 32, offset: 16000)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1944, file: !1588, line: 1121, baseType: !691, size: 64, offset: 16064)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1944, file: !1588, line: 1125, baseType: !2633, size: 64, offset: 16128)
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1588, line: 43, flags: DIFlagFwdDecl)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1944, file: !1588, line: 1127, baseType: !352, size: 32, offset: 16192)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1944, file: !1588, line: 1128, baseType: !14, size: 32, offset: 16224)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1944, file: !1588, line: 1130, baseType: !2638, size: 128, offset: 16256)
!2638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2639, line: 37, size: 128, elements: !2640)
!2639 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2640 = !{!2641, !2642, !2643}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2638, file: !2639, line: 38, baseType: !6, size: 32)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2638, file: !2639, line: 39, baseType: !216, size: 32, offset: 32)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2638, file: !2639, line: 40, baseType: !2644, size: 64, offset: 64)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2639, line: 24, flags: DIFlagFwdDecl)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1944, file: !1588, line: 1131, baseType: !2647, size: 256, offset: 16384)
!2647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2648, line: 12, size: 256, elements: !2649)
!2648 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2649 = !{!2650, !2651, !2652, !2653}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2647, file: !2648, line: 13, baseType: !266, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2647, file: !2648, line: 14, baseType: !316, size: 64, offset: 64)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2647, file: !2648, line: 15, baseType: !316, size: 64, offset: 128)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2647, file: !2648, line: 16, baseType: !877, size: 8, offset: 192)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1944, file: !1588, line: 1134, baseType: !419, size: 64, offset: 16640)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1944, file: !1588, line: 1135, baseType: !419, size: 64, offset: 16704)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1944, file: !1588, line: 1138, baseType: !196, size: 32, offset: 16768)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1944, file: !1588, line: 1141, baseType: !643, size: 32, offset: 16800)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1944, file: !1588, line: 1143, baseType: !2659, size: 64, offset: 16832)
!2659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1588, line: 735, size: 64, elements: !2660)
!2660 = !{!2661}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2659, file: !1588, line: 736, baseType: !2662, size: 64)
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1944, file: !1588, line: 1147, baseType: !2113, size: 128, offset: 16896)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1944, file: !1588, line: 1149, baseType: !1943, size: 64, offset: 17024)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1944, file: !1588, line: 1151, baseType: !2666, size: 64, offset: 17088)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1588, line: 1151, flags: DIFlagFwdDecl)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1944, file: !1588, line: 1188, baseType: !163, size: 64, offset: 17152)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1944, file: !1588, line: 1191, baseType: !2670, size: 64, offset: 17216)
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1588, line: 44, flags: DIFlagFwdDecl)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1944, file: !1588, line: 1194, baseType: !2673, size: 64, offset: 17280)
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2674 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1588, line: 45, flags: DIFlagFwdDecl)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1944, file: !1588, line: 1197, baseType: !2676, size: 64, offset: 17344)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1588, line: 61, flags: DIFlagFwdDecl)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1944, file: !1588, line: 1199, baseType: !2679, size: 64, offset: 17408)
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2681, line: 99, size: 128, elements: !2682)
!2681 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2682 = !{!2683, !2684, !2685}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2680, file: !2681, line: 100, baseType: !634, size: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2680, file: !2681, line: 101, baseType: !216, size: 32, offset: 64)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2680, file: !2681, line: 103, baseType: !236, size: 16, offset: 96)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1944, file: !1588, line: 1202, baseType: !2687, size: 64, offset: 17472)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2688 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1588, line: 48, flags: DIFlagFwdDecl)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1944, file: !1588, line: 1205, baseType: !316, size: 64, offset: 17536)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1944, file: !1588, line: 1206, baseType: !2691, size: 64, offset: 17600)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !965, line: 14, baseType: !2693)
!2693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !965, line: 12, size: 384, elements: !2694)
!2694 = !{!2695}
!2695 = !DIDerivedType(tag: DW_TAG_member, scope: !2693, file: !965, line: 13, baseType: !2696, size: 384)
!2696 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2693, file: !965, line: 13, size: 384, elements: !2697)
!2697 = !{!2698, !2699, !2700, !2701}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2696, file: !965, line: 13, baseType: !6, size: 32)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2696, file: !965, line: 13, baseType: !6, size: 32, offset: 32)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2696, file: !965, line: 13, baseType: !6, size: 32, offset: 64)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2696, file: !965, line: 13, baseType: !2702, size: 256, offset: 128)
!2702 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2703, line: 37, size: 256, elements: !2704)
!2703 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2704 = !{!2705, !2710, !2723, !2729, !2738, !2765, !2770}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2702, file: !2703, line: 42, baseType: !2706, size: 64)
!2706 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2702, file: !2703, line: 39, size: 64, elements: !2707)
!2707 = !{!2708, !2709}
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2706, file: !2703, line: 40, baseType: !2316, size: 32)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2706, file: !2703, line: 41, baseType: !358, size: 32, offset: 32)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2702, file: !2703, line: 50, baseType: !2711, size: 192)
!2711 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2702, file: !2703, line: 45, size: 192, elements: !2712)
!2712 = !{!2713, !2715, !2716, !2722}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2711, file: !2703, line: 46, baseType: !2714, size: 32)
!2714 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !300, line: 95, baseType: !6)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2711, file: !2703, line: 47, baseType: !6, size: 32, offset: 32)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2711, file: !2703, line: 48, baseType: !2717, size: 64, offset: 64)
!2717 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2703, line: 11, baseType: !2718)
!2718 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2703, line: 8, size: 64, elements: !2719)
!2719 = !{!2720, !2721}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2718, file: !2703, line: 9, baseType: !6, size: 32)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2718, file: !2703, line: 10, baseType: !163, size: 64)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2711, file: !2703, line: 49, baseType: !6, size: 32, offset: 128)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2702, file: !2703, line: 57, baseType: !2724, size: 128)
!2724 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2702, file: !2703, line: 53, size: 128, elements: !2725)
!2725 = !{!2726, !2727, !2728}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2724, file: !2703, line: 54, baseType: !2316, size: 32)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2724, file: !2703, line: 55, baseType: !358, size: 32, offset: 32)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2724, file: !2703, line: 56, baseType: !2717, size: 64, offset: 64)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2702, file: !2703, line: 66, baseType: !2730, size: 256)
!2730 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2702, file: !2703, line: 60, size: 256, elements: !2731)
!2731 = !{!2732, !2733, !2734, !2735, !2737}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2730, file: !2703, line: 61, baseType: !2316, size: 32)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2730, file: !2703, line: 62, baseType: !358, size: 32, offset: 32)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2730, file: !2703, line: 63, baseType: !6, size: 32, offset: 64)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2730, file: !2703, line: 64, baseType: !2736, size: 64, offset: 128)
!2736 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !300, line: 94, baseType: !301)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2730, file: !2703, line: 65, baseType: !2736, size: 64, offset: 192)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2702, file: !2703, line: 105, baseType: !2739, size: 256)
!2739 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2702, file: !2703, line: 69, size: 256, elements: !2740)
!2740 = !{!2741, !2742}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2739, file: !2703, line: 70, baseType: !163, size: 64)
!2742 = !DIDerivedType(tag: DW_TAG_member, scope: !2739, file: !2703, line: 79, baseType: !2743, size: 192, offset: 64)
!2743 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2739, file: !2703, line: 79, size: 192, elements: !2744)
!2744 = !{!2745, !2746, !2747, !2754, !2759}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2743, file: !2703, line: 81, baseType: !6, size: 32)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2743, file: !2703, line: 86, baseType: !846, size: 16)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2743, file: !2703, line: 92, baseType: !2748, size: 192)
!2748 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2743, file: !2703, line: 88, size: 192, elements: !2749)
!2749 = !{!2750, !2752, !2753}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2748, file: !2703, line: 89, baseType: !2751, size: 64)
!2751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 64, elements: !2097)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2748, file: !2703, line: 90, baseType: !163, size: 64, offset: 64)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2748, file: !2703, line: 91, baseType: !163, size: 64, offset: 128)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2743, file: !2703, line: 97, baseType: !2755, size: 96)
!2755 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2743, file: !2703, line: 94, size: 96, elements: !2756)
!2756 = !{!2757, !2758}
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2755, file: !2703, line: 95, baseType: !2751, size: 64)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2755, file: !2703, line: 96, baseType: !416, size: 32, offset: 64)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2743, file: !2703, line: 103, baseType: !2760, size: 128)
!2760 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2743, file: !2703, line: 99, size: 128, elements: !2761)
!2761 = !{!2762, !2763, !2764}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2760, file: !2703, line: 100, baseType: !316, size: 64)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2760, file: !2703, line: 101, baseType: !416, size: 32, offset: 64)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2760, file: !2703, line: 102, baseType: !416, size: 32, offset: 96)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2702, file: !2703, line: 111, baseType: !2766, size: 128)
!2766 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2702, file: !2703, line: 108, size: 128, elements: !2767)
!2767 = !{!2768, !2769}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2766, file: !2703, line: 109, baseType: !302, size: 64)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2766, file: !2703, line: 110, baseType: !6, size: 32, offset: 64)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2702, file: !2703, line: 118, baseType: !2771, size: 128)
!2771 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2702, file: !2703, line: 114, size: 128, elements: !2772)
!2772 = !{!2773, !2774, !2775}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2771, file: !2703, line: 115, baseType: !163, size: 64)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2771, file: !2703, line: 116, baseType: !6, size: 32, offset: 64)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2771, file: !2703, line: 117, baseType: !14, size: 32, offset: 96)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1944, file: !1588, line: 1208, baseType: !2554, size: 448, offset: 17664)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1944, file: !1588, line: 1215, baseType: !419, size: 64, offset: 18112)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1944, file: !1588, line: 1217, baseType: !419, size: 64, offset: 18176)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1944, file: !1588, line: 1219, baseType: !419, size: 64, offset: 18240)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1944, file: !1588, line: 1223, baseType: !2781, size: 64, offset: 18304)
!2781 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2782, line: 99, baseType: !2783)
!2782 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2783 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2782, line: 99, size: 64, elements: !2784)
!2784 = !{!2785}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2783, file: !2782, line: 99, baseType: !2181, size: 64)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1944, file: !1588, line: 1225, baseType: !387, size: 32, offset: 18368)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1944, file: !1588, line: 1226, baseType: !6, size: 32, offset: 18400)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1944, file: !1588, line: 1227, baseType: !6, size: 32, offset: 18432)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1944, file: !1588, line: 1231, baseType: !2790, size: 64, offset: 18496)
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1588, line: 1231, flags: DIFlagFwdDecl)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1944, file: !1588, line: 1233, baseType: !169, size: 128, offset: 18560)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1944, file: !1588, line: 1240, baseType: !2794, size: 64, offset: 18688)
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2795 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1588, line: 62, flags: DIFlagFwdDecl)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1944, file: !1588, line: 1242, baseType: !2797, size: 64, offset: 18752)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1588, line: 1242, flags: DIFlagFwdDecl)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1944, file: !1588, line: 1244, baseType: !169, size: 128, offset: 18816)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1944, file: !1588, line: 1245, baseType: !2801, size: 64, offset: 18944)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1588, line: 51, flags: DIFlagFwdDecl)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1944, file: !1588, line: 1246, baseType: !630, size: 256, offset: 19008)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1944, file: !1588, line: 1247, baseType: !14, size: 32, offset: 19264)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1944, file: !1588, line: 1250, baseType: !2806, size: 64, offset: 19328)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1588, line: 57, flags: DIFlagFwdDecl)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1944, file: !1588, line: 1251, baseType: !630, size: 256, offset: 19392)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1944, file: !1588, line: 1252, baseType: !169, size: 128, offset: 19648)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1944, file: !1588, line: 1259, baseType: !1534, size: 64, offset: 19776)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1944, file: !1588, line: 1260, baseType: !846, size: 16, offset: 19840)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1944, file: !1588, line: 1261, baseType: !846, size: 16, offset: 19856)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1944, file: !1588, line: 1314, baseType: !2814, size: 64, offset: 19904)
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2816, line: 62, size: 256, align: 256, elements: !2817)
!2816 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2817 = !{!2818, !2819, !2820, !2821, !2822, !2823, !2824}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2815, file: !2816, line: 75, baseType: !416, size: 32)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2815, file: !2816, line: 90, baseType: !416, size: 32, offset: 32)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2815, file: !2816, line: 112, baseType: !420, size: 64, offset: 64)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2815, file: !2816, line: 132, baseType: !416, size: 32, offset: 128)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2815, file: !2816, line: 140, baseType: !416, size: 32, offset: 160)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2815, file: !2816, line: 149, baseType: !416, size: 32, offset: 192)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2815, file: !2816, line: 154, baseType: !2825, offset: 224)
!2825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, elements: !761)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1944, file: !1588, line: 1315, baseType: !415, size: 32, offset: 19968)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1944, file: !1588, line: 1316, baseType: !415, size: 32, offset: 20000)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1944, file: !1588, line: 1321, baseType: !316, size: 64, offset: 20032)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1944, file: !1588, line: 1325, baseType: !6, size: 32, offset: 20096)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1944, file: !1588, line: 1326, baseType: !6, size: 32, offset: 20128)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1944, file: !1588, line: 1327, baseType: !6, size: 32, offset: 20160)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1944, file: !1588, line: 1328, baseType: !6, size: 32, offset: 20192)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1944, file: !1588, line: 1329, baseType: !688, size: 128, align: 64, offset: 20224)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1944, file: !1588, line: 1332, baseType: !2835, size: 128, offset: 20352)
!2835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2836, line: 51, size: 128, elements: !2837)
!2836 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2837 = !{!2838, !2843, !2844}
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2835, file: !2836, line: 60, baseType: !2839, size: 64)
!2839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2840, line: 7, size: 64, elements: !2841)
!2840 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2841 = !{!2842}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2839, file: !2840, line: 12, baseType: !2178, size: 64)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2835, file: !2836, line: 63, baseType: !877, size: 8, offset: 64)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2835, file: !2836, line: 70, baseType: !877, size: 8, offset: 72)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1944, file: !1588, line: 1335, baseType: !1586, size: 64, offset: 20480)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1944, file: !1588, line: 1337, baseType: !2847, size: 128, offset: 20544)
!2847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2836, line: 39, size: 128, elements: !2848)
!2848 = !{!2849, !2850, !2851}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2847, file: !2836, line: 40, baseType: !1363, size: 64)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2847, file: !2836, line: 42, baseType: !416, size: 32, offset: 64)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2847, file: !2836, line: 43, baseType: !416, size: 32, offset: 96)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1944, file: !1588, line: 1340, baseType: !2853, size: 64, offset: 20672)
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2854 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1588, line: 69, flags: DIFlagFwdDecl)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1944, file: !1588, line: 1351, baseType: !6, size: 32, offset: 20736)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1944, file: !1588, line: 1352, baseType: !6, size: 32, offset: 20768)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1944, file: !1588, line: 1354, baseType: !316, size: 64, offset: 20800)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1944, file: !1588, line: 1364, baseType: !419, size: 64, offset: 20864)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1944, file: !1588, line: 1365, baseType: !419, size: 64, offset: 20928)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1944, file: !1588, line: 1412, baseType: !316, size: 64, offset: 20992)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1944, file: !1588, line: 1453, baseType: !2862, size: 64, offset: 21056)
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2863, size: 64)
!2863 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1588, line: 1453, flags: DIFlagFwdDecl)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1944, file: !1588, line: 1457, baseType: !2865, size: 64, offset: 21120)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !75, line: 61, size: 576, elements: !2867)
!2867 = !{!2868, !2869, !2888, !2891, !2892, !2925, !2935}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2866, file: !75, line: 62, baseType: !74, size: 32)
!2869 = !DIDerivedType(tag: DW_TAG_member, scope: !2866, file: !75, line: 64, baseType: !2870, size: 192, offset: 64)
!2870 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2866, file: !75, line: 64, size: 192, elements: !2871)
!2871 = !{!2872, !2883}
!2872 = !DIDerivedType(tag: DW_TAG_member, scope: !2870, file: !75, line: 65, baseType: !2873, size: 192)
!2873 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2870, file: !75, line: 65, size: 192, elements: !2874)
!2874 = !{!2875, !2882}
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2873, file: !75, line: 66, baseType: !2876, size: 128)
!2876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2877, line: 50, size: 128, elements: !2878)
!2877 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2878 = !{!2879, !2880, !2881}
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2876, file: !2877, line: 52, baseType: !316, size: 64)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2876, file: !2877, line: 54, baseType: !14, size: 32, offset: 64)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2876, file: !2877, line: 55, baseType: !14, size: 32, offset: 96)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2873, file: !75, line: 67, baseType: !316, size: 64, offset: 128)
!2883 = !DIDerivedType(tag: DW_TAG_member, scope: !2870, file: !75, line: 70, baseType: !2884, size: 192)
!2884 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2870, file: !75, line: 70, size: 192, elements: !2885)
!2885 = !{!2886, !2887}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2884, file: !75, line: 71, baseType: !688, size: 128, align: 64)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2884, file: !75, line: 72, baseType: !316, size: 64, offset: 128)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2866, file: !75, line: 76, baseType: !2889, size: 64, offset: 256)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !75, line: 76, flags: DIFlagFwdDecl)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2866, file: !75, line: 77, baseType: !316, size: 64, offset: 320)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2866, file: !75, line: 79, baseType: !2893, size: 64, offset: 384)
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2877, line: 25, size: 256, elements: !2895)
!2895 = !{!2896, !2902, !2906}
!2896 = !DIDerivedType(tag: DW_TAG_member, scope: !2894, file: !2877, line: 26, baseType: !2897, size: 128)
!2897 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2894, file: !2877, line: 26, size: 128, elements: !2898)
!2898 = !{!2899, !2901}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2897, file: !2877, line: 27, baseType: !2900, size: 128)
!2900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 128, elements: !2375)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2897, file: !2877, line: 28, baseType: !2900, size: 128)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2894, file: !2877, line: 31, baseType: !2903, size: 64, offset: 128)
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2904 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2905)
!2905 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2877, line: 23, flags: DIFlagFwdDecl)
!2906 = !DIDerivedType(tag: DW_TAG_member, scope: !2894, file: !2877, line: 33, baseType: !2907, size: 64, offset: 192)
!2907 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2894, file: !2877, line: 33, size: 64, elements: !2908)
!2908 = !{!2909, !2915, !2920}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2907, file: !2877, line: 38, baseType: !2910, size: 64)
!2910 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2907, file: !2877, line: 34, size: 64, elements: !2911)
!2911 = !{!2912, !2913, !2914}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2910, file: !2877, line: 35, baseType: !803, size: 32)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2910, file: !2877, line: 36, baseType: !224, size: 8, offset: 32)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2910, file: !2877, line: 37, baseType: !224, size: 8, offset: 40)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2907, file: !2877, line: 42, baseType: !2916, size: 16)
!2916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2907, file: !2877, line: 39, size: 16, elements: !2917)
!2917 = !{!2918, !2919}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2916, file: !2877, line: 40, baseType: !224, size: 8)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2916, file: !2877, line: 41, baseType: !224, size: 8, offset: 8)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2907, file: !2877, line: 46, baseType: !2921, size: 16)
!2921 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2907, file: !2877, line: 43, size: 16, elements: !2922)
!2922 = !{!2923, !2924}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2921, file: !2877, line: 44, baseType: !224, size: 8)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2921, file: !2877, line: 45, baseType: !224, size: 8, offset: 8)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2866, file: !75, line: 81, baseType: !2926, size: 64, offset: 448)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !75, line: 85, size: 384, elements: !2928)
!2928 = !{!2929, !2930, !2931, !2932, !2933, !2934}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2927, file: !75, line: 86, baseType: !2889, size: 64)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2927, file: !75, line: 87, baseType: !316, size: 64, offset: 64)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2927, file: !75, line: 88, baseType: !316, size: 64, offset: 128)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2927, file: !75, line: 89, baseType: !316, size: 64, offset: 192)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2927, file: !75, line: 90, baseType: !877, size: 8, offset: 256)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2927, file: !75, line: 92, baseType: !2926, size: 64, offset: 320)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2866, file: !75, line: 82, baseType: !14, size: 32, offset: 512)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1944, file: !1588, line: 1463, baseType: !2937, offset: 21184)
!2937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1588, line: 739, elements: !549)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1944, file: !1588, line: 1470, baseType: !688, size: 128, align: 64, offset: 21184)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1944, file: !1588, line: 1471, baseType: !733, size: 32, offset: 21312)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1944, file: !1588, line: 1472, baseType: !6, size: 32, offset: 21344)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1944, file: !1588, line: 1474, baseType: !1943, size: 64, offset: 21376)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1944, file: !1588, line: 1475, baseType: !2943, size: 320, offset: 21440)
!2943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2944, line: 11, size: 320, elements: !2945)
!2944 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2945 = !{!2946, !2947, !2948, !2953}
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2943, file: !2944, line: 16, baseType: !541, size: 128)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2943, file: !2944, line: 17, baseType: !316, size: 64, offset: 128)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2943, file: !2944, line: 18, baseType: !2949, size: 64, offset: 192)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = !DISubroutineType(types: !2951)
!2951 = !{null, !2952}
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2943, file: !2944, line: 19, baseType: !415, size: 32, offset: 256)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1944, file: !1588, line: 1478, baseType: !2955, size: 64, offset: 21760)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1588, line: 1478, flags: DIFlagFwdDecl)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1944, file: !1588, line: 1482, baseType: !733, size: 32, offset: 21824)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1944, file: !1588, line: 1489, baseType: !163, size: 64, offset: 21888)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1944, file: !1588, line: 1504, baseType: !163, size: 64, offset: 21952)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1944, file: !1588, line: 1505, baseType: !420, size: 64, offset: 22016)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1944, file: !1588, line: 1506, baseType: !419, size: 64, offset: 22080)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1944, file: !1588, line: 1507, baseType: !420, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1944, file: !1588, line: 1508, baseType: !420, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1944, file: !1588, line: 1509, baseType: !420, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1944, file: !1588, line: 1510, baseType: !688, size: 128, align: 64, offset: 22208)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1944, file: !1588, line: 1511, baseType: !6, size: 32, offset: 22336)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1944, file: !1588, line: 1515, baseType: !2968, size: 64, offset: 22400)
!2968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !683, line: 56, size: 64, elements: !2969)
!2969 = !{!2970}
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2968, file: !683, line: 57, baseType: !686, size: 64)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1944, file: !1588, line: 1518, baseType: !2968, size: 64, offset: 22464)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1944, file: !1588, line: 1528, baseType: !688, size: 128, align: 64, offset: 22528)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1944, file: !1588, line: 1552, baseType: !2974, size: 35328, offset: 23040)
!2974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2975, line: 430, size: 35328, elements: !2976)
!2975 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2976 = !{!2977, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3006, !3007, !3008, !3009, !3010, !3011, !3014, !3015, !3016, !3017}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2974, file: !2975, line: 432, baseType: !2978, size: 192)
!2978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2979, size: 192, elements: !267)
!2979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2980, line: 16, size: 64, elements: !2981)
!2980 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2981 = !{!2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2979, file: !2980, line: 17, baseType: !234, size: 16)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2979, file: !2980, line: 18, baseType: !234, size: 16, offset: 16)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2979, file: !2980, line: 19, baseType: !234, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2979, file: !2980, line: 19, baseType: !234, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2979, file: !2980, line: 19, baseType: !234, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2979, file: !2980, line: 19, baseType: !234, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2979, file: !2980, line: 19, baseType: !234, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2979, file: !2980, line: 20, baseType: !234, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2979, file: !2980, line: 20, baseType: !234, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2979, file: !2980, line: 20, baseType: !234, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2979, file: !2980, line: 20, baseType: !234, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2979, file: !2980, line: 20, baseType: !234, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2979, file: !2980, line: 20, baseType: !234, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2974, file: !2975, line: 436, baseType: !316, size: 64, offset: 192)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2974, file: !2975, line: 440, baseType: !236, size: 16, offset: 256)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2974, file: !2975, line: 441, baseType: !236, size: 16, offset: 272)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2974, file: !2975, line: 442, baseType: !236, size: 16, offset: 288)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2974, file: !2975, line: 443, baseType: !236, size: 16, offset: 304)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2974, file: !2975, line: 447, baseType: !316, size: 64, offset: 320)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2974, file: !2975, line: 448, baseType: !316, size: 64, offset: 384)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2974, file: !2975, line: 459, baseType: !3003, size: 256, offset: 448)
!3003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3004, size: 256, elements: !742)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2975, line: 428, flags: DIFlagFwdDecl)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2974, file: !2975, line: 461, baseType: !316, size: 64, offset: 704)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2974, file: !2975, line: 463, baseType: !316, size: 64, offset: 768)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2974, file: !2975, line: 465, baseType: !316, size: 64, offset: 832)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2974, file: !2975, line: 466, baseType: !316, size: 64, offset: 896)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2974, file: !2975, line: 467, baseType: !316, size: 64, offset: 960)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2974, file: !2975, line: 473, baseType: !3012, size: 64, offset: 1024)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2975, line: 10, flags: DIFlagFwdDecl)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2974, file: !2975, line: 480, baseType: !316, size: 64, offset: 1088)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2974, file: !2975, line: 482, baseType: !14, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2974, file: !2975, line: 491, baseType: !415, size: 32, offset: 1184)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2974, file: !2975, line: 501, baseType: !3018, size: 33792, offset: 1536)
!3018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3019, line: 448, size: 33792, elements: !3020)
!3019 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3020 = !{!3021, !3022, !3023, !3185, !3186, !3192, !3193}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3018, file: !3019, line: 461, baseType: !14, size: 32)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3018, file: !3019, line: 468, baseType: !316, size: 64, offset: 64)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3018, file: !3019, line: 476, baseType: !3024, size: 64, offset: 128)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3019, line: 356, size: 33280, align: 512, elements: !3026)
!3026 = !{!3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3025, file: !3019, line: 358, baseType: !14, size: 32)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3025, file: !3019, line: 361, baseType: !14, size: 32, offset: 32)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3025, file: !3019, line: 364, baseType: !419, size: 64, offset: 64)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3025, file: !3019, line: 367, baseType: !419, size: 64, offset: 128)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3025, file: !3019, line: 370, baseType: !419, size: 64, offset: 192)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3025, file: !3019, line: 373, baseType: !14, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3025, file: !3019, line: 376, baseType: !14, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3025, file: !3019, line: 391, baseType: !14, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3025, file: !3019, line: 394, baseType: !14, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3025, file: !3019, line: 397, baseType: !3037, size: 32768, offset: 512)
!3037 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3019, line: 348, size: 32768, elements: !3038)
!3038 = !{!3039, !3054, !3091, !3168, !3181}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3037, file: !3019, line: 349, baseType: !3040, size: 896)
!3040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3019, line: 12, size: 896, elements: !3041)
!3041 = !{!3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3053}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3040, file: !3019, line: 13, baseType: !415, size: 32)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3040, file: !3019, line: 14, baseType: !415, size: 32, offset: 32)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3040, file: !3019, line: 15, baseType: !415, size: 32, offset: 64)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3040, file: !3019, line: 16, baseType: !415, size: 32, offset: 96)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3040, file: !3019, line: 17, baseType: !415, size: 32, offset: 128)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3040, file: !3019, line: 18, baseType: !415, size: 32, offset: 160)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3040, file: !3019, line: 19, baseType: !415, size: 32, offset: 192)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3040, file: !3019, line: 22, baseType: !3050, size: 640, offset: 224)
!3050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !415, size: 640, elements: !3051)
!3051 = !{!3052}
!3052 = !DISubrange(count: 20)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3040, file: !3019, line: 25, baseType: !415, size: 32, offset: 864)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3037, file: !3019, line: 350, baseType: !3055, size: 4096, align: 128)
!3055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3019, line: 34, size: 4096, align: 128, elements: !3056)
!3056 = !{!3057, !3058, !3059, !3060, !3061, !3076, !3077, !3078, !3080, !3082, !3086}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3055, file: !3019, line: 35, baseType: !234, size: 16)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3055, file: !3019, line: 36, baseType: !234, size: 16, offset: 16)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3055, file: !3019, line: 37, baseType: !234, size: 16, offset: 32)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3055, file: !3019, line: 38, baseType: !234, size: 16, offset: 48)
!3061 = !DIDerivedType(tag: DW_TAG_member, scope: !3055, file: !3019, line: 39, baseType: !3062, size: 128, offset: 64)
!3062 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3055, file: !3019, line: 39, size: 128, elements: !3063)
!3063 = !{!3064, !3069}
!3064 = !DIDerivedType(tag: DW_TAG_member, scope: !3062, file: !3019, line: 40, baseType: !3065, size: 128)
!3065 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3062, file: !3019, line: 40, size: 128, elements: !3066)
!3066 = !{!3067, !3068}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3065, file: !3019, line: 41, baseType: !419, size: 64)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3065, file: !3019, line: 42, baseType: !419, size: 64, offset: 64)
!3069 = !DIDerivedType(tag: DW_TAG_member, scope: !3062, file: !3019, line: 44, baseType: !3070, size: 128)
!3070 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3062, file: !3019, line: 44, size: 128, elements: !3071)
!3071 = !{!3072, !3073, !3074, !3075}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3070, file: !3019, line: 45, baseType: !415, size: 32)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3070, file: !3019, line: 46, baseType: !415, size: 32, offset: 32)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3070, file: !3019, line: 47, baseType: !415, size: 32, offset: 64)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3070, file: !3019, line: 48, baseType: !415, size: 32, offset: 96)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3055, file: !3019, line: 51, baseType: !415, size: 32, offset: 192)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3055, file: !3019, line: 52, baseType: !415, size: 32, offset: 224)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3055, file: !3019, line: 55, baseType: !3079, size: 1024, offset: 256)
!3079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !415, size: 1024, elements: !428)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3055, file: !3019, line: 58, baseType: !3081, size: 2048, offset: 1280)
!3081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !415, size: 2048, elements: !271)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3055, file: !3019, line: 60, baseType: !3083, size: 384, offset: 3328)
!3083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !415, size: 384, elements: !3084)
!3084 = !{!3085}
!3085 = !DISubrange(count: 12)
!3086 = !DIDerivedType(tag: DW_TAG_member, scope: !3055, file: !3019, line: 62, baseType: !3087, size: 384, offset: 3712)
!3087 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3055, file: !3019, line: 62, size: 384, elements: !3088)
!3088 = !{!3089, !3090}
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3087, file: !3019, line: 63, baseType: !3083, size: 384)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3087, file: !3019, line: 64, baseType: !3083, size: 384)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3037, file: !3019, line: 351, baseType: !3092, size: 1088)
!3092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3019, line: 79, size: 1088, elements: !3093)
!3093 = !{!3094, !3095, !3096, !3097, !3098, !3099, !3100, !3101, !3102, !3103, !3104, !3105, !3106, !3107, !3108, !3167}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3092, file: !3019, line: 80, baseType: !415, size: 32)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3092, file: !3019, line: 81, baseType: !415, size: 32, offset: 32)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3092, file: !3019, line: 82, baseType: !415, size: 32, offset: 64)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3092, file: !3019, line: 83, baseType: !415, size: 32, offset: 96)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3092, file: !3019, line: 84, baseType: !415, size: 32, offset: 128)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3092, file: !3019, line: 85, baseType: !415, size: 32, offset: 160)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3092, file: !3019, line: 86, baseType: !415, size: 32, offset: 192)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3092, file: !3019, line: 88, baseType: !3050, size: 640, offset: 224)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3092, file: !3019, line: 89, baseType: !224, size: 8, offset: 864)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3092, file: !3019, line: 90, baseType: !224, size: 8, offset: 872)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3092, file: !3019, line: 91, baseType: !224, size: 8, offset: 880)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3092, file: !3019, line: 92, baseType: !224, size: 8, offset: 888)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3092, file: !3019, line: 93, baseType: !224, size: 8, offset: 896)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3092, file: !3019, line: 94, baseType: !224, size: 8, offset: 904)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3092, file: !3019, line: 95, baseType: !3109, size: 64, offset: 960)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3111, line: 11, size: 128, elements: !3112)
!3111 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3112 = !{!3113, !3114}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3110, file: !3111, line: 12, baseType: !302, size: 64)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3110, file: !3111, line: 13, baseType: !3115, size: 64, offset: 64)
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3117, line: 103, size: 1344, elements: !3118)
!3117 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3118 = !{!3119, !3120, !3121, !3122, !3123, !3124, !3125, !3126, !3127, !3128, !3129, !3130, !3131, !3132, !3133, !3134, !3135, !3136, !3147, !3148, !3149}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3116, file: !3117, line: 109, baseType: !316, size: 64)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3116, file: !3117, line: 110, baseType: !316, size: 64, offset: 64)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3116, file: !3117, line: 111, baseType: !316, size: 64, offset: 128)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3116, file: !3117, line: 112, baseType: !316, size: 64, offset: 192)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3116, file: !3117, line: 113, baseType: !316, size: 64, offset: 256)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3116, file: !3117, line: 114, baseType: !316, size: 64, offset: 320)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3116, file: !3117, line: 117, baseType: !316, size: 64, offset: 384)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3116, file: !3117, line: 118, baseType: !316, size: 64, offset: 448)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3116, file: !3117, line: 119, baseType: !316, size: 64, offset: 512)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3116, file: !3117, line: 120, baseType: !316, size: 64, offset: 576)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3116, file: !3117, line: 121, baseType: !316, size: 64, offset: 640)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3116, file: !3117, line: 122, baseType: !316, size: 64, offset: 704)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3116, file: !3117, line: 123, baseType: !316, size: 64, offset: 768)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3116, file: !3117, line: 124, baseType: !316, size: 64, offset: 832)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3116, file: !3117, line: 125, baseType: !316, size: 64, offset: 896)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3116, file: !3117, line: 139, baseType: !316, size: 64, offset: 960)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3116, file: !3117, line: 142, baseType: !316, size: 64, offset: 1024)
!3136 = !DIDerivedType(tag: DW_TAG_member, scope: !3116, file: !3117, line: 144, baseType: !3137, size: 64, offset: 1088)
!3137 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3116, file: !3117, line: 144, size: 64, elements: !3138)
!3138 = !{!3139, !3140, !3141}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3137, file: !3117, line: 146, baseType: !234, size: 16)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3137, file: !3117, line: 148, baseType: !419, size: 64)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3137, file: !3117, line: 150, baseType: !3142, size: 64)
!3142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3117, line: 59, size: 64, elements: !3143)
!3143 = !{!3144, !3145, !3146}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3142, file: !3117, line: 61, baseType: !419, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3142, file: !3117, line: 63, baseType: !419, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3142, file: !3117, line: 65, baseType: !419, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3116, file: !3117, line: 153, baseType: !316, size: 64, offset: 1152)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3116, file: !3117, line: 154, baseType: !316, size: 64, offset: 1216)
!3149 = !DIDerivedType(tag: DW_TAG_member, scope: !3116, file: !3117, line: 156, baseType: !3150, size: 64, offset: 1280)
!3150 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3116, file: !3117, line: 156, size: 64, elements: !3151)
!3151 = !{!3152, !3153, !3154}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3150, file: !3117, line: 158, baseType: !234, size: 16)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3150, file: !3117, line: 160, baseType: !419, size: 64)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3150, file: !3117, line: 162, baseType: !3155, size: 64)
!3155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3117, line: 69, size: 64, elements: !3156)
!3156 = !{!3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3155, file: !3117, line: 71, baseType: !419, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3155, file: !3117, line: 73, baseType: !419, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3155, file: !3117, line: 75, baseType: !419, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3155, file: !3117, line: 77, baseType: !419, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3155, file: !3117, line: 80, baseType: !419, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3155, file: !3117, line: 83, baseType: !419, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3155, file: !3117, line: 86, baseType: !419, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3155, file: !3117, line: 88, baseType: !419, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3155, file: !3117, line: 93, baseType: !419, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3155, file: !3117, line: 100, baseType: !419, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3092, file: !3019, line: 96, baseType: !415, size: 32, offset: 1024)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3037, file: !3019, line: 352, baseType: !3169, size: 4608, align: 512)
!3169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3019, line: 333, size: 4608, align: 512, elements: !3170)
!3170 = !{!3171, !3172, !3179}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3169, file: !3019, line: 334, baseType: !3055, size: 4096, align: 128)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3169, file: !3019, line: 335, baseType: !3173, size: 512, offset: 4096)
!3173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3019, line: 312, size: 512, elements: !3174)
!3174 = !{!3175, !3176, !3177}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3173, file: !3019, line: 313, baseType: !419, size: 64)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3173, file: !3019, line: 314, baseType: !419, size: 64, offset: 64)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3173, file: !3019, line: 315, baseType: !3178, size: 384, offset: 128)
!3178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 384, elements: !864)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3169, file: !3019, line: 336, baseType: !3180, offset: 4608)
!3180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, elements: !761)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3037, file: !3019, line: 353, baseType: !3182, size: 32768)
!3182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 32768, elements: !3183)
!3183 = !{!3184}
!3184 = !DISubrange(count: 4096)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3018, file: !3019, line: 484, baseType: !3024, size: 64, offset: 192)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3018, file: !3019, line: 491, baseType: !3187, size: 128, offset: 256)
!3187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3019, line: 404, size: 128, elements: !3188)
!3188 = !{!3189, !3190, !3191}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3187, file: !3019, line: 424, baseType: !419, size: 64)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3187, file: !3019, line: 432, baseType: !14, size: 32, offset: 64)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3187, file: !3019, line: 440, baseType: !14, size: 32, offset: 96)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3018, file: !3019, line: 498, baseType: !3187, size: 128, offset: 384)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3018, file: !3019, line: 508, baseType: !3025, size: 33280, align: 512, offset: 512)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1925, file: !1926, line: 16, baseType: !746, size: 192, offset: 512)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1925, file: !1926, line: 17, baseType: !216, size: 32, offset: 704)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !498, file: !21, line: 1240, baseType: !163, size: 64, offset: 6912)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !498, file: !21, line: 1243, baseType: !415, size: 32, offset: 6976)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !498, file: !21, line: 1245, baseType: !834, size: 64, offset: 7040)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !498, file: !21, line: 1246, baseType: !834, size: 64, offset: 7104)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !498, file: !21, line: 1248, baseType: !416, size: 32, offset: 7168)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !498, file: !21, line: 1249, baseType: !3202, size: 64, offset: 7232)
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3203 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !21, line: 634, flags: DIFlagFwdDecl)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !498, file: !21, line: 1252, baseType: !3205, size: 256, offset: 7296)
!3205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 256, elements: !428)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !498, file: !21, line: 1253, baseType: !3207, size: 128, offset: 7552)
!3207 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3208, line: 21, baseType: !3209)
!3208 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3209 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3208, line: 19, size: 128, elements: !3210)
!3210 = !{!3211}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3209, file: !3208, line: 20, baseType: !3212, size: 128)
!3212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 128, elements: !2375)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !498, file: !21, line: 1255, baseType: !14, size: 32, offset: 7680)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !498, file: !21, line: 1261, baseType: !630, size: 256, offset: 7744)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !498, file: !21, line: 1267, baseType: !7, size: 64, offset: 8000)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !498, file: !21, line: 1269, baseType: !444, size: 64, offset: 8064)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !498, file: !21, line: 1271, baseType: !3218, size: 448, offset: 8128)
!3218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1705, line: 63, size: 448, elements: !3219)
!3219 = !{!3220, !3225, !3226, !3227, !3228, !3229, !3230}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3218, file: !1705, line: 64, baseType: !3221, size: 64)
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = !DISubroutineType(types: !3223)
!3223 = !{!316, !3224, !1703}
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3218, file: !1705, line: 66, baseType: !3221, size: 64, offset: 64)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3218, file: !1705, line: 69, baseType: !302, size: 64, offset: 128)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3218, file: !1705, line: 70, baseType: !6, size: 32, offset: 192)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3218, file: !1705, line: 71, baseType: !14, size: 32, offset: 224)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3218, file: !1705, line: 74, baseType: !169, size: 128, offset: 256)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3218, file: !1705, line: 85, baseType: !3231, size: 64, offset: 384)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !498, file: !21, line: 1274, baseType: !634, size: 64, offset: 8576)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !498, file: !21, line: 1280, baseType: !634, size: 64, offset: 8640)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !498, file: !21, line: 1283, baseType: !6, size: 32, offset: 8704)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !498, file: !21, line: 1286, baseType: !1637, size: 32, offset: 8736)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !498, file: !21, line: 1289, baseType: !3237, size: 64, offset: 8768)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1256, line: 18, flags: DIFlagFwdDecl)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !498, file: !21, line: 1290, baseType: !537, size: 64, offset: 8832)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !498, file: !21, line: 1297, baseType: !960, size: 64, offset: 8896)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !498, file: !21, line: 1304, baseType: !3242, size: 64, offset: 8960)
!3242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3243, line: 49, size: 64, elements: !3244)
!3243 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3244 = !{!3245}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3242, file: !3243, line: 50, baseType: !3246, size: 64)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3243, line: 41, size: 512, align: 512, elements: !3248)
!3248 = !{!3249, !3250, !3255}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3247, file: !3243, line: 43, baseType: !196, size: 32)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3247, file: !3243, line: 45, baseType: !3251, size: 192, offset: 64)
!3251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3243, line: 29, size: 192, elements: !3252)
!3252 = !{!3253, !3254}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3251, file: !3243, line: 30, baseType: !169, size: 128)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3251, file: !3243, line: 32, baseType: !302, size: 64, offset: 128)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3247, file: !3243, line: 46, baseType: !302, size: 64, offset: 256)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !498, file: !21, line: 1305, baseType: !3242, size: 64, offset: 9024)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !498, file: !21, line: 1306, baseType: !688, size: 128, align: 64, offset: 9088)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !498, file: !21, line: 1307, baseType: !1255, size: 256, offset: 9216)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !498, file: !21, line: 1309, baseType: !630, size: 256, offset: 9472)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !498, file: !21, line: 1314, baseType: !6, size: 32, offset: 9728)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !498, file: !21, line: 1317, baseType: !196, size: 32, align: 512, offset: 10240)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !498, file: !21, line: 1318, baseType: !169, size: 128, offset: 10304)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !498, file: !21, line: 1320, baseType: !196, size: 32, offset: 10432)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !498, file: !21, line: 1321, baseType: !169, size: 128, offset: 10496)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !492, file: !493, line: 73, baseType: !6, size: 32, offset: 128)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !492, file: !493, line: 74, baseType: !3267, size: 64, offset: 192)
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !785, line: 42, flags: DIFlagFwdDecl)
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !446, file: !383, line: 141, baseType: !3271, size: 64, offset: 704)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = !DISubroutineType(types: !3273)
!3273 = !{!6, !1765, !877}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !446, file: !383, line: 142, baseType: !3275, size: 64, offset: 768)
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3276, size: 64)
!3276 = !DISubroutineType(types: !3277)
!3277 = !{!381, !381, !3278}
!3278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3279, size: 64)
!3279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !347)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !382, file: !383, line: 96, baseType: !497, size: 64, offset: 832)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !382, file: !383, line: 97, baseType: !316, size: 64, offset: 896)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !382, file: !383, line: 98, baseType: !163, size: 64, offset: 960)
!3283 = !DIDerivedType(tag: DW_TAG_member, scope: !382, file: !383, line: 100, baseType: !3284, size: 128, offset: 1024)
!3284 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !382, file: !383, line: 100, size: 128, elements: !3285)
!3285 = !{!3286, !3287}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3284, file: !383, line: 101, baseType: !169, size: 128)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3284, file: !383, line: 102, baseType: !1077, size: 64)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !382, file: !383, line: 104, baseType: !169, size: 128, offset: 1152)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !382, file: !383, line: 105, baseType: !169, size: 128, offset: 1280)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !382, file: !383, line: 113, baseType: !3291, size: 128, offset: 1408)
!3291 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !382, file: !383, line: 109, size: 128, elements: !3292)
!3292 = !{!3293, !3294, !3295}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3291, file: !383, line: 110, baseType: !541, size: 128)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3291, file: !383, line: 111, baseType: !397, size: 128)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3291, file: !383, line: 112, baseType: !688, size: 128, align: 64)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !375, file: !21, line: 1968, baseType: !3297, size: 64, offset: 64)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{!7, !381, !346, !3300}
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3302, line: 10, size: 128, elements: !3303)
!3302 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3303 = !{!3304, !3308}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3301, file: !3302, line: 11, baseType: !3305, size: 64)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = !DISubroutineType(types: !3307)
!3307 = !{null, !163}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3301, file: !3302, line: 12, baseType: !163, size: 64, offset: 64)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !375, file: !21, line: 1969, baseType: !3310, size: 64, offset: 128)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = !DISubroutineType(types: !3312)
!3312 = !{!6, !3267, !346, !6}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !375, file: !21, line: 1970, baseType: !3314, size: 64, offset: 192)
!3314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3315, size: 64)
!3315 = !DISubroutineType(types: !3316)
!3316 = !{!369, !346, !6, !877}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !375, file: !21, line: 1972, baseType: !3318, size: 64, offset: 256)
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3319, size: 64)
!3319 = !DISubroutineType(types: !3320)
!3320 = !{!6, !381, !266, !6}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !375, file: !21, line: 1974, baseType: !3322, size: 64, offset: 320)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DISubroutineType(types: !3324)
!3324 = !{!6, !3267, !346, !381, !308, !877}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !375, file: !21, line: 1976, baseType: !3326, size: 64, offset: 384)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = !DISubroutineType(types: !3328)
!3328 = !{!6, !381, !346, !381}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !375, file: !21, line: 1977, baseType: !3330, size: 64, offset: 448)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{!6, !346, !381}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !375, file: !21, line: 1978, baseType: !3334, size: 64, offset: 512)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = !DISubroutineType(types: !3336)
!3336 = !{!6, !3267, !346, !381, !7}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !375, file: !21, line: 1980, baseType: !3338, size: 64, offset: 576)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = !DISubroutineType(types: !3340)
!3340 = !{!6, !3267, !346, !381, !308}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !375, file: !21, line: 1982, baseType: !3330, size: 64, offset: 640)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !375, file: !21, line: 1983, baseType: !3343, size: 64, offset: 704)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{!6, !3267, !346, !381, !308, !502}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !375, file: !21, line: 1985, baseType: !3347, size: 64, offset: 768)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = !DISubroutineType(types: !3349)
!3349 = !{!6, !3267, !346, !381, !346, !381, !14}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !375, file: !21, line: 1987, baseType: !3351, size: 64, offset: 832)
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = !DISubroutineType(types: !3353)
!3353 = !{!6, !3267, !381, !3354}
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !21, line: 226, size: 640, elements: !3356)
!3356 = !{!3357, !3358, !3359, !3369, !3378, !3379, !3384, !3385, !3386}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3355, file: !21, line: 227, baseType: !14, size: 32)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3355, file: !21, line: 228, baseType: !308, size: 16, offset: 32)
!3359 = !DIDerivedType(tag: DW_TAG_member, scope: !3355, file: !21, line: 241, baseType: !3360, size: 32, offset: 64)
!3360 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3355, file: !21, line: 241, size: 32, elements: !3361)
!3361 = !{!3362, !3363}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3360, file: !21, line: 242, baseType: !352, size: 32)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3360, file: !21, line: 243, baseType: !3364, size: 32)
!3364 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3365, line: 16, baseType: !3366)
!3365 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3366 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3365, line: 14, size: 32, elements: !3367)
!3367 = !{!3368}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3366, file: !3365, line: 15, baseType: !357, size: 32)
!3369 = !DIDerivedType(tag: DW_TAG_member, scope: !3355, file: !21, line: 245, baseType: !3370, size: 32, offset: 96)
!3370 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3355, file: !21, line: 245, size: 32, elements: !3371)
!3371 = !{!3372, !3373}
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3370, file: !21, line: 246, baseType: !361, size: 32)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3370, file: !21, line: 247, baseType: !3374, size: 32)
!3374 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3365, line: 20, baseType: !3375)
!3375 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3365, line: 18, size: 32, elements: !3376)
!3376 = !{!3377}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3375, file: !3365, line: 19, baseType: !365, size: 32)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3355, file: !21, line: 249, baseType: !507, size: 64, offset: 128)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3355, file: !21, line: 250, baseType: !3380, size: 128, offset: 192)
!3380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !835, line: 13, size: 128, elements: !3381)
!3381 = !{!3382, !3383}
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3380, file: !835, line: 14, baseType: !834, size: 64)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3380, file: !835, line: 15, baseType: !302, size: 64, offset: 64)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3355, file: !21, line: 251, baseType: !3380, size: 128, offset: 320)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3355, file: !21, line: 252, baseType: !3380, size: 128, offset: 448)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3355, file: !21, line: 259, baseType: !1005, size: 64, offset: 576)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !375, file: !21, line: 1988, baseType: !3388, size: 64, offset: 896)
!3388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3389, size: 64)
!3389 = !DISubroutineType(types: !3390)
!3390 = !{!6, !3267, !1765, !3391, !415, !14}
!3391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3392, size: 64)
!3392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3393, line: 22, size: 1280, elements: !3394)
!3393 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3394 = !{!3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415}
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3392, file: !3393, line: 23, baseType: !415, size: 32)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3392, file: !3393, line: 24, baseType: !308, size: 16, offset: 32)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3392, file: !3393, line: 25, baseType: !14, size: 32, offset: 64)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3392, file: !3393, line: 26, baseType: !842, size: 32, offset: 96)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3392, file: !3393, line: 27, baseType: !419, size: 64, offset: 128)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3392, file: !3393, line: 28, baseType: !419, size: 64, offset: 192)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3392, file: !3393, line: 41, baseType: !419, size: 64, offset: 256)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3392, file: !3393, line: 42, baseType: !502, size: 32, offset: 320)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3392, file: !3393, line: 43, baseType: !502, size: 32, offset: 352)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3392, file: !3393, line: 44, baseType: !352, size: 32, offset: 384)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3392, file: !3393, line: 45, baseType: !361, size: 32, offset: 416)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3392, file: !3393, line: 46, baseType: !507, size: 64, offset: 448)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3392, file: !3393, line: 47, baseType: !3380, size: 128, offset: 512)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3392, file: !3393, line: 48, baseType: !3380, size: 128, offset: 640)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3392, file: !3393, line: 49, baseType: !3380, size: 128, offset: 768)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3392, file: !3393, line: 50, baseType: !3380, size: 128, offset: 896)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3392, file: !3393, line: 51, baseType: !419, size: 64, offset: 1024)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3392, file: !3393, line: 52, baseType: !419, size: 64, offset: 1088)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3392, file: !3393, line: 53, baseType: !415, size: 32, offset: 1152)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3392, file: !3393, line: 54, baseType: !415, size: 32, offset: 1184)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3392, file: !3393, line: 55, baseType: !419, size: 64, offset: 1216)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !375, file: !21, line: 1990, baseType: !3417, size: 64, offset: 960)
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3418 = !DISubroutineType(types: !3419)
!3419 = !{!298, !381, !266, !313}
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !375, file: !21, line: 1991, baseType: !3421, size: 64, offset: 1024)
!3421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3422, size: 64)
!3422 = !DISubroutineType(types: !3423)
!3423 = !{!6, !346, !3424, !419, !419}
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3425 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !21, line: 55, flags: DIFlagFwdDecl)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !375, file: !21, line: 1993, baseType: !3427, size: 64, offset: 1088)
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = !DISubroutineType(types: !3429)
!3429 = !{!6, !346, !6}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !375, file: !21, line: 1994, baseType: !3431, size: 64, offset: 1152)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = !DISubroutineType(types: !3433)
!3433 = !{!6, !346, !381, !1005, !14, !308}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !375, file: !21, line: 1997, baseType: !3435, size: 64, offset: 1216)
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3436, size: 64)
!3436 = !DISubroutineType(types: !3437)
!3437 = !{!6, !3267, !346, !1005, !308}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !375, file: !21, line: 1999, baseType: !3439, size: 64, offset: 1280)
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 64)
!3440 = !DISubroutineType(types: !3441)
!3441 = !{!369, !3267, !381, !6}
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !375, file: !21, line: 2001, baseType: !3443, size: 64, offset: 1344)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = !DISubroutineType(types: !3445)
!3445 = !{!6, !3267, !381, !369, !6}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !375, file: !21, line: 2003, baseType: !3447, size: 64, offset: 1408)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = !DISubroutineType(types: !3449)
!3449 = !{!6, !3267, !381, !3450}
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3451 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !21, line: 76, flags: DIFlagFwdDecl)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !375, file: !21, line: 2005, baseType: !3453, size: 64, offset: 1472)
!3453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3454, size: 64)
!3454 = !DISubroutineType(types: !3455)
!3455 = !{!6, !381, !3450}
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !375, file: !21, line: 2006, baseType: !3457, size: 64, offset: 1536)
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3458 = !DISubroutineType(types: !3459)
!3459 = !{!3460, !346}
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !21, line: 3192, size: 192, elements: !3462)
!3462 = !{!3463, !3470}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3461, file: !21, line: 3193, baseType: !3464, size: 128)
!3464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3465, line: 296, size: 128, elements: !3466)
!3465 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3466 = !{!3467, !3468, !3469}
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3464, file: !3465, line: 297, baseType: !196, size: 32)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3464, file: !3465, line: 299, baseType: !1333, size: 32, offset: 32)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3464, file: !3465, line: 300, baseType: !163, size: 64, offset: 64)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3461, file: !21, line: 3194, baseType: !415, size: 32, offset: 128)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !347, file: !21, line: 655, baseType: !497, size: 64, offset: 448)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !347, file: !21, line: 656, baseType: !342, size: 64, offset: 512)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !347, file: !21, line: 659, baseType: !163, size: 64, offset: 576)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !347, file: !21, line: 663, baseType: !316, size: 64, offset: 640)
!3475 = !DIDerivedType(tag: DW_TAG_member, scope: !347, file: !21, line: 671, baseType: !3476, size: 32, offset: 704)
!3476 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !347, file: !21, line: 671, size: 32, elements: !3477)
!3477 = !{!3478, !3480}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3476, file: !21, line: 672, baseType: !3479, size: 32)
!3479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3476, file: !21, line: 673, baseType: !14, size: 32)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !347, file: !21, line: 675, baseType: !502, size: 32, offset: 736)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !347, file: !21, line: 676, baseType: !507, size: 64, offset: 768)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !347, file: !21, line: 677, baseType: !3380, size: 128, offset: 832)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !347, file: !21, line: 678, baseType: !3380, size: 128, offset: 960)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !347, file: !21, line: 679, baseType: !3380, size: 128, offset: 1088)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !347, file: !21, line: 680, baseType: !196, size: 32, offset: 1216)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !347, file: !21, line: 681, baseType: !236, size: 16, offset: 1248)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !347, file: !21, line: 682, baseType: !224, size: 8, offset: 1264)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !347, file: !21, line: 683, baseType: !224, size: 8, offset: 1272)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !347, file: !21, line: 684, baseType: !1838, size: 64, offset: 1280)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !347, file: !21, line: 691, baseType: !316, size: 64, offset: 1344)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !347, file: !21, line: 692, baseType: !818, size: 320, offset: 1408)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !347, file: !21, line: 694, baseType: !316, size: 64, offset: 1728)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !347, file: !21, line: 695, baseType: !316, size: 64, offset: 1792)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !347, file: !21, line: 697, baseType: !541, size: 128, offset: 1856)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !347, file: !21, line: 698, baseType: !169, size: 128, offset: 1984)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !347, file: !21, line: 707, baseType: !169, size: 128, offset: 2112)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !347, file: !21, line: 708, baseType: !169, size: 128, offset: 2240)
!3499 = !DIDerivedType(tag: DW_TAG_member, scope: !347, file: !21, line: 709, baseType: !3500, size: 128, offset: 2368)
!3500 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !347, file: !21, line: 709, size: 128, elements: !3501)
!3501 = !{!3502, !3503}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3500, file: !21, line: 710, baseType: !537, size: 64)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3500, file: !21, line: 711, baseType: !688, size: 128, align: 64)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !347, file: !21, line: 713, baseType: !636, size: 64, offset: 2496)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !347, file: !21, line: 714, baseType: !636, size: 64, offset: 2560)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !347, file: !21, line: 715, baseType: !216, size: 32, offset: 2624)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !347, file: !21, line: 716, baseType: !216, size: 32, offset: 2656)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !347, file: !21, line: 717, baseType: !216, size: 32, offset: 2688)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !347, file: !21, line: 719, baseType: !216, size: 32, offset: 2720)
!3510 = !DIDerivedType(tag: DW_TAG_member, scope: !347, file: !21, line: 721, baseType: !3511, size: 64, offset: 2752)
!3511 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !347, file: !21, line: 721, size: 64, elements: !3512)
!3512 = !{!3513, !3514}
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3511, file: !21, line: 722, baseType: !996, size: 64)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3511, file: !21, line: 723, baseType: !568, size: 64)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !347, file: !21, line: 725, baseType: !3516, size: 64, offset: 2816)
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3517 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !21, line: 725, flags: DIFlagFwdDecl)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !347, file: !21, line: 726, baseType: !343, size: 1536, align: 64, offset: 2880)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !347, file: !21, line: 727, baseType: !169, size: 128, offset: 4416)
!3520 = !DIDerivedType(tag: DW_TAG_member, scope: !347, file: !21, line: 728, baseType: !3521, size: 64, offset: 4544)
!3521 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !347, file: !21, line: 728, size: 64, elements: !3522)
!3522 = !{!3523, !3524, !3527, !3528}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3521, file: !21, line: 729, baseType: !1586, size: 64)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3521, file: !21, line: 730, baseType: !3525, size: 64)
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3526 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !21, line: 730, flags: DIFlagFwdDecl)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3521, file: !21, line: 731, baseType: !266, size: 64)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3521, file: !21, line: 732, baseType: !14, size: 32)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !347, file: !21, line: 735, baseType: !416, size: 32, offset: 4608)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !347, file: !21, line: 738, baseType: !416, size: 32, offset: 4640)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !347, file: !21, line: 739, baseType: !3202, size: 64, offset: 4672)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !347, file: !21, line: 750, baseType: !163, size: 64, offset: 4736)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !343, file: !21, line: 474, baseType: !3464, size: 128, offset: 64)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !343, file: !21, line: 475, baseType: !818, size: 320, offset: 192)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !343, file: !21, line: 476, baseType: !1333, size: 32, offset: 512)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !343, file: !21, line: 477, baseType: !216, size: 32, offset: 544)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !343, file: !21, line: 482, baseType: !2113, size: 128, offset: 576)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !343, file: !21, line: 483, baseType: !316, size: 64, offset: 704)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !343, file: !21, line: 484, baseType: !316, size: 64, offset: 768)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !343, file: !21, line: 485, baseType: !3541, size: 64, offset: 832)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3543)
!3543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !21, line: 404, size: 1280, elements: !3544)
!3544 = !{!3545, !3549, !3619, !3623, !3627, !3633, !3638, !3642, !3647, !3651, !3655, !3659, !3660, !3664, !3668, !3672, !3677, !3681, !3688, !3689}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3543, file: !21, line: 405, baseType: !3546, size: 64)
!3546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3547, size: 64)
!3547 = !DISubroutineType(types: !3548)
!3548 = !{!6, !1363, !580}
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3543, file: !21, line: 406, baseType: !3550, size: 64, offset: 64)
!3550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3551, size: 64)
!3551 = !DISubroutineType(types: !3552)
!3552 = !{!6, !1005, !3553}
!3553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3554, size: 64)
!3554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !34, line: 293, size: 1536, elements: !3555)
!3555 = !{!3556, !3586, !3600}
!3556 = !DIDerivedType(tag: DW_TAG_member, scope: !3554, file: !34, line: 295, baseType: !3557, size: 512)
!3557 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3554, file: !34, line: 295, size: 512, elements: !3558)
!3558 = !{!3559, !3585}
!3559 = !DIDerivedType(tag: DW_TAG_member, scope: !3557, file: !34, line: 296, baseType: !3560, size: 448)
!3560 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3557, file: !34, line: 296, size: 448, elements: !3561)
!3561 = !{!3562, !3563, !3572, !3573, !3574, !3583, !3584}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3560, file: !34, line: 298, baseType: !316, size: 64)
!3563 = !DIDerivedType(tag: DW_TAG_member, scope: !3560, file: !34, line: 299, baseType: !3564, size: 128, offset: 64)
!3564 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3560, file: !34, line: 299, size: 128, elements: !3565)
!3565 = !{!3566, !3567}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3564, file: !34, line: 300, baseType: !169, size: 128)
!3567 = !DIDerivedType(tag: DW_TAG_member, scope: !3564, file: !34, line: 302, baseType: !3568, size: 128)
!3568 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3564, file: !34, line: 302, size: 128, elements: !3569)
!3569 = !{!3570, !3571}
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3568, file: !34, line: 303, baseType: !163, size: 64)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3568, file: !34, line: 305, baseType: !14, size: 32, offset: 64)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3560, file: !34, line: 310, baseType: !342, size: 64, offset: 192)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3560, file: !34, line: 311, baseType: !316, size: 64, offset: 256)
!3574 = !DIDerivedType(tag: DW_TAG_member, scope: !3560, file: !34, line: 312, baseType: !3575, size: 64, offset: 320)
!3575 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3560, file: !34, line: 312, size: 64, elements: !3576)
!3576 = !{!3577, !3578}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3575, file: !34, line: 313, baseType: !163, size: 64)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3575, file: !34, line: 314, baseType: !3579, size: 64)
!3579 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !34, line: 257, baseType: !3580)
!3580 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 255, size: 64, elements: !3581)
!3581 = !{!3582}
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3580, file: !34, line: 256, baseType: !316, size: 64)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3560, file: !34, line: 316, baseType: !216, size: 32, offset: 384)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3560, file: !34, line: 317, baseType: !216, size: 32, offset: 416)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3557, file: !34, line: 323, baseType: !1364, size: 512, align: 128)
!3586 = !DIDerivedType(tag: DW_TAG_member, scope: !3554, file: !34, line: 325, baseType: !3587, size: 512, offset: 512)
!3587 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3554, file: !34, line: 325, size: 512, elements: !3588)
!3588 = !{!3589, !3599}
!3589 = !DIDerivedType(tag: DW_TAG_member, scope: !3587, file: !34, line: 326, baseType: !3590, size: 320)
!3590 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3587, file: !34, line: 326, size: 320, elements: !3591)
!3591 = !{!3592, !3593, !3594, !3595, !3596, !3597, !3598}
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3590, file: !34, line: 327, baseType: !316, size: 64)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3590, file: !34, line: 328, baseType: !316, size: 64, offset: 64)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3590, file: !34, line: 329, baseType: !316, size: 64, offset: 128)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3590, file: !34, line: 331, baseType: !216, size: 32, offset: 192)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3590, file: !34, line: 332, baseType: !216, size: 32, offset: 224)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3590, file: !34, line: 333, baseType: !216, size: 32, offset: 256)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3590, file: !34, line: 335, baseType: !14, size: 32, offset: 288)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3587, file: !34, line: 339, baseType: !1364, size: 512, align: 128)
!3600 = !DIDerivedType(tag: DW_TAG_member, scope: !3554, file: !34, line: 341, baseType: !3601, size: 512, offset: 1024)
!3601 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3554, file: !34, line: 341, size: 512, elements: !3602)
!3602 = !{!3603, !3612, !3618}
!3603 = !DIDerivedType(tag: DW_TAG_member, scope: !3601, file: !34, line: 342, baseType: !3604, size: 384)
!3604 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3601, file: !34, line: 342, size: 384, elements: !3605)
!3605 = !{!3606, !3607, !3608, !3609, !3610, !3611}
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3604, file: !34, line: 343, baseType: !316, size: 64)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3604, file: !34, line: 344, baseType: !316, size: 64, offset: 64)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3604, file: !34, line: 346, baseType: !163, size: 64, offset: 128)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3604, file: !34, line: 347, baseType: !163, size: 64, offset: 192)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3604, file: !34, line: 348, baseType: !163, size: 64, offset: 256)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3604, file: !34, line: 349, baseType: !163, size: 64, offset: 320)
!3612 = !DIDerivedType(tag: DW_TAG_member, scope: !3601, file: !34, line: 352, baseType: !3613, size: 256)
!3613 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3601, file: !34, line: 352, size: 256, elements: !3614)
!3614 = !{!3615, !3616, !3617}
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3613, file: !34, line: 353, baseType: !316, size: 64)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3613, file: !34, line: 354, baseType: !316, size: 64, offset: 64)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3613, file: !34, line: 356, baseType: !169, size: 128, offset: 128)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3601, file: !34, line: 359, baseType: !1364, size: 512, align: 128)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3543, file: !21, line: 409, baseType: !3620, size: 64, offset: 128)
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3621, size: 64)
!3621 = !DISubroutineType(types: !3622)
!3622 = !{!6, !342, !580}
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3543, file: !21, line: 412, baseType: !3624, size: 64, offset: 192)
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = !DISubroutineType(types: !3626)
!3626 = !{!877, !342, !3553}
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3543, file: !21, line: 414, baseType: !3628, size: 64, offset: 256)
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3629 = !DISubroutineType(types: !3630)
!3630 = !{null, !3631}
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3632, size: 64)
!3632 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !21, line: 310, flags: DIFlagFwdDecl)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3543, file: !21, line: 416, baseType: !3634, size: 64, offset: 320)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = !DISubroutineType(types: !3636)
!3636 = !{!6, !1005, !342, !507, !14, !3637, !1602}
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3543, file: !21, line: 419, baseType: !3639, size: 64, offset: 384)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{!6, !1005, !342, !507, !14, !14, !1363, !163}
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3543, file: !21, line: 424, baseType: !3643, size: 64, offset: 448)
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3644, size: 64)
!3644 = !DISubroutineType(types: !3645)
!3645 = !{!3646, !342, !3646}
!3646 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !170, line: 131, baseType: !419)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3543, file: !21, line: 425, baseType: !3648, size: 64, offset: 512)
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3649 = !DISubroutineType(types: !3650)
!3650 = !{null, !3553, !313, !313}
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3543, file: !21, line: 426, baseType: !3652, size: 64, offset: 576)
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3653, size: 64)
!3653 = !DISubroutineType(types: !3654)
!3654 = !{!877, !3553, !1333}
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3543, file: !21, line: 427, baseType: !3656, size: 64, offset: 640)
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3657, size: 64)
!3657 = !DISubroutineType(types: !3658)
!3658 = !{null, !3553}
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3543, file: !21, line: 428, baseType: !1015, size: 64, offset: 704)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3543, file: !21, line: 433, baseType: !3661, size: 64, offset: 768)
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = !DISubroutineType(types: !3663)
!3663 = !{!6, !342, !3553, !3553, !81}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3543, file: !21, line: 435, baseType: !3665, size: 64, offset: 832)
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3666 = !DISubroutineType(types: !3667)
!3667 = !{!6, !3553}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3543, file: !21, line: 436, baseType: !3669, size: 64, offset: 896)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{!877, !3553, !313, !313}
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3543, file: !21, line: 438, baseType: !3673, size: 64, offset: 960)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = !DISubroutineType(types: !3675)
!3675 = !{null, !3553, !3676, !3676}
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3543, file: !21, line: 439, baseType: !3678, size: 64, offset: 1024)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = !DISubroutineType(types: !3680)
!3680 = !{!6, !342, !1363}
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3543, file: !21, line: 442, baseType: !3682, size: 64, offset: 1088)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!6, !3685, !1005, !3687}
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3686 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !21, line: 66, flags: DIFlagFwdDecl)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3543, file: !21, line: 444, baseType: !1594, size: 64, offset: 1152)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3543, file: !21, line: 445, baseType: !3690, size: 64, offset: 1216)
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64)
!3691 = !DISubroutineType(types: !3692)
!3692 = !{!6, !1018, !1040}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !343, file: !21, line: 486, baseType: !316, size: 64, offset: 896)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !343, file: !21, line: 487, baseType: !818, size: 320, offset: 960)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !343, file: !21, line: 488, baseType: !1637, size: 32, offset: 1280)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !343, file: !21, line: 489, baseType: !196, size: 32, offset: 1312)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !343, file: !21, line: 490, baseType: !169, size: 128, offset: 1344)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !343, file: !21, line: 491, baseType: !163, size: 64, offset: 1472)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !333, file: !292, line: 180, baseType: !3700, size: 64, offset: 320)
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = !DISubroutineType(types: !3702)
!3702 = !{!298, !1005, !189, !332, !266, !507, !313}
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !333, file: !292, line: 182, baseType: !3700, size: 64, offset: 384)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !333, file: !292, line: 184, baseType: !3705, size: 64, offset: 448)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DISubroutineType(types: !3707)
!3707 = !{!6, !1005, !189, !332, !1088}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !321, file: !292, line: 90, baseType: !3709, size: 64, offset: 192)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !321, file: !292, line: 91, baseType: !3711, size: 64, offset: 256)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !282, file: !184, line: 120, baseType: !3713, size: 64, offset: 192)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = !DISubroutineType(types: !3715)
!3715 = !{!3716, !249}
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3717, size: 64)
!3717 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3718)
!3718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !89, line: 39, size: 384, elements: !3719)
!3719 = !{!3720, !3721, !3725, !3729, !3735, !3739}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3718, file: !89, line: 40, baseType: !88, size: 32)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3718, file: !89, line: 41, baseType: !3722, size: 64, offset: 64)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = !DISubroutineType(types: !3724)
!3724 = !{!877}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3718, file: !89, line: 42, baseType: !3726, size: 64, offset: 128)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = !DISubroutineType(types: !3728)
!3728 = !{!163}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3718, file: !89, line: 43, baseType: !3730, size: 64, offset: 192)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DISubroutineType(types: !3732)
!3732 = !{!1216, !3733}
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !89, line: 19, flags: DIFlagFwdDecl)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3718, file: !89, line: 44, baseType: !3736, size: 64, offset: 256)
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3737, size: 64)
!3737 = !DISubroutineType(types: !3738)
!3738 = !{!1216}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3718, file: !89, line: 45, baseType: !3305, size: 64, offset: 320)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !282, file: !184, line: 121, baseType: !3741, size: 64, offset: 256)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DISubroutineType(types: !3743)
!3743 = !{!1216, !249}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !282, file: !184, line: 122, baseType: !3745, size: 64, offset: 320)
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3746 = !DISubroutineType(types: !3747)
!3747 = !{null, !249, !3748, !3749}
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !183, file: !184, line: 70, baseType: !3751, size: 64, offset: 384)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !3753, line: 190, size: 1152, elements: !3754)
!3753 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!3754 = !{!3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3834, !3835, !3836, !3837, !3838, !3841}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3752, file: !3753, line: 191, baseType: !216, size: 32)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3752, file: !3753, line: 192, baseType: !216, size: 32, offset: 32)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3752, file: !3753, line: 202, baseType: !3751, size: 64, offset: 64)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3752, file: !3753, line: 203, baseType: !7, size: 64, offset: 128)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3752, file: !3753, line: 205, baseType: !810, size: 192, align: 64, offset: 192)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3752, file: !3753, line: 207, baseType: !1216, size: 64, offset: 384)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3752, file: !3753, line: 208, baseType: !14, size: 32, offset: 448)
!3762 = !DIDerivedType(tag: DW_TAG_member, scope: !3752, file: !3753, line: 209, baseType: !3763, size: 256, offset: 512)
!3763 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3752, file: !3753, line: 209, size: 256, elements: !3764)
!3764 = !{!3765, !3774, !3778}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3763, file: !3753, line: 210, baseType: !3766, size: 256)
!3766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !3753, line: 153, size: 256, elements: !3767)
!3767 = !{!3768, !3769, !3770, !3773}
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3766, file: !3753, line: 154, baseType: !316, size: 64)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3766, file: !3753, line: 156, baseType: !2116, size: 64, offset: 64)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3766, file: !3753, line: 162, baseType: !3771, size: 64, offset: 128)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !3753, line: 162, flags: DIFlagFwdDecl)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3766, file: !3753, line: 167, baseType: !316, size: 64, offset: 192)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3763, file: !3753, line: 211, baseType: !3775, size: 64)
!3775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !3753, line: 170, size: 64, elements: !3776)
!3776 = !{!3777}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3775, file: !3753, line: 171, baseType: !3751, size: 64)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3763, file: !3753, line: 212, baseType: !3779, size: 256)
!3779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !3753, line: 174, size: 256, elements: !3780)
!3780 = !{!3781, !3829, !3832, !3833}
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3779, file: !3753, line: 175, baseType: !3782, size: 64)
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64)
!3783 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3784)
!3784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !3753, line: 271, size: 768, elements: !3785)
!3785 = !{!3786, !3806, !3810, !3811, !3812, !3813, !3814, !3818, !3819, !3820, !3821, !3825}
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3784, file: !3753, line: 276, baseType: !3787, size: 64)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{!6, !3790}
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !3753, line: 251, size: 1216, elements: !3792)
!3792 = !{!3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3791, file: !3753, line: 253, baseType: !3751, size: 64)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3791, file: !3753, line: 254, baseType: !1005, size: 64, offset: 64)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3791, file: !3753, line: 255, baseType: !618, size: 64, offset: 128)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3791, file: !3753, line: 256, baseType: !163, size: 64, offset: 192)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3791, file: !3753, line: 259, baseType: !630, size: 256, offset: 256)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3791, file: !3753, line: 260, baseType: !630, size: 256, offset: 512)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3791, file: !3753, line: 261, baseType: !6, size: 32, offset: 768)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3791, file: !3753, line: 262, baseType: !169, size: 128, offset: 832)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3791, file: !3753, line: 263, baseType: !266, size: 64, offset: 960)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3791, file: !3753, line: 265, baseType: !313, size: 64, offset: 1024)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3791, file: !3753, line: 266, baseType: !877, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3791, file: !3753, line: 267, baseType: !877, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3791, file: !3753, line: 268, baseType: !1298, size: 64, offset: 1152)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3784, file: !3753, line: 277, baseType: !3807, size: 64, offset: 64)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DISubroutineType(types: !3809)
!3809 = !{null, !3790}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3784, file: !3753, line: 290, baseType: !669, size: 64, offset: 128)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3784, file: !3753, line: 292, baseType: !656, size: 64, offset: 192)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3784, file: !3753, line: 293, baseType: !665, size: 64, offset: 256)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3784, file: !3753, line: 294, baseType: !661, size: 64, offset: 320)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3784, file: !3753, line: 296, baseType: !3815, size: 64, offset: 384)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = !DISubroutineType(types: !3817)
!3817 = !{!298, !3790, !266, !313, !507}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3784, file: !3753, line: 306, baseType: !313, size: 64, offset: 448)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3784, file: !3753, line: 313, baseType: !877, size: 8, offset: 512)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3784, file: !3753, line: 314, baseType: !3815, size: 64, offset: 576)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3784, file: !3753, line: 317, baseType: !3822, size: 64, offset: 640)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DISubroutineType(types: !3824)
!3824 = !{!1066, !3790, !1068}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3784, file: !3753, line: 320, baseType: !3826, size: 64, offset: 704)
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{!6, !3790, !1088}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3779, file: !3753, line: 176, baseType: !3830, size: 64, offset: 64)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !3753, line: 35, flags: DIFlagFwdDecl)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3779, file: !3753, line: 177, baseType: !507, size: 64, offset: 128)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3779, file: !3753, line: 178, baseType: !3751, size: 64, offset: 192)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3752, file: !3753, line: 215, baseType: !163, size: 64, offset: 768)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3752, file: !3753, line: 221, baseType: !419, size: 64, offset: 832)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3752, file: !3753, line: 223, baseType: !236, size: 16, offset: 896)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3752, file: !3753, line: 224, baseType: !308, size: 16, offset: 912)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3752, file: !3753, line: 225, baseType: !3839, size: 64, offset: 960)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !3753, line: 36, flags: DIFlagFwdDecl)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3752, file: !3753, line: 227, baseType: !688, size: 128, align: 64, offset: 1024)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !183, file: !184, line: 71, baseType: !3843, size: 32, offset: 448)
!3843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3844, line: 19, size: 32, elements: !3845)
!3844 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3845 = !{!3846}
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3843, file: !3844, line: 20, baseType: !733, size: 32)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !183, file: !184, line: 73, baseType: !14, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !183, file: !184, line: 74, baseType: !14, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !183, file: !184, line: 75, baseType: !14, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !183, file: !184, line: 76, baseType: !14, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !183, file: !184, line: 77, baseType: !14, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !180, file: !13, line: 47, baseType: !164, size: 64, offset: 512)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !180, file: !13, line: 48, baseType: !189, size: 64, offset: 576)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !180, file: !13, line: 49, baseType: !3855, size: 64, offset: 640)
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !13, line: 49, flags: DIFlagFwdDecl)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !180, file: !13, line: 50, baseType: !2332, size: 64, offset: 704)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !165, file: !13, line: 418, baseType: !3859, size: 64, offset: 1408)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !13, line: 53, size: 448, elements: !3861)
!3861 = !{!3862, !3863, !3868, !3872, !3876, !3880}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3860, file: !13, line: 54, baseType: !304, size: 128)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3860, file: !13, line: 55, baseType: !3864, size: 64, offset: 128)
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = !DISubroutineType(types: !3866)
!3866 = !{!298, !3859, !3867, !266}
!3867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3860, file: !13, line: 57, baseType: !3869, size: 64, offset: 192)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = !DISubroutineType(types: !3871)
!3871 = !{!298, !3859, !3867, !7, !313}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !3860, file: !13, line: 59, baseType: !3873, size: 64, offset: 256)
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3874 = !DISubroutineType(types: !3875)
!3875 = !{null, !164, !7}
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !3860, file: !13, line: 60, baseType: !3877, size: 64, offset: 320)
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = !DISubroutineType(types: !3879)
!3879 = !{!6, !164}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3860, file: !13, line: 61, baseType: !3881, size: 64, offset: 384)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = !DISubroutineType(types: !3883)
!3883 = !{null, !164}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !165, file: !13, line: 419, baseType: !7, size: 64, offset: 1472)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !165, file: !13, line: 420, baseType: !7, size: 64, offset: 1536)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !165, file: !13, line: 421, baseType: !189, size: 64, offset: 1600)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !165, file: !13, line: 424, baseType: !3888, size: 64, offset: 1664)
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3889, size: 64)
!3889 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3890)
!3890 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !13, line: 424, flags: DIFlagFwdDecl)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !165, file: !13, line: 425, baseType: !3892, size: 64, offset: 1728)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !803)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !165, file: !13, line: 426, baseType: !14, size: 32, offset: 1792)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !165, file: !13, line: 435, baseType: !630, size: 256, offset: 1856)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !165, file: !13, line: 437, baseType: !3897, size: 64, offset: 2112)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3899, line: 69, size: 320, elements: !3900)
!3899 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!3900 = !{!3901, !3902, !3903, !3920, !3922, !3926, !3927}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3898, file: !3899, line: 70, baseType: !7, size: 64)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3898, file: !3899, line: 71, baseType: !164, size: 64, offset: 64)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3898, file: !3899, line: 72, baseType: !3904, size: 64, offset: 128)
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3905 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3906)
!3906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3899, line: 47, size: 256, elements: !3907)
!3907 = !{!3908, !3909, !3915, !3919}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3906, file: !3899, line: 49, baseType: !14, size: 32)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3906, file: !3899, line: 51, baseType: !3910, size: 64, offset: 64)
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = !DISubroutineType(types: !3912)
!3912 = !{!6, !7, !3913}
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3914, size: 64)
!3914 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3898)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3906, file: !3899, line: 53, baseType: !3916, size: 64, offset: 128)
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3917 = !DISubroutineType(types: !3918)
!3918 = !{!6, !266, !3913}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3906, file: !3899, line: 55, baseType: !3305, size: 64, offset: 192)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3898, file: !3899, line: 73, baseType: !3921, size: 16, offset: 192)
!3921 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !234)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3898, file: !3899, line: 74, baseType: !3923, size: 8, offset: 208)
!3923 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !225, line: 16, baseType: !3924)
!3924 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !227, line: 20, baseType: !3925)
!3925 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3898, file: !3899, line: 75, baseType: !224, size: 8, offset: 216)
!3927 = !DIDerivedType(tag: DW_TAG_member, scope: !3898, file: !3899, line: 76, baseType: !3928, size: 64, offset: 256)
!3928 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3898, file: !3899, line: 76, size: 64, elements: !3929)
!3929 = !{!3930, !3931, !3938}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3928, file: !3899, line: 77, baseType: !163, size: 64)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3928, file: !3899, line: 78, baseType: !3932, size: 64)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3934)
!3934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3899, line: 86, size: 128, elements: !3935)
!3935 = !{!3936, !3937}
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3934, file: !3899, line: 87, baseType: !14, size: 32)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3934, file: !3899, line: 88, baseType: !266, size: 64, offset: 64)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3928, file: !3899, line: 79, baseType: !3939, size: 64)
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3940, size: 64)
!3940 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3941)
!3941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3899, line: 92, size: 256, elements: !3942)
!3942 = !{!3943, !3944, !3945, !3946, !3947}
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3941, file: !3899, line: 94, baseType: !14, size: 32)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !3941, file: !3899, line: 95, baseType: !14, size: 32, offset: 32)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3941, file: !3899, line: 96, baseType: !1937, size: 64, offset: 64)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3941, file: !3899, line: 97, baseType: !3904, size: 64, offset: 128)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !3941, file: !3899, line: 98, baseType: !163, size: 64, offset: 192)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !165, file: !13, line: 438, baseType: !14, size: 32, offset: 2176)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !165, file: !13, line: 441, baseType: !14, size: 32, offset: 2208)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !165, file: !13, line: 442, baseType: !3888, size: 64, offset: 2240)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !165, file: !13, line: 443, baseType: !3892, size: 64, offset: 2304)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !165, file: !13, line: 444, baseType: !877, size: 8, offset: 2368)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !165, file: !13, line: 451, baseType: !877, size: 8, offset: 2376)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !165, file: !13, line: 454, baseType: !14, size: 32, offset: 2400)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !165, file: !13, line: 455, baseType: !3956, size: 64, offset: 2432)
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !3958, line: 23, size: 96, elements: !3959)
!3958 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!3959 = !{!3960, !3961, !3962}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3957, file: !3958, line: 24, baseType: !6, size: 32)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !3957, file: !3958, line: 24, baseType: !6, size: 32, offset: 32)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3957, file: !3958, line: 24, baseType: !6, size: 32, offset: 64)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !165, file: !13, line: 458, baseType: !3964, size: 64, offset: 2496)
!3964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3965, size: 64)
!3965 = !DISubroutineType(types: !3966)
!3966 = !{!6}
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !165, file: !13, line: 460, baseType: !3968, size: 4032, align: 512, offset: 2560)
!3968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3969, size: 4032, elements: !3983)
!3969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !13, line: 362, size: 576, elements: !3970)
!3970 = !{!3971, !3972, !3973}
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3969, file: !13, line: 363, baseType: !163, size: 64)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3969, file: !13, line: 364, baseType: !14, size: 32, offset: 64)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !3969, file: !13, line: 367, baseType: !3974, size: 448, offset: 128)
!3974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !13, line: 319, size: 448, elements: !3975)
!3975 = !{!3976, !3977}
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3974, file: !13, line: 320, baseType: !164, size: 64)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3974, file: !13, line: 321, baseType: !3978, size: 384, offset: 64)
!3978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !3979, line: 40, size: 384, elements: !3980)
!3979 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!3980 = !{!3981}
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3978, file: !3979, line: 41, baseType: !3982, size: 384, align: 64)
!3982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !810, size: 384, align: 64, elements: !2507)
!3983 = !{!3984}
!3984 = !DISubrange(count: 7)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !165, file: !13, line: 463, baseType: !3986, size: 192, offset: 6592)
!3986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !3987, line: 8, size: 192, elements: !3988)
!3987 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!3988 = !{!3989, !3990, !3991}
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !3986, file: !3987, line: 10, baseType: !14, size: 32)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !3986, file: !3987, line: 11, baseType: !612, size: 64, offset: 64)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !3986, file: !3987, line: 12, baseType: !3992, size: 64, offset: 128)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !3994, line: 59, size: 48, elements: !3995)
!3994 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!3995 = !{!3996, !3997, !3998, !3999, !4000, !4001}
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !3993, file: !3994, line: 60, baseType: !1233, size: 16)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !3993, file: !3994, line: 61, baseType: !1233, size: 16, offset: 16)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !3993, file: !3994, line: 63, baseType: !14, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !3993, file: !3994, line: 64, baseType: !14, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3993, file: !3994, line: 65, baseType: !14, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3993, file: !3994, line: 66, baseType: !14, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !165, file: !13, line: 465, baseType: !316, size: 64, offset: 6784)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !165, file: !13, line: 469, baseType: !14, size: 32, offset: 6848)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !165, file: !13, line: 470, baseType: !169, size: 128, offset: 6912)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !165, file: !13, line: 471, baseType: !4006, size: 64, offset: 7040)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !4008, line: 33, size: 96, elements: !4009)
!4008 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!4009 = !{!4010, !4011, !4012, !4013}
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !4007, file: !4008, line: 37, baseType: !6, size: 32)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !4007, file: !4008, line: 43, baseType: !6, size: 32, offset: 32)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !4007, file: !4008, line: 45, baseType: !236, size: 16, offset: 64)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4007, file: !4008, line: 47, baseType: !236, size: 16, offset: 80)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !165, file: !13, line: 476, baseType: !4015, size: 64, offset: 7104)
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !13, line: 378, size: 256, elements: !4017)
!4017 = !{!4018, !4034, !4035, !4036}
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !4016, file: !13, line: 379, baseType: !4019, size: 64)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !4021, line: 204, baseType: !4022)
!4021 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!4022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !4021, line: 197, size: 192, elements: !4023)
!4023 = !{!4024, !4026, !4027, !4028, !4030, !4032}
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !4022, file: !4021, line: 198, baseType: !4025, size: 32)
!4025 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !4021, line: 21, baseType: !416)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !4022, file: !4021, line: 199, baseType: !228, size: 8, offset: 32)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !4022, file: !4021, line: 200, baseType: !228, size: 8, offset: 40)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !4022, file: !4021, line: 201, baseType: !4029, size: 16, offset: 48)
!4029 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !4021, line: 17, baseType: !235)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !4022, file: !4021, line: 202, baseType: !4031, size: 64, offset: 64)
!4031 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !4021, line: 16, baseType: !420)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !4022, file: !4021, line: 203, baseType: !4033, size: 64, offset: 128)
!4033 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !4021, line: 22, baseType: !420)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !4016, file: !13, line: 380, baseType: !14, size: 32, offset: 64)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !4016, file: !13, line: 381, baseType: !266, size: 64, offset: 128)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !4016, file: !13, line: 382, baseType: !266, size: 64, offset: 192)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !165, file: !13, line: 477, baseType: !4016, size: 256, offset: 7168)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !165, file: !13, line: 480, baseType: !4039, size: 64, offset: 7424)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !13, line: 480, flags: DIFlagFwdDecl)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !165, file: !13, line: 483, baseType: !4042, size: 64, offset: 7488)
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4043, size: 64)
!4043 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !13, line: 483, flags: DIFlagFwdDecl)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !165, file: !13, line: 488, baseType: !266, size: 64, offset: 7552)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !165, file: !13, line: 492, baseType: !163, size: 64, offset: 7616)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !165, file: !13, line: 493, baseType: !14, size: 32, offset: 7680)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !165, file: !13, line: 495, baseType: !163, size: 64, offset: 7744)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !165, file: !13, line: 496, baseType: !14, size: 32, offset: 7808)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !165, file: !13, line: 499, baseType: !14, size: 32, offset: 7840)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !165, file: !13, line: 500, baseType: !4051, size: 64, offset: 7872)
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4052, size: 64)
!4052 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !4053, line: 45, baseType: !4054)
!4053 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!4054 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !165, file: !13, line: 503, baseType: !14, size: 32, offset: 7936)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !165, file: !13, line: 504, baseType: !4057, size: 64, offset: 8000)
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4058, size: 64)
!4058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4059, size: 64)
!4059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !4060, line: 96, size: 192, elements: !4061)
!4060 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!4061 = !{!4062, !4063, !4106, !4108}
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !4059, file: !4060, line: 97, baseType: !14, size: 32)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !4059, file: !4060, line: 98, baseType: !4064, size: 64, offset: 64)
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !4060, line: 24, size: 3072, elements: !4066)
!4066 = !{!4067, !4069, !4070, !4071, !4072, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4103, !4104, !4105}
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !4065, file: !4060, line: 26, baseType: !4068, size: 128)
!4068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !634, size: 128, elements: !2507)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !4065, file: !4060, line: 27, baseType: !4068, size: 128, offset: 128)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !4065, file: !4060, line: 28, baseType: !6, size: 32, offset: 256)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4065, file: !4060, line: 31, baseType: !196, size: 32, align: 512, offset: 512)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !4065, file: !4060, line: 32, baseType: !4073, size: 960, offset: 576)
!4073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !4074, line: 206, size: 960, elements: !4075)
!4074 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!4075 = !{!4076, !4077, !4080, !4082, !4083, !4085}
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4073, file: !4074, line: 207, baseType: !691, size: 64)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !4073, file: !4074, line: 208, baseType: !4078, size: 256, offset: 64)
!4078 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4079, size: 256, elements: !742)
!4079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !4073, file: !4074, line: 209, baseType: !4081, size: 256, offset: 320)
!4081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 256, elements: !742)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4073, file: !4074, line: 213, baseType: !302, size: 64, offset: 576)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !4073, file: !4074, line: 215, baseType: !4084, size: 256, offset: 640)
!4084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 256, elements: !742)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4073, file: !4074, line: 216, baseType: !224, size: 8, offset: 896)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4065, file: !4060, line: 33, baseType: !316, size: 64, offset: 1536)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4065, file: !4060, line: 34, baseType: !316, size: 64, offset: 1600)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !4065, file: !4060, line: 35, baseType: !877, size: 8, offset: 1664)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !4065, file: !4060, line: 36, baseType: !2943, size: 320, offset: 1728)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4065, file: !4060, line: 37, baseType: !1255, size: 256, offset: 2048)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !4065, file: !4060, line: 38, baseType: !688, size: 128, align: 64, offset: 2304)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !4065, file: !4060, line: 39, baseType: !4093, size: 64, offset: 2432)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !4060, line: 49, size: 768, elements: !4095)
!4095 = !{!4096, !4097, !4098, !4099, !4100, !4101, !4102}
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4094, file: !4060, line: 50, baseType: !196, size: 32)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !4094, file: !4060, line: 51, baseType: !4081, size: 256, offset: 64)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !4094, file: !4060, line: 53, baseType: !4081, size: 256, offset: 320)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4094, file: !4060, line: 54, baseType: !316, size: 64, offset: 576)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !4094, file: !4060, line: 55, baseType: !4093, size: 64, offset: 640)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !4094, file: !4060, line: 56, baseType: !6, size: 32, offset: 704)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !4094, file: !4060, line: 57, baseType: !6, size: 32, offset: 736)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !4065, file: !4060, line: 40, baseType: !316, size: 64, offset: 2496)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4065, file: !4060, line: 42, baseType: !6, size: 32, offset: 2560)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !4065, file: !4060, line: 43, baseType: !4058, size: 64, offset: 2624)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !4059, file: !4060, line: 99, baseType: !4107, offset: 128)
!4107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !548, line: 211, elements: !549)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !4059, file: !4060, line: 100, baseType: !4109, size: 64, offset: 128)
!4109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4110, size: 64)
!4110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !4060, line: 63, size: 3008, elements: !4111)
!4111 = !{!4112, !4113, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4134, !4141}
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4110, file: !4060, line: 64, baseType: !4093, size: 64)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4110, file: !4060, line: 65, baseType: !4114, size: 192, offset: 64)
!4114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4093, size: 192, elements: !267)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !4110, file: !4060, line: 67, baseType: !6, size: 32, offset: 256)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !4110, file: !4060, line: 68, baseType: !630, size: 256, offset: 320)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4110, file: !4060, line: 69, baseType: !196, size: 32, offset: 576)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !4110, file: !4060, line: 70, baseType: !630, size: 256, offset: 640)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !4110, file: !4060, line: 71, baseType: !316, size: 64, offset: 896)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4110, file: !4060, line: 72, baseType: !316, size: 64, offset: 960)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4110, file: !4060, line: 73, baseType: !316, size: 64, offset: 1024)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !4110, file: !4060, line: 74, baseType: !316, size: 64, offset: 1088)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !4110, file: !4060, line: 75, baseType: !316, size: 64, offset: 1152)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !4110, file: !4060, line: 76, baseType: !316, size: 64, offset: 1216)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !4110, file: !4060, line: 77, baseType: !316, size: 64, offset: 1280)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !4110, file: !4060, line: 78, baseType: !316, size: 64, offset: 1344)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !4110, file: !4060, line: 79, baseType: !877, size: 8, offset: 1408)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !4110, file: !4060, line: 80, baseType: !316, size: 64, offset: 1472)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !4110, file: !4060, line: 81, baseType: !630, size: 256, offset: 1536)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !4110, file: !4060, line: 82, baseType: !1448, size: 256, offset: 1792)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !4110, file: !4060, line: 84, baseType: !216, size: 32, offset: 2048)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !4110, file: !4060, line: 87, baseType: !316, size: 64, offset: 2112)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !4110, file: !4060, line: 88, baseType: !316, size: 64, offset: 2176)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4110, file: !4060, line: 89, baseType: !4135, size: 704, offset: 2240)
!4135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1256, line: 111, size: 704, elements: !4136)
!4136 = !{!4137, !4138, !4139, !4140}
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4135, file: !1256, line: 112, baseType: !1255, size: 256)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4135, file: !1256, line: 113, baseType: !2943, size: 320, offset: 256)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4135, file: !1256, line: 116, baseType: !3237, size: 64, offset: 576)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4135, file: !1256, line: 117, baseType: !6, size: 32, offset: 640)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !4110, file: !4060, line: 90, baseType: !4058, size: 64, offset: 2944)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !165, file: !13, line: 515, baseType: !4143, size: 64, offset: 8064)
!4143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4144, size: 64)
!4144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !4145, line: 117, size: 128, elements: !4146)
!4145 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!4146 = !{!4147, !4148, !4149}
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4144, file: !4145, line: 118, baseType: !803, size: 32)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !4144, file: !4145, line: 119, baseType: !803, size: 32, offset: 32)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4144, file: !4145, line: 120, baseType: !302, size: 64, offset: 64)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !165, file: !13, line: 516, baseType: !14, size: 32, offset: 8128)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !165, file: !13, line: 519, baseType: !14, size: 32, offset: 8160)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !165, file: !13, line: 520, baseType: !4153, size: 64, offset: 8192)
!4153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !165, file: !13, line: 523, baseType: !4155, size: 64, offset: 8256)
!4155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4156, size: 64)
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4157, size: 64)
!4157 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !13, line: 523, flags: DIFlagFwdDecl)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !165, file: !13, line: 524, baseType: !14, size: 32, offset: 8320)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !165, file: !13, line: 525, baseType: !4160, size: 64, offset: 8384)
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4161, size: 64)
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4162, size: 64)
!4162 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !13, line: 525, flags: DIFlagFwdDecl)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !165, file: !13, line: 526, baseType: !14, size: 32, offset: 8448)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !165, file: !13, line: 533, baseType: !163, size: 64, offset: 8512)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !165, file: !13, line: 534, baseType: !14, size: 32, offset: 8576)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !165, file: !13, line: 535, baseType: !4167, size: 64, offset: 8640)
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !165, file: !13, line: 536, baseType: !14, size: 32, offset: 8704)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !165, file: !13, line: 539, baseType: !6, size: 32, offset: 8736)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !165, file: !13, line: 540, baseType: !4171, size: 64, offset: 8768)
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4172, size: 64)
!4172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !4173, line: 32, size: 64, elements: !4174)
!4173 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!4174 = !{!4175, !4176}
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4172, file: !4173, line: 33, baseType: !803, size: 32)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4172, file: !4173, line: 34, baseType: !803, size: 32, offset: 32)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !165, file: !13, line: 563, baseType: !169, size: 128, offset: 8832)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !165, file: !13, line: 565, baseType: !169, size: 128, offset: 8960)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !165, file: !13, line: 568, baseType: !4180, size: 64, offset: 9088)
!4180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !165, file: !13, line: 570, baseType: !216, size: 32, offset: 9152)
!4182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4183, size: 64)
!4183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_info_entry", file: !4184, line: 60, size: 1216, elements: !4185)
!4184 = !DIFile(filename: "./include/sound/info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "060f8a4a29808d9f7cc7b628d26ba172")
!4185 = !{!4186, !4187, !4188, !4189, !4190, !4249, !4250, !4251, !4252, !4256, !4260, !4261, !4262}
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4183, file: !4184, line: 61, baseType: !7, size: 64)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4183, file: !4184, line: 62, baseType: !308, size: 16, offset: 64)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4183, file: !4184, line: 63, baseType: !302, size: 64, offset: 128)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !4183, file: !4184, line: 64, baseType: !236, size: 16, offset: 192)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !4183, file: !4184, line: 68, baseType: !4191, size: 128, offset: 256)
!4191 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4183, file: !4184, line: 65, size: 128, elements: !4192)
!4192 = !{!4193, !4210}
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !4191, file: !4184, line: 66, baseType: !4194, size: 128)
!4194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_info_entry_text", file: !4184, line: 29, size: 128, elements: !4195)
!4195 = !{!4196, !4209}
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4194, file: !4184, line: 30, baseType: !4197, size: 64)
!4197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4198 = !DISubroutineType(types: !4199)
!4199 = !{null, !4182, !4200}
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4201, size: 64)
!4201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_info_buffer", file: !4184, line: 15, size: 256, elements: !4202)
!4202 = !{!4203, !4204, !4205, !4206, !4207, !4208}
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !4201, file: !4184, line: 16, baseType: !266, size: 64)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "curr", scope: !4201, file: !4184, line: 17, baseType: !14, size: 32, offset: 64)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4201, file: !4184, line: 18, baseType: !14, size: 32, offset: 96)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4201, file: !4184, line: 19, baseType: !14, size: 32, offset: 128)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !4201, file: !4184, line: 20, baseType: !6, size: 32, offset: 160)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !4201, file: !4184, line: 21, baseType: !6, size: 32, offset: 192)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4194, file: !4184, line: 32, baseType: !4197, size: 64, offset: 64)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4191, file: !4184, line: 67, baseType: !4211, size: 64)
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4212, size: 64)
!4212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4213)
!4213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_info_entry_ops", file: !4184, line: 36, size: 512, elements: !4214)
!4214 = !{!4215, !4219, !4223, !4227, !4231, !4235, !4241, !4245}
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4213, file: !4184, line: 37, baseType: !4216, size: 64)
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4217 = !DISubroutineType(types: !4218)
!4218 = !{!6, !4182, !236, !1602}
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4213, file: !4184, line: 39, baseType: !4220, size: 64, offset: 64)
!4220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4221, size: 64)
!4221 = !DISubroutineType(types: !4222)
!4222 = !{!6, !4182, !236, !163}
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4213, file: !4184, line: 41, baseType: !4224, size: 64, offset: 128)
!4224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4225, size: 64)
!4225 = !DISubroutineType(types: !4226)
!4226 = !{!298, !4182, !163, !1005, !266, !313, !507}
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4213, file: !4184, line: 44, baseType: !4228, size: 64, offset: 192)
!4228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4229, size: 64)
!4229 = !DISubroutineType(types: !4230)
!4230 = !{!298, !4182, !163, !1005, !7, !313, !507}
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4213, file: !4184, line: 47, baseType: !4232, size: 64, offset: 256)
!4232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4233, size: 64)
!4233 = !DISubroutineType(types: !4234)
!4234 = !{!507, !4182, !163, !1005, !507, !6}
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4213, file: !4184, line: 50, baseType: !4236, size: 64, offset: 320)
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4237 = !DISubroutineType(types: !4238)
!4238 = !{!1066, !4182, !163, !1005, !4239}
!4239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4240, size: 64)
!4240 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_table", file: !1070, line: 40, baseType: !1069)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !4213, file: !4184, line: 53, baseType: !4242, size: 64, offset: 384)
!4242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4243, size: 64)
!4243 = !DISubroutineType(types: !4244)
!4244 = !{!6, !4182, !163, !1005, !14, !316}
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4213, file: !4184, line: 55, baseType: !4246, size: 64, offset: 448)
!4246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4247, size: 64)
!4247 = !DISubroutineType(types: !4248)
!4248 = !{!6, !4182, !163, !346, !1005, !1088}
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4183, file: !4184, line: 69, baseType: !4182, size: 64, offset: 384)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !4183, file: !4184, line: 70, baseType: !164, size: 64, offset: 448)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !4183, file: !4184, line: 71, baseType: !163, size: 64, offset: 512)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "private_free", scope: !4183, file: !4184, line: 72, baseType: !4253, size: 64, offset: 576)
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4254 = !DISubroutineType(types: !4255)
!4255 = !{null, !4182}
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4183, file: !4184, line: 73, baseType: !4257, size: 64, offset: 640)
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4258, size: 64)
!4258 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !4259, line: 114, flags: DIFlagFwdDecl)
!4259 = !DIFile(filename: "./include/sound/core.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4a50d220b71ed843af7ad75eb7639e6e")
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !4183, file: !4184, line: 74, baseType: !630, size: 256, offset: 704)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4183, file: !4184, line: 75, baseType: !169, size: 128, offset: 960)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4183, file: !4184, line: 76, baseType: !169, size: 128, offset: 1088)
!4263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4264, size: 64)
!4264 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !173)
!4265 = !{!4266, !4268, !4270, !4275, !4278, !4280, !4283, !4285, !4287, !4289, !4291, !0, !4293, !4298, !4300, !4302, !4304, !4307, !4309, !4311, !4313, !4315, !4317, !4319, !4321, !4323, !4325, !4327, !4329, !4339, !4344, !4349, !4367, !4369, !4375}
!4266 = !DIGlobalVariableExpression(var: !4267, expr: !DIExpression())
!4267 = distinct !DIGlobalVariable(scope: null, file: !3, line: 24, type: !2751, isLocal: true, isDefinition: true)
!4268 = !DIGlobalVariableExpression(var: !4269, expr: !DIExpression())
!4269 = distinct !DIGlobalVariable(scope: null, file: !3, line: 25, type: !2751, isLocal: true, isDefinition: true)
!4270 = !DIGlobalVariableExpression(var: !4271, expr: !DIExpression())
!4271 = distinct !DIGlobalVariable(scope: null, file: !3, line: 26, type: !4272, isLocal: true, isDefinition: true)
!4272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 72, elements: !4273)
!4273 = !{!4274}
!4274 = !DISubrange(count: 9)
!4275 = !DIGlobalVariableExpression(var: !4276, expr: !DIExpression())
!4276 = distinct !DIGlobalVariable(scope: null, file: !3, line: 27, type: !4277, isLocal: true, isDefinition: true)
!4277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 56, elements: !3983)
!4278 = !DIGlobalVariableExpression(var: !4279, expr: !DIExpression())
!4279 = distinct !DIGlobalVariable(scope: null, file: !3, line: 28, type: !2751, isLocal: true, isDefinition: true)
!4280 = !DIGlobalVariableExpression(var: !4281, expr: !DIExpression())
!4281 = distinct !DIGlobalVariable(scope: null, file: !3, line: 29, type: !4282, isLocal: true, isDefinition: true)
!4282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 32, elements: !742)
!4283 = !DIGlobalVariableExpression(var: !4284, expr: !DIExpression())
!4284 = distinct !DIGlobalVariable(scope: null, file: !3, line: 30, type: !863, isLocal: true, isDefinition: true)
!4285 = !DIGlobalVariableExpression(var: !4286, expr: !DIExpression())
!4286 = distinct !DIGlobalVariable(scope: null, file: !3, line: 31, type: !4277, isLocal: true, isDefinition: true)
!4287 = !DIGlobalVariableExpression(var: !4288, expr: !DIExpression())
!4288 = distinct !DIGlobalVariable(scope: null, file: !3, line: 32, type: !863, isLocal: true, isDefinition: true)
!4289 = !DIGlobalVariableExpression(var: !4290, expr: !DIExpression())
!4290 = distinct !DIGlobalVariable(scope: null, file: !3, line: 33, type: !4282, isLocal: true, isDefinition: true)
!4291 = !DIGlobalVariableExpression(var: !4292, expr: !DIExpression())
!4292 = distinct !DIGlobalVariable(scope: null, file: !3, line: 34, type: !4282, isLocal: true, isDefinition: true)
!4293 = !DIGlobalVariableExpression(var: !4294, expr: !DIExpression())
!4294 = distinct !DIGlobalVariable(scope: null, file: !3, line: 44, type: !4295, isLocal: true, isDefinition: true)
!4295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 40, elements: !4296)
!4296 = !{!4297}
!4297 = !DISubrange(count: 5)
!4298 = !DIGlobalVariableExpression(var: !4299, expr: !DIExpression())
!4299 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_seq_root289", scope: !10, file: !3, line: 67, type: !163, isLocal: true, isDefinition: true)
!4300 = !DIGlobalVariableExpression(var: !4301, expr: !DIExpression())
!4301 = distinct !DIGlobalVariable(scope: null, file: !3, line: 453, type: !4277, isLocal: true, isDefinition: true)
!4302 = !DIGlobalVariableExpression(var: !4303, expr: !DIExpression())
!4303 = distinct !DIGlobalVariable(scope: null, file: !3, line: 509, type: !4277, isLocal: true, isDefinition: true)
!4304 = !DIGlobalVariableExpression(var: !4305, expr: !DIExpression())
!4305 = distinct !DIGlobalVariable(scope: null, file: !3, line: 515, type: !4306, isLocal: true, isDefinition: true)
!4306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 24, elements: !267)
!4307 = !DIGlobalVariableExpression(var: !4308, expr: !DIExpression())
!4308 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_info_get_line294", scope: !10, file: !3, line: 633, type: !163, isLocal: true, isDefinition: true)
!4309 = !DIGlobalVariableExpression(var: !4310, expr: !DIExpression())
!4310 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_info_get_str295", scope: !10, file: !3, line: 670, type: !163, isLocal: true, isDefinition: true)
!4311 = !DIGlobalVariableExpression(var: !4312, expr: !DIExpression())
!4312 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_info_create_module_entry296", scope: !10, file: !3, line: 731, type: !163, isLocal: true, isDefinition: true)
!4313 = !DIGlobalVariableExpression(var: !4314, expr: !DIExpression())
!4314 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_info_create_card_entry297", scope: !10, file: !3, line: 751, type: !163, isLocal: true, isDefinition: true)
!4315 = !DIGlobalVariableExpression(var: !4316, expr: !DIExpression())
!4316 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_info_free_entry298", scope: !10, file: !3, line: 798, type: !163, isLocal: true, isDefinition: true)
!4317 = !DIGlobalVariableExpression(var: !4318, expr: !DIExpression())
!4318 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_info_register299", scope: !10, file: !3, line: 864, type: !163, isLocal: true, isDefinition: true)
!4319 = !DIGlobalVariableExpression(var: !4320, expr: !DIExpression())
!4320 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_card_rw_proc_new300", scope: !10, file: !3, line: 898, type: !163, isLocal: true, isDefinition: true)
!4321 = !DIGlobalVariableExpression(var: !4322, expr: !DIExpression())
!4322 = distinct !DIGlobalVariable(name: "snd_proc_root", scope: !10, file: !3, line: 65, type: !4182, isLocal: true, isDefinition: true)
!4323 = !DIGlobalVariableExpression(var: !4324, expr: !DIExpression())
!4324 = distinct !DIGlobalVariable(name: "snd_seq_root", scope: !10, file: !3, line: 66, type: !4182, isLocal: false, isDefinition: true)
!4325 = !DIGlobalVariableExpression(var: !4326, expr: !DIExpression())
!4326 = distinct !DIGlobalVariable(scope: null, file: !3, line: 494, type: !4282, isLocal: true, isDefinition: true)
!4327 = !DIGlobalVariableExpression(var: !4328, expr: !DIExpression())
!4328 = distinct !DIGlobalVariable(name: "info_mutex", scope: !10, file: !3, line: 49, type: !630, isLocal: true, isDefinition: true)
!4329 = !DIGlobalVariableExpression(var: !4330, expr: !DIExpression())
!4330 = distinct !DIGlobalVariable(name: "__key", scope: !4331, file: !3, line: 700, type: !547, isLocal: true, isDefinition: true)
!4331 = distinct !DISubprogram(name: "snd_info_create_entry", scope: !3, file: !3, line: 686, type: !4332, scopeLine: 688, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !4334)
!4332 = !DISubroutineType(types: !4333)
!4333 = !{!4182, !7, !4182, !164}
!4334 = !{!4335, !4336, !4337, !4338}
!4335 = !DILocalVariable(name: "name", arg: 1, scope: !4331, file: !3, line: 686, type: !7)
!4336 = !DILocalVariable(name: "parent", arg: 2, scope: !4331, file: !3, line: 686, type: !4182)
!4337 = !DILocalVariable(name: "module", arg: 3, scope: !4331, file: !3, line: 687, type: !164)
!4338 = !DILocalVariable(name: "entry", scope: !4331, file: !3, line: 689, type: !4182)
!4339 = !DIGlobalVariableExpression(var: !4340, expr: !DIExpression())
!4340 = distinct !DIGlobalVariable(scope: null, file: !3, line: 700, type: !4341, isLocal: true, isDefinition: true)
!4341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 120, elements: !4342)
!4342 = !{!4343}
!4343 = !DISubrange(count: 15)
!4344 = !DIGlobalVariableExpression(var: !4345, expr: !DIExpression())
!4345 = distinct !DIGlobalVariable(scope: null, file: !153, line: 480, type: !4346, isLocal: true, isDefinition: true)
!4346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 168, elements: !4347)
!4347 = !{!4348}
!4348 = !DISubrange(count: 21)
!4349 = !DIGlobalVariableExpression(var: !4350, expr: !DIExpression())
!4350 = distinct !DIGlobalVariable(name: "snd_info_entry_operations", scope: !10, file: !3, line: 284, type: !4351, isLocal: true, isDefinition: true)
!4351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4352)
!4352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ops", file: !4353, line: 29, size: 768, elements: !4354)
!4353 = !DIFile(filename: "./include/linux/proc_fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3e8a31057d6ce7bcf5851cd096e4b3e8")
!4354 = !{!4355, !4356, !4357, !4358, !4359, !4360, !4361, !4362, !4363, !4364, !4365, !4366}
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "proc_flags", scope: !4352, file: !4353, line: 30, baseType: !14, size: 32)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "proc_open", scope: !4352, file: !4353, line: 31, baseType: !1553, size: 64, offset: 64)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "proc_read", scope: !4352, file: !4353, line: 32, baseType: !1007, size: 64, offset: 128)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "proc_read_iter", scope: !4352, file: !4353, line: 33, baseType: !1015, size: 64, offset: 192)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "proc_write", scope: !4352, file: !4353, line: 34, baseType: !1011, size: 64, offset: 256)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "proc_lseek", scope: !4352, file: !4353, line: 36, baseType: !1002, size: 64, offset: 320)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "proc_release", scope: !4352, file: !4353, line: 37, baseType: !1553, size: 64, offset: 384)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "proc_poll", scope: !4352, file: !4353, line: 38, baseType: !1063, size: 64, offset: 448)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "proc_ioctl", scope: !4352, file: !4353, line: 39, baseType: !1080, size: 64, offset: 512)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "proc_compat_ioctl", scope: !4352, file: !4353, line: 41, baseType: !1080, size: 64, offset: 576)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "proc_mmap", scope: !4352, file: !4353, line: 43, baseType: !1085, size: 64, offset: 640)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "proc_get_unmapped_area", scope: !4352, file: !4353, line: 44, baseType: !1125, size: 64, offset: 704)
!4367 = !DIGlobalVariableExpression(var: !4368, expr: !DIExpression())
!4368 = distinct !DIGlobalVariable(name: "snd_info_text_entry_ops", scope: !10, file: !3, line: 422, type: !4351, isLocal: true, isDefinition: true)
!4369 = !DIGlobalVariableExpression(var: !4370, expr: !DIExpression())
!4370 = distinct !DIGlobalVariable(scope: null, file: !4371, line: 249, type: !4372, isLocal: true, isDefinition: true)
!4371 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!4372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 224, elements: !4373)
!4373 = !{!4374}
!4374 = !DISubrange(count: 28)
!4375 = !DIGlobalVariableExpression(var: !4376, expr: !DIExpression())
!4376 = distinct !DIGlobalVariable(scope: null, file: !3, line: 906, type: !4377, isLocal: true, isDefinition: true)
!4377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 440, elements: !4378)
!4378 = !{!4379}
!4379 = !DISubrange(count: 55)
!4380 = !{!4381, !4382}
!4381 = !DILocalVariable(name: "str", arg: 1, scope: !2, file: !3, line: 20, type: !7)
!4382 = !DILocalVariable(name: "xstr", scope: !2, file: !3, line: 37, type: !4383)
!4383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4384, size: 64)
!4384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!4385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4384, size: 768, elements: !3084)
!4386 = !{i32 7, !"Dwarf Version", i32 5}
!4387 = !{i32 2, !"Debug Info Version", i32 3}
!4388 = !{i32 1, !"wchar_size", i32 2}
!4389 = !{i32 8, !"cf-protection-branch", i32 1}
!4390 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4391 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4392 = !{i32 1, !"Code Model", i32 2}
!4393 = !{i32 1, !"override-stack-alignment", i32 8}
!4394 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4395 = !DILocation(line: 20, column: 47, scope: !2)
!4396 = !DILocation(line: 37, column: 2, scope: !2)
!4397 = !DILocation(line: 37, column: 22, scope: !2)
!4398 = !DILocation(line: 39, column: 2, scope: !2)
!4399 = !DILocation(line: 39, column: 10, scope: !2)
!4400 = !DILocation(line: 39, column: 9, scope: !2)
!4401 = !DILocation(line: 40, column: 16, scope: !4402)
!4402 = distinct !DILexicalBlock(scope: !4403, file: !3, line: 40, column: 7)
!4403 = distinct !DILexicalBlock(scope: !2, file: !3, line: 39, column: 16)
!4404 = !DILocation(line: 40, column: 15, scope: !4402)
!4405 = !DILocation(line: 40, column: 22, scope: !4402)
!4406 = !DILocation(line: 40, column: 8, scope: !4402)
!4407 = !DILocation(line: 40, column: 7, scope: !4403)
!4408 = !DILocation(line: 41, column: 4, scope: !4402)
!4409 = !DILocation(line: 42, column: 7, scope: !4403)
!4410 = distinct !{!4410, !4398, !4411, !4412, !4413}
!4411 = !DILocation(line: 43, column: 2, scope: !2)
!4412 = !{!"llvm.loop.mustprogress"}
!4413 = !{!"llvm.loop.unroll.disable"}
!4414 = !DILocation(line: 44, column: 15, scope: !4415)
!4415 = distinct !DILexicalBlock(scope: !2, file: !3, line: 44, column: 6)
!4416 = !DILocation(line: 44, column: 7, scope: !4415)
!4417 = !DILocation(line: 44, column: 6, scope: !2)
!4418 = !DILocation(line: 45, column: 3, scope: !4415)
!4419 = !DILocation(line: 46, column: 2, scope: !2)
!4420 = !DILocation(line: 47, column: 1, scope: !2)
!4421 = !DISubprogram(name: "strcmp", scope: !4422, file: !4422, line: 88, type: !4423, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4422 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!4423 = !DISubroutineType(types: !4424)
!4424 = !{!6, !7, !7}
!4425 = !DISubprogram(name: "strncmp", scope: !4422, file: !4422, line: 91, type: !4426, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4426 = !DISubroutineType(types: !4427)
!4427 = !{!6, !7, !7, !314}
!4428 = distinct !DISubprogram(name: "snd_info_init", scope: !3, file: !3, line: 451, type: !3965, scopeLine: 452, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !4429)
!4429 = !{!4430}
!4430 = !DILabel(scope: !4428, name: "error", file: !3, line: 478)
!4431 = !DILocation(line: 453, column: 18, scope: !4428)
!4432 = !DILocation(line: 453, column: 16, scope: !4428)
!4433 = !DILocation(line: 454, column: 7, scope: !4434)
!4434 = distinct !DILexicalBlock(scope: !4428, file: !3, line: 454, column: 6)
!4435 = !DILocation(line: 454, column: 6, scope: !4428)
!4436 = !DILocation(line: 455, column: 3, scope: !4434)
!4437 = !DILocation(line: 456, column: 2, scope: !4428)
!4438 = !DILocation(line: 456, column: 17, scope: !4428)
!4439 = !DILocation(line: 456, column: 22, scope: !4428)
!4440 = !DILocation(line: 457, column: 21, scope: !4428)
!4441 = !DILocation(line: 457, column: 2, scope: !4428)
!4442 = !DILocation(line: 457, column: 17, scope: !4428)
!4443 = !DILocation(line: 457, column: 19, scope: !4428)
!4444 = !DILocation(line: 458, column: 7, scope: !4445)
!4445 = distinct !DILexicalBlock(scope: !4428, file: !3, line: 458, column: 6)
!4446 = !DILocation(line: 458, column: 22, scope: !4445)
!4447 = !DILocation(line: 458, column: 6, scope: !4428)
!4448 = !DILocation(line: 459, column: 3, scope: !4445)
!4449 = !DILocation(line: 466, column: 17, scope: !4428)
!4450 = !DILocation(line: 466, column: 15, scope: !4428)
!4451 = !DILocation(line: 467, column: 7, scope: !4452)
!4452 = distinct !DILexicalBlock(scope: !4428, file: !3, line: 467, column: 6)
!4453 = !DILocation(line: 467, column: 6, scope: !4428)
!4454 = !DILocation(line: 468, column: 3, scope: !4452)
!4455 = !DILocation(line: 470, column: 6, scope: !4456)
!4456 = distinct !DILexicalBlock(scope: !4428, file: !3, line: 470, column: 6)
!4457 = !DILocation(line: 470, column: 30, scope: !4456)
!4458 = !DILocation(line: 470, column: 34, scope: !4456)
!4459 = !DILocation(line: 471, column: 6, scope: !4456)
!4460 = !DILocation(line: 471, column: 28, scope: !4456)
!4461 = !DILocation(line: 471, column: 32, scope: !4456)
!4462 = !DILocation(line: 472, column: 6, scope: !4456)
!4463 = !DILocation(line: 472, column: 32, scope: !4456)
!4464 = !DILocation(line: 472, column: 36, scope: !4456)
!4465 = !DILocation(line: 473, column: 6, scope: !4456)
!4466 = !DILocation(line: 473, column: 27, scope: !4456)
!4467 = !DILocation(line: 470, column: 6, scope: !4428)
!4468 = !DILocation(line: 475, column: 3, scope: !4456)
!4469 = !DILocation(line: 476, column: 2, scope: !4428)
!4470 = !DILocation(line: 478, column: 2, scope: !4428)
!4471 = !DILocation(line: 479, column: 22, scope: !4428)
!4472 = !DILocation(line: 479, column: 2, scope: !4428)
!4473 = !DILocation(line: 480, column: 2, scope: !4428)
!4474 = !DILocation(line: 481, column: 1, scope: !4428)
!4475 = !DILocation(line: 686, column: 35, scope: !4331)
!4476 = !DILocation(line: 686, column: 64, scope: !4331)
!4477 = !DILocation(line: 687, column: 24, scope: !4331)
!4478 = !DILocation(line: 689, column: 2, scope: !4331)
!4479 = !DILocation(line: 689, column: 25, scope: !4331)
!4480 = !DILocation(line: 690, column: 10, scope: !4331)
!4481 = !DILocation(line: 690, column: 8, scope: !4331)
!4482 = !DILocation(line: 691, column: 6, scope: !4483)
!4483 = distinct !DILexicalBlock(scope: !4331, file: !3, line: 691, column: 6)
!4484 = !DILocation(line: 691, column: 12, scope: !4483)
!4485 = !DILocation(line: 691, column: 6, scope: !4331)
!4486 = !DILocation(line: 692, column: 3, scope: !4483)
!4487 = !DILocation(line: 693, column: 24, scope: !4331)
!4488 = !DILocation(line: 693, column: 16, scope: !4331)
!4489 = !DILocation(line: 693, column: 2, scope: !4331)
!4490 = !DILocation(line: 693, column: 9, scope: !4331)
!4491 = !DILocation(line: 693, column: 14, scope: !4331)
!4492 = !DILocation(line: 694, column: 6, scope: !4493)
!4493 = distinct !DILexicalBlock(scope: !4331, file: !3, line: 694, column: 6)
!4494 = !DILocation(line: 694, column: 13, scope: !4493)
!4495 = !DILocation(line: 694, column: 18, scope: !4493)
!4496 = !DILocation(line: 694, column: 6, scope: !4331)
!4497 = !DILocation(line: 695, column: 9, scope: !4498)
!4498 = distinct !DILexicalBlock(scope: !4493, file: !3, line: 694, column: 27)
!4499 = !DILocation(line: 695, column: 3, scope: !4498)
!4500 = !DILocation(line: 696, column: 3, scope: !4498)
!4501 = !DILocation(line: 698, column: 2, scope: !4331)
!4502 = !DILocation(line: 698, column: 9, scope: !4331)
!4503 = !DILocation(line: 698, column: 14, scope: !4331)
!4504 = !DILocation(line: 699, column: 2, scope: !4331)
!4505 = !DILocation(line: 699, column: 9, scope: !4331)
!4506 = !DILocation(line: 699, column: 17, scope: !4331)
!4507 = !DILocation(line: 700, column: 2, scope: !4331)
!4508 = !DILocation(line: 700, column: 2, scope: !4509)
!4509 = distinct !DILexicalBlock(scope: !4331, file: !3, line: 700, column: 2)
!4510 = !DILocation(line: 701, column: 18, scope: !4331)
!4511 = !DILocation(line: 701, column: 25, scope: !4331)
!4512 = !DILocation(line: 701, column: 2, scope: !4331)
!4513 = !DILocation(line: 702, column: 18, scope: !4331)
!4514 = !DILocation(line: 702, column: 25, scope: !4331)
!4515 = !DILocation(line: 702, column: 2, scope: !4331)
!4516 = !DILocation(line: 703, column: 18, scope: !4331)
!4517 = !DILocation(line: 703, column: 2, scope: !4331)
!4518 = !DILocation(line: 703, column: 9, scope: !4331)
!4519 = !DILocation(line: 703, column: 16, scope: !4331)
!4520 = !DILocation(line: 704, column: 18, scope: !4331)
!4521 = !DILocation(line: 704, column: 2, scope: !4331)
!4522 = !DILocation(line: 704, column: 9, scope: !4331)
!4523 = !DILocation(line: 704, column: 16, scope: !4331)
!4524 = !DILocation(line: 705, column: 6, scope: !4525)
!4525 = distinct !DILexicalBlock(scope: !4331, file: !3, line: 705, column: 6)
!4526 = !DILocation(line: 705, column: 6, scope: !4331)
!4527 = !DILocation(line: 706, column: 15, scope: !4528)
!4528 = distinct !DILexicalBlock(scope: !4525, file: !3, line: 705, column: 14)
!4529 = !DILocation(line: 706, column: 23, scope: !4528)
!4530 = !DILocation(line: 706, column: 3, scope: !4528)
!4531 = !DILocation(line: 707, column: 18, scope: !4528)
!4532 = !DILocation(line: 707, column: 25, scope: !4528)
!4533 = !DILocation(line: 707, column: 32, scope: !4528)
!4534 = !DILocation(line: 707, column: 40, scope: !4528)
!4535 = !DILocation(line: 707, column: 3, scope: !4528)
!4536 = !DILocation(line: 708, column: 17, scope: !4528)
!4537 = !DILocation(line: 708, column: 25, scope: !4528)
!4538 = !DILocation(line: 708, column: 3, scope: !4528)
!4539 = !DILocation(line: 709, column: 2, scope: !4528)
!4540 = !DILocation(line: 710, column: 9, scope: !4331)
!4541 = !DILocation(line: 710, column: 2, scope: !4331)
!4542 = !DILocation(line: 711, column: 1, scope: !4331)
!4543 = !DISubprogram(name: "proc_mkdir", scope: !4353, file: !4353, line: 85, type: !4544, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4544 = !DISubroutineType(types: !4545)
!4545 = !{!4257, !7, !4257}
!4546 = distinct !DISubprogram(name: "create_subdir", scope: !3, file: !3, line: 431, type: !4547, scopeLine: 433, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !4549)
!4547 = !DISubroutineType(types: !4548)
!4548 = !{!4182, !164, !7}
!4549 = !{!4550, !4551, !4552}
!4550 = !DILocalVariable(name: "mod", arg: 1, scope: !4546, file: !3, line: 431, type: !164)
!4551 = !DILocalVariable(name: "name", arg: 2, scope: !4546, file: !3, line: 432, type: !7)
!4552 = !DILocalVariable(name: "entry", scope: !4546, file: !3, line: 434, type: !4182)
!4553 = !DILocation(line: 431, column: 60, scope: !4546)
!4554 = !DILocation(line: 432, column: 22, scope: !4546)
!4555 = !DILocation(line: 434, column: 2, scope: !4546)
!4556 = !DILocation(line: 434, column: 25, scope: !4546)
!4557 = !DILocation(line: 436, column: 39, scope: !4546)
!4558 = !DILocation(line: 436, column: 44, scope: !4546)
!4559 = !DILocation(line: 436, column: 10, scope: !4546)
!4560 = !DILocation(line: 436, column: 8, scope: !4546)
!4561 = !DILocation(line: 437, column: 7, scope: !4562)
!4562 = distinct !DILexicalBlock(scope: !4546, file: !3, line: 437, column: 6)
!4563 = !DILocation(line: 437, column: 6, scope: !4546)
!4564 = !DILocation(line: 438, column: 3, scope: !4562)
!4565 = !DILocation(line: 439, column: 2, scope: !4546)
!4566 = !DILocation(line: 439, column: 9, scope: !4546)
!4567 = !DILocation(line: 439, column: 14, scope: !4546)
!4568 = !DILocation(line: 440, column: 24, scope: !4569)
!4569 = distinct !DILexicalBlock(scope: !4546, file: !3, line: 440, column: 6)
!4570 = !DILocation(line: 440, column: 6, scope: !4569)
!4571 = !DILocation(line: 440, column: 31, scope: !4569)
!4572 = !DILocation(line: 440, column: 6, scope: !4546)
!4573 = !DILocation(line: 441, column: 23, scope: !4574)
!4574 = distinct !DILexicalBlock(scope: !4569, file: !3, line: 440, column: 36)
!4575 = !DILocation(line: 441, column: 3, scope: !4574)
!4576 = !DILocation(line: 442, column: 3, scope: !4574)
!4577 = !DILocation(line: 444, column: 9, scope: !4546)
!4578 = !DILocation(line: 444, column: 2, scope: !4546)
!4579 = !DILocation(line: 445, column: 1, scope: !4546)
!4580 = distinct !DISubprogram(name: "snd_info_version_init", scope: !3, file: !3, line: 911, type: !3965, scopeLine: 912, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !4581)
!4581 = !{!4582}
!4582 = !DILocalVariable(name: "entry", scope: !4580, file: !3, line: 913, type: !4182)
!4583 = !DILocation(line: 913, column: 2, scope: !4580)
!4584 = !DILocation(line: 913, column: 25, scope: !4580)
!4585 = !DILocation(line: 915, column: 10, scope: !4580)
!4586 = !DILocation(line: 915, column: 8, scope: !4580)
!4587 = !DILocation(line: 916, column: 6, scope: !4588)
!4588 = distinct !DILexicalBlock(scope: !4580, file: !3, line: 916, column: 6)
!4589 = !DILocation(line: 916, column: 12, scope: !4588)
!4590 = !DILocation(line: 916, column: 6, scope: !4580)
!4591 = !DILocation(line: 917, column: 3, scope: !4588)
!4592 = !DILocation(line: 918, column: 2, scope: !4580)
!4593 = !DILocation(line: 918, column: 9, scope: !4580)
!4594 = !DILocation(line: 918, column: 16, scope: !4580)
!4595 = !DILocation(line: 918, column: 21, scope: !4580)
!4596 = !DILocation(line: 919, column: 27, scope: !4580)
!4597 = !DILocation(line: 919, column: 9, scope: !4580)
!4598 = !DILocation(line: 919, column: 2, scope: !4580)
!4599 = !DILocation(line: 920, column: 1, scope: !4580)
!4600 = !DISubprogram(name: "snd_minor_info_init", scope: !4259, file: !4259, line: 257, type: !3965, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4601 = distinct !DISubprogram(name: "snd_minor_info_oss_init", scope: !4259, file: !4259, line: 264, type: !3965, scopeLine: 264, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10)
!4602 = !DILocation(line: 264, column: 51, scope: !4601)
!4603 = !DISubprogram(name: "snd_card_info_init", scope: !4259, file: !4259, line: 296, type: !3965, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4604 = distinct !DISubprogram(name: "snd_info_free_entry", scope: !3, file: !3, line: 770, type: !4254, scopeLine: 771, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !4605)
!4605 = !{!4606, !4607, !4608, !4609, !4612, !4614}
!4606 = !DILocalVariable(name: "entry", arg: 1, scope: !4604, file: !3, line: 770, type: !4182)
!4607 = !DILocalVariable(name: "p", scope: !4604, file: !3, line: 772, type: !4182)
!4608 = !DILocalVariable(name: "n", scope: !4604, file: !3, line: 772, type: !4182)
!4609 = !DILocalVariable(name: "__mptr", scope: !4610, file: !3, line: 784, type: !163)
!4610 = distinct !DILexicalBlock(scope: !4611, file: !3, line: 784, column: 2)
!4611 = distinct !DILexicalBlock(scope: !4604, file: !3, line: 784, column: 2)
!4612 = !DILocalVariable(name: "__mptr", scope: !4613, file: !3, line: 784, type: !163)
!4613 = distinct !DILexicalBlock(scope: !4611, file: !3, line: 784, column: 2)
!4614 = !DILocalVariable(name: "__mptr", scope: !4615, file: !3, line: 784, type: !163)
!4615 = distinct !DILexicalBlock(scope: !4616, file: !3, line: 784, column: 2)
!4616 = distinct !DILexicalBlock(scope: !4611, file: !3, line: 784, column: 2)
!4617 = !DILocation(line: 770, column: 50, scope: !4604)
!4618 = !DILocation(line: 772, column: 2, scope: !4604)
!4619 = !DILocation(line: 772, column: 25, scope: !4604)
!4620 = !DILocation(line: 772, column: 29, scope: !4604)
!4621 = !DILocation(line: 774, column: 7, scope: !4622)
!4622 = distinct !DILexicalBlock(scope: !4604, file: !3, line: 774, column: 6)
!4623 = !DILocation(line: 774, column: 6, scope: !4604)
!4624 = !DILocation(line: 775, column: 3, scope: !4622)
!4625 = !DILocation(line: 776, column: 6, scope: !4626)
!4626 = distinct !DILexicalBlock(scope: !4604, file: !3, line: 776, column: 6)
!4627 = !DILocation(line: 776, column: 13, scope: !4626)
!4628 = !DILocation(line: 776, column: 6, scope: !4604)
!4629 = !DILocation(line: 777, column: 15, scope: !4630)
!4630 = distinct !DILexicalBlock(scope: !4626, file: !3, line: 776, column: 16)
!4631 = !DILocation(line: 777, column: 22, scope: !4630)
!4632 = !DILocation(line: 777, column: 3, scope: !4630)
!4633 = !DILocation(line: 778, column: 3, scope: !4630)
!4634 = !DILocation(line: 779, column: 26, scope: !4630)
!4635 = !DILocation(line: 779, column: 3, scope: !4630)
!4636 = !DILocation(line: 780, column: 3, scope: !4630)
!4637 = !DILocation(line: 781, column: 2, scope: !4630)
!4638 = !DILocation(line: 784, column: 2, scope: !4610)
!4639 = !DILocation(line: 784, column: 2, scope: !4611)
!4640 = !DILocation(line: 784, column: 2, scope: !4613)
!4641 = !DILocation(line: 784, column: 2, scope: !4616)
!4642 = !DILocation(line: 785, column: 23, scope: !4616)
!4643 = !DILocation(line: 785, column: 3, scope: !4616)
!4644 = !DILocation(line: 784, column: 2, scope: !4615)
!4645 = distinct !{!4645, !4639, !4646, !4412, !4413}
!4646 = !DILocation(line: 785, column: 24, scope: !4611)
!4647 = !DILocation(line: 787, column: 6, scope: !4604)
!4648 = !DILocation(line: 787, column: 13, scope: !4604)
!4649 = !DILocation(line: 787, column: 4, scope: !4604)
!4650 = !DILocation(line: 788, column: 6, scope: !4651)
!4651 = distinct !DILexicalBlock(scope: !4604, file: !3, line: 788, column: 6)
!4652 = !DILocation(line: 788, column: 6, scope: !4604)
!4653 = !DILocation(line: 789, column: 15, scope: !4654)
!4654 = distinct !DILexicalBlock(scope: !4651, file: !3, line: 788, column: 9)
!4655 = !DILocation(line: 789, column: 18, scope: !4654)
!4656 = !DILocation(line: 789, column: 3, scope: !4654)
!4657 = !DILocation(line: 790, column: 13, scope: !4654)
!4658 = !DILocation(line: 790, column: 20, scope: !4654)
!4659 = !DILocation(line: 790, column: 3, scope: !4654)
!4660 = !DILocation(line: 791, column: 17, scope: !4654)
!4661 = !DILocation(line: 791, column: 20, scope: !4654)
!4662 = !DILocation(line: 791, column: 3, scope: !4654)
!4663 = !DILocation(line: 792, column: 2, scope: !4654)
!4664 = !DILocation(line: 793, column: 8, scope: !4604)
!4665 = !DILocation(line: 793, column: 15, scope: !4604)
!4666 = !DILocation(line: 793, column: 2, scope: !4604)
!4667 = !DILocation(line: 794, column: 6, scope: !4668)
!4668 = distinct !DILexicalBlock(scope: !4604, file: !3, line: 794, column: 6)
!4669 = !DILocation(line: 794, column: 13, scope: !4668)
!4670 = !DILocation(line: 794, column: 6, scope: !4604)
!4671 = !DILocation(line: 795, column: 3, scope: !4668)
!4672 = !DILocation(line: 795, column: 10, scope: !4668)
!4673 = !DILocation(line: 795, column: 23, scope: !4668)
!4674 = !DILocation(line: 796, column: 8, scope: !4604)
!4675 = !DILocation(line: 796, column: 2, scope: !4604)
!4676 = !DILocation(line: 797, column: 1, scope: !4604)
!4677 = distinct !DISubprogram(name: "snd_info_done", scope: !3, file: !3, line: 483, type: !3965, scopeLine: 484, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10)
!4678 = !DILocation(line: 485, column: 22, scope: !4677)
!4679 = !DILocation(line: 485, column: 2, scope: !4677)
!4680 = !DILocation(line: 486, column: 2, scope: !4677)
!4681 = distinct !DISubprogram(name: "snd_info_card_create", scope: !3, file: !3, line: 501, type: !4682, scopeLine: 502, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !5092)
!4682 = !DISubroutineType(types: !4683)
!4683 = !{!6, !4684}
!4684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4685, size: 64)
!4685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_card", file: !4259, line: 80, size: 12288, elements: !4686)
!4686 = !{!4687, !4688, !4689, !4690, !4691, !4695, !4696, !4697, !4701, !4702, !4703, !4707, !4708, !5058, !5059, !5060, !5061, !5062, !5063, !5064, !5065, !5066, !5067, !5068, !5069, !5070, !5071, !5074, !5075, !5076, !5077, !5078, !5079, !5081, !5082, !5083, !5084, !5085, !5086, !5087, !5088, !5089, !5090, !5091}
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4685, file: !4259, line: 81, baseType: !6, size: 32)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4685, file: !4259, line: 84, baseType: !2374, size: 128, offset: 32)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4685, file: !4259, line: 85, baseType: !2374, size: 128, offset: 160)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "shortname", scope: !4685, file: !4259, line: 86, baseType: !3205, size: 256, offset: 288)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "longname", scope: !4685, file: !4259, line: 87, baseType: !4692, size: 640, offset: 544)
!4692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 640, elements: !4693)
!4693 = !{!4694}
!4694 = !DISubrange(count: 80)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "irq_descr", scope: !4685, file: !4259, line: 88, baseType: !3205, size: 256, offset: 1184)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "mixername", scope: !4685, file: !4259, line: 89, baseType: !4692, size: 640, offset: 1440)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "components", scope: !4685, file: !4259, line: 90, baseType: !4698, size: 1024, offset: 2080)
!4698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 1024, elements: !4699)
!4699 = !{!4700}
!4700 = !DISubrange(count: 128)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !4685, file: !4259, line: 92, baseType: !164, size: 64, offset: 3136)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !4685, file: !4259, line: 94, baseType: !163, size: 64, offset: 3200)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "private_free", scope: !4685, file: !4259, line: 95, baseType: !4704, size: 64, offset: 3264)
!4704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4705, size: 64)
!4705 = !DISubroutineType(types: !4706)
!4706 = !{null, !4684}
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !4685, file: !4259, line: 97, baseType: !169, size: 128, offset: 3328)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_dev", scope: !4685, file: !4259, line: 99, baseType: !4709, size: 64, offset: 3456)
!4709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4710, size: 64)
!4710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !101, line: 705, size: 5824, elements: !4711)
!4711 = !{!4712, !4713, !4714, !4717, !4718, !4771, !4841, !4842, !4843, !4844, !4845, !4852, !4944, !4957, !4967, !4971, !4973, !4974, !4975, !4979, !4986, !4987, !4990, !4993, !4997, !5000, !5001, !5002, !5003, !5004, !5005, !5035, !5036, !5037, !5040, !5043, !5052, !5053, !5054, !5055, !5056, !5057}
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4710, file: !101, line: 706, baseType: !183, size: 512)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4710, file: !101, line: 707, baseType: !4709, size: 64, offset: 512)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4710, file: !101, line: 709, baseType: !4715, size: 64, offset: 576)
!4715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4716, size: 64)
!4716 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !101, line: 37, flags: DIFlagFwdDecl)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4710, file: !101, line: 711, baseType: !7, size: 64, offset: 640)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4710, file: !101, line: 712, baseType: !4719, size: 64, offset: 704)
!4719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4720, size: 64)
!4720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4721)
!4721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !101, line: 89, size: 384, elements: !4722)
!4722 = !{!4723, !4724, !4725, !4731, !4736, !4740}
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4721, file: !101, line: 90, baseType: !7, size: 64)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4721, file: !101, line: 91, baseType: !318, size: 64, offset: 64)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4721, file: !101, line: 92, baseType: !4726, size: 64, offset: 128)
!4726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4727, size: 64)
!4727 = !DISubroutineType(types: !4728)
!4728 = !{!6, !4729, !261}
!4729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4730, size: 64)
!4730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4710)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4721, file: !101, line: 93, baseType: !4732, size: 64, offset: 192)
!4732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4733, size: 64)
!4733 = !DISubroutineType(types: !4734)
!4734 = !{!266, !4729, !4735, !3748, !3749}
!4735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4721, file: !101, line: 95, baseType: !4737, size: 64, offset: 256)
!4737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4738, size: 64)
!4738 = !DISubroutineType(types: !4739)
!4739 = !{null, !4709}
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4721, file: !101, line: 97, baseType: !4741, size: 64, offset: 320)
!4741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4742, size: 64)
!4742 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4743)
!4743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !108, line: 286, size: 1472, elements: !4744)
!4744 = !{!4745, !4749, !4750, !4751, !4752, !4753, !4754, !4755, !4756, !4757, !4758, !4759, !4760, !4761, !4762, !4763, !4764, !4765, !4766, !4767, !4768, !4769, !4770}
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4743, file: !108, line: 287, baseType: !4746, size: 64)
!4746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4747, size: 64)
!4747 = !DISubroutineType(types: !4748)
!4748 = !{!6, !4709}
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4743, file: !108, line: 288, baseType: !4737, size: 64, offset: 64)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4743, file: !108, line: 289, baseType: !4746, size: 64, offset: 128)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4743, file: !108, line: 290, baseType: !4746, size: 64, offset: 192)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4743, file: !108, line: 291, baseType: !4746, size: 64, offset: 256)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4743, file: !108, line: 292, baseType: !4746, size: 64, offset: 320)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4743, file: !108, line: 293, baseType: !4746, size: 64, offset: 384)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4743, file: !108, line: 294, baseType: !4746, size: 64, offset: 448)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4743, file: !108, line: 295, baseType: !4746, size: 64, offset: 512)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4743, file: !108, line: 296, baseType: !4746, size: 64, offset: 576)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4743, file: !108, line: 297, baseType: !4746, size: 64, offset: 640)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4743, file: !108, line: 298, baseType: !4746, size: 64, offset: 704)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4743, file: !108, line: 299, baseType: !4746, size: 64, offset: 768)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4743, file: !108, line: 300, baseType: !4746, size: 64, offset: 832)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4743, file: !108, line: 301, baseType: !4746, size: 64, offset: 896)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4743, file: !108, line: 302, baseType: !4746, size: 64, offset: 960)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4743, file: !108, line: 303, baseType: !4746, size: 64, offset: 1024)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4743, file: !108, line: 304, baseType: !4746, size: 64, offset: 1088)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4743, file: !108, line: 305, baseType: !4746, size: 64, offset: 1152)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4743, file: !108, line: 306, baseType: !4746, size: 64, offset: 1216)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4743, file: !108, line: 307, baseType: !4746, size: 64, offset: 1280)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4743, file: !108, line: 308, baseType: !4746, size: 64, offset: 1344)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4743, file: !108, line: 309, baseType: !4746, size: 64, offset: 1408)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4710, file: !101, line: 714, baseType: !4772, size: 64, offset: 768)
!4772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4773, size: 64)
!4773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4774)
!4774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4775, line: 80, size: 1344, elements: !4776)
!4775 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4776 = !{!4777, !4778, !4779, !4780, !4781, !4782, !4823, !4824, !4825, !4826, !4827, !4828, !4829, !4830, !4831, !4832, !4833, !4834, !4835, !4836, !4840}
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4774, file: !4775, line: 81, baseType: !7, size: 64)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4774, file: !4775, line: 82, baseType: !7, size: 64, offset: 64)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4774, file: !4775, line: 83, baseType: !318, size: 64, offset: 128)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4774, file: !4775, line: 84, baseType: !318, size: 64, offset: 192)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4774, file: !4775, line: 85, baseType: !318, size: 64, offset: 256)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4774, file: !4775, line: 87, baseType: !4783, size: 64, offset: 320)
!4783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4784, size: 64)
!4784 = !DISubroutineType(types: !4785)
!4785 = !{!6, !4709, !4786}
!4786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4787, size: 64)
!4787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !95, line: 96, size: 1152, elements: !4788)
!4788 = !{!4789, !4790, !4791, !4792, !4793, !4794, !4795, !4799, !4803, !4804, !4805, !4806, !4807, !4815, !4816, !4817, !4818, !4819, !4820}
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4787, file: !95, line: 97, baseType: !7, size: 64)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4787, file: !95, line: 98, baseType: !4772, size: 64, offset: 64)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4787, file: !95, line: 100, baseType: !164, size: 64, offset: 128)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4787, file: !95, line: 101, baseType: !7, size: 64, offset: 192)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4787, file: !95, line: 103, baseType: !877, size: 8, offset: 256)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4787, file: !95, line: 104, baseType: !94, size: 32, offset: 288)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4787, file: !95, line: 106, baseType: !4796, size: 64, offset: 320)
!4796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4797, size: 64)
!4797 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4798)
!4798 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !95, line: 106, flags: DIFlagFwdDecl)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4787, file: !95, line: 107, baseType: !4800, size: 64, offset: 384)
!4800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4801, size: 64)
!4801 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4802)
!4802 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !95, line: 107, flags: DIFlagFwdDecl)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4787, file: !95, line: 109, baseType: !4746, size: 64, offset: 448)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4787, file: !95, line: 110, baseType: !4737, size: 64, offset: 512)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4787, file: !95, line: 111, baseType: !4746, size: 64, offset: 576)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4787, file: !95, line: 112, baseType: !4737, size: 64, offset: 640)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4787, file: !95, line: 113, baseType: !4808, size: 64, offset: 704)
!4808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4809, size: 64)
!4809 = !DISubroutineType(types: !4810)
!4810 = !{!6, !4709, !4811}
!4811 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !108, line: 60, baseType: !4812)
!4812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !108, line: 58, size: 32, elements: !4813)
!4813 = !{!4814}
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4812, file: !108, line: 59, baseType: !6, size: 32)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4787, file: !95, line: 114, baseType: !4746, size: 64, offset: 768)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4787, file: !95, line: 115, baseType: !318, size: 64, offset: 832)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4787, file: !95, line: 116, baseType: !318, size: 64, offset: 896)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4787, file: !95, line: 118, baseType: !4741, size: 64, offset: 960)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4787, file: !95, line: 119, baseType: !4737, size: 64, offset: 1024)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4787, file: !95, line: 121, baseType: !4821, size: 64, offset: 1088)
!4821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4822, size: 64)
!4822 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !95, line: 121, flags: DIFlagFwdDecl)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4774, file: !4775, line: 88, baseType: !4726, size: 64, offset: 384)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4774, file: !4775, line: 89, baseType: !4746, size: 64, offset: 448)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4774, file: !4775, line: 90, baseType: !4737, size: 64, offset: 512)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4774, file: !4775, line: 91, baseType: !4737, size: 64, offset: 576)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4774, file: !4775, line: 92, baseType: !4737, size: 64, offset: 640)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4774, file: !4775, line: 94, baseType: !4746, size: 64, offset: 704)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4774, file: !4775, line: 95, baseType: !4746, size: 64, offset: 768)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4774, file: !4775, line: 97, baseType: !4808, size: 64, offset: 832)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4774, file: !4775, line: 98, baseType: !4746, size: 64, offset: 896)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4774, file: !4775, line: 100, baseType: !4746, size: 64, offset: 960)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4774, file: !4775, line: 102, baseType: !4746, size: 64, offset: 1024)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4774, file: !4775, line: 103, baseType: !4737, size: 64, offset: 1088)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4774, file: !4775, line: 105, baseType: !4741, size: 64, offset: 1152)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4774, file: !4775, line: 107, baseType: !4837, size: 64, offset: 1216)
!4837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4838, size: 64)
!4838 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4839)
!4839 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4775, line: 107, flags: DIFlagFwdDecl)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4774, file: !4775, line: 109, baseType: !877, size: 8, offset: 1280)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4710, file: !101, line: 715, baseType: !4786, size: 64, offset: 832)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4710, file: !101, line: 717, baseType: !163, size: 64, offset: 896)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4710, file: !101, line: 719, baseType: !163, size: 64, offset: 960)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4710, file: !101, line: 721, baseType: !630, size: 256, offset: 1024)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4710, file: !101, line: 725, baseType: !4846, size: 448, offset: 1280)
!4846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !101, line: 517, size: 448, elements: !4847)
!4847 = !{!4848, !4849, !4850, !4851}
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4846, file: !101, line: 518, baseType: !169, size: 128)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4846, file: !101, line: 519, baseType: !169, size: 128, offset: 128)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4846, file: !101, line: 520, baseType: !169, size: 128, offset: 256)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4846, file: !101, line: 521, baseType: !100, size: 32, offset: 384)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4710, file: !101, line: 726, baseType: !4853, size: 2496, offset: 1728)
!4853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !108, line: 663, size: 2496, elements: !4854)
!4854 = !{!4855, !4856, !4857, !4858, !4859, !4860, !4861, !4862, !4863, !4864, !4865, !4866, !4867, !4868, !4869, !4870, !4897, !4898, !4899, !4900, !4901, !4902, !4903, !4904, !4905, !4906, !4907, !4908, !4909, !4910, !4911, !4912, !4913, !4914, !4915, !4916, !4917, !4918, !4919, !4920, !4921, !4922, !4923, !4924, !4925, !4926, !4927, !4928, !4929, !4930, !4931, !4937, !4941}
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4853, file: !108, line: 664, baseType: !4811, size: 32)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4853, file: !108, line: 665, baseType: !14, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4853, file: !108, line: 666, baseType: !14, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4853, file: !108, line: 667, baseType: !877, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4853, file: !108, line: 668, baseType: !877, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4853, file: !108, line: 669, baseType: !877, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4853, file: !108, line: 670, baseType: !877, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4853, file: !108, line: 671, baseType: !877, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4853, file: !108, line: 672, baseType: !877, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4853, file: !108, line: 673, baseType: !877, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4853, file: !108, line: 674, baseType: !877, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4853, file: !108, line: 675, baseType: !415, size: 32, offset: 64)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4853, file: !108, line: 676, baseType: !196, size: 32, offset: 96)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4853, file: !108, line: 678, baseType: !169, size: 128, offset: 128)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4853, file: !108, line: 679, baseType: !1448, size: 256, offset: 256)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4853, file: !108, line: 680, baseType: !4871, size: 64, offset: 512)
!4871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4872, size: 64)
!4872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4873, line: 43, size: 1536, elements: !4874)
!4873 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4874 = !{!4875, !4876, !4877, !4878, !4879, !4882, !4883, !4884, !4885, !4886, !4887, !4888, !4889, !4890, !4891, !4892, !4893, !4894, !4895, !4896}
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4872, file: !4873, line: 44, baseType: !7, size: 64)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4872, file: !4873, line: 45, baseType: !6, size: 32, offset: 64)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4872, file: !4873, line: 46, baseType: !169, size: 128, offset: 128)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4872, file: !4873, line: 47, baseType: !196, size: 32, offset: 256)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4872, file: !4873, line: 48, baseType: !4880, size: 64, offset: 320)
!4880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4881, size: 64)
!4881 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !108, line: 629, flags: DIFlagFwdDecl)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4872, file: !4873, line: 49, baseType: !2943, size: 320, offset: 384)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4872, file: !4873, line: 50, baseType: !316, size: 64, offset: 704)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4872, file: !4873, line: 51, baseType: !2062, size: 64, offset: 768)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4872, file: !4873, line: 52, baseType: !2062, size: 64, offset: 832)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4872, file: !4873, line: 53, baseType: !2062, size: 64, offset: 896)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4872, file: !4873, line: 54, baseType: !2062, size: 64, offset: 960)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4872, file: !4873, line: 55, baseType: !2062, size: 64, offset: 1024)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4872, file: !4873, line: 56, baseType: !316, size: 64, offset: 1088)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4872, file: !4873, line: 57, baseType: !316, size: 64, offset: 1152)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4872, file: !4873, line: 58, baseType: !316, size: 64, offset: 1216)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4872, file: !4873, line: 59, baseType: !316, size: 64, offset: 1280)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4872, file: !4873, line: 60, baseType: !316, size: 64, offset: 1344)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4872, file: !4873, line: 61, baseType: !4709, size: 64, offset: 1408)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4872, file: !4873, line: 62, baseType: !877, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4872, file: !4873, line: 63, baseType: !877, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4853, file: !108, line: 681, baseType: !877, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4853, file: !108, line: 682, baseType: !877, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4853, file: !108, line: 683, baseType: !877, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4853, file: !108, line: 684, baseType: !14, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4853, file: !108, line: 685, baseType: !14, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4853, file: !108, line: 690, baseType: !2054, size: 512, offset: 640)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4853, file: !108, line: 691, baseType: !419, size: 64, offset: 1152)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4853, file: !108, line: 692, baseType: !1255, size: 256, offset: 1216)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4853, file: !108, line: 693, baseType: !746, size: 192, offset: 1472)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4853, file: !108, line: 694, baseType: !4880, size: 64, offset: 1664)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4853, file: !108, line: 695, baseType: !216, size: 32, offset: 1728)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4853, file: !108, line: 696, baseType: !216, size: 32, offset: 1760)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4853, file: !108, line: 697, baseType: !14, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4853, file: !108, line: 698, baseType: !14, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4853, file: !108, line: 699, baseType: !14, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4853, file: !108, line: 700, baseType: !14, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4853, file: !108, line: 701, baseType: !14, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4853, file: !108, line: 702, baseType: !14, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4853, file: !108, line: 703, baseType: !877, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4853, file: !108, line: 704, baseType: !14, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4853, file: !108, line: 705, baseType: !14, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4853, file: !108, line: 706, baseType: !14, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4853, file: !108, line: 707, baseType: !14, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4853, file: !108, line: 708, baseType: !14, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4853, file: !108, line: 709, baseType: !14, size: 32, offset: 1824)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4853, file: !108, line: 710, baseType: !107, size: 32, offset: 1856)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4853, file: !108, line: 711, baseType: !115, size: 32, offset: 1888)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4853, file: !108, line: 712, baseType: !115, size: 32, offset: 1920)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4853, file: !108, line: 713, baseType: !6, size: 32, offset: 1952)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4853, file: !108, line: 714, baseType: !6, size: 32, offset: 1984)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4853, file: !108, line: 715, baseType: !419, size: 64, offset: 2048)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4853, file: !108, line: 716, baseType: !419, size: 64, offset: 2112)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4853, file: !108, line: 717, baseType: !419, size: 64, offset: 2176)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4853, file: !108, line: 718, baseType: !419, size: 64, offset: 2240)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4853, file: !108, line: 720, baseType: !4932, size: 64, offset: 2304)
!4932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4933, size: 64)
!4933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !108, line: 632, size: 64, elements: !4934)
!4934 = !{!4935, !4936}
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4933, file: !108, line: 633, baseType: !196, size: 32)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4933, file: !108, line: 634, baseType: !14, size: 32, offset: 32)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4853, file: !108, line: 721, baseType: !4938, size: 64, offset: 2368)
!4938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4939, size: 64)
!4939 = !DISubroutineType(types: !4940)
!4940 = !{null, !4709, !803}
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4853, file: !108, line: 722, baseType: !4942, size: 64, offset: 2432)
!4942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4943, size: 64)
!4943 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !108, line: 722, flags: DIFlagFwdDecl)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4710, file: !101, line: 727, baseType: !4945, size: 64, offset: 4224)
!4945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4946, size: 64)
!4946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !108, line: 742, size: 1792, elements: !4947)
!4947 = !{!4948, !4949, !4950, !4954, !4955, !4956}
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4946, file: !108, line: 743, baseType: !4743, size: 1472)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4946, file: !108, line: 744, baseType: !4746, size: 64, offset: 1472)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4946, file: !108, line: 745, baseType: !4951, size: 64, offset: 1536)
!4951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4952, size: 64)
!4952 = !DISubroutineType(types: !4953)
!4953 = !{null, !4709, !877}
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4946, file: !108, line: 746, baseType: !4746, size: 64, offset: 1600)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4946, file: !108, line: 747, baseType: !4737, size: 64, offset: 1664)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4946, file: !108, line: 748, baseType: !4737, size: 64, offset: 1728)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4710, file: !101, line: 736, baseType: !4958, size: 128, offset: 4288)
!4958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !101, line: 529, size: 128, elements: !4959)
!4959 = !{!4960, !4964}
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4958, file: !101, line: 531, baseType: !4961, size: 64)
!4961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4962, size: 64)
!4962 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4963, line: 13, flags: DIFlagFwdDecl)
!4963 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4958, file: !101, line: 532, baseType: !4965, size: 64, offset: 64)
!4965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4966, size: 64)
!4966 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !101, line: 49, flags: DIFlagFwdDecl)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4710, file: !101, line: 738, baseType: !4968, size: 64, offset: 4416)
!4968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4969, size: 64)
!4969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4970)
!4970 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !101, line: 738, flags: DIFlagFwdDecl)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4710, file: !101, line: 740, baseType: !4972, size: 64, offset: 4480)
!4972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4710, file: !101, line: 741, baseType: !419, size: 64, offset: 4544)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4710, file: !101, line: 746, baseType: !419, size: 64, offset: 4608)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4710, file: !101, line: 747, baseType: !4976, size: 64, offset: 4672)
!4976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4977, size: 64)
!4977 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4978)
!4978 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !101, line: 747, flags: DIFlagFwdDecl)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4710, file: !101, line: 749, baseType: !4980, size: 64, offset: 4736)
!4980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4981, size: 64)
!4981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !101, line: 428, size: 128, elements: !4982)
!4982 = !{!4983, !4984, !4985}
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4981, file: !101, line: 433, baseType: !14, size: 32)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4981, file: !101, line: 434, baseType: !14, size: 32, offset: 32)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4981, file: !101, line: 435, baseType: !316, size: 64, offset: 64)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4710, file: !101, line: 751, baseType: !169, size: 128, offset: 4800)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4710, file: !101, line: 762, baseType: !4988, size: 64, offset: 4928)
!4988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4989, size: 64)
!4989 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !101, line: 762, flags: DIFlagFwdDecl)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4710, file: !101, line: 770, baseType: !4991, offset: 4992)
!4991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4992, line: 5, elements: !549)
!4992 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4710, file: !101, line: 772, baseType: !4994, size: 64, offset: 4992)
!4994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4995, size: 64)
!4995 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4996, line: 18, flags: DIFlagFwdDecl)
!4996 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4710, file: !101, line: 773, baseType: !4998, size: 64, offset: 5056)
!4998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4999, size: 64)
!4999 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4775, line: 22, flags: DIFlagFwdDecl)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4710, file: !101, line: 776, baseType: !6, size: 32, offset: 5120)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4710, file: !101, line: 778, baseType: !502, size: 32, offset: 5152)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4710, file: !101, line: 779, baseType: !415, size: 32, offset: 5184)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4710, file: !101, line: 781, baseType: !196, size: 32, offset: 5216)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4710, file: !101, line: 782, baseType: !169, size: 128, offset: 5248)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4710, file: !101, line: 784, baseType: !5006, size: 64, offset: 5376)
!5006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5007, size: 64)
!5007 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5008)
!5008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !5009, line: 52, size: 768, elements: !5010)
!5009 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!5010 = !{!5011, !5012, !5013, !5014, !5015, !5019, !5023, !5024, !5025, !5026, !5030, !5034}
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5008, file: !5009, line: 53, baseType: !7, size: 64)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !5008, file: !5009, line: 55, baseType: !318, size: 64, offset: 64)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !5008, file: !5009, line: 56, baseType: !318, size: 64, offset: 128)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !5008, file: !5009, line: 58, baseType: !4726, size: 64, offset: 192)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !5008, file: !5009, line: 59, baseType: !5016, size: 64, offset: 256)
!5016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5017, size: 64)
!5017 = !DISubroutineType(types: !5018)
!5018 = !{!266, !4729, !4735}
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !5008, file: !5009, line: 61, baseType: !5020, size: 64, offset: 320)
!5020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5021, size: 64)
!5021 = !DISubroutineType(types: !5022)
!5022 = !{null, !5006}
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !5008, file: !5009, line: 62, baseType: !4737, size: 64, offset: 384)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !5008, file: !5009, line: 64, baseType: !4746, size: 64, offset: 448)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !5008, file: !5009, line: 66, baseType: !3716, size: 64, offset: 512)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !5008, file: !5009, line: 67, baseType: !5027, size: 64, offset: 576)
!5027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5028, size: 64)
!5028 = !DISubroutineType(types: !5029)
!5029 = !{!1216, !4729}
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !5008, file: !5009, line: 69, baseType: !5031, size: 64, offset: 640)
!5031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5032, size: 64)
!5032 = !DISubroutineType(types: !5033)
!5033 = !{null, !4729, !3748, !3749}
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !5008, file: !5009, line: 71, baseType: !4741, size: 64, offset: 704)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4710, file: !101, line: 785, baseType: !318, size: 64, offset: 5440)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4710, file: !101, line: 787, baseType: !4737, size: 64, offset: 5504)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4710, file: !101, line: 788, baseType: !5038, size: 64, offset: 5568)
!5038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5039, size: 64)
!5039 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !101, line: 46, flags: DIFlagFwdDecl)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4710, file: !101, line: 789, baseType: !5041, size: 64, offset: 5632)
!5041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5042, size: 64)
!5042 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !101, line: 48, flags: DIFlagFwdDecl)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4710, file: !101, line: 791, baseType: !5044, size: 64, offset: 5696)
!5044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5045, size: 64)
!5045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !101, line: 597, size: 128, elements: !5046)
!5046 = !{!5047, !5048, !5049, !5050, !5051}
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !5045, file: !101, line: 598, baseType: !122, size: 32)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !5045, file: !101, line: 599, baseType: !131, size: 32, offset: 32)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !5045, file: !101, line: 600, baseType: !136, size: 32, offset: 64)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !5045, file: !101, line: 601, baseType: !877, size: 8, offset: 96)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !5045, file: !101, line: 602, baseType: !877, size: 8, offset: 104)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4710, file: !101, line: 793, baseType: !141, size: 32, offset: 5760)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4710, file: !101, line: 795, baseType: !877, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4710, file: !101, line: 796, baseType: !877, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4710, file: !101, line: 797, baseType: !877, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4710, file: !101, line: 798, baseType: !877, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4710, file: !101, line: 799, baseType: !877, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "last_numid", scope: !4685, file: !4259, line: 100, baseType: !14, size: 32, offset: 3520)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "controls_rwsem", scope: !4685, file: !4259, line: 101, baseType: !818, size: 320, offset: 3584)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_files_rwlock", scope: !4685, file: !4259, line: 102, baseType: !708, size: 64, offset: 3904)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "controls_count", scope: !4685, file: !4259, line: 103, baseType: !6, size: 32, offset: 3968)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "user_ctl_alloc_size", scope: !4685, file: !4259, line: 104, baseType: !313, size: 64, offset: 4032)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "controls", scope: !4685, file: !4259, line: 105, baseType: !169, size: 128, offset: 4096)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_files", scope: !4685, file: !4259, line: 106, baseType: !169, size: 128, offset: 4224)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_numids", scope: !4685, file: !4259, line: 108, baseType: !3464, size: 128, offset: 4352)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_hash", scope: !4685, file: !4259, line: 109, baseType: !3464, size: 128, offset: 4480)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_hash_collision", scope: !4685, file: !4259, line: 110, baseType: !877, size: 8, offset: 4608)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "proc_root", scope: !4685, file: !4259, line: 113, baseType: !4182, size: 64, offset: 4672)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "proc_root_link", scope: !4685, file: !4259, line: 114, baseType: !4257, size: 64, offset: 4736)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "files_list", scope: !4685, file: !4259, line: 116, baseType: !169, size: 128, offset: 4800)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "s_f_ops", scope: !4685, file: !4259, line: 117, baseType: !5072, size: 64, offset: 4928)
!5072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5073, size: 64)
!5073 = !DICompositeType(tag: DW_TAG_structure_type, name: "snd_shutdown_f_ops", file: !4259, line: 117, flags: DIFlagFwdDecl)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "files_lock", scope: !4685, file: !4259, line: 119, baseType: !196, size: 32, offset: 4992)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4685, file: !4259, line: 120, baseType: !6, size: 32, offset: 5024)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "release_completion", scope: !4685, file: !4259, line: 121, baseType: !2332, size: 64, offset: 5056)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4685, file: !4259, line: 122, baseType: !4709, size: 64, offset: 5120)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "card_dev", scope: !4685, file: !4259, line: 123, baseType: !4710, size: 5824, offset: 5184)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4685, file: !4259, line: 124, baseType: !5080, size: 256, offset: 11008)
!5080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 256, elements: !742)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !4685, file: !4259, line: 125, baseType: !877, size: 8, offset: 11264)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "managed", scope: !4685, file: !4259, line: 126, baseType: !877, size: 8, offset: 11272)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "releasing", scope: !4685, file: !4259, line: 127, baseType: !877, size: 8, offset: 11280)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "sync_irq", scope: !4685, file: !4259, line: 128, baseType: !6, size: 32, offset: 11296)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "remove_sleep", scope: !4685, file: !4259, line: 129, baseType: !746, size: 192, offset: 11328)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "total_pcm_alloc_bytes", scope: !4685, file: !4259, line: 131, baseType: !313, size: 64, offset: 11520)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "memory_mutex", scope: !4685, file: !4259, line: 132, baseType: !630, size: 256, offset: 11584)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4685, file: !4259, line: 138, baseType: !14, size: 32, offset: 11840)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "power_ref", scope: !4685, file: !4259, line: 139, baseType: !216, size: 32, offset: 11872)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "power_sleep", scope: !4685, file: !4259, line: 140, baseType: !746, size: 192, offset: 11904)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "power_ref_sleep", scope: !4685, file: !4259, line: 141, baseType: !746, size: 192, offset: 12096)
!5092 = !{!5093, !5094, !5095, !5096}
!5093 = !DILocalVariable(name: "card", arg: 1, scope: !4681, file: !3, line: 501, type: !4684)
!5094 = !DILocalVariable(name: "str", scope: !4681, file: !3, line: 503, type: !2751)
!5095 = !DILocalVariable(name: "entry", scope: !4681, file: !3, line: 504, type: !4182)
!5096 = !DILocalVariable(name: "__ret_warn_on", scope: !5097, file: !3, line: 506, type: !6)
!5097 = distinct !DILexicalBlock(scope: !5098, file: !3, line: 506, column: 6)
!5098 = distinct !DILexicalBlock(scope: !4681, file: !3, line: 506, column: 6)
!5099 = !DILocation(line: 501, column: 43, scope: !4681)
!5100 = !DILocation(line: 503, column: 2, scope: !4681)
!5101 = !DILocation(line: 503, column: 7, scope: !4681)
!5102 = !DILocation(line: 504, column: 2, scope: !4681)
!5103 = !DILocation(line: 504, column: 25, scope: !4681)
!5104 = !DILocation(line: 506, column: 6, scope: !5097)
!5105 = !DILocation(line: 506, column: 6, scope: !5098)
!5106 = !DILocation(line: 506, column: 6, scope: !4681)
!5107 = !DILocation(line: 507, column: 3, scope: !5098)
!5108 = !DILocation(line: 509, column: 10, scope: !4681)
!5109 = !DILocation(line: 509, column: 25, scope: !4681)
!5110 = !DILocation(line: 509, column: 31, scope: !4681)
!5111 = !DILocation(line: 509, column: 2, scope: !4681)
!5112 = !DILocation(line: 510, column: 24, scope: !4681)
!5113 = !DILocation(line: 510, column: 30, scope: !4681)
!5114 = !DILocation(line: 510, column: 38, scope: !4681)
!5115 = !DILocation(line: 510, column: 10, scope: !4681)
!5116 = !DILocation(line: 510, column: 8, scope: !4681)
!5117 = !DILocation(line: 511, column: 7, scope: !5118)
!5118 = distinct !DILexicalBlock(scope: !4681, file: !3, line: 511, column: 6)
!5119 = !DILocation(line: 511, column: 6, scope: !4681)
!5120 = !DILocation(line: 512, column: 3, scope: !5118)
!5121 = !DILocation(line: 513, column: 20, scope: !4681)
!5122 = !DILocation(line: 513, column: 2, scope: !4681)
!5123 = !DILocation(line: 513, column: 8, scope: !4681)
!5124 = !DILocation(line: 513, column: 18, scope: !4681)
!5125 = !DILocation(line: 515, column: 30, scope: !4681)
!5126 = !DILocation(line: 515, column: 42, scope: !4681)
!5127 = !DILocation(line: 515, column: 9, scope: !4681)
!5128 = !DILocation(line: 515, column: 2, scope: !4681)
!5129 = !DILocation(line: 516, column: 1, scope: !4681)
!5130 = !DISubprogram(name: "sprintf", scope: !5131, file: !5131, line: 10, type: !5132, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5131 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!5132 = !DISubroutineType(types: !5133)
!5133 = !{!6, !266, !7, null}
!5134 = distinct !DISubprogram(name: "snd_card_ro_proc_new", scope: !4184, file: !4184, line: 205, type: !5135, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !5137)
!5135 = !DISubroutineType(types: !5136)
!5136 = !{!6, !4684, !7, !163, !4197}
!5137 = !{!5138, !5139, !5140, !5141}
!5138 = !DILocalVariable(name: "card", arg: 1, scope: !5134, file: !4184, line: 205, type: !4684)
!5139 = !DILocalVariable(name: "name", arg: 2, scope: !5134, file: !4184, line: 205, type: !7)
!5140 = !DILocalVariable(name: "private_data", arg: 3, scope: !5134, file: !4184, line: 206, type: !163)
!5141 = !DILocalVariable(name: "read", arg: 4, scope: !5134, file: !4184, line: 207, type: !4197)
!5142 = !DILocation(line: 205, column: 39, scope: !5134)
!5143 = !DILocation(line: 205, column: 57, scope: !5134)
!5144 = !DILocation(line: 206, column: 14, scope: !5134)
!5145 = !DILocation(line: 207, column: 15, scope: !5134)
!5146 = !DILocation(line: 210, column: 30, scope: !5134)
!5147 = !DILocation(line: 210, column: 36, scope: !5134)
!5148 = !DILocation(line: 210, column: 42, scope: !5134)
!5149 = !DILocation(line: 210, column: 56, scope: !5134)
!5150 = !DILocation(line: 210, column: 9, scope: !5134)
!5151 = !DILocation(line: 210, column: 2, scope: !5134)
!5152 = distinct !DISubprogram(name: "snd_card_id_read", scope: !3, file: !3, line: 489, type: !4198, scopeLine: 491, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !5153)
!5153 = !{!5154, !5155, !5156}
!5154 = !DILocalVariable(name: "entry", arg: 1, scope: !5152, file: !3, line: 489, type: !4182)
!5155 = !DILocalVariable(name: "buffer", arg: 2, scope: !5152, file: !3, line: 490, type: !4200)
!5156 = !DILocalVariable(name: "card", scope: !5152, file: !3, line: 492, type: !4684)
!5157 = !DILocation(line: 489, column: 53, scope: !5152)
!5158 = !DILocation(line: 490, column: 33, scope: !5152)
!5159 = !DILocation(line: 492, column: 2, scope: !5152)
!5160 = !DILocation(line: 492, column: 19, scope: !5152)
!5161 = !DILocation(line: 492, column: 26, scope: !5152)
!5162 = !DILocation(line: 492, column: 33, scope: !5152)
!5163 = !DILocation(line: 494, column: 2, scope: !5152)
!5164 = !DILocation(line: 495, column: 1, scope: !5152)
!5165 = distinct !DISubprogram(name: "snd_info_card_register", scope: !3, file: !3, line: 523, type: !4682, scopeLine: 524, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !5166)
!5166 = !{!5167, !5168, !5169, !5170}
!5167 = !DILocalVariable(name: "card", arg: 1, scope: !5165, file: !3, line: 523, type: !4684)
!5168 = !DILocalVariable(name: "p", scope: !5165, file: !3, line: 525, type: !4257)
!5169 = !DILocalVariable(name: "err", scope: !5165, file: !3, line: 526, type: !6)
!5170 = !DILocalVariable(name: "__ret_warn_on", scope: !5171, file: !3, line: 528, type: !6)
!5171 = distinct !DILexicalBlock(scope: !5172, file: !3, line: 528, column: 6)
!5172 = distinct !DILexicalBlock(scope: !5165, file: !3, line: 528, column: 6)
!5173 = !DILocation(line: 523, column: 45, scope: !5165)
!5174 = !DILocation(line: 525, column: 2, scope: !5165)
!5175 = !DILocation(line: 525, column: 25, scope: !5165)
!5176 = !DILocation(line: 526, column: 2, scope: !5165)
!5177 = !DILocation(line: 526, column: 6, scope: !5165)
!5178 = !DILocation(line: 528, column: 6, scope: !5171)
!5179 = !DILocation(line: 528, column: 6, scope: !5172)
!5180 = !DILocation(line: 528, column: 6, scope: !5165)
!5181 = !DILocation(line: 529, column: 3, scope: !5172)
!5182 = !DILocation(line: 531, column: 26, scope: !5165)
!5183 = !DILocation(line: 531, column: 32, scope: !5165)
!5184 = !DILocation(line: 531, column: 8, scope: !5165)
!5185 = !DILocation(line: 531, column: 6, scope: !5165)
!5186 = !DILocation(line: 532, column: 6, scope: !5187)
!5187 = distinct !DILexicalBlock(scope: !5165, file: !3, line: 532, column: 6)
!5188 = !DILocation(line: 532, column: 10, scope: !5187)
!5189 = !DILocation(line: 532, column: 6, scope: !5165)
!5190 = !DILocation(line: 533, column: 10, scope: !5187)
!5191 = !DILocation(line: 533, column: 3, scope: !5187)
!5192 = !DILocation(line: 535, column: 14, scope: !5193)
!5193 = distinct !DILexicalBlock(scope: !5165, file: !3, line: 535, column: 6)
!5194 = !DILocation(line: 535, column: 20, scope: !5193)
!5195 = !DILocation(line: 535, column: 24, scope: !5193)
!5196 = !DILocation(line: 535, column: 30, scope: !5193)
!5197 = !DILocation(line: 535, column: 41, scope: !5193)
!5198 = !DILocation(line: 535, column: 7, scope: !5193)
!5199 = !DILocation(line: 535, column: 6, scope: !5165)
!5200 = !DILocation(line: 536, column: 3, scope: !5193)
!5201 = !DILocation(line: 538, column: 6, scope: !5202)
!5202 = distinct !DILexicalBlock(scope: !5165, file: !3, line: 538, column: 6)
!5203 = !DILocation(line: 538, column: 12, scope: !5202)
!5204 = !DILocation(line: 538, column: 6, scope: !5165)
!5205 = !DILocation(line: 539, column: 3, scope: !5202)
!5206 = !DILocation(line: 540, column: 19, scope: !5165)
!5207 = !DILocation(line: 540, column: 25, scope: !5165)
!5208 = !DILocation(line: 540, column: 29, scope: !5165)
!5209 = !DILocation(line: 540, column: 44, scope: !5165)
!5210 = !DILocation(line: 540, column: 47, scope: !5165)
!5211 = !DILocation(line: 540, column: 53, scope: !5165)
!5212 = !DILocation(line: 540, column: 64, scope: !5165)
!5213 = !DILocation(line: 540, column: 6, scope: !5165)
!5214 = !DILocation(line: 540, column: 4, scope: !5165)
!5215 = !DILocation(line: 541, column: 7, scope: !5216)
!5216 = distinct !DILexicalBlock(scope: !5165, file: !3, line: 541, column: 6)
!5217 = !DILocation(line: 541, column: 6, scope: !5165)
!5218 = !DILocation(line: 542, column: 3, scope: !5216)
!5219 = !DILocation(line: 543, column: 25, scope: !5165)
!5220 = !DILocation(line: 543, column: 2, scope: !5165)
!5221 = !DILocation(line: 543, column: 8, scope: !5165)
!5222 = !DILocation(line: 543, column: 23, scope: !5165)
!5223 = !DILocation(line: 544, column: 2, scope: !5165)
!5224 = !DILocation(line: 545, column: 1, scope: !5165)
!5225 = distinct !DISubprogram(name: "snd_info_register", scope: !3, file: !3, line: 845, type: !5226, scopeLine: 846, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !5228)
!5226 = !DISubroutineType(types: !5227)
!5227 = !{!6, !4182}
!5228 = !{!5229, !5230, !5231, !5232, !5235}
!5229 = !DILocalVariable(name: "entry", arg: 1, scope: !5225, file: !3, line: 845, type: !4182)
!5230 = !DILocalVariable(name: "p", scope: !5225, file: !3, line: 847, type: !4182)
!5231 = !DILocalVariable(name: "err", scope: !5225, file: !3, line: 848, type: !6)
!5232 = !DILocalVariable(name: "__mptr", scope: !5233, file: !3, line: 856, type: !163)
!5233 = distinct !DILexicalBlock(scope: !5234, file: !3, line: 856, column: 2)
!5234 = distinct !DILexicalBlock(scope: !5225, file: !3, line: 856, column: 2)
!5235 = !DILocalVariable(name: "__mptr", scope: !5236, file: !3, line: 856, type: !163)
!5236 = distinct !DILexicalBlock(scope: !5237, file: !3, line: 856, column: 2)
!5237 = distinct !DILexicalBlock(scope: !5234, file: !3, line: 856, column: 2)
!5238 = !DILocation(line: 845, column: 46, scope: !5225)
!5239 = !DILocation(line: 847, column: 2, scope: !5225)
!5240 = !DILocation(line: 847, column: 25, scope: !5225)
!5241 = !DILocation(line: 848, column: 2, scope: !5225)
!5242 = !DILocation(line: 848, column: 6, scope: !5225)
!5243 = !DILocation(line: 850, column: 7, scope: !5244)
!5244 = distinct !DILexicalBlock(scope: !5225, file: !3, line: 850, column: 6)
!5245 = !DILocation(line: 850, column: 14, scope: !5244)
!5246 = !DILocation(line: 850, column: 6, scope: !5225)
!5247 = !DILocation(line: 851, column: 29, scope: !5248)
!5248 = distinct !DILexicalBlock(scope: !5244, file: !3, line: 850, column: 17)
!5249 = !DILocation(line: 851, column: 9, scope: !5248)
!5250 = !DILocation(line: 851, column: 7, scope: !5248)
!5251 = !DILocation(line: 852, column: 7, scope: !5252)
!5252 = distinct !DILexicalBlock(scope: !5248, file: !3, line: 852, column: 7)
!5253 = !DILocation(line: 852, column: 11, scope: !5252)
!5254 = !DILocation(line: 852, column: 7, scope: !5248)
!5255 = !DILocation(line: 853, column: 11, scope: !5252)
!5256 = !DILocation(line: 853, column: 4, scope: !5252)
!5257 = !DILocation(line: 854, column: 2, scope: !5248)
!5258 = !DILocation(line: 856, column: 2, scope: !5233)
!5259 = !DILocation(line: 856, column: 2, scope: !5234)
!5260 = !DILocation(line: 856, column: 2, scope: !5237)
!5261 = !DILocation(line: 857, column: 27, scope: !5262)
!5262 = distinct !DILexicalBlock(scope: !5237, file: !3, line: 856, column: 49)
!5263 = !DILocation(line: 857, column: 9, scope: !5262)
!5264 = !DILocation(line: 857, column: 7, scope: !5262)
!5265 = !DILocation(line: 858, column: 7, scope: !5266)
!5266 = distinct !DILexicalBlock(scope: !5262, file: !3, line: 858, column: 7)
!5267 = !DILocation(line: 858, column: 11, scope: !5266)
!5268 = !DILocation(line: 858, column: 7, scope: !5262)
!5269 = !DILocation(line: 859, column: 11, scope: !5266)
!5270 = !DILocation(line: 859, column: 4, scope: !5266)
!5271 = !DILocation(line: 860, column: 2, scope: !5262)
!5272 = !DILocation(line: 856, column: 2, scope: !5236)
!5273 = distinct !{!5273, !5259, !5274, !4412, !4413}
!5274 = !DILocation(line: 860, column: 2, scope: !5234)
!5275 = !DILocation(line: 862, column: 2, scope: !5225)
!5276 = !DILocation(line: 863, column: 1, scope: !5225)
!5277 = !DISubprogram(name: "proc_symlink", scope: !4353, file: !4353, line: 82, type: !5278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5278 = !DISubroutineType(types: !5279)
!5279 = !{!4257, !7, !4257, !7}
!5280 = distinct !DISubprogram(name: "snd_info_card_id_change", scope: !3, file: !3, line: 550, type: !4705, scopeLine: 551, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !5281)
!5281 = !{!5282}
!5282 = !DILocalVariable(name: "card", arg: 1, scope: !5280, file: !3, line: 550, type: !4684)
!5283 = !DILocation(line: 550, column: 47, scope: !5280)
!5284 = !DILocation(line: 552, column: 2, scope: !5280)
!5285 = !DILocation(line: 553, column: 6, scope: !5286)
!5286 = distinct !DILexicalBlock(scope: !5280, file: !3, line: 553, column: 6)
!5287 = !DILocation(line: 553, column: 12, scope: !5286)
!5288 = !DILocation(line: 553, column: 6, scope: !5280)
!5289 = !DILocation(line: 554, column: 15, scope: !5290)
!5290 = distinct !DILexicalBlock(scope: !5286, file: !3, line: 553, column: 28)
!5291 = !DILocation(line: 554, column: 21, scope: !5290)
!5292 = !DILocation(line: 554, column: 3, scope: !5290)
!5293 = !DILocation(line: 555, column: 3, scope: !5290)
!5294 = !DILocation(line: 555, column: 9, scope: !5290)
!5295 = !DILocation(line: 555, column: 24, scope: !5290)
!5296 = !DILocation(line: 556, column: 2, scope: !5290)
!5297 = !DILocation(line: 557, column: 13, scope: !5298)
!5298 = distinct !DILexicalBlock(scope: !5280, file: !3, line: 557, column: 6)
!5299 = !DILocation(line: 557, column: 19, scope: !5298)
!5300 = !DILocation(line: 557, column: 23, scope: !5298)
!5301 = !DILocation(line: 557, column: 29, scope: !5298)
!5302 = !DILocation(line: 557, column: 40, scope: !5298)
!5303 = !DILocation(line: 557, column: 6, scope: !5298)
!5304 = !DILocation(line: 557, column: 6, scope: !5280)
!5305 = !DILocation(line: 558, column: 39, scope: !5298)
!5306 = !DILocation(line: 558, column: 45, scope: !5298)
!5307 = !DILocation(line: 559, column: 11, scope: !5298)
!5308 = !DILocation(line: 559, column: 26, scope: !5298)
!5309 = !DILocation(line: 560, column: 11, scope: !5298)
!5310 = !DILocation(line: 560, column: 17, scope: !5298)
!5311 = !DILocation(line: 560, column: 28, scope: !5298)
!5312 = !DILocation(line: 558, column: 26, scope: !5298)
!5313 = !DILocation(line: 558, column: 3, scope: !5298)
!5314 = !DILocation(line: 558, column: 9, scope: !5298)
!5315 = !DILocation(line: 558, column: 24, scope: !5298)
!5316 = !DILocation(line: 561, column: 2, scope: !5280)
!5317 = !DILocation(line: 562, column: 1, scope: !5280)
!5318 = !DISubprogram(name: "mutex_lock", scope: !631, file: !631, line: 227, type: !5319, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5319 = !DISubroutineType(types: !5320)
!5320 = !{null, !5321}
!5321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!5322 = !DISubprogram(name: "proc_remove", scope: !4353, file: !4353, line: 124, type: !5323, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5323 = !DISubroutineType(types: !5324)
!5324 = !{null, !4257}
!5325 = !DISubprogram(name: "mutex_unlock", scope: !631, file: !631, line: 246, type: !5319, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5326 = distinct !DISubprogram(name: "snd_info_card_disconnect", scope: !3, file: !3, line: 568, type: !4705, scopeLine: 569, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !5327)
!5327 = !{!5328}
!5328 = !DILocalVariable(name: "card", arg: 1, scope: !5326, file: !3, line: 568, type: !4684)
!5329 = !DILocation(line: 568, column: 48, scope: !5326)
!5330 = !DILocation(line: 570, column: 7, scope: !5331)
!5331 = distinct !DILexicalBlock(scope: !5326, file: !3, line: 570, column: 6)
!5332 = !DILocation(line: 570, column: 6, scope: !5326)
!5333 = !DILocation(line: 571, column: 3, scope: !5331)
!5334 = !DILocation(line: 573, column: 14, scope: !5326)
!5335 = !DILocation(line: 573, column: 20, scope: !5326)
!5336 = !DILocation(line: 573, column: 2, scope: !5326)
!5337 = !DILocation(line: 574, column: 6, scope: !5338)
!5338 = distinct !DILexicalBlock(scope: !5326, file: !3, line: 574, column: 6)
!5339 = !DILocation(line: 574, column: 12, scope: !5338)
!5340 = !DILocation(line: 574, column: 6, scope: !5326)
!5341 = !DILocation(line: 575, column: 15, scope: !5338)
!5342 = !DILocation(line: 575, column: 21, scope: !5338)
!5343 = !DILocation(line: 575, column: 32, scope: !5338)
!5344 = !DILocation(line: 575, column: 3, scope: !5338)
!5345 = !DILocation(line: 577, column: 2, scope: !5326)
!5346 = !DILocation(line: 578, column: 6, scope: !5347)
!5347 = distinct !DILexicalBlock(scope: !5326, file: !3, line: 578, column: 6)
!5348 = !DILocation(line: 578, column: 12, scope: !5347)
!5349 = !DILocation(line: 578, column: 6, scope: !5326)
!5350 = !DILocation(line: 579, column: 26, scope: !5347)
!5351 = !DILocation(line: 579, column: 32, scope: !5347)
!5352 = !DILocation(line: 579, column: 3, scope: !5347)
!5353 = !DILocation(line: 580, column: 2, scope: !5326)
!5354 = !DILocation(line: 580, column: 8, scope: !5326)
!5355 = !DILocation(line: 580, column: 23, scope: !5326)
!5356 = !DILocation(line: 581, column: 2, scope: !5326)
!5357 = !DILocation(line: 581, column: 8, scope: !5326)
!5358 = !DILocation(line: 581, column: 18, scope: !5326)
!5359 = !DILocation(line: 582, column: 2, scope: !5326)
!5360 = !DILocation(line: 583, column: 1, scope: !5326)
!5361 = distinct !DISubprogram(name: "snd_info_clear_entries", scope: !3, file: !3, line: 753, type: !4254, scopeLine: 754, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !5362)
!5362 = !{!5363, !5364, !5365, !5368}
!5363 = !DILocalVariable(name: "entry", arg: 1, scope: !5361, file: !3, line: 753, type: !4182)
!5364 = !DILocalVariable(name: "p", scope: !5361, file: !3, line: 755, type: !4182)
!5365 = !DILocalVariable(name: "__mptr", scope: !5366, file: !3, line: 759, type: !163)
!5366 = distinct !DILexicalBlock(scope: !5367, file: !3, line: 759, column: 2)
!5367 = distinct !DILexicalBlock(scope: !5361, file: !3, line: 759, column: 2)
!5368 = !DILocalVariable(name: "__mptr", scope: !5369, file: !3, line: 759, type: !163)
!5369 = distinct !DILexicalBlock(scope: !5370, file: !3, line: 759, column: 2)
!5370 = distinct !DILexicalBlock(scope: !5367, file: !3, line: 759, column: 2)
!5371 = !DILocation(line: 753, column: 59, scope: !5361)
!5372 = !DILocation(line: 755, column: 2, scope: !5361)
!5373 = !DILocation(line: 755, column: 25, scope: !5361)
!5374 = !DILocation(line: 757, column: 7, scope: !5375)
!5375 = distinct !DILexicalBlock(scope: !5361, file: !3, line: 757, column: 6)
!5376 = !DILocation(line: 757, column: 14, scope: !5375)
!5377 = !DILocation(line: 757, column: 6, scope: !5361)
!5378 = !DILocation(line: 758, column: 3, scope: !5375)
!5379 = !DILocation(line: 759, column: 2, scope: !5366)
!5380 = !DILocation(line: 759, column: 2, scope: !5367)
!5381 = !DILocation(line: 759, column: 2, scope: !5370)
!5382 = !DILocation(line: 760, column: 26, scope: !5370)
!5383 = !DILocation(line: 760, column: 3, scope: !5370)
!5384 = !DILocation(line: 759, column: 2, scope: !5369)
!5385 = distinct !{!5385, !5380, !5386, !4412, !4413}
!5386 = !DILocation(line: 760, column: 27, scope: !5367)
!5387 = !DILocation(line: 761, column: 2, scope: !5361)
!5388 = !DILocation(line: 761, column: 9, scope: !5361)
!5389 = !DILocation(line: 761, column: 11, scope: !5361)
!5390 = !DILocation(line: 762, column: 1, scope: !5361)
!5391 = distinct !DISubprogram(name: "snd_info_card_free", scope: !3, file: !3, line: 589, type: !4682, scopeLine: 590, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !5392)
!5392 = !{!5393}
!5393 = !DILocalVariable(name: "card", arg: 1, scope: !5391, file: !3, line: 589, type: !4684)
!5394 = !DILocation(line: 589, column: 41, scope: !5391)
!5395 = !DILocation(line: 591, column: 7, scope: !5396)
!5396 = distinct !DILexicalBlock(scope: !5391, file: !3, line: 591, column: 6)
!5397 = !DILocation(line: 591, column: 6, scope: !5391)
!5398 = !DILocation(line: 592, column: 3, scope: !5396)
!5399 = !DILocation(line: 593, column: 22, scope: !5391)
!5400 = !DILocation(line: 593, column: 28, scope: !5391)
!5401 = !DILocation(line: 593, column: 2, scope: !5391)
!5402 = !DILocation(line: 594, column: 2, scope: !5391)
!5403 = !DILocation(line: 594, column: 8, scope: !5391)
!5404 = !DILocation(line: 594, column: 18, scope: !5391)
!5405 = !DILocation(line: 595, column: 2, scope: !5391)
!5406 = !DILocation(line: 596, column: 1, scope: !5391)
!5407 = distinct !DISubprogram(name: "snd_info_get_line", scope: !3, file: !3, line: 609, type: !5408, scopeLine: 610, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !5410)
!5408 = !DISubroutineType(types: !5409)
!5409 = !{!6, !4200, !266, !6}
!5410 = !{!5411, !5412, !5413, !5414, !5415}
!5411 = !DILocalVariable(name: "buffer", arg: 1, scope: !5407, file: !3, line: 609, type: !4200)
!5412 = !DILocalVariable(name: "line", arg: 2, scope: !5407, file: !3, line: 609, type: !266)
!5413 = !DILocalVariable(name: "len", arg: 3, scope: !5407, file: !3, line: 609, type: !6)
!5414 = !DILocalVariable(name: "c", scope: !5407, file: !3, line: 611, type: !6)
!5415 = !DILocalVariable(name: "__ret_warn_on", scope: !5416, file: !3, line: 613, type: !6)
!5416 = distinct !DILexicalBlock(scope: !5417, file: !3, line: 613, column: 6)
!5417 = distinct !DILexicalBlock(scope: !5407, file: !3, line: 613, column: 6)
!5418 = !DILocation(line: 609, column: 47, scope: !5407)
!5419 = !DILocation(line: 609, column: 61, scope: !5407)
!5420 = !DILocation(line: 609, column: 71, scope: !5407)
!5421 = !DILocation(line: 611, column: 2, scope: !5407)
!5422 = !DILocation(line: 611, column: 6, scope: !5407)
!5423 = !DILocation(line: 613, column: 6, scope: !5416)
!5424 = !DILocation(line: 613, column: 6, scope: !5417)
!5425 = !DILocation(line: 613, column: 6, scope: !5407)
!5426 = !DILocation(line: 614, column: 3, scope: !5417)
!5427 = !DILocation(line: 615, column: 7, scope: !5428)
!5428 = distinct !DILexicalBlock(scope: !5407, file: !3, line: 615, column: 6)
!5429 = !DILocation(line: 615, column: 15, scope: !5428)
!5430 = !DILocation(line: 615, column: 6, scope: !5407)
!5431 = !DILocation(line: 616, column: 3, scope: !5428)
!5432 = !DILocation(line: 617, column: 6, scope: !5433)
!5433 = distinct !DILexicalBlock(scope: !5407, file: !3, line: 617, column: 6)
!5434 = !DILocation(line: 617, column: 10, scope: !5433)
!5435 = !DILocation(line: 617, column: 15, scope: !5433)
!5436 = !DILocation(line: 617, column: 18, scope: !5433)
!5437 = !DILocation(line: 617, column: 26, scope: !5433)
!5438 = !DILocation(line: 617, column: 31, scope: !5433)
!5439 = !DILocation(line: 617, column: 34, scope: !5433)
!5440 = !DILocation(line: 617, column: 42, scope: !5433)
!5441 = !DILocation(line: 617, column: 6, scope: !5407)
!5442 = !DILocation(line: 618, column: 3, scope: !5433)
!5443 = !DILocation(line: 619, column: 2, scope: !5407)
!5444 = !DILocation(line: 619, column: 10, scope: !5407)
!5445 = !DILocation(line: 619, column: 18, scope: !5407)
!5446 = !DILocation(line: 619, column: 9, scope: !5407)
!5447 = !DILocation(line: 620, column: 7, scope: !5448)
!5448 = distinct !DILexicalBlock(scope: !5407, file: !3, line: 619, column: 24)
!5449 = !DILocation(line: 620, column: 15, scope: !5448)
!5450 = !DILocation(line: 620, column: 22, scope: !5448)
!5451 = !DILocation(line: 620, column: 30, scope: !5448)
!5452 = !DILocation(line: 620, column: 34, scope: !5448)
!5453 = !DILocation(line: 620, column: 5, scope: !5448)
!5454 = !DILocation(line: 621, column: 7, scope: !5455)
!5455 = distinct !DILexicalBlock(scope: !5448, file: !3, line: 621, column: 7)
!5456 = !DILocation(line: 621, column: 15, scope: !5455)
!5457 = !DILocation(line: 621, column: 23, scope: !5455)
!5458 = !DILocation(line: 621, column: 31, scope: !5455)
!5459 = !DILocation(line: 621, column: 20, scope: !5455)
!5460 = !DILocation(line: 621, column: 7, scope: !5448)
!5461 = !DILocation(line: 622, column: 4, scope: !5455)
!5462 = !DILocation(line: 622, column: 12, scope: !5455)
!5463 = !DILocation(line: 622, column: 17, scope: !5455)
!5464 = !DILocation(line: 623, column: 7, scope: !5465)
!5465 = distinct !DILexicalBlock(scope: !5448, file: !3, line: 623, column: 7)
!5466 = !DILocation(line: 623, column: 9, scope: !5465)
!5467 = !DILocation(line: 623, column: 7, scope: !5448)
!5468 = !DILocation(line: 624, column: 4, scope: !5465)
!5469 = !DILocation(line: 625, column: 7, scope: !5470)
!5470 = distinct !DILexicalBlock(scope: !5448, file: !3, line: 625, column: 7)
!5471 = !DILocation(line: 625, column: 11, scope: !5470)
!5472 = !DILocation(line: 625, column: 7, scope: !5448)
!5473 = !DILocation(line: 626, column: 7, scope: !5474)
!5474 = distinct !DILexicalBlock(scope: !5470, file: !3, line: 625, column: 16)
!5475 = !DILocation(line: 627, column: 14, scope: !5474)
!5476 = !DILocation(line: 627, column: 9, scope: !5474)
!5477 = !DILocation(line: 627, column: 12, scope: !5474)
!5478 = !DILocation(line: 628, column: 3, scope: !5474)
!5479 = distinct !{!5479, !5443, !5480, !4412, !4413}
!5480 = !DILocation(line: 629, column: 2, scope: !5407)
!5481 = !DILocation(line: 630, column: 3, scope: !5407)
!5482 = !DILocation(line: 630, column: 8, scope: !5407)
!5483 = !DILocation(line: 631, column: 2, scope: !5407)
!5484 = !DILocation(line: 632, column: 1, scope: !5407)
!5485 = distinct !DISubprogram(name: "snd_info_get_str", scope: !3, file: !3, line: 647, type: !5486, scopeLine: 648, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !5488)
!5486 = !DISubroutineType(types: !5487)
!5487 = !{!7, !266, !7, !6}
!5488 = !{!5489, !5490, !5491, !5492}
!5489 = !DILocalVariable(name: "dest", arg: 1, scope: !5485, file: !3, line: 647, type: !266)
!5490 = !DILocalVariable(name: "src", arg: 2, scope: !5485, file: !3, line: 647, type: !7)
!5491 = !DILocalVariable(name: "len", arg: 3, scope: !5485, file: !3, line: 647, type: !6)
!5492 = !DILocalVariable(name: "c", scope: !5485, file: !3, line: 649, type: !6)
!5493 = !DILocation(line: 647, column: 36, scope: !5485)
!5494 = !DILocation(line: 647, column: 54, scope: !5485)
!5495 = !DILocation(line: 647, column: 63, scope: !5485)
!5496 = !DILocation(line: 649, column: 2, scope: !5485)
!5497 = !DILocation(line: 649, column: 6, scope: !5485)
!5498 = !DILocation(line: 651, column: 2, scope: !5485)
!5499 = !DILocation(line: 651, column: 10, scope: !5485)
!5500 = !DILocation(line: 651, column: 9, scope: !5485)
!5501 = !DILocation(line: 651, column: 14, scope: !5485)
!5502 = !DILocation(line: 651, column: 21, scope: !5485)
!5503 = !DILocation(line: 651, column: 25, scope: !5485)
!5504 = !DILocation(line: 651, column: 24, scope: !5485)
!5505 = !DILocation(line: 651, column: 29, scope: !5485)
!5506 = !DILocation(line: 652, column: 6, scope: !5485)
!5507 = distinct !{!5507, !5498, !5506, !4412, !4413}
!5508 = !DILocation(line: 653, column: 7, scope: !5509)
!5509 = distinct !DILexicalBlock(scope: !5485, file: !3, line: 653, column: 6)
!5510 = !DILocation(line: 653, column: 6, scope: !5509)
!5511 = !DILocation(line: 653, column: 11, scope: !5509)
!5512 = !DILocation(line: 653, column: 18, scope: !5509)
!5513 = !DILocation(line: 653, column: 22, scope: !5509)
!5514 = !DILocation(line: 653, column: 21, scope: !5509)
!5515 = !DILocation(line: 653, column: 26, scope: !5509)
!5516 = !DILocation(line: 653, column: 6, scope: !5485)
!5517 = !DILocation(line: 654, column: 11, scope: !5518)
!5518 = distinct !DILexicalBlock(scope: !5509, file: !3, line: 653, column: 35)
!5519 = !DILocation(line: 654, column: 7, scope: !5518)
!5520 = !DILocation(line: 654, column: 5, scope: !5518)
!5521 = !DILocation(line: 655, column: 3, scope: !5518)
!5522 = !DILocation(line: 655, column: 10, scope: !5518)
!5523 = !DILocation(line: 655, column: 16, scope: !5518)
!5524 = !DILocation(line: 655, column: 20, scope: !5518)
!5525 = !DILocation(line: 655, column: 24, scope: !5518)
!5526 = !DILocation(line: 655, column: 23, scope: !5518)
!5527 = !DILocation(line: 655, column: 28, scope: !5518)
!5528 = !DILocation(line: 655, column: 32, scope: !5518)
!5529 = !DILocation(line: 655, column: 31, scope: !5518)
!5530 = !DILocation(line: 655, column: 39, scope: !5518)
!5531 = !DILocation(line: 655, column: 36, scope: !5518)
!5532 = !DILocation(line: 0, scope: !5518)
!5533 = !DILocation(line: 656, column: 18, scope: !5534)
!5534 = distinct !DILexicalBlock(scope: !5518, file: !3, line: 655, column: 42)
!5535 = !DILocation(line: 656, column: 14, scope: !5534)
!5536 = !DILocation(line: 656, column: 9, scope: !5534)
!5537 = !DILocation(line: 656, column: 12, scope: !5534)
!5538 = distinct !{!5538, !5521, !5539, !4412, !4413}
!5539 = !DILocation(line: 657, column: 3, scope: !5518)
!5540 = !DILocation(line: 658, column: 8, scope: !5541)
!5541 = distinct !DILexicalBlock(scope: !5518, file: !3, line: 658, column: 7)
!5542 = !DILocation(line: 658, column: 7, scope: !5541)
!5543 = !DILocation(line: 658, column: 15, scope: !5541)
!5544 = !DILocation(line: 658, column: 12, scope: !5541)
!5545 = !DILocation(line: 658, column: 7, scope: !5518)
!5546 = !DILocation(line: 659, column: 7, scope: !5541)
!5547 = !DILocation(line: 659, column: 4, scope: !5541)
!5548 = !DILocation(line: 660, column: 2, scope: !5518)
!5549 = !DILocation(line: 661, column: 3, scope: !5550)
!5550 = distinct !DILexicalBlock(scope: !5509, file: !3, line: 660, column: 9)
!5551 = !DILocation(line: 661, column: 10, scope: !5550)
!5552 = !DILocation(line: 661, column: 16, scope: !5550)
!5553 = !DILocation(line: 661, column: 20, scope: !5550)
!5554 = !DILocation(line: 661, column: 24, scope: !5550)
!5555 = !DILocation(line: 661, column: 23, scope: !5550)
!5556 = !DILocation(line: 661, column: 28, scope: !5550)
!5557 = !DILocation(line: 661, column: 32, scope: !5550)
!5558 = !DILocation(line: 661, column: 31, scope: !5550)
!5559 = !DILocation(line: 661, column: 36, scope: !5550)
!5560 = !DILocation(line: 661, column: 43, scope: !5550)
!5561 = !DILocation(line: 661, column: 47, scope: !5550)
!5562 = !DILocation(line: 661, column: 46, scope: !5550)
!5563 = !DILocation(line: 661, column: 51, scope: !5550)
!5564 = !DILocation(line: 0, scope: !5550)
!5565 = !DILocation(line: 662, column: 18, scope: !5566)
!5566 = distinct !DILexicalBlock(scope: !5550, file: !3, line: 661, column: 60)
!5567 = !DILocation(line: 662, column: 14, scope: !5566)
!5568 = !DILocation(line: 662, column: 9, scope: !5566)
!5569 = !DILocation(line: 662, column: 12, scope: !5566)
!5570 = distinct !{!5570, !5549, !5571, !4412, !4413}
!5571 = !DILocation(line: 663, column: 3, scope: !5550)
!5572 = !DILocation(line: 665, column: 3, scope: !5485)
!5573 = !DILocation(line: 665, column: 8, scope: !5485)
!5574 = !DILocation(line: 666, column: 2, scope: !5485)
!5575 = !DILocation(line: 666, column: 10, scope: !5485)
!5576 = !DILocation(line: 666, column: 9, scope: !5485)
!5577 = !DILocation(line: 666, column: 14, scope: !5485)
!5578 = !DILocation(line: 666, column: 21, scope: !5485)
!5579 = !DILocation(line: 666, column: 25, scope: !5485)
!5580 = !DILocation(line: 666, column: 24, scope: !5485)
!5581 = !DILocation(line: 666, column: 29, scope: !5485)
!5582 = !DILocation(line: 667, column: 6, scope: !5485)
!5583 = distinct !{!5583, !5574, !5582, !4412, !4413}
!5584 = !DILocation(line: 668, column: 9, scope: !5485)
!5585 = !DILocation(line: 669, column: 1, scope: !5485)
!5586 = !DILocation(line: 668, column: 2, scope: !5485)
!5587 = distinct !DISubprogram(name: "snd_info_create_module_entry", scope: !3, file: !3, line: 723, type: !5588, scopeLine: 726, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !5590)
!5588 = !DISubroutineType(types: !5589)
!5589 = !{!4182, !164, !7, !4182}
!5590 = !{!5591, !5592, !5593}
!5591 = !DILocalVariable(name: "module", arg: 1, scope: !5587, file: !3, line: 723, type: !164)
!5592 = !DILocalVariable(name: "name", arg: 2, scope: !5587, file: !3, line: 724, type: !7)
!5593 = !DILocalVariable(name: "parent", arg: 3, scope: !5587, file: !3, line: 725, type: !4182)
!5594 = !DILocation(line: 723, column: 69, scope: !5587)
!5595 = !DILocation(line: 724, column: 25, scope: !5587)
!5596 = !DILocation(line: 725, column: 36, scope: !5587)
!5597 = !DILocation(line: 727, column: 7, scope: !5598)
!5598 = distinct !DILexicalBlock(scope: !5587, file: !3, line: 727, column: 6)
!5599 = !DILocation(line: 727, column: 6, scope: !5587)
!5600 = !DILocation(line: 728, column: 12, scope: !5598)
!5601 = !DILocation(line: 728, column: 10, scope: !5598)
!5602 = !DILocation(line: 728, column: 3, scope: !5598)
!5603 = !DILocation(line: 729, column: 31, scope: !5587)
!5604 = !DILocation(line: 729, column: 37, scope: !5587)
!5605 = !DILocation(line: 729, column: 45, scope: !5587)
!5606 = !DILocation(line: 729, column: 9, scope: !5587)
!5607 = !DILocation(line: 729, column: 2, scope: !5587)
!5608 = distinct !DISubprogram(name: "snd_info_create_card_entry", scope: !3, file: !3, line: 743, type: !5609, scopeLine: 746, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !5611)
!5609 = !DISubroutineType(types: !5610)
!5610 = !{!4182, !4684, !7, !4182}
!5611 = !{!5612, !5613, !5614}
!5612 = !DILocalVariable(name: "card", arg: 1, scope: !5608, file: !3, line: 743, type: !4684)
!5613 = !DILocalVariable(name: "name", arg: 2, scope: !5608, file: !3, line: 744, type: !7)
!5614 = !DILocalVariable(name: "parent", arg: 3, scope: !5608, file: !3, line: 745, type: !4182)
!5615 = !DILocation(line: 743, column: 68, scope: !5608)
!5616 = !DILocation(line: 744, column: 23, scope: !5608)
!5617 = !DILocation(line: 745, column: 35, scope: !5608)
!5618 = !DILocation(line: 747, column: 7, scope: !5619)
!5619 = distinct !DILexicalBlock(scope: !5608, file: !3, line: 747, column: 6)
!5620 = !DILocation(line: 747, column: 6, scope: !5608)
!5621 = !DILocation(line: 748, column: 12, scope: !5619)
!5622 = !DILocation(line: 748, column: 18, scope: !5619)
!5623 = !DILocation(line: 748, column: 10, scope: !5619)
!5624 = !DILocation(line: 748, column: 3, scope: !5619)
!5625 = !DILocation(line: 749, column: 31, scope: !5608)
!5626 = !DILocation(line: 749, column: 37, scope: !5608)
!5627 = !DILocation(line: 749, column: 45, scope: !5608)
!5628 = !DILocation(line: 749, column: 51, scope: !5608)
!5629 = !DILocation(line: 749, column: 9, scope: !5608)
!5630 = !DILocation(line: 749, column: 2, scope: !5608)
!5631 = distinct !DISubprogram(name: "list_del", scope: !5632, file: !5632, line: 227, type: !5633, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !5635)
!5632 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!5633 = !DISubroutineType(types: !5634)
!5634 = !{null, !173}
!5635 = !{!5636}
!5636 = !DILocalVariable(name: "entry", arg: 1, scope: !5631, file: !5632, line: 227, type: !173)
!5637 = !DILocation(line: 227, column: 47, scope: !5631)
!5638 = !DILocation(line: 229, column: 19, scope: !5631)
!5639 = !DILocation(line: 229, column: 2, scope: !5631)
!5640 = !DILocation(line: 230, column: 2, scope: !5631)
!5641 = !DILocation(line: 230, column: 9, scope: !5631)
!5642 = !DILocation(line: 230, column: 14, scope: !5631)
!5643 = !DILocation(line: 231, column: 2, scope: !5631)
!5644 = !DILocation(line: 231, column: 9, scope: !5631)
!5645 = !DILocation(line: 231, column: 14, scope: !5631)
!5646 = !DILocation(line: 232, column: 1, scope: !5631)
!5647 = !DISubprogram(name: "kfree", scope: !153, file: !153, line: 227, type: !5648, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5648 = !DISubroutineType(types: !5649)
!5649 = !{null, !1216}
!5650 = distinct !DISubprogram(name: "__snd_info_register", scope: !3, file: !3, line: 800, type: !5226, scopeLine: 801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !5651)
!5651 = !{!5652, !5653, !5654, !5655, !5658, !5662}
!5652 = !DILocalVariable(name: "entry", arg: 1, scope: !5650, file: !3, line: 800, type: !4182)
!5653 = !DILocalVariable(name: "root", scope: !5650, file: !3, line: 802, type: !4257)
!5654 = !DILocalVariable(name: "p", scope: !5650, file: !3, line: 802, type: !4257)
!5655 = !DILocalVariable(name: "__ret_warn_on", scope: !5656, file: !3, line: 804, type: !6)
!5656 = distinct !DILexicalBlock(scope: !5657, file: !3, line: 804, column: 6)
!5657 = distinct !DILexicalBlock(scope: !5650, file: !3, line: 804, column: 6)
!5658 = !DILocalVariable(name: "ops", scope: !5659, file: !3, line: 817, type: !5661)
!5659 = distinct !DILexicalBlock(scope: !5660, file: !3, line: 816, column: 9)
!5660 = distinct !DILexicalBlock(scope: !5650, file: !3, line: 810, column: 6)
!5661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4351, size: 64)
!5662 = !DILabel(scope: !5650, name: "unlock", file: !3, line: 831)
!5663 = !DILocation(line: 800, column: 55, scope: !5650)
!5664 = !DILocation(line: 802, column: 2, scope: !5650)
!5665 = !DILocation(line: 802, column: 25, scope: !5650)
!5666 = !DILocation(line: 802, column: 32, scope: !5650)
!5667 = !DILocation(line: 804, column: 6, scope: !5656)
!5668 = !DILocation(line: 804, column: 6, scope: !5657)
!5669 = !DILocation(line: 804, column: 6, scope: !5650)
!5670 = !DILocation(line: 805, column: 3, scope: !5657)
!5671 = !DILocation(line: 806, column: 9, scope: !5650)
!5672 = !DILocation(line: 806, column: 16, scope: !5650)
!5673 = !DILocation(line: 806, column: 23, scope: !5650)
!5674 = !DILocation(line: 806, column: 33, scope: !5650)
!5675 = !DILocation(line: 806, column: 48, scope: !5650)
!5676 = !DILocation(line: 806, column: 52, scope: !5650)
!5677 = !DILocation(line: 806, column: 59, scope: !5650)
!5678 = !DILocation(line: 806, column: 67, scope: !5650)
!5679 = !DILocation(line: 806, column: 7, scope: !5650)
!5680 = !DILocation(line: 807, column: 2, scope: !5650)
!5681 = !DILocation(line: 808, column: 6, scope: !5682)
!5682 = distinct !DILexicalBlock(scope: !5650, file: !3, line: 808, column: 6)
!5683 = !DILocation(line: 808, column: 13, scope: !5682)
!5684 = !DILocation(line: 808, column: 15, scope: !5682)
!5685 = !DILocation(line: 808, column: 19, scope: !5682)
!5686 = !DILocation(line: 808, column: 6, scope: !5650)
!5687 = !DILocation(line: 809, column: 3, scope: !5682)
!5688 = !DILocation(line: 810, column: 6, scope: !5660)
!5689 = !DILocation(line: 810, column: 6, scope: !5650)
!5690 = !DILocation(line: 811, column: 23, scope: !5691)
!5691 = distinct !DILexicalBlock(scope: !5660, file: !3, line: 810, column: 28)
!5692 = !DILocation(line: 811, column: 30, scope: !5691)
!5693 = !DILocation(line: 811, column: 36, scope: !5691)
!5694 = !DILocation(line: 811, column: 43, scope: !5691)
!5695 = !DILocation(line: 811, column: 49, scope: !5691)
!5696 = !DILocation(line: 811, column: 7, scope: !5691)
!5697 = !DILocation(line: 811, column: 5, scope: !5691)
!5698 = !DILocation(line: 812, column: 8, scope: !5699)
!5699 = distinct !DILexicalBlock(scope: !5691, file: !3, line: 812, column: 7)
!5700 = !DILocation(line: 812, column: 7, scope: !5691)
!5701 = !DILocation(line: 813, column: 4, scope: !5702)
!5702 = distinct !DILexicalBlock(scope: !5699, file: !3, line: 812, column: 11)
!5703 = !DILocation(line: 814, column: 4, scope: !5702)
!5704 = !DILocation(line: 816, column: 2, scope: !5691)
!5705 = !DILocation(line: 817, column: 3, scope: !5659)
!5706 = !DILocation(line: 817, column: 26, scope: !5659)
!5707 = !DILocation(line: 818, column: 7, scope: !5708)
!5708 = distinct !DILexicalBlock(scope: !5659, file: !3, line: 818, column: 7)
!5709 = !DILocation(line: 818, column: 14, scope: !5708)
!5710 = !DILocation(line: 818, column: 22, scope: !5708)
!5711 = !DILocation(line: 818, column: 7, scope: !5659)
!5712 = !DILocation(line: 819, column: 8, scope: !5708)
!5713 = !DILocation(line: 819, column: 4, scope: !5708)
!5714 = !DILocation(line: 821, column: 8, scope: !5708)
!5715 = !DILocation(line: 822, column: 24, scope: !5659)
!5716 = !DILocation(line: 822, column: 31, scope: !5659)
!5717 = !DILocation(line: 822, column: 37, scope: !5659)
!5718 = !DILocation(line: 822, column: 44, scope: !5659)
!5719 = !DILocation(line: 822, column: 50, scope: !5659)
!5720 = !DILocation(line: 823, column: 10, scope: !5659)
!5721 = !DILocation(line: 823, column: 15, scope: !5659)
!5722 = !DILocation(line: 822, column: 7, scope: !5659)
!5723 = !DILocation(line: 822, column: 5, scope: !5659)
!5724 = !DILocation(line: 824, column: 8, scope: !5725)
!5725 = distinct !DILexicalBlock(scope: !5659, file: !3, line: 824, column: 7)
!5726 = !DILocation(line: 824, column: 7, scope: !5659)
!5727 = !DILocation(line: 825, column: 4, scope: !5728)
!5728 = distinct !DILexicalBlock(scope: !5725, file: !3, line: 824, column: 11)
!5729 = !DILocation(line: 826, column: 4, scope: !5728)
!5730 = !DILocation(line: 828, column: 17, scope: !5659)
!5731 = !DILocation(line: 828, column: 20, scope: !5659)
!5732 = !DILocation(line: 828, column: 27, scope: !5659)
!5733 = !DILocation(line: 828, column: 3, scope: !5659)
!5734 = !DILocation(line: 829, column: 2, scope: !5660)
!5735 = !DILocation(line: 830, column: 13, scope: !5650)
!5736 = !DILocation(line: 830, column: 2, scope: !5650)
!5737 = !DILocation(line: 830, column: 9, scope: !5650)
!5738 = !DILocation(line: 830, column: 11, scope: !5650)
!5739 = !DILocation(line: 831, column: 2, scope: !5650)
!5740 = !DILocation(line: 832, column: 2, scope: !5650)
!5741 = !DILocation(line: 833, column: 2, scope: !5650)
!5742 = !DILocation(line: 834, column: 1, scope: !5650)
!5743 = distinct !DISubprogram(name: "snd_card_rw_proc_new", scope: !3, file: !3, line: 879, type: !5744, scopeLine: 885, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !5746)
!5744 = !DISubroutineType(types: !5745)
!5745 = !{!6, !4684, !7, !163, !4197, !4197}
!5746 = !{!5747, !5748, !5749, !5750, !5751, !5752}
!5747 = !DILocalVariable(name: "card", arg: 1, scope: !5743, file: !3, line: 879, type: !4684)
!5748 = !DILocalVariable(name: "name", arg: 2, scope: !5743, file: !3, line: 879, type: !7)
!5749 = !DILocalVariable(name: "private_data", arg: 3, scope: !5743, file: !3, line: 880, type: !163)
!5750 = !DILocalVariable(name: "read", arg: 4, scope: !5743, file: !3, line: 881, type: !4197)
!5751 = !DILocalVariable(name: "write", arg: 5, scope: !5743, file: !3, line: 883, type: !4197)
!5752 = !DILocalVariable(name: "entry", scope: !5743, file: !3, line: 886, type: !4182)
!5753 = !DILocation(line: 879, column: 43, scope: !5743)
!5754 = !DILocation(line: 879, column: 61, scope: !5743)
!5755 = !DILocation(line: 880, column: 11, scope: !5743)
!5756 = !DILocation(line: 881, column: 12, scope: !5743)
!5757 = !DILocation(line: 883, column: 12, scope: !5743)
!5758 = !DILocation(line: 886, column: 2, scope: !5743)
!5759 = !DILocation(line: 886, column: 25, scope: !5743)
!5760 = !DILocation(line: 888, column: 37, scope: !5743)
!5761 = !DILocation(line: 888, column: 43, scope: !5743)
!5762 = !DILocation(line: 888, column: 49, scope: !5743)
!5763 = !DILocation(line: 888, column: 55, scope: !5743)
!5764 = !DILocation(line: 888, column: 10, scope: !5743)
!5765 = !DILocation(line: 888, column: 8, scope: !5743)
!5766 = !DILocation(line: 889, column: 7, scope: !5767)
!5767 = distinct !DILexicalBlock(scope: !5743, file: !3, line: 889, column: 6)
!5768 = !DILocation(line: 889, column: 6, scope: !5743)
!5769 = !DILocation(line: 890, column: 3, scope: !5767)
!5770 = !DILocation(line: 891, column: 24, scope: !5743)
!5771 = !DILocation(line: 891, column: 31, scope: !5743)
!5772 = !DILocation(line: 891, column: 45, scope: !5743)
!5773 = !DILocation(line: 891, column: 2, scope: !5743)
!5774 = !DILocation(line: 892, column: 6, scope: !5775)
!5775 = distinct !DILexicalBlock(scope: !5743, file: !3, line: 892, column: 6)
!5776 = !DILocation(line: 892, column: 6, scope: !5743)
!5777 = !DILocation(line: 893, column: 3, scope: !5778)
!5778 = distinct !DILexicalBlock(scope: !5775, file: !3, line: 892, column: 13)
!5779 = !DILocation(line: 893, column: 10, scope: !5778)
!5780 = !DILocation(line: 893, column: 15, scope: !5778)
!5781 = !DILocation(line: 894, column: 25, scope: !5778)
!5782 = !DILocation(line: 894, column: 3, scope: !5778)
!5783 = !DILocation(line: 894, column: 10, scope: !5778)
!5784 = !DILocation(line: 894, column: 17, scope: !5778)
!5785 = !DILocation(line: 894, column: 23, scope: !5778)
!5786 = !DILocation(line: 895, column: 2, scope: !5778)
!5787 = !DILocation(line: 896, column: 2, scope: !5743)
!5788 = !DILocation(line: 897, column: 1, scope: !5743)
!5789 = distinct !DISubprogram(name: "snd_info_set_text_ops", scope: !4184, file: !4184, line: 137, type: !5790, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !5792)
!5790 = !DISubroutineType(types: !5791)
!5791 = !{null, !4182, !163, !4197}
!5792 = !{!5793, !5794, !5795}
!5793 = !DILocalVariable(name: "entry", arg: 1, scope: !5789, file: !4184, line: 137, type: !4182)
!5794 = !DILocalVariable(name: "private_data", arg: 2, scope: !5789, file: !4184, line: 138, type: !163)
!5795 = !DILocalVariable(name: "read", arg: 3, scope: !5789, file: !4184, line: 139, type: !4197)
!5796 = !DILocation(line: 137, column: 65, scope: !5789)
!5797 = !DILocation(line: 138, column: 8, scope: !5789)
!5798 = !DILocation(line: 139, column: 9, scope: !5789)
!5799 = !DILocation(line: 141, column: 24, scope: !5789)
!5800 = !DILocation(line: 141, column: 2, scope: !5789)
!5801 = !DILocation(line: 141, column: 9, scope: !5789)
!5802 = !DILocation(line: 141, column: 22, scope: !5789)
!5803 = !DILocation(line: 142, column: 23, scope: !5789)
!5804 = !DILocation(line: 142, column: 2, scope: !5789)
!5805 = !DILocation(line: 142, column: 9, scope: !5789)
!5806 = !DILocation(line: 142, column: 16, scope: !5789)
!5807 = !DILocation(line: 142, column: 21, scope: !5789)
!5808 = !DILocation(line: 143, column: 1, scope: !5789)
!5809 = !DISubprogram(name: "seq_printf", scope: !620, file: !620, line: 119, type: !5810, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5810 = !DISubroutineType(types: !5811)
!5811 = !{null, !618, !7, null}
!5812 = distinct !DISubprogram(name: "kzalloc", scope: !153, file: !153, line: 719, type: !5813, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !5815)
!5813 = !DISubroutineType(types: !5814)
!5814 = !{!163, !313, !1333}
!5815 = !{!5816, !5817}
!5816 = !DILocalVariable(name: "size", arg: 1, scope: !5812, file: !153, line: 719, type: !313)
!5817 = !DILocalVariable(name: "flags", arg: 2, scope: !5812, file: !153, line: 719, type: !1333)
!5818 = !DILocation(line: 719, column: 52, scope: !5812)
!5819 = !DILocation(line: 719, column: 64, scope: !5812)
!5820 = !DILocation(line: 721, column: 17, scope: !5812)
!5821 = !DILocation(line: 721, column: 23, scope: !5812)
!5822 = !DILocation(line: 721, column: 29, scope: !5812)
!5823 = !DILocation(line: 721, column: 9, scope: !5812)
!5824 = !DILocation(line: 721, column: 2, scope: !5812)
!5825 = !DISubprogram(name: "kstrdup", scope: !4422, file: !4422, line: 216, type: !5826, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5826 = !DISubroutineType(types: !5827)
!5827 = !{!266, !7, !1333}
!5828 = !DISubprogram(name: "__mutex_init", scope: !631, file: !631, line: 121, type: !5829, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5829 = !DISubroutineType(types: !5830)
!5830 = !{null, !5321, !7, !5831}
!5831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!5832 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !5632, file: !5632, line: 35, type: !5633, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !5833)
!5833 = !{!5834}
!5834 = !DILocalVariable(name: "list", arg: 1, scope: !5832, file: !5632, line: 35, type: !173)
!5835 = !DILocation(line: 35, column: 53, scope: !5832)
!5836 = !DILocation(line: 37, column: 2, scope: !5832)
!5837 = !DILocation(line: 37, column: 2, scope: !5838)
!5838 = distinct !DILexicalBlock(scope: !5832, file: !5632, line: 37, column: 2)
!5839 = !DILocation(line: 37, column: 2, scope: !5840)
!5840 = distinct !DILexicalBlock(scope: !5838, file: !5632, line: 37, column: 2)
!5841 = !DILocation(line: 37, column: 2, scope: !5842)
!5842 = distinct !DILexicalBlock(scope: !5838, file: !5632, line: 37, column: 2)
!5843 = !DILocation(line: 38, column: 2, scope: !5832)
!5844 = !DILocation(line: 38, column: 2, scope: !5845)
!5845 = distinct !DILexicalBlock(scope: !5832, file: !5632, line: 38, column: 2)
!5846 = !DILocation(line: 38, column: 2, scope: !5847)
!5847 = distinct !DILexicalBlock(scope: !5845, file: !5632, line: 38, column: 2)
!5848 = !DILocation(line: 38, column: 2, scope: !5849)
!5849 = distinct !DILexicalBlock(scope: !5845, file: !5632, line: 38, column: 2)
!5850 = !DILocation(line: 39, column: 1, scope: !5832)
!5851 = distinct !DISubprogram(name: "list_add_tail", scope: !5632, file: !5632, line: 181, type: !5852, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !5854)
!5852 = !DISubroutineType(types: !5853)
!5853 = !{null, !173, !173}
!5854 = !{!5855, !5856}
!5855 = !DILocalVariable(name: "new", arg: 1, scope: !5851, file: !5632, line: 181, type: !173)
!5856 = !DILocalVariable(name: "head", arg: 2, scope: !5851, file: !5632, line: 181, type: !173)
!5857 = !DILocation(line: 181, column: 52, scope: !5851)
!5858 = !DILocation(line: 181, column: 75, scope: !5851)
!5859 = !DILocation(line: 183, column: 13, scope: !5851)
!5860 = !DILocation(line: 183, column: 18, scope: !5851)
!5861 = !DILocation(line: 183, column: 24, scope: !5851)
!5862 = !DILocation(line: 183, column: 30, scope: !5851)
!5863 = !DILocation(line: 183, column: 2, scope: !5851)
!5864 = !DILocation(line: 184, column: 1, scope: !5851)
!5865 = distinct !DISubprogram(name: "kmalloc", scope: !153, file: !153, line: 591, type: !5813, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !5866)
!5866 = !{!5867, !5868, !5869}
!5867 = !DILocalVariable(name: "size", arg: 1, scope: !5865, file: !153, line: 591, type: !313)
!5868 = !DILocalVariable(name: "flags", arg: 2, scope: !5865, file: !153, line: 591, type: !1333)
!5869 = !DILocalVariable(name: "index", scope: !5870, file: !153, line: 594, type: !14)
!5870 = distinct !DILexicalBlock(scope: !5871, file: !153, line: 593, column: 42)
!5871 = distinct !DILexicalBlock(scope: !5865, file: !153, line: 593, column: 6)
!5872 = !DILocation(line: 591, column: 61, scope: !5865)
!5873 = !DILocation(line: 591, column: 73, scope: !5865)
!5874 = !DILocation(line: 593, column: 27, scope: !5871)
!5875 = !DILocation(line: 593, column: 6, scope: !5871)
!5876 = !DILocation(line: 593, column: 33, scope: !5871)
!5877 = !DILocation(line: 593, column: 36, scope: !5871)
!5878 = !DILocation(line: 593, column: 6, scope: !5865)
!5879 = !DILocation(line: 594, column: 3, scope: !5870)
!5880 = !DILocation(line: 594, column: 16, scope: !5870)
!5881 = !DILocation(line: 596, column: 7, scope: !5882)
!5882 = distinct !DILexicalBlock(scope: !5870, file: !153, line: 596, column: 7)
!5883 = !DILocation(line: 596, column: 12, scope: !5882)
!5884 = !DILocation(line: 596, column: 7, scope: !5870)
!5885 = !DILocation(line: 597, column: 25, scope: !5882)
!5886 = !DILocation(line: 597, column: 31, scope: !5882)
!5887 = !DILocation(line: 597, column: 11, scope: !5882)
!5888 = !DILocation(line: 597, column: 4, scope: !5882)
!5889 = !DILocation(line: 599, column: 11, scope: !5870)
!5890 = !DILocation(line: 599, column: 9, scope: !5870)
!5891 = !DILocation(line: 601, column: 33, scope: !5870)
!5892 = !DILocation(line: 601, column: 40, scope: !5870)
!5893 = !DILocation(line: 601, column: 20, scope: !5870)
!5894 = !DILocation(line: 601, column: 5, scope: !5870)
!5895 = !DILocation(line: 601, column: 51, scope: !5870)
!5896 = !DILocation(line: 602, column: 5, scope: !5870)
!5897 = !DILocation(line: 602, column: 12, scope: !5870)
!5898 = !DILocation(line: 600, column: 10, scope: !5870)
!5899 = !DILocation(line: 600, column: 3, scope: !5870)
!5900 = !DILocation(line: 603, column: 2, scope: !5871)
!5901 = !DILocation(line: 604, column: 19, scope: !5865)
!5902 = !DILocation(line: 604, column: 25, scope: !5865)
!5903 = !DILocation(line: 604, column: 9, scope: !5865)
!5904 = !DILocation(line: 604, column: 2, scope: !5865)
!5905 = !DILocation(line: 605, column: 1, scope: !5865)
!5906 = !DISubprogram(name: "kmalloc_large", scope: !153, file: !153, line: 531, type: !5813, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5907 = distinct !DISubprogram(name: "__kmalloc_index", scope: !153, file: !153, line: 444, type: !5908, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !5910)
!5908 = !DISubroutineType(types: !5909)
!5909 = !{!14, !313, !877}
!5910 = !{!5911, !5912}
!5911 = !DILocalVariable(name: "size", arg: 1, scope: !5907, file: !153, line: 444, type: !313)
!5912 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5907, file: !153, line: 445, type: !877)
!5913 = !DILocation(line: 444, column: 60, scope: !5907)
!5914 = !DILocation(line: 445, column: 16, scope: !5907)
!5915 = !DILocation(line: 447, column: 7, scope: !5916)
!5916 = distinct !DILexicalBlock(scope: !5907, file: !153, line: 447, column: 6)
!5917 = !DILocation(line: 447, column: 6, scope: !5907)
!5918 = !DILocation(line: 448, column: 3, scope: !5916)
!5919 = !DILocation(line: 450, column: 6, scope: !5920)
!5920 = distinct !DILexicalBlock(scope: !5907, file: !153, line: 450, column: 6)
!5921 = !DILocation(line: 450, column: 11, scope: !5920)
!5922 = !DILocation(line: 450, column: 6, scope: !5907)
!5923 = !DILocation(line: 451, column: 3, scope: !5920)
!5924 = !DILocation(line: 453, column: 32, scope: !5925)
!5925 = distinct !DILexicalBlock(scope: !5907, file: !153, line: 453, column: 6)
!5926 = !DILocation(line: 453, column: 37, scope: !5925)
!5927 = !DILocation(line: 453, column: 42, scope: !5925)
!5928 = !DILocation(line: 453, column: 45, scope: !5925)
!5929 = !DILocation(line: 453, column: 50, scope: !5925)
!5930 = !DILocation(line: 453, column: 6, scope: !5907)
!5931 = !DILocation(line: 454, column: 3, scope: !5925)
!5932 = !DILocation(line: 455, column: 32, scope: !5933)
!5933 = distinct !DILexicalBlock(scope: !5907, file: !153, line: 455, column: 6)
!5934 = !DILocation(line: 455, column: 37, scope: !5933)
!5935 = !DILocation(line: 455, column: 43, scope: !5933)
!5936 = !DILocation(line: 455, column: 46, scope: !5933)
!5937 = !DILocation(line: 455, column: 51, scope: !5933)
!5938 = !DILocation(line: 455, column: 6, scope: !5907)
!5939 = !DILocation(line: 456, column: 3, scope: !5933)
!5940 = !DILocation(line: 457, column: 6, scope: !5941)
!5941 = distinct !DILexicalBlock(scope: !5907, file: !153, line: 457, column: 6)
!5942 = !DILocation(line: 457, column: 11, scope: !5941)
!5943 = !DILocation(line: 457, column: 6, scope: !5907)
!5944 = !DILocation(line: 457, column: 26, scope: !5941)
!5945 = !DILocation(line: 458, column: 6, scope: !5946)
!5946 = distinct !DILexicalBlock(scope: !5907, file: !153, line: 458, column: 6)
!5947 = !DILocation(line: 458, column: 11, scope: !5946)
!5948 = !DILocation(line: 458, column: 6, scope: !5907)
!5949 = !DILocation(line: 458, column: 26, scope: !5946)
!5950 = !DILocation(line: 459, column: 6, scope: !5951)
!5951 = distinct !DILexicalBlock(scope: !5907, file: !153, line: 459, column: 6)
!5952 = !DILocation(line: 459, column: 11, scope: !5951)
!5953 = !DILocation(line: 459, column: 6, scope: !5907)
!5954 = !DILocation(line: 459, column: 26, scope: !5951)
!5955 = !DILocation(line: 460, column: 6, scope: !5956)
!5956 = distinct !DILexicalBlock(scope: !5907, file: !153, line: 460, column: 6)
!5957 = !DILocation(line: 460, column: 11, scope: !5956)
!5958 = !DILocation(line: 460, column: 6, scope: !5907)
!5959 = !DILocation(line: 460, column: 26, scope: !5956)
!5960 = !DILocation(line: 461, column: 6, scope: !5961)
!5961 = distinct !DILexicalBlock(scope: !5907, file: !153, line: 461, column: 6)
!5962 = !DILocation(line: 461, column: 11, scope: !5961)
!5963 = !DILocation(line: 461, column: 6, scope: !5907)
!5964 = !DILocation(line: 461, column: 26, scope: !5961)
!5965 = !DILocation(line: 462, column: 6, scope: !5966)
!5966 = distinct !DILexicalBlock(scope: !5907, file: !153, line: 462, column: 6)
!5967 = !DILocation(line: 462, column: 11, scope: !5966)
!5968 = !DILocation(line: 462, column: 6, scope: !5907)
!5969 = !DILocation(line: 462, column: 26, scope: !5966)
!5970 = !DILocation(line: 463, column: 6, scope: !5971)
!5971 = distinct !DILexicalBlock(scope: !5907, file: !153, line: 463, column: 6)
!5972 = !DILocation(line: 463, column: 11, scope: !5971)
!5973 = !DILocation(line: 463, column: 6, scope: !5907)
!5974 = !DILocation(line: 463, column: 26, scope: !5971)
!5975 = !DILocation(line: 464, column: 6, scope: !5976)
!5976 = distinct !DILexicalBlock(scope: !5907, file: !153, line: 464, column: 6)
!5977 = !DILocation(line: 464, column: 11, scope: !5976)
!5978 = !DILocation(line: 464, column: 6, scope: !5907)
!5979 = !DILocation(line: 464, column: 26, scope: !5976)
!5980 = !DILocation(line: 465, column: 6, scope: !5981)
!5981 = distinct !DILexicalBlock(scope: !5907, file: !153, line: 465, column: 6)
!5982 = !DILocation(line: 465, column: 11, scope: !5981)
!5983 = !DILocation(line: 465, column: 6, scope: !5907)
!5984 = !DILocation(line: 465, column: 26, scope: !5981)
!5985 = !DILocation(line: 466, column: 6, scope: !5986)
!5986 = distinct !DILexicalBlock(scope: !5907, file: !153, line: 466, column: 6)
!5987 = !DILocation(line: 466, column: 11, scope: !5986)
!5988 = !DILocation(line: 466, column: 6, scope: !5907)
!5989 = !DILocation(line: 466, column: 26, scope: !5986)
!5990 = !DILocation(line: 467, column: 6, scope: !5991)
!5991 = distinct !DILexicalBlock(scope: !5907, file: !153, line: 467, column: 6)
!5992 = !DILocation(line: 467, column: 11, scope: !5991)
!5993 = !DILocation(line: 467, column: 6, scope: !5907)
!5994 = !DILocation(line: 467, column: 26, scope: !5991)
!5995 = !DILocation(line: 468, column: 6, scope: !5996)
!5996 = distinct !DILexicalBlock(scope: !5907, file: !153, line: 468, column: 6)
!5997 = !DILocation(line: 468, column: 11, scope: !5996)
!5998 = !DILocation(line: 468, column: 6, scope: !5907)
!5999 = !DILocation(line: 468, column: 26, scope: !5996)
!6000 = !DILocation(line: 469, column: 6, scope: !6001)
!6001 = distinct !DILexicalBlock(scope: !5907, file: !153, line: 469, column: 6)
!6002 = !DILocation(line: 469, column: 11, scope: !6001)
!6003 = !DILocation(line: 469, column: 6, scope: !5907)
!6004 = !DILocation(line: 469, column: 26, scope: !6001)
!6005 = !DILocation(line: 470, column: 6, scope: !6006)
!6006 = distinct !DILexicalBlock(scope: !5907, file: !153, line: 470, column: 6)
!6007 = !DILocation(line: 470, column: 11, scope: !6006)
!6008 = !DILocation(line: 470, column: 6, scope: !5907)
!6009 = !DILocation(line: 470, column: 26, scope: !6006)
!6010 = !DILocation(line: 471, column: 6, scope: !6011)
!6011 = distinct !DILexicalBlock(scope: !5907, file: !153, line: 471, column: 6)
!6012 = !DILocation(line: 471, column: 11, scope: !6011)
!6013 = !DILocation(line: 471, column: 6, scope: !5907)
!6014 = !DILocation(line: 471, column: 26, scope: !6011)
!6015 = !DILocation(line: 472, column: 6, scope: !6016)
!6016 = distinct !DILexicalBlock(scope: !5907, file: !153, line: 472, column: 6)
!6017 = !DILocation(line: 472, column: 11, scope: !6016)
!6018 = !DILocation(line: 472, column: 6, scope: !5907)
!6019 = !DILocation(line: 472, column: 26, scope: !6016)
!6020 = !DILocation(line: 473, column: 6, scope: !6021)
!6021 = distinct !DILexicalBlock(scope: !5907, file: !153, line: 473, column: 6)
!6022 = !DILocation(line: 473, column: 11, scope: !6021)
!6023 = !DILocation(line: 473, column: 6, scope: !5907)
!6024 = !DILocation(line: 473, column: 26, scope: !6021)
!6025 = !DILocation(line: 474, column: 6, scope: !6026)
!6026 = distinct !DILexicalBlock(scope: !5907, file: !153, line: 474, column: 6)
!6027 = !DILocation(line: 474, column: 11, scope: !6026)
!6028 = !DILocation(line: 474, column: 6, scope: !5907)
!6029 = !DILocation(line: 474, column: 27, scope: !6026)
!6030 = !DILocation(line: 475, column: 6, scope: !6031)
!6031 = distinct !DILexicalBlock(scope: !5907, file: !153, line: 475, column: 6)
!6032 = !DILocation(line: 475, column: 11, scope: !6031)
!6033 = !DILocation(line: 475, column: 6, scope: !5907)
!6034 = !DILocation(line: 475, column: 32, scope: !6031)
!6035 = !DILocation(line: 477, column: 50, scope: !6036)
!6036 = distinct !DILexicalBlock(scope: !5907, file: !153, line: 477, column: 6)
!6037 = !{i8 0, i8 2}
!6038 = !DILocation(line: 477, column: 6, scope: !5907)
!6039 = !DILocation(line: 478, column: 3, scope: !6036)
!6040 = !DILocation(line: 478, column: 3, scope: !6041)
!6041 = distinct !DILexicalBlock(scope: !6042, file: !153, line: 478, column: 3)
!6042 = distinct !DILexicalBlock(scope: !6036, file: !153, line: 478, column: 3)
!6043 = !{i32 -2142315817}
!6044 = !DILocation(line: 478, column: 3, scope: !6042)
!6045 = !DILocation(line: 480, column: 3, scope: !6036)
!6046 = !DILocation(line: 480, column: 3, scope: !6047)
!6047 = distinct !DILexicalBlock(scope: !6036, file: !153, line: 480, column: 3)
!6048 = !DILocation(line: 480, column: 3, scope: !6049)
!6049 = distinct !DILexicalBlock(scope: !6047, file: !153, line: 480, column: 3)
!6050 = !DILocation(line: 480, column: 3, scope: !6051)
!6051 = distinct !DILexicalBlock(scope: !6047, file: !153, line: 480, column: 3)
!6052 = !{i64 2152651682, i64 2152651711, i64 2152651757, i64 2152651815, i64 2152651869, i64 2152651923, i64 2152651978, i64 2152652009}
!6053 = !DILocation(line: 483, column: 2, scope: !5907)
!6054 = !DILocation(line: 484, column: 1, scope: !5907)
!6055 = !DISubprogram(name: "kmalloc_trace", scope: !153, file: !153, line: 525, type: !6056, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6056 = !DISubroutineType(types: !6057)
!6057 = !{!163, !6058, !1333, !313}
!6058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6059, size: 64)
!6059 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !6060, line: 11, flags: DIFlagFwdDecl)
!6060 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!6061 = distinct !DISubprogram(name: "kmalloc_type", scope: !153, file: !153, line: 401, type: !6062, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !6064)
!6062 = !DISubroutineType(types: !6063)
!6063 = !{!152, !1333, !316}
!6064 = !{!6065, !6066}
!6065 = !DILocalVariable(name: "flags", arg: 1, scope: !6061, file: !153, line: 401, type: !1333)
!6066 = !DILocalVariable(name: "caller", arg: 2, scope: !6061, file: !153, line: 401, type: !316)
!6067 = !DILocation(line: 401, column: 67, scope: !6061)
!6068 = !DILocation(line: 401, column: 88, scope: !6061)
!6069 = !DILocation(line: 407, column: 6, scope: !6070)
!6070 = distinct !DILexicalBlock(scope: !6061, file: !153, line: 407, column: 6)
!6071 = !DILocation(line: 407, column: 6, scope: !6061)
!6072 = !DILocation(line: 413, column: 3, scope: !6070)
!6073 = !DILocation(line: 423, column: 38, scope: !6074)
!6074 = distinct !DILexicalBlock(scope: !6061, file: !153, line: 423, column: 6)
!6075 = !DILocation(line: 423, column: 44, scope: !6074)
!6076 = !DILocation(line: 423, column: 6, scope: !6061)
!6077 = !DILocation(line: 424, column: 3, scope: !6074)
!6078 = !DILocation(line: 426, column: 3, scope: !6079)
!6079 = distinct !DILexicalBlock(scope: !6061, file: !153, line: 425, column: 6)
!6080 = !DILocation(line: 429, column: 1, scope: !6061)
!6081 = !DISubprogram(name: "__kmalloc", scope: !153, file: !153, line: 488, type: !5813, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6082 = !DISubprogram(name: "__compiletime_assert_206", scope: !153, file: !153, line: 478, type: !2621, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6083 = distinct !DISubprogram(name: "__list_add", scope: !5632, file: !5632, line: 146, type: !6084, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !6086)
!6084 = !DISubroutineType(types: !6085)
!6085 = !{null, !173, !173, !173}
!6086 = !{!6087, !6088, !6089}
!6087 = !DILocalVariable(name: "new", arg: 1, scope: !6083, file: !5632, line: 146, type: !173)
!6088 = !DILocalVariable(name: "prev", arg: 2, scope: !6083, file: !5632, line: 147, type: !173)
!6089 = !DILocalVariable(name: "next", arg: 3, scope: !6083, file: !5632, line: 148, type: !173)
!6090 = !DILocation(line: 146, column: 49, scope: !6083)
!6091 = !DILocation(line: 147, column: 28, scope: !6083)
!6092 = !DILocation(line: 148, column: 28, scope: !6083)
!6093 = !DILocation(line: 150, column: 24, scope: !6094)
!6094 = distinct !DILexicalBlock(scope: !6083, file: !5632, line: 150, column: 6)
!6095 = !DILocation(line: 150, column: 29, scope: !6094)
!6096 = !DILocation(line: 150, column: 35, scope: !6094)
!6097 = !DILocation(line: 150, column: 7, scope: !6094)
!6098 = !DILocation(line: 150, column: 6, scope: !6083)
!6099 = !DILocation(line: 151, column: 3, scope: !6094)
!6100 = !DILocation(line: 153, column: 15, scope: !6083)
!6101 = !DILocation(line: 153, column: 2, scope: !6083)
!6102 = !DILocation(line: 153, column: 8, scope: !6083)
!6103 = !DILocation(line: 153, column: 13, scope: !6083)
!6104 = !DILocation(line: 154, column: 14, scope: !6083)
!6105 = !DILocation(line: 154, column: 2, scope: !6083)
!6106 = !DILocation(line: 154, column: 7, scope: !6083)
!6107 = !DILocation(line: 154, column: 12, scope: !6083)
!6108 = !DILocation(line: 155, column: 14, scope: !6083)
!6109 = !DILocation(line: 155, column: 2, scope: !6083)
!6110 = !DILocation(line: 155, column: 7, scope: !6083)
!6111 = !DILocation(line: 155, column: 12, scope: !6083)
!6112 = !DILocation(line: 156, column: 2, scope: !6083)
!6113 = !DILocation(line: 156, column: 2, scope: !6114)
!6114 = distinct !DILexicalBlock(scope: !6083, file: !5632, line: 156, column: 2)
!6115 = !DILocation(line: 156, column: 2, scope: !6116)
!6116 = distinct !DILexicalBlock(scope: !6114, file: !5632, line: 156, column: 2)
!6117 = !DILocation(line: 156, column: 2, scope: !6118)
!6118 = distinct !DILexicalBlock(scope: !6114, file: !5632, line: 156, column: 2)
!6119 = !DILocation(line: 157, column: 1, scope: !6083)
!6120 = distinct !DISubprogram(name: "__list_add_valid", scope: !5632, file: !5632, line: 128, type: !6121, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !6123)
!6121 = !DISubroutineType(types: !6122)
!6122 = !{!877, !173, !173, !173}
!6123 = !{!6124, !6125, !6126}
!6124 = !DILocalVariable(name: "new", arg: 1, scope: !6120, file: !5632, line: 128, type: !173)
!6125 = !DILocalVariable(name: "prev", arg: 2, scope: !6120, file: !5632, line: 129, type: !173)
!6126 = !DILocalVariable(name: "next", arg: 3, scope: !6120, file: !5632, line: 130, type: !173)
!6127 = !DILocation(line: 128, column: 55, scope: !6120)
!6128 = !DILocation(line: 129, column: 23, scope: !6120)
!6129 = !DILocation(line: 130, column: 23, scope: !6120)
!6130 = !DILocation(line: 132, column: 2, scope: !6120)
!6131 = distinct !DISubprogram(name: "__list_del_entry", scope: !5632, file: !5632, line: 213, type: !5633, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !6132)
!6132 = !{!6133}
!6133 = !DILocalVariable(name: "entry", arg: 1, scope: !6131, file: !5632, line: 213, type: !173)
!6134 = !DILocation(line: 213, column: 55, scope: !6131)
!6135 = !DILocation(line: 215, column: 30, scope: !6136)
!6136 = distinct !DILexicalBlock(scope: !6131, file: !5632, line: 215, column: 6)
!6137 = !DILocation(line: 215, column: 7, scope: !6136)
!6138 = !DILocation(line: 215, column: 6, scope: !6131)
!6139 = !DILocation(line: 216, column: 3, scope: !6136)
!6140 = !DILocation(line: 218, column: 13, scope: !6131)
!6141 = !DILocation(line: 218, column: 20, scope: !6131)
!6142 = !DILocation(line: 218, column: 26, scope: !6131)
!6143 = !DILocation(line: 218, column: 33, scope: !6131)
!6144 = !DILocation(line: 218, column: 2, scope: !6131)
!6145 = !DILocation(line: 219, column: 1, scope: !6131)
!6146 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !5632, file: !5632, line: 134, type: !6147, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !6149)
!6147 = !DISubroutineType(types: !6148)
!6148 = !{!877, !173}
!6149 = !{!6150}
!6150 = !DILocalVariable(name: "entry", arg: 1, scope: !6146, file: !5632, line: 134, type: !173)
!6151 = !DILocation(line: 134, column: 61, scope: !6146)
!6152 = !DILocation(line: 136, column: 2, scope: !6146)
!6153 = distinct !DISubprogram(name: "__list_del", scope: !5632, file: !5632, line: 193, type: !5852, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !6154)
!6154 = !{!6155, !6156}
!6155 = !DILocalVariable(name: "prev", arg: 1, scope: !6153, file: !5632, line: 193, type: !173)
!6156 = !DILocalVariable(name: "next", arg: 2, scope: !6153, file: !5632, line: 193, type: !173)
!6157 = !DILocation(line: 193, column: 50, scope: !6153)
!6158 = !DILocation(line: 193, column: 75, scope: !6153)
!6159 = !DILocation(line: 195, column: 15, scope: !6153)
!6160 = !DILocation(line: 195, column: 2, scope: !6153)
!6161 = !DILocation(line: 195, column: 8, scope: !6153)
!6162 = !DILocation(line: 195, column: 13, scope: !6153)
!6163 = !DILocation(line: 196, column: 2, scope: !6153)
!6164 = !DILocation(line: 196, column: 2, scope: !6165)
!6165 = distinct !DILexicalBlock(scope: !6153, file: !5632, line: 196, column: 2)
!6166 = !DILocation(line: 196, column: 2, scope: !6167)
!6167 = distinct !DILexicalBlock(scope: !6165, file: !5632, line: 196, column: 2)
!6168 = !DILocation(line: 196, column: 2, scope: !6169)
!6169 = distinct !DILexicalBlock(scope: !6165, file: !5632, line: 196, column: 2)
!6170 = !DILocation(line: 197, column: 1, scope: !6153)
!6171 = !DISubprogram(name: "proc_mkdir_mode", scope: !4353, file: !4353, line: 88, type: !6172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6172 = !DISubroutineType(types: !6173)
!6173 = !{!4257, !7, !308, !4257}
!6174 = !DISubprogram(name: "proc_create_data", scope: !4353, file: !4353, line: 105, type: !6175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6175 = !DISubroutineType(types: !6176)
!6176 = !{!4257, !7, !308, !4257, !5661, !163}
!6177 = !DISubprogram(name: "proc_set_size", scope: !4353, file: !4353, line: 111, type: !6178, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6178 = !DISubroutineType(types: !6179)
!6179 = !{null, !4257, !507}
!6180 = distinct !DISubprogram(name: "snd_info_entry_open", scope: !3, file: !3, line: 235, type: !1554, scopeLine: 236, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !6181)
!6181 = !{!6182, !6183, !6184, !6185, !6193, !6194, !6195, !6196}
!6182 = !DILocalVariable(name: "inode", arg: 1, scope: !6180, file: !3, line: 235, type: !346)
!6183 = !DILocalVariable(name: "file", arg: 2, scope: !6180, file: !3, line: 235, type: !1005)
!6184 = !DILocalVariable(name: "entry", scope: !6180, file: !3, line: 237, type: !4182)
!6185 = !DILocalVariable(name: "data", scope: !6180, file: !3, line: 238, type: !6186)
!6186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6187, size: 64)
!6187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_info_private_data", file: !3, line: 51, size: 256, elements: !6188)
!6188 = !{!6189, !6190, !6191, !6192}
!6189 = !DIDerivedType(tag: DW_TAG_member, name: "rbuffer", scope: !6187, file: !3, line: 52, baseType: !4200, size: 64)
!6190 = !DIDerivedType(tag: DW_TAG_member, name: "wbuffer", scope: !6187, file: !3, line: 53, baseType: !4200, size: 64, offset: 64)
!6191 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !6187, file: !3, line: 54, baseType: !4182, size: 64, offset: 128)
!6192 = !DIDerivedType(tag: DW_TAG_member, name: "file_private_data", scope: !6187, file: !3, line: 55, baseType: !163, size: 64, offset: 192)
!6193 = !DILocalVariable(name: "mode", scope: !6180, file: !3, line: 239, type: !6)
!6194 = !DILocalVariable(name: "err", scope: !6180, file: !3, line: 239, type: !6)
!6195 = !DILabel(scope: !6180, name: "error", file: !3, line: 263)
!6196 = !DILabel(scope: !6180, name: "unlock", file: !3, line: 266)
!6197 = !DILocation(line: 235, column: 46, scope: !6180)
!6198 = !DILocation(line: 235, column: 66, scope: !6180)
!6199 = !DILocation(line: 237, column: 2, scope: !6180)
!6200 = !DILocation(line: 237, column: 25, scope: !6180)
!6201 = !DILocation(line: 237, column: 42, scope: !6180)
!6202 = !DILocation(line: 237, column: 33, scope: !6180)
!6203 = !DILocation(line: 238, column: 2, scope: !6180)
!6204 = !DILocation(line: 238, column: 32, scope: !6180)
!6205 = !DILocation(line: 239, column: 2, scope: !6180)
!6206 = !DILocation(line: 239, column: 6, scope: !6180)
!6207 = !DILocation(line: 239, column: 12, scope: !6180)
!6208 = !DILocation(line: 241, column: 2, scope: !6180)
!6209 = !DILocation(line: 242, column: 27, scope: !6180)
!6210 = !DILocation(line: 242, column: 8, scope: !6180)
!6211 = !DILocation(line: 242, column: 6, scope: !6180)
!6212 = !DILocation(line: 243, column: 6, scope: !6213)
!6213 = distinct !DILexicalBlock(scope: !6180, file: !3, line: 243, column: 6)
!6214 = !DILocation(line: 243, column: 10, scope: !6213)
!6215 = !DILocation(line: 243, column: 6, scope: !6180)
!6216 = !DILocation(line: 244, column: 3, scope: !6213)
!6217 = !DILocation(line: 246, column: 9, scope: !6180)
!6218 = !DILocation(line: 246, column: 15, scope: !6180)
!6219 = !DILocation(line: 246, column: 23, scope: !6180)
!6220 = !DILocation(line: 246, column: 7, scope: !6180)
!6221 = !DILocation(line: 247, column: 8, scope: !6222)
!6222 = distinct !DILexicalBlock(scope: !6180, file: !3, line: 247, column: 6)
!6223 = !DILocation(line: 247, column: 13, scope: !6222)
!6224 = !DILocation(line: 247, column: 25, scope: !6222)
!6225 = !DILocation(line: 247, column: 28, scope: !6222)
!6226 = !DILocation(line: 247, column: 33, scope: !6222)
!6227 = !DILocation(line: 247, column: 44, scope: !6222)
!6228 = !DILocation(line: 247, column: 48, scope: !6222)
!6229 = !DILocation(line: 247, column: 55, scope: !6222)
!6230 = !DILocation(line: 247, column: 57, scope: !6222)
!6231 = !DILocation(line: 247, column: 62, scope: !6222)
!6232 = !DILocation(line: 247, column: 68, scope: !6222)
!6233 = !DILocation(line: 248, column: 8, scope: !6222)
!6234 = !DILocation(line: 248, column: 13, scope: !6222)
!6235 = !DILocation(line: 248, column: 25, scope: !6222)
!6236 = !DILocation(line: 248, column: 28, scope: !6222)
!6237 = !DILocation(line: 248, column: 33, scope: !6222)
!6238 = !DILocation(line: 248, column: 44, scope: !6222)
!6239 = !DILocation(line: 248, column: 48, scope: !6222)
!6240 = !DILocation(line: 248, column: 55, scope: !6222)
!6241 = !DILocation(line: 248, column: 57, scope: !6222)
!6242 = !DILocation(line: 248, column: 62, scope: !6222)
!6243 = !DILocation(line: 247, column: 6, scope: !6180)
!6244 = !DILocation(line: 249, column: 7, scope: !6245)
!6245 = distinct !DILexicalBlock(scope: !6222, file: !3, line: 248, column: 70)
!6246 = !DILocation(line: 250, column: 3, scope: !6245)
!6247 = !DILocation(line: 253, column: 6, scope: !6248)
!6248 = distinct !DILexicalBlock(scope: !6180, file: !3, line: 253, column: 6)
!6249 = !DILocation(line: 253, column: 13, scope: !6248)
!6250 = !DILocation(line: 253, column: 15, scope: !6248)
!6251 = !DILocation(line: 253, column: 20, scope: !6248)
!6252 = !DILocation(line: 253, column: 6, scope: !6180)
!6253 = !DILocation(line: 254, column: 9, scope: !6254)
!6254 = distinct !DILexicalBlock(scope: !6248, file: !3, line: 253, column: 26)
!6255 = !DILocation(line: 254, column: 16, scope: !6254)
!6256 = !DILocation(line: 254, column: 18, scope: !6254)
!6257 = !DILocation(line: 254, column: 23, scope: !6254)
!6258 = !DILocation(line: 254, column: 28, scope: !6254)
!6259 = !DILocation(line: 254, column: 35, scope: !6254)
!6260 = !DILocation(line: 254, column: 42, scope: !6254)
!6261 = !DILocation(line: 254, column: 48, scope: !6254)
!6262 = !DILocation(line: 254, column: 7, scope: !6254)
!6263 = !DILocation(line: 255, column: 7, scope: !6264)
!6264 = distinct !DILexicalBlock(scope: !6254, file: !3, line: 255, column: 7)
!6265 = !DILocation(line: 255, column: 11, scope: !6264)
!6266 = !DILocation(line: 255, column: 7, scope: !6254)
!6267 = !DILocation(line: 256, column: 4, scope: !6264)
!6268 = !DILocation(line: 257, column: 2, scope: !6254)
!6269 = !DILocation(line: 259, column: 23, scope: !6180)
!6270 = !DILocation(line: 259, column: 2, scope: !6180)
!6271 = !DILocation(line: 259, column: 8, scope: !6180)
!6272 = !DILocation(line: 259, column: 21, scope: !6180)
!6273 = !DILocation(line: 260, column: 2, scope: !6180)
!6274 = !DILocation(line: 261, column: 2, scope: !6180)
!6275 = !DILocation(line: 263, column: 2, scope: !6180)
!6276 = !DILocation(line: 264, column: 8, scope: !6180)
!6277 = !DILocation(line: 264, column: 2, scope: !6180)
!6278 = !DILocation(line: 265, column: 13, scope: !6180)
!6279 = !DILocation(line: 265, column: 20, scope: !6180)
!6280 = !DILocation(line: 265, column: 2, scope: !6180)
!6281 = !DILocation(line: 266, column: 2, scope: !6180)
!6282 = !DILocation(line: 267, column: 2, scope: !6180)
!6283 = !DILocation(line: 268, column: 9, scope: !6180)
!6284 = !DILocation(line: 268, column: 2, scope: !6180)
!6285 = !DILocation(line: 269, column: 1, scope: !6180)
!6286 = distinct !DISubprogram(name: "snd_info_entry_read", scope: !3, file: !3, line: 146, type: !1008, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !6287)
!6287 = !{!6288, !6289, !6290, !6291, !6292, !6293, !6294, !6295, !6296, !6298}
!6288 = !DILocalVariable(name: "file", arg: 1, scope: !6286, file: !3, line: 146, type: !1005)
!6289 = !DILocalVariable(name: "buffer", arg: 2, scope: !6286, file: !3, line: 146, type: !266)
!6290 = !DILocalVariable(name: "count", arg: 3, scope: !6286, file: !3, line: 147, type: !313)
!6291 = !DILocalVariable(name: "offset", arg: 4, scope: !6286, file: !3, line: 147, type: !659)
!6292 = !DILocalVariable(name: "data", scope: !6286, file: !3, line: 149, type: !6186)
!6293 = !DILocalVariable(name: "entry", scope: !6286, file: !3, line: 150, type: !4182)
!6294 = !DILocalVariable(name: "size", scope: !6286, file: !3, line: 151, type: !313)
!6295 = !DILocalVariable(name: "pos", scope: !6286, file: !3, line: 152, type: !507)
!6296 = !DILocalVariable(name: "__UNIQUE_ID___x290", scope: !6297, file: !3, line: 160, type: !313)
!6297 = distinct !DILexicalBlock(scope: !6286, file: !3, line: 160, column: 9)
!6298 = !DILocalVariable(name: "__UNIQUE_ID___y291", scope: !6297, file: !3, line: 160, type: !313)
!6299 = !DILocation(line: 146, column: 49, scope: !6286)
!6300 = !DILocation(line: 146, column: 68, scope: !6286)
!6301 = !DILocation(line: 147, column: 15, scope: !6286)
!6302 = !DILocation(line: 147, column: 31, scope: !6286)
!6303 = !DILocation(line: 149, column: 2, scope: !6286)
!6304 = !DILocation(line: 149, column: 32, scope: !6286)
!6305 = !DILocation(line: 149, column: 39, scope: !6286)
!6306 = !DILocation(line: 149, column: 45, scope: !6286)
!6307 = !DILocation(line: 150, column: 2, scope: !6286)
!6308 = !DILocation(line: 150, column: 25, scope: !6286)
!6309 = !DILocation(line: 150, column: 33, scope: !6286)
!6310 = !DILocation(line: 150, column: 39, scope: !6286)
!6311 = !DILocation(line: 151, column: 2, scope: !6286)
!6312 = !DILocation(line: 151, column: 9, scope: !6286)
!6313 = !DILocation(line: 152, column: 2, scope: !6286)
!6314 = !DILocation(line: 152, column: 9, scope: !6286)
!6315 = !DILocation(line: 154, column: 9, scope: !6286)
!6316 = !DILocation(line: 154, column: 8, scope: !6286)
!6317 = !DILocation(line: 154, column: 6, scope: !6286)
!6318 = !DILocation(line: 155, column: 17, scope: !6319)
!6319 = distinct !DILexicalBlock(scope: !6286, file: !3, line: 155, column: 6)
!6320 = !DILocation(line: 155, column: 22, scope: !6319)
!6321 = !DILocation(line: 155, column: 7, scope: !6319)
!6322 = !DILocation(line: 155, column: 6, scope: !6286)
!6323 = !DILocation(line: 156, column: 3, scope: !6319)
!6324 = !DILocation(line: 157, column: 6, scope: !6325)
!6325 = distinct !DILexicalBlock(scope: !6286, file: !3, line: 157, column: 6)
!6326 = !DILocation(line: 157, column: 13, scope: !6325)
!6327 = !DILocation(line: 157, column: 20, scope: !6325)
!6328 = !DILocation(line: 157, column: 10, scope: !6325)
!6329 = !DILocation(line: 157, column: 6, scope: !6286)
!6330 = !DILocation(line: 158, column: 3, scope: !6325)
!6331 = !DILocation(line: 159, column: 9, scope: !6286)
!6332 = !DILocation(line: 159, column: 16, scope: !6286)
!6333 = !DILocation(line: 159, column: 23, scope: !6286)
!6334 = !DILocation(line: 159, column: 21, scope: !6286)
!6335 = !DILocation(line: 159, column: 7, scope: !6286)
!6336 = !DILocation(line: 160, column: 9, scope: !6297)
!6337 = !DILocation(line: 160, column: 9, scope: !6286)
!6338 = !DILocation(line: 160, column: 7, scope: !6286)
!6339 = !DILocation(line: 161, column: 9, scope: !6286)
!6340 = !DILocation(line: 161, column: 16, scope: !6286)
!6341 = !DILocation(line: 161, column: 18, scope: !6286)
!6342 = !DILocation(line: 161, column: 23, scope: !6286)
!6343 = !DILocation(line: 161, column: 28, scope: !6286)
!6344 = !DILocation(line: 161, column: 35, scope: !6286)
!6345 = !DILocation(line: 161, column: 41, scope: !6286)
!6346 = !DILocation(line: 162, column: 7, scope: !6286)
!6347 = !DILocation(line: 162, column: 13, scope: !6286)
!6348 = !DILocation(line: 162, column: 21, scope: !6286)
!6349 = !DILocation(line: 162, column: 27, scope: !6286)
!6350 = !DILocation(line: 161, column: 7, scope: !6286)
!6351 = !DILocation(line: 163, column: 16, scope: !6352)
!6352 = distinct !DILexicalBlock(scope: !6286, file: !3, line: 163, column: 6)
!6353 = !DILocation(line: 163, column: 21, scope: !6352)
!6354 = !DILocation(line: 163, column: 6, scope: !6286)
!6355 = !DILocation(line: 164, column: 13, scope: !6352)
!6356 = !DILocation(line: 164, column: 19, scope: !6352)
!6357 = !DILocation(line: 164, column: 17, scope: !6352)
!6358 = !DILocation(line: 164, column: 4, scope: !6352)
!6359 = !DILocation(line: 164, column: 11, scope: !6352)
!6360 = !DILocation(line: 164, column: 3, scope: !6352)
!6361 = !DILocation(line: 165, column: 9, scope: !6286)
!6362 = !DILocation(line: 165, column: 2, scope: !6286)
!6363 = !DILocation(line: 166, column: 1, scope: !6286)
!6364 = distinct !DISubprogram(name: "snd_info_entry_write", scope: !3, file: !3, line: 168, type: !1012, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !6365)
!6365 = !{!6366, !6367, !6368, !6369, !6370, !6371, !6372, !6373, !6374, !6377, !6379}
!6366 = !DILocalVariable(name: "file", arg: 1, scope: !6364, file: !3, line: 168, type: !1005)
!6367 = !DILocalVariable(name: "buffer", arg: 2, scope: !6364, file: !3, line: 168, type: !7)
!6368 = !DILocalVariable(name: "count", arg: 3, scope: !6364, file: !3, line: 169, type: !313)
!6369 = !DILocalVariable(name: "offset", arg: 4, scope: !6364, file: !3, line: 169, type: !659)
!6370 = !DILocalVariable(name: "data", scope: !6364, file: !3, line: 171, type: !6186)
!6371 = !DILocalVariable(name: "entry", scope: !6364, file: !3, line: 172, type: !4182)
!6372 = !DILocalVariable(name: "size", scope: !6364, file: !3, line: 173, type: !298)
!6373 = !DILocalVariable(name: "pos", scope: !6364, file: !3, line: 174, type: !507)
!6374 = !DILocalVariable(name: "maxsize", scope: !6375, file: !3, line: 180, type: !313)
!6375 = distinct !DILexicalBlock(scope: !6376, file: !3, line: 179, column: 17)
!6376 = distinct !DILexicalBlock(scope: !6364, file: !3, line: 179, column: 6)
!6377 = !DILocalVariable(name: "__UNIQUE_ID___x292", scope: !6378, file: !3, line: 181, type: !313)
!6378 = distinct !DILexicalBlock(scope: !6375, file: !3, line: 181, column: 11)
!6379 = !DILocalVariable(name: "__UNIQUE_ID___y293", scope: !6378, file: !3, line: 181, type: !313)
!6380 = !DILocation(line: 168, column: 50, scope: !6364)
!6381 = !DILocation(line: 168, column: 75, scope: !6364)
!6382 = !DILocation(line: 169, column: 16, scope: !6364)
!6383 = !DILocation(line: 169, column: 32, scope: !6364)
!6384 = !DILocation(line: 171, column: 2, scope: !6364)
!6385 = !DILocation(line: 171, column: 32, scope: !6364)
!6386 = !DILocation(line: 171, column: 39, scope: !6364)
!6387 = !DILocation(line: 171, column: 45, scope: !6364)
!6388 = !DILocation(line: 172, column: 2, scope: !6364)
!6389 = !DILocation(line: 172, column: 25, scope: !6364)
!6390 = !DILocation(line: 172, column: 33, scope: !6364)
!6391 = !DILocation(line: 172, column: 39, scope: !6364)
!6392 = !DILocation(line: 173, column: 2, scope: !6364)
!6393 = !DILocation(line: 173, column: 10, scope: !6364)
!6394 = !DILocation(line: 174, column: 2, scope: !6364)
!6395 = !DILocation(line: 174, column: 9, scope: !6364)
!6396 = !DILocation(line: 176, column: 9, scope: !6364)
!6397 = !DILocation(line: 176, column: 8, scope: !6364)
!6398 = !DILocation(line: 176, column: 6, scope: !6364)
!6399 = !DILocation(line: 177, column: 17, scope: !6400)
!6400 = distinct !DILexicalBlock(scope: !6364, file: !3, line: 177, column: 6)
!6401 = !DILocation(line: 177, column: 22, scope: !6400)
!6402 = !DILocation(line: 177, column: 7, scope: !6400)
!6403 = !DILocation(line: 177, column: 6, scope: !6364)
!6404 = !DILocation(line: 178, column: 3, scope: !6400)
!6405 = !DILocation(line: 179, column: 6, scope: !6376)
!6406 = !DILocation(line: 179, column: 12, scope: !6376)
!6407 = !DILocation(line: 179, column: 6, scope: !6364)
!6408 = !DILocation(line: 180, column: 3, scope: !6375)
!6409 = !DILocation(line: 180, column: 10, scope: !6375)
!6410 = !DILocation(line: 180, column: 20, scope: !6375)
!6411 = !DILocation(line: 180, column: 27, scope: !6375)
!6412 = !DILocation(line: 180, column: 34, scope: !6375)
!6413 = !DILocation(line: 180, column: 32, scope: !6375)
!6414 = !DILocation(line: 181, column: 11, scope: !6378)
!6415 = !DILocation(line: 181, column: 11, scope: !6375)
!6416 = !DILocation(line: 181, column: 9, scope: !6375)
!6417 = !DILocation(line: 182, column: 10, scope: !6375)
!6418 = !DILocation(line: 182, column: 17, scope: !6375)
!6419 = !DILocation(line: 182, column: 19, scope: !6375)
!6420 = !DILocation(line: 182, column: 24, scope: !6375)
!6421 = !DILocation(line: 182, column: 30, scope: !6375)
!6422 = !DILocation(line: 182, column: 37, scope: !6375)
!6423 = !DILocation(line: 182, column: 43, scope: !6375)
!6424 = !DILocation(line: 183, column: 9, scope: !6375)
!6425 = !DILocation(line: 183, column: 15, scope: !6375)
!6426 = !DILocation(line: 183, column: 23, scope: !6375)
!6427 = !DILocation(line: 183, column: 30, scope: !6375)
!6428 = !DILocation(line: 182, column: 8, scope: !6375)
!6429 = !DILocation(line: 184, column: 2, scope: !6376)
!6430 = !DILocation(line: 184, column: 2, scope: !6375)
!6431 = !DILocation(line: 185, column: 6, scope: !6432)
!6432 = distinct !DILexicalBlock(scope: !6364, file: !3, line: 185, column: 6)
!6433 = !DILocation(line: 185, column: 11, scope: !6432)
!6434 = !DILocation(line: 185, column: 6, scope: !6364)
!6435 = !DILocation(line: 186, column: 13, scope: !6432)
!6436 = !DILocation(line: 186, column: 19, scope: !6432)
!6437 = !DILocation(line: 186, column: 17, scope: !6432)
!6438 = !DILocation(line: 186, column: 4, scope: !6432)
!6439 = !DILocation(line: 186, column: 11, scope: !6432)
!6440 = !DILocation(line: 186, column: 3, scope: !6432)
!6441 = !DILocation(line: 187, column: 9, scope: !6364)
!6442 = !DILocation(line: 187, column: 2, scope: !6364)
!6443 = !DILocation(line: 188, column: 1, scope: !6364)
!6444 = distinct !DISubprogram(name: "snd_info_entry_llseek", scope: !3, file: !3, line: 104, type: !1003, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !6445)
!6445 = !{!6446, !6447, !6448, !6449, !6450, !6451, !6452, !6453}
!6446 = !DILocalVariable(name: "file", arg: 1, scope: !6444, file: !3, line: 104, type: !1005)
!6447 = !DILocalVariable(name: "offset", arg: 2, scope: !6444, file: !3, line: 104, type: !507)
!6448 = !DILocalVariable(name: "orig", arg: 3, scope: !6444, file: !3, line: 104, type: !6)
!6449 = !DILocalVariable(name: "data", scope: !6444, file: !3, line: 106, type: !6186)
!6450 = !DILocalVariable(name: "entry", scope: !6444, file: !3, line: 107, type: !4182)
!6451 = !DILocalVariable(name: "ret", scope: !6444, file: !3, line: 108, type: !507)
!6452 = !DILocalVariable(name: "size", scope: !6444, file: !3, line: 108, type: !507)
!6453 = !DILabel(scope: !6444, name: "out", file: !3, line: 141)
!6454 = !DILocation(line: 104, column: 50, scope: !6444)
!6455 = !DILocation(line: 104, column: 63, scope: !6444)
!6456 = !DILocation(line: 104, column: 75, scope: !6444)
!6457 = !DILocation(line: 106, column: 2, scope: !6444)
!6458 = !DILocation(line: 106, column: 32, scope: !6444)
!6459 = !DILocation(line: 107, column: 2, scope: !6444)
!6460 = !DILocation(line: 107, column: 25, scope: !6444)
!6461 = !DILocation(line: 108, column: 2, scope: !6444)
!6462 = !DILocation(line: 108, column: 9, scope: !6444)
!6463 = !DILocation(line: 108, column: 24, scope: !6444)
!6464 = !DILocation(line: 110, column: 9, scope: !6444)
!6465 = !DILocation(line: 110, column: 15, scope: !6444)
!6466 = !DILocation(line: 110, column: 7, scope: !6444)
!6467 = !DILocation(line: 111, column: 10, scope: !6444)
!6468 = !DILocation(line: 111, column: 16, scope: !6444)
!6469 = !DILocation(line: 111, column: 8, scope: !6444)
!6470 = !DILocation(line: 112, column: 14, scope: !6444)
!6471 = !DILocation(line: 112, column: 21, scope: !6444)
!6472 = !DILocation(line: 112, column: 2, scope: !6444)
!6473 = !DILocation(line: 113, column: 6, scope: !6474)
!6474 = distinct !DILexicalBlock(scope: !6444, file: !3, line: 113, column: 6)
!6475 = !DILocation(line: 113, column: 13, scope: !6474)
!6476 = !DILocation(line: 113, column: 15, scope: !6474)
!6477 = !DILocation(line: 113, column: 20, scope: !6474)
!6478 = !DILocation(line: 113, column: 6, scope: !6444)
!6479 = !DILocation(line: 114, column: 9, scope: !6480)
!6480 = distinct !DILexicalBlock(scope: !6474, file: !3, line: 113, column: 28)
!6481 = !DILocation(line: 114, column: 16, scope: !6480)
!6482 = !DILocation(line: 114, column: 18, scope: !6480)
!6483 = !DILocation(line: 114, column: 23, scope: !6480)
!6484 = !DILocation(line: 114, column: 30, scope: !6480)
!6485 = !DILocation(line: 115, column: 9, scope: !6480)
!6486 = !DILocation(line: 115, column: 15, scope: !6480)
!6487 = !DILocation(line: 116, column: 9, scope: !6480)
!6488 = !DILocation(line: 116, column: 15, scope: !6480)
!6489 = !DILocation(line: 116, column: 23, scope: !6480)
!6490 = !DILocation(line: 114, column: 7, scope: !6480)
!6491 = !DILocation(line: 117, column: 3, scope: !6480)
!6492 = !DILocation(line: 120, column: 9, scope: !6444)
!6493 = !DILocation(line: 120, column: 16, scope: !6444)
!6494 = !DILocation(line: 120, column: 7, scope: !6444)
!6495 = !DILocation(line: 121, column: 10, scope: !6444)
!6496 = !DILocation(line: 121, column: 2, scope: !6444)
!6497 = !DILocation(line: 125, column: 13, scope: !6498)
!6498 = distinct !DILexicalBlock(scope: !6444, file: !3, line: 121, column: 16)
!6499 = !DILocation(line: 125, column: 19, scope: !6498)
!6500 = !DILocation(line: 125, column: 10, scope: !6498)
!6501 = !DILocation(line: 126, column: 3, scope: !6498)
!6502 = !DILocation(line: 128, column: 8, scope: !6503)
!6503 = distinct !DILexicalBlock(scope: !6498, file: !3, line: 128, column: 7)
!6504 = !DILocation(line: 128, column: 7, scope: !6498)
!6505 = !DILocation(line: 129, column: 4, scope: !6503)
!6506 = !DILocation(line: 130, column: 13, scope: !6498)
!6507 = !DILocation(line: 130, column: 10, scope: !6498)
!6508 = !DILocation(line: 131, column: 3, scope: !6498)
!6509 = !DILocation(line: 133, column: 3, scope: !6498)
!6510 = !DILocation(line: 135, column: 6, scope: !6511)
!6511 = distinct !DILexicalBlock(scope: !6444, file: !3, line: 135, column: 6)
!6512 = !DILocation(line: 135, column: 13, scope: !6511)
!6513 = !DILocation(line: 135, column: 6, scope: !6444)
!6514 = !DILocation(line: 136, column: 3, scope: !6511)
!6515 = !DILocation(line: 137, column: 6, scope: !6516)
!6516 = distinct !DILexicalBlock(scope: !6444, file: !3, line: 137, column: 6)
!6517 = !DILocation(line: 137, column: 11, scope: !6516)
!6518 = !DILocation(line: 137, column: 14, scope: !6516)
!6519 = !DILocation(line: 137, column: 23, scope: !6516)
!6520 = !DILocation(line: 137, column: 21, scope: !6516)
!6521 = !DILocation(line: 137, column: 6, scope: !6444)
!6522 = !DILocation(line: 138, column: 12, scope: !6516)
!6523 = !DILocation(line: 138, column: 10, scope: !6516)
!6524 = !DILocation(line: 138, column: 3, scope: !6516)
!6525 = !DILocation(line: 139, column: 16, scope: !6444)
!6526 = !DILocation(line: 139, column: 2, scope: !6444)
!6527 = !DILocation(line: 139, column: 8, scope: !6444)
!6528 = !DILocation(line: 139, column: 14, scope: !6444)
!6529 = !DILocation(line: 140, column: 8, scope: !6444)
!6530 = !DILocation(line: 140, column: 6, scope: !6444)
!6531 = !DILocation(line: 140, column: 2, scope: !6444)
!6532 = !DILocation(line: 141, column: 2, scope: !6444)
!6533 = !DILocation(line: 142, column: 16, scope: !6444)
!6534 = !DILocation(line: 142, column: 23, scope: !6444)
!6535 = !DILocation(line: 142, column: 2, scope: !6444)
!6536 = !DILocation(line: 143, column: 9, scope: !6444)
!6537 = !DILocation(line: 144, column: 1, scope: !6444)
!6538 = !DILocation(line: 143, column: 2, scope: !6444)
!6539 = distinct !DISubprogram(name: "snd_info_entry_release", scope: !3, file: !3, line: 271, type: !1554, scopeLine: 272, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !6540)
!6540 = !{!6541, !6542, !6543, !6544}
!6541 = !DILocalVariable(name: "inode", arg: 1, scope: !6539, file: !3, line: 271, type: !346)
!6542 = !DILocalVariable(name: "file", arg: 2, scope: !6539, file: !3, line: 271, type: !1005)
!6543 = !DILocalVariable(name: "data", scope: !6539, file: !3, line: 273, type: !6186)
!6544 = !DILocalVariable(name: "entry", scope: !6539, file: !3, line: 274, type: !4182)
!6545 = !DILocation(line: 271, column: 49, scope: !6539)
!6546 = !DILocation(line: 271, column: 69, scope: !6539)
!6547 = !DILocation(line: 273, column: 2, scope: !6539)
!6548 = !DILocation(line: 273, column: 32, scope: !6539)
!6549 = !DILocation(line: 273, column: 39, scope: !6539)
!6550 = !DILocation(line: 273, column: 45, scope: !6539)
!6551 = !DILocation(line: 274, column: 2, scope: !6539)
!6552 = !DILocation(line: 274, column: 25, scope: !6539)
!6553 = !DILocation(line: 274, column: 33, scope: !6539)
!6554 = !DILocation(line: 274, column: 39, scope: !6539)
!6555 = !DILocation(line: 276, column: 6, scope: !6556)
!6556 = distinct !DILexicalBlock(scope: !6539, file: !3, line: 276, column: 6)
!6557 = !DILocation(line: 276, column: 13, scope: !6556)
!6558 = !DILocation(line: 276, column: 15, scope: !6556)
!6559 = !DILocation(line: 276, column: 20, scope: !6556)
!6560 = !DILocation(line: 276, column: 6, scope: !6539)
!6561 = !DILocation(line: 277, column: 3, scope: !6556)
!6562 = !DILocation(line: 277, column: 10, scope: !6556)
!6563 = !DILocation(line: 277, column: 12, scope: !6556)
!6564 = !DILocation(line: 277, column: 17, scope: !6556)
!6565 = !DILocation(line: 277, column: 25, scope: !6556)
!6566 = !DILocation(line: 277, column: 32, scope: !6556)
!6567 = !DILocation(line: 277, column: 38, scope: !6556)
!6568 = !DILocation(line: 277, column: 46, scope: !6556)
!6569 = !DILocation(line: 278, column: 11, scope: !6556)
!6570 = !DILocation(line: 278, column: 17, scope: !6556)
!6571 = !DILocation(line: 279, column: 13, scope: !6539)
!6572 = !DILocation(line: 279, column: 20, scope: !6539)
!6573 = !DILocation(line: 279, column: 2, scope: !6539)
!6574 = !DILocation(line: 280, column: 8, scope: !6539)
!6575 = !DILocation(line: 280, column: 2, scope: !6539)
!6576 = !DILocation(line: 282, column: 1, scope: !6539)
!6577 = !DILocation(line: 281, column: 2, scope: !6539)
!6578 = distinct !DISubprogram(name: "snd_info_entry_poll", scope: !3, file: !3, line: 190, type: !6579, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !6581)
!6579 = !DISubroutineType(types: !6580)
!6580 = !{!1066, !1005, !4239}
!6581 = !{!6582, !6583, !6584, !6585, !6586}
!6582 = !DILocalVariable(name: "file", arg: 1, scope: !6578, file: !3, line: 190, type: !1005)
!6583 = !DILocalVariable(name: "wait", arg: 2, scope: !6578, file: !3, line: 190, type: !4239)
!6584 = !DILocalVariable(name: "data", scope: !6578, file: !3, line: 192, type: !6186)
!6585 = !DILocalVariable(name: "entry", scope: !6578, file: !3, line: 193, type: !4182)
!6586 = !DILocalVariable(name: "mask", scope: !6578, file: !3, line: 194, type: !1066)
!6587 = !DILocation(line: 190, column: 50, scope: !6578)
!6588 = !DILocation(line: 190, column: 68, scope: !6578)
!6589 = !DILocation(line: 192, column: 2, scope: !6578)
!6590 = !DILocation(line: 192, column: 32, scope: !6578)
!6591 = !DILocation(line: 192, column: 39, scope: !6578)
!6592 = !DILocation(line: 192, column: 45, scope: !6578)
!6593 = !DILocation(line: 193, column: 2, scope: !6578)
!6594 = !DILocation(line: 193, column: 25, scope: !6578)
!6595 = !DILocation(line: 193, column: 33, scope: !6578)
!6596 = !DILocation(line: 193, column: 39, scope: !6578)
!6597 = !DILocation(line: 194, column: 2, scope: !6578)
!6598 = !DILocation(line: 194, column: 11, scope: !6578)
!6599 = !DILocation(line: 196, column: 6, scope: !6600)
!6600 = distinct !DILexicalBlock(scope: !6578, file: !3, line: 196, column: 6)
!6601 = !DILocation(line: 196, column: 13, scope: !6600)
!6602 = !DILocation(line: 196, column: 15, scope: !6600)
!6603 = !DILocation(line: 196, column: 20, scope: !6600)
!6604 = !DILocation(line: 196, column: 6, scope: !6578)
!6605 = !DILocation(line: 197, column: 10, scope: !6600)
!6606 = !DILocation(line: 197, column: 17, scope: !6600)
!6607 = !DILocation(line: 197, column: 19, scope: !6600)
!6608 = !DILocation(line: 197, column: 24, scope: !6600)
!6609 = !DILocation(line: 197, column: 29, scope: !6600)
!6610 = !DILocation(line: 198, column: 8, scope: !6600)
!6611 = !DILocation(line: 198, column: 14, scope: !6600)
!6612 = !DILocation(line: 199, column: 8, scope: !6600)
!6613 = !DILocation(line: 199, column: 14, scope: !6600)
!6614 = !DILocation(line: 197, column: 3, scope: !6600)
!6615 = !DILocation(line: 200, column: 6, scope: !6616)
!6616 = distinct !DILexicalBlock(scope: !6578, file: !3, line: 200, column: 6)
!6617 = !DILocation(line: 200, column: 13, scope: !6616)
!6618 = !DILocation(line: 200, column: 15, scope: !6616)
!6619 = !DILocation(line: 200, column: 20, scope: !6616)
!6620 = !DILocation(line: 200, column: 6, scope: !6578)
!6621 = !DILocation(line: 201, column: 8, scope: !6616)
!6622 = !DILocation(line: 201, column: 3, scope: !6616)
!6623 = !DILocation(line: 202, column: 6, scope: !6624)
!6624 = distinct !DILexicalBlock(scope: !6578, file: !3, line: 202, column: 6)
!6625 = !DILocation(line: 202, column: 13, scope: !6624)
!6626 = !DILocation(line: 202, column: 15, scope: !6624)
!6627 = !DILocation(line: 202, column: 20, scope: !6624)
!6628 = !DILocation(line: 202, column: 6, scope: !6578)
!6629 = !DILocation(line: 203, column: 8, scope: !6624)
!6630 = !DILocation(line: 203, column: 3, scope: !6624)
!6631 = !DILocation(line: 204, column: 9, scope: !6578)
!6632 = !DILocation(line: 204, column: 2, scope: !6578)
!6633 = !DILocation(line: 205, column: 1, scope: !6578)
!6634 = distinct !DISubprogram(name: "snd_info_entry_ioctl", scope: !3, file: !3, line: 207, type: !1081, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !6635)
!6635 = !{!6636, !6637, !6638, !6639, !6640}
!6636 = !DILocalVariable(name: "file", arg: 1, scope: !6634, file: !3, line: 207, type: !1005)
!6637 = !DILocalVariable(name: "cmd", arg: 2, scope: !6634, file: !3, line: 207, type: !14)
!6638 = !DILocalVariable(name: "arg", arg: 3, scope: !6634, file: !3, line: 208, type: !316)
!6639 = !DILocalVariable(name: "data", scope: !6634, file: !3, line: 210, type: !6186)
!6640 = !DILocalVariable(name: "entry", scope: !6634, file: !3, line: 211, type: !4182)
!6641 = !DILocation(line: 207, column: 47, scope: !6634)
!6642 = !DILocation(line: 207, column: 66, scope: !6634)
!6643 = !DILocation(line: 208, column: 19, scope: !6634)
!6644 = !DILocation(line: 210, column: 2, scope: !6634)
!6645 = !DILocation(line: 210, column: 32, scope: !6634)
!6646 = !DILocation(line: 210, column: 39, scope: !6634)
!6647 = !DILocation(line: 210, column: 45, scope: !6634)
!6648 = !DILocation(line: 211, column: 2, scope: !6634)
!6649 = !DILocation(line: 211, column: 25, scope: !6634)
!6650 = !DILocation(line: 211, column: 33, scope: !6634)
!6651 = !DILocation(line: 211, column: 39, scope: !6634)
!6652 = !DILocation(line: 213, column: 7, scope: !6653)
!6653 = distinct !DILexicalBlock(scope: !6634, file: !3, line: 213, column: 6)
!6654 = !DILocation(line: 213, column: 14, scope: !6653)
!6655 = !DILocation(line: 213, column: 16, scope: !6653)
!6656 = !DILocation(line: 213, column: 21, scope: !6653)
!6657 = !DILocation(line: 213, column: 6, scope: !6634)
!6658 = !DILocation(line: 214, column: 3, scope: !6653)
!6659 = !DILocation(line: 215, column: 9, scope: !6634)
!6660 = !DILocation(line: 215, column: 16, scope: !6634)
!6661 = !DILocation(line: 215, column: 18, scope: !6634)
!6662 = !DILocation(line: 215, column: 23, scope: !6634)
!6663 = !DILocation(line: 215, column: 29, scope: !6634)
!6664 = !DILocation(line: 215, column: 36, scope: !6634)
!6665 = !DILocation(line: 215, column: 42, scope: !6634)
!6666 = !DILocation(line: 216, column: 8, scope: !6634)
!6667 = !DILocation(line: 216, column: 14, scope: !6634)
!6668 = !DILocation(line: 216, column: 19, scope: !6634)
!6669 = !DILocation(line: 215, column: 2, scope: !6634)
!6670 = !DILocation(line: 217, column: 1, scope: !6634)
!6671 = distinct !DISubprogram(name: "snd_info_entry_mmap", scope: !3, file: !3, line: 219, type: !1086, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !6672)
!6672 = !{!6673, !6674, !6675, !6676, !6677}
!6673 = !DILocalVariable(name: "file", arg: 1, scope: !6671, file: !3, line: 219, type: !1005)
!6674 = !DILocalVariable(name: "vma", arg: 2, scope: !6671, file: !3, line: 219, type: !1088)
!6675 = !DILocalVariable(name: "inode", scope: !6671, file: !3, line: 221, type: !346)
!6676 = !DILocalVariable(name: "data", scope: !6671, file: !3, line: 222, type: !6186)
!6677 = !DILocalVariable(name: "entry", scope: !6671, file: !3, line: 223, type: !4182)
!6678 = !DILocation(line: 219, column: 45, scope: !6671)
!6679 = !DILocation(line: 219, column: 74, scope: !6671)
!6680 = !DILocation(line: 221, column: 2, scope: !6671)
!6681 = !DILocation(line: 221, column: 16, scope: !6671)
!6682 = !DILocation(line: 221, column: 35, scope: !6671)
!6683 = !DILocation(line: 221, column: 24, scope: !6671)
!6684 = !DILocation(line: 222, column: 2, scope: !6671)
!6685 = !DILocation(line: 222, column: 32, scope: !6671)
!6686 = !DILocation(line: 223, column: 2, scope: !6671)
!6687 = !DILocation(line: 223, column: 25, scope: !6671)
!6688 = !DILocation(line: 225, column: 9, scope: !6671)
!6689 = !DILocation(line: 225, column: 15, scope: !6671)
!6690 = !DILocation(line: 225, column: 7, scope: !6671)
!6691 = !DILocation(line: 226, column: 6, scope: !6692)
!6692 = distinct !DILexicalBlock(scope: !6671, file: !3, line: 226, column: 6)
!6693 = !DILocation(line: 226, column: 11, scope: !6692)
!6694 = !DILocation(line: 226, column: 6, scope: !6671)
!6695 = !DILocation(line: 227, column: 3, scope: !6692)
!6696 = !DILocation(line: 228, column: 10, scope: !6671)
!6697 = !DILocation(line: 228, column: 16, scope: !6671)
!6698 = !DILocation(line: 228, column: 8, scope: !6671)
!6699 = !DILocation(line: 229, column: 7, scope: !6700)
!6700 = distinct !DILexicalBlock(scope: !6671, file: !3, line: 229, column: 6)
!6701 = !DILocation(line: 229, column: 14, scope: !6700)
!6702 = !DILocation(line: 229, column: 16, scope: !6700)
!6703 = !DILocation(line: 229, column: 21, scope: !6700)
!6704 = !DILocation(line: 229, column: 6, scope: !6671)
!6705 = !DILocation(line: 230, column: 3, scope: !6700)
!6706 = !DILocation(line: 231, column: 9, scope: !6671)
!6707 = !DILocation(line: 231, column: 16, scope: !6671)
!6708 = !DILocation(line: 231, column: 18, scope: !6671)
!6709 = !DILocation(line: 231, column: 23, scope: !6671)
!6710 = !DILocation(line: 231, column: 28, scope: !6671)
!6711 = !DILocation(line: 231, column: 35, scope: !6671)
!6712 = !DILocation(line: 231, column: 41, scope: !6671)
!6713 = !DILocation(line: 232, column: 7, scope: !6671)
!6714 = !DILocation(line: 232, column: 14, scope: !6671)
!6715 = !DILocation(line: 232, column: 20, scope: !6671)
!6716 = !DILocation(line: 231, column: 2, scope: !6671)
!6717 = !DILocation(line: 233, column: 1, scope: !6671)
!6718 = distinct !DISubprogram(name: "pde_data", scope: !4353, file: !4353, line: 118, type: !6719, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !6721)
!6719 = !DISubroutineType(types: !6720)
!6720 = !{!163, !3278}
!6721 = !{!6722}
!6722 = !DILocalVariable(name: "inode", arg: 1, scope: !6718, file: !4353, line: 118, type: !3278)
!6723 = !DILocation(line: 118, column: 50, scope: !6718)
!6724 = !DILocation(line: 120, column: 9, scope: !6718)
!6725 = !DILocation(line: 120, column: 16, scope: !6718)
!6726 = !DILocation(line: 120, column: 2, scope: !6718)
!6727 = distinct !DISubprogram(name: "alloc_info_private", scope: !3, file: !3, line: 73, type: !6728, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !6731)
!6728 = !DISubroutineType(types: !6729)
!6729 = !{!6, !4182, !6730}
!6730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6186, size: 64)
!6731 = !{!6732, !6733, !6734}
!6732 = !DILocalVariable(name: "entry", arg: 1, scope: !6727, file: !3, line: 73, type: !4182)
!6733 = !DILocalVariable(name: "ret", arg: 2, scope: !6727, file: !3, line: 74, type: !6730)
!6734 = !DILocalVariable(name: "data", scope: !6727, file: !3, line: 76, type: !6186)
!6735 = !DILocation(line: 73, column: 54, scope: !6727)
!6736 = !DILocation(line: 74, column: 41, scope: !6727)
!6737 = !DILocation(line: 76, column: 2, scope: !6727)
!6738 = !DILocation(line: 76, column: 32, scope: !6727)
!6739 = !DILocation(line: 78, column: 7, scope: !6740)
!6740 = distinct !DILexicalBlock(scope: !6727, file: !3, line: 78, column: 6)
!6741 = !DILocation(line: 78, column: 13, scope: !6740)
!6742 = !DILocation(line: 78, column: 17, scope: !6740)
!6743 = !DILocation(line: 78, column: 24, scope: !6740)
!6744 = !DILocation(line: 78, column: 6, scope: !6727)
!6745 = !DILocation(line: 79, column: 3, scope: !6740)
!6746 = !DILocation(line: 80, column: 22, scope: !6747)
!6747 = distinct !DILexicalBlock(scope: !6727, file: !3, line: 80, column: 6)
!6748 = !DILocation(line: 80, column: 29, scope: !6747)
!6749 = !DILocation(line: 80, column: 7, scope: !6747)
!6750 = !DILocation(line: 80, column: 6, scope: !6727)
!6751 = !DILocation(line: 81, column: 3, scope: !6747)
!6752 = !DILocation(line: 82, column: 9, scope: !6727)
!6753 = !DILocation(line: 82, column: 7, scope: !6727)
!6754 = !DILocation(line: 83, column: 7, scope: !6755)
!6755 = distinct !DILexicalBlock(scope: !6727, file: !3, line: 83, column: 6)
!6756 = !DILocation(line: 83, column: 6, scope: !6727)
!6757 = !DILocation(line: 84, column: 14, scope: !6758)
!6758 = distinct !DILexicalBlock(scope: !6755, file: !3, line: 83, column: 13)
!6759 = !DILocation(line: 84, column: 21, scope: !6758)
!6760 = !DILocation(line: 84, column: 3, scope: !6758)
!6761 = !DILocation(line: 85, column: 3, scope: !6758)
!6762 = !DILocation(line: 87, column: 16, scope: !6727)
!6763 = !DILocation(line: 87, column: 2, scope: !6727)
!6764 = !DILocation(line: 87, column: 8, scope: !6727)
!6765 = !DILocation(line: 87, column: 14, scope: !6727)
!6766 = !DILocation(line: 88, column: 9, scope: !6727)
!6767 = !DILocation(line: 88, column: 3, scope: !6727)
!6768 = !DILocation(line: 88, column: 7, scope: !6727)
!6769 = !DILocation(line: 89, column: 2, scope: !6727)
!6770 = !DILocation(line: 90, column: 1, scope: !6727)
!6771 = !DISubprogram(name: "module_put", scope: !13, file: !13, line: 706, type: !3882, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6772 = !DISubprogram(name: "try_module_get", scope: !13, file: !13, line: 696, type: !6773, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6773 = !DISubroutineType(types: !6774)
!6774 = !{!877, !164}
!6775 = distinct !DISubprogram(name: "valid_pos", scope: !3, file: !3, line: 92, type: !6776, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !6778)
!6776 = !DISubroutineType(types: !6777)
!6777 = !{!877, !507, !313}
!6778 = !{!6779, !6780}
!6779 = !DILocalVariable(name: "pos", arg: 1, scope: !6775, file: !3, line: 92, type: !507)
!6780 = !DILocalVariable(name: "count", arg: 2, scope: !6775, file: !3, line: 92, type: !313)
!6781 = !DILocation(line: 92, column: 30, scope: !6775)
!6782 = !DILocation(line: 92, column: 42, scope: !6775)
!6783 = !DILocation(line: 94, column: 6, scope: !6784)
!6784 = distinct !DILexicalBlock(scope: !6775, file: !3, line: 94, column: 6)
!6785 = !DILocation(line: 94, column: 10, scope: !6784)
!6786 = !DILocation(line: 94, column: 14, scope: !6784)
!6787 = !DILocation(line: 94, column: 24, scope: !6784)
!6788 = !DILocation(line: 94, column: 31, scope: !6784)
!6789 = !DILocation(line: 94, column: 28, scope: !6784)
!6790 = !DILocation(line: 94, column: 35, scope: !6784)
!6791 = !DILocation(line: 94, column: 48, scope: !6784)
!6792 = !DILocation(line: 94, column: 54, scope: !6784)
!6793 = !DILocation(line: 94, column: 6, scope: !6775)
!6794 = !DILocation(line: 95, column: 3, scope: !6784)
!6795 = !DILocation(line: 96, column: 22, scope: !6796)
!6796 = distinct !DILexicalBlock(scope: !6775, file: !3, line: 96, column: 6)
!6797 = !DILocation(line: 96, column: 44, scope: !6796)
!6798 = !DILocation(line: 96, column: 26, scope: !6796)
!6799 = !DILocation(line: 96, column: 68, scope: !6796)
!6800 = !DILocation(line: 96, column: 50, scope: !6796)
!6801 = !DILocation(line: 96, column: 6, scope: !6775)
!6802 = !DILocation(line: 97, column: 3, scope: !6796)
!6803 = !DILocation(line: 98, column: 2, scope: !6775)
!6804 = !DILocation(line: 99, column: 1, scope: !6775)
!6805 = distinct !DISubprogram(name: "file_inode", scope: !21, file: !21, line: 1073, type: !6806, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !6808)
!6806 = !DISubroutineType(types: !6807)
!6807 = !{!346, !674}
!6808 = !{!6809}
!6809 = !DILocalVariable(name: "f", arg: 1, scope: !6805, file: !21, line: 1073, type: !674)
!6810 = !DILocation(line: 1073, column: 59, scope: !6805)
!6811 = !DILocation(line: 1075, column: 9, scope: !6805)
!6812 = !DILocation(line: 1075, column: 12, scope: !6805)
!6813 = !DILocation(line: 1075, column: 2, scope: !6805)
!6814 = distinct !DISubprogram(name: "snd_info_text_entry_open", scope: !3, file: !3, line: 366, type: !1554, scopeLine: 367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !6815)
!6815 = !{!6816, !6817, !6818, !6819, !6820, !6821, !6822}
!6816 = !DILocalVariable(name: "inode", arg: 1, scope: !6814, file: !3, line: 366, type: !346)
!6817 = !DILocalVariable(name: "file", arg: 2, scope: !6814, file: !3, line: 366, type: !1005)
!6818 = !DILocalVariable(name: "entry", scope: !6814, file: !3, line: 368, type: !4182)
!6819 = !DILocalVariable(name: "data", scope: !6814, file: !3, line: 369, type: !6186)
!6820 = !DILocalVariable(name: "err", scope: !6814, file: !3, line: 370, type: !6)
!6821 = !DILabel(scope: !6814, name: "error", file: !3, line: 392)
!6822 = !DILabel(scope: !6814, name: "unlock", file: !3, line: 396)
!6823 = !DILocation(line: 366, column: 51, scope: !6814)
!6824 = !DILocation(line: 366, column: 71, scope: !6814)
!6825 = !DILocation(line: 368, column: 2, scope: !6814)
!6826 = !DILocation(line: 368, column: 25, scope: !6814)
!6827 = !DILocation(line: 368, column: 42, scope: !6814)
!6828 = !DILocation(line: 368, column: 33, scope: !6814)
!6829 = !DILocation(line: 369, column: 2, scope: !6814)
!6830 = !DILocation(line: 369, column: 32, scope: !6814)
!6831 = !DILocation(line: 370, column: 2, scope: !6814)
!6832 = !DILocation(line: 370, column: 6, scope: !6814)
!6833 = !DILocation(line: 372, column: 2, scope: !6814)
!6834 = !DILocation(line: 373, column: 27, scope: !6814)
!6835 = !DILocation(line: 373, column: 8, scope: !6814)
!6836 = !DILocation(line: 373, column: 6, scope: !6814)
!6837 = !DILocation(line: 374, column: 6, scope: !6838)
!6838 = distinct !DILexicalBlock(scope: !6814, file: !3, line: 374, column: 6)
!6839 = !DILocation(line: 374, column: 10, scope: !6838)
!6840 = !DILocation(line: 374, column: 6, scope: !6814)
!6841 = !DILocation(line: 375, column: 3, scope: !6838)
!6842 = !DILocation(line: 377, column: 18, scope: !6814)
!6843 = !DILocation(line: 377, column: 2, scope: !6814)
!6844 = !DILocation(line: 377, column: 8, scope: !6814)
!6845 = !DILocation(line: 377, column: 16, scope: !6814)
!6846 = !DILocation(line: 378, column: 7, scope: !6847)
!6847 = distinct !DILexicalBlock(scope: !6814, file: !3, line: 378, column: 6)
!6848 = !DILocation(line: 378, column: 13, scope: !6847)
!6849 = !DILocation(line: 378, column: 6, scope: !6814)
!6850 = !DILocation(line: 379, column: 7, scope: !6851)
!6851 = distinct !DILexicalBlock(scope: !6847, file: !3, line: 378, column: 22)
!6852 = !DILocation(line: 380, column: 3, scope: !6851)
!6853 = !DILocation(line: 382, column: 6, scope: !6854)
!6854 = distinct !DILexicalBlock(scope: !6814, file: !3, line: 382, column: 6)
!6855 = !DILocation(line: 382, column: 13, scope: !6854)
!6856 = !DILocation(line: 382, column: 6, scope: !6814)
!6857 = !DILocation(line: 383, column: 26, scope: !6854)
!6858 = !DILocation(line: 383, column: 51, scope: !6854)
!6859 = !DILocation(line: 384, column: 12, scope: !6854)
!6860 = !DILocation(line: 384, column: 19, scope: !6854)
!6861 = !DILocation(line: 383, column: 9, scope: !6854)
!6862 = !DILocation(line: 383, column: 7, scope: !6854)
!6863 = !DILocation(line: 383, column: 3, scope: !6854)
!6864 = !DILocation(line: 386, column: 21, scope: !6854)
!6865 = !DILocation(line: 386, column: 46, scope: !6854)
!6866 = !DILocation(line: 386, column: 9, scope: !6854)
!6867 = !DILocation(line: 386, column: 7, scope: !6854)
!6868 = !DILocation(line: 387, column: 6, scope: !6869)
!6869 = distinct !DILexicalBlock(scope: !6814, file: !3, line: 387, column: 6)
!6870 = !DILocation(line: 387, column: 10, scope: !6869)
!6871 = !DILocation(line: 387, column: 6, scope: !6814)
!6872 = !DILocation(line: 388, column: 3, scope: !6869)
!6873 = !DILocation(line: 389, column: 2, scope: !6814)
!6874 = !DILocation(line: 390, column: 2, scope: !6814)
!6875 = !DILocation(line: 392, column: 2, scope: !6814)
!6876 = !DILocation(line: 393, column: 8, scope: !6814)
!6877 = !DILocation(line: 393, column: 14, scope: !6814)
!6878 = !DILocation(line: 393, column: 2, scope: !6814)
!6879 = !DILocation(line: 394, column: 8, scope: !6814)
!6880 = !DILocation(line: 394, column: 2, scope: !6814)
!6881 = !DILocation(line: 395, column: 13, scope: !6814)
!6882 = !DILocation(line: 395, column: 20, scope: !6814)
!6883 = !DILocation(line: 395, column: 2, scope: !6814)
!6884 = !DILocation(line: 396, column: 2, scope: !6814)
!6885 = !DILocation(line: 397, column: 2, scope: !6814)
!6886 = !DILocation(line: 398, column: 9, scope: !6814)
!6887 = !DILocation(line: 398, column: 2, scope: !6814)
!6888 = !DILocation(line: 399, column: 1, scope: !6814)
!6889 = distinct !DISubprogram(name: "snd_info_text_entry_write", scope: !3, file: !3, line: 299, type: !1012, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !6890)
!6890 = !{!6891, !6892, !6893, !6894, !6895, !6896, !6897, !6898, !6899, !6900, !6901, !6902, !6905}
!6891 = !DILocalVariable(name: "file", arg: 1, scope: !6889, file: !3, line: 299, type: !1005)
!6892 = !DILocalVariable(name: "buffer", arg: 2, scope: !6889, file: !3, line: 300, type: !7)
!6893 = !DILocalVariable(name: "count", arg: 3, scope: !6889, file: !3, line: 301, type: !313)
!6894 = !DILocalVariable(name: "offset", arg: 4, scope: !6889, file: !3, line: 301, type: !659)
!6895 = !DILocalVariable(name: "m", scope: !6889, file: !3, line: 303, type: !618)
!6896 = !DILocalVariable(name: "data", scope: !6889, file: !3, line: 304, type: !6186)
!6897 = !DILocalVariable(name: "entry", scope: !6889, file: !3, line: 305, type: !4182)
!6898 = !DILocalVariable(name: "buf", scope: !6889, file: !3, line: 306, type: !4200)
!6899 = !DILocalVariable(name: "pos", scope: !6889, file: !3, line: 307, type: !507)
!6900 = !DILocalVariable(name: "next", scope: !6889, file: !3, line: 308, type: !313)
!6901 = !DILocalVariable(name: "err", scope: !6889, file: !3, line: 309, type: !6)
!6902 = !DILocalVariable(name: "nbuf", scope: !6903, file: !3, line: 330, type: !266)
!6903 = distinct !DILexicalBlock(scope: !6904, file: !3, line: 329, column: 23)
!6904 = distinct !DILexicalBlock(scope: !6889, file: !3, line: 329, column: 6)
!6905 = !DILabel(scope: !6889, name: "error", file: !3, line: 344)
!6906 = !DILocation(line: 299, column: 55, scope: !6889)
!6907 = !DILocation(line: 300, column: 26, scope: !6889)
!6908 = !DILocation(line: 301, column: 14, scope: !6889)
!6909 = !DILocation(line: 301, column: 29, scope: !6889)
!6910 = !DILocation(line: 303, column: 2, scope: !6889)
!6911 = !DILocation(line: 303, column: 19, scope: !6889)
!6912 = !DILocation(line: 303, column: 23, scope: !6889)
!6913 = !DILocation(line: 303, column: 29, scope: !6889)
!6914 = !DILocation(line: 304, column: 2, scope: !6889)
!6915 = !DILocation(line: 304, column: 32, scope: !6889)
!6916 = !DILocation(line: 304, column: 39, scope: !6889)
!6917 = !DILocation(line: 304, column: 42, scope: !6889)
!6918 = !DILocation(line: 305, column: 2, scope: !6889)
!6919 = !DILocation(line: 305, column: 25, scope: !6889)
!6920 = !DILocation(line: 305, column: 33, scope: !6889)
!6921 = !DILocation(line: 305, column: 39, scope: !6889)
!6922 = !DILocation(line: 306, column: 2, scope: !6889)
!6923 = !DILocation(line: 306, column: 26, scope: !6889)
!6924 = !DILocation(line: 307, column: 2, scope: !6889)
!6925 = !DILocation(line: 307, column: 9, scope: !6889)
!6926 = !DILocation(line: 308, column: 2, scope: !6889)
!6927 = !DILocation(line: 308, column: 9, scope: !6889)
!6928 = !DILocation(line: 309, column: 2, scope: !6889)
!6929 = !DILocation(line: 309, column: 6, scope: !6889)
!6930 = !DILocation(line: 311, column: 7, scope: !6931)
!6931 = distinct !DILexicalBlock(scope: !6889, file: !3, line: 311, column: 6)
!6932 = !DILocation(line: 311, column: 14, scope: !6931)
!6933 = !DILocation(line: 311, column: 21, scope: !6931)
!6934 = !DILocation(line: 311, column: 6, scope: !6889)
!6935 = !DILocation(line: 312, column: 3, scope: !6931)
!6936 = !DILocation(line: 313, column: 9, scope: !6889)
!6937 = !DILocation(line: 313, column: 8, scope: !6889)
!6938 = !DILocation(line: 313, column: 6, scope: !6889)
!6939 = !DILocation(line: 314, column: 17, scope: !6940)
!6940 = distinct !DILexicalBlock(scope: !6889, file: !3, line: 314, column: 6)
!6941 = !DILocation(line: 314, column: 22, scope: !6940)
!6942 = !DILocation(line: 314, column: 7, scope: !6940)
!6943 = !DILocation(line: 314, column: 6, scope: !6889)
!6944 = !DILocation(line: 315, column: 3, scope: !6940)
!6945 = !DILocation(line: 316, column: 9, scope: !6889)
!6946 = !DILocation(line: 316, column: 15, scope: !6889)
!6947 = !DILocation(line: 316, column: 13, scope: !6889)
!6948 = !DILocation(line: 316, column: 7, scope: !6889)
!6949 = !DILocation(line: 318, column: 6, scope: !6950)
!6950 = distinct !DILexicalBlock(scope: !6889, file: !3, line: 318, column: 6)
!6951 = !DILocation(line: 318, column: 11, scope: !6950)
!6952 = !DILocation(line: 318, column: 6, scope: !6889)
!6953 = !DILocation(line: 319, column: 3, scope: !6950)
!6954 = !DILocation(line: 320, column: 14, scope: !6889)
!6955 = !DILocation(line: 320, column: 21, scope: !6889)
!6956 = !DILocation(line: 320, column: 2, scope: !6889)
!6957 = !DILocation(line: 321, column: 8, scope: !6889)
!6958 = !DILocation(line: 321, column: 14, scope: !6889)
!6959 = !DILocation(line: 321, column: 6, scope: !6889)
!6960 = !DILocation(line: 322, column: 7, scope: !6961)
!6961 = distinct !DILexicalBlock(scope: !6889, file: !3, line: 322, column: 6)
!6962 = !DILocation(line: 322, column: 6, scope: !6889)
!6963 = !DILocation(line: 323, column: 25, scope: !6964)
!6964 = distinct !DILexicalBlock(scope: !6961, file: !3, line: 322, column: 12)
!6965 = !DILocation(line: 323, column: 23, scope: !6964)
!6966 = !DILocation(line: 323, column: 3, scope: !6964)
!6967 = !DILocation(line: 323, column: 9, scope: !6964)
!6968 = !DILocation(line: 323, column: 17, scope: !6964)
!6969 = !DILocation(line: 324, column: 8, scope: !6970)
!6970 = distinct !DILexicalBlock(scope: !6964, file: !3, line: 324, column: 7)
!6971 = !DILocation(line: 324, column: 7, scope: !6964)
!6972 = !DILocation(line: 325, column: 8, scope: !6973)
!6973 = distinct !DILexicalBlock(scope: !6970, file: !3, line: 324, column: 13)
!6974 = !DILocation(line: 326, column: 4, scope: !6973)
!6975 = !DILocation(line: 328, column: 2, scope: !6964)
!6976 = !DILocation(line: 329, column: 6, scope: !6904)
!6977 = !DILocation(line: 329, column: 13, scope: !6904)
!6978 = !DILocation(line: 329, column: 18, scope: !6904)
!6979 = !DILocation(line: 329, column: 11, scope: !6904)
!6980 = !DILocation(line: 329, column: 6, scope: !6889)
!6981 = !DILocation(line: 330, column: 3, scope: !6903)
!6982 = !DILocation(line: 330, column: 9, scope: !6903)
!6983 = !DILocation(line: 330, column: 25, scope: !6903)
!6984 = !DILocation(line: 330, column: 16, scope: !6903)
!6985 = !DILocation(line: 331, column: 8, scope: !6986)
!6986 = distinct !DILexicalBlock(scope: !6903, file: !3, line: 331, column: 7)
!6987 = !DILocation(line: 331, column: 7, scope: !6903)
!6988 = !DILocation(line: 332, column: 8, scope: !6989)
!6989 = distinct !DILexicalBlock(scope: !6986, file: !3, line: 331, column: 14)
!6990 = !DILocation(line: 333, column: 4, scope: !6989)
!6991 = !DILocation(line: 335, column: 10, scope: !6903)
!6992 = !DILocation(line: 335, column: 15, scope: !6903)
!6993 = !DILocation(line: 335, column: 3, scope: !6903)
!6994 = !DILocation(line: 336, column: 17, scope: !6903)
!6995 = !DILocation(line: 336, column: 3, scope: !6903)
!6996 = !DILocation(line: 336, column: 8, scope: !6903)
!6997 = !DILocation(line: 336, column: 15, scope: !6903)
!6998 = !DILocation(line: 337, column: 14, scope: !6903)
!6999 = !DILocation(line: 337, column: 3, scope: !6903)
!7000 = !DILocation(line: 337, column: 8, scope: !6903)
!7001 = !DILocation(line: 337, column: 12, scope: !6903)
!7002 = !DILocation(line: 338, column: 2, scope: !6904)
!7003 = !DILocation(line: 338, column: 2, scope: !6903)
!7004 = !DILocation(line: 339, column: 21, scope: !7005)
!7005 = distinct !DILexicalBlock(scope: !6889, file: !3, line: 339, column: 6)
!7006 = !DILocation(line: 339, column: 26, scope: !7005)
!7007 = !DILocation(line: 339, column: 35, scope: !7005)
!7008 = !DILocation(line: 339, column: 33, scope: !7005)
!7009 = !DILocation(line: 339, column: 40, scope: !7005)
!7010 = !DILocation(line: 339, column: 48, scope: !7005)
!7011 = !DILocation(line: 339, column: 6, scope: !7005)
!7012 = !DILocation(line: 339, column: 6, scope: !6889)
!7013 = !DILocation(line: 340, column: 7, scope: !7014)
!7014 = distinct !DILexicalBlock(scope: !7005, file: !3, line: 339, column: 56)
!7015 = !DILocation(line: 341, column: 3, scope: !7014)
!7016 = !DILocation(line: 343, column: 14, scope: !6889)
!7017 = !DILocation(line: 343, column: 2, scope: !6889)
!7018 = !DILocation(line: 343, column: 7, scope: !6889)
!7019 = !DILocation(line: 343, column: 12, scope: !6889)
!7020 = !DILocation(line: 344, column: 2, scope: !6889)
!7021 = !DILocation(line: 345, column: 16, scope: !6889)
!7022 = !DILocation(line: 345, column: 23, scope: !6889)
!7023 = !DILocation(line: 345, column: 2, scope: !6889)
!7024 = !DILocation(line: 346, column: 6, scope: !7025)
!7025 = distinct !DILexicalBlock(scope: !6889, file: !3, line: 346, column: 6)
!7026 = !DILocation(line: 346, column: 10, scope: !7025)
!7027 = !DILocation(line: 346, column: 6, scope: !6889)
!7028 = !DILocation(line: 347, column: 10, scope: !7025)
!7029 = !DILocation(line: 347, column: 3, scope: !7025)
!7030 = !DILocation(line: 348, column: 12, scope: !6889)
!7031 = !DILocation(line: 348, column: 3, scope: !6889)
!7032 = !DILocation(line: 348, column: 10, scope: !6889)
!7033 = !DILocation(line: 349, column: 9, scope: !6889)
!7034 = !DILocation(line: 349, column: 2, scope: !6889)
!7035 = !DILocation(line: 350, column: 1, scope: !6889)
!7036 = distinct !DISubprogram(name: "snd_info_text_entry_release", scope: !3, file: !3, line: 401, type: !1554, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !7037)
!7037 = !{!7038, !7039, !7040, !7041, !7042}
!7038 = !DILocalVariable(name: "inode", arg: 1, scope: !7036, file: !3, line: 401, type: !346)
!7039 = !DILocalVariable(name: "file", arg: 2, scope: !7036, file: !3, line: 401, type: !1005)
!7040 = !DILocalVariable(name: "m", scope: !7036, file: !3, line: 403, type: !618)
!7041 = !DILocalVariable(name: "data", scope: !7036, file: !3, line: 404, type: !6186)
!7042 = !DILocalVariable(name: "entry", scope: !7036, file: !3, line: 405, type: !4182)
!7043 = !DILocation(line: 401, column: 54, scope: !7036)
!7044 = !DILocation(line: 401, column: 74, scope: !7036)
!7045 = !DILocation(line: 403, column: 2, scope: !7036)
!7046 = !DILocation(line: 403, column: 19, scope: !7036)
!7047 = !DILocation(line: 403, column: 23, scope: !7036)
!7048 = !DILocation(line: 403, column: 29, scope: !7036)
!7049 = !DILocation(line: 404, column: 2, scope: !7036)
!7050 = !DILocation(line: 404, column: 32, scope: !7036)
!7051 = !DILocation(line: 404, column: 39, scope: !7036)
!7052 = !DILocation(line: 404, column: 42, scope: !7036)
!7053 = !DILocation(line: 405, column: 2, scope: !7036)
!7054 = !DILocation(line: 405, column: 25, scope: !7036)
!7055 = !DILocation(line: 405, column: 33, scope: !7036)
!7056 = !DILocation(line: 405, column: 39, scope: !7036)
!7057 = !DILocation(line: 407, column: 6, scope: !7058)
!7058 = distinct !DILexicalBlock(scope: !7036, file: !3, line: 407, column: 6)
!7059 = !DILocation(line: 407, column: 12, scope: !7058)
!7060 = !DILocation(line: 407, column: 20, scope: !7058)
!7061 = !DILocation(line: 407, column: 23, scope: !7058)
!7062 = !DILocation(line: 407, column: 30, scope: !7058)
!7063 = !DILocation(line: 407, column: 37, scope: !7058)
!7064 = !DILocation(line: 407, column: 6, scope: !7036)
!7065 = !DILocation(line: 408, column: 3, scope: !7058)
!7066 = !DILocation(line: 408, column: 10, scope: !7058)
!7067 = !DILocation(line: 408, column: 17, scope: !7058)
!7068 = !DILocation(line: 408, column: 23, scope: !7058)
!7069 = !DILocation(line: 408, column: 30, scope: !7058)
!7070 = !DILocation(line: 408, column: 36, scope: !7058)
!7071 = !DILocation(line: 410, column: 17, scope: !7036)
!7072 = !DILocation(line: 410, column: 24, scope: !7036)
!7073 = !DILocation(line: 410, column: 2, scope: !7036)
!7074 = !DILocation(line: 411, column: 8, scope: !7036)
!7075 = !DILocation(line: 411, column: 14, scope: !7036)
!7076 = !DILocation(line: 411, column: 2, scope: !7036)
!7077 = !DILocation(line: 412, column: 6, scope: !7078)
!7078 = distinct !DILexicalBlock(scope: !7036, file: !3, line: 412, column: 6)
!7079 = !DILocation(line: 412, column: 12, scope: !7078)
!7080 = !DILocation(line: 412, column: 6, scope: !7036)
!7081 = !DILocation(line: 413, column: 10, scope: !7082)
!7082 = distinct !DILexicalBlock(scope: !7078, file: !3, line: 412, column: 21)
!7083 = !DILocation(line: 413, column: 16, scope: !7082)
!7084 = !DILocation(line: 413, column: 25, scope: !7082)
!7085 = !DILocation(line: 413, column: 3, scope: !7082)
!7086 = !DILocation(line: 414, column: 9, scope: !7082)
!7087 = !DILocation(line: 414, column: 15, scope: !7082)
!7088 = !DILocation(line: 414, column: 3, scope: !7082)
!7089 = !DILocation(line: 415, column: 2, scope: !7082)
!7090 = !DILocation(line: 417, column: 13, scope: !7036)
!7091 = !DILocation(line: 417, column: 20, scope: !7036)
!7092 = !DILocation(line: 417, column: 2, scope: !7036)
!7093 = !DILocation(line: 418, column: 8, scope: !7036)
!7094 = !DILocation(line: 418, column: 2, scope: !7036)
!7095 = !DILocation(line: 420, column: 1, scope: !7036)
!7096 = !DILocation(line: 419, column: 2, scope: !7036)
!7097 = !DISubprogram(name: "single_open_size", scope: !620, file: !620, line: 167, type: !7098, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7098 = !DISubroutineType(types: !7099)
!7099 = !{!6, !1005, !669, !163, !313}
!7100 = distinct !DISubprogram(name: "snd_info_seq_show", scope: !3, file: !3, line: 352, type: !670, scopeLine: 353, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !7101)
!7101 = !{!7102, !7103, !7104, !7105}
!7102 = !DILocalVariable(name: "seq", arg: 1, scope: !7100, file: !3, line: 352, type: !618)
!7103 = !DILocalVariable(name: "p", arg: 2, scope: !7100, file: !3, line: 352, type: !163)
!7104 = !DILocalVariable(name: "data", scope: !7100, file: !3, line: 354, type: !6186)
!7105 = !DILocalVariable(name: "entry", scope: !7100, file: !3, line: 355, type: !4182)
!7106 = !DILocation(line: 352, column: 47, scope: !7100)
!7107 = !DILocation(line: 352, column: 58, scope: !7100)
!7108 = !DILocation(line: 354, column: 2, scope: !7100)
!7109 = !DILocation(line: 354, column: 32, scope: !7100)
!7110 = !DILocation(line: 354, column: 39, scope: !7100)
!7111 = !DILocation(line: 354, column: 44, scope: !7100)
!7112 = !DILocation(line: 355, column: 2, scope: !7100)
!7113 = !DILocation(line: 355, column: 25, scope: !7100)
!7114 = !DILocation(line: 355, column: 33, scope: !7100)
!7115 = !DILocation(line: 355, column: 39, scope: !7100)
!7116 = !DILocation(line: 357, column: 7, scope: !7117)
!7117 = distinct !DILexicalBlock(scope: !7100, file: !3, line: 357, column: 6)
!7118 = !DILocation(line: 357, column: 14, scope: !7117)
!7119 = !DILocation(line: 357, column: 21, scope: !7117)
!7120 = !DILocation(line: 357, column: 6, scope: !7100)
!7121 = !DILocation(line: 358, column: 3, scope: !7122)
!7122 = distinct !DILexicalBlock(scope: !7117, file: !3, line: 357, column: 27)
!7123 = !DILocation(line: 360, column: 35, scope: !7124)
!7124 = distinct !DILexicalBlock(scope: !7117, file: !3, line: 359, column: 9)
!7125 = !DILocation(line: 360, column: 3, scope: !7124)
!7126 = !DILocation(line: 360, column: 9, scope: !7124)
!7127 = !DILocation(line: 360, column: 18, scope: !7124)
!7128 = !DILocation(line: 360, column: 25, scope: !7124)
!7129 = !DILocation(line: 361, column: 3, scope: !7124)
!7130 = !DILocation(line: 361, column: 10, scope: !7124)
!7131 = !DILocation(line: 361, column: 17, scope: !7124)
!7132 = !DILocation(line: 361, column: 22, scope: !7124)
!7133 = !DILocation(line: 361, column: 29, scope: !7124)
!7134 = !DILocation(line: 361, column: 35, scope: !7124)
!7135 = !DILocation(line: 363, column: 2, scope: !7100)
!7136 = !DILocation(line: 364, column: 1, scope: !7100)
!7137 = !DISubprogram(name: "single_open", scope: !620, file: !620, line: 166, type: !7138, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7138 = !DISubroutineType(types: !7139)
!7139 = !{!6, !1005, !669, !163}
!7140 = distinct !DISubprogram(name: "kvzalloc", scope: !153, file: !153, line: 744, type: !5813, scopeLine: 745, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !7141)
!7141 = !{!7142, !7143}
!7142 = !DILocalVariable(name: "size", arg: 1, scope: !7140, file: !153, line: 744, type: !313)
!7143 = !DILocalVariable(name: "flags", arg: 2, scope: !7140, file: !153, line: 744, type: !1333)
!7144 = !DILocation(line: 744, column: 53, scope: !7140)
!7145 = !DILocation(line: 744, column: 65, scope: !7140)
!7146 = !DILocation(line: 746, column: 18, scope: !7140)
!7147 = !DILocation(line: 746, column: 24, scope: !7140)
!7148 = !DILocation(line: 746, column: 30, scope: !7140)
!7149 = !DILocation(line: 746, column: 9, scope: !7140)
!7150 = !DILocation(line: 746, column: 2, scope: !7140)
!7151 = !DISubprogram(name: "kvfree", scope: !153, file: !153, line: 766, type: !5648, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7152 = distinct !DISubprogram(name: "copy_from_user", scope: !7153, file: !7153, line: 180, type: !7154, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !7156)
!7153 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!7154 = !DISubroutineType(types: !7155)
!7155 = !{!316, !163, !1216, !316}
!7156 = !{!7157, !7158, !7159}
!7157 = !DILocalVariable(name: "to", arg: 1, scope: !7152, file: !7153, line: 180, type: !163)
!7158 = !DILocalVariable(name: "from", arg: 2, scope: !7152, file: !7153, line: 180, type: !1216)
!7159 = !DILocalVariable(name: "n", arg: 3, scope: !7152, file: !7153, line: 180, type: !316)
!7160 = !DILocation(line: 180, column: 22, scope: !7152)
!7161 = !DILocation(line: 180, column: 45, scope: !7152)
!7162 = !DILocation(line: 180, column: 65, scope: !7152)
!7163 = !DILocation(line: 182, column: 22, scope: !7164)
!7164 = distinct !DILexicalBlock(scope: !7152, file: !7153, line: 182, column: 6)
!7165 = !DILocation(line: 182, column: 26, scope: !7164)
!7166 = !DILocation(line: 182, column: 6, scope: !7164)
!7167 = !DILocation(line: 182, column: 6, scope: !7152)
!7168 = !DILocation(line: 183, column: 23, scope: !7164)
!7169 = !DILocation(line: 183, column: 27, scope: !7164)
!7170 = !DILocation(line: 183, column: 33, scope: !7164)
!7171 = !DILocation(line: 183, column: 7, scope: !7164)
!7172 = !DILocation(line: 183, column: 5, scope: !7164)
!7173 = !DILocation(line: 183, column: 3, scope: !7164)
!7174 = !DILocation(line: 184, column: 9, scope: !7152)
!7175 = !DILocation(line: 184, column: 2, scope: !7152)
!7176 = distinct !DISubprogram(name: "kvmalloc", scope: !153, file: !153, line: 736, type: !5813, scopeLine: 737, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !7177)
!7177 = !{!7178, !7179}
!7178 = !DILocalVariable(name: "size", arg: 1, scope: !7176, file: !153, line: 736, type: !313)
!7179 = !DILocalVariable(name: "flags", arg: 2, scope: !7176, file: !153, line: 736, type: !1333)
!7180 = !DILocation(line: 736, column: 53, scope: !7176)
!7181 = !DILocation(line: 736, column: 65, scope: !7176)
!7182 = !DILocation(line: 738, column: 23, scope: !7176)
!7183 = !DILocation(line: 738, column: 29, scope: !7176)
!7184 = !DILocation(line: 738, column: 9, scope: !7176)
!7185 = !DILocation(line: 738, column: 2, scope: !7176)
!7186 = !DISubprogram(name: "kvmalloc_node", scope: !153, file: !153, line: 735, type: !7187, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7187 = !DISubroutineType(types: !7188)
!7188 = !{!163, !313, !1333, !6}
!7189 = distinct !DISubprogram(name: "check_copy_size", scope: !4371, file: !4371, line: 237, type: !7190, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !7192)
!7190 = !DISubroutineType(types: !7191)
!7191 = !{!877, !1216, !313, !877}
!7192 = !{!7193, !7194, !7195, !7196, !7197, !7200}
!7193 = !DILocalVariable(name: "addr", arg: 1, scope: !7189, file: !4371, line: 237, type: !1216)
!7194 = !DILocalVariable(name: "bytes", arg: 2, scope: !7189, file: !4371, line: 237, type: !313)
!7195 = !DILocalVariable(name: "is_source", arg: 3, scope: !7189, file: !4371, line: 237, type: !877)
!7196 = !DILocalVariable(name: "sz", scope: !7189, file: !4371, line: 239, type: !6)
!7197 = !DILocalVariable(name: "__ret_warn_on", scope: !7198, file: !4371, line: 249, type: !6)
!7198 = distinct !DILexicalBlock(scope: !7199, file: !4371, line: 249, column: 6)
!7199 = distinct !DILexicalBlock(scope: !7189, file: !4371, line: 249, column: 6)
!7200 = !DILocalVariable(name: "__flags", scope: !7201, file: !4371, line: 249, type: !6)
!7201 = distinct !DILexicalBlock(scope: !7202, file: !4371, line: 249, column: 6)
!7202 = distinct !DILexicalBlock(scope: !7198, file: !4371, line: 249, column: 6)
!7203 = !DILocation(line: 237, column: 29, scope: !7189)
!7204 = !DILocation(line: 237, column: 42, scope: !7189)
!7205 = !DILocation(line: 237, column: 54, scope: !7189)
!7206 = !DILocation(line: 239, column: 2, scope: !7189)
!7207 = !DILocation(line: 239, column: 6, scope: !7189)
!7208 = !DILocation(line: 239, column: 33, scope: !7189)
!7209 = !DILocation(line: 239, column: 11, scope: !7189)
!7210 = !DILocation(line: 240, column: 6, scope: !7211)
!7211 = distinct !DILexicalBlock(scope: !7189, file: !4371, line: 240, column: 6)
!7212 = !DILocation(line: 0, scope: !7211)
!7213 = !DILocation(line: 240, column: 6, scope: !7189)
!7214 = !DILocation(line: 241, column: 29, scope: !7215)
!7215 = distinct !DILexicalBlock(scope: !7216, file: !4371, line: 241, column: 7)
!7216 = distinct !DILexicalBlock(scope: !7211, file: !4371, line: 240, column: 39)
!7217 = !DILocation(line: 241, column: 8, scope: !7215)
!7218 = !DILocation(line: 241, column: 7, scope: !7216)
!7219 = !DILocation(line: 242, column: 18, scope: !7215)
!7220 = !DILocation(line: 242, column: 22, scope: !7215)
!7221 = !DILocation(line: 242, column: 4, scope: !7215)
!7222 = !DILocation(line: 243, column: 12, scope: !7223)
!7223 = distinct !DILexicalBlock(scope: !7215, file: !4371, line: 243, column: 12)
!7224 = !DILocation(line: 243, column: 12, scope: !7215)
!7225 = !DILocation(line: 244, column: 4, scope: !7223)
!7226 = !{i32 2227969}
!7227 = !DILocation(line: 246, column: 4, scope: !7223)
!7228 = !{i32 2227998}
!7229 = !DILocation(line: 247, column: 3, scope: !7216)
!7230 = !DILocation(line: 249, column: 6, scope: !7198)
!7231 = !DILocation(line: 249, column: 6, scope: !7202)
!7232 = !DILocation(line: 249, column: 6, scope: !7201)
!7233 = !DILocation(line: 249, column: 6, scope: !7234)
!7234 = distinct !DILexicalBlock(scope: !7201, file: !4371, line: 249, column: 6)
!7235 = !DILocation(line: 249, column: 6, scope: !7236)
!7236 = distinct !DILexicalBlock(scope: !7201, file: !4371, line: 249, column: 6)
!7237 = !{i64 2149728431, i64 2149728460, i64 2149728506, i64 2149728564, i64 2149728618, i64 2149728672, i64 2149728727, i64 2149728758, i64 2149729066, i64 2149729072, i64 2149729119, i64 2149729142, i64 2149729168}
!7238 = !DILocation(line: 249, column: 6, scope: !7239)
!7239 = distinct !DILexicalBlock(scope: !7201, file: !4371, line: 249, column: 6)
!7240 = !DILocation(line: 249, column: 6, scope: !7199)
!7241 = !DILocation(line: 249, column: 6, scope: !7189)
!7242 = !DILocation(line: 250, column: 3, scope: !7199)
!7243 = !DILocation(line: 251, column: 20, scope: !7189)
!7244 = !DILocation(line: 251, column: 26, scope: !7189)
!7245 = !DILocation(line: 251, column: 33, scope: !7189)
!7246 = !DILocation(line: 251, column: 2, scope: !7189)
!7247 = !DILocation(line: 252, column: 2, scope: !7189)
!7248 = !DILocation(line: 253, column: 1, scope: !7189)
!7249 = !DISubprogram(name: "_copy_from_user", scope: !7153, file: !7153, line: 158, type: !7154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7250 = distinct !DISubprogram(name: "copy_overflow", scope: !4371, file: !4371, line: 230, type: !7251, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !7253)
!7251 = !DISubroutineType(types: !7252)
!7252 = !{null, !6, !316}
!7253 = !{!7254, !7255}
!7254 = !DILocalVariable(name: "size", arg: 1, scope: !7250, file: !4371, line: 230, type: !6)
!7255 = !DILocalVariable(name: "count", arg: 2, scope: !7250, file: !4371, line: 230, type: !316)
!7256 = !DILocation(line: 230, column: 38, scope: !7250)
!7257 = !DILocation(line: 230, column: 58, scope: !7250)
!7258 = !DILocation(line: 233, column: 19, scope: !7259)
!7259 = distinct !DILexicalBlock(scope: !7250, file: !4371, line: 232, column: 6)
!7260 = !DILocation(line: 233, column: 25, scope: !7259)
!7261 = !DILocation(line: 233, column: 3, scope: !7259)
!7262 = !DILocation(line: 234, column: 1, scope: !7250)
!7263 = !DISubprogram(name: "__bad_copy_from", scope: !4371, file: !4371, line: 224, type: !2621, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7264 = !DISubprogram(name: "__bad_copy_to", scope: !4371, file: !4371, line: 226, type: !2621, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7265 = distinct !DISubprogram(name: "check_object_size", scope: !4371, file: !4371, line: 218, type: !7266, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !7268)
!7266 = !DISubroutineType(types: !7267)
!7267 = !{null, !1216, !316, !877}
!7268 = !{!7269, !7270, !7271}
!7269 = !DILocalVariable(name: "ptr", arg: 1, scope: !7265, file: !4371, line: 218, type: !1216)
!7270 = !DILocalVariable(name: "n", arg: 2, scope: !7265, file: !4371, line: 218, type: !316)
!7271 = !DILocalVariable(name: "to_user", arg: 3, scope: !7265, file: !4371, line: 219, type: !877)
!7272 = !DILocation(line: 218, column: 50, scope: !7265)
!7273 = !DILocation(line: 218, column: 69, scope: !7265)
!7274 = !DILocation(line: 219, column: 15, scope: !7265)
!7275 = !DILocation(line: 220, column: 3, scope: !7265)
!7276 = !DISubprogram(name: "__copy_overflow", scope: !4371, file: !4371, line: 228, type: !7251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7277 = !DISubprogram(name: "single_release", scope: !620, file: !620, line: 168, type: !1554, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7278 = distinct !DISubprogram(name: "snd_info_version_read", scope: !3, file: !3, line: 904, type: !4198, scopeLine: 905, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !7279)
!7279 = !{!7280, !7281}
!7280 = !DILocalVariable(name: "entry", arg: 1, scope: !7278, file: !3, line: 904, type: !4182)
!7281 = !DILocalVariable(name: "buffer", arg: 2, scope: !7278, file: !3, line: 904, type: !4200)
!7282 = !DILocation(line: 904, column: 58, scope: !7278)
!7283 = !DILocation(line: 904, column: 89, scope: !7278)
!7284 = !DILocation(line: 906, column: 2, scope: !7278)
!7285 = !DILocation(line: 909, column: 1, scope: !7278)
!7286 = distinct !DISubprogram(name: "init_utsname", scope: !2410, file: !2410, line: 85, type: !7287, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10)
!7287 = !DISubroutineType(types: !7288)
!7288 = !{!7289}
!7289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!7290 = !DILocation(line: 87, column: 2, scope: !7286)
