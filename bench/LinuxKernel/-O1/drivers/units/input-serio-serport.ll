; ModuleID = 'drivers/input/serio/serport.c'
source_filename = "drivers/input/serio/serport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init..kmod_serport__292_308_serport_init\22, \22a\22\09\09"
module asm "__initcall__kmod_serport__292_308_serport_init6:\09\09\09"
module asm ".long\09__initstub__kmod_serport__292_308_serport_init6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.tty_ldisc_ops = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.static_call_key = type { ptr, %union.anon.18 }
%union.anon.18 = type { i64 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.serport = type { ptr, %struct.wait_queue_head, ptr, %struct.serio_device_id, %struct.spinlock, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.serio_device_id = type { i8, i8, i8, i8 }
%struct.tty_struct = type { %struct.kref, i32, ptr, ptr, ptr, ptr, ptr, %struct.ld_semaphore, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i64, i32, i32, %struct.winsize, %struct.anon.16, %struct.anon.17, i8, i8, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, i32, ptr, %struct.list_head, %struct.work_struct }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ld_semaphore = type { %struct.atomic64_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.16 = type { %struct.spinlock, i8, i8, [0 x i64] }
%struct.anon.17 = type { ptr, ptr, %struct.spinlock, i8, i8, [0 x i64] }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.serio = type { ptr, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, ptr, %struct.mutex, %struct.device, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.tty_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.serio_driver = type { ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID_author287 = internal constant [47 x i8] c"serport.author=Vojtech Pavlik <vojtech@ucw.cz>\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_description288 = internal constant [53 x i8] c"serport.description=Input device TTY line discipline\00", section ".modinfo", align 1, !dbg !5074
@__UNIQUE_ID_file289 = internal constant [41 x i8] c"serport.file=drivers/input/serio/serport\00", section ".modinfo", align 1, !dbg !5079
@__UNIQUE_ID_license290 = internal constant [20 x i8] c"serport.license=GPL\00", section ".modinfo", align 1, !dbg !5084
@__UNIQUE_ID_alias291 = internal constant [26 x i8] c"serport.alias=tty-ldisc-2\00", section ".modinfo", align 1, !dbg !5087
@serport_ldisc = internal global %struct.tty_ldisc_ops { ptr @.str, i32 2, ptr @serport_ldisc_open, ptr @serport_ldisc_close, ptr null, ptr @serport_ldisc_read, ptr null, ptr @serport_ldisc_ioctl, ptr @serport_ldisc_compat_ioctl, ptr null, ptr null, ptr @serport_ldisc_hangup, ptr @serport_ldisc_receive, ptr @serport_ldisc_write_wakeup, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !5100
@__UNIQUE_ID___addressable___initstub__kmod_serport__292_308_serport_init6293 = internal global ptr @__initstub__kmod_serport__292_308_serport_init6, section ".discard.addressable", align 8, !dbg !5092
@__exitcall_serport_exit = internal global ptr @serport_exit, section ".exitcall.exit", align 8, !dbg !5094
@.str = private unnamed_addr constant [6 x i8] c"input\00", align 1, !dbg !5098
@serport_ldisc_open.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !5102
@.str.1 = private unnamed_addr constant [15 x i8] c"&serport->wait\00", align 1, !dbg !5181
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5186
@.str.3 = private unnamed_addr constant [12 x i8] c"Serial port\00", align 1, !dbg !5191
@.str.4 = private unnamed_addr constant [10 x i8] c"%s/serio0\00", align 1, !dbg !5194
@.str.5 = private unnamed_addr constant [25 x i8] c"\016serio: Serial port %s\0A\00", align 1, !dbg !5199
@might_resched.__UNIQUE_ID___addressable___SCK__might_resched2 = internal global ptr @__SCK__might_resched, section ".discard.addressable", align 8, !dbg !5204
@__SCK__might_resched = external dso_local global %struct.static_call_key, align 8
@.str.6 = private unnamed_addr constant [49 x i8] c"\013serport.c: Error registering line discipline.\0A\00", align 1, !dbg !5208
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author287, ptr @__UNIQUE_ID_description288, ptr @__UNIQUE_ID_file289, ptr @__UNIQUE_ID_license290, ptr @__UNIQUE_ID_alias291, ptr @serport_exit, ptr @__UNIQUE_ID___addressable___initstub__kmod_serport__292_308_serport_init6293, ptr @__exitcall_serport_exit, ptr @might_resched.__UNIQUE_ID___addressable___SCK__might_resched2], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @serport_exit() #0 section ".exit.text" align 16 !dbg !5226 {
entry:
  call void @tty_unregister_ldisc(ptr noundef @serport_ldisc) #19, !dbg !5227
  ret void, !dbg !5228
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5229 dso_local void @tty_unregister_ldisc(ptr noundef) #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_serport__292_308_serport_init6() #0 section ".init.text" align 16 !dbg !5232 {
entry:
  %call = call i32 @serport_init() #20, !dbg !5233
  ret i32 %call, !dbg !5233
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @serport_init() #0 section ".init.text" align 16 !dbg !5234 {
entry:
  %retval1 = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #21, !dbg !5237
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !5236, metadata !DIExpression()), !dbg !5238
  %call = call i32 @tty_register_ldisc(ptr noundef @serport_ldisc) #19, !dbg !5239
  store i32 %call, ptr %retval1, align 4, !dbg !5240
  %0 = load i32, ptr %retval1, align 4, !dbg !5241
  %tobool = icmp ne i32 %0, 0, !dbg !5241
  br i1 %tobool, label %if.then, label %if.end, !dbg !5243

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5244

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !5246

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5246

do.end:                                           ; preds = %do.cond
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef @.str.6) #20, !dbg !5244
  store i32 %call2, ptr %tmp, align 4, !dbg !5246
  %1 = load i32, ptr %tmp, align 4, !dbg !5244
  br label %if.end, !dbg !5248

if.end:                                           ; preds = %do.end, %entry
  %2 = load i32, ptr %retval1, align 4, !dbg !5249
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #21, !dbg !5250
  ret i32 %2, !dbg !5251
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @serport_ldisc_open(ptr noundef %tty) #2 align 16 !dbg !5104 {
entry:
  %retval = alloca i32, align 4
  %tty.addr = alloca ptr, align 8
  %serport = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 4
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5106, metadata !DIExpression()), !dbg !5252
  call void @llvm.lifetime.start.p0(i64 8, ptr %serport) #21, !dbg !5253
  call void @llvm.dbg.declare(metadata ptr %serport, metadata !5107, metadata !DIExpression()), !dbg !5254
  %call = call zeroext i1 @capable(i32 noundef 21) #19, !dbg !5255
  br i1 %call, label %if.end, label %if.then, !dbg !5257

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !5258
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5258

if.end:                                           ; preds = %entry
  %call1 = call noalias ptr @kzalloc(i64 noundef 56, i32 noundef 3264) #22, !dbg !5259
  store ptr %call1, ptr %serport, align 8, !dbg !5260
  %0 = load ptr, ptr %serport, align 8, !dbg !5261
  %tobool = icmp ne ptr %0, null, !dbg !5261
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !5263

if.then2:                                         ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !5264
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5264

if.end3:                                          ; preds = %if.end
  %1 = load ptr, ptr %tty.addr, align 8, !dbg !5265
  %2 = load ptr, ptr %serport, align 8, !dbg !5266
  %tty4 = getelementptr inbounds %struct.serport, ptr %2, i32 0, i32 0, !dbg !5267
  store ptr %1, ptr %tty4, align 8, !dbg !5268
  br label %do.body, !dbg !5269

do.body:                                          ; preds = %if.end3
  %3 = load ptr, ptr %serport, align 8, !dbg !5270
  %lock = getelementptr inbounds %struct.serport, ptr %3, i32 0, i32 4, !dbg !5270
  %call5 = call ptr @spinlock_check(ptr noundef %lock) #19, !dbg !5270
  %4 = load ptr, ptr %serport, align 8, !dbg !5270
  %lock6 = getelementptr inbounds %struct.serport, ptr %4, i32 0, i32 4, !dbg !5270
  %5 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !5270
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %5, i32 0, i32 0, !dbg !5270
  %6 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !5270
  %counter = getelementptr inbounds %struct.atomic_t, ptr %6, i32 0, i32 0, !dbg !5270
  store i32 0, ptr %counter, align 4, !dbg !5270
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %lock6, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !5270
  br label %do.cond, !dbg !5270

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5270

do.end:                                           ; preds = %do.cond
  br label %do.body7, !dbg !5272

do.body7:                                         ; preds = %do.end
  %7 = load ptr, ptr %serport, align 8, !dbg !5273
  %wait = getelementptr inbounds %struct.serport, ptr %7, i32 0, i32 1, !dbg !5273
  call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef @.str.1, ptr noundef @serport_ldisc_open.__key) #19, !dbg !5273
  br label %do.cond8, !dbg !5273

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !5273

do.end9:                                          ; preds = %do.cond8
  %8 = load ptr, ptr %serport, align 8, !dbg !5275
  %9 = load ptr, ptr %tty.addr, align 8, !dbg !5276
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %9, i32 0, i32 30, !dbg !5277
  store ptr %8, ptr %disc_data, align 8, !dbg !5278
  %10 = load ptr, ptr %tty.addr, align 8, !dbg !5279
  %receive_room = getelementptr inbounds %struct.tty_struct, ptr %10, i32 0, i32 18, !dbg !5280
  store i32 256, ptr %receive_room, align 4, !dbg !5281
  %11 = load ptr, ptr %tty.addr, align 8, !dbg !5282
  %flags = getelementptr inbounds %struct.tty_struct, ptr %11, i32 0, i32 16, !dbg !5283
  call void @set_bit(i64 noundef 5, ptr noundef %flags) #19, !dbg !5284
  store i32 0, ptr %retval, align 4, !dbg !5285
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5285

cleanup:                                          ; preds = %do.end9, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %serport) #21, !dbg !5286
  %12 = load i32, ptr %retval, align 4, !dbg !5286
  ret i32 %12, !dbg !5286
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @serport_ldisc_close(ptr noundef %tty) #2 align 16 !dbg !5287 {
entry:
  %tty.addr = alloca ptr, align 8
  %serport = alloca ptr, align 8
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5289, metadata !DIExpression()), !dbg !5291
  call void @llvm.lifetime.start.p0(i64 8, ptr %serport) #21, !dbg !5292
  call void @llvm.dbg.declare(metadata ptr %serport, metadata !5290, metadata !DIExpression()), !dbg !5293
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !5294
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 30, !dbg !5295
  %1 = load ptr, ptr %disc_data, align 8, !dbg !5295
  store ptr %1, ptr %serport, align 8, !dbg !5293
  %2 = load ptr, ptr %serport, align 8, !dbg !5296
  call void @kfree(ptr noundef %2) #19, !dbg !5297
  call void @llvm.lifetime.end.p0(i64 8, ptr %serport) #21, !dbg !5298
  ret void, !dbg !5298
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @serport_ldisc_read(ptr noundef %tty, ptr noundef %file, ptr noundef %kbuf, i64 noundef %nr, ptr noundef %cookie, i64 noundef %offset) #2 align 16 !dbg !5299 {
entry:
  %retval = alloca i64, align 8
  %tty.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %kbuf.addr = alloca ptr, align 8
  %nr.addr = alloca i64, align 8
  %cookie.addr = alloca ptr, align 8
  %offset.addr = alloca i64, align 8
  %serport = alloca ptr, align 8
  %serio = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__ret = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %__ret31 = alloca i64, align 8
  %__int = alloca i64, align 8
  %tmp56 = alloca i64, align 8
  %tmp59 = alloca i32, align 4
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5301, metadata !DIExpression()), !dbg !5331
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5302, metadata !DIExpression()), !dbg !5332
  store ptr %kbuf, ptr %kbuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kbuf.addr, metadata !5303, metadata !DIExpression()), !dbg !5333
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5304, metadata !DIExpression()), !dbg !5334
  store ptr %cookie, ptr %cookie.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cookie.addr, metadata !5305, metadata !DIExpression()), !dbg !5335
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !5306, metadata !DIExpression()), !dbg !5336
  call void @llvm.lifetime.start.p0(i64 8, ptr %serport) #21, !dbg !5337
  call void @llvm.dbg.declare(metadata ptr %serport, metadata !5307, metadata !DIExpression()), !dbg !5338
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !5339
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 30, !dbg !5340
  %1 = load ptr, ptr %disc_data, align 8, !dbg !5340
  store ptr %1, ptr %serport, align 8, !dbg !5338
  call void @llvm.lifetime.start.p0(i64 8, ptr %serio) #21, !dbg !5341
  call void @llvm.dbg.declare(metadata ptr %serio, metadata !5308, metadata !DIExpression()), !dbg !5342
  %2 = load ptr, ptr %serport, align 8, !dbg !5343
  %flags = getelementptr inbounds %struct.serport, ptr %2, i32 0, i32 5, !dbg !5345
  %call = call zeroext i1 @test_and_set_bit(i64 noundef 1, ptr noundef %flags) #19, !dbg !5346
  br i1 %call, label %if.then, label %if.end, !dbg !5347

if.then:                                          ; preds = %entry
  store i64 -16, ptr %retval, align 8, !dbg !5348
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup64, !dbg !5348

if.end:                                           ; preds = %entry
  %call1 = call noalias ptr @kzalloc(i64 noundef 1096, i32 noundef 3264) #22, !dbg !5349
  store ptr %call1, ptr %serio, align 8, !dbg !5350
  %3 = load ptr, ptr %serport, align 8, !dbg !5351
  %serio2 = getelementptr inbounds %struct.serport, ptr %3, i32 0, i32 2, !dbg !5352
  store ptr %call1, ptr %serio2, align 8, !dbg !5353
  %4 = load ptr, ptr %serio, align 8, !dbg !5354
  %tobool = icmp ne ptr %4, null, !dbg !5354
  br i1 %tobool, label %if.end4, label %if.then3, !dbg !5356

if.then3:                                         ; preds = %if.end
  store i64 -12, ptr %retval, align 8, !dbg !5357
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup64, !dbg !5357

if.end4:                                          ; preds = %if.end
  %5 = load ptr, ptr %serio, align 8, !dbg !5358
  %name = getelementptr inbounds %struct.serio, ptr %5, i32 0, i32 1, !dbg !5359
  %arraydecay = getelementptr inbounds [32 x i8], ptr %name, i64 0, i64 0, !dbg !5358
  %call5 = call i64 @strscpy(ptr noundef %arraydecay, ptr noundef @.str.3, i64 noundef 32) #19, !dbg !5360
  %6 = load ptr, ptr %serio, align 8, !dbg !5361
  %phys = getelementptr inbounds %struct.serio, ptr %6, i32 0, i32 2, !dbg !5362
  %arraydecay6 = getelementptr inbounds [32 x i8], ptr %phys, i64 0, i64 0, !dbg !5361
  %7 = load ptr, ptr %tty.addr, align 8, !dbg !5363
  %call7 = call ptr @tty_name(ptr noundef %7) #19, !dbg !5364
  %call8 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay6, i64 noundef 32, ptr noundef @.str.4, ptr noundef %call7) #19, !dbg !5365
  %8 = load ptr, ptr %serio, align 8, !dbg !5366
  %id = getelementptr inbounds %struct.serio, ptr %8, i32 0, i32 5, !dbg !5367
  %9 = load ptr, ptr %serport, align 8, !dbg !5368
  %id9 = getelementptr inbounds %struct.serport, ptr %9, i32 0, i32 3, !dbg !5369
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %id, ptr align 8 %id9, i64 4, i1 false), !dbg !5369
  %10 = load ptr, ptr %serio, align 8, !dbg !5370
  %id10 = getelementptr inbounds %struct.serio, ptr %10, i32 0, i32 5, !dbg !5371
  %type = getelementptr inbounds %struct.serio_device_id, ptr %id10, i32 0, i32 0, !dbg !5372
  store i8 2, ptr %type, align 1, !dbg !5373
  %11 = load ptr, ptr %serio, align 8, !dbg !5374
  %write = getelementptr inbounds %struct.serio, ptr %11, i32 0, i32 7, !dbg !5375
  store ptr @serport_serio_write, ptr %write, align 8, !dbg !5376
  %12 = load ptr, ptr %serio, align 8, !dbg !5377
  %open = getelementptr inbounds %struct.serio, ptr %12, i32 0, i32 8, !dbg !5378
  store ptr @serport_serio_open, ptr %open, align 8, !dbg !5379
  %13 = load ptr, ptr %serio, align 8, !dbg !5380
  %close = getelementptr inbounds %struct.serio, ptr %13, i32 0, i32 9, !dbg !5381
  store ptr @serport_serio_close, ptr %close, align 8, !dbg !5382
  %14 = load ptr, ptr %serport, align 8, !dbg !5383
  %15 = load ptr, ptr %serio, align 8, !dbg !5384
  %port_data = getelementptr inbounds %struct.serio, ptr %15, i32 0, i32 0, !dbg !5385
  store ptr %14, ptr %port_data, align 8, !dbg !5386
  %16 = load ptr, ptr %tty.addr, align 8, !dbg !5387
  %dev = getelementptr inbounds %struct.tty_struct, ptr %16, i32 0, i32 2, !dbg !5388
  %17 = load ptr, ptr %dev, align 8, !dbg !5388
  %18 = load ptr, ptr %serio, align 8, !dbg !5389
  %dev11 = getelementptr inbounds %struct.serio, ptr %18, i32 0, i32 18, !dbg !5390
  %parent = getelementptr inbounds %struct.device, ptr %dev11, i32 0, i32 1, !dbg !5391
  store ptr %17, ptr %parent, align 8, !dbg !5392
  %19 = load ptr, ptr %serport, align 8, !dbg !5393
  %serio12 = getelementptr inbounds %struct.serport, ptr %19, i32 0, i32 2, !dbg !5393
  %20 = load ptr, ptr %serio12, align 8, !dbg !5393
  call void @__serio_register_port(ptr noundef %20, ptr noundef null) #19, !dbg !5393
  br label %do.body, !dbg !5394

do.body:                                          ; preds = %if.end4
  br label %do.cond, !dbg !5396

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5396

do.end:                                           ; preds = %do.cond
  %21 = load ptr, ptr %tty.addr, align 8, !dbg !5394
  %call13 = call ptr @tty_name(ptr noundef %21) #19, !dbg !5394
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5, ptr noundef %call13) #20, !dbg !5394
  store i32 %call14, ptr %tmp, align 4, !dbg !5396
  %22 = load i32, ptr %tmp, align 4, !dbg !5394
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #21, !dbg !5398
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !5309, metadata !DIExpression()), !dbg !5398
  store i32 0, ptr %__ret, align 4, !dbg !5398
  br label %do.body15, !dbg !5398

do.body15:                                        ; preds = %do.end
  call void @might_resched() #19, !dbg !5399
  br label %do.cond16, !dbg !5399

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !5399

do.end17:                                         ; preds = %do.cond16
  %23 = load ptr, ptr %serport, align 8, !dbg !5401
  %flags18 = getelementptr inbounds %struct.serport, ptr %23, i32 0, i32 5, !dbg !5401
  %24 = ptrtoint ptr %flags18 to i64, !dbg !5401
  %cmp = icmp ne i64 %24, 0, !dbg !5401
  %conv = zext i1 %cmp to i32, !dbg !5401
  %25 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !5401
  br i1 %25, label %land.lhs.true, label %cond.false, !dbg !5401

land.lhs.true:                                    ; preds = %do.end17
  %26 = load ptr, ptr %serport, align 8, !dbg !5401
  %flags19 = getelementptr inbounds %struct.serport, ptr %26, i32 0, i32 5, !dbg !5401
  %27 = ptrtoint ptr %flags19 to i64, !dbg !5401
  %cmp20 = icmp ne i64 %27, 0, !dbg !5401
  br i1 %cmp20, label %land.lhs.true22, label %cond.false, !dbg !5401

land.lhs.true22:                                  ; preds = %land.lhs.true
  %28 = load ptr, ptr %serport, align 8, !dbg !5401
  %flags23 = getelementptr inbounds %struct.serport, ptr %28, i32 0, i32 5, !dbg !5401
  %29 = load i64, ptr %flags23, align 8, !dbg !5401
  %30 = call i1 @llvm.is.constant.i64(i64 %29), !dbg !5401
  br i1 %30, label %cond.true, label %cond.false, !dbg !5398

cond.true:                                        ; preds = %land.lhs.true22
  %31 = load ptr, ptr %serport, align 8, !dbg !5401
  %flags24 = getelementptr inbounds %struct.serport, ptr %31, i32 0, i32 5, !dbg !5401
  %call25 = call zeroext i1 @const_test_bit(i64 noundef 3, ptr noundef %flags24) #19, !dbg !5401
  br i1 %call25, label %if.end58, label %if.then30, !dbg !5401

cond.false:                                       ; preds = %land.lhs.true22, %land.lhs.true, %do.end17
  %32 = load ptr, ptr %serport, align 8, !dbg !5401
  %flags27 = getelementptr inbounds %struct.serport, ptr %32, i32 0, i32 5, !dbg !5401
  %call28 = call zeroext i1 @_test_bit(i64 noundef 3, ptr noundef %flags27) #19, !dbg !5401
  br i1 %call28, label %if.end58, label %if.then30, !dbg !5398

if.then30:                                        ; preds = %cond.false, %cond.true
  call void @llvm.lifetime.start.p0(i64 40, ptr %__wq_entry) #21, !dbg !5402
  call void @llvm.dbg.declare(metadata ptr %__wq_entry, metadata !5311, metadata !DIExpression()), !dbg !5402
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret31) #21, !dbg !5402
  call void @llvm.dbg.declare(metadata ptr %__ret31, metadata !5325, metadata !DIExpression()), !dbg !5402
  store i64 0, ptr %__ret31, align 8, !dbg !5402
  call void @init_wait_entry(ptr noundef %__wq_entry, i32 noundef 0) #19, !dbg !5402
  br label %for.cond, !dbg !5402

for.cond:                                         ; preds = %cleanup.cont, %if.then30
  call void @llvm.lifetime.start.p0(i64 8, ptr %__int) #21, !dbg !5403
  call void @llvm.dbg.declare(metadata ptr %__int, metadata !5326, metadata !DIExpression()), !dbg !5403
  %33 = load ptr, ptr %serport, align 8, !dbg !5403
  %wait = getelementptr inbounds %struct.serport, ptr %33, i32 0, i32 1, !dbg !5403
  %call32 = call i64 @prepare_to_wait_event(ptr noundef %wait, ptr noundef %__wq_entry, i32 noundef 1) #19, !dbg !5403
  store i64 %call32, ptr %__int, align 8, !dbg !5403
  %34 = load ptr, ptr %serport, align 8, !dbg !5404
  %flags33 = getelementptr inbounds %struct.serport, ptr %34, i32 0, i32 5, !dbg !5404
  %35 = ptrtoint ptr %flags33 to i64, !dbg !5404
  %cmp34 = icmp ne i64 %35, 0, !dbg !5404
  %conv35 = zext i1 %cmp34 to i32, !dbg !5404
  %36 = call i1 @llvm.is.constant.i32(i32 %conv35), !dbg !5404
  br i1 %36, label %land.lhs.true36, label %cond.false46, !dbg !5404

land.lhs.true36:                                  ; preds = %for.cond
  %37 = load ptr, ptr %serport, align 8, !dbg !5404
  %flags37 = getelementptr inbounds %struct.serport, ptr %37, i32 0, i32 5, !dbg !5404
  %38 = ptrtoint ptr %flags37 to i64, !dbg !5404
  %cmp38 = icmp ne i64 %38, 0, !dbg !5404
  br i1 %cmp38, label %land.lhs.true40, label %cond.false46, !dbg !5404

land.lhs.true40:                                  ; preds = %land.lhs.true36
  %39 = load ptr, ptr %serport, align 8, !dbg !5404
  %flags41 = getelementptr inbounds %struct.serport, ptr %39, i32 0, i32 5, !dbg !5404
  %40 = load i64, ptr %flags41, align 8, !dbg !5404
  %41 = call i1 @llvm.is.constant.i64(i64 %40), !dbg !5404
  br i1 %41, label %cond.true42, label %cond.false46, !dbg !5403

cond.true42:                                      ; preds = %land.lhs.true40
  %42 = load ptr, ptr %serport, align 8, !dbg !5404
  %flags43 = getelementptr inbounds %struct.serport, ptr %42, i32 0, i32 5, !dbg !5404
  %call44 = call zeroext i1 @const_test_bit(i64 noundef 3, ptr noundef %flags43) #19, !dbg !5404
  br i1 %call44, label %if.then50, label %if.end51, !dbg !5404

cond.false46:                                     ; preds = %land.lhs.true40, %land.lhs.true36, %for.cond
  %43 = load ptr, ptr %serport, align 8, !dbg !5404
  %flags47 = getelementptr inbounds %struct.serport, ptr %43, i32 0, i32 5, !dbg !5404
  %call48 = call zeroext i1 @_test_bit(i64 noundef 3, ptr noundef %flags47) #19, !dbg !5404
  br i1 %call48, label %if.then50, label %if.end51, !dbg !5403

if.then50:                                        ; preds = %cond.false46, %cond.true42
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5404

if.end51:                                         ; preds = %cond.false46, %cond.true42
  %44 = load i64, ptr %__int, align 8, !dbg !5406
  %tobool52 = icmp ne i64 %44, 0, !dbg !5406
  br i1 %tobool52, label %if.then53, label %if.end54, !dbg !5403

if.then53:                                        ; preds = %if.end51
  %45 = load i64, ptr %__int, align 8, !dbg !5408
  store i64 %45, ptr %__ret31, align 8, !dbg !5408
  store i32 8, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5408

if.end54:                                         ; preds = %if.end51
  call void @schedule() #19, !dbg !5403
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5410
  br label %cleanup, !dbg !5410

cleanup:                                          ; preds = %if.then53, %if.end54, %if.then50
  call void @llvm.lifetime.end.p0(i64 8, ptr %__int) #21, !dbg !5410
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 6, label %for.end
    i32 8, label %__out
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond, !dbg !5410, !llvm.loop !5411

for.end:                                          ; preds = %cleanup
  %46 = load ptr, ptr %serport, align 8, !dbg !5402
  %wait55 = getelementptr inbounds %struct.serport, ptr %46, i32 0, i32 1, !dbg !5402
  call void @finish_wait(ptr noundef %wait55, ptr noundef %__wq_entry) #19, !dbg !5402
  br label %__out, !dbg !5402

__out:                                            ; preds = %for.end, %cleanup
  call void @llvm.dbg.label(metadata !5330), !dbg !5402
  %47 = load i64, ptr %__ret31, align 8, !dbg !5402
  store i64 %47, ptr %tmp56, align 8, !dbg !5402
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret31) #21, !dbg !5401
  call void @llvm.lifetime.end.p0(i64 40, ptr %__wq_entry) #21, !dbg !5401
  %48 = load i64, ptr %tmp56, align 8, !dbg !5402
  %conv57 = trunc i64 %48 to i32, !dbg !5401
  store i32 %conv57, ptr %__ret, align 4, !dbg !5401
  br label %if.end58, !dbg !5401

if.end58:                                         ; preds = %__out, %cond.false, %cond.true
  %49 = load i32, ptr %__ret, align 4, !dbg !5398
  store i32 %49, ptr %tmp59, align 4, !dbg !5401
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #21, !dbg !5414
  %50 = load i32, ptr %tmp59, align 4, !dbg !5398
  %51 = load ptr, ptr %serport, align 8, !dbg !5415
  %serio60 = getelementptr inbounds %struct.serport, ptr %51, i32 0, i32 2, !dbg !5416
  %52 = load ptr, ptr %serio60, align 8, !dbg !5416
  call void @serio_unregister_port(ptr noundef %52) #19, !dbg !5417
  %53 = load ptr, ptr %serport, align 8, !dbg !5418
  %serio61 = getelementptr inbounds %struct.serport, ptr %53, i32 0, i32 2, !dbg !5419
  store ptr null, ptr %serio61, align 8, !dbg !5420
  %54 = load ptr, ptr %serport, align 8, !dbg !5421
  %flags62 = getelementptr inbounds %struct.serport, ptr %54, i32 0, i32 5, !dbg !5422
  call void @clear_bit(i64 noundef 3, ptr noundef %flags62) #19, !dbg !5423
  %55 = load ptr, ptr %serport, align 8, !dbg !5424
  %flags63 = getelementptr inbounds %struct.serport, ptr %55, i32 0, i32 5, !dbg !5425
  call void @clear_bit(i64 noundef 1, ptr noundef %flags63) #19, !dbg !5426
  store i64 0, ptr %retval, align 8, !dbg !5427
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup64, !dbg !5427

cleanup64:                                        ; preds = %if.end58, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %serio) #21, !dbg !5428
  call void @llvm.lifetime.end.p0(i64 8, ptr %serport) #21, !dbg !5428
  %56 = load i64, ptr %retval, align 8, !dbg !5428
  ret i64 %56, !dbg !5428

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @serport_ldisc_ioctl(ptr noundef %tty, i32 noundef %cmd, i64 noundef %arg) #2 align 16 !dbg !5429 {
entry:
  %retval = alloca i32, align 4
  %tty.addr = alloca ptr, align 8
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i64, align 8
  %type = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__ret_gu = alloca i32, align 4
  %__val_gu = alloca i64, align 8
  %__tmp = alloca i64, align 8
  %tmp4 = alloca i64, align 8
  %tmp5 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5431, metadata !DIExpression()), !dbg !5444
  store i32 %cmd, ptr %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !5432, metadata !DIExpression()), !dbg !5445
  store i64 %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !5433, metadata !DIExpression()), !dbg !5446
  %0 = load i32, ptr %cmd.addr, align 4, !dbg !5447
  %conv = zext i32 %0 to i64, !dbg !5447
  %cmp = icmp eq i64 %conv, 1074295041, !dbg !5448
  br i1 %cmp, label %if.then, label %if.end8, !dbg !5449

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %type) #21, !dbg !5450
  call void @llvm.dbg.declare(metadata ptr %type, metadata !5434, metadata !DIExpression()), !dbg !5451
  call void @might_fault() #19, !dbg !5452
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_gu) #21, !dbg !5453
  call void @llvm.dbg.declare(metadata ptr %__ret_gu, metadata !5437, metadata !DIExpression()), !dbg !5453
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val_gu) #21, !dbg !5453
  call void @llvm.dbg.declare(metadata ptr %__val_gu, metadata !5441, metadata !DIExpression()), !dbg !5453
  %1 = call i64 @llvm.read_register.i64(metadata !5216), !dbg !5453
  %2 = load i64, ptr %arg.addr, align 8, !dbg !5453
  %3 = inttoptr i64 %2 to ptr, !dbg !5453
  %4 = call { ptr, i64, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %3, i64 8, i64 %1) #21, !dbg !5453, !srcloc !5454
  %asmresult = extractvalue { ptr, i64, i64 } %4, 0, !dbg !5453
  %asmresult2 = extractvalue { ptr, i64, i64 } %4, 1, !dbg !5453
  %asmresult3 = extractvalue { ptr, i64, i64 } %4, 2, !dbg !5453
  %5 = ptrtoint ptr %asmresult to i64, !dbg !5453
  %6 = trunc i64 %5 to i32, !dbg !5453
  store i32 %6, ptr %__ret_gu, align 4, !dbg !5453
  store i64 %asmresult2, ptr %__val_gu, align 8, !dbg !5453
  call void @llvm.write_register.i64(metadata !5216, i64 %asmresult3), !dbg !5453
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp) #21, !dbg !5455
  call void @llvm.dbg.declare(metadata ptr %__tmp, metadata !5442, metadata !DIExpression()), !dbg !5455
  %7 = load i64, ptr %__val_gu, align 8, !dbg !5455
  store i64 %7, ptr %__tmp, align 8, !dbg !5455
  call void @kmsan_unpoison_memory(ptr noundef %__tmp, i64 noundef 8) #19, !dbg !5455
  %8 = load i64, ptr %__tmp, align 8, !dbg !5455
  store i64 %8, ptr %__val_gu, align 8, !dbg !5455
  store i64 %8, ptr %tmp4, align 8, !dbg !5455
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp) #21, !dbg !5453
  %9 = load i64, ptr %tmp4, align 8, !dbg !5455
  %10 = load i64, ptr %__val_gu, align 8, !dbg !5453
  store i64 %10, ptr %type, align 8, !dbg !5453
  %11 = load i32, ptr %__ret_gu, align 4, !dbg !5453
  %conv6 = sext i32 %11 to i64, !dbg !5453
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !5453
  store i64 %expval, ptr %tmp5, align 8, !dbg !5453
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val_gu) #21, !dbg !5452
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_gu) #21, !dbg !5452
  %12 = load i64, ptr %tmp5, align 8, !dbg !5453
  store i64 %12, ptr %tmp, align 8, !dbg !5452
  %13 = load i64, ptr %tmp, align 8, !dbg !5452
  %tobool = icmp ne i64 %13, 0, !dbg !5456
  br i1 %tobool, label %if.then7, label %if.end, !dbg !5457

if.then7:                                         ; preds = %if.then
  store i32 -14, ptr %retval, align 4, !dbg !5458
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5458

if.end:                                           ; preds = %if.then
  %14 = load ptr, ptr %tty.addr, align 8, !dbg !5459
  %15 = load i64, ptr %type, align 8, !dbg !5460
  call void @serport_set_type(ptr noundef %14, i64 noundef %15) #19, !dbg !5461
  store i32 0, ptr %retval, align 4, !dbg !5462
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5462

cleanup:                                          ; preds = %if.end, %if.then7
  call void @llvm.lifetime.end.p0(i64 8, ptr %type) #21, !dbg !5463
  br label %return

if.end8:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !5464
  br label %return, !dbg !5464

return:                                           ; preds = %if.end8, %cleanup
  %16 = load i32, ptr %retval, align 4, !dbg !5465
  ret i32 %16, !dbg !5465
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @serport_ldisc_compat_ioctl(ptr noundef %tty, i32 noundef %cmd, i64 noundef %arg) #2 align 16 !dbg !5466 {
entry:
  %retval = alloca i32, align 4
  %tty.addr = alloca ptr, align 8
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i64, align 8
  %uarg = alloca ptr, align 8
  %compat_type = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_gu = alloca i32, align 4
  %__val_gu = alloca i32, align 4
  %__tmp = alloca i64, align 8
  %tmp6 = alloca i32, align 4
  %tmp8 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5468, metadata !DIExpression()), !dbg !5482
  store i32 %cmd, ptr %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !5469, metadata !DIExpression()), !dbg !5483
  store i64 %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !5470, metadata !DIExpression()), !dbg !5484
  %0 = load i32, ptr %cmd.addr, align 4, !dbg !5485
  %conv = zext i32 %0 to i64, !dbg !5485
  %cmp = icmp eq i64 %conv, 1074032897, !dbg !5486
  br i1 %cmp, label %if.then, label %if.end13, !dbg !5487

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %uarg) #21, !dbg !5488
  call void @llvm.dbg.declare(metadata ptr %uarg, metadata !5471, metadata !DIExpression()), !dbg !5489
  %1 = load i64, ptr %arg.addr, align 8, !dbg !5490
  %conv2 = trunc i64 %1 to i32, !dbg !5490
  %call = call ptr @compat_ptr(i32 noundef %conv2) #19, !dbg !5491
  store ptr %call, ptr %uarg, align 8, !dbg !5489
  call void @llvm.lifetime.start.p0(i64 4, ptr %compat_type) #21, !dbg !5492
  call void @llvm.dbg.declare(metadata ptr %compat_type, metadata !5474, metadata !DIExpression()), !dbg !5493
  call void @might_fault() #19, !dbg !5494
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_gu) #21, !dbg !5495
  call void @llvm.dbg.declare(metadata ptr %__ret_gu, metadata !5475, metadata !DIExpression()), !dbg !5495
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_gu) #21, !dbg !5495
  call void @llvm.dbg.declare(metadata ptr %__val_gu, metadata !5479, metadata !DIExpression()), !dbg !5495
  %2 = call i64 @llvm.read_register.i64(metadata !5216), !dbg !5495
  %3 = load ptr, ptr %uarg, align 8, !dbg !5495
  %4 = call { ptr, i32, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %3, i64 4, i64 %2) #21, !dbg !5495, !srcloc !5496
  %asmresult = extractvalue { ptr, i32, i64 } %4, 0, !dbg !5495
  %asmresult3 = extractvalue { ptr, i32, i64 } %4, 1, !dbg !5495
  %asmresult4 = extractvalue { ptr, i32, i64 } %4, 2, !dbg !5495
  %5 = ptrtoint ptr %asmresult to i64, !dbg !5495
  %6 = trunc i64 %5 to i32, !dbg !5495
  store i32 %6, ptr %__ret_gu, align 4, !dbg !5495
  store i32 %asmresult3, ptr %__val_gu, align 4, !dbg !5495
  call void @llvm.write_register.i64(metadata !5216, i64 %asmresult4), !dbg !5495
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp) #21, !dbg !5497
  call void @llvm.dbg.declare(metadata ptr %__tmp, metadata !5480, metadata !DIExpression()), !dbg !5497
  %7 = load i32, ptr %__val_gu, align 4, !dbg !5497
  %conv5 = zext i32 %7 to i64, !dbg !5497
  store i64 %conv5, ptr %__tmp, align 8, !dbg !5497
  call void @kmsan_unpoison_memory(ptr noundef %__tmp, i64 noundef 8) #19, !dbg !5497
  %8 = load i64, ptr %__tmp, align 8, !dbg !5497
  %conv7 = trunc i64 %8 to i32, !dbg !5497
  store i32 %conv7, ptr %__val_gu, align 4, !dbg !5497
  store i32 %conv7, ptr %tmp6, align 4, !dbg !5497
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp) #21, !dbg !5495
  %9 = load i32, ptr %tmp6, align 4, !dbg !5497
  %10 = load i32, ptr %__val_gu, align 4, !dbg !5495
  store i32 %10, ptr %compat_type, align 4, !dbg !5495
  %11 = load i32, ptr %__ret_gu, align 4, !dbg !5495
  %conv9 = sext i32 %11 to i64, !dbg !5495
  %expval = call i64 @llvm.expect.i64(i64 %conv9, i64 0), !dbg !5495
  store i64 %expval, ptr %tmp8, align 8, !dbg !5495
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_gu) #21, !dbg !5494
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_gu) #21, !dbg !5494
  %12 = load i64, ptr %tmp8, align 8, !dbg !5495
  store i64 %12, ptr %tmp, align 8, !dbg !5494
  %13 = load i64, ptr %tmp, align 8, !dbg !5494
  %tobool = icmp ne i64 %13, 0, !dbg !5498
  br i1 %tobool, label %if.then10, label %if.end, !dbg !5499

if.then10:                                        ; preds = %if.then
  store i32 -14, ptr %retval, align 4, !dbg !5500
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5500

if.end:                                           ; preds = %if.then
  %14 = load ptr, ptr %tty.addr, align 8, !dbg !5501
  %15 = load i32, ptr %compat_type, align 4, !dbg !5502
  %conv11 = zext i32 %15 to i64, !dbg !5502
  call void @serport_set_type(ptr noundef %14, i64 noundef %conv11) #19, !dbg !5503
  store i32 0, ptr %retval, align 4, !dbg !5504
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5504

cleanup:                                          ; preds = %if.end, %if.then10
  call void @llvm.lifetime.end.p0(i64 4, ptr %compat_type) #21, !dbg !5505
  call void @llvm.lifetime.end.p0(i64 8, ptr %uarg) #21, !dbg !5505
  br label %return

if.end13:                                         ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !5506
  br label %return, !dbg !5506

return:                                           ; preds = %if.end13, %cleanup
  %16 = load i32, ptr %retval, align 4, !dbg !5507
  ret i32 %16, !dbg !5507
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @serport_ldisc_hangup(ptr noundef %tty) #2 align 16 !dbg !5508 {
entry:
  %tty.addr = alloca ptr, align 8
  %serport = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5510, metadata !DIExpression()), !dbg !5518
  call void @llvm.lifetime.start.p0(i64 8, ptr %serport) #21, !dbg !5519
  call void @llvm.dbg.declare(metadata ptr %serport, metadata !5511, metadata !DIExpression()), !dbg !5520
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !5521
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 30, !dbg !5522
  %1 = load ptr, ptr %disc_data, align 8, !dbg !5522
  store ptr %1, ptr %serport, align 8, !dbg !5520
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #21, !dbg !5523
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5512, metadata !DIExpression()), !dbg !5524
  br label %do.body, !dbg !5525

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5526

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #21, !dbg !5527
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5513, metadata !DIExpression()), !dbg !5527
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #21, !dbg !5527
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5517, metadata !DIExpression()), !dbg !5527
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5527
  %conv = zext i1 %cmp to i32, !dbg !5527
  store i32 1, ptr %tmp, align 4, !dbg !5527
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #21, !dbg !5528
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #21, !dbg !5528
  %2 = load i32, ptr %tmp, align 4, !dbg !5527
  %3 = load ptr, ptr %serport, align 8, !dbg !5528
  %lock = getelementptr inbounds %struct.serport, ptr %3, i32 0, i32 4, !dbg !5528
  %call = call ptr @spinlock_check(ptr noundef %lock) #19, !dbg !5528
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #19, !dbg !5528
  store i64 %call2, ptr %flags, align 8, !dbg !5528
  br label %do.cond, !dbg !5528

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !5528

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !5526

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !5526

do.end4:                                          ; preds = %do.cond3
  %4 = load ptr, ptr %serport, align 8, !dbg !5529
  %flags5 = getelementptr inbounds %struct.serport, ptr %4, i32 0, i32 5, !dbg !5530
  call void @set_bit(i64 noundef 3, ptr noundef %flags5) #19, !dbg !5531
  %5 = load ptr, ptr %serport, align 8, !dbg !5532
  %lock6 = getelementptr inbounds %struct.serport, ptr %5, i32 0, i32 4, !dbg !5533
  %6 = load i64, ptr %flags, align 8, !dbg !5534
  call void @spin_unlock_irqrestore(ptr noundef %lock6, i64 noundef %6) #19, !dbg !5535
  %7 = load ptr, ptr %serport, align 8, !dbg !5536
  %wait = getelementptr inbounds %struct.serport, ptr %7, i32 0, i32 1, !dbg !5536
  %call7 = call i32 @__wake_up(ptr noundef %wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #19, !dbg !5536
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #21, !dbg !5537
  call void @llvm.lifetime.end.p0(i64 8, ptr %serport) #21, !dbg !5537
  ret void, !dbg !5537
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @serport_ldisc_receive(ptr noundef %tty, ptr noundef %cp, ptr noundef %fp, i64 noundef %count) #2 align 16 !dbg !5538 {
entry:
  %tty.addr = alloca ptr, align 8
  %cp.addr = alloca ptr, align 8
  %fp.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %serport = alloca ptr, align 8
  %flags = alloca i64, align 8
  %ch_flags = alloca i32, align 4
  %i = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5540, metadata !DIExpression()), !dbg !5554
  store ptr %cp, ptr %cp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cp.addr, metadata !5541, metadata !DIExpression()), !dbg !5555
  store ptr %fp, ptr %fp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fp.addr, metadata !5542, metadata !DIExpression()), !dbg !5556
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5543, metadata !DIExpression()), !dbg !5557
  call void @llvm.lifetime.start.p0(i64 8, ptr %serport) #21, !dbg !5558
  call void @llvm.dbg.declare(metadata ptr %serport, metadata !5544, metadata !DIExpression()), !dbg !5559
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !5560
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 30, !dbg !5561
  %1 = load ptr, ptr %disc_data, align 8, !dbg !5561
  store ptr %1, ptr %serport, align 8, !dbg !5559
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #21, !dbg !5562
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5545, metadata !DIExpression()), !dbg !5563
  call void @llvm.lifetime.start.p0(i64 4, ptr %ch_flags) #21, !dbg !5564
  call void @llvm.dbg.declare(metadata ptr %ch_flags, metadata !5546, metadata !DIExpression()), !dbg !5565
  store i32 0, ptr %ch_flags, align 4, !dbg !5565
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #21, !dbg !5566
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5547, metadata !DIExpression()), !dbg !5567
  br label %do.body, !dbg !5568

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5569

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #21, !dbg !5570
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5548, metadata !DIExpression()), !dbg !5570
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #21, !dbg !5570
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5552, metadata !DIExpression()), !dbg !5570
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5570
  %conv = zext i1 %cmp to i32, !dbg !5570
  store i32 1, ptr %tmp, align 4, !dbg !5570
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #21, !dbg !5571
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #21, !dbg !5571
  %2 = load i32, ptr %tmp, align 4, !dbg !5570
  %3 = load ptr, ptr %serport, align 8, !dbg !5571
  %lock = getelementptr inbounds %struct.serport, ptr %3, i32 0, i32 4, !dbg !5571
  %call = call ptr @spinlock_check(ptr noundef %lock) #19, !dbg !5571
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #19, !dbg !5571
  store i64 %call2, ptr %flags, align 8, !dbg !5571
  br label %do.cond, !dbg !5571

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !5571

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !5569

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !5569

do.end4:                                          ; preds = %do.cond3
  %4 = load ptr, ptr %serport, align 8, !dbg !5572
  %flags5 = getelementptr inbounds %struct.serport, ptr %4, i32 0, i32 5, !dbg !5572
  %5 = ptrtoint ptr %flags5 to i64, !dbg !5572
  %cmp6 = icmp ne i64 %5, 0, !dbg !5572
  %conv7 = zext i1 %cmp6 to i32, !dbg !5572
  %6 = call i1 @llvm.is.constant.i32(i32 %conv7), !dbg !5572
  br i1 %6, label %land.lhs.true, label %cond.false, !dbg !5572

land.lhs.true:                                    ; preds = %do.end4
  %7 = load ptr, ptr %serport, align 8, !dbg !5572
  %flags8 = getelementptr inbounds %struct.serport, ptr %7, i32 0, i32 5, !dbg !5572
  %8 = ptrtoint ptr %flags8 to i64, !dbg !5572
  %cmp9 = icmp ne i64 %8, 0, !dbg !5572
  br i1 %cmp9, label %land.lhs.true11, label %cond.false, !dbg !5572

land.lhs.true11:                                  ; preds = %land.lhs.true
  %9 = load ptr, ptr %serport, align 8, !dbg !5572
  %flags12 = getelementptr inbounds %struct.serport, ptr %9, i32 0, i32 5, !dbg !5572
  %10 = load i64, ptr %flags12, align 8, !dbg !5572
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !5572
  br i1 %11, label %cond.true, label %cond.false, !dbg !5574

cond.true:                                        ; preds = %land.lhs.true11
  %12 = load ptr, ptr %serport, align 8, !dbg !5572
  %flags13 = getelementptr inbounds %struct.serport, ptr %12, i32 0, i32 5, !dbg !5572
  %call14 = call zeroext i1 @const_test_bit(i64 noundef 2, ptr noundef %flags13) #19, !dbg !5572
  br i1 %call14, label %if.end, label %if.then, !dbg !5572

cond.false:                                       ; preds = %land.lhs.true11, %land.lhs.true, %do.end4
  %13 = load ptr, ptr %serport, align 8, !dbg !5572
  %flags16 = getelementptr inbounds %struct.serport, ptr %13, i32 0, i32 5, !dbg !5572
  %call17 = call zeroext i1 @_test_bit(i64 noundef 2, ptr noundef %flags16) #19, !dbg !5572
  br i1 %call17, label %if.end, label %if.then, !dbg !5574

if.then:                                          ; preds = %cond.false, %cond.true
  br label %out, !dbg !5575

if.end:                                           ; preds = %cond.false, %cond.true
  store i32 0, ptr %i, align 4, !dbg !5576
  br label %for.cond, !dbg !5578

for.cond:                                         ; preds = %for.inc, %if.end
  %14 = load i32, ptr %i, align 4, !dbg !5579
  %conv19 = sext i32 %14 to i64, !dbg !5579
  %15 = load i64, ptr %count.addr, align 8, !dbg !5581
  %cmp20 = icmp ult i64 %conv19, %15, !dbg !5582
  br i1 %cmp20, label %for.body, label %for.end, !dbg !5583

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %fp.addr, align 8, !dbg !5584
  %tobool = icmp ne ptr %16, null, !dbg !5584
  br i1 %tobool, label %if.then22, label %if.end25, !dbg !5587

if.then22:                                        ; preds = %for.body
  %17 = load ptr, ptr %fp.addr, align 8, !dbg !5588
  %18 = load i32, ptr %i, align 4, !dbg !5590
  %idxprom = sext i32 %18 to i64, !dbg !5588
  %arrayidx = getelementptr i8, ptr %17, i64 %idxprom, !dbg !5588
  %19 = load i8, ptr %arrayidx, align 1, !dbg !5588
  %conv23 = zext i8 %19 to i32, !dbg !5588
  switch i32 %conv23, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb24
  ], !dbg !5591

sw.bb:                                            ; preds = %if.then22
  store i32 4, ptr %ch_flags, align 4, !dbg !5592
  br label %sw.epilog, !dbg !5594

sw.bb24:                                          ; preds = %if.then22
  store i32 2, ptr %ch_flags, align 4, !dbg !5595
  br label %sw.epilog, !dbg !5596

sw.default:                                       ; preds = %if.then22
  store i32 0, ptr %ch_flags, align 4, !dbg !5597
  br label %sw.epilog, !dbg !5598

sw.epilog:                                        ; preds = %sw.default, %sw.bb24, %sw.bb
  br label %if.end25, !dbg !5599

if.end25:                                         ; preds = %sw.epilog, %for.body
  %20 = load ptr, ptr %serport, align 8, !dbg !5600
  %serio = getelementptr inbounds %struct.serport, ptr %20, i32 0, i32 2, !dbg !5601
  %21 = load ptr, ptr %serio, align 8, !dbg !5601
  %22 = load ptr, ptr %cp.addr, align 8, !dbg !5602
  %23 = load i32, ptr %i, align 4, !dbg !5603
  %idxprom26 = sext i32 %23 to i64, !dbg !5602
  %arrayidx27 = getelementptr i8, ptr %22, i64 %idxprom26, !dbg !5602
  %24 = load i8, ptr %arrayidx27, align 1, !dbg !5602
  %25 = load i32, ptr %ch_flags, align 4, !dbg !5604
  %call28 = call i32 @serio_interrupt(ptr noundef %21, i8 noundef zeroext %24, i32 noundef %25) #19, !dbg !5605
  br label %for.inc, !dbg !5606

for.inc:                                          ; preds = %if.end25
  %26 = load i32, ptr %i, align 4, !dbg !5607
  %inc = add i32 %26, 1, !dbg !5607
  store i32 %inc, ptr %i, align 4, !dbg !5607
  br label %for.cond, !dbg !5608, !llvm.loop !5609

for.end:                                          ; preds = %for.cond
  br label %out, !dbg !5610

out:                                              ; preds = %for.end, %if.then
  call void @llvm.dbg.label(metadata !5553), !dbg !5612
  %27 = load ptr, ptr %serport, align 8, !dbg !5613
  %lock29 = getelementptr inbounds %struct.serport, ptr %27, i32 0, i32 4, !dbg !5614
  %28 = load i64, ptr %flags, align 8, !dbg !5615
  call void @spin_unlock_irqrestore(ptr noundef %lock29, i64 noundef %28) #19, !dbg !5616
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #21, !dbg !5617
  call void @llvm.lifetime.end.p0(i64 4, ptr %ch_flags) #21, !dbg !5617
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #21, !dbg !5617
  call void @llvm.lifetime.end.p0(i64 8, ptr %serport) #21, !dbg !5617
  ret void, !dbg !5617
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @serport_ldisc_write_wakeup(ptr noundef %tty) #2 align 16 !dbg !5618 {
entry:
  %tty.addr = alloca ptr, align 8
  %serport = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !5620, metadata !DIExpression()), !dbg !5628
  call void @llvm.lifetime.start.p0(i64 8, ptr %serport) #21, !dbg !5629
  call void @llvm.dbg.declare(metadata ptr %serport, metadata !5621, metadata !DIExpression()), !dbg !5630
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !5631
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 30, !dbg !5632
  %1 = load ptr, ptr %disc_data, align 8, !dbg !5632
  store ptr %1, ptr %serport, align 8, !dbg !5630
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #21, !dbg !5633
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5622, metadata !DIExpression()), !dbg !5634
  br label %do.body, !dbg !5635

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5636

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #21, !dbg !5637
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5623, metadata !DIExpression()), !dbg !5637
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #21, !dbg !5637
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5627, metadata !DIExpression()), !dbg !5637
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5637
  %conv = zext i1 %cmp to i32, !dbg !5637
  store i32 1, ptr %tmp, align 4, !dbg !5637
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #21, !dbg !5638
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #21, !dbg !5638
  %2 = load i32, ptr %tmp, align 4, !dbg !5637
  %3 = load ptr, ptr %serport, align 8, !dbg !5638
  %lock = getelementptr inbounds %struct.serport, ptr %3, i32 0, i32 4, !dbg !5638
  %call = call ptr @spinlock_check(ptr noundef %lock) #19, !dbg !5638
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #19, !dbg !5638
  store i64 %call2, ptr %flags, align 8, !dbg !5638
  br label %do.cond, !dbg !5638

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !5638

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !5636

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !5636

do.end4:                                          ; preds = %do.cond3
  %4 = load ptr, ptr %serport, align 8, !dbg !5639
  %flags5 = getelementptr inbounds %struct.serport, ptr %4, i32 0, i32 5, !dbg !5639
  %5 = ptrtoint ptr %flags5 to i64, !dbg !5639
  %cmp6 = icmp ne i64 %5, 0, !dbg !5639
  %conv7 = zext i1 %cmp6 to i32, !dbg !5639
  %6 = call i1 @llvm.is.constant.i32(i32 %conv7), !dbg !5639
  br i1 %6, label %land.lhs.true, label %cond.false, !dbg !5639

land.lhs.true:                                    ; preds = %do.end4
  %7 = load ptr, ptr %serport, align 8, !dbg !5639
  %flags8 = getelementptr inbounds %struct.serport, ptr %7, i32 0, i32 5, !dbg !5639
  %8 = ptrtoint ptr %flags8 to i64, !dbg !5639
  %cmp9 = icmp ne i64 %8, 0, !dbg !5639
  br i1 %cmp9, label %land.lhs.true11, label %cond.false, !dbg !5639

land.lhs.true11:                                  ; preds = %land.lhs.true
  %9 = load ptr, ptr %serport, align 8, !dbg !5639
  %flags12 = getelementptr inbounds %struct.serport, ptr %9, i32 0, i32 5, !dbg !5639
  %10 = load i64, ptr %flags12, align 8, !dbg !5639
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !5639
  br i1 %11, label %cond.true, label %cond.false, !dbg !5641

cond.true:                                        ; preds = %land.lhs.true11
  %12 = load ptr, ptr %serport, align 8, !dbg !5639
  %flags13 = getelementptr inbounds %struct.serport, ptr %12, i32 0, i32 5, !dbg !5639
  %call14 = call zeroext i1 @const_test_bit(i64 noundef 2, ptr noundef %flags13) #19, !dbg !5639
  br i1 %call14, label %if.then, label %if.end, !dbg !5639

cond.false:                                       ; preds = %land.lhs.true11, %land.lhs.true, %do.end4
  %13 = load ptr, ptr %serport, align 8, !dbg !5639
  %flags16 = getelementptr inbounds %struct.serport, ptr %13, i32 0, i32 5, !dbg !5639
  %call17 = call zeroext i1 @_test_bit(i64 noundef 2, ptr noundef %flags16) #19, !dbg !5639
  br i1 %call17, label %if.then, label %if.end, !dbg !5641

if.then:                                          ; preds = %cond.false, %cond.true
  %14 = load ptr, ptr %serport, align 8, !dbg !5642
  %serio = getelementptr inbounds %struct.serport, ptr %14, i32 0, i32 2, !dbg !5643
  %15 = load ptr, ptr %serio, align 8, !dbg !5643
  call void @serio_drv_write_wakeup(ptr noundef %15) #19, !dbg !5644
  br label %if.end, !dbg !5644

if.end:                                           ; preds = %if.then, %cond.false, %cond.true
  %16 = load ptr, ptr %serport, align 8, !dbg !5645
  %lock19 = getelementptr inbounds %struct.serport, ptr %16, i32 0, i32 4, !dbg !5646
  %17 = load i64, ptr %flags, align 8, !dbg !5647
  call void @spin_unlock_irqrestore(ptr noundef %lock19, i64 noundef %17) #19, !dbg !5648
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #21, !dbg !5649
  call void @llvm.lifetime.end.p0(i64 8, ptr %serport) #21, !dbg !5649
  ret void, !dbg !5649
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5650 dso_local zeroext i1 @capable(i32 noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !5653 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5657, metadata !DIExpression()), !dbg !5659
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5658, metadata !DIExpression()), !dbg !5660
  %0 = load i64, ptr %size.addr, align 8, !dbg !5661
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5662
  %or = or i32 %1, 256, !dbg !5663
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #22, !dbg !5664
  ret ptr %call, !dbg !5665
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #6 align 16 !dbg !5666 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5672, metadata !DIExpression()), !dbg !5673
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5674
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5675
  ret ptr %1, !dbg !5676
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5677 dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !5682 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5689, metadata !DIExpression()), !dbg !5691
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5690, metadata !DIExpression()), !dbg !5692
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5693
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5694
  %div = sdiv i64 %1, 64, !dbg !5694
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5695
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #19, !dbg !5696
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5697
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5698
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #19, !dbg !5699
  ret void, !dbg !5700
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !5701 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5703, metadata !DIExpression()), !dbg !5708
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5704, metadata !DIExpression()), !dbg !5709
  %0 = load i64, ptr %size.addr, align 8, !dbg !5710
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5711
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5712

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5713
  %tobool = icmp ne i64 %2, 0, !dbg !5713
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5714

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #21, !dbg !5715
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5705, metadata !DIExpression()), !dbg !5716
  %3 = load i64, ptr %size.addr, align 8, !dbg !5717
  %cmp = icmp ugt i64 %3, 8192, !dbg !5719
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5720

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5721
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5722
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #22, !dbg !5723
  store ptr %call, ptr %retval, align 8, !dbg !5724
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5724

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5725
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #19, !dbg !5725
  store i32 %call2, ptr %index, align 4, !dbg !5726
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5727
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5728
  %9 = ptrtoint ptr %8 to i64, !dbg !5728
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #19, !dbg !5729
  %idxprom = zext i32 %call3 to i64, !dbg !5730
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5730
  %10 = load i32, ptr %index, align 4, !dbg !5731
  %idxprom4 = zext i32 %10 to i64, !dbg !5730
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5730
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5730
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5732
  %13 = load i64, ptr %size.addr, align 8, !dbg !5733
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #23, !dbg !5734
  store ptr %call6, ptr %retval, align 8, !dbg !5735
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5735

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #21, !dbg !5736
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5737
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5738
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #22, !dbg !5739
  store ptr %call8, ptr %retval, align 8, !dbg !5740
  br label %return, !dbg !5740

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5741
  ret ptr %16, !dbg !5741
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5742 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #6 align 16 !dbg !5743 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5747, metadata !DIExpression()), !dbg !5749
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5748, metadata !DIExpression()), !dbg !5750
  %0 = load i64, ptr %size.addr, align 8, !dbg !5751
  %tobool = icmp ne i64 %0, 0, !dbg !5751
  br i1 %tobool, label %if.end, label %if.then, !dbg !5753

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5754
  br label %return, !dbg !5754

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5755
  %cmp = icmp ule i64 %1, 8, !dbg !5757
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5758

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5759
  br label %return, !dbg !5759

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5760
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5762
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5763

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5764
  %cmp4 = icmp ule i64 %3, 96, !dbg !5765
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5766

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5767
  br label %return, !dbg !5767

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5768
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5770
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5771

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5772
  %cmp9 = icmp ule i64 %5, 192, !dbg !5773
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5774

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5775
  br label %return, !dbg !5775

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5776
  %cmp12 = icmp ule i64 %6, 8, !dbg !5778
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5779

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5780
  br label %return, !dbg !5780

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5781
  %cmp15 = icmp ule i64 %7, 16, !dbg !5783
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5784

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5785
  br label %return, !dbg !5785

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5786
  %cmp18 = icmp ule i64 %8, 32, !dbg !5788
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5789

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5790
  br label %return, !dbg !5790

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5791
  %cmp21 = icmp ule i64 %9, 64, !dbg !5793
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5794

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5795
  br label %return, !dbg !5795

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5796
  %cmp24 = icmp ule i64 %10, 128, !dbg !5798
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5799

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5800
  br label %return, !dbg !5800

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5801
  %cmp27 = icmp ule i64 %11, 256, !dbg !5803
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5804

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5805
  br label %return, !dbg !5805

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5806
  %cmp30 = icmp ule i64 %12, 512, !dbg !5808
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5809

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5810
  br label %return, !dbg !5810

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5811
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5813
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5814

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5815
  br label %return, !dbg !5815

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5816
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5818
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5819

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5820
  br label %return, !dbg !5820

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5821
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5823
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5824

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5825
  br label %return, !dbg !5825

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5826
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5828
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5829

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5830
  br label %return, !dbg !5830

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5831
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5833
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5834

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5835
  br label %return, !dbg !5835

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5836
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5838
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5839

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5840
  br label %return, !dbg !5840

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5841
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5843
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5844

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5845
  br label %return, !dbg !5845

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5846
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5848
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5849

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5850
  br label %return, !dbg !5850

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5851
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5853
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5854

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5855
  br label %return, !dbg !5855

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5856
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5858
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5859

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5860
  br label %return, !dbg !5860

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5861
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5863
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5864

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5865
  br label %return, !dbg !5865

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5866
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5868
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5869

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5870
  br label %return, !dbg !5870

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5871, !range !5873, !noundef !553
  %tobool69 = trunc i8 %25 to i1, !dbg !5871
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5874

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5875

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_197() #24, !dbg !5876, !srcloc !5879
  unreachable, !dbg !5876

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5880

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5881

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5882

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5884

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5882

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 480, i32 0, i64 12) #21, !dbg !5886, !srcloc !5888
  br label %do.end75, !dbg !5886

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5882

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5889
  br label %return, !dbg !5889

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5890
  ret i32 %26, !dbg !5890
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5891 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #6 align 16 !dbg !5897 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5901, metadata !DIExpression()), !dbg !5903
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5902, metadata !DIExpression()), !dbg !5904
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5905
  %and = and i32 %0, 17, !dbg !5905
  %cmp = icmp eq i32 %and, 0, !dbg !5905
  %lnot = xor i1 %cmp, true, !dbg !5905
  %lnot1 = xor i1 %lnot, true, !dbg !5905
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5905
  %conv = sext i32 %lnot.ext to i64, !dbg !5905
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5905
  %tobool = icmp ne i64 %expval, 0, !dbg !5905
  br i1 %tobool, label %if.then, label %if.end, !dbg !5907

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5908
  br label %return, !dbg !5908

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5909
  %and2 = and i32 %1, 1, !dbg !5911
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5911
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5912

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5913
  br label %return, !dbg !5913

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5914
  br label %return, !dbg !5914

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5916
  ret i32 %2, !dbg !5916
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5917 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5918 dso_local void @__compiletime_assert_197() #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !5919 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5927, metadata !DIExpression()), !dbg !5929
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5928, metadata !DIExpression()), !dbg !5930
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5931
  %1 = load i64, ptr %size.addr, align 8, !dbg !5932
  %conv = trunc i64 %1 to i32, !dbg !5932
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #19, !dbg !5933
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5934
  %3 = load i64, ptr %size.addr, align 8, !dbg !5934
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #19, !dbg !5934
  ret void, !dbg !5935
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !5936 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5939, metadata !DIExpression()), !dbg !5941
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5940, metadata !DIExpression()), !dbg !5942
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5943
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5945
  br i1 %1, label %if.then, label %if.else, !dbg !5946

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !5947
  %3 = load i64, ptr %nr.addr, align 8, !dbg !5947
  %shr = ashr i64 %3, 3, !dbg !5947
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !5947
  %4 = load i64, ptr %nr.addr, align 8, !dbg !5949
  %and = and i64 %4, 7, !dbg !5949
  %sh_prom = trunc i64 %and to i32, !dbg !5949
  %shl = shl i32 1, %sh_prom, !dbg !5949
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #21, !dbg !5950, !srcloc !5951
  br label %if.end, !dbg !5952

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !5953
  %6 = load i64, ptr %nr.addr, align 8, !dbg !5955
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #21, !dbg !5956, !srcloc !5957
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !5958
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #14 align 16 !dbg !5959 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5964, metadata !DIExpression()), !dbg !5966
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5965, metadata !DIExpression()), !dbg !5967
  ret i1 true, !dbg !5968
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #14 align 16 !dbg !5969 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5974, metadata !DIExpression()), !dbg !5977
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5975, metadata !DIExpression()), !dbg !5978
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5976, metadata !DIExpression()), !dbg !5979
  ret void, !dbg !5980
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5981 dso_local void @kfree(ptr noundef) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @test_and_set_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !5984 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5988, metadata !DIExpression()), !dbg !5990
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5989, metadata !DIExpression()), !dbg !5991
  br label %do.body, !dbg !5992

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5993

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5995
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5996
  %div = sdiv i64 %1, 64, !dbg !5996
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5997
  call void @instrument_atomic_read_write(ptr noundef %add.ptr, i64 noundef 8) #19, !dbg !5998
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5999
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6000
  %call = call zeroext i1 @arch_test_and_set_bit(i64 noundef %2, ptr noundef %3) #19, !dbg !6001
  ret i1 %call, !dbg !6002
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6003 dso_local i64 @strscpy(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6007 dso_local i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6011 dso_local ptr @tty_name(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @serport_serio_write(ptr noundef %serio, i8 noundef zeroext %data) #2 align 16 !dbg !6016 {
entry:
  %serio.addr = alloca ptr, align 8
  %data.addr = alloca i8, align 1
  %serport = alloca ptr, align 8
  store ptr %serio, ptr %serio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %serio.addr, metadata !6018, metadata !DIExpression()), !dbg !6021
  store i8 %data, ptr %data.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6019, metadata !DIExpression()), !dbg !6022
  call void @llvm.lifetime.start.p0(i64 8, ptr %serport) #21, !dbg !6023
  call void @llvm.dbg.declare(metadata ptr %serport, metadata !6020, metadata !DIExpression()), !dbg !6024
  %0 = load ptr, ptr %serio.addr, align 8, !dbg !6025
  %port_data = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 0, !dbg !6026
  %1 = load ptr, ptr %port_data, align 8, !dbg !6026
  store ptr %1, ptr %serport, align 8, !dbg !6024
  %2 = load ptr, ptr %serport, align 8, !dbg !6027
  %tty = getelementptr inbounds %struct.serport, ptr %2, i32 0, i32 0, !dbg !6028
  %3 = load ptr, ptr %tty, align 8, !dbg !6028
  %ops = getelementptr inbounds %struct.tty_struct, ptr %3, i32 0, i32 5, !dbg !6029
  %4 = load ptr, ptr %ops, align 8, !dbg !6029
  %write = getelementptr inbounds %struct.tty_operations, ptr %4, i32 0, i32 7, !dbg !6030
  %5 = load ptr, ptr %write, align 8, !dbg !6030
  %6 = load ptr, ptr %serport, align 8, !dbg !6031
  %tty1 = getelementptr inbounds %struct.serport, ptr %6, i32 0, i32 0, !dbg !6032
  %7 = load ptr, ptr %tty1, align 8, !dbg !6032
  %call = call i64 %5(ptr noundef %7, ptr noundef %data.addr, i64 noundef 1) #19, !dbg !6027
  %cmp = icmp ne i64 %call, 1, !dbg !6033
  %conv = zext i1 %cmp to i32, !dbg !6033
  %sub = sub i32 0, %conv, !dbg !6034
  call void @llvm.lifetime.end.p0(i64 8, ptr %serport) #21, !dbg !6035
  ret i32 %sub, !dbg !6036
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @serport_serio_open(ptr noundef %serio) #2 align 16 !dbg !6037 {
entry:
  %serio.addr = alloca ptr, align 8
  %serport = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %serio, ptr %serio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %serio.addr, metadata !6039, metadata !DIExpression()), !dbg !6047
  call void @llvm.lifetime.start.p0(i64 8, ptr %serport) #21, !dbg !6048
  call void @llvm.dbg.declare(metadata ptr %serport, metadata !6040, metadata !DIExpression()), !dbg !6049
  %0 = load ptr, ptr %serio.addr, align 8, !dbg !6050
  %port_data = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 0, !dbg !6051
  %1 = load ptr, ptr %port_data, align 8, !dbg !6051
  store ptr %1, ptr %serport, align 8, !dbg !6049
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #21, !dbg !6052
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6041, metadata !DIExpression()), !dbg !6053
  br label %do.body, !dbg !6054

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6055

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #21, !dbg !6056
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6042, metadata !DIExpression()), !dbg !6056
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #21, !dbg !6056
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6046, metadata !DIExpression()), !dbg !6056
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6056
  %conv = zext i1 %cmp to i32, !dbg !6056
  store i32 1, ptr %tmp, align 4, !dbg !6056
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #21, !dbg !6057
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #21, !dbg !6057
  %2 = load i32, ptr %tmp, align 4, !dbg !6056
  %3 = load ptr, ptr %serport, align 8, !dbg !6057
  %lock = getelementptr inbounds %struct.serport, ptr %3, i32 0, i32 4, !dbg !6057
  %call = call ptr @spinlock_check(ptr noundef %lock) #19, !dbg !6057
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #19, !dbg !6057
  store i64 %call2, ptr %flags, align 8, !dbg !6057
  br label %do.cond, !dbg !6057

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !6057

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !6055

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !6055

do.end4:                                          ; preds = %do.cond3
  %4 = load ptr, ptr %serport, align 8, !dbg !6058
  %flags5 = getelementptr inbounds %struct.serport, ptr %4, i32 0, i32 5, !dbg !6059
  call void @set_bit(i64 noundef 2, ptr noundef %flags5) #19, !dbg !6060
  %5 = load ptr, ptr %serport, align 8, !dbg !6061
  %lock6 = getelementptr inbounds %struct.serport, ptr %5, i32 0, i32 4, !dbg !6062
  %6 = load i64, ptr %flags, align 8, !dbg !6063
  call void @spin_unlock_irqrestore(ptr noundef %lock6, i64 noundef %6) #19, !dbg !6064
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #21, !dbg !6065
  call void @llvm.lifetime.end.p0(i64 8, ptr %serport) #21, !dbg !6065
  ret i32 0, !dbg !6066
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @serport_serio_close(ptr noundef %serio) #2 align 16 !dbg !6067 {
entry:
  %serio.addr = alloca ptr, align 8
  %serport = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %serio, ptr %serio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %serio.addr, metadata !6069, metadata !DIExpression()), !dbg !6077
  call void @llvm.lifetime.start.p0(i64 8, ptr %serport) #21, !dbg !6078
  call void @llvm.dbg.declare(metadata ptr %serport, metadata !6070, metadata !DIExpression()), !dbg !6079
  %0 = load ptr, ptr %serio.addr, align 8, !dbg !6080
  %port_data = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 0, !dbg !6081
  %1 = load ptr, ptr %port_data, align 8, !dbg !6081
  store ptr %1, ptr %serport, align 8, !dbg !6079
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #21, !dbg !6082
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !6071, metadata !DIExpression()), !dbg !6083
  br label %do.body, !dbg !6084

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6085

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #21, !dbg !6086
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6072, metadata !DIExpression()), !dbg !6086
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #21, !dbg !6086
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6076, metadata !DIExpression()), !dbg !6086
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6086
  %conv = zext i1 %cmp to i32, !dbg !6086
  store i32 1, ptr %tmp, align 4, !dbg !6086
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #21, !dbg !6087
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #21, !dbg !6087
  %2 = load i32, ptr %tmp, align 4, !dbg !6086
  %3 = load ptr, ptr %serport, align 8, !dbg !6087
  %lock = getelementptr inbounds %struct.serport, ptr %3, i32 0, i32 4, !dbg !6087
  %call = call ptr @spinlock_check(ptr noundef %lock) #19, !dbg !6087
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #19, !dbg !6087
  store i64 %call2, ptr %flags, align 8, !dbg !6087
  br label %do.cond, !dbg !6087

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !6087

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !6085

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !6085

do.end4:                                          ; preds = %do.cond3
  %4 = load ptr, ptr %serport, align 8, !dbg !6088
  %flags5 = getelementptr inbounds %struct.serport, ptr %4, i32 0, i32 5, !dbg !6089
  call void @clear_bit(i64 noundef 2, ptr noundef %flags5) #19, !dbg !6090
  %5 = load ptr, ptr %serport, align 8, !dbg !6091
  %lock6 = getelementptr inbounds %struct.serport, ptr %5, i32 0, i32 4, !dbg !6092
  %6 = load i64, ptr %flags, align 8, !dbg !6093
  call void @spin_unlock_irqrestore(ptr noundef %lock6, i64 noundef %6) #19, !dbg !6094
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #21, !dbg !6095
  call void @llvm.lifetime.end.p0(i64 8, ptr %serport) #21, !dbg !6095
  ret void, !dbg !6095
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6096 dso_local void @__serio_register_port(ptr noundef, ptr noundef) #1

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6099 dso_local i32 @_printk(ptr noundef, ...) #15

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_resched() #6 align 16 !dbg !5206 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__might_resched, ptr %tmp, align 8, !dbg !6103
  %0 = load ptr, ptr %tmp, align 8, !dbg !6103
  %call = call i32 %0() #19, !dbg !6105
  ret void, !dbg !6106
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6107 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6114, metadata !DIExpression()), !dbg !6119
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6115, metadata !DIExpression()), !dbg !6120
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #21, !dbg !6121
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6116, metadata !DIExpression()), !dbg !6122
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6123
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6124
  %div = udiv i64 %1, 64, !dbg !6124
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6125
  store ptr %add.ptr, ptr %p, align 8, !dbg !6122
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #21, !dbg !6126
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !6117, metadata !DIExpression()), !dbg !6127
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6128
  %rem = urem i64 %2, 64, !dbg !6128
  %shl = shl i64 1, %rem, !dbg !6128
  store i64 %shl, ptr %mask, align 8, !dbg !6127
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #21, !dbg !6129
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6118, metadata !DIExpression()), !dbg !6130
  %3 = load ptr, ptr %p, align 8, !dbg !6131
  %4 = load i64, ptr %3, align 8, !dbg !6132
  store i64 %4, ptr %val, align 8, !dbg !6130
  %5 = load i64, ptr %val, align 8, !dbg !6133
  %6 = load i64, ptr %mask, align 8, !dbg !6134
  %and = and i64 %5, %6, !dbg !6135
  %tobool = icmp ne i64 %and, 0, !dbg !6136
  %lnot = xor i1 %tobool, true, !dbg !6136
  %lnot1 = xor i1 %lnot, true, !dbg !6137
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #21, !dbg !6138
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #21, !dbg !6138
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #21, !dbg !6138
  ret i1 %lnot1, !dbg !6139
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6140 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6143, metadata !DIExpression()), !dbg !6145
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6144, metadata !DIExpression()), !dbg !6146
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6147
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6148
  %div = udiv i64 %1, 64, !dbg !6148
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6149
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #19, !dbg !6150
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6151
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6152
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #19, !dbg !6153
  ret i1 %call, !dbg !6154
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6155 dso_local void @init_wait_entry(ptr noundef, i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6158 dso_local i64 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6161 dso_local void @schedule() #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6162 dso_local void @finish_wait(ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6165 dso_local void @serio_unregister_port(ptr noundef) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6166 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6168, metadata !DIExpression()), !dbg !6170
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6169, metadata !DIExpression()), !dbg !6171
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6172
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6173
  %div = sdiv i64 %1, 64, !dbg !6173
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6174
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #19, !dbg !6175
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6176
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6177
  call void @arch_clear_bit(i64 noundef %2, ptr noundef %3) #19, !dbg !6178
  ret void, !dbg !6179
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !6180 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6182, metadata !DIExpression()), !dbg !6184
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6183, metadata !DIExpression()), !dbg !6185
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6186
  %1 = load i64, ptr %size.addr, align 8, !dbg !6187
  %conv = trunc i64 %1 to i32, !dbg !6187
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #19, !dbg !6188
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6189
  %3 = load i64, ptr %size.addr, align 8, !dbg !6189
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #19, !dbg !6189
  ret void, !dbg !6190
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_and_set_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6191 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6193, metadata !DIExpression()), !dbg !6197
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6194, metadata !DIExpression()), !dbg !6198
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #21, !dbg !6199
  call void @llvm.dbg.declare(metadata ptr %c, metadata !6195, metadata !DIExpression()), !dbg !6199
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6199
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6199
  %2 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $2, $0\0A\09/* output condition code c*/\0A", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1, ptr elementtype(i64) %0) #21, !dbg !6199, !srcloc !6200
  %3 = icmp ult i8 %2, 2, !dbg !6199
  call void @llvm.assume(i1 %3), !dbg !6199
  store i8 %2, ptr %c, align 1, !dbg !6199
  %4 = load i8, ptr %c, align 1, !dbg !6199, !range !5873, !noundef !553
  %tobool = trunc i8 %4 to i1, !dbg !6199
  %frombool = zext i1 %tobool to i8, !dbg !6199
  store i8 %frombool, ptr %tmp, align 1, !dbg !6199
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #21, !dbg !6201
  %5 = load i8, ptr %tmp, align 1, !dbg !6199, !range !5873, !noundef !553
  %tobool1 = trunc i8 %5 to i1, !dbg !6199
  ret i1 %tobool1, !dbg !6202
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6203 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #1 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #6 align 16 !dbg !6207 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6211, metadata !DIExpression()), !dbg !6217
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6212, metadata !DIExpression()), !dbg !6218
  br label %do.body, !dbg !6219

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #21, !dbg !6220
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !6213, metadata !DIExpression()), !dbg !6220
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #21, !dbg !6220
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !6216, metadata !DIExpression()), !dbg !6220
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !6220
  %conv = zext i1 %cmp to i32, !dbg !6220
  store i32 1, ptr %tmp, align 4, !dbg !6220
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #21, !dbg !6221
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #21, !dbg !6221
  %0 = load i32, ptr %tmp, align 4, !dbg !6220
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !6221
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !6221
  %3 = load i64, ptr %flags.addr, align 8, !dbg !6221
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #19, !dbg !6221
  br label %do.end, !dbg !6221

do.end:                                           ; preds = %do.body
  ret void, !dbg !6222
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6223 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #1 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !6226 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6228, metadata !DIExpression()), !dbg !6230
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6229, metadata !DIExpression()), !dbg !6231
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6232
  %1 = load i64, ptr %size.addr, align 8, !dbg !6233
  %conv = trunc i64 %1 to i32, !dbg !6233
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #19, !dbg !6234
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6235
  %3 = load i64, ptr %size.addr, align 8, !dbg !6235
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #19, !dbg !6235
  ret void, !dbg !6236
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6237 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6239, metadata !DIExpression()), !dbg !6241
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6240, metadata !DIExpression()), !dbg !6242
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6243
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6244
  br i1 %1, label %cond.true, label %cond.false, !dbg !6244

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6245
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6246
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #19, !dbg !6247
  %conv = zext i1 %call to i32, !dbg !6247
  br label %cond.end, !dbg !6244

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6248
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6249
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #19, !dbg !6250
  %conv2 = zext i1 %call1 to i32, !dbg !6250
  br label %cond.end, !dbg !6244

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !6244
  %tobool = icmp ne i32 %cond, 0, !dbg !6244
  ret i1 %tobool, !dbg !6251
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #14 align 16 !dbg !6252 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6254, metadata !DIExpression()), !dbg !6256
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6255, metadata !DIExpression()), !dbg !6257
  ret i1 true, !dbg !6258
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6259 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6263, metadata !DIExpression()), !dbg !6265
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6264, metadata !DIExpression()), !dbg !6266
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6267
  %and = and i64 %0, 63, !dbg !6268
  %shl = shl i64 1, %and, !dbg !6269
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6270
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6271
  %shr = ashr i64 %2, 6, !dbg !6272
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !6270
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !6270
  %and1 = and i64 %shl, %3, !dbg !6273
  %cmp = icmp ne i64 %and1, 0, !dbg !6274
  ret i1 %cmp, !dbg !6275
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6276 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6278, metadata !DIExpression()), !dbg !6281
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6279, metadata !DIExpression()), !dbg !6282
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #21, !dbg !6283
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !6280, metadata !DIExpression()), !dbg !6284
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6285
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6286
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #21, !dbg !6287, !srcloc !6288
  %3 = icmp ult i8 %2, 2, !dbg !6287
  call void @llvm.assume(i1 %3), !dbg !6287
  store i8 %2, ptr %oldbit, align 1, !dbg !6287
  %4 = load i8, ptr %oldbit, align 1, !dbg !6289, !range !5873, !noundef !553
  %tobool = trunc i8 %4 to i1, !dbg !6289
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #21, !dbg !6290
  ret i1 %tobool, !dbg !6291
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_clear_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6292 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6294, metadata !DIExpression()), !dbg !6296
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6295, metadata !DIExpression()), !dbg !6297
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6298
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6300
  br i1 %1, label %if.then, label %if.else, !dbg !6301

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !6302
  %3 = load i64, ptr %nr.addr, align 8, !dbg !6302
  %shr = ashr i64 %3, 3, !dbg !6302
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !6302
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6304
  %and = and i64 %4, 7, !dbg !6304
  %sh_prom = trunc i64 %and to i32, !dbg !6304
  %shl = shl i32 1, %sh_prom, !dbg !6304
  %not = xor i32 %shl, -1, !dbg !6305
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %not, ptr elementtype(i8) %add.ptr) #21, !dbg !6306, !srcloc !6307
  br label %if.end, !dbg !6308

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6309
  %6 = load i64, ptr %nr.addr, align 8, !dbg !6311
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #21, !dbg !6312, !srcloc !6313
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !6314
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_fault() #14 align 16 !dbg !6315 {
entry:
  ret void, !dbg !6316
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #17

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #18

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_unpoison_memory(ptr noundef %address, i64 noundef %size) #14 align 16 !dbg !6317 {
entry:
  %address.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !6322, metadata !DIExpression()), !dbg !6324
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6323, metadata !DIExpression()), !dbg !6325
  ret void, !dbg !6326
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @serport_set_type(ptr noundef %tty, i64 noundef %type) #2 align 16 !dbg !6327 {
entry:
  %tty.addr = alloca ptr, align 8
  %type.addr = alloca i64, align 8
  %serport = alloca ptr, align 8
  store ptr %tty, ptr %tty.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tty.addr, metadata !6331, metadata !DIExpression()), !dbg !6334
  store i64 %type, ptr %type.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6332, metadata !DIExpression()), !dbg !6335
  call void @llvm.lifetime.start.p0(i64 8, ptr %serport) #21, !dbg !6336
  call void @llvm.dbg.declare(metadata ptr %serport, metadata !6333, metadata !DIExpression()), !dbg !6337
  %0 = load ptr, ptr %tty.addr, align 8, !dbg !6338
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 30, !dbg !6339
  %1 = load ptr, ptr %disc_data, align 8, !dbg !6339
  store ptr %1, ptr %serport, align 8, !dbg !6337
  %2 = load i64, ptr %type.addr, align 8, !dbg !6340
  %and = and i64 %2, 255, !dbg !6341
  %conv = trunc i64 %and to i8, !dbg !6340
  %3 = load ptr, ptr %serport, align 8, !dbg !6342
  %id = getelementptr inbounds %struct.serport, ptr %3, i32 0, i32 3, !dbg !6343
  %proto = getelementptr inbounds %struct.serio_device_id, ptr %id, i32 0, i32 3, !dbg !6344
  store i8 %conv, ptr %proto, align 1, !dbg !6345
  %4 = load i64, ptr %type.addr, align 8, !dbg !6346
  %and1 = and i64 %4, 65280, !dbg !6347
  %shr = lshr i64 %and1, 8, !dbg !6348
  %conv2 = trunc i64 %shr to i8, !dbg !6349
  %5 = load ptr, ptr %serport, align 8, !dbg !6350
  %id3 = getelementptr inbounds %struct.serport, ptr %5, i32 0, i32 3, !dbg !6351
  %id4 = getelementptr inbounds %struct.serio_device_id, ptr %id3, i32 0, i32 2, !dbg !6352
  store i8 %conv2, ptr %id4, align 2, !dbg !6353
  %6 = load i64, ptr %type.addr, align 8, !dbg !6354
  %and5 = and i64 %6, 16711680, !dbg !6355
  %shr6 = lshr i64 %and5, 16, !dbg !6356
  %conv7 = trunc i64 %shr6 to i8, !dbg !6357
  %7 = load ptr, ptr %serport, align 8, !dbg !6358
  %id8 = getelementptr inbounds %struct.serport, ptr %7, i32 0, i32 3, !dbg !6359
  %extra = getelementptr inbounds %struct.serio_device_id, ptr %id8, i32 0, i32 1, !dbg !6360
  store i8 %conv7, ptr %extra, align 1, !dbg !6361
  call void @llvm.lifetime.end.p0(i64 8, ptr %serport) #21, !dbg !6362
  ret void, !dbg !6362
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @compat_ptr(i32 noundef %uptr) #14 align 16 !dbg !6363 {
entry:
  %uptr.addr = alloca i32, align 4
  store i32 %uptr, ptr %uptr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %uptr.addr, metadata !6367, metadata !DIExpression()), !dbg !6368
  %0 = load i32, ptr %uptr.addr, align 4, !dbg !6369
  %conv = zext i32 %0 to i64, !dbg !6370
  %1 = inttoptr i64 %conv to ptr, !dbg !6371
  ret ptr %1, !dbg !6372
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6373 dso_local i32 @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6376 dso_local i32 @serio_interrupt(ptr noundef, i8 noundef zeroext, i32 noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @serio_drv_write_wakeup(ptr noundef %serio) #14 align 16 !dbg !6377 {
entry:
  %serio.addr = alloca ptr, align 8
  store ptr %serio, ptr %serio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %serio.addr, metadata !6379, metadata !DIExpression()), !dbg !6380
  %0 = load ptr, ptr %serio.addr, align 8, !dbg !6381
  %drv = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 16, !dbg !6383
  %1 = load ptr, ptr %drv, align 8, !dbg !6383
  %tobool = icmp ne ptr %1, null, !dbg !6381
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !6384

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %serio.addr, align 8, !dbg !6385
  %drv1 = getelementptr inbounds %struct.serio, ptr %2, i32 0, i32 16, !dbg !6386
  %3 = load ptr, ptr %drv1, align 8, !dbg !6386
  %write_wakeup = getelementptr inbounds %struct.serio_driver, ptr %3, i32 0, i32 3, !dbg !6387
  %4 = load ptr, ptr %write_wakeup, align 8, !dbg !6387
  %tobool2 = icmp ne ptr %4, null, !dbg !6385
  br i1 %tobool2, label %if.then, label %if.end, !dbg !6388

if.then:                                          ; preds = %land.lhs.true
  %5 = load ptr, ptr %serio.addr, align 8, !dbg !6389
  %drv3 = getelementptr inbounds %struct.serio, ptr %5, i32 0, i32 16, !dbg !6390
  %6 = load ptr, ptr %drv3, align 8, !dbg !6390
  %write_wakeup4 = getelementptr inbounds %struct.serio_driver, ptr %6, i32 0, i32 3, !dbg !6391
  %7 = load ptr, ptr %write_wakeup4, align 8, !dbg !6391
  %8 = load ptr, ptr %serio.addr, align 8, !dbg !6392
  call void %7(ptr noundef %8) #19, !dbg !6389
  br label %if.end, !dbg !6389

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void, !dbg !6393
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6394 dso_local i32 @tty_register_ldisc(ptr noundef) #1

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #18 = { nocallback nounwind }
attributes #19 = { noredzone }
attributes #20 = { cold noredzone }
attributes #21 = { nounwind }
attributes #22 = { noredzone allocsize(0) }
attributes #23 = { noredzone allocsize(2) }
attributes #24 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!5216}
!llvm.module.flags = !{!5217, !5218, !5219, !5220, !5221, !5222, !5223, !5224}
!llvm.ident = !{!5225}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author287", scope: !2, file: !3, line: 22, type: !5213, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/input/serio/.serport.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/input/serio/serport\22 -D KBUILD_BASENAME=\22serport\22 -D KBUILD_MODNAME=\22serport\22 -D __KBUILD_MODNAME=kmod_serport -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/input/serio/serport.ll drivers/input/serio/serport.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !162, globals: !5073, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/input/serio/serport.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6d3e7a43319b0808aed260bcccdd53e0")
!4 = !{!5, !13, !18, !26, !42, !50, !56, !61, !67, !74, !81, !87, !93, !100, !108, !116, !125, !130, !135, !141, !147, !152}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !6, line: 312, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!10 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!11 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!12 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !14, line: 2052, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!15 = !{!16, !17}
!16 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!17 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !19, line: 9, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!20 = !{!21, !22, !23, !24, !25}
!21 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!22 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!23 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!24 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!25 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !27, line: 1325, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!28 = !{!29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41}
!29 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!30 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!31 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!32 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!33 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!34 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!35 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!36 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!37 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!38 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!39 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!40 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!41 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !43, line: 68, baseType: !7, size: 32, elements: !44)
!43 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!44 = !{!45, !46, !47, !48, !49}
!45 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!46 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!47 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!48 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!49 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !51, line: 54, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!52 = !{!53, !54, !55}
!53 = !DIEnumerator(name: "USRQUOTA", value: 0)
!54 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!55 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !57, line: 65, baseType: !7, size: 32, elements: !58)
!57 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!58 = !{!59, !60}
!59 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!60 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !62, line: 16, baseType: !7, size: 32, elements: !63)
!62 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!63 = !{!64, !65, !66}
!64 = !DIEnumerator(name: "TT_NONE", value: 0)
!65 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!66 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !68, line: 51, baseType: !7, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!69 = !{!70, !71, !72, !73}
!70 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!71 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!72 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!73 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !75, line: 15, baseType: !7, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!76 = !{!77, !78, !79, !80}
!77 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!78 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!79 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!80 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !82, line: 26, baseType: !7, size: 32, elements: !83)
!82 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!83 = !{!84, !85, !86}
!84 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!85 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!86 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !88, line: 45, baseType: !7, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!89 = !{!90, !91, !92}
!90 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!91 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!92 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !94, line: 487, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!95 = !{!96, !97, !98, !99}
!96 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!97 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!98 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!99 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !101, line: 620, baseType: !7, size: 32, elements: !102)
!101 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!102 = !{!103, !104, !105, !106, !107}
!103 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!104 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!105 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!106 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!107 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !101, line: 597, baseType: !109, size: 32, elements: !110)
!109 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!110 = !{!111, !112, !113, !114, !115}
!111 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!112 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!113 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!114 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!115 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !94, line: 547, baseType: !7, size: 32, elements: !117)
!117 = !{!118, !119, !120, !121, !122, !123, !124}
!118 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!119 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!120 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!121 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!122 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!123 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!124 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !94, line: 564, baseType: !7, size: 32, elements: !126)
!126 = !{!127, !128, !129}
!127 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!128 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!129 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!130 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !94, line: 577, baseType: !7, size: 32, elements: !131)
!131 = !{!132, !133, !134}
!132 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!133 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!134 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !94, line: 503, baseType: !7, size: 32, elements: !136)
!136 = !{!137, !138, !139, !140}
!137 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!138 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!139 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!140 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !142, line: 11, baseType: !7, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6f79c8839b3f722a70a16edaeaa0164")
!143 = !{!144, !145, !146}
!144 = !DIEnumerator(name: "IRQ_NONE", value: 0)
!145 = !DIEnumerator(name: "IRQ_HANDLED", value: 1)
!146 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !148, line: 10, baseType: !7, size: 32, elements: !149)
!148 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!149 = !{!150, !151}
!150 = !DIEnumerator(name: "false", value: 0)
!151 = !DIEnumerator(name: "true", value: 1)
!152 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !153, line: 364, baseType: !7, size: 32, elements: !154)
!153 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!154 = !{!155, !156, !157, !158, !159, !160, !161}
!155 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!156 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!157 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!158 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!159 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!160 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!161 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!162 = !{!163, !164, !1094, !319, !5065, !5067, !5069, !5070, !5050, !422, !5071, !5072}
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !166)
!166 = !{!167, !168, !175, !180, !4742, !4768, !4769, !4770, !4771, !4775, !4778, !4779, !4780, !4832, !4833, !4834, !4835, !4836, !4837, !4838, !4839, !4847, !4851, !4869, !4886, !4887, !4888, !4889, !4898, !4921, !4922, !4925, !4928, !4929, !4930, !4931, !4932, !4933, !4934, !4939, !4940, !5026, !5034, !5035, !5036, !5037, !5041, !5042, !5046, !5047, !5048, !5049, !5051, !5052, !5053, !5060, !5061, !5062, !5064}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !165, file: !6, line: 403, baseType: !5, size: 32)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !165, file: !6, line: 406, baseType: !169, size: 128, offset: 64)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !170, line: 190, size: 128, elements: !171)
!170 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!171 = !{!172, !174}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !169, file: !170, line: 191, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !169, file: !170, line: 191, baseType: !173, size: 64, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !165, file: !6, line: 409, baseType: !176, size: 448, offset: 192)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 448, elements: !178)
!177 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!178 = !{!179}
!179 = !DISubrange(count: 56)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !165, file: !6, line: 417, baseType: !181, size: 768, offset: 640)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !182)
!182 = !{!183, !4736, !4737, !4738, !4741}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !181, file: !6, line: 46, baseType: !184, size: 512)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !185, line: 64, size: 512, elements: !186)
!185 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!186 = !{!187, !190, !191, !193, !282, !4639, !4730, !4731, !4732, !4733, !4734, !4735}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !184, file: !185, line: 65, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !177)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !184, file: !185, line: 66, baseType: !169, size: 128, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !184, file: !185, line: 67, baseType: !192, size: 64, offset: 192)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !184, file: !185, line: 68, baseType: !194, size: 64, offset: 256)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !185, line: 168, size: 768, elements: !196)
!196 = !{!197, !198, !241, !242}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !195, file: !185, line: 169, baseType: !169, size: 128)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !195, file: !185, line: 170, baseType: !199, size: 32, offset: 128)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !200, line: 29, baseType: !201)
!200 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !200, line: 17, size: 32, elements: !202)
!202 = !{!203}
!203 = !DIDerivedType(tag: DW_TAG_member, scope: !201, file: !200, line: 18, baseType: !204, size: 32)
!204 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !201, file: !200, line: 18, size: 32, elements: !205)
!205 = !{!206}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !204, file: !200, line: 19, baseType: !207, size: 32)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !208, line: 14, size: 32, elements: !209)
!208 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!209 = !{!210}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !207, file: !208, line: 15, baseType: !211, size: 32)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !212, line: 44, baseType: !213)
!212 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !212, line: 14, size: 32, elements: !214)
!214 = !{!215}
!215 = !DIDerivedType(tag: DW_TAG_member, scope: !213, file: !212, line: 15, baseType: !216, size: 32)
!216 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !213, file: !212, line: 15, size: 32, elements: !217)
!217 = !{!218, !223, !233}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !216, file: !212, line: 16, baseType: !219, size: 32)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !170, line: 174, baseType: !220)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !170, line: 172, size: 32, elements: !221)
!221 = !{!222}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !220, file: !170, line: 173, baseType: !109, size: 32)
!223 = !DIDerivedType(tag: DW_TAG_member, scope: !216, file: !212, line: 24, baseType: !224, size: 16)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !216, file: !212, line: 24, size: 16, elements: !225)
!225 = !{!226, !232}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !224, file: !212, line: 25, baseType: !227, size: 8)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !228, line: 17, baseType: !229)
!228 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !230, line: 21, baseType: !231)
!230 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!231 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !224, file: !212, line: 26, baseType: !227, size: 8, offset: 8)
!233 = !DIDerivedType(tag: DW_TAG_member, scope: !216, file: !212, line: 28, baseType: !234, size: 32)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !216, file: !212, line: 28, size: 32, elements: !235)
!235 = !{!236, !240}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !234, file: !212, line: 29, baseType: !237, size: 16)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !228, line: 19, baseType: !238)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !230, line: 24, baseType: !239)
!239 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !234, file: !212, line: 30, baseType: !237, size: 16, offset: 16)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !195, file: !185, line: 171, baseType: !184, size: 512, offset: 192)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !195, file: !185, line: 172, baseType: !243, size: 64, offset: 704)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !245)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !185, line: 133, size: 192, elements: !246)
!246 = !{!247, !254, !259}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !245, file: !185, line: 134, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !249)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DISubroutineType(types: !251)
!251 = !{!109, !252}
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !184)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !245, file: !185, line: 135, baseType: !255, size: 64, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !256)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{!188, !252}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !245, file: !185, line: 136, baseType: !260, size: 64, offset: 128)
!260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !261)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{!109, !252, !264}
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !185, line: 125, size: 20736, elements: !266)
!266 = !{!267, !272, !276, !277, !281}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !265, file: !185, line: 126, baseType: !268, size: 192)
!268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 192, elements: !270)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!270 = !{!271}
!271 = !DISubrange(count: 3)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !265, file: !185, line: 127, baseType: !273, size: 4096, offset: 192)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 4096, elements: !274)
!274 = !{!275}
!275 = !DISubrange(count: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !265, file: !185, line: 128, baseType: !109, size: 32, offset: 4288)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !265, file: !185, line: 129, baseType: !278, size: 16384, offset: 4320)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 16384, elements: !279)
!279 = !{!280}
!280 = !DISubrange(count: 2048)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !265, file: !185, line: 130, baseType: !109, size: 32, offset: 20704)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !184, file: !185, line: 69, baseType: !283, size: 64, offset: 320)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !285)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !185, line: 116, size: 384, elements: !286)
!286 = !{!287, !291, !320, !4627, !4631, !4635}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !285, file: !185, line: 117, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DISubroutineType(types: !290)
!290 = !{null, !192}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !285, file: !185, line: 118, baseType: !292, size: 64, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !294)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !295, line: 254, size: 128, elements: !296)
!295 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!296 = !{!297, !312}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !294, file: !295, line: 255, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DISubroutineType(types: !300)
!300 = !{!301, !192, !306, !269}
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !170, line: 66, baseType: !302)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !303, line: 73, baseType: !304)
!303 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !303, line: 15, baseType: !305)
!305 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !295, line: 30, size: 128, elements: !308)
!308 = !{!309, !310}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !307, file: !295, line: 31, baseType: !188, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !307, file: !295, line: 32, baseType: !311, size: 16, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !170, line: 24, baseType: !239)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !294, file: !295, line: 256, baseType: !313, size: 64, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{!301, !192, !306, !188, !316}
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !170, line: 61, baseType: !317)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !303, line: 72, baseType: !318)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !303, line: 16, baseType: !319)
!319 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !285, file: !185, line: 119, baseType: !321, size: 64, offset: 128)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !324)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !295, line: 84, size: 320, elements: !325)
!325 = !{!326, !327, !331, !4623, !4625}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !324, file: !295, line: 85, baseType: !188, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !324, file: !295, line: 86, baseType: !328, size: 64, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{!311, !192, !306, !109}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !324, file: !295, line: 88, baseType: !332, size: 64, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!311, !192, !335, !109}
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !295, line: 175, size: 512, elements: !337)
!337 = !{!338, !339, !340, !341, !4614, !4618, !4619}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !336, file: !295, line: 176, baseType: !307, size: 128)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !336, file: !295, line: 177, baseType: !316, size: 64, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !336, file: !295, line: 178, baseType: !163, size: 64, offset: 192)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !336, file: !295, line: 179, baseType: !342, size: 64, offset: 256)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DISubroutineType(types: !344)
!344 = !{!345}
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !347)
!347 = !{!348, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4608, !4609, !4610, !4611, !4612, !4613}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !346, file: !14, line: 473, baseType: !349, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !351)
!351 = !{!352, !353, !354, !362, !363, !370, !371, !374, !375, !4389, !4390, !4391, !4392, !4393, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4433, !4436, !4437, !4438, !4445, !4446, !4447, !4448}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !350, file: !14, line: 642, baseType: !311, size: 16)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !350, file: !14, line: 643, baseType: !239, size: 16, offset: 16)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !350, file: !14, line: 644, baseType: !355, size: 32, offset: 32)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !356, line: 23, baseType: !357)
!356 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !356, line: 21, size: 32, elements: !358)
!358 = !{!359}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !357, file: !356, line: 22, baseType: !360, size: 32)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !170, line: 37, baseType: !361)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !303, line: 49, baseType: !7)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !350, file: !14, line: 645, baseType: !169, size: 128, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !350, file: !14, line: 646, baseType: !364, size: 32, offset: 192)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !356, line: 28, baseType: !365)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !356, line: 26, size: 32, elements: !366)
!366 = !{!367}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !365, file: !356, line: 27, baseType: !368, size: 32)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !170, line: 38, baseType: !369)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !303, line: 50, baseType: !7)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !350, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !350, file: !14, line: 650, baseType: !372, size: 64, offset: 256)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !350, file: !14, line: 651, baseType: !372, size: 64, offset: 320)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !350, file: !14, line: 654, baseType: !376, size: 64, offset: 384)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !378)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !379)
!379 = !{!380, !4223, !4233, !4237, !4241, !4245, !4249, !4253, !4257, !4261, !4265, !4266, !4270, !4274, !4311, !4340, !4344, !4350, !4354, !4358, !4362, !4366, !4370, !4376, !4380}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !378, file: !14, line: 1967, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DISubroutineType(types: !383)
!383 = !{!384, !349, !384, !7}
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !386, line: 82, size: 1536, elements: !387)
!386 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!387 = !{!388, !389, !399, !407, !408, !428, !429, !433, !446, !4206, !4207, !4208, !4209, !4215, !4216, !4217}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !385, file: !386, line: 84, baseType: !7, size: 32)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !385, file: !386, line: 85, baseType: !390, size: 32, offset: 32)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !391, line: 275, baseType: !392)
!391 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !391, line: 275, size: 32, elements: !393)
!393 = !{!394}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !392, file: !391, line: 275, baseType: !395, size: 32)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !391, line: 69, baseType: !396)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !391, line: 64, size: 32, elements: !397)
!397 = !{!398}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !396, file: !391, line: 65, baseType: !7, size: 32)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !385, file: !386, line: 86, baseType: !400, size: 128, offset: 64)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !401, line: 38, size: 128, elements: !402)
!401 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!402 = !{!403, !405}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !400, file: !401, line: 39, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !400, file: !401, line: 39, baseType: !406, size: 64, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !385, file: !386, line: 87, baseType: !384, size: 64, offset: 192)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !385, file: !386, line: 88, baseType: !409, size: 128, offset: 256)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !386, line: 49, size: 128, elements: !410)
!410 = !{!411, !425}
!411 = !DIDerivedType(tag: DW_TAG_member, scope: !409, file: !386, line: 50, baseType: !412, size: 64)
!412 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !409, file: !386, line: 50, size: 64, elements: !413)
!413 = !{!414, !421}
!414 = !DIDerivedType(tag: DW_TAG_member, scope: !412, file: !386, line: 51, baseType: !415, size: 64)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !412, file: !386, line: 51, size: 64, elements: !416)
!416 = !{!417, !420}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !415, file: !386, line: 52, baseType: !418, size: 32)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !228, line: 21, baseType: !419)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !230, line: 27, baseType: !7)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !415, file: !386, line: 52, baseType: !418, size: 32, offset: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !412, file: !386, line: 54, baseType: !422, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !228, line: 23, baseType: !423)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !230, line: 31, baseType: !424)
!424 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !409, file: !386, line: 56, baseType: !426, size: 64, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !231)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !385, file: !386, line: 89, baseType: !349, size: 64, offset: 384)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !385, file: !386, line: 91, baseType: !430, size: 256, offset: 448)
!430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, size: 256, elements: !431)
!431 = !{!432}
!432 = !DISubrange(count: 32)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !385, file: !386, line: 94, baseType: !434, size: 64, offset: 704)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !435, line: 25, size: 64, elements: !436)
!435 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!436 = !{!437}
!437 = !DIDerivedType(tag: DW_TAG_member, scope: !434, file: !435, line: 26, baseType: !438, size: 64)
!438 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !434, file: !435, line: 26, size: 64, elements: !439)
!439 = !{!440, !441}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !438, file: !435, line: 28, baseType: !423, size: 64, align: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, scope: !438, file: !435, line: 30, baseType: !442, size: 64)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !438, file: !435, line: 30, size: 64, elements: !443)
!443 = !{!444, !445}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !442, file: !435, line: 31, baseType: !199, size: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !442, file: !435, line: 32, baseType: !109, size: 32, offset: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !385, file: !386, line: 95, baseType: !447, size: 64, offset: 768)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !449)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !386, line: 128, size: 1024, align: 512, elements: !450)
!450 = !{!451, !455, !456, !463, !469, !473, !477, !481, !482, !486, !490, !4196, !4200}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !449, file: !386, line: 129, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{!109, !384, !7}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !449, file: !386, line: 130, baseType: !452, size: 64, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !449, file: !386, line: 131, baseType: !457, size: 64, offset: 128)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{!109, !460, !462}
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !385)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !449, file: !386, line: 132, baseType: !464, size: 64, offset: 192)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DISubroutineType(types: !466)
!466 = !{!109, !460, !7, !188, !467}
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !409)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !449, file: !386, line: 134, baseType: !470, size: 64, offset: 256)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{!109, !460}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !449, file: !386, line: 135, baseType: !474, size: 64, offset: 320)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DISubroutineType(types: !476)
!476 = !{!109, !384}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !449, file: !386, line: 136, baseType: !478, size: 64, offset: 384)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DISubroutineType(types: !480)
!480 = !{null, !384}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !449, file: !386, line: 137, baseType: !478, size: 64, offset: 448)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !449, file: !386, line: 138, baseType: !483, size: 64, offset: 512)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DISubroutineType(types: !485)
!485 = !{null, !384, !349}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !449, file: !386, line: 139, baseType: !487, size: 64, offset: 576)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!269, !384, !269, !109}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !449, file: !386, line: 140, baseType: !491, size: 64, offset: 640)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{!494, !4195}
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !496, line: 70, size: 256, elements: !497)
!496 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!497 = !{!498, !499, !4191, !4192}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !495, file: !496, line: 71, baseType: !384, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !495, file: !496, line: 72, baseType: !500, size: 64, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !502)
!502 = !{!503, !504, !507, !508, !509, !513, !562, !1767, !1807, !1892, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1909, !1913, !1914, !1917, !1920, !1923, !1926, !1927, !1928, !1969, !4124, !4125, !4126, !4127, !4128, !4129, !4132, !4133, !4139, !4140, !4141, !4142, !4143, !4158, !4159, !4160, !4161, !4162, !4165, !4166, !4167, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4190}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !501, file: !14, line: 1191, baseType: !169, size: 128)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !501, file: !14, line: 1192, baseType: !505, size: 32, offset: 128)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !170, line: 21, baseType: !506)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !170, line: 18, baseType: !418)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !501, file: !14, line: 1193, baseType: !231, size: 8, offset: 160)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !501, file: !14, line: 1194, baseType: !319, size: 64, offset: 192)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !501, file: !14, line: 1195, baseType: !510, size: 64, offset: 256)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !170, line: 52, baseType: !511)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !303, line: 88, baseType: !512)
!512 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !501, file: !14, line: 1196, baseType: !514, size: 64, offset: 320)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !516)
!516 = !{!517, !518, !519, !526, !530, !534, !538, !539, !540, !550, !554, !555, !556, !558, !559, !560, !561}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !515, file: !14, line: 2367, baseType: !188, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !515, file: !14, line: 2368, baseType: !109, size: 32, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !515, file: !14, line: 2376, baseType: !520, size: 64, offset: 128)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{!109, !523}
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !525, line: 32, flags: DIFlagFwdDecl)
!525 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!526 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !515, file: !14, line: 2377, baseType: !527, size: 64, offset: 192)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !529)
!529 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !515, file: !14, line: 2378, baseType: !531, size: 64, offset: 256)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{!384, !514, !109, !188, !163}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !515, file: !14, line: 2380, baseType: !535, size: 64, offset: 320)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DISubroutineType(types: !537)
!537 = !{null, !500}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !515, file: !14, line: 2381, baseType: !164, size: 64, offset: 384)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !515, file: !14, line: 2382, baseType: !514, size: 64, offset: 448)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !515, file: !14, line: 2383, baseType: !541, size: 64, offset: 512)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !170, line: 194, size: 64, elements: !542)
!542 = !{!543}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !541, file: !170, line: 195, baseType: !544, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !170, line: 198, size: 128, elements: !546)
!546 = !{!547, !548}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !545, file: !170, line: 199, baseType: !544, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !545, file: !170, line: 199, baseType: !549, size: 64, offset: 64)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !515, file: !14, line: 2385, baseType: !551, offset: 576)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !552, line: 206, elements: !553)
!552 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!553 = !{}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !515, file: !14, line: 2386, baseType: !551, offset: 576)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !515, file: !14, line: 2387, baseType: !551, offset: 576)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !515, file: !14, line: 2388, baseType: !557, offset: 576)
!557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !551, elements: !270)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !515, file: !14, line: 2390, baseType: !551, offset: 576)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !515, file: !14, line: 2391, baseType: !551, offset: 576)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !515, file: !14, line: 2392, baseType: !551, offset: 576)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !515, file: !14, line: 2393, baseType: !551, offset: 576)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !501, file: !14, line: 1197, baseType: !563, size: 64, offset: 384)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !565)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !566)
!566 = !{!567, !571, !575, !576, !580, !586, !590, !591, !592, !596, !600, !604, !605, !606, !612, !617, !618, !1692, !1693, !1694, !1695, !1699, !1703, !1750, !1765, !1766}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !565, file: !14, line: 2058, baseType: !568, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!349, !500}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !565, file: !14, line: 2059, baseType: !572, size: 64, offset: 64)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{null, !349}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !565, file: !14, line: 2060, baseType: !572, size: 64, offset: 128)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !565, file: !14, line: 2062, baseType: !577, size: 64, offset: 192)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{null, !349, !109}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !565, file: !14, line: 2063, baseType: !581, size: 64, offset: 256)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{!109, !349, !584}
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !565, file: !14, line: 2064, baseType: !587, size: 64, offset: 320)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DISubroutineType(types: !589)
!589 = !{!109, !349}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !565, file: !14, line: 2065, baseType: !572, size: 64, offset: 384)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !565, file: !14, line: 2066, baseType: !535, size: 64, offset: 448)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !565, file: !14, line: 2067, baseType: !593, size: 64, offset: 512)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DISubroutineType(types: !595)
!595 = !{!109, !500, !109}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !565, file: !14, line: 2068, baseType: !597, size: 64, offset: 576)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DISubroutineType(types: !599)
!599 = !{!109, !500, !13}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !565, file: !14, line: 2069, baseType: !601, size: 64, offset: 640)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{!109, !500}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !565, file: !14, line: 2070, baseType: !597, size: 64, offset: 704)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !565, file: !14, line: 2071, baseType: !601, size: 64, offset: 768)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !565, file: !14, line: 2072, baseType: !607, size: 64, offset: 832)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DISubroutineType(types: !609)
!609 = !{!109, !384, !610}
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !565, file: !14, line: 2073, baseType: !613, size: 64, offset: 896)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DISubroutineType(types: !615)
!615 = !{!109, !500, !616, !269}
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !565, file: !14, line: 2074, baseType: !535, size: 64, offset: 960)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !565, file: !14, line: 2076, baseType: !619, size: 64, offset: 1024)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DISubroutineType(types: !621)
!621 = !{!109, !622, !384}
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !624, line: 17, size: 960, elements: !625)
!624 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!625 = !{!626, !627, !628, !629, !630, !631, !632, !633, !654, !676, !677, !1691}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !623, file: !624, line: 18, baseType: !269, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !623, file: !624, line: 19, baseType: !316, size: 64, offset: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !623, file: !624, line: 20, baseType: !316, size: 64, offset: 128)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !623, file: !624, line: 21, baseType: !316, size: 64, offset: 192)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !623, file: !624, line: 22, baseType: !316, size: 64, offset: 256)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !623, file: !624, line: 23, baseType: !510, size: 64, offset: 320)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !623, file: !624, line: 24, baseType: !510, size: 64, offset: 384)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !623, file: !624, line: 25, baseType: !634, size: 256, offset: 448)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !635, line: 66, size: 256, elements: !636)
!635 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!636 = !{!637, !646, !648, !653}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !634, file: !635, line: 67, baseType: !638, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !639, line: 13, baseType: !640)
!639 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !170, line: 181, baseType: !641)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !170, line: 179, size: 64, elements: !642)
!642 = !{!643}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !641, file: !170, line: 180, baseType: !644, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !228, line: 22, baseType: !645)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !230, line: 30, baseType: !512)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !634, file: !635, line: 68, baseType: !647, size: 32, offset: 64)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !208, line: 23, baseType: !207)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !634, file: !635, line: 70, baseType: !649, size: 32, offset: 96)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !650, line: 15, size: 32, elements: !651)
!650 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!651 = !{!652}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !649, file: !650, line: 20, baseType: !219, size: 32)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !634, file: !635, line: 72, baseType: !169, size: 128, offset: 128)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !623, file: !624, line: 26, baseType: !655, size: 64, offset: 704)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !657)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !624, line: 32, size: 256, elements: !658)
!658 = !{!659, !664, !668, !672}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !657, file: !624, line: 33, baseType: !660, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DISubroutineType(types: !662)
!662 = !{!163, !622, !663}
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !657, file: !624, line: 34, baseType: !665, size: 64, offset: 64)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{null, !622, !163}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !657, file: !624, line: 35, baseType: !669, size: 64, offset: 128)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DISubroutineType(types: !671)
!671 = !{!163, !622, !163, !663}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !657, file: !624, line: 36, baseType: !673, size: 64, offset: 192)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DISubroutineType(types: !675)
!675 = !{!109, !622, !163}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !623, file: !624, line: 27, baseType: !109, size: 32, offset: 768)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !623, file: !624, line: 28, baseType: !678, size: 64, offset: 832)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !680)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !681)
!681 = !{!682, !701, !702, !704, !705, !706, !707, !708, !771, !983, !992, !998, !999, !1681, !1682, !1683, !1684, !1686, !1687, !1690}
!682 = !DIDerivedType(tag: DW_TAG_member, scope: !680, file: !14, line: 995, baseType: !683, size: 128)
!683 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !680, file: !14, line: 995, size: 128, elements: !684)
!684 = !{!685, !691, !700}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !683, file: !14, line: 996, baseType: !686, size: 64)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !687, line: 60, size: 64, elements: !688)
!687 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!688 = !{!689}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !686, file: !687, line: 61, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !683, file: !14, line: 997, baseType: !692, size: 128, align: 64)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !170, line: 232, size: 128, align: 64, elements: !693)
!693 = !{!694, !696}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !692, file: !170, line: 233, baseType: !695, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !692, file: !170, line: 234, baseType: !697, size: 64, offset: 64)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DISubroutineType(types: !699)
!699 = !{null, !695}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !683, file: !14, line: 998, baseType: !7, size: 32)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !680, file: !14, line: 1005, baseType: !199, size: 32, offset: 128)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !680, file: !14, line: 1006, baseType: !703, size: 32, offset: 160)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !170, line: 156, baseType: !7)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !680, file: !14, line: 1007, baseType: !638, size: 64, offset: 192)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !680, file: !14, line: 1008, baseType: !634, size: 256, offset: 256)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !680, file: !14, line: 1009, baseType: !510, size: 64, offset: 512)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !680, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !680, file: !14, line: 1011, baseType: !709, size: 256, offset: 640)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !710)
!710 = !{!711, !732, !767, !768, !769, !770}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !709, file: !14, line: 949, baseType: !712, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !713, line: 34, baseType: !714)
!713 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !713, line: 25, size: 64, elements: !715)
!715 = !{!716}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !714, file: !713, line: 26, baseType: !717, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !718, line: 27, baseType: !719)
!718 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !718, line: 13, size: 64, elements: !720)
!720 = !{!721, !731}
!721 = !DIDerivedType(tag: DW_TAG_member, scope: !719, file: !718, line: 14, baseType: !722, size: 32)
!722 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !719, file: !718, line: 14, size: 32, elements: !723)
!723 = !{!724, !725}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !722, file: !718, line: 15, baseType: !219, size: 32)
!725 = !DIDerivedType(tag: DW_TAG_member, scope: !722, file: !718, line: 16, baseType: !726, size: 32)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !722, file: !718, line: 16, size: 32, elements: !727)
!727 = !{!728, !729}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !726, file: !718, line: 18, baseType: !227, size: 8)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !726, file: !718, line: 19, baseType: !730, size: 24, offset: 8)
!730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 24, elements: !270)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !719, file: !718, line: 26, baseType: !211, size: 32, offset: 32)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !709, file: !14, line: 950, baseType: !733, size: 64, offset: 64)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !19, line: 59, size: 768, elements: !735)
!735 = !{!736, !742, !743, !744, !748, !749, !756, !757}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !734, file: !19, line: 61, baseType: !737, size: 32)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !738, line: 113, baseType: !739)
!738 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !738, line: 111, size: 32, elements: !740)
!740 = !{!741}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !739, file: !738, line: 112, baseType: !219, size: 32)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !734, file: !19, line: 62, baseType: !7, size: 32, offset: 32)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !734, file: !19, line: 63, baseType: !199, size: 32, offset: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !734, file: !19, line: 65, baseType: !745, size: 256, offset: 128)
!745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !541, size: 256, elements: !746)
!746 = !{!747}
!747 = !DISubrange(count: 4)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !734, file: !19, line: 66, baseType: !541, size: 64, offset: 384)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !734, file: !19, line: 68, baseType: !750, size: 192, offset: 448)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !751, line: 41, baseType: !752)
!751 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !751, line: 37, size: 192, elements: !753)
!753 = !{!754, !755}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !752, file: !751, line: 38, baseType: !199, size: 32)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !752, file: !751, line: 39, baseType: !169, size: 128, offset: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !734, file: !19, line: 69, baseType: !692, size: 128, align: 64, offset: 640)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !734, file: !19, line: 70, baseType: !758, offset: 768)
!758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !759, elements: !765)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !19, line: 54, size: 128, elements: !760)
!760 = !{!761, !762}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !759, file: !19, line: 55, baseType: !109, size: 32)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !759, file: !19, line: 56, baseType: !763, size: 64, offset: 64)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !19, line: 56, flags: DIFlagFwdDecl)
!765 = !{!766}
!766 = !DISubrange(count: -1)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !709, file: !14, line: 951, baseType: !18, size: 32, offset: 128)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !709, file: !14, line: 952, baseType: !355, size: 32, offset: 160)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !709, file: !14, line: 952, baseType: !355, size: 32, offset: 192)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !709, file: !14, line: 953, baseType: !109, size: 32, offset: 224)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !680, file: !14, line: 1012, baseType: !772, size: 64, offset: 896)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !774)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !775, line: 110, size: 1472, elements: !776)
!775 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!776 = !{!777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !793, !794, !795, !796, !797, !798, !928, !929, !930, !931, !932, !963, !966, !970, !978}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !774, file: !775, line: 111, baseType: !638, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !774, file: !775, line: 112, baseType: !355, size: 32, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !774, file: !775, line: 113, baseType: !364, size: 32, offset: 96)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !774, file: !775, line: 114, baseType: !355, size: 32, offset: 128)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !774, file: !775, line: 115, baseType: !364, size: 32, offset: 160)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !774, file: !775, line: 116, baseType: !355, size: 32, offset: 192)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !774, file: !775, line: 117, baseType: !364, size: 32, offset: 224)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !774, file: !775, line: 118, baseType: !355, size: 32, offset: 256)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !774, file: !775, line: 119, baseType: !364, size: 32, offset: 288)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !774, file: !775, line: 120, baseType: !7, size: 32, offset: 320)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !774, file: !775, line: 121, baseType: !788, size: 64, offset: 384)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !789, line: 24, baseType: !790)
!789 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !789, line: 24, size: 64, elements: !791)
!791 = !{!792}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !790, file: !789, line: 24, baseType: !422, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !774, file: !775, line: 122, baseType: !788, size: 64, offset: 448)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !774, file: !775, line: 123, baseType: !788, size: 64, offset: 512)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !774, file: !775, line: 124, baseType: !788, size: 64, offset: 576)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !774, file: !775, line: 125, baseType: !788, size: 64, offset: 640)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !774, file: !775, line: 127, baseType: !231, size: 8, offset: 704)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !774, file: !775, line: 129, baseType: !799, size: 64, offset: 768)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !801, line: 195, size: 1728, elements: !802)
!801 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!802 = !{!803, !804, !809, !821, !830, !833, !834, !841, !842, !843, !844, !847, !848, !849, !851, !852, !892, !913}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !800, file: !801, line: 196, baseType: !737, size: 32)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !800, file: !801, line: 197, baseType: !805, size: 32, offset: 32)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !801, line: 28, baseType: !806)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !170, line: 104, baseType: !807)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !228, line: 20, baseType: !808)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !230, line: 26, baseType: !109)
!809 = !DIDerivedType(tag: DW_TAG_member, scope: !800, file: !801, line: 198, baseType: !810, size: 192, offset: 64)
!810 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !800, file: !801, line: 198, size: 192, elements: !811)
!811 = !{!812, !813}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !810, file: !801, line: 199, baseType: !169, size: 128)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !810, file: !801, line: 200, baseType: !814, size: 192, align: 64)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !815, line: 5, size: 192, align: 64, elements: !816)
!815 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!816 = !{!817, !818, !820}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !814, file: !815, line: 6, baseType: !319, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !814, file: !815, line: 7, baseType: !819, size: 64, offset: 64)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !814, file: !815, line: 8, baseType: !819, size: 64, offset: 128)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !800, file: !801, line: 205, baseType: !822, size: 320, offset: 256)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !823, line: 48, size: 320, elements: !824)
!823 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!824 = !{!825, !826, !827, !828, !829}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !822, file: !823, line: 49, baseType: !638, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !822, file: !823, line: 55, baseType: !638, size: 64, offset: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !822, file: !823, line: 57, baseType: !649, size: 32, offset: 128)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !822, file: !823, line: 59, baseType: !647, size: 32, offset: 160)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !822, file: !823, line: 60, baseType: !169, size: 128, offset: 192)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !800, file: !801, line: 206, baseType: !831, size: 64, offset: 576)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !801, line: 206, flags: DIFlagFwdDecl)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !800, file: !801, line: 207, baseType: !163, size: 64, offset: 640)
!834 = !DIDerivedType(tag: DW_TAG_member, scope: !800, file: !801, line: 208, baseType: !835, size: 64, offset: 704)
!835 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !800, file: !801, line: 208, size: 64, elements: !836)
!836 = !{!837, !840}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !835, file: !801, line: 209, baseType: !838, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !839, line: 8, baseType: !645)
!839 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!840 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !835, file: !801, line: 210, baseType: !838, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !800, file: !801, line: 212, baseType: !838, size: 64, offset: 768)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !800, file: !801, line: 213, baseType: !355, size: 32, offset: 832)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !800, file: !801, line: 214, baseType: !364, size: 32, offset: 864)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !800, file: !801, line: 215, baseType: !845, size: 32, offset: 896)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !801, line: 31, baseType: !846)
!846 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !170, line: 110, baseType: !418)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !800, file: !801, line: 216, baseType: !239, size: 16, offset: 928)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !800, file: !801, line: 217, baseType: !239, size: 16, offset: 944)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !800, file: !801, line: 221, baseType: !850, size: 16, offset: 960)
!850 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !800, file: !801, line: 228, baseType: !319, size: 64, offset: 1024)
!852 = !DIDerivedType(tag: DW_TAG_member, scope: !800, file: !801, line: 245, baseType: !853, size: 320, offset: 1088)
!853 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !800, file: !801, line: 245, size: 320, elements: !854)
!854 = !{!855, !884}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !853, file: !801, line: 246, baseType: !856, size: 320)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !801, line: 114, size: 320, elements: !857)
!857 = !{!858, !859, !871, !874, !883}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !856, file: !801, line: 116, baseType: !319, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, scope: !856, file: !801, line: 117, baseType: !860, size: 64, offset: 64)
!860 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !856, file: !801, line: 117, size: 64, elements: !861)
!861 = !{!862, !870}
!862 = !DIDerivedType(tag: DW_TAG_member, scope: !860, file: !801, line: 118, baseType: !863, size: 64)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !860, file: !801, line: 118, size: 64, elements: !864)
!864 = !{!865, !866}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !863, file: !801, line: 120, baseType: !237, size: 16)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !863, file: !801, line: 121, baseType: !867, size: 48, offset: 16)
!867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 48, elements: !868)
!868 = !{!869}
!869 = !DISubrange(count: 6)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !860, file: !801, line: 127, baseType: !319, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !856, file: !801, line: 129, baseType: !872, size: 64, offset: 128)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !801, line: 102, flags: DIFlagFwdDecl)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !856, file: !801, line: 130, baseType: !875, size: 64, offset: 192)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !801, line: 108, size: 192, elements: !877)
!877 = !{!878, !879, !880}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !876, file: !801, line: 109, baseType: !692, size: 128, align: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !876, file: !801, line: 110, baseType: !737, size: 32, offset: 128)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !876, file: !801, line: 111, baseType: !881, size: 8, offset: 160)
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !170, line: 35, baseType: !882)
!882 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !856, file: !801, line: 131, baseType: !188, size: 64, offset: 256)
!884 = !DIDerivedType(tag: DW_TAG_member, scope: !853, file: !801, line: 247, baseType: !885, size: 320)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !853, file: !801, line: 247, size: 320, elements: !886)
!886 = !{!887, !888, !889, !890, !891}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !885, file: !801, line: 248, baseType: !319, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !885, file: !801, line: 249, baseType: !319, size: 64, offset: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !885, file: !801, line: 250, baseType: !872, size: 64, offset: 128)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !885, file: !801, line: 251, baseType: !875, size: 64, offset: 192)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !885, file: !801, line: 252, baseType: !269, size: 64, offset: 256)
!892 = !DIDerivedType(tag: DW_TAG_member, scope: !800, file: !801, line: 260, baseType: !893, size: 256, offset: 1408)
!893 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !800, file: !801, line: 260, size: 256, elements: !894)
!894 = !{!895, !901}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !893, file: !801, line: 261, baseType: !896, size: 256)
!896 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !801, line: 134, size: 256, elements: !897)
!897 = !{!898, !899}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !896, file: !801, line: 135, baseType: !163, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !896, file: !801, line: 136, baseType: !900, size: 256)
!900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 256, elements: !746)
!901 = !DIDerivedType(tag: DW_TAG_member, scope: !893, file: !801, line: 262, baseType: !902, size: 256)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !893, file: !801, line: 262, size: 256, elements: !903)
!903 = !{!904, !905}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !902, file: !801, line: 264, baseType: !169, size: 128)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !902, file: !801, line: 265, baseType: !906, size: 128, offset: 128)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !907, line: 22, size: 128, elements: !908)
!907 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!908 = !{!909, !912}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !906, file: !907, line: 23, baseType: !910, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !907, line: 23, flags: DIFlagFwdDecl)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !906, file: !907, line: 24, baseType: !319, size: 64, offset: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !800, file: !801, line: 280, baseType: !914, size: 64, offset: 1664)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !801, line: 176, size: 192, elements: !916)
!916 = !{!917, !926, !927}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !915, file: !801, line: 177, baseType: !918, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !801, line: 171, baseType: !919)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DISubroutineType(types: !921)
!921 = !{!109, !799, !922, !924, !799}
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !873)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !896)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !915, file: !801, line: 178, baseType: !799, size: 64, offset: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !915, file: !801, line: 179, baseType: !872, size: 64, offset: 128)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !774, file: !775, line: 130, baseType: !799, size: 64, offset: 832)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !774, file: !775, line: 131, baseType: !799, size: 64, offset: 896)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !774, file: !775, line: 132, baseType: !799, size: 64, offset: 960)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !774, file: !775, line: 135, baseType: !163, size: 64, offset: 1024)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !774, file: !775, line: 137, baseType: !933, size: 64, offset: 1088)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !935, line: 14, size: 1088, elements: !936)
!935 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!936 = !{!937, !938, !947, !948, !949, !950, !951, !952}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !934, file: !935, line: 15, baseType: !737, size: 32)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !934, file: !935, line: 17, baseType: !939, size: 320, offset: 64)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !940, line: 22, size: 320, elements: !941)
!940 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!941 = !{!942, !943, !944, !945}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !939, file: !940, line: 23, baseType: !647, size: 32)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !939, file: !940, line: 24, baseType: !644, size: 64, offset: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !939, file: !940, line: 26, baseType: !169, size: 128, offset: 128)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !939, file: !940, line: 28, baseType: !946, size: 64, offset: 256)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !934, file: !935, line: 19, baseType: !319, size: 64, offset: 384)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !934, file: !935, line: 20, baseType: !638, size: 64, offset: 448)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !934, file: !935, line: 23, baseType: !545, size: 128, offset: 512)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !934, file: !935, line: 24, baseType: !355, size: 32, offset: 640)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !934, file: !935, line: 29, baseType: !638, size: 64, offset: 704)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !934, file: !935, line: 36, baseType: !953, size: 320, offset: 768)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !954, line: 15, size: 320, elements: !955)
!954 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!955 = !{!956, !957, !958, !959, !960, !961, !962}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !953, file: !954, line: 16, baseType: !647, size: 32)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !953, file: !954, line: 18, baseType: !109, size: 32, offset: 32)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !953, file: !954, line: 19, baseType: !109, size: 32, offset: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !953, file: !954, line: 20, baseType: !109, size: 32, offset: 96)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !953, file: !954, line: 21, baseType: !109, size: 32, offset: 128)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !953, file: !954, line: 22, baseType: !319, size: 64, offset: 192)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !953, file: !954, line: 23, baseType: !319, size: 64, offset: 256)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !774, file: !775, line: 138, baseType: !964, size: 64, offset: 1152)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !356, line: 18, flags: DIFlagFwdDecl)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !774, file: !775, line: 139, baseType: !967, size: 64, offset: 1216)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !969, line: 16, flags: DIFlagFwdDecl)
!969 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!970 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !774, file: !775, line: 140, baseType: !971, size: 64, offset: 1280)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !775, line: 25, size: 64, elements: !973)
!973 = !{!974, !975, !976}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !972, file: !775, line: 26, baseType: !219, size: 32)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !972, file: !775, line: 27, baseType: !109, size: 32, offset: 32)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !972, file: !775, line: 28, baseType: !977, offset: 64)
!977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !364, elements: !765)
!978 = !DIDerivedType(tag: DW_TAG_member, scope: !774, file: !775, line: 142, baseType: !979, size: 128, offset: 1344)
!979 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !774, file: !775, line: 142, size: 128, elements: !980)
!980 = !{!981, !982}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !979, file: !775, line: 143, baseType: !109, size: 32)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !979, file: !775, line: 144, baseType: !692, size: 128, align: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !680, file: !14, line: 1013, baseType: !984, size: 256, offset: 960)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !985)
!985 = !{!986, !987, !988, !989, !990, !991}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !984, file: !14, line: 971, baseType: !319, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !984, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !984, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !984, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !984, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !984, file: !14, line: 976, baseType: !510, size: 64, offset: 192)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !680, file: !14, line: 1014, baseType: !993, size: 128, offset: 1216)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !994, line: 8, size: 128, elements: !995)
!994 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!995 = !{!996, !997}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !993, file: !994, line: 9, baseType: !494, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !993, file: !994, line: 10, baseType: !384, size: 64, offset: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !680, file: !14, line: 1015, baseType: !349, size: 64, offset: 1344)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !680, file: !14, line: 1016, baseType: !1000, size: 64, offset: 1408)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1002)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !1003)
!1003 = !{!1004, !1005, !1010, !1014, !1018, !1103, !1104, !1110, !1123, !1131, !1135, !1136, !1603, !1604, !1608, !1613, !1614, !1618, !1622, !1628, !1629, !1633, !1634, !1640, !1644, !1648, !1654, !1658, !1662, !1666, !1670, !1671, !1677}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1002, file: !14, line: 1915, baseType: !164, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1002, file: !14, line: 1916, baseType: !1006, size: 64, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!510, !1009, !510, !109}
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1002, file: !14, line: 1917, baseType: !1011, size: 64, offset: 128)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!301, !1009, !269, !316, !663}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1002, file: !14, line: 1918, baseType: !1015, size: 64, offset: 192)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!301, !1009, !188, !316, !663}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1002, file: !14, line: 1919, baseType: !1019, size: 64, offset: 256)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!301, !1022, !1044}
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !1024)
!1024 = !{!1025, !1026, !1027, !1031, !1032, !1033, !1034}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1023, file: !14, line: 374, baseType: !1009, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1023, file: !14, line: 375, baseType: !510, size: 64, offset: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1023, file: !14, line: 376, baseType: !1028, size: 64, offset: 128)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{null, !1022, !305}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1023, file: !14, line: 377, baseType: !163, size: 64, offset: 192)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1023, file: !14, line: 378, baseType: !109, size: 32, offset: 256)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1023, file: !14, line: 379, baseType: !237, size: 16, offset: 288)
!1034 = !DIDerivedType(tag: DW_TAG_member, scope: !1023, file: !14, line: 380, baseType: !1035, size: 64, offset: 320)
!1035 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1023, file: !14, line: 380, size: 64, elements: !1036)
!1036 = !{!1037, !1040}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1035, file: !14, line: 386, baseType: !1038, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1035, file: !14, line: 395, baseType: !1041, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!301, !163}
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1046, line: 41, size: 320, elements: !1047)
!1046 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!1047 = !{!1048, !1049, !1050, !1051, !1052, !1053, !1058, !1098}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !1045, file: !1046, line: 42, baseType: !227, size: 8)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !1045, file: !1046, line: 43, baseType: !881, size: 8, offset: 8)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !1045, file: !1046, line: 44, baseType: !881, size: 8, offset: 16)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !1045, file: !1046, line: 45, baseType: !881, size: 8, offset: 24)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !1045, file: !1046, line: 46, baseType: !881, size: 8, offset: 32)
!1053 = !DIDerivedType(tag: DW_TAG_member, scope: !1045, file: !1046, line: 47, baseType: !1054, size: 64, offset: 64)
!1054 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1045, file: !1046, line: 47, size: 64, elements: !1055)
!1055 = !{!1056, !1057}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1054, file: !1046, line: 48, baseType: !316, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !1054, file: !1046, line: 49, baseType: !109, size: 32)
!1058 = !DIDerivedType(tag: DW_TAG_member, scope: !1045, file: !1046, line: 61, baseType: !1059, size: 128, offset: 128)
!1059 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1045, file: !1046, line: 61, size: 128, elements: !1060)
!1060 = !{!1061, !1067}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !1059, file: !1046, line: 67, baseType: !1062, size: 128)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1063, line: 17, size: 128, elements: !1064)
!1063 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!1064 = !{!1065, !1066}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1062, file: !1063, line: 19, baseType: !163, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1062, file: !1063, line: 20, baseType: !317, size: 64, offset: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, scope: !1059, file: !1046, line: 68, baseType: !1068, size: 128)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1059, file: !1046, line: 68, size: 128, elements: !1069)
!1069 = !{!1070, !1097}
!1070 = !DIDerivedType(tag: DW_TAG_member, scope: !1068, file: !1046, line: 69, baseType: !1071, size: 64)
!1071 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1068, file: !1046, line: 69, size: 64, elements: !1072)
!1072 = !{!1073, !1076, !1083, !1087, !1096}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !1071, file: !1046, line: 71, baseType: !1074, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1062)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1071, file: !1046, line: 72, baseType: !1077, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1079)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1046, line: 17, size: 128, elements: !1080)
!1080 = !{!1081, !1082}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1079, file: !1046, line: 18, baseType: !163, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1079, file: !1046, line: 19, baseType: !316, size: 64, offset: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1071, file: !1046, line: 73, baseType: !1084, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1086)
!1086 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1046, line: 73, flags: DIFlagFwdDecl)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !1071, file: !1046, line: 74, baseType: !1088, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1090, line: 296, size: 128, elements: !1091)
!1090 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1091 = !{!1092, !1093, !1095}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1089, file: !1090, line: 297, baseType: !199, size: 32)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1089, file: !1090, line: 299, baseType: !1094, size: 32, offset: 32)
!1094 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !170, line: 154, baseType: !7)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1089, file: !1090, line: 300, baseType: !163, size: 64, offset: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !1071, file: !1046, line: 75, baseType: !163, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1068, file: !1046, line: 77, baseType: !316, size: 64, offset: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, scope: !1045, file: !1046, line: 80, baseType: !1099, size: 64, offset: 256)
!1099 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1045, file: !1046, line: 80, size: 64, elements: !1100)
!1100 = !{!1101, !1102}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !1099, file: !1046, line: 81, baseType: !319, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !1099, file: !1046, line: 82, baseType: !510, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1002, file: !14, line: 1920, baseType: !1019, size: 64, offset: 320)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1002, file: !14, line: 1921, baseType: !1105, size: 64, offset: 384)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!109, !1022, !1108, !7}
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1002, file: !14, line: 1923, baseType: !1111, size: 64, offset: 448)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!109, !1009, !1114}
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !1116)
!1116 = !{!1117, !1122}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1115, file: !14, line: 1859, baseType: !1118, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !1119)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!881, !1114, !188, !109, !510, !422, !7}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1115, file: !14, line: 1860, baseType: !510, size: 64, offset: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1002, file: !14, line: 1924, baseType: !1124, size: 64, offset: 512)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!1127, !1009, !1129}
!1127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1128, line: 59, baseType: !7)
!1128 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !525, line: 31, flags: DIFlagFwdDecl)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1002, file: !14, line: 1925, baseType: !1132, size: 64, offset: 576)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!305, !1009, !7, !319}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1002, file: !14, line: 1926, baseType: !1132, size: 64, offset: 640)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1002, file: !14, line: 1927, baseType: !1137, size: 64, offset: 704)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!109, !1009, !1140}
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !27, line: 625, size: 1344, elements: !1142)
!1142 = !{!1143, !1152, !1320, !1326, !1333, !1334, !1339, !1340, !1345, !1346, !1349, !1596, !1597, !1598, !1599, !1600, !1601}
!1143 = !DIDerivedType(tag: DW_TAG_member, scope: !1141, file: !27, line: 628, baseType: !1144, size: 128)
!1144 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1141, file: !27, line: 628, size: 128, elements: !1145)
!1145 = !{!1146, !1151}
!1146 = !DIDerivedType(tag: DW_TAG_member, scope: !1144, file: !27, line: 629, baseType: !1147, size: 128)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1144, file: !27, line: 629, size: 128, elements: !1148)
!1148 = !{!1149, !1150}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1147, file: !27, line: 631, baseType: !319, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1147, file: !27, line: 632, baseType: !319, size: 64, offset: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1144, file: !27, line: 635, baseType: !692, size: 128, align: 64)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1141, file: !27, line: 639, baseType: !1153, size: 64, offset: 128)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !27, line: 733, size: 10240, elements: !1155)
!1155 = !{!1156, !1318}
!1156 = !DIDerivedType(tag: DW_TAG_member, scope: !1154, file: !27, line: 734, baseType: !1157, size: 10240)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1154, file: !27, line: 734, size: 10240, elements: !1158)
!1158 = !{!1159, !1163, !1176, !1180, !1181, !1182, !1183, !1184, !1185, !1194, !1195, !1196, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1235, !1237, !1240, !1287, !1288, !1289, !1292, !1293, !1294, !1297, !1298, !1299, !1305, !1306}
!1159 = !DIDerivedType(tag: DW_TAG_member, scope: !1157, file: !27, line: 739, baseType: !1160, size: 512, align: 512)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1157, file: !27, line: 739, size: 512, align: 512, elements: !1161)
!1161 = !{!1162}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1160, file: !27, line: 747, baseType: !219, size: 32)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1157, file: !27, line: 750, baseType: !1164, size: 128, offset: 512)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1165, line: 218, size: 128, elements: !1166)
!1165 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1166 = !{!1167, !1174, !1175}
!1167 = !DIDerivedType(tag: DW_TAG_member, scope: !1164, file: !1165, line: 219, baseType: !1168, size: 32)
!1168 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1164, file: !1165, line: 219, size: 32, elements: !1169)
!1169 = !{!1170, !1171}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1168, file: !1165, line: 220, baseType: !199, size: 32)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1168, file: !1165, line: 221, baseType: !1172)
!1172 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1165, line: 197, baseType: !1173)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1165, line: 197, elements: !553)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1164, file: !1165, line: 223, baseType: !7, size: 32, offset: 32)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1164, file: !1165, line: 224, baseType: !163, size: 64, offset: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1157, file: !27, line: 752, baseType: !1177, size: 64, offset: 640)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!319, !1009, !319, !319, !319, !319}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1157, file: !27, line: 756, baseType: !319, size: 64, offset: 704)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1157, file: !27, line: 757, baseType: !319, size: 64, offset: 768)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1157, file: !27, line: 760, baseType: !319, size: 64, offset: 832)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1157, file: !27, line: 761, baseType: !319, size: 64, offset: 896)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1157, file: !27, line: 763, baseType: !319, size: 64, offset: 960)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1157, file: !27, line: 764, baseType: !1186, size: 64, offset: 1024)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1188, line: 299, baseType: !1189)
!1188 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1188, line: 299, size: 64, elements: !1190)
!1190 = !{!1191}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1189, file: !1188, line: 299, baseType: !1192, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1193, line: 18, baseType: !319)
!1193 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1157, file: !27, line: 773, baseType: !219, size: 32, offset: 1088)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1157, file: !27, line: 785, baseType: !219, size: 32, offset: 1120)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1157, file: !27, line: 795, baseType: !1197, size: 64, offset: 1152)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !27, line: 726, size: 128, elements: !1199)
!1199 = !{!1200, !1201}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1198, file: !27, line: 727, baseType: !422, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1198, file: !27, line: 728, baseType: !109, size: 32, offset: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1157, file: !27, line: 801, baseType: !319, size: 64, offset: 1216)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1157, file: !27, line: 804, baseType: !638, size: 64, offset: 1280)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1157, file: !27, line: 806, baseType: !109, size: 32, offset: 1344)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1157, file: !27, line: 808, baseType: !199, size: 32, offset: 1376)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1157, file: !27, line: 823, baseType: !822, size: 320, offset: 1408)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1157, file: !27, line: 825, baseType: !169, size: 128, offset: 1728)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1157, file: !27, line: 845, baseType: !109, size: 32, offset: 1856)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1157, file: !27, line: 849, baseType: !319, size: 64, offset: 1920)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1157, file: !27, line: 850, baseType: !319, size: 64, offset: 1984)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1157, file: !27, line: 852, baseType: !319, size: 64, offset: 2048)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1157, file: !27, line: 853, baseType: !319, size: 64, offset: 2112)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1157, file: !27, line: 854, baseType: !640, size: 64, offset: 2176)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1157, file: !27, line: 855, baseType: !319, size: 64, offset: 2240)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1157, file: !27, line: 856, baseType: !319, size: 64, offset: 2304)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1157, file: !27, line: 857, baseType: !319, size: 64, offset: 2368)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1157, file: !27, line: 858, baseType: !319, size: 64, offset: 2432)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1157, file: !27, line: 865, baseType: !395, size: 32, offset: 2496)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1157, file: !27, line: 867, baseType: !199, size: 32, offset: 2528)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1157, file: !27, line: 869, baseType: !319, size: 64, offset: 2560)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1157, file: !27, line: 869, baseType: !319, size: 64, offset: 2624)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1157, file: !27, line: 869, baseType: !319, size: 64, offset: 2688)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1157, file: !27, line: 869, baseType: !319, size: 64, offset: 2752)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1157, file: !27, line: 870, baseType: !319, size: 64, offset: 2816)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1157, file: !27, line: 870, baseType: !319, size: 64, offset: 2880)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1157, file: !27, line: 870, baseType: !319, size: 64, offset: 2944)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1157, file: !27, line: 871, baseType: !319, size: 64, offset: 3008)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1157, file: !27, line: 871, baseType: !319, size: 64, offset: 3072)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1157, file: !27, line: 871, baseType: !319, size: 64, offset: 3136)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1157, file: !27, line: 871, baseType: !319, size: 64, offset: 3200)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1157, file: !27, line: 873, baseType: !1232, size: 3328, offset: 3264)
!1232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 3328, elements: !1233)
!1233 = !{!1234}
!1234 = !DISubrange(count: 52)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1157, file: !27, line: 875, baseType: !1236, size: 1280, offset: 6592)
!1236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !939, size: 1280, elements: !746)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1157, file: !27, line: 877, baseType: !1238, size: 64, offset: 7872)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !27, line: 877, flags: DIFlagFwdDecl)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1157, file: !27, line: 880, baseType: !1241, size: 1088, offset: 7936)
!1241 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1242, line: 72, baseType: !1243)
!1242 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1242, line: 23, size: 1088, elements: !1244)
!1244 = !{!1245, !1246, !1247, !1248, !1249, !1252, !1253, !1254, !1255, !1282, !1283, !1284}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1243, file: !1242, line: 28, baseType: !422, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1243, file: !1242, line: 38, baseType: !640, size: 64, offset: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1243, file: !1242, line: 40, baseType: !319, size: 64, offset: 128)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1243, file: !1242, line: 43, baseType: !822, size: 320, offset: 192)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1243, file: !1242, line: 44, baseType: !1250, size: 64, offset: 512)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1242, line: 44, flags: DIFlagFwdDecl)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1243, file: !1242, line: 48, baseType: !319, size: 64, offset: 576)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1243, file: !1242, line: 59, baseType: !634, size: 256, offset: 640)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1243, file: !1242, line: 60, baseType: !163, size: 64, offset: 896)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1243, file: !1242, line: 61, baseType: !1256, size: 64, offset: 960)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1258)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1259, line: 13, size: 1216, elements: !1260)
!1259 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1260 = !{!1261, !1262, !1263, !1264, !1265, !1266, !1267, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1258, file: !1259, line: 14, baseType: !163, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1258, file: !1259, line: 15, baseType: !319, size: 64, offset: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1258, file: !1259, line: 17, baseType: !319, size: 64, offset: 128)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1258, file: !1259, line: 17, baseType: !319, size: 64, offset: 192)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1258, file: !1259, line: 18, baseType: !319, size: 64, offset: 256)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1258, file: !1259, line: 18, baseType: !319, size: 64, offset: 320)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1258, file: !1259, line: 19, baseType: !1268, size: 64, offset: 384)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1258, file: !1259, line: 21, baseType: !305, size: 64, offset: 448)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1258, file: !1259, line: 23, baseType: !305, size: 64, offset: 512)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1258, file: !1259, line: 24, baseType: !305, size: 64, offset: 576)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1258, file: !1259, line: 25, baseType: !305, size: 64, offset: 640)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1258, file: !1259, line: 26, baseType: !305, size: 64, offset: 704)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1258, file: !1259, line: 27, baseType: !305, size: 64, offset: 768)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1258, file: !1259, line: 28, baseType: !305, size: 64, offset: 832)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1258, file: !1259, line: 29, baseType: !305, size: 64, offset: 896)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1258, file: !1259, line: 30, baseType: !305, size: 64, offset: 960)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1258, file: !1259, line: 31, baseType: !305, size: 64, offset: 1024)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1258, file: !1259, line: 32, baseType: !305, size: 64, offset: 1088)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1258, file: !1259, line: 33, baseType: !305, size: 64, offset: 1152)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1243, file: !1242, line: 63, baseType: !219, size: 32, offset: 1024)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1243, file: !1242, line: 69, baseType: !237, size: 16, offset: 1056)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1243, file: !1242, line: 70, baseType: !1285, size: 16, offset: 1072)
!1285 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !228, line: 18, baseType: !1286)
!1286 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !230, line: 23, baseType: !850)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1157, file: !27, line: 882, baseType: !319, size: 64, offset: 9024)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1157, file: !27, line: 885, baseType: !199, size: 32, offset: 9088)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1157, file: !27, line: 886, baseType: !1290, size: 64, offset: 9152)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !27, line: 732, flags: DIFlagFwdDecl)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1157, file: !27, line: 901, baseType: !964, size: 64, offset: 9216)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1157, file: !27, line: 904, baseType: !1009, size: 64, offset: 9280)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1157, file: !27, line: 906, baseType: !1295, size: 64, offset: 9344)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !27, line: 906, flags: DIFlagFwdDecl)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1157, file: !27, line: 930, baseType: !219, size: 32, offset: 9408)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1157, file: !27, line: 933, baseType: !219, size: 32, offset: 9440)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1157, file: !27, line: 935, baseType: !1300, size: 64, offset: 9472)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !1301)
!1301 = !{!1302}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1300, file: !68, line: 104, baseType: !1303, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1157, file: !27, line: 940, baseType: !638, size: 64, offset: 9536)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1157, file: !27, line: 942, baseType: !1307, size: 256, offset: 9600)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1308, line: 98, size: 256, elements: !1309)
!1308 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1309 = !{!1310, !1311, !1312}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1307, file: !1308, line: 99, baseType: !638, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1307, file: !1308, line: 100, baseType: !169, size: 128, offset: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1307, file: !1308, line: 101, baseType: !1313, size: 64, offset: 192)
!1313 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1308, line: 21, baseType: !1314)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{null, !1317}
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1154, file: !27, line: 986, baseType: !1319, offset: 10240)
!1319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, elements: !765)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1141, file: !27, line: 640, baseType: !1321, size: 64, offset: 192)
!1321 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1188, line: 297, baseType: !1322)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1188, line: 297, size: 64, elements: !1323)
!1323 = !{!1324}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1322, file: !1188, line: 297, baseType: !1325, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1193, line: 19, baseType: !319)
!1326 = !DIDerivedType(tag: DW_TAG_member, scope: !1141, file: !27, line: 646, baseType: !1327, size: 64, offset: 256)
!1327 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1141, file: !27, line: 646, size: 64, elements: !1328)
!1328 = !{!1329, !1332}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1327, file: !27, line: 647, baseType: !1330, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1331)
!1331 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !27, line: 542, baseType: !319)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1327, file: !27, line: 648, baseType: !1331, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1141, file: !27, line: 666, baseType: !109, size: 32, offset: 320)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1141, file: !27, line: 667, baseType: !1335, size: 64, offset: 384)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !27, line: 579, size: 320, elements: !1337)
!1337 = !{!1338}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1336, file: !27, line: 580, baseType: !822, size: 320)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1141, file: !27, line: 670, baseType: !881, size: 8, offset: 448)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1141, file: !27, line: 681, baseType: !1341, size: 256, offset: 512)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1141, file: !27, line: 678, size: 256, elements: !1342)
!1342 = !{!1343, !1344}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1341, file: !27, line: 679, baseType: !814, size: 192, align: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1341, file: !27, line: 680, baseType: !319, size: 64, offset: 192)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1141, file: !27, line: 689, baseType: !169, size: 128, offset: 768)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1141, file: !27, line: 691, baseType: !1347, size: 64, offset: 896)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !27, line: 691, flags: DIFlagFwdDecl)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1141, file: !27, line: 694, baseType: !1350, size: 64, offset: 960)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1352)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1353, line: 563, size: 1024, elements: !1354)
!1353 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1354 = !{!1355, !1359, !1360, !1364, !1368, !1372, !1559, !1563, !1567, !1571, !1572, !1573, !1577, !1581, !1588, !1592}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1352, file: !1353, line: 564, baseType: !1356, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{null, !1140}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1352, file: !1353, line: 569, baseType: !1356, size: 64, offset: 64)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1352, file: !1353, line: 571, baseType: !1361, size: 64, offset: 128)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DISubroutineType(types: !1363)
!1363 = !{!109, !1140, !319}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1352, file: !1353, line: 572, baseType: !1365, size: 64, offset: 192)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!109, !1140}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1352, file: !1353, line: 578, baseType: !1369, size: 64, offset: 256)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{!109, !1140, !319, !319, !319}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1352, file: !1353, line: 580, baseType: !1373, size: 64, offset: 320)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{!1376, !1377}
!1376 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !27, line: 1184, baseType: !7)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1353, line: 512, size: 896, elements: !1379)
!1379 = !{!1380, !1388, !1389, !1396, !1403, !1413, !1552, !1553, !1555, !1557}
!1380 = !DIDerivedType(tag: DW_TAG_member, scope: !1378, file: !1353, line: 513, baseType: !1381, size: 320)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1378, file: !1353, line: 513, size: 320, elements: !1382)
!1382 = !{!1383, !1384, !1385, !1386, !1387}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1381, file: !1353, line: 514, baseType: !1140, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1381, file: !1353, line: 515, baseType: !1094, size: 32, offset: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1381, file: !1353, line: 516, baseType: !319, size: 64, offset: 128)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1381, file: !1353, line: 517, baseType: !319, size: 64, offset: 192)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1381, file: !1353, line: 518, baseType: !319, size: 64, offset: 256)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1378, file: !1353, line: 520, baseType: !26, size: 32, offset: 320)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1378, file: !1353, line: 522, baseType: !1390, size: 64, offset: 384)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1193, line: 22, baseType: !1392)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1193, line: 22, size: 64, elements: !1393)
!1393 = !{!1394}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1392, file: !1193, line: 22, baseType: !1395, size: 64)
!1395 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1193, line: 15, baseType: !319)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1378, file: !1353, line: 524, baseType: !1397, size: 64, offset: 448)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1188, line: 372, baseType: !1399)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1188, line: 372, size: 64, elements: !1400)
!1400 = !{!1401}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1399, file: !1188, line: 372, baseType: !1402, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1193, line: 16, baseType: !319)
!1403 = !DIDerivedType(tag: DW_TAG_member, scope: !1378, file: !1353, line: 527, baseType: !1404, size: 64, offset: 512)
!1404 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1378, file: !1353, line: 527, size: 64, elements: !1405)
!1405 = !{!1406, !1412}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1404, file: !1353, line: 528, baseType: !1407, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1193, line: 21, baseType: !1408)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1193, line: 21, size: 64, elements: !1409)
!1409 = !{!1410}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1408, file: !1193, line: 21, baseType: !1411, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1193, line: 14, baseType: !319)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1404, file: !1353, line: 529, baseType: !1391, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1378, file: !1353, line: 534, baseType: !1414, size: 64, offset: 576)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !27, line: 74, size: 512, align: 128, elements: !1416)
!1416 = !{!1417, !1418, !1546, !1551}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1415, file: !27, line: 75, baseType: !319, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, scope: !1415, file: !27, line: 83, baseType: !1419, size: 320, offset: 64)
!1419 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1415, file: !27, line: 83, size: 320, elements: !1420)
!1420 = !{!1421, !1442, !1456, !1460, !1545}
!1421 = !DIDerivedType(tag: DW_TAG_member, scope: !1419, file: !27, line: 84, baseType: !1422, size: 320)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1419, file: !27, line: 84, size: 320, elements: !1423)
!1423 = !{!1424, !1435, !1436, !1441}
!1424 = !DIDerivedType(tag: DW_TAG_member, scope: !1422, file: !27, line: 90, baseType: !1425, size: 128)
!1425 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1422, file: !27, line: 90, size: 128, elements: !1426)
!1426 = !{!1427, !1428, !1433, !1434}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1425, file: !27, line: 91, baseType: !169, size: 128)
!1428 = !DIDerivedType(tag: DW_TAG_member, scope: !1425, file: !27, line: 94, baseType: !1429, size: 128)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1425, file: !27, line: 94, size: 128, elements: !1430)
!1430 = !{!1431, !1432}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1429, file: !27, line: 96, baseType: !163, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1429, file: !27, line: 98, baseType: !7, size: 32, offset: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1425, file: !27, line: 102, baseType: !169, size: 128)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1425, file: !27, line: 103, baseType: !169, size: 128)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1422, file: !27, line: 106, baseType: !345, size: 64, offset: 128)
!1436 = !DIDerivedType(tag: DW_TAG_member, scope: !1422, file: !27, line: 107, baseType: !1437, size: 64, offset: 192)
!1437 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1422, file: !27, line: 107, size: 64, elements: !1438)
!1438 = !{!1439, !1440}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1437, file: !27, line: 108, baseType: !319, size: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1437, file: !27, line: 109, baseType: !319, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1422, file: !27, line: 117, baseType: !319, size: 64, offset: 256)
!1442 = !DIDerivedType(tag: DW_TAG_member, scope: !1419, file: !27, line: 119, baseType: !1443, size: 320)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1419, file: !27, line: 119, size: 320, elements: !1444)
!1444 = !{!1445, !1446, !1449, !1450, !1451}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1443, file: !27, line: 124, baseType: !319, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1443, file: !27, line: 125, baseType: !1447, size: 64, offset: 64)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !27, line: 125, flags: DIFlagFwdDecl)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1443, file: !27, line: 126, baseType: !319, size: 64, offset: 128)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1443, file: !27, line: 127, baseType: !319, size: 64, offset: 192)
!1451 = !DIDerivedType(tag: DW_TAG_member, scope: !1443, file: !27, line: 128, baseType: !1452, size: 64, offset: 256)
!1452 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1443, file: !27, line: 128, size: 64, elements: !1453)
!1453 = !{!1454, !1455}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1452, file: !27, line: 133, baseType: !319, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1452, file: !27, line: 138, baseType: !638, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, scope: !1419, file: !27, line: 141, baseType: !1457, size: 64)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1419, file: !27, line: 141, size: 64, elements: !1458)
!1458 = !{!1459}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1457, file: !27, line: 142, baseType: !319, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, scope: !1419, file: !27, line: 144, baseType: !1461, size: 128)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1419, file: !27, line: 144, size: 128, elements: !1462)
!1462 = !{!1463, !1544}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1461, file: !27, line: 146, baseType: !1464, size: 64)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !43, line: 126, size: 1216, elements: !1466)
!1466 = !{!1467, !1477, !1498, !1509, !1510, !1511, !1512, !1526, !1527, !1528}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1465, file: !43, line: 127, baseType: !1468, size: 384)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !43, line: 21, size: 384, elements: !1469)
!1469 = !{!1470, !1471, !1473, !1474, !1475, !1476}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1468, file: !43, line: 22, baseType: !319, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1468, file: !43, line: 23, baseType: !1472, size: 64, offset: 64)
!1472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !319)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1468, file: !43, line: 24, baseType: !1472, size: 64, offset: 128)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1468, file: !43, line: 25, baseType: !319, size: 64, offset: 192)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1468, file: !43, line: 26, baseType: !319, size: 64, offset: 256)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1468, file: !43, line: 27, baseType: !319, size: 64, offset: 320)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1465, file: !43, line: 128, baseType: !1478, size: 128, offset: 384)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1479, line: 105, size: 128, elements: !1480)
!1479 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1480 = !{!1481, !1482}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1478, file: !1479, line: 110, baseType: !319, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1478, file: !1479, line: 118, baseType: !1483, size: 64, offset: 64)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1479, line: 95, size: 448, elements: !1485)
!1485 = !{!1486, !1487, !1493, !1494, !1495, !1496, !1497}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1484, file: !1479, line: 96, baseType: !638, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1484, file: !1479, line: 97, baseType: !1488, size: 64, offset: 64)
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1479, line: 60, baseType: !1490)
!1490 = !DISubroutineType(types: !1491)
!1491 = !{null, !1492}
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1484, file: !1479, line: 98, baseType: !1488, size: 64, offset: 128)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1484, file: !1479, line: 99, baseType: !881, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1484, file: !1479, line: 100, baseType: !881, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1484, file: !1479, line: 101, baseType: !692, size: 128, align: 64, offset: 256)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1484, file: !1479, line: 102, baseType: !1492, size: 64, offset: 384)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1465, file: !43, line: 129, baseType: !1499, size: 256, offset: 512)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1500, line: 26, size: 256, elements: !1501)
!1500 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1501 = !{!1502, !1503}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1499, file: !1500, line: 27, baseType: !7, size: 32)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1499, file: !1500, line: 28, baseType: !1504, size: 192, offset: 64)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1505, line: 43, size: 192, elements: !1506)
!1505 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1506 = !{!1507, !1508}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1504, file: !1505, line: 44, baseType: !647, size: 32)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1504, file: !1505, line: 45, baseType: !169, size: 128, offset: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1465, file: !43, line: 130, baseType: !42, size: 32, offset: 768)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1465, file: !43, line: 131, baseType: !7, size: 32, offset: 800)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1465, file: !43, line: 132, baseType: !319, size: 64, offset: 832)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1465, file: !43, line: 133, baseType: !1513, size: 64, offset: 896)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1515)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !43, line: 77, size: 192, elements: !1516)
!1516 = !{!1517, !1521, !1522}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1515, file: !43, line: 83, baseType: !1518, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{null, !1414}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1515, file: !43, line: 89, baseType: !1373, size: 64, offset: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1515, file: !43, line: 100, baseType: !1523, size: 64, offset: 128)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!109, !1464, !319, !319, !109}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1465, file: !43, line: 134, baseType: !163, size: 64, offset: 960)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1465, file: !43, line: 135, baseType: !109, size: 32, offset: 1024)
!1528 = !DIDerivedType(tag: DW_TAG_member, scope: !1465, file: !43, line: 136, baseType: !1529, size: 128, offset: 1088)
!1529 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1465, file: !43, line: 136, size: 128, elements: !1530)
!1530 = !{!1531, !1537}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1529, file: !43, line: 137, baseType: !1532, size: 128)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1533, line: 6, size: 128, elements: !1534)
!1533 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1534 = !{!1535, !1536}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1532, file: !1533, line: 7, baseType: !422, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1532, file: !1533, line: 8, baseType: !422, size: 64, offset: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, scope: !1529, file: !43, line: 138, baseType: !1538)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1529, file: !43, line: 138, elements: !1539)
!1539 = !{!1540, !1542}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1538, file: !43, line: 138, baseType: !1541)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1538, file: !43, line: 138, elements: !553)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1538, file: !43, line: 138, baseType: !1543)
!1543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1532, elements: !765)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1461, file: !27, line: 147, baseType: !163, size: 64, offset: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1419, file: !27, line: 161, baseType: !692, size: 128, align: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, scope: !1415, file: !27, line: 164, baseType: !1547, size: 32, offset: 384)
!1547 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1415, file: !27, line: 164, size: 32, elements: !1548)
!1548 = !{!1549, !1550}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1547, file: !27, line: 169, baseType: !219, size: 32)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1547, file: !27, line: 177, baseType: !7, size: 32)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1415, file: !27, line: 181, baseType: !219, size: 32, offset: 416)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1378, file: !1353, line: 535, baseType: !1414, size: 64, offset: 640)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1378, file: !1353, line: 541, baseType: !1554, size: 64, offset: 704)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1378, file: !1353, line: 545, baseType: !1556, size: 64, offset: 768)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1378, file: !1353, line: 549, baseType: !1558, size: 64, offset: 832)
!1558 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1188, line: 520, baseType: !1414)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1352, file: !1353, line: 581, baseType: !1560, size: 64, offset: 384)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{!1376, !1377, !7}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1352, file: !1353, line: 582, baseType: !1564, size: 64, offset: 448)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{!1376, !1377, !319, !319}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1352, file: !1353, line: 584, baseType: !1568, size: 64, offset: 512)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!319, !1140}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1352, file: !1353, line: 588, baseType: !1373, size: 64, offset: 576)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1352, file: !1353, line: 591, baseType: !1373, size: 64, offset: 640)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1352, file: !1353, line: 597, baseType: !1574, size: 64, offset: 704)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DISubroutineType(types: !1576)
!1576 = !{!109, !1140, !319, !163, !109, !109}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1352, file: !1353, line: 603, baseType: !1578, size: 64, offset: 768)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!188, !1140}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1352, file: !1353, line: 613, baseType: !1582, size: 64, offset: 832)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!109, !1140, !1585}
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1587, line: 54, flags: DIFlagFwdDecl)
!1587 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1352, file: !1353, line: 625, baseType: !1589, size: 64, offset: 896)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!1585, !1140, !319}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1352, file: !1353, line: 633, baseType: !1593, size: 64, offset: 960)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{!1414, !1140, !319}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1141, file: !27, line: 697, baseType: !319, size: 64, offset: 1024)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1141, file: !27, line: 699, baseType: !1009, size: 64, offset: 1088)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1141, file: !27, line: 700, baseType: !163, size: 64, offset: 1152)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1141, file: !27, line: 711, baseType: !638, size: 64, offset: 1216)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1141, file: !27, line: 717, baseType: !1585, size: 64, offset: 1280)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1141, file: !27, line: 722, baseType: !1602, offset: 1344)
!1602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !27, line: 570, elements: !553)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1002, file: !14, line: 1928, baseType: !319, size: 64, offset: 768)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1002, file: !14, line: 1929, baseType: !1605, size: 64, offset: 832)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DISubroutineType(types: !1607)
!1607 = !{!109, !349, !1009}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1002, file: !14, line: 1930, baseType: !1609, size: 64, offset: 896)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{!109, !1009, !1612}
!1612 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !163)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1002, file: !14, line: 1931, baseType: !1605, size: 64, offset: 960)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1002, file: !14, line: 1932, baseType: !1615, size: 64, offset: 1024)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!109, !1009, !510, !510, !109}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1002, file: !14, line: 1933, baseType: !1619, size: 64, offset: 1088)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{!109, !109, !1009, !109}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1002, file: !14, line: 1934, baseType: !1623, size: 64, offset: 1152)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{!109, !1009, !109, !1626}
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1002, file: !14, line: 1935, baseType: !1177, size: 64, offset: 1216)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1002, file: !14, line: 1936, baseType: !1630, size: 64, offset: 1280)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{!109, !109}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1002, file: !14, line: 1937, baseType: !1623, size: 64, offset: 1344)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1002, file: !14, line: 1938, baseType: !1635, size: 64, offset: 1408)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!301, !1638, !1009, !663, !316, !7}
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1587, line: 59, flags: DIFlagFwdDecl)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1002, file: !14, line: 1939, baseType: !1641, size: 64, offset: 1472)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{!301, !1009, !663, !1638, !316, !7}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1002, file: !14, line: 1940, baseType: !1645, size: 64, offset: 1536)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{null, !1009}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1002, file: !14, line: 1941, baseType: !1649, size: 64, offset: 1600)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{!109, !1009, !109, !1652, !1653}
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1002, file: !14, line: 1942, baseType: !1655, size: 64, offset: 1664)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{!305, !1009, !109, !510, !510}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1002, file: !14, line: 1944, baseType: !1659, size: 64, offset: 1728)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DISubroutineType(types: !1661)
!1661 = !{null, !622, !1009}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1002, file: !14, line: 1948, baseType: !1663, size: 64, offset: 1792)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{!301, !1009, !510, !1009, !510, !316, !7}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1002, file: !14, line: 1950, baseType: !1667, size: 64, offset: 1856)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{!510, !1009, !510, !1009, !510, !510, !7}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1002, file: !14, line: 1953, baseType: !1615, size: 64, offset: 1920)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1002, file: !14, line: 1954, baseType: !1672, size: 64, offset: 1984)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DISubroutineType(types: !1674)
!1674 = !{!109, !1675, !7}
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1002, file: !14, line: 1955, baseType: !1678, size: 64, offset: 2048)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{!109, !1675, !1108, !7}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !680, file: !14, line: 1018, baseType: !422, size: 64, offset: 1472)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !680, file: !14, line: 1020, baseType: !163, size: 64, offset: 1536)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !680, file: !14, line: 1023, baseType: !163, size: 64, offset: 1600)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !680, file: !14, line: 1027, baseType: !1685, size: 64, offset: 1664)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !680, file: !14, line: 1029, baseType: !345, size: 64, offset: 1728)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !680, file: !14, line: 1030, baseType: !1688, size: 32, offset: 1792)
!1688 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1689, line: 8, baseType: !418)
!1689 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !680, file: !14, line: 1031, baseType: !1688, size: 32, offset: 1824)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !623, file: !624, line: 29, baseType: !163, size: 64, offset: 896)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !565, file: !14, line: 2077, baseType: !619, size: 64, offset: 1088)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !565, file: !14, line: 2078, baseType: !619, size: 64, offset: 1152)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !565, file: !14, line: 2079, baseType: !619, size: 64, offset: 1216)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !565, file: !14, line: 2081, baseType: !1696, size: 64, offset: 1280)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DISubroutineType(types: !1698)
!1698 = !{!301, !500, !109, !269, !316, !510}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !565, file: !14, line: 2082, baseType: !1700, size: 64, offset: 1344)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{!301, !500, !109, !188, !316, !510}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !565, file: !14, line: 2083, baseType: !1704, size: 64, offset: 1408)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DISubroutineType(types: !1706)
!1706 = !{!1707, !349}
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !51, line: 296, size: 1664, elements: !1710)
!1710 = !{!1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1735, !1736, !1737}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1709, file: !51, line: 297, baseType: !545, size: 128)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1709, file: !51, line: 298, baseType: !169, size: 128, offset: 128)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1709, file: !51, line: 299, baseType: !169, size: 128, offset: 256)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1709, file: !51, line: 300, baseType: !169, size: 128, offset: 384)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1709, file: !51, line: 301, baseType: !634, size: 256, offset: 512)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1709, file: !51, line: 302, baseType: !199, size: 32, offset: 768)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1709, file: !51, line: 303, baseType: !219, size: 32, offset: 800)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1709, file: !51, line: 304, baseType: !500, size: 64, offset: 832)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1709, file: !51, line: 305, baseType: !1720, size: 64, offset: 896)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !51, line: 68, size: 64, elements: !1721)
!1721 = !{!1722, !1734}
!1722 = !DIDerivedType(tag: DW_TAG_member, scope: !1720, file: !51, line: 69, baseType: !1723, size: 32)
!1723 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1720, file: !51, line: 69, size: 32, elements: !1724)
!1724 = !{!1725, !1726, !1727}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1723, file: !51, line: 70, baseType: !355, size: 32)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1723, file: !51, line: 71, baseType: !364, size: 32)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1723, file: !51, line: 72, baseType: !1728, size: 32)
!1728 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1729, line: 24, baseType: !1730)
!1729 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1729, line: 22, size: 32, elements: !1731)
!1731 = !{!1732}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1730, file: !1729, line: 23, baseType: !1733, size: 32)
!1733 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1729, line: 20, baseType: !361)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1720, file: !51, line: 74, baseType: !50, size: 32, offset: 32)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1709, file: !51, line: 306, baseType: !510, size: 64, offset: 960)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1709, file: !51, line: 307, baseType: !319, size: 64, offset: 1024)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1709, file: !51, line: 308, baseType: !1738, size: 576, offset: 1088)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !51, line: 205, size: 576, elements: !1739)
!1739 = !{!1740, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1738, file: !51, line: 206, baseType: !1741, size: 64)
!1741 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !51, line: 66, baseType: !512)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1738, file: !51, line: 207, baseType: !1741, size: 64, offset: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1738, file: !51, line: 208, baseType: !1741, size: 64, offset: 128)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1738, file: !51, line: 209, baseType: !1741, size: 64, offset: 192)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1738, file: !51, line: 210, baseType: !1741, size: 64, offset: 256)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1738, file: !51, line: 211, baseType: !1741, size: 64, offset: 320)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1738, file: !51, line: 212, baseType: !1741, size: 64, offset: 384)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1738, file: !51, line: 213, baseType: !838, size: 64, offset: 448)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1738, file: !51, line: 214, baseType: !838, size: 64, offset: 512)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !565, file: !14, line: 2085, baseType: !1751, size: 64, offset: 1472)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{!305, !500, !1754}
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1756, line: 15, size: 256, elements: !1757)
!1756 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1757 = !{!1758, !1759, !1760, !1761, !1762}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1755, file: !1756, line: 16, baseType: !1094, size: 32)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1755, file: !1756, line: 19, baseType: !109, size: 32, offset: 32)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1755, file: !1756, line: 26, baseType: !319, size: 64, offset: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1755, file: !1756, line: 33, baseType: !319, size: 64, offset: 128)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1755, file: !1756, line: 36, baseType: !1763, size: 64, offset: 192)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !27, line: 33, flags: DIFlagFwdDecl)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !565, file: !14, line: 2087, baseType: !1751, size: 64, offset: 1536)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !565, file: !14, line: 2089, baseType: !535, size: 64, offset: 1600)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !501, file: !14, line: 1198, baseType: !1768, size: 64, offset: 448)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1770)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !51, line: 324, size: 704, elements: !1771)
!1771 = !{!1772, !1776, !1780, !1784, !1785, !1786, !1787, !1788, !1793, !1798, !1802}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1770, file: !51, line: 325, baseType: !1773, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!109, !1708}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1770, file: !51, line: 326, baseType: !1777, size: 64, offset: 64)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DISubroutineType(types: !1779)
!1779 = !{!1708, !500, !109}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1770, file: !51, line: 327, baseType: !1781, size: 64, offset: 128)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DISubroutineType(types: !1783)
!1783 = !{null, !1708}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1770, file: !51, line: 328, baseType: !1773, size: 64, offset: 192)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1770, file: !51, line: 329, baseType: !1773, size: 64, offset: 256)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1770, file: !51, line: 330, baseType: !1773, size: 64, offset: 320)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1770, file: !51, line: 331, baseType: !593, size: 64, offset: 384)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1770, file: !51, line: 334, baseType: !1789, size: 64, offset: 448)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DISubroutineType(types: !1791)
!1791 = !{!1792, !349}
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1770, file: !51, line: 335, baseType: !1794, size: 64, offset: 512)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DISubroutineType(types: !1796)
!1796 = !{!109, !349, !1797}
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1770, file: !51, line: 337, baseType: !1799, size: 64, offset: 576)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = !DISubroutineType(types: !1801)
!1801 = !{!109, !349, !1792}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1770, file: !51, line: 339, baseType: !1803, size: 64, offset: 640)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DISubroutineType(types: !1805)
!1805 = !{!109, !500, !1806}
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !501, file: !14, line: 1199, baseType: !1808, size: 64, offset: 512)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1810)
!1810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !51, line: 430, size: 704, elements: !1811)
!1811 = !{!1812, !1818, !1819, !1823, !1824, !1825, !1840, !1863, !1867, !1868, !1891}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1810, file: !51, line: 431, baseType: !1813, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DISubroutineType(types: !1815)
!1815 = !{!109, !500, !109, !109, !1816}
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !993)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1810, file: !51, line: 432, baseType: !593, size: 64, offset: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1810, file: !51, line: 433, baseType: !1820, size: 64, offset: 128)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{!109, !500, !7}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1810, file: !51, line: 434, baseType: !1820, size: 64, offset: 192)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1810, file: !51, line: 435, baseType: !593, size: 64, offset: 256)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1810, file: !51, line: 436, baseType: !1826, size: 64, offset: 320)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{!109, !500, !109, !1829}
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !51, line: 417, size: 256, elements: !1831)
!1831 = !{!1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1830, file: !51, line: 418, baseType: !109, size: 32)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1830, file: !51, line: 419, baseType: !7, size: 32, offset: 32)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1830, file: !51, line: 420, baseType: !7, size: 32, offset: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1830, file: !51, line: 422, baseType: !7, size: 32, offset: 96)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1830, file: !51, line: 423, baseType: !7, size: 32, offset: 128)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1830, file: !51, line: 424, baseType: !7, size: 32, offset: 160)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1830, file: !51, line: 425, baseType: !7, size: 32, offset: 192)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1830, file: !51, line: 426, baseType: !7, size: 32, offset: 224)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1810, file: !51, line: 437, baseType: !1841, size: 64, offset: 384)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DISubroutineType(types: !1843)
!1843 = !{!109, !500, !1720, !1844}
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !51, line: 345, size: 960, elements: !1846)
!1846 = !{!1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1845, file: !51, line: 346, baseType: !109, size: 32)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1845, file: !51, line: 347, baseType: !422, size: 64, offset: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1845, file: !51, line: 348, baseType: !422, size: 64, offset: 128)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1845, file: !51, line: 349, baseType: !422, size: 64, offset: 192)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1845, file: !51, line: 350, baseType: !422, size: 64, offset: 256)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1845, file: !51, line: 351, baseType: !422, size: 64, offset: 320)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1845, file: !51, line: 352, baseType: !422, size: 64, offset: 384)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1845, file: !51, line: 353, baseType: !644, size: 64, offset: 448)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1845, file: !51, line: 355, baseType: !644, size: 64, offset: 512)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1845, file: !51, line: 356, baseType: !109, size: 32, offset: 576)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1845, file: !51, line: 357, baseType: !109, size: 32, offset: 608)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1845, file: !51, line: 358, baseType: !422, size: 64, offset: 640)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1845, file: !51, line: 359, baseType: !422, size: 64, offset: 704)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1845, file: !51, line: 360, baseType: !422, size: 64, offset: 768)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1845, file: !51, line: 361, baseType: !644, size: 64, offset: 832)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1845, file: !51, line: 362, baseType: !109, size: 32, offset: 896)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1810, file: !51, line: 438, baseType: !1864, size: 64, offset: 448)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{!109, !500, !1806, !1844}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1810, file: !51, line: 440, baseType: !1841, size: 64, offset: 512)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1810, file: !51, line: 441, baseType: !1869, size: 64, offset: 576)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DISubroutineType(types: !1871)
!1871 = !{!109, !500, !1872}
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !51, line: 411, size: 1408, elements: !1874)
!1874 = !{!1875, !1876}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1873, file: !51, line: 412, baseType: !7, size: 32)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1873, file: !51, line: 413, baseType: !1877, size: 1344, offset: 64)
!1877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1878, size: 1344, elements: !270)
!1878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !51, line: 397, size: 448, elements: !1879)
!1879 = !{!1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1890}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1878, file: !51, line: 398, baseType: !7, size: 32)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1878, file: !51, line: 399, baseType: !7, size: 32, offset: 32)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1878, file: !51, line: 401, baseType: !7, size: 32, offset: 64)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1878, file: !51, line: 402, baseType: !7, size: 32, offset: 96)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1878, file: !51, line: 403, baseType: !7, size: 32, offset: 128)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1878, file: !51, line: 404, baseType: !7, size: 32, offset: 160)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1878, file: !51, line: 405, baseType: !7, size: 32, offset: 192)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1878, file: !51, line: 406, baseType: !424, size: 64, offset: 256)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1878, file: !51, line: 407, baseType: !1889, size: 64, offset: 320)
!1889 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !170, line: 132, baseType: !422)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1878, file: !51, line: 408, baseType: !1889, size: 64, offset: 384)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1810, file: !51, line: 442, baseType: !1820, size: 64, offset: 640)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !501, file: !14, line: 1200, baseType: !1893, size: 64, offset: 576)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1895)
!1895 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !501, file: !14, line: 1201, baseType: !319, size: 64, offset: 640)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !501, file: !14, line: 1202, baseType: !319, size: 64, offset: 704)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !501, file: !14, line: 1203, baseType: !319, size: 64, offset: 768)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !501, file: !14, line: 1204, baseType: !384, size: 64, offset: 832)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !501, file: !14, line: 1205, baseType: !822, size: 320, offset: 896)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !501, file: !14, line: 1206, baseType: !109, size: 32, offset: 1216)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !501, file: !14, line: 1207, baseType: !219, size: 32, offset: 1248)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !501, file: !14, line: 1209, baseType: !163, size: 64, offset: 1280)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !501, file: !14, line: 1211, baseType: !1905, size: 64, offset: 1344)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1908)
!1908 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !501, file: !14, line: 1223, baseType: !1910, size: 64, offset: 1408)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !401, line: 34, size: 64, elements: !1911)
!1911 = !{!1912}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1910, file: !401, line: 35, baseType: !404, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !501, file: !14, line: 1224, baseType: !169, size: 128, offset: 1472)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !501, file: !14, line: 1225, baseType: !1915, size: 64, offset: 1600)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !501, file: !14, line: 1226, baseType: !1918, size: 64, offset: 1664)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !501, file: !14, line: 1227, baseType: !1921, size: 64, offset: 1728)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !501, file: !14, line: 1228, baseType: !1924, size: 64, offset: 1792)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !501, file: !14, line: 1229, baseType: !545, size: 128, offset: 1856)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !501, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !501, file: !14, line: 1231, baseType: !1929, size: 2496, offset: 2048)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !51, line: 521, size: 2496, elements: !1930)
!1930 = !{!1931, !1932, !1933, !1935, !1967}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1929, file: !51, line: 522, baseType: !7, size: 32)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1929, file: !51, line: 523, baseType: !822, size: 320, offset: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1929, file: !51, line: 524, baseType: !1934, size: 192, offset: 384)
!1934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, size: 192, elements: !270)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1929, file: !51, line: 525, baseType: !1936, size: 1728, offset: 576)
!1936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1937, size: 1728, elements: !270)
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !51, line: 222, size: 576, elements: !1938)
!1938 = !{!1939, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1937, file: !51, line: 223, baseType: !1940, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !51, line: 445, size: 256, elements: !1942)
!1942 = !{!1943, !1944, !1957, !1958}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1941, file: !51, line: 446, baseType: !109, size: 32)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1941, file: !51, line: 447, baseType: !1945, size: 64, offset: 64)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1947)
!1947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !51, line: 312, size: 512, elements: !1948)
!1948 = !{!1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1947, file: !51, line: 313, baseType: !593, size: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1947, file: !51, line: 314, baseType: !593, size: 64, offset: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1947, file: !51, line: 315, baseType: !593, size: 64, offset: 128)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1947, file: !51, line: 316, baseType: !593, size: 64, offset: 192)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1947, file: !51, line: 317, baseType: !1773, size: 64, offset: 256)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1947, file: !51, line: 318, baseType: !1773, size: 64, offset: 320)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1947, file: !51, line: 319, baseType: !1773, size: 64, offset: 384)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1947, file: !51, line: 320, baseType: !1803, size: 64, offset: 448)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1941, file: !51, line: 448, baseType: !164, size: 64, offset: 128)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1941, file: !51, line: 449, baseType: !1940, size: 64, offset: 192)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1937, file: !51, line: 224, baseType: !109, size: 32, offset: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1937, file: !51, line: 226, baseType: !169, size: 128, offset: 128)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1937, file: !51, line: 227, baseType: !319, size: 64, offset: 256)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1937, file: !51, line: 228, baseType: !7, size: 32, offset: 320)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1937, file: !51, line: 229, baseType: !7, size: 32, offset: 352)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1937, file: !51, line: 230, baseType: !1741, size: 64, offset: 384)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1937, file: !51, line: 231, baseType: !1741, size: 64, offset: 448)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1937, file: !51, line: 232, baseType: !163, size: 64, offset: 512)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1929, file: !51, line: 526, baseType: !1968, size: 192, offset: 2304)
!1968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1945, size: 192, elements: !270)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !501, file: !14, line: 1233, baseType: !1970, size: 2368, offset: 4544)
!1970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !1971)
!1971 = !{!1972, !1973, !1974}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1970, file: !14, line: 1185, baseType: !239, size: 16)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1970, file: !14, line: 1186, baseType: !239, size: 16, offset: 16)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1970, file: !14, line: 1187, baseType: !1975, size: 2304, offset: 64)
!1975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1976, size: 2304, elements: !270)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1977, line: 12, size: 768, elements: !1978)
!1977 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1978 = !{!1979, !1987, !1989, !4122, !4123}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1976, file: !1977, line: 13, baseType: !1980, size: 384)
!1980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1981, line: 17, size: 384, elements: !1982)
!1981 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1982 = !{!1983, !1984, !1985, !1986}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1980, file: !1981, line: 18, baseType: !109, size: 32)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1980, file: !1981, line: 19, baseType: !109, size: 32, offset: 32)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1980, file: !1981, line: 20, baseType: !750, size: 192, offset: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1980, file: !1981, line: 22, baseType: !692, size: 128, align: 64, offset: 256)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1976, file: !1977, line: 14, baseType: !1988, size: 64, offset: 384)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1976, file: !1977, line: 15, baseType: !1990, size: 64, offset: 448)
!1990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1991, line: 16, size: 64, elements: !1992)
!1991 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1992 = !{!1993}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1990, file: !1991, line: 17, baseType: !1994, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1587, line: 746, size: 58368, elements: !1996)
!1996 = !{!1997, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2077, !2088, !2183, !2187, !2190, !2221, !2222, !2223, !2224, !2235, !2237, !2238, !2239, !2240, !2241, !2242, !2253, !2254, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2271, !2272, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2360, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2375, !2376, !2377, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2409, !2415, !2416, !2417, !2418, !2419, !2423, !2426, !2433, !2438, !2441, !2444, !2447, !2450, !3514, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3554, !3555, !3556, !3565, !3573, !3574, !3575, !3576, !3577, !3582, !3583, !3584, !3587, !3588, !3591, !3594, !3597, !3605, !3608, !3609, !3695, !3696, !3697, !3698, !3699, !3705, !3706, !3707, !3708, !3711, !3712, !3715, !3729, !3730, !3733, !3734, !3735, !3738, !3739, !3740, !3741, !3742, !3743, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3775, !3776, !3782, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3794, !3866, !3868, !3869, !3870, !3871, !3872, !3873, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1995, file: !1587, line: 752, baseType: !1998, size: 192)
!1998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1999, line: 56, size: 192, elements: !2000)
!1999 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2000 = !{!2001, !2002, !2003, !2004}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1998, file: !1999, line: 57, baseType: !319, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1998, file: !1999, line: 58, baseType: !319, size: 64, offset: 64)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1998, file: !1999, line: 59, baseType: !418, size: 32, offset: 128)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1998, file: !1999, line: 61, baseType: !418, size: 32, offset: 160)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1995, file: !1587, line: 754, baseType: !7, size: 32, offset: 192)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1995, file: !1587, line: 767, baseType: !163, size: 64, offset: 256)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1995, file: !1587, line: 768, baseType: !737, size: 32, offset: 320)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1995, file: !1587, line: 770, baseType: !7, size: 32, offset: 352)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1995, file: !1587, line: 771, baseType: !7, size: 32, offset: 384)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1995, file: !1587, line: 774, baseType: !109, size: 32, offset: 416)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1995, file: !1587, line: 775, baseType: !2012, size: 128, offset: 448)
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2013, line: 58, size: 128, elements: !2014)
!2013 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2014 = !{!2015, !2016, !2021, !2022}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2012, file: !2013, line: 59, baseType: !686, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, scope: !2012, file: !2013, line: 60, baseType: !2017, size: 32, offset: 64)
!2017 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2012, file: !2013, line: 60, size: 32, elements: !2018)
!2018 = !{!2019, !2020}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2017, file: !2013, line: 61, baseType: !7, size: 32)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2017, file: !2013, line: 62, baseType: !219, size: 32)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2012, file: !2013, line: 65, baseType: !237, size: 16, offset: 96)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2012, file: !2013, line: 65, baseType: !237, size: 16, offset: 112)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1995, file: !1587, line: 776, baseType: !7, size: 32, offset: 576)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1995, file: !1587, line: 777, baseType: !319, size: 64, offset: 640)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1995, file: !1587, line: 778, baseType: !1994, size: 64, offset: 704)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1995, file: !1587, line: 787, baseType: !109, size: 32, offset: 768)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1995, file: !1587, line: 788, baseType: !109, size: 32, offset: 800)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1995, file: !1587, line: 790, baseType: !109, size: 32, offset: 832)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1995, file: !1587, line: 792, baseType: !109, size: 32, offset: 864)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1995, file: !1587, line: 793, baseType: !109, size: 32, offset: 896)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1995, file: !1587, line: 794, baseType: !109, size: 32, offset: 928)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1995, file: !1587, line: 795, baseType: !7, size: 32, offset: 960)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1995, file: !1587, line: 797, baseType: !2034, size: 2048, offset: 1024)
!2034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1587, line: 551, size: 2048, elements: !2035)
!2035 = !{!2036, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2056, !2059, !2060, !2061}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2034, file: !1587, line: 553, baseType: !2037, size: 128)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1587, line: 411, size: 128, elements: !2038)
!2038 = !{!2039, !2040}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2037, file: !1587, line: 412, baseType: !319, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2037, file: !1587, line: 413, baseType: !418, size: 32, offset: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2034, file: !1587, line: 554, baseType: !814, size: 192, align: 64, offset: 128)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2034, file: !1587, line: 555, baseType: !422, size: 64, offset: 320)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2034, file: !1587, line: 556, baseType: !422, size: 64, offset: 384)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2034, file: !1587, line: 558, baseType: !169, size: 128, offset: 448)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2034, file: !1587, line: 559, baseType: !7, size: 32, offset: 576)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2034, file: !1587, line: 561, baseType: !422, size: 64, offset: 640)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2034, file: !1587, line: 562, baseType: !422, size: 64, offset: 704)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2034, file: !1587, line: 563, baseType: !422, size: 64, offset: 768)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2034, file: !1587, line: 564, baseType: !422, size: 64, offset: 832)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2034, file: !1587, line: 565, baseType: !644, size: 64, offset: 896)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2034, file: !1587, line: 566, baseType: !422, size: 64, offset: 960)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2034, file: !1587, line: 568, baseType: !422, size: 64, offset: 1024)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2034, file: !1587, line: 571, baseType: !109, size: 32, offset: 1088)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2034, file: !1587, line: 572, baseType: !2055, size: 64, offset: 1152)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2034, file: !1587, line: 574, baseType: !2057, size: 64, offset: 1216)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1587, line: 49, flags: DIFlagFwdDecl)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2034, file: !1587, line: 576, baseType: !2057, size: 64, offset: 1280)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2034, file: !1587, line: 578, baseType: !319, size: 64, offset: 1344)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2034, file: !1587, line: 588, baseType: !2062, size: 512, align: 512, offset: 1536)
!2062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1587, line: 497, size: 512, align: 512, elements: !2063)
!2063 = !{!2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2062, file: !1587, line: 498, baseType: !422, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2062, file: !1587, line: 499, baseType: !422, size: 64, offset: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2062, file: !1587, line: 500, baseType: !422, size: 64, offset: 128)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2062, file: !1587, line: 501, baseType: !418, size: 32, offset: 192)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2062, file: !1587, line: 502, baseType: !418, size: 32, offset: 224)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2062, file: !1587, line: 503, baseType: !319, size: 64, offset: 256)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2062, file: !1587, line: 504, baseType: !319, size: 64, offset: 320)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2062, file: !1587, line: 505, baseType: !319, size: 64, offset: 384)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2062, file: !1587, line: 506, baseType: !2073, size: 64, align: 64, offset: 448)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1587, line: 445, size: 64, align: 64, elements: !2074)
!2074 = !{!2075, !2076}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2073, file: !1587, line: 446, baseType: !7, size: 32)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2073, file: !1587, line: 447, baseType: !7, size: 32, offset: 32)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1995, file: !1587, line: 798, baseType: !2078, size: 384, offset: 3072)
!2078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1587, line: 592, size: 384, elements: !2079)
!2079 = !{!2080, !2081, !2082, !2083, !2084, !2085, !2086}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2078, file: !1587, line: 593, baseType: !169, size: 128)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2078, file: !1587, line: 594, baseType: !319, size: 64, offset: 128)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2078, file: !1587, line: 595, baseType: !319, size: 64, offset: 192)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2078, file: !1587, line: 596, baseType: !7, size: 32, offset: 256)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2078, file: !1587, line: 597, baseType: !239, size: 16, offset: 288)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2078, file: !1587, line: 598, baseType: !239, size: 16, offset: 304)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2078, file: !1587, line: 600, baseType: !2087, size: 64, offset: 320)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1995, file: !1587, line: 799, baseType: !2089, size: 1792, offset: 3456)
!2089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1587, line: 610, size: 1792, elements: !2090)
!2090 = !{!2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2180, !2181}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2089, file: !1587, line: 611, baseType: !814, size: 192, align: 64)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2089, file: !1587, line: 618, baseType: !422, size: 64, offset: 192)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2089, file: !1587, line: 619, baseType: !422, size: 64, offset: 256)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2089, file: !1587, line: 620, baseType: !422, size: 64, offset: 320)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2089, file: !1587, line: 621, baseType: !422, size: 64, offset: 384)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2089, file: !1587, line: 622, baseType: !422, size: 64, offset: 448)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2089, file: !1587, line: 629, baseType: !644, size: 64, offset: 512)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2089, file: !1587, line: 630, baseType: !422, size: 64, offset: 576)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2089, file: !1587, line: 631, baseType: !7, size: 32, offset: 640)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2089, file: !1587, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2089, file: !1587, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2089, file: !1587, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2089, file: !1587, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2089, file: !1587, line: 662, baseType: !2105, size: 512, offset: 704)
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !57, line: 118, size: 512, elements: !2106)
!2106 = !{!2107, !2115, !2116, !2121, !2176, !2177, !2178, !2179}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2105, file: !57, line: 119, baseType: !2108, size: 256)
!2108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2109, line: 9, size: 256, elements: !2110)
!2109 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2110 = !{!2111, !2112}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2108, file: !2109, line: 10, baseType: !814, size: 192, align: 64)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2108, file: !2109, line: 11, baseType: !2113, size: 64, offset: 192)
!2113 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2114, line: 29, baseType: !644)
!2114 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2105, file: !57, line: 120, baseType: !2113, size: 64, offset: 256)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2105, file: !57, line: 121, baseType: !2117, size: 64, offset: 320)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{!56, !2120}
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2105, file: !57, line: 122, baseType: !2122, size: 64, offset: 384)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !57, line: 159, size: 512, align: 512, elements: !2124)
!2124 = !{!2125, !2150, !2151, !2154, !2159, !2160, !2171, !2175}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2123, file: !57, line: 160, baseType: !2126, size: 64)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !57, line: 215, size: 4608, align: 512, elements: !2128)
!2128 = !{!2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2127, file: !57, line: 216, baseType: !647, size: 32)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2127, file: !57, line: 217, baseType: !7, size: 32, offset: 32)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2127, file: !57, line: 218, baseType: !7, size: 32, offset: 64)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2127, file: !57, line: 219, baseType: !7, size: 32, offset: 96)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2127, file: !57, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2127, file: !57, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2127, file: !57, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2127, file: !57, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2127, file: !57, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2127, file: !57, line: 226, baseType: !7, size: 32, offset: 160)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2127, file: !57, line: 227, baseType: !239, size: 16, offset: 192)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2127, file: !57, line: 228, baseType: !239, size: 16, offset: 208)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2127, file: !57, line: 229, baseType: !7, size: 32, offset: 224)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2127, file: !57, line: 235, baseType: !2113, size: 64, offset: 256)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2127, file: !57, line: 236, baseType: !2120, size: 64, offset: 320)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2127, file: !57, line: 237, baseType: !2113, size: 64, offset: 384)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2127, file: !57, line: 238, baseType: !2120, size: 64, offset: 448)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2127, file: !57, line: 239, baseType: !2147, size: 4096, align: 512, offset: 512)
!2147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2123, size: 4096, align: 512, elements: !2148)
!2148 = !{!2149}
!2149 = !DISubrange(count: 8)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2123, file: !57, line: 161, baseType: !7, size: 32, offset: 64)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2123, file: !57, line: 162, baseType: !2152, size: 32, offset: 96)
!2152 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !170, line: 32, baseType: !2153)
!2153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !303, line: 96, baseType: !109)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2123, file: !57, line: 163, baseType: !2155, size: 32, offset: 128)
!2155 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !391, line: 274, baseType: !2156)
!2156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !391, line: 274, size: 32, elements: !2157)
!2157 = !{!2158}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2156, file: !391, line: 274, baseType: !395, size: 32)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2123, file: !57, line: 164, baseType: !2120, size: 64, offset: 192)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2123, file: !57, line: 165, baseType: !2161, size: 128, offset: 256)
!2161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2109, line: 14, size: 128, elements: !2162)
!2162 = !{!2163}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2161, file: !2109, line: 15, baseType: !2164, size: 128)
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !815, line: 26, size: 128, elements: !2165)
!2165 = !{!2166, !2170}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2164, file: !815, line: 27, baseType: !2167, size: 64)
!2167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !815, line: 12, size: 64, elements: !2168)
!2168 = !{!2169}
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2167, file: !815, line: 13, baseType: !819, size: 64)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2164, file: !815, line: 28, baseType: !819, size: 64, offset: 64)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2123, file: !57, line: 166, baseType: !2172, size: 64, offset: 384)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{!2113}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2123, file: !57, line: 167, baseType: !2113, size: 64, offset: 448)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2105, file: !57, line: 123, baseType: !227, size: 8, offset: 448)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2105, file: !57, line: 124, baseType: !227, size: 8, offset: 456)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2105, file: !57, line: 125, baseType: !227, size: 8, offset: 464)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2105, file: !57, line: 126, baseType: !227, size: 8, offset: 472)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2089, file: !1587, line: 671, baseType: !2105, size: 512, offset: 1216)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2089, file: !1587, line: 679, baseType: !2182, size: 64, offset: 1728)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1995, file: !1587, line: 800, baseType: !2184, size: 64, offset: 5248)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2186)
!2186 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1587, line: 800, flags: DIFlagFwdDecl)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1995, file: !1587, line: 809, baseType: !2188, size: 64, offset: 5312)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1587, line: 70, flags: DIFlagFwdDecl)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1995, file: !1587, line: 825, baseType: !2191, size: 2048, align: 512, offset: 5632)
!2191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1587, line: 509, size: 2048, align: 512, elements: !2192)
!2192 = !{!2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2191, file: !1587, line: 511, baseType: !422, size: 64)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2191, file: !1587, line: 512, baseType: !422, size: 64, offset: 64)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2191, file: !1587, line: 513, baseType: !422, size: 64, offset: 128)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2191, file: !1587, line: 514, baseType: !422, size: 64, offset: 192)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2191, file: !1587, line: 515, baseType: !422, size: 64, offset: 256)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2191, file: !1587, line: 516, baseType: !422, size: 64, offset: 320)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2191, file: !1587, line: 518, baseType: !422, size: 64, offset: 384)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2191, file: !1587, line: 519, baseType: !422, size: 64, offset: 448)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2191, file: !1587, line: 520, baseType: !644, size: 64, offset: 512)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2191, file: !1587, line: 522, baseType: !422, size: 64, offset: 576)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2191, file: !1587, line: 523, baseType: !422, size: 64, offset: 640)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2191, file: !1587, line: 524, baseType: !644, size: 64, offset: 704)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2191, file: !1587, line: 526, baseType: !644, size: 64, offset: 768)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2191, file: !1587, line: 527, baseType: !422, size: 64, offset: 832)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2191, file: !1587, line: 529, baseType: !422, size: 64, offset: 896)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2191, file: !1587, line: 530, baseType: !422, size: 64, offset: 960)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2191, file: !1587, line: 531, baseType: !422, size: 64, offset: 1024)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2191, file: !1587, line: 532, baseType: !422, size: 64, offset: 1088)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2191, file: !1587, line: 533, baseType: !422, size: 64, offset: 1152)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2191, file: !1587, line: 535, baseType: !422, size: 64, offset: 1216)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2191, file: !1587, line: 536, baseType: !422, size: 64, offset: 1280)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2191, file: !1587, line: 537, baseType: !422, size: 64, offset: 1344)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2191, file: !1587, line: 538, baseType: !422, size: 64, offset: 1408)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2191, file: !1587, line: 539, baseType: !422, size: 64, offset: 1472)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2191, file: !1587, line: 540, baseType: !422, size: 64, offset: 1536)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2191, file: !1587, line: 541, baseType: !422, size: 64, offset: 1600)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2191, file: !1587, line: 542, baseType: !422, size: 64, offset: 1664)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2191, file: !1587, line: 543, baseType: !422, size: 64, offset: 1728)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1995, file: !1587, line: 833, baseType: !7, size: 32, offset: 7680)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1995, file: !1587, line: 836, baseType: !7, size: 32, offset: 7712)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1995, file: !1587, line: 837, baseType: !109, size: 32, offset: 7744)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1995, file: !1587, line: 838, baseType: !2225, size: 64, offset: 7808)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2227)
!2227 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2228, line: 19, baseType: !2229)
!2228 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2228, line: 19, size: 64, elements: !2230)
!2230 = !{!2231}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2229, file: !2228, line: 19, baseType: !2232, size: 64)
!2232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 64, elements: !2233)
!2233 = !{!2234}
!2234 = !DISubrange(count: 1)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1995, file: !1587, line: 839, baseType: !2236, size: 64, offset: 7872)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1995, file: !1587, line: 840, baseType: !2227, size: 64, offset: 7936)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1995, file: !1587, line: 841, baseType: !163, size: 64, offset: 8000)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1995, file: !1587, line: 843, baseType: !239, size: 16, offset: 8064)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1995, file: !1587, line: 845, baseType: !239, size: 16, offset: 8080)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1995, file: !1587, line: 848, baseType: !109, size: 32, offset: 8096)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1995, file: !1587, line: 849, baseType: !2243, size: 32, offset: 8128)
!2243 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1587, line: 718, size: 32, elements: !2244)
!2244 = !{!2245, !2252}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2243, file: !1587, line: 724, baseType: !2246, size: 32)
!2246 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2243, file: !1587, line: 719, size: 32, elements: !2247)
!2247 = !{!2248, !2249, !2250, !2251}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2246, file: !1587, line: 720, baseType: !227, size: 8)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2246, file: !1587, line: 721, baseType: !227, size: 8, offset: 8)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2246, file: !1587, line: 722, baseType: !227, size: 8, offset: 16)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2246, file: !1587, line: 723, baseType: !227, size: 8, offset: 24)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2243, file: !1587, line: 725, baseType: !418, size: 32)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1995, file: !1587, line: 850, baseType: !169, size: 128, offset: 8192)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1995, file: !1587, line: 851, baseType: !2255, size: 64, offset: 8320)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1587, line: 60, flags: DIFlagFwdDecl)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1995, file: !1587, line: 855, baseType: !319, size: 64, offset: 8384)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1995, file: !1587, line: 856, baseType: !227, size: 8, offset: 8448)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1995, file: !1587, line: 857, baseType: !227, size: 8, offset: 8456)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1995, file: !1587, line: 858, baseType: !109, size: 32, offset: 8480)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1995, file: !1587, line: 859, baseType: !169, size: 128, offset: 8512)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1995, file: !1587, line: 860, baseType: !109, size: 32, offset: 8640)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1995, file: !1587, line: 861, baseType: !169, size: 128, offset: 8704)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1995, file: !1587, line: 873, baseType: !2265, size: 256, offset: 8832)
!2265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1587, line: 376, size: 256, elements: !2266)
!2266 = !{!2267, !2268, !2269, !2270}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2265, file: !1587, line: 381, baseType: !319, size: 64)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2265, file: !1587, line: 384, baseType: !424, size: 64, offset: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2265, file: !1587, line: 389, baseType: !424, size: 64, offset: 128)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2265, file: !1587, line: 392, baseType: !424, size: 64, offset: 192)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1995, file: !1587, line: 875, baseType: !169, size: 128, offset: 9088)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1995, file: !1587, line: 877, baseType: !2273, size: 320, offset: 9216)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2274, line: 86, size: 320, elements: !2275)
!2274 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2275 = !{!2276, !2277, !2278}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2273, file: !2274, line: 87, baseType: !109, size: 32)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2273, file: !2274, line: 88, baseType: !169, size: 128, offset: 64)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2273, file: !2274, line: 89, baseType: !169, size: 128, offset: 192)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1995, file: !1587, line: 878, baseType: !814, size: 192, align: 64, offset: 9536)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1995, file: !1587, line: 881, baseType: !1153, size: 64, offset: 9728)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1995, file: !1587, line: 882, baseType: !1153, size: 64, offset: 9792)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1995, file: !1587, line: 884, baseType: !109, size: 32, offset: 9856)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1995, file: !1587, line: 885, baseType: !109, size: 32, offset: 9888)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1995, file: !1587, line: 886, baseType: !109, size: 32, offset: 9920)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1995, file: !1587, line: 888, baseType: !109, size: 32, offset: 9952)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1995, file: !1587, line: 890, baseType: !319, size: 64, offset: 9984)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1995, file: !1587, line: 893, baseType: !7, size: 32, offset: 10048)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1995, file: !1587, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1995, file: !1587, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1995, file: !1587, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1995, file: !1587, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1995, file: !1587, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1995, file: !1587, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1995, file: !1587, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1995, file: !1587, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1995, file: !1587, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1995, file: !1587, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1995, file: !1587, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1995, file: !1587, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1995, file: !1587, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1995, file: !1587, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1995, file: !1587, line: 969, baseType: !319, size: 64, offset: 10176)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1995, file: !1587, line: 971, baseType: !2304, size: 448, offset: 10240)
!2304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !2305)
!2305 = !{!2306, !2307, !2312}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2304, file: !62, line: 26, baseType: !319, size: 64)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2304, file: !62, line: 27, baseType: !2308, size: 64, offset: 64)
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = !DISubroutineType(types: !2310)
!2310 = !{!305, !2311}
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2312 = !DIDerivedType(tag: DW_TAG_member, scope: !2304, file: !62, line: 28, baseType: !2313, size: 320, offset: 128)
!2313 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2304, file: !62, line: 28, size: 320, elements: !2314)
!2314 = !{!2315, !2325, !2350}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2313, file: !62, line: 37, baseType: !2316, size: 320)
!2316 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2313, file: !62, line: 30, size: 320, elements: !2317)
!2317 = !{!2318, !2320, !2321, !2322, !2323, !2324}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2316, file: !62, line: 31, baseType: !2319, size: 64)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2316, file: !62, line: 32, baseType: !418, size: 32, offset: 64)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2316, file: !62, line: 33, baseType: !418, size: 32, offset: 96)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2316, file: !62, line: 34, baseType: !418, size: 32, offset: 128)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2316, file: !62, line: 35, baseType: !422, size: 64, offset: 192)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2316, file: !62, line: 36, baseType: !2319, size: 64, offset: 256)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2313, file: !62, line: 47, baseType: !2326, size: 192)
!2326 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2313, file: !62, line: 39, size: 192, elements: !2327)
!2327 = !{!2328, !2329, !2330, !2349}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2326, file: !62, line: 40, baseType: !2152, size: 32)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2326, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!2330 = !DIDerivedType(tag: DW_TAG_member, scope: !2326, file: !62, line: 42, baseType: !2331, size: 64, offset: 64)
!2331 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2326, file: !62, line: 42, size: 64, elements: !2332)
!2332 = !{!2333, !2341}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2331, file: !62, line: 43, baseType: !2334, size: 64)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2336, line: 7, size: 128, elements: !2337)
!2336 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2337 = !{!2338, !2340}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2335, file: !2336, line: 8, baseType: !2339, size: 64)
!2339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !303, line: 93, baseType: !512)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2335, file: !2336, line: 9, baseType: !512, size: 64, offset: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2331, file: !62, line: 44, baseType: !2342, size: 64)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2344, line: 7, size: 64, elements: !2345)
!2344 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2345 = !{!2346, !2348}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2343, file: !2344, line: 8, baseType: !2347, size: 32)
!2347 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2344, line: 5, baseType: !807)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2343, file: !2344, line: 9, baseType: !807, size: 32, offset: 32)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2326, file: !62, line: 46, baseType: !422, size: 64, offset: 128)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2313, file: !62, line: 55, baseType: !2351, size: 256)
!2351 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2313, file: !62, line: 49, size: 256, elements: !2352)
!2352 = !{!2353, !2356, !2357, !2358, !2359}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2351, file: !62, line: 50, baseType: !2354, size: 64)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !62, line: 14, flags: DIFlagFwdDecl)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2351, file: !62, line: 51, baseType: !109, size: 32, offset: 64)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2351, file: !62, line: 52, baseType: !109, size: 32, offset: 96)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2351, file: !62, line: 53, baseType: !319, size: 64, offset: 128)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2351, file: !62, line: 54, baseType: !319, size: 64, offset: 192)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1995, file: !1587, line: 973, baseType: !2361, size: 32, offset: 10688)
!2361 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !170, line: 27, baseType: !2362)
!2362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !303, line: 28, baseType: !109)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1995, file: !1587, line: 974, baseType: !2361, size: 32, offset: 10720)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1995, file: !1587, line: 978, baseType: !319, size: 64, offset: 10752)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1995, file: !1587, line: 987, baseType: !1994, size: 64, offset: 10816)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1995, file: !1587, line: 990, baseType: !1994, size: 64, offset: 10880)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1995, file: !1587, line: 995, baseType: !169, size: 128, offset: 10944)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1995, file: !1587, line: 996, baseType: !169, size: 128, offset: 11072)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1995, file: !1587, line: 997, baseType: !1994, size: 64, offset: 11200)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1995, file: !1587, line: 1005, baseType: !169, size: 128, offset: 11264)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1995, file: !1587, line: 1006, baseType: !169, size: 128, offset: 11392)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1995, file: !1587, line: 1009, baseType: !733, size: 64, offset: 11520)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1995, file: !1587, line: 1010, baseType: !2374, size: 512, offset: 11584)
!2374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !545, size: 512, elements: !746)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1995, file: !1587, line: 1011, baseType: !169, size: 128, offset: 12096)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1995, file: !1587, line: 1012, baseType: !169, size: 128, offset: 12224)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1995, file: !1587, line: 1014, baseType: !2378, size: 64, offset: 12352)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1995, file: !1587, line: 1017, baseType: !616, size: 64, offset: 12416)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1995, file: !1587, line: 1020, baseType: !616, size: 64, offset: 12480)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1995, file: !1587, line: 1023, baseType: !163, size: 64, offset: 12544)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1995, file: !1587, line: 1025, baseType: !422, size: 64, offset: 12608)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1995, file: !1587, line: 1026, baseType: !422, size: 64, offset: 12672)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1995, file: !1587, line: 1031, baseType: !422, size: 64, offset: 12736)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1995, file: !1587, line: 1032, baseType: !2386, size: 192, offset: 12800)
!2386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1587, line: 324, size: 192, elements: !2387)
!2387 = !{!2388, !2389, !2390}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2386, file: !1587, line: 326, baseType: !422, size: 64)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2386, file: !1587, line: 327, baseType: !422, size: 64, offset: 64)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2386, file: !1587, line: 328, baseType: !647, size: 32, offset: 128)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1995, file: !1587, line: 1041, baseType: !319, size: 64, offset: 12992)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1995, file: !1587, line: 1042, baseType: !319, size: 64, offset: 13056)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1995, file: !1587, line: 1045, baseType: !422, size: 64, offset: 13120)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1995, file: !1587, line: 1048, baseType: !422, size: 64, offset: 13184)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1995, file: !1587, line: 1051, baseType: !319, size: 64, offset: 13248)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1995, file: !1587, line: 1052, baseType: !319, size: 64, offset: 13312)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1995, file: !1587, line: 1055, baseType: !2398, size: 640, offset: 13376)
!2398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2399, line: 132, size: 640, elements: !2400)
!2399 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2400 = !{!2401, !2407, !2408}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2398, file: !2399, line: 133, baseType: !2402, size: 576)
!2402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2403, size: 576, elements: !270)
!2403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2399, line: 117, size: 192, elements: !2404)
!2404 = !{!2405, !2406}
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2403, file: !2399, line: 118, baseType: !422, size: 64)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2403, file: !2399, line: 119, baseType: !2161, size: 128, offset: 64)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2398, file: !2399, line: 134, baseType: !7, size: 32, offset: 576)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2398, file: !2399, line: 135, baseType: !7, size: 32, offset: 608)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1995, file: !1587, line: 1058, baseType: !2410, size: 448, offset: 14016)
!2410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2399, line: 144, size: 448, elements: !2411)
!2411 = !{!2412, !2413, !2414}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2410, file: !2399, line: 145, baseType: !692, size: 128, align: 64)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2410, file: !2399, line: 146, baseType: !634, size: 256, offset: 128)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2410, file: !2399, line: 147, baseType: !7, size: 32, offset: 384)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1995, file: !1587, line: 1064, baseType: !772, size: 64, offset: 14464)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1995, file: !1587, line: 1067, baseType: !772, size: 64, offset: 14528)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1995, file: !1587, line: 1070, baseType: !772, size: 64, offset: 14592)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1995, file: !1587, line: 1074, baseType: !799, size: 64, offset: 14656)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1995, file: !1587, line: 1084, baseType: !2420, size: 128, offset: 14720)
!2420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 128, elements: !2421)
!2421 = !{!2422}
!2422 = !DISubrange(count: 16)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1995, file: !1587, line: 1086, baseType: !2424, size: 64, offset: 14848)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1587, line: 55, flags: DIFlagFwdDecl)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1995, file: !1587, line: 1089, baseType: !2427, size: 64, offset: 14912)
!2427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2428, line: 12, size: 64, elements: !2429)
!2428 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2429 = !{!2430}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2427, file: !2428, line: 13, baseType: !2431, size: 64)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2428, line: 8, flags: DIFlagFwdDecl)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1995, file: !1587, line: 1090, baseType: !2434, size: 128, offset: 14976)
!2434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2435, line: 13, size: 128, elements: !2436)
!2435 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2436 = !{!2437}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2434, file: !2435, line: 14, baseType: !169, size: 128)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1995, file: !1587, line: 1097, baseType: !2439, size: 64, offset: 15104)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1587, line: 50, flags: DIFlagFwdDecl)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1995, file: !1587, line: 1100, baseType: !2442, size: 64, offset: 15168)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1587, line: 1100, flags: DIFlagFwdDecl)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1995, file: !1587, line: 1103, baseType: !2445, size: 64, offset: 15232)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1587, line: 53, flags: DIFlagFwdDecl)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1995, file: !1587, line: 1107, baseType: !2448, size: 64, offset: 15296)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1587, line: 56, flags: DIFlagFwdDecl)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1995, file: !1587, line: 1110, baseType: !2451, size: 64, offset: 15360)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2453, line: 93, size: 8768, elements: !2454)
!2453 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2454 = !{!2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2490, !2491, !2492, !2493, !2494, !2495, !2496, !2504, !2513, !2514, !2516, !2517, !2518, !3445, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3483, !3484, !3491, !3501, !3504, !3505, !3508, !3509, !3510, !3511, !3512, !3513}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2452, file: !2453, line: 94, baseType: !737, size: 32)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2452, file: !2453, line: 95, baseType: !219, size: 32, offset: 32)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2452, file: !2453, line: 96, baseType: !109, size: 32, offset: 64)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2452, file: !2453, line: 97, baseType: !109, size: 32, offset: 96)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2452, file: !2453, line: 98, baseType: !169, size: 128, offset: 128)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2452, file: !2453, line: 100, baseType: !750, size: 192, offset: 256)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2452, file: !2453, line: 103, baseType: !1994, size: 64, offset: 448)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2452, file: !2453, line: 106, baseType: !2463, size: 192, offset: 512)
!2463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !969, line: 32, size: 192, elements: !2464)
!2464 = !{!2465, !2466}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2463, file: !969, line: 33, baseType: !169, size: 128)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2463, file: !969, line: 34, baseType: !2467, size: 64, offset: 128)
!2467 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2468, line: 25, baseType: !2469)
!2468 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2469 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2468, line: 23, size: 64, elements: !2470)
!2470 = !{!2471}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2469, file: !2468, line: 24, baseType: !2232, size: 64)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2452, file: !2453, line: 109, baseType: !541, size: 64, offset: 704)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2452, file: !2453, line: 112, baseType: !109, size: 32, offset: 768)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2452, file: !2453, line: 114, baseType: !109, size: 32, offset: 800)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2452, file: !2453, line: 115, baseType: !1994, size: 64, offset: 832)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2452, file: !2453, line: 118, baseType: !109, size: 32, offset: 896)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2452, file: !2453, line: 119, baseType: !7, size: 32, offset: 928)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2452, file: !2453, line: 121, baseType: !2479, size: 64, offset: 960)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2453, line: 80, size: 448, elements: !2481)
!2481 = !{!2482, !2483, !2489}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2480, file: !2453, line: 81, baseType: !219, size: 32)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2480, file: !2453, line: 82, baseType: !2484, size: 128, offset: 64)
!2484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2453, line: 75, size: 128, elements: !2485)
!2485 = !{!2486, !2487}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2484, file: !2453, line: 76, baseType: !1994, size: 64)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2484, file: !2453, line: 77, baseType: !2488, size: 64, offset: 64)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2480, file: !2453, line: 83, baseType: !1499, size: 256, offset: 192)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2452, file: !2453, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2452, file: !2453, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2452, file: !2453, line: 138, baseType: !7, size: 32, offset: 1056)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2452, file: !2453, line: 139, baseType: !169, size: 128, offset: 1088)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2452, file: !2453, line: 142, baseType: !2105, size: 512, offset: 1216)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2452, file: !2453, line: 143, baseType: !2113, size: 64, offset: 1728)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2452, file: !2453, line: 150, baseType: !2497, size: 256, offset: 1792)
!2497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2498, size: 256, elements: !2502)
!2498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2453, line: 38, size: 128, elements: !2499)
!2499 = !{!2500, !2501}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2498, file: !2453, line: 39, baseType: !422, size: 64)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2498, file: !2453, line: 40, baseType: !422, size: 64, offset: 64)
!2502 = !{!2503}
!2503 = !DISubrange(count: 2)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2452, file: !2453, line: 156, baseType: !2505, size: 192, offset: 2048)
!2505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2453, line: 66, size: 192, elements: !2506)
!2506 = !{!2507}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2505, file: !2453, line: 67, baseType: !2508, size: 192)
!2508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2453, line: 47, size: 192, elements: !2509)
!2509 = !{!2510, !2511, !2512}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2508, file: !2453, line: 48, baseType: !640, size: 64)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2508, file: !2453, line: 49, baseType: !640, size: 64, offset: 64)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2508, file: !2453, line: 50, baseType: !640, size: 64, offset: 128)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2452, file: !2453, line: 160, baseType: !2398, size: 640, offset: 2240)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2452, file: !2453, line: 163, baseType: !2515, size: 256, offset: 2880)
!2515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !733, size: 256, elements: !746)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2452, file: !2453, line: 169, baseType: !733, size: 64, offset: 3136)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2452, file: !2453, line: 172, baseType: !109, size: 32, offset: 3200)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2452, file: !2453, line: 174, baseType: !2519, size: 64, offset: 3264)
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2521, line: 193, size: 5248, elements: !2522)
!2521 = !DIFile(filename: "./include/linux/tty.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e268081fbcd8852324c3200836ed4371")
!2522 = !{!2523, !2528, !2529, !3038, !3334, !3335, !3336, !3383, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3400, !3401, !3402, !3403, !3404, !3412, !3421, !3422, !3423, !3424, !3425, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444}
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !2520, file: !2521, line: 194, baseType: !2524, size: 32)
!2524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2525, line: 19, size: 32, elements: !2526)
!2525 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2526 = !{!2527}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2524, file: !2525, line: 20, baseType: !737, size: 32)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2520, file: !2521, line: 195, baseType: !109, size: 32, offset: 32)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2520, file: !2521, line: 196, baseType: !2530, size: 64, offset: 64)
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !94, line: 705, size: 5824, elements: !2532)
!2532 = !{!2533, !2534, !2535, !2538, !2539, !2594, !2681, !2682, !2683, !2684, !2685, !2692, !2795, !2808, !2818, !2822, !2824, !2825, !2826, !2830, !2837, !2838, !2841, !2844, !2848, !2953, !2954, !2955, !2956, !2957, !2958, !3015, !3016, !3017, !3020, !3023, !3032, !3033, !3034, !3035, !3036, !3037}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2531, file: !94, line: 706, baseType: !184, size: 512)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2531, file: !94, line: 707, baseType: !2530, size: 64, offset: 512)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2531, file: !94, line: 709, baseType: !2536, size: 64, offset: 576)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !94, line: 37, flags: DIFlagFwdDecl)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2531, file: !94, line: 711, baseType: !188, size: 64, offset: 640)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2531, file: !94, line: 712, baseType: !2540, size: 64, offset: 704)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2542)
!2542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !94, line: 89, size: 384, elements: !2543)
!2543 = !{!2544, !2545, !2546, !2552, !2559, !2563}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2542, file: !94, line: 90, baseType: !188, size: 64)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2542, file: !94, line: 91, baseType: !321, size: 64, offset: 64)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2542, file: !94, line: 92, baseType: !2547, size: 64, offset: 128)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{!109, !2550, !264}
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2531)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2542, file: !94, line: 93, baseType: !2553, size: 64, offset: 192)
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = !DISubroutineType(types: !2555)
!2555 = !{!269, !2550, !2556, !2557, !2558}
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2542, file: !94, line: 95, baseType: !2560, size: 64, offset: 256)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{null, !2530}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2542, file: !94, line: 97, baseType: !2564, size: 64, offset: 320)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2566)
!2566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !101, line: 286, size: 1472, elements: !2567)
!2567 = !{!2568, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593}
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2566, file: !101, line: 287, baseType: !2569, size: 64)
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2570 = !DISubroutineType(types: !2571)
!2571 = !{!109, !2530}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2566, file: !101, line: 288, baseType: !2560, size: 64, offset: 64)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2566, file: !101, line: 289, baseType: !2569, size: 64, offset: 128)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2566, file: !101, line: 290, baseType: !2569, size: 64, offset: 192)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2566, file: !101, line: 291, baseType: !2569, size: 64, offset: 256)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2566, file: !101, line: 292, baseType: !2569, size: 64, offset: 320)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2566, file: !101, line: 293, baseType: !2569, size: 64, offset: 384)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2566, file: !101, line: 294, baseType: !2569, size: 64, offset: 448)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2566, file: !101, line: 295, baseType: !2569, size: 64, offset: 512)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2566, file: !101, line: 296, baseType: !2569, size: 64, offset: 576)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2566, file: !101, line: 297, baseType: !2569, size: 64, offset: 640)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2566, file: !101, line: 298, baseType: !2569, size: 64, offset: 704)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2566, file: !101, line: 299, baseType: !2569, size: 64, offset: 768)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2566, file: !101, line: 300, baseType: !2569, size: 64, offset: 832)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2566, file: !101, line: 301, baseType: !2569, size: 64, offset: 896)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2566, file: !101, line: 302, baseType: !2569, size: 64, offset: 960)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2566, file: !101, line: 303, baseType: !2569, size: 64, offset: 1024)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2566, file: !101, line: 304, baseType: !2569, size: 64, offset: 1088)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2566, file: !101, line: 305, baseType: !2569, size: 64, offset: 1152)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2566, file: !101, line: 306, baseType: !2569, size: 64, offset: 1216)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2566, file: !101, line: 307, baseType: !2569, size: 64, offset: 1280)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2566, file: !101, line: 308, baseType: !2569, size: 64, offset: 1344)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2566, file: !101, line: 309, baseType: !2569, size: 64, offset: 1408)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2531, file: !94, line: 714, baseType: !2595, size: 64, offset: 768)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2597)
!2597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2598, line: 80, size: 1344, elements: !2599)
!2598 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2599 = !{!2600, !2601, !2602, !2603, !2604, !2605, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2680}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2597, file: !2598, line: 81, baseType: !188, size: 64)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2597, file: !2598, line: 82, baseType: !188, size: 64, offset: 64)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2597, file: !2598, line: 83, baseType: !321, size: 64, offset: 128)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2597, file: !2598, line: 84, baseType: !321, size: 64, offset: 192)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2597, file: !2598, line: 85, baseType: !321, size: 64, offset: 256)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2597, file: !2598, line: 87, baseType: !2606, size: 64, offset: 320)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = !DISubroutineType(types: !2608)
!2608 = !{!109, !2530, !2609}
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 96, size: 1152, elements: !2611)
!2611 = !{!2612, !2613, !2614, !2615, !2616, !2617, !2618, !2632, !2643, !2644, !2645, !2646, !2647, !2655, !2656, !2657, !2658, !2659, !2660}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2610, file: !88, line: 97, baseType: !188, size: 64)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2610, file: !88, line: 98, baseType: !2595, size: 64, offset: 64)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2610, file: !88, line: 100, baseType: !164, size: 64, offset: 128)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2610, file: !88, line: 101, baseType: !188, size: 64, offset: 192)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2610, file: !88, line: 103, baseType: !881, size: 8, offset: 256)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2610, file: !88, line: 104, baseType: !87, size: 32, offset: 288)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2610, file: !88, line: 106, baseType: !2619, size: 64, offset: 320)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2621)
!2621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !2622, line: 282, size: 1600, elements: !2623)
!2622 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!2623 = !{!2624, !2626, !2627, !2631}
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2621, file: !2622, line: 283, baseType: !2625, size: 256)
!2625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 256, elements: !431)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2621, file: !2622, line: 284, baseType: !2625, size: 256, offset: 256)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !2621, file: !2622, line: 285, baseType: !2628, size: 1024, offset: 512)
!2628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 1024, elements: !2629)
!2629 = !{!2630}
!2630 = !DISubrange(count: 128)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2621, file: !2622, line: 286, baseType: !1268, size: 64, offset: 1536)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2610, file: !88, line: 107, baseType: !2633, size: 64, offset: 384)
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2635)
!2635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !2622, line: 217, size: 256, elements: !2636)
!2636 = !{!2637, !2639, !2641, !2642}
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2635, file: !2622, line: 218, baseType: !2638, size: 128)
!2638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 128, elements: !2421)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2635, file: !2622, line: 219, baseType: !2640, size: 64, offset: 128)
!2640 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !2622, line: 15, baseType: !319)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !2635, file: !2622, line: 220, baseType: !419, size: 32, offset: 192)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !2635, file: !2622, line: 221, baseType: !419, size: 32, offset: 224)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2610, file: !88, line: 109, baseType: !2569, size: 64, offset: 448)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2610, file: !88, line: 110, baseType: !2560, size: 64, offset: 512)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2610, file: !88, line: 111, baseType: !2569, size: 64, offset: 576)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2610, file: !88, line: 112, baseType: !2560, size: 64, offset: 640)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2610, file: !88, line: 113, baseType: !2648, size: 64, offset: 704)
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2649, size: 64)
!2649 = !DISubroutineType(types: !2650)
!2650 = !{!109, !2530, !2651}
!2651 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !101, line: 60, baseType: !2652)
!2652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !101, line: 58, size: 32, elements: !2653)
!2653 = !{!2654}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2652, file: !101, line: 59, baseType: !109, size: 32)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2610, file: !88, line: 114, baseType: !2569, size: 64, offset: 768)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2610, file: !88, line: 115, baseType: !321, size: 64, offset: 832)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2610, file: !88, line: 116, baseType: !321, size: 64, offset: 896)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2610, file: !88, line: 118, baseType: !2564, size: 64, offset: 960)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2610, file: !88, line: 119, baseType: !2560, size: 64, offset: 1024)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2610, file: !88, line: 121, baseType: !2661, size: 64, offset: 1088)
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 121, flags: DIFlagFwdDecl)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2597, file: !2598, line: 88, baseType: !2547, size: 64, offset: 384)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2597, file: !2598, line: 89, baseType: !2569, size: 64, offset: 448)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2597, file: !2598, line: 90, baseType: !2560, size: 64, offset: 512)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2597, file: !2598, line: 91, baseType: !2560, size: 64, offset: 576)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2597, file: !2598, line: 92, baseType: !2560, size: 64, offset: 640)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2597, file: !2598, line: 94, baseType: !2569, size: 64, offset: 704)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2597, file: !2598, line: 95, baseType: !2569, size: 64, offset: 768)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2597, file: !2598, line: 97, baseType: !2648, size: 64, offset: 832)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2597, file: !2598, line: 98, baseType: !2569, size: 64, offset: 896)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2597, file: !2598, line: 100, baseType: !2569, size: 64, offset: 960)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2597, file: !2598, line: 102, baseType: !2569, size: 64, offset: 1024)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2597, file: !2598, line: 103, baseType: !2560, size: 64, offset: 1088)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2597, file: !2598, line: 105, baseType: !2564, size: 64, offset: 1152)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2597, file: !2598, line: 107, baseType: !2677, size: 64, offset: 1216)
!2677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2678, size: 64)
!2678 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2679)
!2679 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2598, line: 107, flags: DIFlagFwdDecl)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2597, file: !2598, line: 109, baseType: !881, size: 8, offset: 1280)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2531, file: !94, line: 715, baseType: !2609, size: 64, offset: 832)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2531, file: !94, line: 717, baseType: !163, size: 64, offset: 896)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2531, file: !94, line: 719, baseType: !163, size: 64, offset: 960)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2531, file: !94, line: 721, baseType: !634, size: 256, offset: 1024)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2531, file: !94, line: 725, baseType: !2686, size: 448, offset: 1280)
!2686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !94, line: 517, size: 448, elements: !2687)
!2687 = !{!2688, !2689, !2690, !2691}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2686, file: !94, line: 518, baseType: !169, size: 128)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2686, file: !94, line: 519, baseType: !169, size: 128, offset: 128)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2686, file: !94, line: 520, baseType: !169, size: 128, offset: 256)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2686, file: !94, line: 521, baseType: !93, size: 32, offset: 384)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2531, file: !94, line: 726, baseType: !2693, size: 2496, offset: 1728)
!2693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !101, line: 663, size: 2496, elements: !2694)
!2694 = !{!2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2788, !2792}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2693, file: !101, line: 664, baseType: !2651, size: 32)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2693, file: !101, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2693, file: !101, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2693, file: !101, line: 667, baseType: !881, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2693, file: !101, line: 668, baseType: !881, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2693, file: !101, line: 669, baseType: !881, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2693, file: !101, line: 670, baseType: !881, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2693, file: !101, line: 671, baseType: !881, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2693, file: !101, line: 672, baseType: !881, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2693, file: !101, line: 673, baseType: !881, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2693, file: !101, line: 674, baseType: !881, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2693, file: !101, line: 675, baseType: !418, size: 32, offset: 64)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2693, file: !101, line: 676, baseType: !199, size: 32, offset: 96)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2693, file: !101, line: 678, baseType: !169, size: 128, offset: 128)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2693, file: !101, line: 679, baseType: !1499, size: 256, offset: 256)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2693, file: !101, line: 680, baseType: !2711, size: 64, offset: 512)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2713, line: 43, size: 1536, elements: !2714)
!2713 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2714 = !{!2715, !2716, !2717, !2718, !2719, !2722, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2712, file: !2713, line: 44, baseType: !188, size: 64)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2712, file: !2713, line: 45, baseType: !109, size: 32, offset: 64)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2712, file: !2713, line: 46, baseType: !169, size: 128, offset: 128)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2712, file: !2713, line: 47, baseType: !199, size: 32, offset: 256)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2712, file: !2713, line: 48, baseType: !2720, size: 64, offset: 320)
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !101, line: 629, flags: DIFlagFwdDecl)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2712, file: !2713, line: 49, baseType: !2723, size: 320, offset: 384)
!2723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2724, line: 11, size: 320, elements: !2725)
!2724 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2725 = !{!2726, !2727, !2728, !2733}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2723, file: !2724, line: 16, baseType: !545, size: 128)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2723, file: !2724, line: 17, baseType: !319, size: 64, offset: 128)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2723, file: !2724, line: 18, baseType: !2729, size: 64, offset: 192)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{null, !2732}
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2723, file: !2724, line: 19, baseType: !418, size: 32, offset: 256)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2712, file: !2713, line: 50, baseType: !319, size: 64, offset: 704)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2712, file: !2713, line: 51, baseType: !2113, size: 64, offset: 768)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2712, file: !2713, line: 52, baseType: !2113, size: 64, offset: 832)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2712, file: !2713, line: 53, baseType: !2113, size: 64, offset: 896)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2712, file: !2713, line: 54, baseType: !2113, size: 64, offset: 960)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2712, file: !2713, line: 55, baseType: !2113, size: 64, offset: 1024)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2712, file: !2713, line: 56, baseType: !319, size: 64, offset: 1088)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2712, file: !2713, line: 57, baseType: !319, size: 64, offset: 1152)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2712, file: !2713, line: 58, baseType: !319, size: 64, offset: 1216)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2712, file: !2713, line: 59, baseType: !319, size: 64, offset: 1280)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2712, file: !2713, line: 60, baseType: !319, size: 64, offset: 1344)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2712, file: !2713, line: 61, baseType: !2530, size: 64, offset: 1408)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2712, file: !2713, line: 62, baseType: !881, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2712, file: !2713, line: 63, baseType: !881, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2693, file: !101, line: 681, baseType: !881, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2693, file: !101, line: 682, baseType: !881, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2693, file: !101, line: 683, baseType: !881, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2693, file: !101, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2693, file: !101, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2693, file: !101, line: 690, baseType: !2105, size: 512, offset: 640)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2693, file: !101, line: 691, baseType: !422, size: 64, offset: 1152)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2693, file: !101, line: 692, baseType: !1307, size: 256, offset: 1216)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2693, file: !101, line: 693, baseType: !750, size: 192, offset: 1472)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2693, file: !101, line: 694, baseType: !2720, size: 64, offset: 1664)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2693, file: !101, line: 695, baseType: !219, size: 32, offset: 1728)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2693, file: !101, line: 696, baseType: !219, size: 32, offset: 1760)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2693, file: !101, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2693, file: !101, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2693, file: !101, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2693, file: !101, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2693, file: !101, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2693, file: !101, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2693, file: !101, line: 703, baseType: !881, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2693, file: !101, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2693, file: !101, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2693, file: !101, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2693, file: !101, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2693, file: !101, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2693, file: !101, line: 709, baseType: !7, size: 32, offset: 1824)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2693, file: !101, line: 710, baseType: !100, size: 32, offset: 1856)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2693, file: !101, line: 711, baseType: !108, size: 32, offset: 1888)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2693, file: !101, line: 712, baseType: !108, size: 32, offset: 1920)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2693, file: !101, line: 713, baseType: !109, size: 32, offset: 1952)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2693, file: !101, line: 714, baseType: !109, size: 32, offset: 1984)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2693, file: !101, line: 715, baseType: !422, size: 64, offset: 2048)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2693, file: !101, line: 716, baseType: !422, size: 64, offset: 2112)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2693, file: !101, line: 717, baseType: !422, size: 64, offset: 2176)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2693, file: !101, line: 718, baseType: !422, size: 64, offset: 2240)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2693, file: !101, line: 720, baseType: !2783, size: 64, offset: 2304)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !101, line: 632, size: 64, elements: !2785)
!2785 = !{!2786, !2787}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2784, file: !101, line: 633, baseType: !199, size: 32)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2784, file: !101, line: 634, baseType: !7, size: 32, offset: 32)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2693, file: !101, line: 721, baseType: !2789, size: 64, offset: 2368)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{null, !2530, !807}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2693, file: !101, line: 722, baseType: !2793, size: 64, offset: 2432)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !101, line: 722, flags: DIFlagFwdDecl)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2531, file: !94, line: 727, baseType: !2796, size: 64, offset: 4224)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !101, line: 742, size: 1792, elements: !2798)
!2798 = !{!2799, !2800, !2801, !2805, !2806, !2807}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2797, file: !101, line: 743, baseType: !2566, size: 1472)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2797, file: !101, line: 744, baseType: !2569, size: 64, offset: 1472)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2797, file: !101, line: 745, baseType: !2802, size: 64, offset: 1536)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{null, !2530, !881}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2797, file: !101, line: 746, baseType: !2569, size: 64, offset: 1600)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2797, file: !101, line: 747, baseType: !2560, size: 64, offset: 1664)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2797, file: !101, line: 748, baseType: !2560, size: 64, offset: 1728)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2531, file: !94, line: 736, baseType: !2809, size: 128, offset: 4288)
!2809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !94, line: 529, size: 128, elements: !2810)
!2810 = !{!2811, !2815}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2809, file: !94, line: 531, baseType: !2812, size: 64)
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2813 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !2814, line: 13, flags: DIFlagFwdDecl)
!2814 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2809, file: !94, line: 532, baseType: !2816, size: 64, offset: 64)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2817 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !94, line: 49, flags: DIFlagFwdDecl)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2531, file: !94, line: 738, baseType: !2819, size: 64, offset: 4416)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2820 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2821)
!2821 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !94, line: 738, flags: DIFlagFwdDecl)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2531, file: !94, line: 740, baseType: !2823, size: 64, offset: 4480)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2531, file: !94, line: 741, baseType: !422, size: 64, offset: 4544)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2531, file: !94, line: 746, baseType: !422, size: 64, offset: 4608)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2531, file: !94, line: 747, baseType: !2827, size: 64, offset: 4672)
!2827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2828, size: 64)
!2828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2829)
!2829 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !94, line: 747, flags: DIFlagFwdDecl)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2531, file: !94, line: 749, baseType: !2831, size: 64, offset: 4736)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !94, line: 428, size: 128, elements: !2833)
!2833 = !{!2834, !2835, !2836}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2832, file: !94, line: 433, baseType: !7, size: 32)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !2832, file: !94, line: 434, baseType: !7, size: 32, offset: 32)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2832, file: !94, line: 435, baseType: !319, size: 64, offset: 64)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2531, file: !94, line: 751, baseType: !169, size: 128, offset: 4800)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2531, file: !94, line: 762, baseType: !2839, size: 64, offset: 4928)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2840, size: 64)
!2840 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !94, line: 762, flags: DIFlagFwdDecl)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2531, file: !94, line: 770, baseType: !2842, offset: 4992)
!2842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2843, line: 5, elements: !553)
!2843 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2531, file: !94, line: 772, baseType: !2845, size: 64, offset: 4992)
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2846 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2847, line: 18, flags: DIFlagFwdDecl)
!2847 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2531, file: !94, line: 773, baseType: !2849, size: 64, offset: 5056)
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2850, size: 64)
!2850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2851, line: 41, size: 512, elements: !2852)
!2851 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!2852 = !{!2853, !2854, !2949, !2950, !2951, !2952}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !2850, file: !2851, line: 42, baseType: !2849, size: 64)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2850, file: !2851, line: 43, baseType: !2855, size: 64, offset: 64)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2857)
!2857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !2851, line: 125, size: 1408, elements: !2858)
!2858 = !{!2859, !2863, !2867, !2873, !2877, !2878, !2883, !2887, !2891, !2896, !2900, !2901, !2905, !2909, !2913, !2924, !2925, !2926, !2927, !2937, !2941, !2945}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2857, file: !2851, line: 126, baseType: !2860, size: 64)
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2861, size: 64)
!2861 = !DISubroutineType(types: !2862)
!2862 = !{!2849, !2849}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !2857, file: !2851, line: 127, baseType: !2864, size: 64, offset: 64)
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{null, !2849}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !2857, file: !2851, line: 128, baseType: !2868, size: 64, offset: 128)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{!881, !2871}
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2850)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !2857, file: !2851, line: 129, baseType: !2874, size: 64, offset: 192)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = !DISubroutineType(types: !2876)
!2876 = !{!1268, !2871, !2550}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !2857, file: !2851, line: 131, baseType: !2868, size: 64, offset: 256)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !2857, file: !2851, line: 133, baseType: !2879, size: 64, offset: 320)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{!2882, !2871}
!2882 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !2851, line: 132, flags: DIFlagFwdDecl)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !2857, file: !2851, line: 134, baseType: !2884, size: 64, offset: 384)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = !DISubroutineType(types: !2886)
!2886 = !{!881, !2871, !188}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !2857, file: !2851, line: 136, baseType: !2888, size: 64, offset: 448)
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = !DISubroutineType(types: !2890)
!2890 = !{!109, !2871, !188, !7, !163, !316}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !2857, file: !2851, line: 141, baseType: !2892, size: 64, offset: 512)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DISubroutineType(types: !2894)
!2894 = !{!109, !2871, !188, !2895, !316}
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !2857, file: !2851, line: 144, baseType: !2897, size: 64, offset: 576)
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2898, size: 64)
!2898 = !DISubroutineType(types: !2899)
!2899 = !{!188, !2871}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !2857, file: !2851, line: 145, baseType: !2897, size: 64, offset: 640)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !2857, file: !2851, line: 146, baseType: !2902, size: 64, offset: 704)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{!2849, !2871}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !2857, file: !2851, line: 148, baseType: !2906, size: 64, offset: 768)
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = !DISubroutineType(types: !2908)
!2908 = !{!2849, !2871, !2849}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !2857, file: !2851, line: 151, baseType: !2910, size: 64, offset: 832)
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2911, size: 64)
!2911 = !DISubroutineType(types: !2912)
!2912 = !{!2849, !2871, !188}
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !2857, file: !2851, line: 153, baseType: !2914, size: 64, offset: 896)
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2915, size: 64)
!2915 = !DISubroutineType(types: !2916)
!2916 = !{!109, !2871, !188, !188, !7, !7, !2917}
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !2851, line: 94, size: 640, elements: !2919)
!2919 = !{!2920, !2921, !2922}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2918, file: !2851, line: 95, baseType: !2849, size: 64)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2918, file: !2851, line: 96, baseType: !7, size: 32, offset: 64)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2918, file: !2851, line: 97, baseType: !2923, size: 512, offset: 128)
!2923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !422, size: 512, elements: !2148)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !2857, file: !2851, line: 158, baseType: !2906, size: 64, offset: 960)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !2857, file: !2851, line: 161, baseType: !2902, size: 64, offset: 1024)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !2857, file: !2851, line: 163, baseType: !2860, size: 64, offset: 1088)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !2857, file: !2851, line: 164, baseType: !2928, size: 64, offset: 1152)
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{!109, !2871, !2931}
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !2851, line: 73, size: 128, elements: !2933)
!2933 = !{!2934, !2935, !2936}
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2932, file: !2851, line: 74, baseType: !7, size: 32)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2932, file: !2851, line: 75, baseType: !7, size: 32, offset: 32)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2932, file: !2851, line: 76, baseType: !2871, size: 64, offset: 64)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !2857, file: !2851, line: 166, baseType: !2938, size: 64, offset: 1216)
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!2939 = !DISubroutineType(types: !2940)
!2940 = !{!163, !2849, !109}
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !2857, file: !2851, line: 167, baseType: !2942, size: 64, offset: 1280)
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = !DISubroutineType(types: !2944)
!2944 = !{!109, !2871, !7}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !2857, file: !2851, line: 168, baseType: !2946, size: 64, offset: 1344)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = !DISubroutineType(types: !2948)
!2948 = !{!109, !2849}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2850, file: !2851, line: 44, baseType: !2530, size: 64, offset: 128)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2850, file: !2851, line: 45, baseType: !169, size: 128, offset: 192)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2850, file: !2851, line: 46, baseType: !169, size: 128, offset: 320)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2850, file: !2851, line: 47, baseType: !227, size: 8, offset: 448)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2531, file: !94, line: 776, baseType: !109, size: 32, offset: 5120)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2531, file: !94, line: 778, baseType: !505, size: 32, offset: 5152)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2531, file: !94, line: 779, baseType: !418, size: 32, offset: 5184)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2531, file: !94, line: 781, baseType: !199, size: 32, offset: 5216)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2531, file: !94, line: 782, baseType: !169, size: 128, offset: 5248)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2531, file: !94, line: 784, baseType: !2959, size: 64, offset: 5376)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2960 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2961)
!2961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2962, line: 52, size: 768, elements: !2963)
!2962 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!2963 = !{!2964, !2965, !2966, !2967, !2968, !2972, !2976, !2977, !2978, !3006, !3010, !3014}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2961, file: !2962, line: 53, baseType: !188, size: 64)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2961, file: !2962, line: 55, baseType: !321, size: 64, offset: 64)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2961, file: !2962, line: 56, baseType: !321, size: 64, offset: 128)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2961, file: !2962, line: 58, baseType: !2547, size: 64, offset: 192)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2961, file: !2962, line: 59, baseType: !2969, size: 64, offset: 256)
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = !DISubroutineType(types: !2971)
!2971 = !{!269, !2550, !2556}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2961, file: !2962, line: 61, baseType: !2973, size: 64, offset: 320)
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{null, !2959}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2961, file: !2962, line: 62, baseType: !2560, size: 64, offset: 384)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2961, file: !2962, line: 64, baseType: !2569, size: 64, offset: 448)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2961, file: !2962, line: 66, baseType: !2979, size: 64, offset: 512)
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2980 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2981)
!2981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !2982)
!2982 = !{!2983, !2984, !2988, !2992, !2998, !3002}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2981, file: !82, line: 40, baseType: !81, size: 32)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2981, file: !82, line: 41, baseType: !2985, size: 64, offset: 64)
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2986, size: 64)
!2986 = !DISubroutineType(types: !2987)
!2987 = !{!881}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2981, file: !82, line: 42, baseType: !2989, size: 64, offset: 128)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = !DISubroutineType(types: !2991)
!2991 = !{!163}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2981, file: !82, line: 43, baseType: !2993, size: 64, offset: 192)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{!1268, !2996}
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2997, size: 64)
!2997 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2981, file: !82, line: 44, baseType: !2999, size: 64, offset: 256)
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3000, size: 64)
!3000 = !DISubroutineType(types: !3001)
!3001 = !{!1268}
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2981, file: !82, line: 45, baseType: !3003, size: 64, offset: 320)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DISubroutineType(types: !3005)
!3005 = !{null, !163}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2961, file: !2962, line: 67, baseType: !3007, size: 64, offset: 576)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{!1268, !2550}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2961, file: !2962, line: 69, baseType: !3011, size: 64, offset: 640)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{null, !2550, !2557, !2558}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2961, file: !2962, line: 71, baseType: !2564, size: 64, offset: 704)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2531, file: !94, line: 785, baseType: !321, size: 64, offset: 5440)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2531, file: !94, line: 787, baseType: !2560, size: 64, offset: 5504)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2531, file: !94, line: 788, baseType: !3018, size: 64, offset: 5568)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !94, line: 46, flags: DIFlagFwdDecl)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2531, file: !94, line: 789, baseType: !3021, size: 64, offset: 5632)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3022 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !94, line: 48, flags: DIFlagFwdDecl)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2531, file: !94, line: 791, baseType: !3024, size: 64, offset: 5696)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !94, line: 597, size: 128, elements: !3026)
!3026 = !{!3027, !3028, !3029, !3030, !3031}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3025, file: !94, line: 598, baseType: !116, size: 32)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3025, file: !94, line: 599, baseType: !125, size: 32, offset: 32)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3025, file: !94, line: 600, baseType: !130, size: 32, offset: 64)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3025, file: !94, line: 601, baseType: !881, size: 8, offset: 96)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3025, file: !94, line: 602, baseType: !881, size: 8, offset: 104)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2531, file: !94, line: 793, baseType: !135, size: 32, offset: 5760)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2531, file: !94, line: 795, baseType: !881, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2531, file: !94, line: 796, baseType: !881, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2531, file: !94, line: 797, baseType: !881, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2531, file: !94, line: 798, baseType: !881, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2531, file: !94, line: 799, baseType: !881, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2520, file: !2521, line: 197, baseType: !3039, size: 64, offset: 128)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_driver", file: !3041, line: 441, size: 1472, elements: !3042)
!3041 = !DIFile(filename: "./include/linux/tty_driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "52287f86f2b54a92396893dc3bae7f83")
!3042 = !{!3043, !3044, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3084, !3085, !3089, !3090, !3092, !3213, !3216, !3217, !3333}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3040, file: !3041, line: 442, baseType: !2524, size: 32)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "cdevs", scope: !3040, file: !3041, line: 443, baseType: !3045, size: 64, offset: 64)
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3048, line: 14, size: 832, elements: !3049)
!3048 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd3580fb19b1b4d9a4e84334e4ba7aa6")
!3049 = !{!3050, !3051, !3052, !3053, !3054, !3055}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3047, file: !3048, line: 15, baseType: !184, size: 512)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3047, file: !3048, line: 16, baseType: !164, size: 64, offset: 512)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3047, file: !3048, line: 17, baseType: !1000, size: 64, offset: 576)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3047, file: !3048, line: 18, baseType: !169, size: 128, offset: 640)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3047, file: !3048, line: 19, baseType: !505, size: 32, offset: 768)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3047, file: !3048, line: 20, baseType: !7, size: 32, offset: 800)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3040, file: !3041, line: 444, baseType: !164, size: 64, offset: 128)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !3040, file: !3041, line: 445, baseType: !188, size: 64, offset: 192)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3040, file: !3041, line: 446, baseType: !188, size: 64, offset: 256)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "name_base", scope: !3040, file: !3041, line: 447, baseType: !109, size: 32, offset: 320)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !3040, file: !3041, line: 448, baseType: !109, size: 32, offset: 352)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "minor_start", scope: !3040, file: !3041, line: 449, baseType: !109, size: 32, offset: 384)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3040, file: !3041, line: 450, baseType: !7, size: 32, offset: 416)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3040, file: !3041, line: 451, baseType: !850, size: 16, offset: 448)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "subtype", scope: !3040, file: !3041, line: 452, baseType: !850, size: 16, offset: 464)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "init_termios", scope: !3040, file: !3041, line: 453, baseType: !3066, size: 352, offset: 480)
!3066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ktermios", file: !3067, line: 30, size: 352, elements: !3068)
!3067 = !DIFile(filename: "./include/uapi/asm-generic/termbits.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "384ee64abd990f699250de204a5d4f4a")
!3068 = !{!3069, !3071, !3072, !3073, !3074, !3077, !3081, !3083}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "c_iflag", scope: !3066, file: !3067, line: 31, baseType: !3070, size: 32)
!3070 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcflag_t", file: !3067, line: 7, baseType: !7)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "c_oflag", scope: !3066, file: !3067, line: 32, baseType: !3070, size: 32, offset: 32)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "c_cflag", scope: !3066, file: !3067, line: 33, baseType: !3070, size: 32, offset: 64)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "c_lflag", scope: !3066, file: !3067, line: 34, baseType: !3070, size: 32, offset: 96)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "c_line", scope: !3066, file: !3067, line: 35, baseType: !3075, size: 8, offset: 128)
!3075 = !DIDerivedType(tag: DW_TAG_typedef, name: "cc_t", file: !3076, line: 5, baseType: !231)
!3076 = !DIFile(filename: "./include/uapi/asm-generic/termbits-common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d95a38d69bf7d3997b27d0ffed186b8d")
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "c_cc", scope: !3066, file: !3067, line: 36, baseType: !3078, size: 152, offset: 136)
!3078 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3075, size: 152, elements: !3079)
!3079 = !{!3080}
!3080 = !DISubrange(count: 19)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "c_ispeed", scope: !3066, file: !3067, line: 37, baseType: !3082, size: 32, offset: 288)
!3082 = !DIDerivedType(tag: DW_TAG_typedef, name: "speed_t", file: !3076, line: 6, baseType: !7)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "c_ospeed", scope: !3066, file: !3067, line: 38, baseType: !3082, size: 32, offset: 320)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3040, file: !3041, line: 454, baseType: !319, size: 64, offset: 832)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "proc_entry", scope: !3040, file: !3041, line: 455, baseType: !3086, size: 64, offset: 896)
!3086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3087, size: 64)
!3087 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !3088, line: 131, flags: DIFlagFwdDecl)
!3088 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !3040, file: !3041, line: 456, baseType: !3039, size: 64, offset: 960)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "ttys", scope: !3040, file: !3041, line: 461, baseType: !3091, size: 64, offset: 1024)
!3091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "ports", scope: !3040, file: !3041, line: 462, baseType: !3093, size: 64, offset: 1088)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port", file: !3096, line: 101, size: 3008, elements: !3097)
!3096 = !DIFile(filename: "./include/linux/tty_port.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b629b087027425c3d8279d0757a10f1f")
!3097 = !{!3098, !3130, !3131, !3132, !3154, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3182, !3208, !3209, !3210, !3211, !3212}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !3095, file: !3096, line: 102, baseType: !3099, size: 1088)
!3099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_bufhead", file: !3100, line: 35, size: 1088, elements: !3101)
!3100 = !DIFile(filename: "./include/linux/tty_buffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b5b8ed57ecb4f2e1ef71c039c2414911")
!3101 = !{!3102, !3119, !3120, !3121, !3122, !3123, !3127, !3128, !3129}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3099, file: !3100, line: 36, baseType: !3103, size: 64)
!3103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3104, size: 64)
!3104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_buffer", file: !3100, line: 10, size: 256, elements: !3105)
!3105 = !{!3106, !3111, !3112, !3113, !3114, !3115, !3116, !3117}
!3106 = !DIDerivedType(tag: DW_TAG_member, scope: !3104, file: !3100, line: 11, baseType: !3107, size: 64)
!3107 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3104, file: !3100, line: 11, size: 64, elements: !3108)
!3108 = !{!3109, !3110}
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3107, file: !3100, line: 12, baseType: !3103, size: 64)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3107, file: !3100, line: 13, baseType: !686, size: 64)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !3104, file: !3100, line: 15, baseType: !7, size: 32, offset: 64)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3104, file: !3100, line: 16, baseType: !7, size: 32, offset: 96)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !3104, file: !3100, line: 17, baseType: !7, size: 32, offset: 128)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3104, file: !3100, line: 18, baseType: !7, size: 32, offset: 160)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3104, file: !3100, line: 19, baseType: !7, size: 32, offset: 192)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3104, file: !3100, line: 20, baseType: !881, size: 8, offset: 224)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3104, file: !3100, line: 22, baseType: !3118, align: 64, offset: 256)
!3118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, elements: !765)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3099, file: !3100, line: 37, baseType: !1307, size: 256, offset: 64)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3099, file: !3100, line: 38, baseType: !634, size: 256, offset: 320)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !3099, file: !3100, line: 39, baseType: !219, size: 32, offset: 576)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !3099, file: !3100, line: 40, baseType: !3104, size: 256, offset: 640)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3099, file: !3100, line: 41, baseType: !3124, size: 64, offset: 896)
!3124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !687, line: 56, size: 64, elements: !3125)
!3125 = !{!3126}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3124, file: !687, line: 57, baseType: !690, size: 64)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "mem_used", scope: !3099, file: !3100, line: 42, baseType: !219, size: 32, offset: 960)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "mem_limit", scope: !3099, file: !3100, line: 43, baseType: !109, size: 32, offset: 992)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !3099, file: !3100, line: 44, baseType: !3103, size: 64, offset: 1024)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3095, file: !3096, line: 103, baseType: !2519, size: 64, offset: 1088)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "itty", scope: !3095, file: !3096, line: 104, baseType: !2519, size: 64, offset: 1152)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3095, file: !3096, line: 105, baseType: !3133, size: 64, offset: 1216)
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!3134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3135)
!3135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port_operations", file: !3096, line: 33, size: 320, elements: !3136)
!3136 = !{!3137, !3141, !3145, !3149, !3153}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "carrier_raised", scope: !3135, file: !3096, line: 34, baseType: !3138, size: 64)
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3139 = !DISubroutineType(types: !3140)
!3140 = !{!881, !3094}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "dtr_rts", scope: !3135, file: !3096, line: 35, baseType: !3142, size: 64, offset: 64)
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = !DISubroutineType(types: !3144)
!3144 = !{null, !3094, !881}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3135, file: !3096, line: 36, baseType: !3146, size: 64, offset: 128)
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = !DISubroutineType(types: !3148)
!3148 = !{null, !3094}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3135, file: !3096, line: 37, baseType: !3150, size: 64, offset: 192)
!3150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3151, size: 64)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{!109, !3094, !2519}
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "destruct", scope: !3135, file: !3096, line: 38, baseType: !3146, size: 64, offset: 256)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "client_ops", scope: !3095, file: !3096, line: 106, baseType: !3155, size: 64, offset: 1280)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3156, size: 64)
!3156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3157)
!3157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port_client_operations", file: !3096, line: 41, size: 192, elements: !3158)
!3158 = !{!3159, !3165, !3169}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf", scope: !3157, file: !3096, line: 42, baseType: !3160, size: 64)
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3161 = !DISubroutineType(types: !3162)
!3162 = !{!316, !3094, !3163, !3163, !316}
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !227)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead_buf", scope: !3157, file: !3096, line: 44, baseType: !3166, size: 64, offset: 64)
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3167 = !DISubroutineType(types: !3168)
!3168 = !{null, !3094, !3163, !3163, !316}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !3157, file: !3096, line: 46, baseType: !3146, size: 64, offset: 128)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3095, file: !3096, line: 107, baseType: !199, size: 32, offset: 1344)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "blocked_open", scope: !3095, file: !3096, line: 108, baseType: !109, size: 32, offset: 1376)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3095, file: !3096, line: 109, baseType: !109, size: 32, offset: 1408)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "open_wait", scope: !3095, file: !3096, line: 110, baseType: !750, size: 192, offset: 1472)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "delta_msr_wait", scope: !3095, file: !3096, line: 111, baseType: !750, size: 192, offset: 1664)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3095, file: !3096, line: 112, baseType: !319, size: 64, offset: 1856)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "iflags", scope: !3095, file: !3096, line: 113, baseType: !319, size: 64, offset: 1920)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "console", scope: !3095, file: !3096, line: 114, baseType: !231, size: 1, offset: 1984, flags: DIFlagBitField, extraData: i64 1984)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3095, file: !3096, line: 115, baseType: !634, size: 256, offset: 2048)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "buf_mutex", scope: !3095, file: !3096, line: 116, baseType: !634, size: 256, offset: 2304)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_buf", scope: !3095, file: !3096, line: 117, baseType: !3181, size: 64, offset: 2560)
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_fifo", scope: !3095, file: !3096, line: 118, baseType: !3183, size: 192, offset: 2624)
!3183 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3095, file: !3096, line: 118, size: 192, elements: !3184)
!3184 = !{!3185, !3206}
!3185 = !DIDerivedType(tag: DW_TAG_member, scope: !3183, file: !3096, line: 118, baseType: !3186, size: 192)
!3186 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3183, file: !3096, line: 118, size: 192, elements: !3187)
!3187 = !{!3188, !3197, !3198, !3199, !3204, !3205}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "kfifo", scope: !3186, file: !3096, line: 118, baseType: !3189, size: 192)
!3189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kfifo", file: !3190, line: 44, size: 192, elements: !3191)
!3190 = !DIFile(filename: "./include/linux/kfifo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "686bd9b9dd318af094019d7cea015274")
!3191 = !{!3192, !3193, !3194, !3195, !3196}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !3189, file: !3190, line: 45, baseType: !7, size: 32)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !3189, file: !3190, line: 46, baseType: !7, size: 32, offset: 32)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3189, file: !3190, line: 47, baseType: !7, size: 32, offset: 64)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "esize", scope: !3189, file: !3190, line: 48, baseType: !7, size: 32, offset: 96)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3189, file: !3190, line: 49, baseType: !163, size: 64, offset: 128)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3186, file: !3096, line: 118, baseType: !3181, size: 64)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "const_type", scope: !3186, file: !3096, line: 118, baseType: !426, size: 64)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "rectype", scope: !3186, file: !3096, line: 118, baseType: !3200, size: 64)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, elements: !3202)
!3202 = !{!3203}
!3203 = !DISubrange(count: 0)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !3186, file: !3096, line: 118, baseType: !3181, size: 64)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_const", scope: !3186, file: !3096, line: 118, baseType: !426, size: 64)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !3183, file: !3096, line: 118, baseType: !3207, offset: 192)
!3207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, elements: !3202)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "close_delay", scope: !3095, file: !3096, line: 119, baseType: !7, size: 32, offset: 2816)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "closing_wait", scope: !3095, file: !3096, line: 120, baseType: !7, size: 32, offset: 2848)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "drain_delay", scope: !3095, file: !3096, line: 121, baseType: !109, size: 32, offset: 2880)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3095, file: !3096, line: 122, baseType: !2524, size: 32, offset: 2912)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !3095, file: !3096, line: 123, baseType: !163, size: 64, offset: 2944)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "termios", scope: !3040, file: !3041, line: 463, baseType: !3214, size: 64, offset: 1152)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "driver_state", scope: !3040, file: !3041, line: 464, baseType: !163, size: 64, offset: 1216)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3040, file: !3041, line: 470, baseType: !3218, size: 64, offset: 1280)
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3220)
!3220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_operations", file: !3041, line: 357, size: 2176, elements: !3221)
!3221 = !{!3222, !3226, !3230, !3234, !3238, !3242, !3246, !3247, !3251, !3255, !3256, !3260, !3261, !3265, !3269, !3275, !3276, !3277, !3278, !3279, !3280, !3284, !3285, !3286, !3287, !3291, !3295, !3299, !3303, !3315, !3321, !3327, !3328, !3332}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !3220, file: !3041, line: 358, baseType: !3223, size: 64)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = !DISubroutineType(types: !3225)
!3225 = !{!2519, !3039, !1009, !109}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "install", scope: !3220, file: !3041, line: 360, baseType: !3227, size: 64, offset: 64)
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = !DISubroutineType(types: !3229)
!3229 = !{!109, !3039, !2519}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3220, file: !3041, line: 361, baseType: !3231, size: 64, offset: 128)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3232 = !DISubroutineType(types: !3233)
!3233 = !{null, !3039, !2519}
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3220, file: !3041, line: 362, baseType: !3235, size: 64, offset: 192)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = !DISubroutineType(types: !3237)
!3237 = !{!109, !2519, !1009}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !3220, file: !3041, line: 363, baseType: !3239, size: 64, offset: 256)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = !DISubroutineType(types: !3241)
!3241 = !{null, !2519, !1009}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3220, file: !3041, line: 364, baseType: !3243, size: 64, offset: 320)
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3244, size: 64)
!3244 = !DISubroutineType(types: !3245)
!3245 = !{null, !2519}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !3220, file: !3041, line: 365, baseType: !3243, size: 64, offset: 384)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3220, file: !3041, line: 366, baseType: !3248, size: 64, offset: 448)
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3249, size: 64)
!3249 = !DISubroutineType(types: !3250)
!3250 = !{!301, !2519, !3163, !316}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "put_char", scope: !3220, file: !3041, line: 367, baseType: !3252, size: 64, offset: 512)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{!109, !2519, !227}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "flush_chars", scope: !3220, file: !3041, line: 368, baseType: !3243, size: 64, offset: 576)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "write_room", scope: !3220, file: !3041, line: 369, baseType: !3257, size: 64, offset: 640)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{!7, !2519}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "chars_in_buffer", scope: !3220, file: !3041, line: 370, baseType: !3257, size: 64, offset: 704)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !3220, file: !3041, line: 371, baseType: !3262, size: 64, offset: 768)
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = !DISubroutineType(types: !3264)
!3264 = !{!109, !2519, !7, !319}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3220, file: !3041, line: 373, baseType: !3266, size: 64, offset: 832)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = !DISubroutineType(types: !3268)
!3268 = !{!305, !2519, !7, !319}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !3220, file: !3041, line: 375, baseType: !3270, size: 64, offset: 896)
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3271 = !DISubroutineType(types: !3272)
!3272 = !{null, !2519, !3273}
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3066)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "throttle", scope: !3220, file: !3041, line: 376, baseType: !3243, size: 64, offset: 960)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "unthrottle", scope: !3220, file: !3041, line: 377, baseType: !3243, size: 64, offset: 1024)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !3220, file: !3041, line: 378, baseType: !3243, size: 64, offset: 1088)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3220, file: !3041, line: 379, baseType: !3243, size: 64, offset: 1152)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "hangup", scope: !3220, file: !3041, line: 380, baseType: !3243, size: 64, offset: 1216)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "break_ctl", scope: !3220, file: !3041, line: 381, baseType: !3281, size: 64, offset: 1280)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{!109, !2519, !109}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !3220, file: !3041, line: 382, baseType: !3243, size: 64, offset: 1344)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc_ok", scope: !3220, file: !3041, line: 383, baseType: !3281, size: 64, offset: 1408)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "set_ldisc", scope: !3220, file: !3041, line: 384, baseType: !3243, size: 64, offset: 1472)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "wait_until_sent", scope: !3220, file: !3041, line: 385, baseType: !3288, size: 64, offset: 1536)
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3289 = !DISubroutineType(types: !3290)
!3290 = !{null, !2519, !109}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "send_xchar", scope: !3220, file: !3041, line: 386, baseType: !3292, size: 64, offset: 1600)
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3293, size: 64)
!3293 = !DISubroutineType(types: !3294)
!3294 = !{null, !2519, !177}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmget", scope: !3220, file: !3041, line: 387, baseType: !3296, size: 64, offset: 1664)
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = !DISubroutineType(types: !3298)
!3298 = !{!109, !2519}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmset", scope: !3220, file: !3041, line: 388, baseType: !3300, size: 64, offset: 1728)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = !DISubroutineType(types: !3302)
!3302 = !{!109, !2519, !7, !7}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "resize", scope: !3220, file: !3041, line: 390, baseType: !3304, size: 64, offset: 1792)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = !DISubroutineType(types: !3306)
!3306 = !{!109, !2519, !3307}
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3308, size: 64)
!3308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "winsize", file: !3309, line: 15, size: 64, elements: !3310)
!3309 = !DIFile(filename: "./include/uapi/asm-generic/termios.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "83182bb4b2d72f890f10e6cd5fb4db00")
!3310 = !{!3311, !3312, !3313, !3314}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "ws_row", scope: !3308, file: !3309, line: 16, baseType: !239, size: 16)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "ws_col", scope: !3308, file: !3309, line: 17, baseType: !239, size: 16, offset: 16)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "ws_xpixel", scope: !3308, file: !3309, line: 18, baseType: !239, size: 16, offset: 32)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "ws_ypixel", scope: !3308, file: !3309, line: 19, baseType: !239, size: 16, offset: 48)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "get_icount", scope: !3220, file: !3041, line: 391, baseType: !3316, size: 64, offset: 1856)
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3317, size: 64)
!3317 = !DISubroutineType(types: !3318)
!3318 = !{!109, !2519, !3319}
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DICompositeType(tag: DW_TAG_structure_type, name: "serial_icounter_struct", file: !3041, line: 16, flags: DIFlagFwdDecl)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "get_serial", scope: !3220, file: !3041, line: 393, baseType: !3322, size: 64, offset: 1920)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DISubroutineType(types: !3324)
!3324 = !{!109, !2519, !3325}
!3325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3326, size: 64)
!3326 = !DICompositeType(tag: DW_TAG_structure_type, name: "serial_struct", file: !3041, line: 17, flags: DIFlagFwdDecl)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "set_serial", scope: !3220, file: !3041, line: 394, baseType: !3322, size: 64, offset: 1984)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3220, file: !3041, line: 395, baseType: !3329, size: 64, offset: 2048)
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3330, size: 64)
!3330 = !DISubroutineType(types: !3331)
!3331 = !{null, !2519, !622}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "proc_show", scope: !3220, file: !3041, line: 401, baseType: !673, size: 64, offset: 2112)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "tty_drivers", scope: !3040, file: !3041, line: 471, baseType: !169, size: 128, offset: 1344)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2520, file: !2521, line: 198, baseType: !3094, size: 64, offset: 192)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2520, file: !2521, line: 199, baseType: !3218, size: 64, offset: 256)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc", scope: !2520, file: !2521, line: 201, baseType: !3337, size: 64, offset: 320)
!3337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3338, size: 64)
!3338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_ldisc", file: !3339, line: 269, size: 128, elements: !3340)
!3339 = !DIFile(filename: "./include/linux/tty_ldisc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1510e65bb17193581d5a2fc2c531d25e")
!3340 = !{!3341, !3382}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3338, file: !3339, line: 270, baseType: !3342, size: 64)
!3342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3343, size: 64)
!3343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_ldisc_ops", file: !3339, line: 231, size: 1152, elements: !3344)
!3344 = !{!3345, !3346, !3347, !3348, !3349, !3350, !3355, !3359, !3360, !3361, !3362, !3366, !3367, !3371, !3372, !3376, !3380, !3381}
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3343, file: !3339, line: 232, baseType: !269, size: 64)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3343, file: !3339, line: 233, baseType: !109, size: 32, offset: 64)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3343, file: !3339, line: 238, baseType: !3296, size: 64, offset: 128)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !3343, file: !3339, line: 239, baseType: !3243, size: 64, offset: 192)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !3343, file: !3339, line: 240, baseType: !3243, size: 64, offset: 256)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3343, file: !3339, line: 241, baseType: !3351, size: 64, offset: 320)
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = !DISubroutineType(types: !3353)
!3353 = !{!301, !2519, !1009, !3354, !316, !1653, !319}
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3343, file: !3339, line: 243, baseType: !3356, size: 64, offset: 384)
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3357 = !DISubroutineType(types: !3358)
!3358 = !{!301, !2519, !1009, !3163, !316}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !3343, file: !3339, line: 245, baseType: !3262, size: 64, offset: 448)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3343, file: !3339, line: 247, baseType: !3262, size: 64, offset: 512)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !3343, file: !3339, line: 249, baseType: !3270, size: 64, offset: 576)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3343, file: !3339, line: 250, baseType: !3363, size: 64, offset: 640)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{!1127, !2519, !1009, !1129}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "hangup", scope: !3343, file: !3339, line: 252, baseType: !3243, size: 64, offset: 704)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf", scope: !3343, file: !3339, line: 257, baseType: !3368, size: 64, offset: 768)
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3369, size: 64)
!3369 = !DISubroutineType(types: !3370)
!3370 = !{null, !2519, !3163, !3163, !316}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !3343, file: !3339, line: 259, baseType: !3243, size: 64, offset: 832)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "dcd_change", scope: !3343, file: !3339, line: 260, baseType: !3373, size: 64, offset: 896)
!3373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3374, size: 64)
!3374 = !DISubroutineType(types: !3375)
!3375 = !{null, !2519, !881}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf2", scope: !3343, file: !3339, line: 261, baseType: !3377, size: 64, offset: 960)
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3378, size: 64)
!3378 = !DISubroutineType(types: !3379)
!3379 = !{!316, !2519, !3163, !3163, !316}
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead_buf", scope: !3343, file: !3339, line: 263, baseType: !3368, size: 64, offset: 1024)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3343, file: !3339, line: 266, baseType: !164, size: 64, offset: 1088)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3338, file: !3339, line: 271, baseType: !2519, size: 64, offset: 64)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc_sem", scope: !2520, file: !2521, line: 202, baseType: !3384, size: 384, offset: 384)
!3384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ld_semaphore", file: !3339, line: 17, size: 384, elements: !3385)
!3385 = !{!3386, !3387, !3388, !3389, !3390}
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3384, file: !3339, line: 18, baseType: !638, size: 64)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !3384, file: !3339, line: 19, baseType: !647, size: 32, offset: 64)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "wait_readers", scope: !3384, file: !3339, line: 20, baseType: !7, size: 32, offset: 96)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !3384, file: !3339, line: 21, baseType: !169, size: 128, offset: 128)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "write_wait", scope: !3384, file: !3339, line: 22, baseType: !169, size: 128, offset: 256)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_lock", scope: !2520, file: !2521, line: 204, baseType: !634, size: 256, offset: 768)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mutex", scope: !2520, file: !2521, line: 205, baseType: !634, size: 256, offset: 1024)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_mutex", scope: !2520, file: !2521, line: 206, baseType: !634, size: 256, offset: 1280)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "termios_rwsem", scope: !2520, file: !2521, line: 207, baseType: !822, size: 320, offset: 1536)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "winsize_mutex", scope: !2520, file: !2521, line: 208, baseType: !634, size: 256, offset: 1856)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "termios", scope: !2520, file: !2521, line: 209, baseType: !3066, size: 352, offset: 2112)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "termios_locked", scope: !2520, file: !2521, line: 209, baseType: !3066, size: 352, offset: 2464)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2520, file: !2521, line: 210, baseType: !3399, size: 512, offset: 2816)
!3399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 512, elements: !274)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2520, file: !2521, line: 211, baseType: !319, size: 64, offset: 3328)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2520, file: !2521, line: 212, baseType: !109, size: 32, offset: 3392)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "receive_room", scope: !2520, file: !2521, line: 213, baseType: !7, size: 32, offset: 3424)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "winsize", scope: !2520, file: !2521, line: 214, baseType: !3308, size: 64, offset: 3456)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !2520, file: !2521, line: 221, baseType: !3405, size: 64, align: 64, offset: 3520)
!3405 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2520, file: !2521, line: 216, size: 64, align: 64, elements: !3406)
!3406 = !{!3407, !3408, !3409, !3410}
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3405, file: !2521, line: 217, baseType: !199, size: 32)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "stopped", scope: !3405, file: !2521, line: 218, baseType: !881, size: 8, offset: 32)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "tco_stopped", scope: !3405, file: !2521, line: 219, baseType: !881, size: 8, offset: 40)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !3405, file: !2521, line: 220, baseType: !3411, offset: 64)
!3411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, elements: !3202)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !2520, file: !2521, line: 230, baseType: !3413, size: 192, align: 64, offset: 3584)
!3413 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2520, file: !2521, line: 223, size: 192, align: 64, elements: !3414)
!3414 = !{!3415, !3416, !3417, !3418, !3419, !3420}
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "pgrp", scope: !3413, file: !2521, line: 224, baseType: !733, size: 64)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !3413, file: !2521, line: 225, baseType: !733, size: 64, offset: 64)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3413, file: !2521, line: 226, baseType: !199, size: 32, offset: 128)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "pktstatus", scope: !3413, file: !2521, line: 227, baseType: !231, size: 8, offset: 160)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "packet", scope: !3413, file: !2521, line: 228, baseType: !881, size: 8, offset: 168)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !3413, file: !2521, line: 229, baseType: !3411, offset: 192)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "hw_stopped", scope: !2520, file: !2521, line: 232, baseType: !881, size: 8, offset: 3776)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "closing", scope: !2520, file: !2521, line: 233, baseType: !881, size: 8, offset: 3784)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "flow_change", scope: !2520, file: !2521, line: 234, baseType: !109, size: 32, offset: 3808)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2520, file: !2521, line: 236, baseType: !2519, size: 64, offset: 3840)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2520, file: !2521, line: 237, baseType: !3426, size: 64, offset: 3904)
!3426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3427, size: 64)
!3427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !14, line: 1083, size: 384, elements: !3428)
!3428 = !{!3429, !3430, !3431, !3432, !3433, !3434}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3427, file: !14, line: 1084, baseType: !712, size: 64)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3427, file: !14, line: 1085, baseType: !109, size: 32, offset: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3427, file: !14, line: 1086, baseType: !109, size: 32, offset: 96)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3427, file: !14, line: 1087, baseType: !3426, size: 64, offset: 128)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3427, file: !14, line: 1088, baseType: !1009, size: 64, offset: 192)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3427, file: !14, line: 1089, baseType: !692, size: 128, align: 64, offset: 256)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "write_wait", scope: !2520, file: !2521, line: 238, baseType: !750, size: 192, offset: 3968)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !2520, file: !2521, line: 239, baseType: !750, size: 192, offset: 4160)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "hangup_work", scope: !2520, file: !2521, line: 240, baseType: !1307, size: 256, offset: 4352)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "disc_data", scope: !2520, file: !2521, line: 241, baseType: !163, size: 64, offset: 4608)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2520, file: !2521, line: 242, baseType: !163, size: 64, offset: 4672)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "files_lock", scope: !2520, file: !2521, line: 243, baseType: !199, size: 32, offset: 4736)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "write_cnt", scope: !2520, file: !2521, line: 244, baseType: !109, size: 32, offset: 4768)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !2520, file: !2521, line: 245, baseType: !3181, size: 64, offset: 4800)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "tty_files", scope: !2520, file: !2521, line: 247, baseType: !169, size: 128, offset: 4864)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "SAK_work", scope: !2520, file: !2521, line: 250, baseType: !1307, size: 256, offset: 4992)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2452, file: !2453, line: 185, baseType: !3446, size: 64, offset: 3328)
!3446 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !391, line: 860, baseType: !3447)
!3447 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !391, line: 853, size: 64, elements: !3448)
!3448 = !{!3449, !3450}
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3447, file: !391, line: 858, baseType: !390, size: 32)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3447, file: !391, line: 859, baseType: !199, size: 32, offset: 32)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2452, file: !2453, line: 186, baseType: !422, size: 64, offset: 3392)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2452, file: !2453, line: 186, baseType: !422, size: 64, offset: 3456)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2452, file: !2453, line: 186, baseType: !422, size: 64, offset: 3520)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2452, file: !2453, line: 186, baseType: !422, size: 64, offset: 3584)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2452, file: !2453, line: 187, baseType: !422, size: 64, offset: 3648)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2452, file: !2453, line: 188, baseType: !422, size: 64, offset: 3712)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2452, file: !2453, line: 189, baseType: !2386, size: 192, offset: 3776)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2452, file: !2453, line: 190, baseType: !319, size: 64, offset: 3968)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2452, file: !2453, line: 190, baseType: !319, size: 64, offset: 4032)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2452, file: !2453, line: 190, baseType: !319, size: 64, offset: 4096)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2452, file: !2453, line: 190, baseType: !319, size: 64, offset: 4160)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2452, file: !2453, line: 191, baseType: !319, size: 64, offset: 4224)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2452, file: !2453, line: 191, baseType: !319, size: 64, offset: 4288)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2452, file: !2453, line: 191, baseType: !319, size: 64, offset: 4352)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2452, file: !2453, line: 191, baseType: !319, size: 64, offset: 4416)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2452, file: !2453, line: 192, baseType: !319, size: 64, offset: 4480)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2452, file: !2453, line: 192, baseType: !319, size: 64, offset: 4544)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2452, file: !2453, line: 192, baseType: !319, size: 64, offset: 4608)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2452, file: !2453, line: 192, baseType: !319, size: 64, offset: 4672)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2452, file: !2453, line: 193, baseType: !319, size: 64, offset: 4736)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2452, file: !2453, line: 193, baseType: !319, size: 64, offset: 4800)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2452, file: !2453, line: 194, baseType: !3473, size: 448, offset: 4864)
!3473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3474, line: 12, size: 448, elements: !3475)
!3474 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3475 = !{!3476, !3477, !3478, !3479, !3480, !3481, !3482}
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3473, file: !3474, line: 15, baseType: !422, size: 64)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3473, file: !3474, line: 17, baseType: !422, size: 64, offset: 64)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3473, file: !3474, line: 19, baseType: !422, size: 64, offset: 128)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3473, file: !3474, line: 21, baseType: !422, size: 64, offset: 192)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3473, file: !3474, line: 29, baseType: !422, size: 64, offset: 256)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3473, file: !3474, line: 35, baseType: !422, size: 64, offset: 320)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3473, file: !3474, line: 44, baseType: !422, size: 64, offset: 384)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2452, file: !2453, line: 202, baseType: !424, size: 64, offset: 5312)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2452, file: !2453, line: 213, baseType: !3485, size: 2048, offset: 5376)
!3485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3486, size: 2048, elements: !2421)
!3486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3487, line: 43, size: 128, elements: !3488)
!3487 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3488 = !{!3489, !3490}
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3486, file: !3487, line: 44, baseType: !318, size: 64)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3486, file: !3487, line: 45, baseType: !318, size: 64, offset: 64)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2452, file: !2453, line: 216, baseType: !3492, size: 448, offset: 7424)
!3492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2453, line: 30, size: 448, elements: !3493)
!3493 = !{!3494, !3495, !3496, !3497, !3498, !3499, !3500}
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3492, file: !2453, line: 31, baseType: !109, size: 32)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3492, file: !2453, line: 32, baseType: !305, size: 64, offset: 64)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3492, file: !2453, line: 33, baseType: !319, size: 64, offset: 128)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3492, file: !2453, line: 34, baseType: !422, size: 64, offset: 192)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3492, file: !2453, line: 34, baseType: !422, size: 64, offset: 256)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3492, file: !2453, line: 35, baseType: !319, size: 64, offset: 320)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3492, file: !2453, line: 35, baseType: !319, size: 64, offset: 384)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2452, file: !2453, line: 219, baseType: !3502, size: 64, offset: 7872)
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3503, size: 64)
!3503 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2453, line: 219, flags: DIFlagFwdDecl)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2452, file: !2453, line: 222, baseType: !7, size: 32, offset: 7936)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2452, file: !2453, line: 223, baseType: !3506, size: 64, offset: 8000)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2453, line: 223, flags: DIFlagFwdDecl)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2452, file: !2453, line: 230, baseType: !881, size: 8, offset: 8064)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2452, file: !2453, line: 231, baseType: !850, size: 16, offset: 8080)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2452, file: !2453, line: 232, baseType: !850, size: 16, offset: 8096)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2452, file: !2453, line: 234, baseType: !1153, size: 64, offset: 8128)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2452, file: !2453, line: 237, baseType: !634, size: 256, offset: 8192)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2452, file: !2453, line: 243, baseType: !822, size: 320, offset: 8448)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1995, file: !1587, line: 1111, baseType: !3515, size: 64, offset: 15424)
!3515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3516, size: 64)
!3516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2453, line: 20, size: 16640, elements: !3517)
!3517 = !{!3518, !3519, !3520, !3521}
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3516, file: !2453, line: 21, baseType: !199, size: 32)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3516, file: !2453, line: 22, baseType: !737, size: 32, offset: 32)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3516, file: !2453, line: 23, baseType: !750, size: 192, offset: 64)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3516, file: !2453, line: 24, baseType: !3522, size: 16384, offset: 256)
!3522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3523, size: 16384, elements: !274)
!3523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !969, line: 51, size: 256, elements: !3524)
!3524 = !{!3525}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3523, file: !969, line: 52, baseType: !3526, size: 256)
!3526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !969, line: 37, size: 256, elements: !3527)
!3527 = !{!3528, !3535, !3536, !3542}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3526, file: !969, line: 39, baseType: !3529, size: 64)
!3529 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3530, line: 83, baseType: !3531)
!3530 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3532, size: 64)
!3532 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3530, line: 82, baseType: !3533)
!3533 = !DISubroutineType(types: !3534)
!3534 = !{null, !109}
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3526, file: !969, line: 40, baseType: !319, size: 64, offset: 64)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3526, file: !969, line: 46, baseType: !3537, size: 64, offset: 128)
!3537 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3530, line: 86, baseType: !3538)
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3539, size: 64)
!3539 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3530, line: 85, baseType: !3540)
!3540 = !DISubroutineType(types: !3541)
!3541 = !{null}
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3526, file: !969, line: 48, baseType: !2467, size: 64, offset: 192)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1995, file: !1587, line: 1112, baseType: !2467, size: 64, offset: 15488)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1995, file: !1587, line: 1113, baseType: !2467, size: 64, offset: 15552)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1995, file: !1587, line: 1115, baseType: !2467, size: 64, offset: 15616)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1995, file: !1587, line: 1116, baseType: !2463, size: 192, offset: 15680)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1995, file: !1587, line: 1117, baseType: !319, size: 64, offset: 15872)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1995, file: !1587, line: 1118, baseType: !316, size: 64, offset: 15936)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1995, file: !1587, line: 1119, baseType: !7, size: 32, offset: 16000)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1995, file: !1587, line: 1121, baseType: !695, size: 64, offset: 16064)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1995, file: !1587, line: 1125, baseType: !3552, size: 64, offset: 16128)
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3553, size: 64)
!3553 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1587, line: 43, flags: DIFlagFwdDecl)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1995, file: !1587, line: 1127, baseType: !355, size: 32, offset: 16192)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1995, file: !1587, line: 1128, baseType: !7, size: 32, offset: 16224)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1995, file: !1587, line: 1130, baseType: !3557, size: 128, offset: 16256)
!3557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3558, line: 37, size: 128, elements: !3559)
!3558 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3559 = !{!3560, !3561, !3562}
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3557, file: !3558, line: 38, baseType: !109, size: 32)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3557, file: !3558, line: 39, baseType: !219, size: 32, offset: 32)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3557, file: !3558, line: 40, baseType: !3563, size: 64, offset: 64)
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3564 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3558, line: 24, flags: DIFlagFwdDecl)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1995, file: !1587, line: 1131, baseType: !3566, size: 256, offset: 16384)
!3566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3567, line: 12, size: 256, elements: !3568)
!3567 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3568 = !{!3569, !3570, !3571, !3572}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3566, file: !3567, line: 13, baseType: !269, size: 64)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3566, file: !3567, line: 14, baseType: !319, size: 64, offset: 64)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3566, file: !3567, line: 15, baseType: !319, size: 64, offset: 128)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3566, file: !3567, line: 16, baseType: !881, size: 8, offset: 192)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1995, file: !1587, line: 1134, baseType: !422, size: 64, offset: 16640)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1995, file: !1587, line: 1135, baseType: !422, size: 64, offset: 16704)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1995, file: !1587, line: 1138, baseType: !199, size: 32, offset: 16768)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1995, file: !1587, line: 1141, baseType: !647, size: 32, offset: 16800)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1995, file: !1587, line: 1143, baseType: !3578, size: 64, offset: 16832)
!3578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1587, line: 735, size: 64, elements: !3579)
!3579 = !{!3580}
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3578, file: !1587, line: 736, baseType: !3581, size: 64)
!3581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3578, size: 64)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1995, file: !1587, line: 1147, baseType: !2164, size: 128, offset: 16896)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1995, file: !1587, line: 1149, baseType: !1994, size: 64, offset: 17024)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1995, file: !1587, line: 1151, baseType: !3585, size: 64, offset: 17088)
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3586, size: 64)
!3586 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1587, line: 1151, flags: DIFlagFwdDecl)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1995, file: !1587, line: 1188, baseType: !163, size: 64, offset: 17152)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1995, file: !1587, line: 1191, baseType: !3589, size: 64, offset: 17216)
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3590, size: 64)
!3590 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1587, line: 44, flags: DIFlagFwdDecl)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1995, file: !1587, line: 1194, baseType: !3592, size: 64, offset: 17280)
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3593, size: 64)
!3593 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1587, line: 45, flags: DIFlagFwdDecl)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1995, file: !1587, line: 1197, baseType: !3595, size: 64, offset: 17344)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1587, line: 61, flags: DIFlagFwdDecl)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1995, file: !1587, line: 1199, baseType: !3598, size: 64, offset: 17408)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3600, line: 99, size: 128, elements: !3601)
!3600 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3601 = !{!3602, !3603, !3604}
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3599, file: !3600, line: 100, baseType: !638, size: 64)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3599, file: !3600, line: 101, baseType: !219, size: 32, offset: 64)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3599, file: !3600, line: 103, baseType: !239, size: 16, offset: 96)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1995, file: !1587, line: 1202, baseType: !3606, size: 64, offset: 17472)
!3606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3607, size: 64)
!3607 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1587, line: 48, flags: DIFlagFwdDecl)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1995, file: !1587, line: 1205, baseType: !319, size: 64, offset: 17536)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1995, file: !1587, line: 1206, baseType: !3610, size: 64, offset: 17600)
!3610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3611, size: 64)
!3611 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !969, line: 14, baseType: !3612)
!3612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !969, line: 12, size: 384, elements: !3613)
!3613 = !{!3614}
!3614 = !DIDerivedType(tag: DW_TAG_member, scope: !3612, file: !969, line: 13, baseType: !3615, size: 384)
!3615 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3612, file: !969, line: 13, size: 384, elements: !3616)
!3616 = !{!3617, !3618, !3619, !3620}
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3615, file: !969, line: 13, baseType: !109, size: 32)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3615, file: !969, line: 13, baseType: !109, size: 32, offset: 32)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3615, file: !969, line: 13, baseType: !109, size: 32, offset: 64)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3615, file: !969, line: 13, baseType: !3621, size: 256, offset: 128)
!3621 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3622, line: 37, size: 256, elements: !3623)
!3622 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3623 = !{!3624, !3629, !3642, !3648, !3657, !3684, !3689}
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3621, file: !3622, line: 42, baseType: !3625, size: 64)
!3625 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3621, file: !3622, line: 39, size: 64, elements: !3626)
!3626 = !{!3627, !3628}
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3625, file: !3622, line: 40, baseType: !2362, size: 32)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3625, file: !3622, line: 41, baseType: !361, size: 32, offset: 32)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3621, file: !3622, line: 50, baseType: !3630, size: 192)
!3630 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3621, file: !3622, line: 45, size: 192, elements: !3631)
!3631 = !{!3632, !3634, !3635, !3641}
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3630, file: !3622, line: 46, baseType: !3633, size: 32)
!3633 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !303, line: 95, baseType: !109)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3630, file: !3622, line: 47, baseType: !109, size: 32, offset: 32)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3630, file: !3622, line: 48, baseType: !3636, size: 64, offset: 64)
!3636 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3622, line: 11, baseType: !3637)
!3637 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3622, line: 8, size: 64, elements: !3638)
!3638 = !{!3639, !3640}
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3637, file: !3622, line: 9, baseType: !109, size: 32)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3637, file: !3622, line: 10, baseType: !163, size: 64)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3630, file: !3622, line: 49, baseType: !109, size: 32, offset: 128)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3621, file: !3622, line: 57, baseType: !3643, size: 128)
!3643 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3621, file: !3622, line: 53, size: 128, elements: !3644)
!3644 = !{!3645, !3646, !3647}
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3643, file: !3622, line: 54, baseType: !2362, size: 32)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3643, file: !3622, line: 55, baseType: !361, size: 32, offset: 32)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3643, file: !3622, line: 56, baseType: !3636, size: 64, offset: 64)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3621, file: !3622, line: 66, baseType: !3649, size: 256)
!3649 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3621, file: !3622, line: 60, size: 256, elements: !3650)
!3650 = !{!3651, !3652, !3653, !3654, !3656}
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3649, file: !3622, line: 61, baseType: !2362, size: 32)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3649, file: !3622, line: 62, baseType: !361, size: 32, offset: 32)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3649, file: !3622, line: 63, baseType: !109, size: 32, offset: 64)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3649, file: !3622, line: 64, baseType: !3655, size: 64, offset: 128)
!3655 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !303, line: 94, baseType: !304)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3649, file: !3622, line: 65, baseType: !3655, size: 64, offset: 192)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3621, file: !3622, line: 105, baseType: !3658, size: 256)
!3658 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3621, file: !3622, line: 69, size: 256, elements: !3659)
!3659 = !{!3660, !3661}
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3658, file: !3622, line: 70, baseType: !163, size: 64)
!3661 = !DIDerivedType(tag: DW_TAG_member, scope: !3658, file: !3622, line: 79, baseType: !3662, size: 192, offset: 64)
!3662 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3658, file: !3622, line: 79, size: 192, elements: !3663)
!3663 = !{!3664, !3665, !3666, !3673, !3678}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3662, file: !3622, line: 81, baseType: !109, size: 32)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3662, file: !3622, line: 86, baseType: !850, size: 16)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3662, file: !3622, line: 92, baseType: !3667, size: 192)
!3667 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3662, file: !3622, line: 88, size: 192, elements: !3668)
!3668 = !{!3669, !3671, !3672}
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3667, file: !3622, line: 89, baseType: !3670, size: 64)
!3670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 64, elements: !2148)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3667, file: !3622, line: 90, baseType: !163, size: 64, offset: 64)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3667, file: !3622, line: 91, baseType: !163, size: 64, offset: 128)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3662, file: !3622, line: 97, baseType: !3674, size: 96)
!3674 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3662, file: !3622, line: 94, size: 96, elements: !3675)
!3675 = !{!3676, !3677}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3674, file: !3622, line: 95, baseType: !3670, size: 64)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3674, file: !3622, line: 96, baseType: !419, size: 32, offset: 64)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3662, file: !3622, line: 103, baseType: !3679, size: 128)
!3679 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3662, file: !3622, line: 99, size: 128, elements: !3680)
!3680 = !{!3681, !3682, !3683}
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3679, file: !3622, line: 100, baseType: !319, size: 64)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3679, file: !3622, line: 101, baseType: !419, size: 32, offset: 64)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3679, file: !3622, line: 102, baseType: !419, size: 32, offset: 96)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3621, file: !3622, line: 111, baseType: !3685, size: 128)
!3685 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3621, file: !3622, line: 108, size: 128, elements: !3686)
!3686 = !{!3687, !3688}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3685, file: !3622, line: 109, baseType: !305, size: 64)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3685, file: !3622, line: 110, baseType: !109, size: 32, offset: 64)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3621, file: !3622, line: 118, baseType: !3690, size: 128)
!3690 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3621, file: !3622, line: 114, size: 128, elements: !3691)
!3691 = !{!3692, !3693, !3694}
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3690, file: !3622, line: 115, baseType: !163, size: 64)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3690, file: !3622, line: 116, baseType: !109, size: 32, offset: 64)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3690, file: !3622, line: 117, baseType: !7, size: 32, offset: 96)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1995, file: !1587, line: 1208, baseType: !3473, size: 448, offset: 17664)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1995, file: !1587, line: 1215, baseType: !422, size: 64, offset: 18112)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1995, file: !1587, line: 1217, baseType: !422, size: 64, offset: 18176)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1995, file: !1587, line: 1219, baseType: !422, size: 64, offset: 18240)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1995, file: !1587, line: 1223, baseType: !3700, size: 64, offset: 18304)
!3700 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3701, line: 99, baseType: !3702)
!3701 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3702 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3701, line: 99, size: 64, elements: !3703)
!3703 = !{!3704}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3702, file: !3701, line: 99, baseType: !2232, size: 64)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1995, file: !1587, line: 1225, baseType: !390, size: 32, offset: 18368)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1995, file: !1587, line: 1226, baseType: !109, size: 32, offset: 18400)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1995, file: !1587, line: 1227, baseType: !109, size: 32, offset: 18432)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1995, file: !1587, line: 1231, baseType: !3709, size: 64, offset: 18496)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1587, line: 1231, flags: DIFlagFwdDecl)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1995, file: !1587, line: 1233, baseType: !169, size: 128, offset: 18560)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1995, file: !1587, line: 1240, baseType: !3713, size: 64, offset: 18688)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1587, line: 62, flags: DIFlagFwdDecl)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1995, file: !1587, line: 1242, baseType: !3716, size: 64, offset: 18752)
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3717, size: 64)
!3717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !3718, line: 392, size: 96, elements: !3719)
!3718 = !DIFile(filename: "./include/linux/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb3431a0ca9e11a8015b961c002b640")
!3719 = !{!3720, !3726, !3728}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3717, file: !3718, line: 393, baseType: !3721, size: 32)
!3721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list", file: !3718, line: 388, size: 32, elements: !3722)
!3722 = !{!3723}
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3721, file: !3718, line: 389, baseType: !3724, size: 32)
!3724 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_uptr_t", file: !3725, line: 46, baseType: !418)
!3725 = !DIFile(filename: "./include/asm-generic/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "789dd20e6944b4211a8be38fb9d0b245")
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "futex_offset", scope: !3717, file: !3718, line: 394, baseType: !3727, size: 32, offset: 32)
!3727 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_long_t", file: !3725, line: 42, baseType: !807)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "list_op_pending", scope: !3717, file: !3718, line: 395, baseType: !3724, size: 32, offset: 64)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1995, file: !1587, line: 1244, baseType: !169, size: 128, offset: 18816)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1995, file: !1587, line: 1245, baseType: !3731, size: 64, offset: 18944)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1587, line: 51, flags: DIFlagFwdDecl)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1995, file: !1587, line: 1246, baseType: !634, size: 256, offset: 19008)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1995, file: !1587, line: 1247, baseType: !7, size: 32, offset: 19264)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1995, file: !1587, line: 1250, baseType: !3736, size: 64, offset: 19328)
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3737, size: 64)
!3737 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1587, line: 57, flags: DIFlagFwdDecl)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1995, file: !1587, line: 1251, baseType: !634, size: 256, offset: 19392)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1995, file: !1587, line: 1252, baseType: !169, size: 128, offset: 19648)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1995, file: !1587, line: 1259, baseType: !1585, size: 64, offset: 19776)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1995, file: !1587, line: 1260, baseType: !850, size: 16, offset: 19840)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1995, file: !1587, line: 1261, baseType: !850, size: 16, offset: 19856)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1995, file: !1587, line: 1314, baseType: !3744, size: 64, offset: 19904)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3746, line: 62, size: 256, align: 256, elements: !3747)
!3746 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3747 = !{!3748, !3749, !3750, !3751, !3752, !3753, !3754}
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3745, file: !3746, line: 75, baseType: !419, size: 32)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3745, file: !3746, line: 90, baseType: !419, size: 32, offset: 32)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3745, file: !3746, line: 112, baseType: !423, size: 64, offset: 64)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3745, file: !3746, line: 132, baseType: !419, size: 32, offset: 128)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3745, file: !3746, line: 140, baseType: !419, size: 32, offset: 160)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3745, file: !3746, line: 149, baseType: !419, size: 32, offset: 192)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3745, file: !3746, line: 154, baseType: !3755, offset: 224)
!3755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, elements: !765)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1995, file: !1587, line: 1315, baseType: !418, size: 32, offset: 19968)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1995, file: !1587, line: 1316, baseType: !418, size: 32, offset: 20000)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1995, file: !1587, line: 1321, baseType: !319, size: 64, offset: 20032)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1995, file: !1587, line: 1325, baseType: !109, size: 32, offset: 20096)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1995, file: !1587, line: 1326, baseType: !109, size: 32, offset: 20128)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1995, file: !1587, line: 1327, baseType: !109, size: 32, offset: 20160)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1995, file: !1587, line: 1328, baseType: !109, size: 32, offset: 20192)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1995, file: !1587, line: 1329, baseType: !692, size: 128, align: 64, offset: 20224)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1995, file: !1587, line: 1332, baseType: !3765, size: 128, offset: 20352)
!3765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3766, line: 51, size: 128, elements: !3767)
!3766 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3767 = !{!3768, !3773, !3774}
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3765, file: !3766, line: 60, baseType: !3769, size: 64)
!3769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3770, line: 7, size: 64, elements: !3771)
!3770 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3771 = !{!3772}
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3769, file: !3770, line: 12, baseType: !2229, size: 64)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3765, file: !3766, line: 63, baseType: !881, size: 8, offset: 64)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3765, file: !3766, line: 70, baseType: !881, size: 8, offset: 72)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1995, file: !1587, line: 1335, baseType: !1638, size: 64, offset: 20480)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1995, file: !1587, line: 1337, baseType: !3777, size: 128, offset: 20544)
!3777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3766, line: 39, size: 128, elements: !3778)
!3778 = !{!3779, !3780, !3781}
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3777, file: !3766, line: 40, baseType: !1414, size: 64)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3777, file: !3766, line: 42, baseType: !419, size: 32, offset: 64)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3777, file: !3766, line: 43, baseType: !419, size: 32, offset: 96)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1995, file: !1587, line: 1340, baseType: !3783, size: 64, offset: 20672)
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1587, line: 69, flags: DIFlagFwdDecl)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1995, file: !1587, line: 1351, baseType: !109, size: 32, offset: 20736)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1995, file: !1587, line: 1352, baseType: !109, size: 32, offset: 20768)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1995, file: !1587, line: 1354, baseType: !319, size: 64, offset: 20800)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1995, file: !1587, line: 1364, baseType: !422, size: 64, offset: 20864)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1995, file: !1587, line: 1365, baseType: !422, size: 64, offset: 20928)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1995, file: !1587, line: 1412, baseType: !319, size: 64, offset: 20992)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1995, file: !1587, line: 1453, baseType: !3792, size: 64, offset: 21056)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1587, line: 1453, flags: DIFlagFwdDecl)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1995, file: !1587, line: 1457, baseType: !3795, size: 64, offset: 21120)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !3797)
!3797 = !{!3798, !3799, !3818, !3821, !3822, !3855, !3865}
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3796, file: !68, line: 62, baseType: !67, size: 32)
!3799 = !DIDerivedType(tag: DW_TAG_member, scope: !3796, file: !68, line: 64, baseType: !3800, size: 192, offset: 64)
!3800 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3796, file: !68, line: 64, size: 192, elements: !3801)
!3801 = !{!3802, !3813}
!3802 = !DIDerivedType(tag: DW_TAG_member, scope: !3800, file: !68, line: 65, baseType: !3803, size: 192)
!3803 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3800, file: !68, line: 65, size: 192, elements: !3804)
!3804 = !{!3805, !3812}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3803, file: !68, line: 66, baseType: !3806, size: 128)
!3806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3807, line: 50, size: 128, elements: !3808)
!3807 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3808 = !{!3809, !3810, !3811}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3806, file: !3807, line: 52, baseType: !319, size: 64)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3806, file: !3807, line: 54, baseType: !7, size: 32, offset: 64)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3806, file: !3807, line: 55, baseType: !7, size: 32, offset: 96)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3803, file: !68, line: 67, baseType: !319, size: 64, offset: 128)
!3813 = !DIDerivedType(tag: DW_TAG_member, scope: !3800, file: !68, line: 70, baseType: !3814, size: 192)
!3814 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3800, file: !68, line: 70, size: 192, elements: !3815)
!3815 = !{!3816, !3817}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3814, file: !68, line: 71, baseType: !692, size: 128, align: 64)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3814, file: !68, line: 72, baseType: !319, size: 64, offset: 128)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3796, file: !68, line: 76, baseType: !3819, size: 64, offset: 256)
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3820 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3796, file: !68, line: 77, baseType: !319, size: 64, offset: 320)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3796, file: !68, line: 79, baseType: !3823, size: 64, offset: 384)
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3824, size: 64)
!3824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3807, line: 25, size: 256, elements: !3825)
!3825 = !{!3826, !3832, !3836}
!3826 = !DIDerivedType(tag: DW_TAG_member, scope: !3824, file: !3807, line: 26, baseType: !3827, size: 128)
!3827 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3824, file: !3807, line: 26, size: 128, elements: !3828)
!3828 = !{!3829, !3831}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3827, file: !3807, line: 27, baseType: !3830, size: 128)
!3830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 128, elements: !2421)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3827, file: !3807, line: 28, baseType: !3830, size: 128)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3824, file: !3807, line: 31, baseType: !3833, size: 64, offset: 128)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3835)
!3835 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3807, line: 23, flags: DIFlagFwdDecl)
!3836 = !DIDerivedType(tag: DW_TAG_member, scope: !3824, file: !3807, line: 33, baseType: !3837, size: 64, offset: 192)
!3837 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3824, file: !3807, line: 33, size: 64, elements: !3838)
!3838 = !{!3839, !3845, !3850}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3837, file: !3807, line: 38, baseType: !3840, size: 64)
!3840 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3837, file: !3807, line: 34, size: 64, elements: !3841)
!3841 = !{!3842, !3843, !3844}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3840, file: !3807, line: 35, baseType: !807, size: 32)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3840, file: !3807, line: 36, baseType: !227, size: 8, offset: 32)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3840, file: !3807, line: 37, baseType: !227, size: 8, offset: 40)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3837, file: !3807, line: 42, baseType: !3846, size: 16)
!3846 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3837, file: !3807, line: 39, size: 16, elements: !3847)
!3847 = !{!3848, !3849}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3846, file: !3807, line: 40, baseType: !227, size: 8)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3846, file: !3807, line: 41, baseType: !227, size: 8, offset: 8)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3837, file: !3807, line: 46, baseType: !3851, size: 16)
!3851 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3837, file: !3807, line: 43, size: 16, elements: !3852)
!3852 = !{!3853, !3854}
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3851, file: !3807, line: 44, baseType: !227, size: 8)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3851, file: !3807, line: 45, baseType: !227, size: 8, offset: 8)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3796, file: !68, line: 81, baseType: !3856, size: 64, offset: 448)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !3858)
!3858 = !{!3859, !3860, !3861, !3862, !3863, !3864}
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3857, file: !68, line: 86, baseType: !3819, size: 64)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3857, file: !68, line: 87, baseType: !319, size: 64, offset: 64)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3857, file: !68, line: 88, baseType: !319, size: 64, offset: 128)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3857, file: !68, line: 89, baseType: !319, size: 64, offset: 192)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3857, file: !68, line: 90, baseType: !881, size: 8, offset: 256)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3857, file: !68, line: 92, baseType: !3856, size: 64, offset: 320)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3796, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1995, file: !1587, line: 1463, baseType: !3867, offset: 21184)
!3867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1587, line: 739, elements: !553)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1995, file: !1587, line: 1470, baseType: !692, size: 128, align: 64, offset: 21184)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1995, file: !1587, line: 1471, baseType: !737, size: 32, offset: 21312)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1995, file: !1587, line: 1472, baseType: !109, size: 32, offset: 21344)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1995, file: !1587, line: 1474, baseType: !1994, size: 64, offset: 21376)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1995, file: !1587, line: 1475, baseType: !2723, size: 320, offset: 21440)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1995, file: !1587, line: 1478, baseType: !3874, size: 64, offset: 21760)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3876, line: 49, size: 512, elements: !3877)
!3876 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3877 = !{!3878, !3879, !3880, !3881, !3882, !3884, !3885, !3886, !3888}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3875, file: !3876, line: 50, baseType: !3874, size: 64)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3875, file: !3876, line: 51, baseType: !163, size: 64, offset: 64)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3875, file: !3876, line: 52, baseType: !319, size: 64, offset: 128)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3875, file: !3876, line: 53, baseType: !319, size: 64, offset: 192)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3875, file: !3876, line: 54, baseType: !3883, size: 64, offset: 256)
!3883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3875, file: !3876, line: 56, baseType: !7, size: 32, offset: 320)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3875, file: !3876, line: 58, baseType: !7, size: 32, offset: 352)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3875, file: !3876, line: 59, baseType: !3887, size: 64, offset: 384)
!3887 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !170, line: 159, baseType: !422)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3875, file: !3876, line: 60, baseType: !1268, size: 64, offset: 448)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1995, file: !1587, line: 1482, baseType: !737, size: 32, offset: 21824)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1995, file: !1587, line: 1489, baseType: !163, size: 64, offset: 21888)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1995, file: !1587, line: 1504, baseType: !163, size: 64, offset: 21952)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1995, file: !1587, line: 1505, baseType: !423, size: 64, offset: 22016)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1995, file: !1587, line: 1506, baseType: !422, size: 64, offset: 22080)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1995, file: !1587, line: 1507, baseType: !423, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1995, file: !1587, line: 1508, baseType: !423, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1995, file: !1587, line: 1509, baseType: !423, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1995, file: !1587, line: 1510, baseType: !692, size: 128, align: 64, offset: 22208)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1995, file: !1587, line: 1511, baseType: !109, size: 32, offset: 22336)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1995, file: !1587, line: 1515, baseType: !3124, size: 64, offset: 22400)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1995, file: !1587, line: 1518, baseType: !3124, size: 64, offset: 22464)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1995, file: !1587, line: 1528, baseType: !692, size: 128, align: 64, offset: 22528)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1995, file: !1587, line: 1552, baseType: !3903, size: 35328, offset: 23040)
!3903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3904, line: 430, size: 35328, elements: !3905)
!3904 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3905 = !{!3906, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3935, !3936, !3937, !3938, !3939, !3940, !3943, !3944, !3945, !3946}
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3903, file: !3904, line: 432, baseType: !3907, size: 192)
!3907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3908, size: 192, elements: !270)
!3908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3909, line: 16, size: 64, elements: !3910)
!3909 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3910 = !{!3911, !3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3908, file: !3909, line: 17, baseType: !237, size: 16)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3908, file: !3909, line: 18, baseType: !237, size: 16, offset: 16)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3908, file: !3909, line: 19, baseType: !237, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3908, file: !3909, line: 19, baseType: !237, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3908, file: !3909, line: 19, baseType: !237, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3908, file: !3909, line: 19, baseType: !237, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3908, file: !3909, line: 19, baseType: !237, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3908, file: !3909, line: 20, baseType: !237, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3908, file: !3909, line: 20, baseType: !237, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3908, file: !3909, line: 20, baseType: !237, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3908, file: !3909, line: 20, baseType: !237, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3908, file: !3909, line: 20, baseType: !237, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3908, file: !3909, line: 20, baseType: !237, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3903, file: !3904, line: 436, baseType: !319, size: 64, offset: 192)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3903, file: !3904, line: 440, baseType: !239, size: 16, offset: 256)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3903, file: !3904, line: 441, baseType: !239, size: 16, offset: 272)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3903, file: !3904, line: 442, baseType: !239, size: 16, offset: 288)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3903, file: !3904, line: 443, baseType: !239, size: 16, offset: 304)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3903, file: !3904, line: 447, baseType: !319, size: 64, offset: 320)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3903, file: !3904, line: 448, baseType: !319, size: 64, offset: 384)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3903, file: !3904, line: 459, baseType: !3932, size: 256, offset: 448)
!3932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3933, size: 256, elements: !746)
!3933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3934, size: 64)
!3934 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3904, line: 428, flags: DIFlagFwdDecl)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3903, file: !3904, line: 461, baseType: !319, size: 64, offset: 704)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3903, file: !3904, line: 463, baseType: !319, size: 64, offset: 768)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3903, file: !3904, line: 465, baseType: !319, size: 64, offset: 832)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3903, file: !3904, line: 466, baseType: !319, size: 64, offset: 896)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3903, file: !3904, line: 467, baseType: !319, size: 64, offset: 960)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3903, file: !3904, line: 473, baseType: !3941, size: 64, offset: 1024)
!3941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3942, size: 64)
!3942 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3904, line: 10, flags: DIFlagFwdDecl)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3903, file: !3904, line: 480, baseType: !319, size: 64, offset: 1088)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3903, file: !3904, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3903, file: !3904, line: 491, baseType: !418, size: 32, offset: 1184)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3903, file: !3904, line: 501, baseType: !3947, size: 33792, offset: 1536)
!3947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3948, line: 448, size: 33792, elements: !3949)
!3948 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3949 = !{!3950, !3951, !3952, !4113, !4114, !4120, !4121}
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3947, file: !3948, line: 461, baseType: !7, size: 32)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3947, file: !3948, line: 468, baseType: !319, size: 64, offset: 64)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3947, file: !3948, line: 476, baseType: !3953, size: 64, offset: 128)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3948, line: 356, size: 33280, align: 512, elements: !3955)
!3955 = !{!3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965}
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3954, file: !3948, line: 358, baseType: !7, size: 32)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3954, file: !3948, line: 361, baseType: !7, size: 32, offset: 32)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3954, file: !3948, line: 364, baseType: !422, size: 64, offset: 64)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3954, file: !3948, line: 367, baseType: !422, size: 64, offset: 128)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3954, file: !3948, line: 370, baseType: !422, size: 64, offset: 192)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3954, file: !3948, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3954, file: !3948, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3954, file: !3948, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3954, file: !3948, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3954, file: !3948, line: 397, baseType: !3966, size: 32768, offset: 512)
!3966 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3948, line: 348, size: 32768, elements: !3967)
!3967 = !{!3968, !3983, !4020, !4097, !4109}
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3966, file: !3948, line: 349, baseType: !3969, size: 896)
!3969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3948, line: 12, size: 896, elements: !3970)
!3970 = !{!3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3982}
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3969, file: !3948, line: 13, baseType: !418, size: 32)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3969, file: !3948, line: 14, baseType: !418, size: 32, offset: 32)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3969, file: !3948, line: 15, baseType: !418, size: 32, offset: 64)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3969, file: !3948, line: 16, baseType: !418, size: 32, offset: 96)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3969, file: !3948, line: 17, baseType: !418, size: 32, offset: 128)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3969, file: !3948, line: 18, baseType: !418, size: 32, offset: 160)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3969, file: !3948, line: 19, baseType: !418, size: 32, offset: 192)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3969, file: !3948, line: 22, baseType: !3979, size: 640, offset: 224)
!3979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 640, elements: !3980)
!3980 = !{!3981}
!3981 = !DISubrange(count: 20)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3969, file: !3948, line: 25, baseType: !418, size: 32, offset: 864)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3966, file: !3948, line: 350, baseType: !3984, size: 4096, align: 128)
!3984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3948, line: 34, size: 4096, align: 128, elements: !3985)
!3985 = !{!3986, !3987, !3988, !3989, !3990, !4005, !4006, !4007, !4009, !4011, !4015}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3984, file: !3948, line: 35, baseType: !237, size: 16)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3984, file: !3948, line: 36, baseType: !237, size: 16, offset: 16)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3984, file: !3948, line: 37, baseType: !237, size: 16, offset: 32)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3984, file: !3948, line: 38, baseType: !237, size: 16, offset: 48)
!3990 = !DIDerivedType(tag: DW_TAG_member, scope: !3984, file: !3948, line: 39, baseType: !3991, size: 128, offset: 64)
!3991 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3984, file: !3948, line: 39, size: 128, elements: !3992)
!3992 = !{!3993, !3998}
!3993 = !DIDerivedType(tag: DW_TAG_member, scope: !3991, file: !3948, line: 40, baseType: !3994, size: 128)
!3994 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3991, file: !3948, line: 40, size: 128, elements: !3995)
!3995 = !{!3996, !3997}
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3994, file: !3948, line: 41, baseType: !422, size: 64)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3994, file: !3948, line: 42, baseType: !422, size: 64, offset: 64)
!3998 = !DIDerivedType(tag: DW_TAG_member, scope: !3991, file: !3948, line: 44, baseType: !3999, size: 128)
!3999 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3991, file: !3948, line: 44, size: 128, elements: !4000)
!4000 = !{!4001, !4002, !4003, !4004}
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3999, file: !3948, line: 45, baseType: !418, size: 32)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3999, file: !3948, line: 46, baseType: !418, size: 32, offset: 32)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3999, file: !3948, line: 47, baseType: !418, size: 32, offset: 64)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3999, file: !3948, line: 48, baseType: !418, size: 32, offset: 96)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3984, file: !3948, line: 51, baseType: !418, size: 32, offset: 192)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3984, file: !3948, line: 52, baseType: !418, size: 32, offset: 224)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3984, file: !3948, line: 55, baseType: !4008, size: 1024, offset: 256)
!4008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 1024, elements: !431)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3984, file: !3948, line: 58, baseType: !4010, size: 2048, offset: 1280)
!4010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 2048, elements: !274)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3984, file: !3948, line: 60, baseType: !4012, size: 384, offset: 3328)
!4012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 384, elements: !4013)
!4013 = !{!4014}
!4014 = !DISubrange(count: 12)
!4015 = !DIDerivedType(tag: DW_TAG_member, scope: !3984, file: !3948, line: 62, baseType: !4016, size: 384, offset: 3712)
!4016 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3984, file: !3948, line: 62, size: 384, elements: !4017)
!4017 = !{!4018, !4019}
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4016, file: !3948, line: 63, baseType: !4012, size: 384)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4016, file: !3948, line: 64, baseType: !4012, size: 384)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3966, file: !3948, line: 351, baseType: !4021, size: 1088)
!4021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3948, line: 79, size: 1088, elements: !4022)
!4022 = !{!4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4096}
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4021, file: !3948, line: 80, baseType: !418, size: 32)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4021, file: !3948, line: 81, baseType: !418, size: 32, offset: 32)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4021, file: !3948, line: 82, baseType: !418, size: 32, offset: 64)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4021, file: !3948, line: 83, baseType: !418, size: 32, offset: 96)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4021, file: !3948, line: 84, baseType: !418, size: 32, offset: 128)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4021, file: !3948, line: 85, baseType: !418, size: 32, offset: 160)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4021, file: !3948, line: 86, baseType: !418, size: 32, offset: 192)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4021, file: !3948, line: 88, baseType: !3979, size: 640, offset: 224)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4021, file: !3948, line: 89, baseType: !227, size: 8, offset: 864)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4021, file: !3948, line: 90, baseType: !227, size: 8, offset: 872)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4021, file: !3948, line: 91, baseType: !227, size: 8, offset: 880)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4021, file: !3948, line: 92, baseType: !227, size: 8, offset: 888)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4021, file: !3948, line: 93, baseType: !227, size: 8, offset: 896)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4021, file: !3948, line: 94, baseType: !227, size: 8, offset: 904)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4021, file: !3948, line: 95, baseType: !4038, size: 64, offset: 960)
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4039, size: 64)
!4039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4040, line: 11, size: 128, elements: !4041)
!4040 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4041 = !{!4042, !4043}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4039, file: !4040, line: 12, baseType: !305, size: 64)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4039, file: !4040, line: 13, baseType: !4044, size: 64, offset: 64)
!4044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4045, size: 64)
!4045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4046, line: 103, size: 1344, elements: !4047)
!4046 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4047 = !{!4048, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4076, !4077, !4078}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4045, file: !4046, line: 109, baseType: !319, size: 64)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4045, file: !4046, line: 110, baseType: !319, size: 64, offset: 64)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4045, file: !4046, line: 111, baseType: !319, size: 64, offset: 128)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4045, file: !4046, line: 112, baseType: !319, size: 64, offset: 192)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4045, file: !4046, line: 113, baseType: !319, size: 64, offset: 256)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4045, file: !4046, line: 114, baseType: !319, size: 64, offset: 320)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4045, file: !4046, line: 117, baseType: !319, size: 64, offset: 384)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4045, file: !4046, line: 118, baseType: !319, size: 64, offset: 448)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4045, file: !4046, line: 119, baseType: !319, size: 64, offset: 512)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4045, file: !4046, line: 120, baseType: !319, size: 64, offset: 576)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4045, file: !4046, line: 121, baseType: !319, size: 64, offset: 640)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4045, file: !4046, line: 122, baseType: !319, size: 64, offset: 704)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4045, file: !4046, line: 123, baseType: !319, size: 64, offset: 768)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4045, file: !4046, line: 124, baseType: !319, size: 64, offset: 832)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4045, file: !4046, line: 125, baseType: !319, size: 64, offset: 896)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4045, file: !4046, line: 139, baseType: !319, size: 64, offset: 960)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4045, file: !4046, line: 142, baseType: !319, size: 64, offset: 1024)
!4065 = !DIDerivedType(tag: DW_TAG_member, scope: !4045, file: !4046, line: 144, baseType: !4066, size: 64, offset: 1088)
!4066 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4045, file: !4046, line: 144, size: 64, elements: !4067)
!4067 = !{!4068, !4069, !4070}
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4066, file: !4046, line: 146, baseType: !237, size: 16)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4066, file: !4046, line: 148, baseType: !422, size: 64)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4066, file: !4046, line: 150, baseType: !4071, size: 64)
!4071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4046, line: 59, size: 64, elements: !4072)
!4072 = !{!4073, !4074, !4075}
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4071, file: !4046, line: 61, baseType: !422, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4071, file: !4046, line: 63, baseType: !422, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4071, file: !4046, line: 65, baseType: !422, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4045, file: !4046, line: 153, baseType: !319, size: 64, offset: 1152)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4045, file: !4046, line: 154, baseType: !319, size: 64, offset: 1216)
!4078 = !DIDerivedType(tag: DW_TAG_member, scope: !4045, file: !4046, line: 156, baseType: !4079, size: 64, offset: 1280)
!4079 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4045, file: !4046, line: 156, size: 64, elements: !4080)
!4080 = !{!4081, !4082, !4083}
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4079, file: !4046, line: 158, baseType: !237, size: 16)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4079, file: !4046, line: 160, baseType: !422, size: 64)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4079, file: !4046, line: 162, baseType: !4084, size: 64)
!4084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4046, line: 69, size: 64, elements: !4085)
!4085 = !{!4086, !4087, !4088, !4089, !4090, !4091, !4092, !4093, !4094, !4095}
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4084, file: !4046, line: 71, baseType: !422, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4084, file: !4046, line: 73, baseType: !422, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4084, file: !4046, line: 75, baseType: !422, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4084, file: !4046, line: 77, baseType: !422, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4084, file: !4046, line: 80, baseType: !422, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4084, file: !4046, line: 83, baseType: !422, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4084, file: !4046, line: 86, baseType: !422, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4084, file: !4046, line: 88, baseType: !422, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4084, file: !4046, line: 93, baseType: !422, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4084, file: !4046, line: 100, baseType: !422, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4021, file: !3948, line: 96, baseType: !418, size: 32, offset: 1024)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3966, file: !3948, line: 352, baseType: !4098, size: 4608, align: 512)
!4098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3948, line: 333, size: 4608, align: 512, elements: !4099)
!4099 = !{!4100, !4101, !4108}
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4098, file: !3948, line: 334, baseType: !3984, size: 4096, align: 128)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4098, file: !3948, line: 335, baseType: !4102, size: 512, offset: 4096)
!4102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3948, line: 312, size: 512, elements: !4103)
!4103 = !{!4104, !4105, !4106}
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4102, file: !3948, line: 313, baseType: !422, size: 64)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4102, file: !3948, line: 314, baseType: !422, size: 64, offset: 64)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4102, file: !3948, line: 315, baseType: !4107, size: 384, offset: 128)
!4107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !422, size: 384, elements: !868)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4098, file: !3948, line: 336, baseType: !3118, offset: 4608)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3966, file: !3948, line: 353, baseType: !4110, size: 32768)
!4110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 32768, elements: !4111)
!4111 = !{!4112}
!4112 = !DISubrange(count: 4096)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3947, file: !3948, line: 484, baseType: !3953, size: 64, offset: 192)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3947, file: !3948, line: 491, baseType: !4115, size: 128, offset: 256)
!4115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3948, line: 404, size: 128, elements: !4116)
!4116 = !{!4117, !4118, !4119}
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4115, file: !3948, line: 424, baseType: !422, size: 64)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4115, file: !3948, line: 432, baseType: !7, size: 32, offset: 64)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4115, file: !3948, line: 440, baseType: !7, size: 32, offset: 96)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3947, file: !3948, line: 498, baseType: !4115, size: 128, offset: 384)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3947, file: !3948, line: 508, baseType: !3954, size: 33280, align: 512, offset: 512)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1976, file: !1977, line: 16, baseType: !750, size: 192, offset: 512)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1976, file: !1977, line: 17, baseType: !219, size: 32, offset: 704)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !501, file: !14, line: 1240, baseType: !163, size: 64, offset: 6912)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !501, file: !14, line: 1243, baseType: !418, size: 32, offset: 6976)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !501, file: !14, line: 1245, baseType: !838, size: 64, offset: 7040)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !501, file: !14, line: 1246, baseType: !838, size: 64, offset: 7104)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !501, file: !14, line: 1248, baseType: !419, size: 32, offset: 7168)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !501, file: !14, line: 1249, baseType: !4130, size: 64, offset: 7232)
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4131, size: 64)
!4131 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !501, file: !14, line: 1252, baseType: !2625, size: 256, offset: 7296)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !501, file: !14, line: 1253, baseType: !4134, size: 128, offset: 7552)
!4134 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4135, line: 21, baseType: !4136)
!4135 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4136 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4135, line: 19, size: 128, elements: !4137)
!4137 = !{!4138}
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4136, file: !4135, line: 20, baseType: !2638, size: 128)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !501, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !501, file: !14, line: 1261, baseType: !634, size: 256, offset: 7744)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !501, file: !14, line: 1267, baseType: !188, size: 64, offset: 8000)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !501, file: !14, line: 1269, baseType: !447, size: 64, offset: 8064)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !501, file: !14, line: 1271, baseType: !4144, size: 448, offset: 8128)
!4144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1756, line: 63, size: 448, elements: !4145)
!4145 = !{!4146, !4151, !4152, !4153, !4154, !4155, !4156}
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4144, file: !1756, line: 64, baseType: !4147, size: 64)
!4147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4148, size: 64)
!4148 = !DISubroutineType(types: !4149)
!4149 = !{!319, !4150, !1754}
!4150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4144, size: 64)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4144, file: !1756, line: 66, baseType: !4147, size: 64, offset: 64)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4144, file: !1756, line: 69, baseType: !305, size: 64, offset: 128)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4144, file: !1756, line: 70, baseType: !109, size: 32, offset: 192)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4144, file: !1756, line: 71, baseType: !7, size: 32, offset: 224)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4144, file: !1756, line: 74, baseType: !169, size: 128, offset: 256)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4144, file: !1756, line: 85, baseType: !4157, size: 64, offset: 384)
!4157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !501, file: !14, line: 1274, baseType: !638, size: 64, offset: 8576)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !501, file: !14, line: 1280, baseType: !638, size: 64, offset: 8640)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !501, file: !14, line: 1283, baseType: !109, size: 32, offset: 8704)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !501, file: !14, line: 1286, baseType: !1688, size: 32, offset: 8736)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !501, file: !14, line: 1289, baseType: !4163, size: 64, offset: 8768)
!4163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4164, size: 64)
!4164 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1308, line: 18, flags: DIFlagFwdDecl)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !501, file: !14, line: 1290, baseType: !541, size: 64, offset: 8832)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !501, file: !14, line: 1297, baseType: !964, size: 64, offset: 8896)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !501, file: !14, line: 1304, baseType: !4168, size: 64, offset: 8960)
!4168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4169, line: 49, size: 64, elements: !4170)
!4169 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4170 = !{!4171}
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4168, file: !4169, line: 50, baseType: !4172, size: 64)
!4172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4173, size: 64)
!4173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4169, line: 41, size: 512, align: 512, elements: !4174)
!4174 = !{!4175, !4176, !4181}
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4173, file: !4169, line: 43, baseType: !199, size: 32)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4173, file: !4169, line: 45, baseType: !4177, size: 192, offset: 64)
!4177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4169, line: 29, size: 192, elements: !4178)
!4178 = !{!4179, !4180}
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4177, file: !4169, line: 30, baseType: !169, size: 128)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4177, file: !4169, line: 32, baseType: !305, size: 64, offset: 128)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4173, file: !4169, line: 46, baseType: !305, size: 64, offset: 256)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !501, file: !14, line: 1305, baseType: !4168, size: 64, offset: 9024)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !501, file: !14, line: 1306, baseType: !692, size: 128, align: 64, offset: 9088)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !501, file: !14, line: 1307, baseType: !1307, size: 256, offset: 9216)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !501, file: !14, line: 1309, baseType: !634, size: 256, offset: 9472)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !501, file: !14, line: 1314, baseType: !109, size: 32, offset: 9728)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !501, file: !14, line: 1317, baseType: !199, size: 32, align: 512, offset: 10240)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !501, file: !14, line: 1318, baseType: !169, size: 128, offset: 10304)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !501, file: !14, line: 1320, baseType: !199, size: 32, offset: 10432)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !501, file: !14, line: 1321, baseType: !169, size: 128, offset: 10496)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !495, file: !496, line: 73, baseType: !109, size: 32, offset: 128)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !495, file: !496, line: 74, baseType: !4193, size: 64, offset: 192)
!4193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4194, size: 64)
!4194 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !789, line: 42, flags: DIFlagFwdDecl)
!4195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !449, file: !386, line: 141, baseType: !4197, size: 64, offset: 704)
!4197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4198 = !DISubroutineType(types: !4199)
!4199 = !{!109, !1816, !881}
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !449, file: !386, line: 142, baseType: !4201, size: 64, offset: 768)
!4201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4202, size: 64)
!4202 = !DISubroutineType(types: !4203)
!4203 = !{!384, !384, !4204}
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4205, size: 64)
!4205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !350)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !385, file: !386, line: 96, baseType: !500, size: 64, offset: 832)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !385, file: !386, line: 97, baseType: !319, size: 64, offset: 896)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !385, file: !386, line: 98, baseType: !163, size: 64, offset: 960)
!4209 = !DIDerivedType(tag: DW_TAG_member, scope: !385, file: !386, line: 100, baseType: !4210, size: 128, offset: 1024)
!4210 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !385, file: !386, line: 100, size: 128, elements: !4211)
!4211 = !{!4212, !4213}
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4210, file: !386, line: 101, baseType: !169, size: 128)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4210, file: !386, line: 102, baseType: !4214, size: 64)
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !385, file: !386, line: 104, baseType: !169, size: 128, offset: 1152)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !385, file: !386, line: 105, baseType: !169, size: 128, offset: 1280)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !385, file: !386, line: 113, baseType: !4218, size: 128, offset: 1408)
!4218 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !385, file: !386, line: 109, size: 128, elements: !4219)
!4219 = !{!4220, !4221, !4222}
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4218, file: !386, line: 110, baseType: !545, size: 128)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4218, file: !386, line: 111, baseType: !400, size: 128)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4218, file: !386, line: 112, baseType: !692, size: 128, align: 64)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !378, file: !14, line: 1968, baseType: !4224, size: 64, offset: 64)
!4224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4225, size: 64)
!4225 = !DISubroutineType(types: !4226)
!4226 = !{!188, !384, !349, !4227}
!4227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4228, size: 64)
!4228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4229, line: 10, size: 128, elements: !4230)
!4229 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4230 = !{!4231, !4232}
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4228, file: !4229, line: 11, baseType: !3003, size: 64)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4228, file: !4229, line: 12, baseType: !163, size: 64, offset: 64)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !378, file: !14, line: 1969, baseType: !4234, size: 64, offset: 128)
!4234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4235, size: 64)
!4235 = !DISubroutineType(types: !4236)
!4236 = !{!109, !4193, !349, !109}
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !378, file: !14, line: 1970, baseType: !4238, size: 64, offset: 192)
!4238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4239, size: 64)
!4239 = !DISubroutineType(types: !4240)
!4240 = !{!372, !349, !109, !881}
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !378, file: !14, line: 1972, baseType: !4242, size: 64, offset: 256)
!4242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4243, size: 64)
!4243 = !DISubroutineType(types: !4244)
!4244 = !{!109, !384, !269, !109}
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !378, file: !14, line: 1974, baseType: !4246, size: 64, offset: 320)
!4246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4247, size: 64)
!4247 = !DISubroutineType(types: !4248)
!4248 = !{!109, !4193, !349, !384, !311, !881}
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !378, file: !14, line: 1976, baseType: !4250, size: 64, offset: 384)
!4250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4251, size: 64)
!4251 = !DISubroutineType(types: !4252)
!4252 = !{!109, !384, !349, !384}
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !378, file: !14, line: 1977, baseType: !4254, size: 64, offset: 448)
!4254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4255, size: 64)
!4255 = !DISubroutineType(types: !4256)
!4256 = !{!109, !349, !384}
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !378, file: !14, line: 1978, baseType: !4258, size: 64, offset: 512)
!4258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4259, size: 64)
!4259 = !DISubroutineType(types: !4260)
!4260 = !{!109, !4193, !349, !384, !188}
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !378, file: !14, line: 1980, baseType: !4262, size: 64, offset: 576)
!4262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4263, size: 64)
!4263 = !DISubroutineType(types: !4264)
!4264 = !{!109, !4193, !349, !384, !311}
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !378, file: !14, line: 1982, baseType: !4254, size: 64, offset: 640)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !378, file: !14, line: 1983, baseType: !4267, size: 64, offset: 704)
!4267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4268, size: 64)
!4268 = !DISubroutineType(types: !4269)
!4269 = !{!109, !4193, !349, !384, !311, !505}
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !378, file: !14, line: 1985, baseType: !4271, size: 64, offset: 768)
!4271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4272, size: 64)
!4272 = !DISubroutineType(types: !4273)
!4273 = !{!109, !4193, !349, !384, !349, !384, !7}
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !378, file: !14, line: 1987, baseType: !4275, size: 64, offset: 832)
!4275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4276, size: 64)
!4276 = !DISubroutineType(types: !4277)
!4277 = !{!109, !4193, !384, !4278}
!4278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4279, size: 64)
!4279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !4280)
!4280 = !{!4281, !4282, !4283, !4293, !4302, !4303, !4308, !4309, !4310}
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4279, file: !14, line: 227, baseType: !7, size: 32)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4279, file: !14, line: 228, baseType: !311, size: 16, offset: 32)
!4283 = !DIDerivedType(tag: DW_TAG_member, scope: !4279, file: !14, line: 241, baseType: !4284, size: 32, offset: 64)
!4284 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4279, file: !14, line: 241, size: 32, elements: !4285)
!4285 = !{!4286, !4287}
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4284, file: !14, line: 242, baseType: !355, size: 32)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4284, file: !14, line: 243, baseType: !4288, size: 32)
!4288 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4289, line: 16, baseType: !4290)
!4289 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4290 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4289, line: 14, size: 32, elements: !4291)
!4291 = !{!4292}
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4290, file: !4289, line: 15, baseType: !360, size: 32)
!4293 = !DIDerivedType(tag: DW_TAG_member, scope: !4279, file: !14, line: 245, baseType: !4294, size: 32, offset: 96)
!4294 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4279, file: !14, line: 245, size: 32, elements: !4295)
!4295 = !{!4296, !4297}
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4294, file: !14, line: 246, baseType: !364, size: 32)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4294, file: !14, line: 247, baseType: !4298, size: 32)
!4298 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4289, line: 20, baseType: !4299)
!4299 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4289, line: 18, size: 32, elements: !4300)
!4300 = !{!4301}
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4299, file: !4289, line: 19, baseType: !368, size: 32)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4279, file: !14, line: 249, baseType: !510, size: 64, offset: 128)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4279, file: !14, line: 250, baseType: !4304, size: 128, offset: 192)
!4304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !839, line: 13, size: 128, elements: !4305)
!4305 = !{!4306, !4307}
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4304, file: !839, line: 14, baseType: !838, size: 64)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4304, file: !839, line: 15, baseType: !305, size: 64, offset: 64)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4279, file: !14, line: 251, baseType: !4304, size: 128, offset: 320)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4279, file: !14, line: 252, baseType: !4304, size: 128, offset: 448)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4279, file: !14, line: 259, baseType: !1009, size: 64, offset: 576)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !378, file: !14, line: 1988, baseType: !4312, size: 64, offset: 896)
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4313, size: 64)
!4313 = !DISubroutineType(types: !4314)
!4314 = !{!109, !4193, !1816, !4315, !418, !7}
!4315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4316, size: 64)
!4316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4317, line: 22, size: 1280, elements: !4318)
!4317 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4318 = !{!4319, !4320, !4321, !4322, !4323, !4324, !4325, !4326, !4327, !4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4339}
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4316, file: !4317, line: 23, baseType: !418, size: 32)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4316, file: !4317, line: 24, baseType: !311, size: 16, offset: 32)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4316, file: !4317, line: 25, baseType: !7, size: 32, offset: 64)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4316, file: !4317, line: 26, baseType: !846, size: 32, offset: 96)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4316, file: !4317, line: 27, baseType: !422, size: 64, offset: 128)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4316, file: !4317, line: 28, baseType: !422, size: 64, offset: 192)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4316, file: !4317, line: 41, baseType: !422, size: 64, offset: 256)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4316, file: !4317, line: 42, baseType: !505, size: 32, offset: 320)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4316, file: !4317, line: 43, baseType: !505, size: 32, offset: 352)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4316, file: !4317, line: 44, baseType: !355, size: 32, offset: 384)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4316, file: !4317, line: 45, baseType: !364, size: 32, offset: 416)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4316, file: !4317, line: 46, baseType: !510, size: 64, offset: 448)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4316, file: !4317, line: 47, baseType: !4304, size: 128, offset: 512)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4316, file: !4317, line: 48, baseType: !4304, size: 128, offset: 640)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4316, file: !4317, line: 49, baseType: !4304, size: 128, offset: 768)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4316, file: !4317, line: 50, baseType: !4304, size: 128, offset: 896)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4316, file: !4317, line: 51, baseType: !422, size: 64, offset: 1024)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4316, file: !4317, line: 52, baseType: !422, size: 64, offset: 1088)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4316, file: !4317, line: 53, baseType: !418, size: 32, offset: 1152)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4316, file: !4317, line: 54, baseType: !418, size: 32, offset: 1184)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4316, file: !4317, line: 55, baseType: !422, size: 64, offset: 1216)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !378, file: !14, line: 1990, baseType: !4341, size: 64, offset: 960)
!4341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4342, size: 64)
!4342 = !DISubroutineType(types: !4343)
!4343 = !{!301, !384, !269, !316}
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !378, file: !14, line: 1991, baseType: !4345, size: 64, offset: 1024)
!4345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4346, size: 64)
!4346 = !DISubroutineType(types: !4347)
!4347 = !{!109, !349, !4348, !422, !422}
!4348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4349, size: 64)
!4349 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !378, file: !14, line: 1993, baseType: !4351, size: 64, offset: 1088)
!4351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4352, size: 64)
!4352 = !DISubroutineType(types: !4353)
!4353 = !{!109, !349, !109}
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !378, file: !14, line: 1994, baseType: !4355, size: 64, offset: 1152)
!4355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4356, size: 64)
!4356 = !DISubroutineType(types: !4357)
!4357 = !{!109, !349, !384, !1009, !7, !311}
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !378, file: !14, line: 1997, baseType: !4359, size: 64, offset: 1216)
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4360, size: 64)
!4360 = !DISubroutineType(types: !4361)
!4361 = !{!109, !4193, !349, !1009, !311}
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !378, file: !14, line: 1999, baseType: !4363, size: 64, offset: 1280)
!4363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4364, size: 64)
!4364 = !DISubroutineType(types: !4365)
!4365 = !{!372, !4193, !384, !109}
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !378, file: !14, line: 2001, baseType: !4367, size: 64, offset: 1344)
!4367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4368, size: 64)
!4368 = !DISubroutineType(types: !4369)
!4369 = !{!109, !4193, !384, !372, !109}
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !378, file: !14, line: 2003, baseType: !4371, size: 64, offset: 1408)
!4371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4372, size: 64)
!4372 = !DISubroutineType(types: !4373)
!4373 = !{!109, !4193, !384, !4374}
!4374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4375, size: 64)
!4375 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !378, file: !14, line: 2005, baseType: !4377, size: 64, offset: 1472)
!4377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4378, size: 64)
!4378 = !DISubroutineType(types: !4379)
!4379 = !{!109, !384, !4374}
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !378, file: !14, line: 2006, baseType: !4381, size: 64, offset: 1536)
!4381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4382, size: 64)
!4382 = !DISubroutineType(types: !4383)
!4383 = !{!4384, !349}
!4384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4385, size: 64)
!4385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !4386)
!4386 = !{!4387, !4388}
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4385, file: !14, line: 3193, baseType: !1089, size: 128)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4385, file: !14, line: 3194, baseType: !418, size: 32, offset: 128)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !350, file: !14, line: 655, baseType: !500, size: 64, offset: 448)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !350, file: !14, line: 656, baseType: !345, size: 64, offset: 512)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !350, file: !14, line: 659, baseType: !163, size: 64, offset: 576)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !350, file: !14, line: 663, baseType: !319, size: 64, offset: 640)
!4393 = !DIDerivedType(tag: DW_TAG_member, scope: !350, file: !14, line: 671, baseType: !4394, size: 32, offset: 704)
!4394 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !350, file: !14, line: 671, size: 32, elements: !4395)
!4395 = !{!4396, !4398}
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4394, file: !14, line: 672, baseType: !4397, size: 32)
!4397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4394, file: !14, line: 673, baseType: !7, size: 32)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !350, file: !14, line: 675, baseType: !505, size: 32, offset: 736)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !350, file: !14, line: 676, baseType: !510, size: 64, offset: 768)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !350, file: !14, line: 677, baseType: !4304, size: 128, offset: 832)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !350, file: !14, line: 678, baseType: !4304, size: 128, offset: 960)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !350, file: !14, line: 679, baseType: !4304, size: 128, offset: 1088)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !350, file: !14, line: 680, baseType: !199, size: 32, offset: 1216)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !350, file: !14, line: 681, baseType: !239, size: 16, offset: 1248)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !350, file: !14, line: 682, baseType: !227, size: 8, offset: 1264)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !350, file: !14, line: 683, baseType: !227, size: 8, offset: 1272)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !350, file: !14, line: 684, baseType: !1889, size: 64, offset: 1280)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !350, file: !14, line: 691, baseType: !319, size: 64, offset: 1344)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !350, file: !14, line: 692, baseType: !822, size: 320, offset: 1408)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !350, file: !14, line: 694, baseType: !319, size: 64, offset: 1728)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !350, file: !14, line: 695, baseType: !319, size: 64, offset: 1792)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !350, file: !14, line: 697, baseType: !545, size: 128, offset: 1856)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !350, file: !14, line: 698, baseType: !169, size: 128, offset: 1984)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !350, file: !14, line: 707, baseType: !169, size: 128, offset: 2112)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !350, file: !14, line: 708, baseType: !169, size: 128, offset: 2240)
!4417 = !DIDerivedType(tag: DW_TAG_member, scope: !350, file: !14, line: 709, baseType: !4418, size: 128, offset: 2368)
!4418 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !350, file: !14, line: 709, size: 128, elements: !4419)
!4419 = !{!4420, !4421}
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4418, file: !14, line: 710, baseType: !541, size: 64)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4418, file: !14, line: 711, baseType: !692, size: 128, align: 64)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !350, file: !14, line: 713, baseType: !640, size: 64, offset: 2496)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !350, file: !14, line: 714, baseType: !640, size: 64, offset: 2560)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !350, file: !14, line: 715, baseType: !219, size: 32, offset: 2624)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !350, file: !14, line: 716, baseType: !219, size: 32, offset: 2656)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !350, file: !14, line: 717, baseType: !219, size: 32, offset: 2688)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !350, file: !14, line: 719, baseType: !219, size: 32, offset: 2720)
!4428 = !DIDerivedType(tag: DW_TAG_member, scope: !350, file: !14, line: 721, baseType: !4429, size: 64, offset: 2752)
!4429 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !350, file: !14, line: 721, size: 64, elements: !4430)
!4430 = !{!4431, !4432}
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4429, file: !14, line: 722, baseType: !1000, size: 64)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4429, file: !14, line: 723, baseType: !572, size: 64)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !350, file: !14, line: 725, baseType: !4434, size: 64, offset: 2816)
!4434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4435, size: 64)
!4435 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !350, file: !14, line: 726, baseType: !346, size: 1536, align: 64, offset: 2880)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !350, file: !14, line: 727, baseType: !169, size: 128, offset: 4416)
!4438 = !DIDerivedType(tag: DW_TAG_member, scope: !350, file: !14, line: 728, baseType: !4439, size: 64, offset: 4544)
!4439 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !350, file: !14, line: 728, size: 64, elements: !4440)
!4440 = !{!4441, !4442, !4443, !4444}
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4439, file: !14, line: 729, baseType: !1638, size: 64)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4439, file: !14, line: 730, baseType: !3046, size: 64)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4439, file: !14, line: 731, baseType: !269, size: 64)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4439, file: !14, line: 732, baseType: !7, size: 32)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !350, file: !14, line: 735, baseType: !419, size: 32, offset: 4608)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !350, file: !14, line: 738, baseType: !419, size: 32, offset: 4640)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !350, file: !14, line: 739, baseType: !4130, size: 64, offset: 4672)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !350, file: !14, line: 750, baseType: !163, size: 64, offset: 4736)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !346, file: !14, line: 474, baseType: !1089, size: 128, offset: 64)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !346, file: !14, line: 475, baseType: !822, size: 320, offset: 192)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !346, file: !14, line: 476, baseType: !1094, size: 32, offset: 512)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !346, file: !14, line: 477, baseType: !219, size: 32, offset: 544)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !346, file: !14, line: 482, baseType: !2164, size: 128, offset: 576)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !346, file: !14, line: 483, baseType: !319, size: 64, offset: 704)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !346, file: !14, line: 484, baseType: !319, size: 64, offset: 768)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !346, file: !14, line: 485, baseType: !4457, size: 64, offset: 832)
!4457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4458, size: 64)
!4458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4459)
!4459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !4460)
!4460 = !{!4461, !4465, !4535, !4539, !4543, !4549, !4553, !4557, !4562, !4566, !4570, !4574, !4575, !4579, !4583, !4587, !4592, !4596, !4603, !4604}
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !4459, file: !14, line: 405, baseType: !4462, size: 64)
!4462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4463, size: 64)
!4463 = !DISubroutineType(types: !4464)
!4464 = !{!109, !1414, !584}
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !4459, file: !14, line: 406, baseType: !4466, size: 64, offset: 64)
!4466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4467, size: 64)
!4467 = !DISubroutineType(types: !4468)
!4468 = !{!109, !1009, !4469}
!4469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4470, size: 64)
!4470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !27, line: 293, size: 1536, elements: !4471)
!4471 = !{!4472, !4502, !4516}
!4472 = !DIDerivedType(tag: DW_TAG_member, scope: !4470, file: !27, line: 295, baseType: !4473, size: 512)
!4473 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4470, file: !27, line: 295, size: 512, elements: !4474)
!4474 = !{!4475, !4501}
!4475 = !DIDerivedType(tag: DW_TAG_member, scope: !4473, file: !27, line: 296, baseType: !4476, size: 448)
!4476 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4473, file: !27, line: 296, size: 448, elements: !4477)
!4477 = !{!4478, !4479, !4488, !4489, !4490, !4499, !4500}
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4476, file: !27, line: 298, baseType: !319, size: 64)
!4479 = !DIDerivedType(tag: DW_TAG_member, scope: !4476, file: !27, line: 299, baseType: !4480, size: 128, offset: 64)
!4480 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4476, file: !27, line: 299, size: 128, elements: !4481)
!4481 = !{!4482, !4483}
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4480, file: !27, line: 300, baseType: !169, size: 128)
!4483 = !DIDerivedType(tag: DW_TAG_member, scope: !4480, file: !27, line: 302, baseType: !4484, size: 128)
!4484 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4480, file: !27, line: 302, size: 128, elements: !4485)
!4485 = !{!4486, !4487}
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !4484, file: !27, line: 303, baseType: !163, size: 64)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !4484, file: !27, line: 305, baseType: !7, size: 32, offset: 64)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4476, file: !27, line: 310, baseType: !345, size: 64, offset: 192)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4476, file: !27, line: 311, baseType: !319, size: 64, offset: 256)
!4490 = !DIDerivedType(tag: DW_TAG_member, scope: !4476, file: !27, line: 312, baseType: !4491, size: 64, offset: 320)
!4491 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4476, file: !27, line: 312, size: 64, elements: !4492)
!4492 = !{!4493, !4494}
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4491, file: !27, line: 313, baseType: !163, size: 64)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !4491, file: !27, line: 314, baseType: !4495, size: 64)
!4495 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !27, line: 257, baseType: !4496)
!4496 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !27, line: 255, size: 64, elements: !4497)
!4497 = !{!4498}
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4496, file: !27, line: 256, baseType: !319, size: 64)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4476, file: !27, line: 316, baseType: !219, size: 32, offset: 384)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !4476, file: !27, line: 317, baseType: !219, size: 32, offset: 416)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4473, file: !27, line: 323, baseType: !1415, size: 512, align: 128)
!4502 = !DIDerivedType(tag: DW_TAG_member, scope: !4470, file: !27, line: 325, baseType: !4503, size: 512, offset: 512)
!4503 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4470, file: !27, line: 325, size: 512, elements: !4504)
!4504 = !{!4505, !4515}
!4505 = !DIDerivedType(tag: DW_TAG_member, scope: !4503, file: !27, line: 326, baseType: !4506, size: 320)
!4506 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4503, file: !27, line: 326, size: 320, elements: !4507)
!4507 = !{!4508, !4509, !4510, !4511, !4512, !4513, !4514}
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !4506, file: !27, line: 327, baseType: !319, size: 64)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !4506, file: !27, line: 328, baseType: !319, size: 64, offset: 64)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !4506, file: !27, line: 329, baseType: !319, size: 64, offset: 128)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !4506, file: !27, line: 331, baseType: !219, size: 32, offset: 192)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !4506, file: !27, line: 332, baseType: !219, size: 32, offset: 224)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !4506, file: !27, line: 333, baseType: !219, size: 32, offset: 256)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !4506, file: !27, line: 335, baseType: !7, size: 32, offset: 288)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !4503, file: !27, line: 339, baseType: !1415, size: 512, align: 128)
!4516 = !DIDerivedType(tag: DW_TAG_member, scope: !4470, file: !27, line: 341, baseType: !4517, size: 512, offset: 1024)
!4517 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4470, file: !27, line: 341, size: 512, elements: !4518)
!4518 = !{!4519, !4528, !4534}
!4519 = !DIDerivedType(tag: DW_TAG_member, scope: !4517, file: !27, line: 342, baseType: !4520, size: 384)
!4520 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4517, file: !27, line: 342, size: 384, elements: !4521)
!4521 = !{!4522, !4523, !4524, !4525, !4526, !4527}
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !4520, file: !27, line: 343, baseType: !319, size: 64)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !4520, file: !27, line: 344, baseType: !319, size: 64, offset: 64)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !4520, file: !27, line: 346, baseType: !163, size: 64, offset: 128)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !4520, file: !27, line: 347, baseType: !163, size: 64, offset: 192)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !4520, file: !27, line: 348, baseType: !163, size: 64, offset: 256)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !4520, file: !27, line: 349, baseType: !163, size: 64, offset: 320)
!4528 = !DIDerivedType(tag: DW_TAG_member, scope: !4517, file: !27, line: 352, baseType: !4529, size: 256)
!4529 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4517, file: !27, line: 352, size: 256, elements: !4530)
!4530 = !{!4531, !4532, !4533}
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !4529, file: !27, line: 353, baseType: !319, size: 64)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !4529, file: !27, line: 354, baseType: !319, size: 64, offset: 64)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !4529, file: !27, line: 356, baseType: !169, size: 128, offset: 128)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !4517, file: !27, line: 359, baseType: !1415, size: 512, align: 128)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !4459, file: !14, line: 409, baseType: !4536, size: 64, offset: 128)
!4536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4537, size: 64)
!4537 = !DISubroutineType(types: !4538)
!4538 = !{!109, !345, !584}
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !4459, file: !14, line: 412, baseType: !4540, size: 64, offset: 192)
!4540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4541, size: 64)
!4541 = !DISubroutineType(types: !4542)
!4542 = !{!881, !345, !4469}
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !4459, file: !14, line: 414, baseType: !4544, size: 64, offset: 256)
!4544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4545, size: 64)
!4545 = !DISubroutineType(types: !4546)
!4546 = !{null, !4547}
!4547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4548, size: 64)
!4548 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !4459, file: !14, line: 416, baseType: !4550, size: 64, offset: 320)
!4550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4551, size: 64)
!4551 = !DISubroutineType(types: !4552)
!4552 = !{!109, !1009, !345, !510, !7, !3883, !1653}
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !4459, file: !14, line: 419, baseType: !4554, size: 64, offset: 384)
!4554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4555, size: 64)
!4555 = !DISubroutineType(types: !4556)
!4556 = !{!109, !1009, !345, !510, !7, !7, !1414, !163}
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4459, file: !14, line: 424, baseType: !4558, size: 64, offset: 448)
!4558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4559, size: 64)
!4559 = !DISubroutineType(types: !4560)
!4560 = !{!4561, !345, !4561}
!4561 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !170, line: 131, baseType: !422)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !4459, file: !14, line: 425, baseType: !4563, size: 64, offset: 512)
!4563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4564, size: 64)
!4564 = !DISubroutineType(types: !4565)
!4565 = !{null, !4469, !316, !316}
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !4459, file: !14, line: 426, baseType: !4567, size: 64, offset: 576)
!4567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4568, size: 64)
!4568 = !DISubroutineType(types: !4569)
!4569 = !{!881, !4469, !1094}
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !4459, file: !14, line: 427, baseType: !4571, size: 64, offset: 640)
!4571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4572, size: 64)
!4572 = !DISubroutineType(types: !4573)
!4573 = !{null, !4469}
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !4459, file: !14, line: 428, baseType: !1019, size: 64, offset: 704)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !4459, file: !14, line: 433, baseType: !4576, size: 64, offset: 768)
!4576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4577, size: 64)
!4577 = !DISubroutineType(types: !4578)
!4578 = !{!109, !345, !4469, !4469, !74}
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !4459, file: !14, line: 435, baseType: !4580, size: 64, offset: 832)
!4580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4581, size: 64)
!4581 = !DISubroutineType(types: !4582)
!4582 = !{!109, !4469}
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !4459, file: !14, line: 436, baseType: !4584, size: 64, offset: 896)
!4584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4585, size: 64)
!4585 = !DISubroutineType(types: !4586)
!4586 = !{!881, !4469, !316, !316}
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !4459, file: !14, line: 438, baseType: !4588, size: 64, offset: 960)
!4588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4589, size: 64)
!4589 = !DISubroutineType(types: !4590)
!4590 = !{null, !4469, !4591, !4591}
!4591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !4459, file: !14, line: 439, baseType: !4593, size: 64, offset: 1024)
!4593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4594, size: 64)
!4594 = !DISubroutineType(types: !4595)
!4595 = !{!109, !345, !1414}
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !4459, file: !14, line: 442, baseType: !4597, size: 64, offset: 1088)
!4597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4598, size: 64)
!4598 = !DISubroutineType(types: !4599)
!4599 = !{!109, !4600, !1009, !4602}
!4600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4601, size: 64)
!4601 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!4602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4561, size: 64)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !4459, file: !14, line: 444, baseType: !1645, size: 64, offset: 1152)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !4459, file: !14, line: 445, baseType: !4605, size: 64, offset: 1216)
!4605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4606, size: 64)
!4606 = !DISubroutineType(types: !4607)
!4607 = !{!109, !1022, !1044}
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !346, file: !14, line: 486, baseType: !319, size: 64, offset: 896)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !346, file: !14, line: 487, baseType: !822, size: 320, offset: 960)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !346, file: !14, line: 488, baseType: !1688, size: 32, offset: 1280)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !346, file: !14, line: 489, baseType: !199, size: 32, offset: 1312)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !346, file: !14, line: 490, baseType: !169, size: 128, offset: 1344)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !346, file: !14, line: 491, baseType: !163, size: 64, offset: 1472)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !336, file: !295, line: 180, baseType: !4615, size: 64, offset: 320)
!4615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4616, size: 64)
!4616 = !DISubroutineType(types: !4617)
!4617 = !{!301, !1009, !192, !335, !269, !510, !316}
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !336, file: !295, line: 182, baseType: !4615, size: 64, offset: 384)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !336, file: !295, line: 184, baseType: !4620, size: 64, offset: 448)
!4620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4621, size: 64)
!4621 = !DISubroutineType(types: !4622)
!4622 = !{!109, !1009, !192, !335, !1140}
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !324, file: !295, line: 90, baseType: !4624, size: 64, offset: 192)
!4624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !324, file: !295, line: 91, baseType: !4626, size: 64, offset: 256)
!4626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !285, file: !185, line: 120, baseType: !4628, size: 64, offset: 192)
!4628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4629, size: 64)
!4629 = !DISubroutineType(types: !4630)
!4630 = !{!2979, !252}
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !285, file: !185, line: 121, baseType: !4632, size: 64, offset: 256)
!4632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4633, size: 64)
!4633 = !DISubroutineType(types: !4634)
!4634 = !{!1268, !252}
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !285, file: !185, line: 122, baseType: !4636, size: 64, offset: 320)
!4636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4637, size: 64)
!4637 = !DISubroutineType(types: !4638)
!4638 = !{null, !252, !2557, !2558}
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !184, file: !185, line: 70, baseType: !4640, size: 64, offset: 384)
!4640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4641, size: 64)
!4641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !525, line: 190, size: 1152, elements: !4642)
!4642 = !{!4643, !4644, !4645, !4646, !4647, !4648, !4649, !4650, !4722, !4723, !4724, !4725, !4726, !4729}
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4641, file: !525, line: 191, baseType: !219, size: 32)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4641, file: !525, line: 192, baseType: !219, size: 32, offset: 32)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4641, file: !525, line: 202, baseType: !4640, size: 64, offset: 64)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4641, file: !525, line: 203, baseType: !188, size: 64, offset: 128)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4641, file: !525, line: 205, baseType: !814, size: 192, align: 64, offset: 192)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4641, file: !525, line: 207, baseType: !1268, size: 64, offset: 384)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4641, file: !525, line: 208, baseType: !7, size: 32, offset: 448)
!4650 = !DIDerivedType(tag: DW_TAG_member, scope: !4641, file: !525, line: 209, baseType: !4651, size: 256, offset: 512)
!4651 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4641, file: !525, line: 209, size: 256, elements: !4652)
!4652 = !{!4653, !4662, !4666}
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4651, file: !525, line: 210, baseType: !4654, size: 256)
!4654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !525, line: 153, size: 256, elements: !4655)
!4655 = !{!4656, !4657, !4658, !4661}
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4654, file: !525, line: 154, baseType: !319, size: 64)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4654, file: !525, line: 156, baseType: !2167, size: 64, offset: 64)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4654, file: !525, line: 162, baseType: !4659, size: 64, offset: 128)
!4659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4660, size: 64)
!4660 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !525, line: 162, flags: DIFlagFwdDecl)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4654, file: !525, line: 167, baseType: !319, size: 64, offset: 192)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4651, file: !525, line: 211, baseType: !4663, size: 64)
!4663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !525, line: 170, size: 64, elements: !4664)
!4664 = !{!4665}
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4663, file: !525, line: 171, baseType: !4640, size: 64)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4651, file: !525, line: 212, baseType: !4667, size: 256)
!4667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !525, line: 174, size: 256, elements: !4668)
!4668 = !{!4669, !4717, !4720, !4721}
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4667, file: !525, line: 175, baseType: !4670, size: 64)
!4670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4671, size: 64)
!4671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4672)
!4672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !525, line: 271, size: 768, elements: !4673)
!4673 = !{!4674, !4694, !4698, !4699, !4700, !4701, !4702, !4706, !4707, !4708, !4709, !4713}
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4672, file: !525, line: 276, baseType: !4675, size: 64)
!4675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4676, size: 64)
!4676 = !DISubroutineType(types: !4677)
!4677 = !{!109, !4678}
!4678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4679, size: 64)
!4679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !525, line: 251, size: 1216, elements: !4680)
!4680 = !{!4681, !4682, !4683, !4684, !4685, !4686, !4687, !4688, !4689, !4690, !4691, !4692, !4693}
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4679, file: !525, line: 253, baseType: !4640, size: 64)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4679, file: !525, line: 254, baseType: !1009, size: 64, offset: 64)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4679, file: !525, line: 255, baseType: !622, size: 64, offset: 128)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4679, file: !525, line: 256, baseType: !163, size: 64, offset: 192)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4679, file: !525, line: 259, baseType: !634, size: 256, offset: 256)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4679, file: !525, line: 260, baseType: !634, size: 256, offset: 512)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4679, file: !525, line: 261, baseType: !109, size: 32, offset: 768)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4679, file: !525, line: 262, baseType: !169, size: 128, offset: 832)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4679, file: !525, line: 263, baseType: !269, size: 64, offset: 960)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4679, file: !525, line: 265, baseType: !316, size: 64, offset: 1024)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4679, file: !525, line: 266, baseType: !881, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4679, file: !525, line: 267, baseType: !881, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4679, file: !525, line: 268, baseType: !1350, size: 64, offset: 1152)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4672, file: !525, line: 277, baseType: !4695, size: 64, offset: 64)
!4695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4696, size: 64)
!4696 = !DISubroutineType(types: !4697)
!4697 = !{null, !4678}
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4672, file: !525, line: 290, baseType: !673, size: 64, offset: 128)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4672, file: !525, line: 292, baseType: !660, size: 64, offset: 192)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4672, file: !525, line: 293, baseType: !669, size: 64, offset: 256)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4672, file: !525, line: 294, baseType: !665, size: 64, offset: 320)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4672, file: !525, line: 296, baseType: !4703, size: 64, offset: 384)
!4703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4704, size: 64)
!4704 = !DISubroutineType(types: !4705)
!4705 = !{!301, !4678, !269, !316, !510}
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4672, file: !525, line: 306, baseType: !316, size: 64, offset: 448)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4672, file: !525, line: 313, baseType: !881, size: 8, offset: 512)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4672, file: !525, line: 314, baseType: !4703, size: 64, offset: 576)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4672, file: !525, line: 317, baseType: !4710, size: 64, offset: 640)
!4710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4711, size: 64)
!4711 = !DISubroutineType(types: !4712)
!4712 = !{!1127, !4678, !1129}
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4672, file: !525, line: 320, baseType: !4714, size: 64, offset: 704)
!4714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4715, size: 64)
!4715 = !DISubroutineType(types: !4716)
!4716 = !{!109, !4678, !1140}
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4667, file: !525, line: 176, baseType: !4718, size: 64, offset: 64)
!4718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4719, size: 64)
!4719 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !525, line: 35, flags: DIFlagFwdDecl)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4667, file: !525, line: 177, baseType: !510, size: 64, offset: 128)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4667, file: !525, line: 178, baseType: !4640, size: 64, offset: 192)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4641, file: !525, line: 215, baseType: !163, size: 64, offset: 768)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4641, file: !525, line: 221, baseType: !422, size: 64, offset: 832)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4641, file: !525, line: 223, baseType: !239, size: 16, offset: 896)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4641, file: !525, line: 224, baseType: !311, size: 16, offset: 912)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4641, file: !525, line: 225, baseType: !4727, size: 64, offset: 960)
!4727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4728, size: 64)
!4728 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !525, line: 36, flags: DIFlagFwdDecl)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4641, file: !525, line: 227, baseType: !692, size: 128, align: 64, offset: 1024)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !184, file: !185, line: 71, baseType: !2524, size: 32, offset: 448)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !184, file: !185, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !184, file: !185, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !184, file: !185, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !184, file: !185, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !184, file: !185, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !181, file: !6, line: 47, baseType: !164, size: 64, offset: 512)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !181, file: !6, line: 48, baseType: !192, size: 64, offset: 576)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !181, file: !6, line: 49, baseType: !4739, size: 64, offset: 640)
!4739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4740, size: 64)
!4740 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !181, file: !6, line: 50, baseType: !2378, size: 64, offset: 704)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !165, file: !6, line: 418, baseType: !4743, size: 64, offset: 1408)
!4743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4744, size: 64)
!4744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !4745)
!4745 = !{!4746, !4747, !4752, !4756, !4760, !4764}
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4744, file: !6, line: 54, baseType: !307, size: 128)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4744, file: !6, line: 55, baseType: !4748, size: 64, offset: 128)
!4748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4749, size: 64)
!4749 = !DISubroutineType(types: !4750)
!4750 = !{!301, !4743, !4751, !269}
!4751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4744, file: !6, line: 57, baseType: !4753, size: 64, offset: 192)
!4753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4754, size: 64)
!4754 = !DISubroutineType(types: !4755)
!4755 = !{!301, !4743, !4751, !188, !316}
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !4744, file: !6, line: 59, baseType: !4757, size: 64, offset: 256)
!4757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4758, size: 64)
!4758 = !DISubroutineType(types: !4759)
!4759 = !{null, !164, !188}
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !4744, file: !6, line: 60, baseType: !4761, size: 64, offset: 320)
!4761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4762, size: 64)
!4762 = !DISubroutineType(types: !4763)
!4763 = !{!109, !164}
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4744, file: !6, line: 61, baseType: !4765, size: 64, offset: 384)
!4765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4766, size: 64)
!4766 = !DISubroutineType(types: !4767)
!4767 = !{null, !164}
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !165, file: !6, line: 419, baseType: !188, size: 64, offset: 1472)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !165, file: !6, line: 420, baseType: !188, size: 64, offset: 1536)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !165, file: !6, line: 421, baseType: !192, size: 64, offset: 1600)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !165, file: !6, line: 424, baseType: !4772, size: 64, offset: 1664)
!4772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4773, size: 64)
!4773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4774)
!4774 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !165, file: !6, line: 425, baseType: !4776, size: 64, offset: 1728)
!4776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4777, size: 64)
!4777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !807)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !165, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !165, file: !6, line: 435, baseType: !634, size: 256, offset: 1856)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !165, file: !6, line: 437, baseType: !4781, size: 64, offset: 2112)
!4781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4782, size: 64)
!4782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !4783, line: 69, size: 320, elements: !4784)
!4783 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!4784 = !{!4785, !4786, !4787, !4804, !4806, !4810, !4811}
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4782, file: !4783, line: 70, baseType: !188, size: 64)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4782, file: !4783, line: 71, baseType: !164, size: 64, offset: 64)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4782, file: !4783, line: 72, baseType: !4788, size: 64, offset: 128)
!4788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4789, size: 64)
!4789 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4790)
!4790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !4783, line: 47, size: 256, elements: !4791)
!4791 = !{!4792, !4793, !4799, !4803}
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4790, file: !4783, line: 49, baseType: !7, size: 32)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !4790, file: !4783, line: 51, baseType: !4794, size: 64, offset: 64)
!4794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4795, size: 64)
!4795 = !DISubroutineType(types: !4796)
!4796 = !{!109, !188, !4797}
!4797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4798, size: 64)
!4798 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4782)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4790, file: !4783, line: 53, baseType: !4800, size: 64, offset: 128)
!4800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4801, size: 64)
!4801 = !DISubroutineType(types: !4802)
!4802 = !{!109, !269, !4797}
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4790, file: !4783, line: 55, baseType: !3003, size: 64, offset: 192)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4782, file: !4783, line: 73, baseType: !4805, size: 16, offset: 192)
!4805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !237)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4782, file: !4783, line: 74, baseType: !4807, size: 8, offset: 208)
!4807 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !228, line: 16, baseType: !4808)
!4808 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !230, line: 20, baseType: !4809)
!4809 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4782, file: !4783, line: 75, baseType: !227, size: 8, offset: 216)
!4811 = !DIDerivedType(tag: DW_TAG_member, scope: !4782, file: !4783, line: 76, baseType: !4812, size: 64, offset: 256)
!4812 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4782, file: !4783, line: 76, size: 64, elements: !4813)
!4813 = !{!4814, !4815, !4822}
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4812, file: !4783, line: 77, baseType: !163, size: 64)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4812, file: !4783, line: 78, baseType: !4816, size: 64)
!4816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4817, size: 64)
!4817 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4818)
!4818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !4783, line: 86, size: 128, elements: !4819)
!4819 = !{!4820, !4821}
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !4818, file: !4783, line: 87, baseType: !7, size: 32)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4818, file: !4783, line: 88, baseType: !269, size: 64, offset: 64)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !4812, file: !4783, line: 79, baseType: !4823, size: 64)
!4823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4824, size: 64)
!4824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4825)
!4825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !4783, line: 92, size: 256, elements: !4826)
!4826 = !{!4827, !4828, !4829, !4830, !4831}
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !4825, file: !4783, line: 94, baseType: !7, size: 32)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !4825, file: !4783, line: 95, baseType: !7, size: 32, offset: 32)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4825, file: !4783, line: 96, baseType: !1988, size: 64, offset: 64)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4825, file: !4783, line: 97, baseType: !4788, size: 64, offset: 128)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !4825, file: !4783, line: 98, baseType: !163, size: 64, offset: 192)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !165, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !165, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !165, file: !6, line: 442, baseType: !4772, size: 64, offset: 2240)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !165, file: !6, line: 443, baseType: !4776, size: 64, offset: 2304)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !165, file: !6, line: 444, baseType: !881, size: 8, offset: 2368)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !165, file: !6, line: 451, baseType: !881, size: 8, offset: 2376)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !165, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !165, file: !6, line: 455, baseType: !4840, size: 64, offset: 2432)
!4840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4841, size: 64)
!4841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !4842, line: 23, size: 96, elements: !4843)
!4842 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!4843 = !{!4844, !4845, !4846}
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4841, file: !4842, line: 24, baseType: !109, size: 32)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !4841, file: !4842, line: 24, baseType: !109, size: 32, offset: 32)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4841, file: !4842, line: 24, baseType: !109, size: 32, offset: 64)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !165, file: !6, line: 458, baseType: !4848, size: 64, offset: 2496)
!4848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4849, size: 64)
!4849 = !DISubroutineType(types: !4850)
!4850 = !{!109}
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !165, file: !6, line: 460, baseType: !4852, size: 4032, align: 512, offset: 2560)
!4852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4853, size: 4032, elements: !4867)
!4853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !4854)
!4854 = !{!4855, !4856, !4857}
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4853, file: !6, line: 363, baseType: !163, size: 64)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4853, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !4853, file: !6, line: 367, baseType: !4858, size: 448, offset: 128)
!4858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !4859)
!4859 = !{!4860, !4861}
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4858, file: !6, line: 320, baseType: !164, size: 64)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4858, file: !6, line: 321, baseType: !4862, size: 384, offset: 64)
!4862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !4863, line: 40, size: 384, elements: !4864)
!4863 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!4864 = !{!4865}
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4862, file: !4863, line: 41, baseType: !4866, size: 384, align: 64)
!4866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !814, size: 384, align: 64, elements: !2502)
!4867 = !{!4868}
!4868 = !DISubrange(count: 7)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !165, file: !6, line: 463, baseType: !4870, size: 192, offset: 6592)
!4870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !4871, line: 8, size: 192, elements: !4872)
!4871 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!4872 = !{!4873, !4874, !4875}
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !4870, file: !4871, line: 10, baseType: !7, size: 32)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !4870, file: !4871, line: 11, baseType: !616, size: 64, offset: 64)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !4870, file: !4871, line: 12, baseType: !4876, size: 64, offset: 128)
!4876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4877, size: 64)
!4877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !4878, line: 59, size: 48, elements: !4879)
!4878 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!4879 = !{!4880, !4881, !4882, !4883, !4884, !4885}
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !4877, file: !4878, line: 60, baseType: !1285, size: 16)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !4877, file: !4878, line: 61, baseType: !1285, size: 16, offset: 16)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !4877, file: !4878, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !4877, file: !4878, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4877, file: !4878, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4877, file: !4878, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !165, file: !6, line: 465, baseType: !319, size: 64, offset: 6784)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !165, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !165, file: !6, line: 470, baseType: !169, size: 128, offset: 6912)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !165, file: !6, line: 471, baseType: !4890, size: 64, offset: 7040)
!4890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4891, size: 64)
!4891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !4892, line: 33, size: 96, elements: !4893)
!4892 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!4893 = !{!4894, !4895, !4896, !4897}
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !4891, file: !4892, line: 37, baseType: !109, size: 32)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !4891, file: !4892, line: 43, baseType: !109, size: 32, offset: 32)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !4891, file: !4892, line: 45, baseType: !239, size: 16, offset: 64)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4891, file: !4892, line: 47, baseType: !239, size: 16, offset: 80)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !165, file: !6, line: 476, baseType: !4899, size: 64, offset: 7104)
!4899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4900, size: 64)
!4900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !4901)
!4901 = !{!4902, !4918, !4919, !4920}
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !4900, file: !6, line: 379, baseType: !4903, size: 64)
!4903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4904, size: 64)
!4904 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !4905, line: 204, baseType: !4906)
!4905 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!4906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !4905, line: 197, size: 192, elements: !4907)
!4907 = !{!4908, !4910, !4911, !4912, !4914, !4916}
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !4906, file: !4905, line: 198, baseType: !4909, size: 32)
!4909 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !4905, line: 21, baseType: !419)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !4906, file: !4905, line: 199, baseType: !231, size: 8, offset: 32)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !4906, file: !4905, line: 200, baseType: !231, size: 8, offset: 40)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !4906, file: !4905, line: 201, baseType: !4913, size: 16, offset: 48)
!4913 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !4905, line: 17, baseType: !238)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !4906, file: !4905, line: 202, baseType: !4915, size: 64, offset: 64)
!4915 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !4905, line: 16, baseType: !423)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !4906, file: !4905, line: 203, baseType: !4917, size: 64, offset: 128)
!4917 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !4905, line: 22, baseType: !423)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !4900, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !4900, file: !6, line: 381, baseType: !269, size: 64, offset: 128)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !4900, file: !6, line: 382, baseType: !269, size: 64, offset: 192)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !165, file: !6, line: 477, baseType: !4900, size: 256, offset: 7168)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !165, file: !6, line: 480, baseType: !4923, size: 64, offset: 7424)
!4923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4924, size: 64)
!4924 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !165, file: !6, line: 483, baseType: !4926, size: 64, offset: 7488)
!4926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4927, size: 64)
!4927 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !165, file: !6, line: 488, baseType: !269, size: 64, offset: 7552)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !165, file: !6, line: 492, baseType: !163, size: 64, offset: 7616)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !165, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !165, file: !6, line: 495, baseType: !163, size: 64, offset: 7744)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !165, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !165, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !165, file: !6, line: 500, baseType: !4935, size: 64, offset: 7872)
!4935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4936, size: 64)
!4936 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !4937, line: 45, baseType: !4938)
!4937 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!4938 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !165, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !165, file: !6, line: 504, baseType: !4941, size: 64, offset: 8000)
!4941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4942, size: 64)
!4942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4943, size: 64)
!4943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !4944, line: 96, size: 192, elements: !4945)
!4944 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!4945 = !{!4946, !4947, !4990, !4992}
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !4943, file: !4944, line: 97, baseType: !7, size: 32)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !4943, file: !4944, line: 98, baseType: !4948, size: 64, offset: 64)
!4948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4949, size: 64)
!4949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !4944, line: 24, size: 3072, elements: !4950)
!4950 = !{!4951, !4953, !4954, !4955, !4956, !4970, !4971, !4972, !4973, !4974, !4975, !4976, !4987, !4988, !4989}
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !4949, file: !4944, line: 26, baseType: !4952, size: 128)
!4952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !638, size: 128, elements: !2502)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !4949, file: !4944, line: 27, baseType: !4952, size: 128, offset: 128)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !4949, file: !4944, line: 28, baseType: !109, size: 32, offset: 256)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4949, file: !4944, line: 31, baseType: !199, size: 32, align: 512, offset: 512)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !4949, file: !4944, line: 32, baseType: !4957, size: 960, offset: 576)
!4957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !4958, line: 206, size: 960, elements: !4959)
!4958 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!4959 = !{!4960, !4961, !4964, !4966, !4967, !4969}
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4957, file: !4958, line: 207, baseType: !695, size: 64)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !4957, file: !4958, line: 208, baseType: !4962, size: 256, offset: 64)
!4962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4963, size: 256, elements: !746)
!4963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !4957, file: !4958, line: 209, baseType: !4965, size: 256, offset: 320)
!4965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 256, elements: !746)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4957, file: !4958, line: 213, baseType: !305, size: 64, offset: 576)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !4957, file: !4958, line: 215, baseType: !4968, size: 256, offset: 640)
!4968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !305, size: 256, elements: !746)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4957, file: !4958, line: 216, baseType: !227, size: 8, offset: 896)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4949, file: !4944, line: 33, baseType: !319, size: 64, offset: 1536)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4949, file: !4944, line: 34, baseType: !319, size: 64, offset: 1600)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !4949, file: !4944, line: 35, baseType: !881, size: 8, offset: 1664)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !4949, file: !4944, line: 36, baseType: !2723, size: 320, offset: 1728)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4949, file: !4944, line: 37, baseType: !1307, size: 256, offset: 2048)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !4949, file: !4944, line: 38, baseType: !692, size: 128, align: 64, offset: 2304)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !4949, file: !4944, line: 39, baseType: !4977, size: 64, offset: 2432)
!4977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4978, size: 64)
!4978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !4944, line: 49, size: 768, elements: !4979)
!4979 = !{!4980, !4981, !4982, !4983, !4984, !4985, !4986}
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4978, file: !4944, line: 50, baseType: !199, size: 32)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !4978, file: !4944, line: 51, baseType: !4965, size: 256, offset: 64)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !4978, file: !4944, line: 53, baseType: !4965, size: 256, offset: 320)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4978, file: !4944, line: 54, baseType: !319, size: 64, offset: 576)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !4978, file: !4944, line: 55, baseType: !4977, size: 64, offset: 640)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !4978, file: !4944, line: 56, baseType: !109, size: 32, offset: 704)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !4978, file: !4944, line: 57, baseType: !109, size: 32, offset: 736)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !4949, file: !4944, line: 40, baseType: !319, size: 64, offset: 2496)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4949, file: !4944, line: 42, baseType: !109, size: 32, offset: 2560)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !4949, file: !4944, line: 43, baseType: !4942, size: 64, offset: 2624)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !4943, file: !4944, line: 99, baseType: !4991, offset: 128)
!4991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !552, line: 211, elements: !553)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !4943, file: !4944, line: 100, baseType: !4993, size: 64, offset: 128)
!4993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4994, size: 64)
!4994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !4944, line: 63, size: 3008, elements: !4995)
!4995 = !{!4996, !4997, !4999, !5000, !5001, !5002, !5003, !5004, !5005, !5006, !5007, !5008, !5009, !5010, !5011, !5012, !5013, !5014, !5015, !5016, !5017, !5018, !5025}
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4994, file: !4944, line: 64, baseType: !4977, size: 64)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4994, file: !4944, line: 65, baseType: !4998, size: 192, offset: 64)
!4998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4977, size: 192, elements: !270)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !4994, file: !4944, line: 67, baseType: !109, size: 32, offset: 256)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !4994, file: !4944, line: 68, baseType: !634, size: 256, offset: 320)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4994, file: !4944, line: 69, baseType: !199, size: 32, offset: 576)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !4994, file: !4944, line: 70, baseType: !634, size: 256, offset: 640)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !4994, file: !4944, line: 71, baseType: !319, size: 64, offset: 896)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4994, file: !4944, line: 72, baseType: !319, size: 64, offset: 960)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4994, file: !4944, line: 73, baseType: !319, size: 64, offset: 1024)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !4994, file: !4944, line: 74, baseType: !319, size: 64, offset: 1088)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !4994, file: !4944, line: 75, baseType: !319, size: 64, offset: 1152)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !4994, file: !4944, line: 76, baseType: !319, size: 64, offset: 1216)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !4994, file: !4944, line: 77, baseType: !319, size: 64, offset: 1280)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !4994, file: !4944, line: 78, baseType: !319, size: 64, offset: 1344)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !4994, file: !4944, line: 79, baseType: !881, size: 8, offset: 1408)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !4994, file: !4944, line: 80, baseType: !319, size: 64, offset: 1472)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !4994, file: !4944, line: 81, baseType: !634, size: 256, offset: 1536)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !4994, file: !4944, line: 82, baseType: !1499, size: 256, offset: 1792)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !4994, file: !4944, line: 84, baseType: !219, size: 32, offset: 2048)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !4994, file: !4944, line: 87, baseType: !319, size: 64, offset: 2112)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !4994, file: !4944, line: 88, baseType: !319, size: 64, offset: 2176)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4994, file: !4944, line: 89, baseType: !5019, size: 704, offset: 2240)
!5019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1308, line: 111, size: 704, elements: !5020)
!5020 = !{!5021, !5022, !5023, !5024}
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5019, file: !1308, line: 112, baseType: !1307, size: 256)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !5019, file: !1308, line: 113, baseType: !2723, size: 320, offset: 256)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !5019, file: !1308, line: 116, baseType: !4163, size: 64, offset: 576)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !5019, file: !1308, line: 117, baseType: !109, size: 32, offset: 640)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !4994, file: !4944, line: 90, baseType: !4942, size: 64, offset: 2944)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !165, file: !6, line: 515, baseType: !5027, size: 64, offset: 8064)
!5027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5028, size: 64)
!5028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !5029, line: 117, size: 128, elements: !5030)
!5029 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!5030 = !{!5031, !5032, !5033}
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !5028, file: !5029, line: 118, baseType: !807, size: 32)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !5028, file: !5029, line: 119, baseType: !807, size: 32, offset: 32)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5028, file: !5029, line: 120, baseType: !305, size: 64, offset: 64)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !165, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !165, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !165, file: !6, line: 520, baseType: !2895, size: 64, offset: 8192)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !165, file: !6, line: 523, baseType: !5038, size: 64, offset: 8256)
!5038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5039, size: 64)
!5039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5040, size: 64)
!5040 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !165, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !165, file: !6, line: 525, baseType: !5043, size: 64, offset: 8384)
!5043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5044, size: 64)
!5044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5045, size: 64)
!5045 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !165, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !165, file: !6, line: 533, baseType: !163, size: 64, offset: 8512)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !165, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !165, file: !6, line: 535, baseType: !5050, size: 64, offset: 8640)
!5050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !165, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !165, file: !6, line: 539, baseType: !109, size: 32, offset: 8736)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !165, file: !6, line: 540, baseType: !5054, size: 64, offset: 8768)
!5054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5055, size: 64)
!5055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !5056, line: 32, size: 64, elements: !5057)
!5056 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!5057 = !{!5058, !5059}
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5055, file: !5056, line: 33, baseType: !807, size: 32)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5055, file: !5056, line: 34, baseType: !807, size: 32, offset: 32)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !165, file: !6, line: 563, baseType: !169, size: 128, offset: 8832)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !165, file: !6, line: 565, baseType: !169, size: 128, offset: 8960)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !165, file: !6, line: 568, baseType: !5063, size: 64, offset: 9088)
!5063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3540, size: 64)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !165, file: !6, line: 570, baseType: !219, size: 32, offset: 9152)
!5065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5066, size: 64)
!5066 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !177)
!5067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5068, size: 64)
!5068 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !305)
!5069 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !170, line: 42, baseType: !319)
!5070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!5071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5072, size: 64)
!5072 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_ulong_t", file: !3725, line: 45, baseType: !418)
!5073 = !{!0, !5074, !5079, !5084, !5087, !5092, !5094, !5098, !5100, !5102, !5181, !5186, !5191, !5194, !5199, !5204, !5208}
!5074 = !DIGlobalVariableExpression(var: !5075, expr: !DIExpression())
!5075 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description288", scope: !2, file: !3, line: 23, type: !5076, isLocal: true, isDefinition: true, align: 8)
!5076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 424, elements: !5077)
!5077 = !{!5078}
!5078 = !DISubrange(count: 53)
!5079 = !DIGlobalVariableExpression(var: !5080, expr: !DIExpression())
!5080 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file289", scope: !2, file: !3, line: 24, type: !5081, isLocal: true, isDefinition: true, align: 8)
!5081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 328, elements: !5082)
!5082 = !{!5083}
!5083 = !DISubrange(count: 41)
!5084 = !DIGlobalVariableExpression(var: !5085, expr: !DIExpression())
!5085 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license290", scope: !2, file: !3, line: 24, type: !5086, isLocal: true, isDefinition: true, align: 8)
!5086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 160, elements: !3980)
!5087 = !DIGlobalVariableExpression(var: !5088, expr: !DIExpression())
!5088 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_alias291", scope: !2, file: !3, line: 25, type: !5089, isLocal: true, isDefinition: true, align: 8)
!5089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 208, elements: !5090)
!5090 = !{!5091}
!5091 = !DISubrange(count: 26)
!5092 = !DIGlobalVariableExpression(var: !5093, expr: !DIExpression())
!5093 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_serport__292_308_serport_init6293", scope: !2, file: !3, line: 308, type: !163, isLocal: true, isDefinition: true)
!5094 = !DIGlobalVariableExpression(var: !5095, expr: !DIExpression())
!5095 = distinct !DIGlobalVariable(name: "__exitcall_serport_exit", scope: !2, file: !3, line: 309, type: !5096, isLocal: true, isDefinition: true)
!5096 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !5097, line: 120, baseType: !5063)
!5097 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!5098 = !DIGlobalVariableExpression(var: !5099, expr: !DIExpression())
!5099 = distinct !DIGlobalVariable(scope: null, file: !3, line: 276, type: !867, isLocal: true, isDefinition: true)
!5100 = !DIGlobalVariableExpression(var: !5101, expr: !DIExpression())
!5101 = distinct !DIGlobalVariable(name: "serport_ldisc", scope: !2, file: !3, line: 273, type: !3343, isLocal: true, isDefinition: true)
!5102 = !DIGlobalVariableExpression(var: !5103, expr: !DIExpression())
!5103 = distinct !DIGlobalVariable(name: "__key", scope: !5104, file: !3, line: 91, type: !551, isLocal: true, isDefinition: true)
!5104 = distinct !DISubprogram(name: "serport_ldisc_open", scope: !3, file: !3, line: 78, type: !3297, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5105)
!5105 = !{!5106, !5107}
!5106 = !DILocalVariable(name: "tty", arg: 1, scope: !5104, file: !3, line: 78, type: !2519)
!5107 = !DILocalVariable(name: "serport", scope: !5104, file: !3, line: 80, type: !5108)
!5108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5109, size: 64)
!5109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serport", file: !3, line: 31, size: 448, elements: !5110)
!5110 = !{!5111, !5112, !5113, !5178, !5179, !5180}
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !5109, file: !3, line: 32, baseType: !2519, size: 64)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !5109, file: !3, line: 33, baseType: !750, size: 192, offset: 64)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "serio", scope: !5109, file: !3, line: 34, baseType: !5114, size: 64, offset: 256)
!5114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5115, size: 64)
!5115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serio", file: !5116, line: 21, size: 8768, elements: !5117)
!5116 = !DIFile(filename: "./include/linux/serio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3a9b334022147244b132d6aa1a8399b7")
!5117 = !{!5118, !5119, !5120, !5121, !5122, !5123, !5130, !5131, !5135, !5139, !5143, !5144, !5145, !5146, !5147, !5148, !5149, !5173, !5174, !5175, !5176}
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "port_data", scope: !5115, file: !5116, line: 22, baseType: !163, size: 64)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5115, file: !5116, line: 24, baseType: !2625, size: 256, offset: 64)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !5115, file: !5116, line: 25, baseType: !2625, size: 256, offset: 320)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "firmware_id", scope: !5115, file: !5116, line: 26, baseType: !2628, size: 1024, offset: 576)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "manual_bind", scope: !5115, file: !5116, line: 28, baseType: !881, size: 8, offset: 1600)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5115, file: !5116, line: 30, baseType: !5124, size: 32, offset: 1608)
!5124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serio_device_id", file: !2622, line: 256, size: 32, elements: !5125)
!5125 = !{!5126, !5127, !5128, !5129}
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5124, file: !2622, line: 257, baseType: !229, size: 8)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !5124, file: !2622, line: 258, baseType: !229, size: 8, offset: 8)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5124, file: !2622, line: 259, baseType: !229, size: 8, offset: 16)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !5124, file: !2622, line: 260, baseType: !229, size: 8, offset: 24)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5115, file: !5116, line: 33, baseType: !199, size: 32, offset: 1664)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !5115, file: !5116, line: 35, baseType: !5132, size: 64, offset: 1728)
!5132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5133, size: 64)
!5133 = !DISubroutineType(types: !5134)
!5134 = !{!109, !5114, !231}
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !5115, file: !5116, line: 36, baseType: !5136, size: 64, offset: 1792)
!5136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5137, size: 64)
!5137 = !DISubroutineType(types: !5138)
!5138 = !{!109, !5114}
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !5115, file: !5116, line: 37, baseType: !5140, size: 64, offset: 1856)
!5140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5141, size: 64)
!5141 = !DISubroutineType(types: !5142)
!5142 = !{null, !5114}
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5115, file: !5116, line: 38, baseType: !5136, size: 64, offset: 1920)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !5115, file: !5116, line: 39, baseType: !5140, size: 64, offset: 1984)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !5115, file: !5116, line: 41, baseType: !5114, size: 64, offset: 2048)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "child_node", scope: !5115, file: !5116, line: 43, baseType: !169, size: 128, offset: 2112)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !5115, file: !5116, line: 44, baseType: !169, size: 128, offset: 2240)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !5115, file: !5116, line: 46, baseType: !7, size: 32, offset: 2368)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !5115, file: !5116, line: 52, baseType: !5150, size: 64, offset: 2432)
!5150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5151, size: 64)
!5151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serio_driver", file: !5116, line: 68, size: 1792, elements: !5152)
!5152 = !{!5153, !5154, !5157, !5158, !5159, !5164, !5168, !5169, !5170, !5171, !5172}
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !5151, file: !5116, line: 69, baseType: !188, size: 64)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !5151, file: !5116, line: 71, baseType: !5155, size: 64, offset: 64)
!5155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5156, size: 64)
!5156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5124)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "manual_bind", scope: !5151, file: !5116, line: 72, baseType: !881, size: 8, offset: 128)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !5151, file: !5116, line: 74, baseType: !5140, size: 64, offset: 192)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt", scope: !5151, file: !5116, line: 75, baseType: !5160, size: 64, offset: 256)
!5160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5161, size: 64)
!5161 = !DISubroutineType(types: !5162)
!5162 = !{!5163, !5114, !231, !7}
!5163 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !142, line: 17, baseType: !141)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !5151, file: !5116, line: 76, baseType: !5165, size: 64, offset: 320)
!5165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5166, size: 64)
!5166 = !DISubroutineType(types: !5167)
!5167 = !{!109, !5114, !5150}
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "reconnect", scope: !5151, file: !5116, line: 77, baseType: !5136, size: 64, offset: 384)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "fast_reconnect", scope: !5151, file: !5116, line: 78, baseType: !5136, size: 64, offset: 448)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !5151, file: !5116, line: 79, baseType: !5140, size: 64, offset: 512)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !5151, file: !5116, line: 80, baseType: !5140, size: 64, offset: 576)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !5151, file: !5116, line: 82, baseType: !2610, size: 1152, offset: 640)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "drv_mutex", scope: !5115, file: !5116, line: 54, baseType: !634, size: 256, offset: 2496)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5115, file: !5116, line: 56, baseType: !2531, size: 5824, offset: 2752)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5115, file: !5116, line: 58, baseType: !169, size: 128, offset: 8576)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "ps2_cmd_mutex", scope: !5115, file: !5116, line: 64, baseType: !5177, size: 64, offset: 8704)
!5177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5109, file: !3, line: 35, baseType: !5124, size: 32, offset: 320)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5109, file: !3, line: 36, baseType: !199, size: 32, offset: 352)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5109, file: !3, line: 37, baseType: !319, size: 64, offset: 384)
!5181 = !DIGlobalVariableExpression(var: !5182, expr: !DIExpression())
!5182 = distinct !DIGlobalVariable(scope: null, file: !3, line: 91, type: !5183, isLocal: true, isDefinition: true)
!5183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 120, elements: !5184)
!5184 = !{!5185}
!5185 = !DISubrange(count: 15)
!5186 = !DIGlobalVariableExpression(var: !5187, expr: !DIExpression())
!5187 = distinct !DIGlobalVariable(scope: null, file: !153, line: 480, type: !5188, isLocal: true, isDefinition: true)
!5188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 168, elements: !5189)
!5189 = !{!5190}
!5190 = !DISubrange(count: 21)
!5191 = !DIGlobalVariableExpression(var: !5192, expr: !DIExpression())
!5192 = distinct !DIGlobalVariable(scope: null, file: !3, line: 174, type: !5193, isLocal: true, isDefinition: true)
!5193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 96, elements: !4013)
!5194 = !DIGlobalVariableExpression(var: !5195, expr: !DIExpression())
!5195 = distinct !DIGlobalVariable(scope: null, file: !3, line: 175, type: !5196, isLocal: true, isDefinition: true)
!5196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 80, elements: !5197)
!5197 = !{!5198}
!5198 = !DISubrange(count: 10)
!5199 = !DIGlobalVariableExpression(var: !5200, expr: !DIExpression())
!5200 = distinct !DIGlobalVariable(scope: null, file: !3, line: 185, type: !5201, isLocal: true, isDefinition: true)
!5201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 200, elements: !5202)
!5202 = !{!5203}
!5203 = !DISubrange(count: 25)
!5204 = !DIGlobalVariableExpression(var: !5205, expr: !DIExpression())
!5205 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__might_resched2", scope: !5206, file: !5207, line: 112, type: !163, isLocal: true, isDefinition: true)
!5206 = distinct !DISubprogram(name: "might_resched", scope: !5207, file: !5207, line: 110, type: !3540, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5207 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!5208 = !DIGlobalVariableExpression(var: !5209, expr: !DIExpression())
!5209 = distinct !DIGlobalVariable(scope: null, file: !3, line: 298, type: !5210, isLocal: true, isDefinition: true)
!5210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 392, elements: !5211)
!5211 = !{!5212}
!5212 = !DISubrange(count: 49)
!5213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 376, elements: !5214)
!5214 = !{!5215}
!5215 = !DISubrange(count: 47)
!5216 = !{!"rsp"}
!5217 = !{i32 7, !"Dwarf Version", i32 5}
!5218 = !{i32 2, !"Debug Info Version", i32 3}
!5219 = !{i32 1, !"wchar_size", i32 2}
!5220 = !{i32 8, !"cf-protection-branch", i32 1}
!5221 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5222 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5223 = !{i32 1, !"Code Model", i32 2}
!5224 = !{i32 1, !"override-stack-alignment", i32 8}
!5225 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5226 = distinct !DISubprogram(name: "serport_exit", scope: !3, file: !3, line: 303, type: !3540, scopeLine: 304, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5227 = !DILocation(line: 305, column: 2, scope: !5226)
!5228 = !DILocation(line: 306, column: 1, scope: !5226)
!5229 = !DISubprogram(name: "tty_unregister_ldisc", scope: !3339, file: !3339, line: 286, type: !5230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5230 = !DISubroutineType(types: !5231)
!5231 = !{null, !3342}
!5232 = distinct !DISubprogram(name: "__initstub__kmod_serport__292_308_serport_init6", scope: !3, file: !3, line: 308, type: !4849, scopeLine: 308, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5233 = !DILocation(line: 308, column: 1, scope: !5232)
!5234 = distinct !DISubprogram(name: "serport_init", scope: !3, file: !3, line: 293, type: !4849, scopeLine: 294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5235)
!5235 = !{!5236}
!5236 = !DILocalVariable(name: "retval", scope: !5234, file: !3, line: 295, type: !109)
!5237 = !DILocation(line: 295, column: 2, scope: !5234)
!5238 = !DILocation(line: 295, column: 6, scope: !5234)
!5239 = !DILocation(line: 296, column: 11, scope: !5234)
!5240 = !DILocation(line: 296, column: 9, scope: !5234)
!5241 = !DILocation(line: 297, column: 6, scope: !5242)
!5242 = distinct !DILexicalBlock(scope: !5234, file: !3, line: 297, column: 6)
!5243 = !DILocation(line: 297, column: 6, scope: !5234)
!5244 = !DILocation(line: 298, column: 3, scope: !5245)
!5245 = distinct !DILexicalBlock(scope: !5242, file: !3, line: 298, column: 3)
!5246 = !DILocation(line: 298, column: 3, scope: !5247)
!5247 = distinct !DILexicalBlock(scope: !5245, file: !3, line: 298, column: 3)
!5248 = !DILocation(line: 298, column: 3, scope: !5242)
!5249 = !DILocation(line: 300, column: 10, scope: !5234)
!5250 = !DILocation(line: 301, column: 1, scope: !5234)
!5251 = !DILocation(line: 300, column: 2, scope: !5234)
!5252 = !DILocation(line: 78, column: 50, scope: !5104)
!5253 = !DILocation(line: 80, column: 2, scope: !5104)
!5254 = !DILocation(line: 80, column: 18, scope: !5104)
!5255 = !DILocation(line: 82, column: 7, scope: !5256)
!5256 = distinct !DILexicalBlock(scope: !5104, file: !3, line: 82, column: 6)
!5257 = !DILocation(line: 82, column: 6, scope: !5104)
!5258 = !DILocation(line: 83, column: 3, scope: !5256)
!5259 = !DILocation(line: 85, column: 12, scope: !5104)
!5260 = !DILocation(line: 85, column: 10, scope: !5104)
!5261 = !DILocation(line: 86, column: 7, scope: !5262)
!5262 = distinct !DILexicalBlock(scope: !5104, file: !3, line: 86, column: 6)
!5263 = !DILocation(line: 86, column: 6, scope: !5104)
!5264 = !DILocation(line: 87, column: 3, scope: !5262)
!5265 = !DILocation(line: 89, column: 17, scope: !5104)
!5266 = !DILocation(line: 89, column: 2, scope: !5104)
!5267 = !DILocation(line: 89, column: 11, scope: !5104)
!5268 = !DILocation(line: 89, column: 15, scope: !5104)
!5269 = !DILocation(line: 90, column: 2, scope: !5104)
!5270 = !DILocation(line: 90, column: 2, scope: !5271)
!5271 = distinct !DILexicalBlock(scope: !5104, file: !3, line: 90, column: 2)
!5272 = !DILocation(line: 91, column: 2, scope: !5104)
!5273 = !DILocation(line: 91, column: 2, scope: !5274)
!5274 = distinct !DILexicalBlock(scope: !5104, file: !3, line: 91, column: 2)
!5275 = !DILocation(line: 93, column: 19, scope: !5104)
!5276 = !DILocation(line: 93, column: 2, scope: !5104)
!5277 = !DILocation(line: 93, column: 7, scope: !5104)
!5278 = !DILocation(line: 93, column: 17, scope: !5104)
!5279 = !DILocation(line: 94, column: 2, scope: !5104)
!5280 = !DILocation(line: 94, column: 7, scope: !5104)
!5281 = !DILocation(line: 94, column: 20, scope: !5104)
!5282 = !DILocation(line: 95, column: 32, scope: !5104)
!5283 = !DILocation(line: 95, column: 37, scope: !5104)
!5284 = !DILocation(line: 95, column: 2, scope: !5104)
!5285 = !DILocation(line: 97, column: 2, scope: !5104)
!5286 = !DILocation(line: 98, column: 1, scope: !5104)
!5287 = distinct !DISubprogram(name: "serport_ldisc_close", scope: !3, file: !3, line: 104, type: !3244, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5288)
!5288 = !{!5289, !5290}
!5289 = !DILocalVariable(name: "tty", arg: 1, scope: !5287, file: !3, line: 104, type: !2519)
!5290 = !DILocalVariable(name: "serport", scope: !5287, file: !3, line: 106, type: !5108)
!5291 = !DILocation(line: 104, column: 52, scope: !5287)
!5292 = !DILocation(line: 106, column: 2, scope: !5287)
!5293 = !DILocation(line: 106, column: 18, scope: !5287)
!5294 = !DILocation(line: 106, column: 28, scope: !5287)
!5295 = !DILocation(line: 106, column: 33, scope: !5287)
!5296 = !DILocation(line: 108, column: 8, scope: !5287)
!5297 = !DILocation(line: 108, column: 2, scope: !5287)
!5298 = !DILocation(line: 109, column: 1, scope: !5287)
!5299 = distinct !DISubprogram(name: "serport_ldisc_read", scope: !3, file: !3, line: 160, type: !3352, scopeLine: 163, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5300)
!5300 = !{!5301, !5302, !5303, !5304, !5305, !5306, !5307, !5308, !5309, !5311, !5325, !5326, !5330}
!5301 = !DILocalVariable(name: "tty", arg: 1, scope: !5299, file: !3, line: 160, type: !2519)
!5302 = !DILocalVariable(name: "file", arg: 2, scope: !5299, file: !3, line: 160, type: !1009)
!5303 = !DILocalVariable(name: "kbuf", arg: 3, scope: !5299, file: !3, line: 161, type: !3354)
!5304 = !DILocalVariable(name: "nr", arg: 4, scope: !5299, file: !3, line: 161, type: !316)
!5305 = !DILocalVariable(name: "cookie", arg: 5, scope: !5299, file: !3, line: 161, type: !1653)
!5306 = !DILocalVariable(name: "offset", arg: 6, scope: !5299, file: !3, line: 162, type: !319)
!5307 = !DILocalVariable(name: "serport", scope: !5299, file: !3, line: 164, type: !5108)
!5308 = !DILocalVariable(name: "serio", scope: !5299, file: !3, line: 165, type: !5114)
!5309 = !DILocalVariable(name: "__ret", scope: !5310, file: !3, line: 187, type: !109)
!5310 = distinct !DILexicalBlock(scope: !5299, file: !3, line: 187, column: 2)
!5311 = !DILocalVariable(name: "__wq_entry", scope: !5312, file: !3, line: 187, type: !5314)
!5312 = distinct !DILexicalBlock(scope: !5313, file: !3, line: 187, column: 2)
!5313 = distinct !DILexicalBlock(scope: !5310, file: !3, line: 187, column: 2)
!5314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !751, line: 30, size: 320, elements: !5315)
!5315 = !{!5316, !5317, !5318, !5324}
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5314, file: !751, line: 31, baseType: !7, size: 32)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5314, file: !751, line: 32, baseType: !163, size: 64, offset: 64)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5314, file: !751, line: 33, baseType: !5319, size: 64, offset: 128)
!5319 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !751, line: 16, baseType: !5320)
!5320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5321, size: 64)
!5321 = !DISubroutineType(types: !5322)
!5322 = !{!109, !5323, !7, !109, !163}
!5323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5314, size: 64)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !5314, file: !751, line: 34, baseType: !169, size: 128, offset: 192)
!5325 = !DILocalVariable(name: "__ret", scope: !5312, file: !3, line: 187, type: !305)
!5326 = !DILocalVariable(name: "__int", scope: !5327, file: !3, line: 187, type: !305)
!5327 = distinct !DILexicalBlock(scope: !5328, file: !3, line: 187, column: 2)
!5328 = distinct !DILexicalBlock(scope: !5329, file: !3, line: 187, column: 2)
!5329 = distinct !DILexicalBlock(scope: !5312, file: !3, line: 187, column: 2)
!5330 = !DILabel(scope: !5312, name: "__out", file: !3, line: 187)
!5331 = !DILocation(line: 160, column: 55, scope: !5299)
!5332 = !DILocation(line: 160, column: 74, scope: !5299)
!5333 = !DILocation(line: 161, column: 11, scope: !5299)
!5334 = !DILocation(line: 161, column: 24, scope: !5299)
!5335 = !DILocation(line: 161, column: 35, scope: !5299)
!5336 = !DILocation(line: 162, column: 21, scope: !5299)
!5337 = !DILocation(line: 164, column: 2, scope: !5299)
!5338 = !DILocation(line: 164, column: 18, scope: !5299)
!5339 = !DILocation(line: 164, column: 28, scope: !5299)
!5340 = !DILocation(line: 164, column: 33, scope: !5299)
!5341 = !DILocation(line: 165, column: 2, scope: !5299)
!5342 = !DILocation(line: 165, column: 16, scope: !5299)
!5343 = !DILocation(line: 167, column: 38, scope: !5344)
!5344 = distinct !DILexicalBlock(scope: !5299, file: !3, line: 167, column: 6)
!5345 = !DILocation(line: 167, column: 47, scope: !5344)
!5346 = !DILocation(line: 167, column: 6, scope: !5344)
!5347 = !DILocation(line: 167, column: 6, scope: !5299)
!5348 = !DILocation(line: 168, column: 3, scope: !5344)
!5349 = !DILocation(line: 170, column: 27, scope: !5299)
!5350 = !DILocation(line: 170, column: 25, scope: !5299)
!5351 = !DILocation(line: 170, column: 2, scope: !5299)
!5352 = !DILocation(line: 170, column: 11, scope: !5299)
!5353 = !DILocation(line: 170, column: 17, scope: !5299)
!5354 = !DILocation(line: 171, column: 7, scope: !5355)
!5355 = distinct !DILexicalBlock(scope: !5299, file: !3, line: 171, column: 6)
!5356 = !DILocation(line: 171, column: 6, scope: !5299)
!5357 = !DILocation(line: 172, column: 3, scope: !5355)
!5358 = !DILocation(line: 174, column: 10, scope: !5299)
!5359 = !DILocation(line: 174, column: 17, scope: !5299)
!5360 = !DILocation(line: 174, column: 2, scope: !5299)
!5361 = !DILocation(line: 175, column: 11, scope: !5299)
!5362 = !DILocation(line: 175, column: 18, scope: !5299)
!5363 = !DILocation(line: 175, column: 67, scope: !5299)
!5364 = !DILocation(line: 175, column: 58, scope: !5299)
!5365 = !DILocation(line: 175, column: 2, scope: !5299)
!5366 = !DILocation(line: 176, column: 2, scope: !5299)
!5367 = !DILocation(line: 176, column: 9, scope: !5299)
!5368 = !DILocation(line: 176, column: 14, scope: !5299)
!5369 = !DILocation(line: 176, column: 23, scope: !5299)
!5370 = !DILocation(line: 177, column: 2, scope: !5299)
!5371 = !DILocation(line: 177, column: 9, scope: !5299)
!5372 = !DILocation(line: 177, column: 12, scope: !5299)
!5373 = !DILocation(line: 177, column: 17, scope: !5299)
!5374 = !DILocation(line: 178, column: 2, scope: !5299)
!5375 = !DILocation(line: 178, column: 9, scope: !5299)
!5376 = !DILocation(line: 178, column: 15, scope: !5299)
!5377 = !DILocation(line: 179, column: 2, scope: !5299)
!5378 = !DILocation(line: 179, column: 9, scope: !5299)
!5379 = !DILocation(line: 179, column: 14, scope: !5299)
!5380 = !DILocation(line: 180, column: 2, scope: !5299)
!5381 = !DILocation(line: 180, column: 9, scope: !5299)
!5382 = !DILocation(line: 180, column: 15, scope: !5299)
!5383 = !DILocation(line: 181, column: 21, scope: !5299)
!5384 = !DILocation(line: 181, column: 2, scope: !5299)
!5385 = !DILocation(line: 181, column: 9, scope: !5299)
!5386 = !DILocation(line: 181, column: 19, scope: !5299)
!5387 = !DILocation(line: 182, column: 22, scope: !5299)
!5388 = !DILocation(line: 182, column: 27, scope: !5299)
!5389 = !DILocation(line: 182, column: 2, scope: !5299)
!5390 = !DILocation(line: 182, column: 9, scope: !5299)
!5391 = !DILocation(line: 182, column: 13, scope: !5299)
!5392 = !DILocation(line: 182, column: 20, scope: !5299)
!5393 = !DILocation(line: 184, column: 2, scope: !5299)
!5394 = !DILocation(line: 185, column: 2, scope: !5395)
!5395 = distinct !DILexicalBlock(scope: !5299, file: !3, line: 185, column: 2)
!5396 = !DILocation(line: 185, column: 2, scope: !5397)
!5397 = distinct !DILexicalBlock(scope: !5395, file: !3, line: 185, column: 2)
!5398 = !DILocation(line: 187, column: 2, scope: !5310)
!5399 = !DILocation(line: 187, column: 2, scope: !5400)
!5400 = distinct !DILexicalBlock(scope: !5310, file: !3, line: 187, column: 2)
!5401 = !DILocation(line: 187, column: 2, scope: !5313)
!5402 = !DILocation(line: 187, column: 2, scope: !5312)
!5403 = !DILocation(line: 187, column: 2, scope: !5327)
!5404 = !DILocation(line: 187, column: 2, scope: !5405)
!5405 = distinct !DILexicalBlock(scope: !5327, file: !3, line: 187, column: 2)
!5406 = !DILocation(line: 187, column: 2, scope: !5407)
!5407 = distinct !DILexicalBlock(scope: !5327, file: !3, line: 187, column: 2)
!5408 = !DILocation(line: 187, column: 2, scope: !5409)
!5409 = distinct !DILexicalBlock(scope: !5407, file: !3, line: 187, column: 2)
!5410 = !DILocation(line: 187, column: 2, scope: !5328)
!5411 = distinct !{!5411, !5412, !5412, !5413}
!5412 = !DILocation(line: 187, column: 2, scope: !5329)
!5413 = !{!"llvm.loop.unroll.disable"}
!5414 = !DILocation(line: 187, column: 2, scope: !5299)
!5415 = !DILocation(line: 188, column: 24, scope: !5299)
!5416 = !DILocation(line: 188, column: 33, scope: !5299)
!5417 = !DILocation(line: 188, column: 2, scope: !5299)
!5418 = !DILocation(line: 189, column: 2, scope: !5299)
!5419 = !DILocation(line: 189, column: 11, scope: !5299)
!5420 = !DILocation(line: 189, column: 17, scope: !5299)
!5421 = !DILocation(line: 191, column: 27, scope: !5299)
!5422 = !DILocation(line: 191, column: 36, scope: !5299)
!5423 = !DILocation(line: 191, column: 2, scope: !5299)
!5424 = !DILocation(line: 192, column: 27, scope: !5299)
!5425 = !DILocation(line: 192, column: 36, scope: !5299)
!5426 = !DILocation(line: 192, column: 2, scope: !5299)
!5427 = !DILocation(line: 194, column: 2, scope: !5299)
!5428 = !DILocation(line: 195, column: 1, scope: !5299)
!5429 = distinct !DISubprogram(name: "serport_ldisc_ioctl", scope: !3, file: !3, line: 210, type: !3263, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5430)
!5430 = !{!5431, !5432, !5433, !5434, !5437, !5441, !5442}
!5431 = !DILocalVariable(name: "tty", arg: 1, scope: !5429, file: !3, line: 210, type: !2519)
!5432 = !DILocalVariable(name: "cmd", arg: 2, scope: !5429, file: !3, line: 210, type: !7)
!5433 = !DILocalVariable(name: "arg", arg: 3, scope: !5429, file: !3, line: 211, type: !319)
!5434 = !DILocalVariable(name: "type", scope: !5435, file: !3, line: 214, type: !319)
!5435 = distinct !DILexicalBlock(scope: !5436, file: !3, line: 213, column: 25)
!5436 = distinct !DILexicalBlock(scope: !5429, file: !3, line: 213, column: 6)
!5437 = !DILocalVariable(name: "__ret_gu", scope: !5438, file: !3, line: 216, type: !109)
!5438 = distinct !DILexicalBlock(scope: !5439, file: !3, line: 216, column: 7)
!5439 = distinct !DILexicalBlock(scope: !5440, file: !3, line: 216, column: 7)
!5440 = distinct !DILexicalBlock(scope: !5435, file: !3, line: 216, column: 7)
!5441 = !DILocalVariable(name: "__val_gu", scope: !5438, file: !3, line: 216, type: !319)
!5442 = !DILocalVariable(name: "__tmp", scope: !5443, file: !3, line: 216, type: !422)
!5443 = distinct !DILexicalBlock(scope: !5438, file: !3, line: 216, column: 7)
!5444 = !DILocation(line: 210, column: 51, scope: !5429)
!5445 = !DILocation(line: 210, column: 69, scope: !5429)
!5446 = !DILocation(line: 211, column: 25, scope: !5429)
!5447 = !DILocation(line: 213, column: 6, scope: !5436)
!5448 = !DILocation(line: 213, column: 10, scope: !5436)
!5449 = !DILocation(line: 213, column: 6, scope: !5429)
!5450 = !DILocation(line: 214, column: 3, scope: !5435)
!5451 = !DILocation(line: 214, column: 17, scope: !5435)
!5452 = !DILocation(line: 216, column: 7, scope: !5439)
!5453 = !DILocation(line: 216, column: 7, scope: !5438)
!5454 = !{i64 2154914938}
!5455 = !DILocation(line: 216, column: 7, scope: !5443)
!5456 = !DILocation(line: 216, column: 7, scope: !5440)
!5457 = !DILocation(line: 216, column: 7, scope: !5435)
!5458 = !DILocation(line: 217, column: 4, scope: !5440)
!5459 = !DILocation(line: 219, column: 20, scope: !5435)
!5460 = !DILocation(line: 219, column: 25, scope: !5435)
!5461 = !DILocation(line: 219, column: 3, scope: !5435)
!5462 = !DILocation(line: 220, column: 3, scope: !5435)
!5463 = !DILocation(line: 221, column: 2, scope: !5436)
!5464 = !DILocation(line: 223, column: 2, scope: !5429)
!5465 = !DILocation(line: 224, column: 1, scope: !5429)
!5466 = distinct !DISubprogram(name: "serport_ldisc_compat_ioctl", scope: !3, file: !3, line: 228, type: !3263, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5467)
!5467 = !{!5468, !5469, !5470, !5471, !5474, !5475, !5479, !5480}
!5468 = !DILocalVariable(name: "tty", arg: 1, scope: !5466, file: !3, line: 228, type: !2519)
!5469 = !DILocalVariable(name: "cmd", arg: 2, scope: !5466, file: !3, line: 229, type: !7)
!5470 = !DILocalVariable(name: "arg", arg: 3, scope: !5466, file: !3, line: 229, type: !319)
!5471 = !DILocalVariable(name: "uarg", scope: !5472, file: !3, line: 232, type: !163)
!5472 = distinct !DILexicalBlock(scope: !5473, file: !3, line: 231, column: 32)
!5473 = distinct !DILexicalBlock(scope: !5466, file: !3, line: 231, column: 6)
!5474 = !DILocalVariable(name: "compat_type", scope: !5472, file: !3, line: 233, type: !5072)
!5475 = !DILocalVariable(name: "__ret_gu", scope: !5476, file: !3, line: 235, type: !109)
!5476 = distinct !DILexicalBlock(scope: !5477, file: !3, line: 235, column: 7)
!5477 = distinct !DILexicalBlock(scope: !5478, file: !3, line: 235, column: 7)
!5478 = distinct !DILexicalBlock(scope: !5472, file: !3, line: 235, column: 7)
!5479 = !DILocalVariable(name: "__val_gu", scope: !5476, file: !3, line: 235, type: !7)
!5480 = !DILocalVariable(name: "__tmp", scope: !5481, file: !3, line: 235, type: !422)
!5481 = distinct !DILexicalBlock(scope: !5476, file: !3, line: 235, column: 7)
!5482 = !DILocation(line: 228, column: 58, scope: !5466)
!5483 = !DILocation(line: 229, column: 25, scope: !5466)
!5484 = !DILocation(line: 229, column: 44, scope: !5466)
!5485 = !DILocation(line: 231, column: 6, scope: !5473)
!5486 = !DILocation(line: 231, column: 10, scope: !5473)
!5487 = !DILocation(line: 231, column: 6, scope: !5466)
!5488 = !DILocation(line: 232, column: 3, scope: !5472)
!5489 = !DILocation(line: 232, column: 16, scope: !5472)
!5490 = !DILocation(line: 232, column: 34, scope: !5472)
!5491 = !DILocation(line: 232, column: 23, scope: !5472)
!5492 = !DILocation(line: 233, column: 3, scope: !5472)
!5493 = !DILocation(line: 233, column: 18, scope: !5472)
!5494 = !DILocation(line: 235, column: 7, scope: !5477)
!5495 = !DILocation(line: 235, column: 7, scope: !5476)
!5496 = !{i64 2154918136}
!5497 = !DILocation(line: 235, column: 7, scope: !5481)
!5498 = !DILocation(line: 235, column: 7, scope: !5478)
!5499 = !DILocation(line: 235, column: 7, scope: !5472)
!5500 = !DILocation(line: 236, column: 4, scope: !5478)
!5501 = !DILocation(line: 238, column: 20, scope: !5472)
!5502 = !DILocation(line: 238, column: 25, scope: !5472)
!5503 = !DILocation(line: 238, column: 3, scope: !5472)
!5504 = !DILocation(line: 239, column: 3, scope: !5472)
!5505 = !DILocation(line: 240, column: 2, scope: !5473)
!5506 = !DILocation(line: 242, column: 2, scope: !5466)
!5507 = !DILocation(line: 243, column: 1, scope: !5466)
!5508 = distinct !DISubprogram(name: "serport_ldisc_hangup", scope: !3, file: !3, line: 246, type: !3244, scopeLine: 247, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5509)
!5509 = !{!5510, !5511, !5512, !5513, !5517}
!5510 = !DILocalVariable(name: "tty", arg: 1, scope: !5508, file: !3, line: 246, type: !2519)
!5511 = !DILocalVariable(name: "serport", scope: !5508, file: !3, line: 248, type: !5108)
!5512 = !DILocalVariable(name: "flags", scope: !5508, file: !3, line: 249, type: !319)
!5513 = !DILocalVariable(name: "__dummy", scope: !5514, file: !3, line: 251, type: !319)
!5514 = distinct !DILexicalBlock(scope: !5515, file: !3, line: 251, column: 2)
!5515 = distinct !DILexicalBlock(scope: !5516, file: !3, line: 251, column: 2)
!5516 = distinct !DILexicalBlock(scope: !5508, file: !3, line: 251, column: 2)
!5517 = !DILocalVariable(name: "__dummy2", scope: !5514, file: !3, line: 251, type: !319)
!5518 = !DILocation(line: 246, column: 53, scope: !5508)
!5519 = !DILocation(line: 248, column: 2, scope: !5508)
!5520 = !DILocation(line: 248, column: 18, scope: !5508)
!5521 = !DILocation(line: 248, column: 28, scope: !5508)
!5522 = !DILocation(line: 248, column: 33, scope: !5508)
!5523 = !DILocation(line: 249, column: 2, scope: !5508)
!5524 = !DILocation(line: 249, column: 16, scope: !5508)
!5525 = !DILocation(line: 251, column: 2, scope: !5508)
!5526 = !DILocation(line: 251, column: 2, scope: !5516)
!5527 = !DILocation(line: 251, column: 2, scope: !5514)
!5528 = !DILocation(line: 251, column: 2, scope: !5515)
!5529 = !DILocation(line: 252, column: 25, scope: !5508)
!5530 = !DILocation(line: 252, column: 34, scope: !5508)
!5531 = !DILocation(line: 252, column: 2, scope: !5508)
!5532 = !DILocation(line: 253, column: 26, scope: !5508)
!5533 = !DILocation(line: 253, column: 35, scope: !5508)
!5534 = !DILocation(line: 253, column: 41, scope: !5508)
!5535 = !DILocation(line: 253, column: 2, scope: !5508)
!5536 = !DILocation(line: 255, column: 2, scope: !5508)
!5537 = !DILocation(line: 256, column: 1, scope: !5508)
!5538 = distinct !DISubprogram(name: "serport_ldisc_receive", scope: !3, file: !3, line: 117, type: !3369, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5539)
!5539 = !{!5540, !5541, !5542, !5543, !5544, !5545, !5546, !5547, !5548, !5552, !5553}
!5540 = !DILocalVariable(name: "tty", arg: 1, scope: !5538, file: !3, line: 117, type: !2519)
!5541 = !DILocalVariable(name: "cp", arg: 2, scope: !5538, file: !3, line: 117, type: !3163)
!5542 = !DILocalVariable(name: "fp", arg: 3, scope: !5538, file: !3, line: 118, type: !3163)
!5543 = !DILocalVariable(name: "count", arg: 4, scope: !5538, file: !3, line: 118, type: !316)
!5544 = !DILocalVariable(name: "serport", scope: !5538, file: !3, line: 120, type: !5108)
!5545 = !DILocalVariable(name: "flags", scope: !5538, file: !3, line: 121, type: !319)
!5546 = !DILocalVariable(name: "ch_flags", scope: !5538, file: !3, line: 122, type: !7)
!5547 = !DILocalVariable(name: "i", scope: !5538, file: !3, line: 123, type: !109)
!5548 = !DILocalVariable(name: "__dummy", scope: !5549, file: !3, line: 125, type: !319)
!5549 = distinct !DILexicalBlock(scope: !5550, file: !3, line: 125, column: 2)
!5550 = distinct !DILexicalBlock(scope: !5551, file: !3, line: 125, column: 2)
!5551 = distinct !DILexicalBlock(scope: !5538, file: !3, line: 125, column: 2)
!5552 = !DILocalVariable(name: "__dummy2", scope: !5549, file: !3, line: 125, type: !319)
!5553 = !DILabel(scope: !5538, name: "out", file: !3, line: 150)
!5554 = !DILocation(line: 117, column: 54, scope: !5538)
!5555 = !DILocation(line: 117, column: 69, scope: !5538)
!5556 = !DILocation(line: 118, column: 17, scope: !5538)
!5557 = !DILocation(line: 118, column: 28, scope: !5538)
!5558 = !DILocation(line: 120, column: 2, scope: !5538)
!5559 = !DILocation(line: 120, column: 18, scope: !5538)
!5560 = !DILocation(line: 120, column: 28, scope: !5538)
!5561 = !DILocation(line: 120, column: 33, scope: !5538)
!5562 = !DILocation(line: 121, column: 2, scope: !5538)
!5563 = !DILocation(line: 121, column: 16, scope: !5538)
!5564 = !DILocation(line: 122, column: 2, scope: !5538)
!5565 = !DILocation(line: 122, column: 15, scope: !5538)
!5566 = !DILocation(line: 123, column: 2, scope: !5538)
!5567 = !DILocation(line: 123, column: 6, scope: !5538)
!5568 = !DILocation(line: 125, column: 2, scope: !5538)
!5569 = !DILocation(line: 125, column: 2, scope: !5551)
!5570 = !DILocation(line: 125, column: 2, scope: !5549)
!5571 = !DILocation(line: 125, column: 2, scope: !5550)
!5572 = !DILocation(line: 127, column: 7, scope: !5573)
!5573 = distinct !DILexicalBlock(scope: !5538, file: !3, line: 127, column: 6)
!5574 = !DILocation(line: 127, column: 6, scope: !5538)
!5575 = !DILocation(line: 128, column: 3, scope: !5573)
!5576 = !DILocation(line: 130, column: 9, scope: !5577)
!5577 = distinct !DILexicalBlock(scope: !5538, file: !3, line: 130, column: 2)
!5578 = !DILocation(line: 130, column: 7, scope: !5577)
!5579 = !DILocation(line: 130, column: 14, scope: !5580)
!5580 = distinct !DILexicalBlock(scope: !5577, file: !3, line: 130, column: 2)
!5581 = !DILocation(line: 130, column: 18, scope: !5580)
!5582 = !DILocation(line: 130, column: 16, scope: !5580)
!5583 = !DILocation(line: 130, column: 2, scope: !5577)
!5584 = !DILocation(line: 131, column: 7, scope: !5585)
!5585 = distinct !DILexicalBlock(scope: !5586, file: !3, line: 131, column: 7)
!5586 = distinct !DILexicalBlock(scope: !5580, file: !3, line: 130, column: 30)
!5587 = !DILocation(line: 131, column: 7, scope: !5586)
!5588 = !DILocation(line: 132, column: 12, scope: !5589)
!5589 = distinct !DILexicalBlock(scope: !5585, file: !3, line: 131, column: 11)
!5590 = !DILocation(line: 132, column: 15, scope: !5589)
!5591 = !DILocation(line: 132, column: 4, scope: !5589)
!5592 = !DILocation(line: 134, column: 14, scope: !5593)
!5593 = distinct !DILexicalBlock(scope: !5589, file: !3, line: 132, column: 19)
!5594 = !DILocation(line: 135, column: 5, scope: !5593)
!5595 = !DILocation(line: 138, column: 14, scope: !5593)
!5596 = !DILocation(line: 139, column: 5, scope: !5593)
!5597 = !DILocation(line: 142, column: 14, scope: !5593)
!5598 = !DILocation(line: 143, column: 5, scope: !5593)
!5599 = !DILocation(line: 145, column: 3, scope: !5589)
!5600 = !DILocation(line: 147, column: 19, scope: !5586)
!5601 = !DILocation(line: 147, column: 28, scope: !5586)
!5602 = !DILocation(line: 147, column: 35, scope: !5586)
!5603 = !DILocation(line: 147, column: 38, scope: !5586)
!5604 = !DILocation(line: 147, column: 42, scope: !5586)
!5605 = !DILocation(line: 147, column: 3, scope: !5586)
!5606 = !DILocation(line: 148, column: 2, scope: !5586)
!5607 = !DILocation(line: 130, column: 26, scope: !5580)
!5608 = !DILocation(line: 130, column: 2, scope: !5580)
!5609 = distinct !{!5609, !5583, !5610, !5611, !5413}
!5610 = !DILocation(line: 148, column: 2, scope: !5577)
!5611 = !{!"llvm.loop.mustprogress"}
!5612 = !DILocation(line: 150, column: 1, scope: !5538)
!5613 = !DILocation(line: 151, column: 26, scope: !5538)
!5614 = !DILocation(line: 151, column: 35, scope: !5538)
!5615 = !DILocation(line: 151, column: 41, scope: !5538)
!5616 = !DILocation(line: 151, column: 2, scope: !5538)
!5617 = !DILocation(line: 152, column: 1, scope: !5538)
!5618 = distinct !DISubprogram(name: "serport_ldisc_write_wakeup", scope: !3, file: !3, line: 258, type: !3244, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5619)
!5619 = !{!5620, !5621, !5622, !5623, !5627}
!5620 = !DILocalVariable(name: "tty", arg: 1, scope: !5618, file: !3, line: 258, type: !2519)
!5621 = !DILocalVariable(name: "serport", scope: !5618, file: !3, line: 260, type: !5108)
!5622 = !DILocalVariable(name: "flags", scope: !5618, file: !3, line: 261, type: !319)
!5623 = !DILocalVariable(name: "__dummy", scope: !5624, file: !3, line: 263, type: !319)
!5624 = distinct !DILexicalBlock(scope: !5625, file: !3, line: 263, column: 2)
!5625 = distinct !DILexicalBlock(scope: !5626, file: !3, line: 263, column: 2)
!5626 = distinct !DILexicalBlock(scope: !5618, file: !3, line: 263, column: 2)
!5627 = !DILocalVariable(name: "__dummy2", scope: !5624, file: !3, line: 263, type: !319)
!5628 = !DILocation(line: 258, column: 60, scope: !5618)
!5629 = !DILocation(line: 260, column: 2, scope: !5618)
!5630 = !DILocation(line: 260, column: 18, scope: !5618)
!5631 = !DILocation(line: 260, column: 28, scope: !5618)
!5632 = !DILocation(line: 260, column: 33, scope: !5618)
!5633 = !DILocation(line: 261, column: 2, scope: !5618)
!5634 = !DILocation(line: 261, column: 16, scope: !5618)
!5635 = !DILocation(line: 263, column: 2, scope: !5618)
!5636 = !DILocation(line: 263, column: 2, scope: !5626)
!5637 = !DILocation(line: 263, column: 2, scope: !5624)
!5638 = !DILocation(line: 263, column: 2, scope: !5625)
!5639 = !DILocation(line: 264, column: 6, scope: !5640)
!5640 = distinct !DILexicalBlock(scope: !5618, file: !3, line: 264, column: 6)
!5641 = !DILocation(line: 264, column: 6, scope: !5618)
!5642 = !DILocation(line: 265, column: 26, scope: !5640)
!5643 = !DILocation(line: 265, column: 35, scope: !5640)
!5644 = !DILocation(line: 265, column: 3, scope: !5640)
!5645 = !DILocation(line: 266, column: 26, scope: !5618)
!5646 = !DILocation(line: 266, column: 35, scope: !5618)
!5647 = !DILocation(line: 266, column: 41, scope: !5618)
!5648 = !DILocation(line: 266, column: 2, scope: !5618)
!5649 = !DILocation(line: 267, column: 1, scope: !5618)
!5650 = !DISubprogram(name: "capable", scope: !789, file: !789, line: 148, type: !5651, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5651 = !DISubroutineType(types: !5652)
!5652 = !{!881, !109}
!5653 = distinct !DISubprogram(name: "kzalloc", scope: !153, file: !153, line: 719, type: !5654, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5656)
!5654 = !DISubroutineType(types: !5655)
!5655 = !{!163, !316, !1094}
!5656 = !{!5657, !5658}
!5657 = !DILocalVariable(name: "size", arg: 1, scope: !5653, file: !153, line: 719, type: !316)
!5658 = !DILocalVariable(name: "flags", arg: 2, scope: !5653, file: !153, line: 719, type: !1094)
!5659 = !DILocation(line: 719, column: 52, scope: !5653)
!5660 = !DILocation(line: 719, column: 64, scope: !5653)
!5661 = !DILocation(line: 721, column: 17, scope: !5653)
!5662 = !DILocation(line: 721, column: 23, scope: !5653)
!5663 = !DILocation(line: 721, column: 29, scope: !5653)
!5664 = !DILocation(line: 721, column: 9, scope: !5653)
!5665 = !DILocation(line: 721, column: 2, scope: !5653)
!5666 = distinct !DISubprogram(name: "spinlock_check", scope: !5667, file: !5667, line: 324, type: !5668, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5671)
!5667 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!5668 = !DISubroutineType(types: !5669)
!5669 = !{!5670, !1556}
!5670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!5671 = !{!5672}
!5672 = !DILocalVariable(name: "lock", arg: 1, scope: !5666, file: !5667, line: 324, type: !1556)
!5673 = !DILocation(line: 324, column: 67, scope: !5666)
!5674 = !DILocation(line: 326, column: 10, scope: !5666)
!5675 = !DILocation(line: 326, column: 16, scope: !5666)
!5676 = !DILocation(line: 326, column: 2, scope: !5666)
!5677 = !DISubprogram(name: "__init_waitqueue_head", scope: !751, file: !751, line: 64, type: !5678, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5678 = !DISubroutineType(types: !5679)
!5679 = !{null, !5680, !188, !5681}
!5680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!5681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!5682 = distinct !DISubprogram(name: "set_bit", scope: !5683, file: !5683, line: 26, type: !5684, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5688)
!5683 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!5684 = !DISubroutineType(types: !5685)
!5685 = !{null, !305, !5686}
!5686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5687, size: 64)
!5687 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !319)
!5688 = !{!5689, !5690}
!5689 = !DILocalVariable(name: "nr", arg: 1, scope: !5682, file: !5683, line: 26, type: !305)
!5690 = !DILocalVariable(name: "addr", arg: 2, scope: !5682, file: !5683, line: 26, type: !5686)
!5691 = !DILocation(line: 26, column: 42, scope: !5682)
!5692 = !DILocation(line: 26, column: 70, scope: !5682)
!5693 = !DILocation(line: 28, column: 26, scope: !5682)
!5694 = !DILocation(line: 28, column: 33, scope: !5682)
!5695 = !DILocation(line: 28, column: 31, scope: !5682)
!5696 = !DILocation(line: 28, column: 2, scope: !5682)
!5697 = !DILocation(line: 29, column: 15, scope: !5682)
!5698 = !DILocation(line: 29, column: 19, scope: !5682)
!5699 = !DILocation(line: 29, column: 2, scope: !5682)
!5700 = !DILocation(line: 30, column: 1, scope: !5682)
!5701 = distinct !DISubprogram(name: "kmalloc", scope: !153, file: !153, line: 591, type: !5654, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5702)
!5702 = !{!5703, !5704, !5705}
!5703 = !DILocalVariable(name: "size", arg: 1, scope: !5701, file: !153, line: 591, type: !316)
!5704 = !DILocalVariable(name: "flags", arg: 2, scope: !5701, file: !153, line: 591, type: !1094)
!5705 = !DILocalVariable(name: "index", scope: !5706, file: !153, line: 594, type: !7)
!5706 = distinct !DILexicalBlock(scope: !5707, file: !153, line: 593, column: 42)
!5707 = distinct !DILexicalBlock(scope: !5701, file: !153, line: 593, column: 6)
!5708 = !DILocation(line: 591, column: 61, scope: !5701)
!5709 = !DILocation(line: 591, column: 73, scope: !5701)
!5710 = !DILocation(line: 593, column: 27, scope: !5707)
!5711 = !DILocation(line: 593, column: 6, scope: !5707)
!5712 = !DILocation(line: 593, column: 33, scope: !5707)
!5713 = !DILocation(line: 593, column: 36, scope: !5707)
!5714 = !DILocation(line: 593, column: 6, scope: !5701)
!5715 = !DILocation(line: 594, column: 3, scope: !5706)
!5716 = !DILocation(line: 594, column: 16, scope: !5706)
!5717 = !DILocation(line: 596, column: 7, scope: !5718)
!5718 = distinct !DILexicalBlock(scope: !5706, file: !153, line: 596, column: 7)
!5719 = !DILocation(line: 596, column: 12, scope: !5718)
!5720 = !DILocation(line: 596, column: 7, scope: !5706)
!5721 = !DILocation(line: 597, column: 25, scope: !5718)
!5722 = !DILocation(line: 597, column: 31, scope: !5718)
!5723 = !DILocation(line: 597, column: 11, scope: !5718)
!5724 = !DILocation(line: 597, column: 4, scope: !5718)
!5725 = !DILocation(line: 599, column: 11, scope: !5706)
!5726 = !DILocation(line: 599, column: 9, scope: !5706)
!5727 = !DILocation(line: 601, column: 33, scope: !5706)
!5728 = !DILocation(line: 601, column: 40, scope: !5706)
!5729 = !DILocation(line: 601, column: 20, scope: !5706)
!5730 = !DILocation(line: 601, column: 5, scope: !5706)
!5731 = !DILocation(line: 601, column: 51, scope: !5706)
!5732 = !DILocation(line: 602, column: 5, scope: !5706)
!5733 = !DILocation(line: 602, column: 12, scope: !5706)
!5734 = !DILocation(line: 600, column: 10, scope: !5706)
!5735 = !DILocation(line: 600, column: 3, scope: !5706)
!5736 = !DILocation(line: 603, column: 2, scope: !5707)
!5737 = !DILocation(line: 604, column: 19, scope: !5701)
!5738 = !DILocation(line: 604, column: 25, scope: !5701)
!5739 = !DILocation(line: 604, column: 9, scope: !5701)
!5740 = !DILocation(line: 604, column: 2, scope: !5701)
!5741 = !DILocation(line: 605, column: 1, scope: !5701)
!5742 = !DISubprogram(name: "kmalloc_large", scope: !153, file: !153, line: 531, type: !5654, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5743 = distinct !DISubprogram(name: "__kmalloc_index", scope: !153, file: !153, line: 444, type: !5744, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5746)
!5744 = !DISubroutineType(types: !5745)
!5745 = !{!7, !316, !881}
!5746 = !{!5747, !5748}
!5747 = !DILocalVariable(name: "size", arg: 1, scope: !5743, file: !153, line: 444, type: !316)
!5748 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5743, file: !153, line: 445, type: !881)
!5749 = !DILocation(line: 444, column: 60, scope: !5743)
!5750 = !DILocation(line: 445, column: 16, scope: !5743)
!5751 = !DILocation(line: 447, column: 7, scope: !5752)
!5752 = distinct !DILexicalBlock(scope: !5743, file: !153, line: 447, column: 6)
!5753 = !DILocation(line: 447, column: 6, scope: !5743)
!5754 = !DILocation(line: 448, column: 3, scope: !5752)
!5755 = !DILocation(line: 450, column: 6, scope: !5756)
!5756 = distinct !DILexicalBlock(scope: !5743, file: !153, line: 450, column: 6)
!5757 = !DILocation(line: 450, column: 11, scope: !5756)
!5758 = !DILocation(line: 450, column: 6, scope: !5743)
!5759 = !DILocation(line: 451, column: 3, scope: !5756)
!5760 = !DILocation(line: 453, column: 32, scope: !5761)
!5761 = distinct !DILexicalBlock(scope: !5743, file: !153, line: 453, column: 6)
!5762 = !DILocation(line: 453, column: 37, scope: !5761)
!5763 = !DILocation(line: 453, column: 42, scope: !5761)
!5764 = !DILocation(line: 453, column: 45, scope: !5761)
!5765 = !DILocation(line: 453, column: 50, scope: !5761)
!5766 = !DILocation(line: 453, column: 6, scope: !5743)
!5767 = !DILocation(line: 454, column: 3, scope: !5761)
!5768 = !DILocation(line: 455, column: 32, scope: !5769)
!5769 = distinct !DILexicalBlock(scope: !5743, file: !153, line: 455, column: 6)
!5770 = !DILocation(line: 455, column: 37, scope: !5769)
!5771 = !DILocation(line: 455, column: 43, scope: !5769)
!5772 = !DILocation(line: 455, column: 46, scope: !5769)
!5773 = !DILocation(line: 455, column: 51, scope: !5769)
!5774 = !DILocation(line: 455, column: 6, scope: !5743)
!5775 = !DILocation(line: 456, column: 3, scope: !5769)
!5776 = !DILocation(line: 457, column: 6, scope: !5777)
!5777 = distinct !DILexicalBlock(scope: !5743, file: !153, line: 457, column: 6)
!5778 = !DILocation(line: 457, column: 11, scope: !5777)
!5779 = !DILocation(line: 457, column: 6, scope: !5743)
!5780 = !DILocation(line: 457, column: 26, scope: !5777)
!5781 = !DILocation(line: 458, column: 6, scope: !5782)
!5782 = distinct !DILexicalBlock(scope: !5743, file: !153, line: 458, column: 6)
!5783 = !DILocation(line: 458, column: 11, scope: !5782)
!5784 = !DILocation(line: 458, column: 6, scope: !5743)
!5785 = !DILocation(line: 458, column: 26, scope: !5782)
!5786 = !DILocation(line: 459, column: 6, scope: !5787)
!5787 = distinct !DILexicalBlock(scope: !5743, file: !153, line: 459, column: 6)
!5788 = !DILocation(line: 459, column: 11, scope: !5787)
!5789 = !DILocation(line: 459, column: 6, scope: !5743)
!5790 = !DILocation(line: 459, column: 26, scope: !5787)
!5791 = !DILocation(line: 460, column: 6, scope: !5792)
!5792 = distinct !DILexicalBlock(scope: !5743, file: !153, line: 460, column: 6)
!5793 = !DILocation(line: 460, column: 11, scope: !5792)
!5794 = !DILocation(line: 460, column: 6, scope: !5743)
!5795 = !DILocation(line: 460, column: 26, scope: !5792)
!5796 = !DILocation(line: 461, column: 6, scope: !5797)
!5797 = distinct !DILexicalBlock(scope: !5743, file: !153, line: 461, column: 6)
!5798 = !DILocation(line: 461, column: 11, scope: !5797)
!5799 = !DILocation(line: 461, column: 6, scope: !5743)
!5800 = !DILocation(line: 461, column: 26, scope: !5797)
!5801 = !DILocation(line: 462, column: 6, scope: !5802)
!5802 = distinct !DILexicalBlock(scope: !5743, file: !153, line: 462, column: 6)
!5803 = !DILocation(line: 462, column: 11, scope: !5802)
!5804 = !DILocation(line: 462, column: 6, scope: !5743)
!5805 = !DILocation(line: 462, column: 26, scope: !5802)
!5806 = !DILocation(line: 463, column: 6, scope: !5807)
!5807 = distinct !DILexicalBlock(scope: !5743, file: !153, line: 463, column: 6)
!5808 = !DILocation(line: 463, column: 11, scope: !5807)
!5809 = !DILocation(line: 463, column: 6, scope: !5743)
!5810 = !DILocation(line: 463, column: 26, scope: !5807)
!5811 = !DILocation(line: 464, column: 6, scope: !5812)
!5812 = distinct !DILexicalBlock(scope: !5743, file: !153, line: 464, column: 6)
!5813 = !DILocation(line: 464, column: 11, scope: !5812)
!5814 = !DILocation(line: 464, column: 6, scope: !5743)
!5815 = !DILocation(line: 464, column: 26, scope: !5812)
!5816 = !DILocation(line: 465, column: 6, scope: !5817)
!5817 = distinct !DILexicalBlock(scope: !5743, file: !153, line: 465, column: 6)
!5818 = !DILocation(line: 465, column: 11, scope: !5817)
!5819 = !DILocation(line: 465, column: 6, scope: !5743)
!5820 = !DILocation(line: 465, column: 26, scope: !5817)
!5821 = !DILocation(line: 466, column: 6, scope: !5822)
!5822 = distinct !DILexicalBlock(scope: !5743, file: !153, line: 466, column: 6)
!5823 = !DILocation(line: 466, column: 11, scope: !5822)
!5824 = !DILocation(line: 466, column: 6, scope: !5743)
!5825 = !DILocation(line: 466, column: 26, scope: !5822)
!5826 = !DILocation(line: 467, column: 6, scope: !5827)
!5827 = distinct !DILexicalBlock(scope: !5743, file: !153, line: 467, column: 6)
!5828 = !DILocation(line: 467, column: 11, scope: !5827)
!5829 = !DILocation(line: 467, column: 6, scope: !5743)
!5830 = !DILocation(line: 467, column: 26, scope: !5827)
!5831 = !DILocation(line: 468, column: 6, scope: !5832)
!5832 = distinct !DILexicalBlock(scope: !5743, file: !153, line: 468, column: 6)
!5833 = !DILocation(line: 468, column: 11, scope: !5832)
!5834 = !DILocation(line: 468, column: 6, scope: !5743)
!5835 = !DILocation(line: 468, column: 26, scope: !5832)
!5836 = !DILocation(line: 469, column: 6, scope: !5837)
!5837 = distinct !DILexicalBlock(scope: !5743, file: !153, line: 469, column: 6)
!5838 = !DILocation(line: 469, column: 11, scope: !5837)
!5839 = !DILocation(line: 469, column: 6, scope: !5743)
!5840 = !DILocation(line: 469, column: 26, scope: !5837)
!5841 = !DILocation(line: 470, column: 6, scope: !5842)
!5842 = distinct !DILexicalBlock(scope: !5743, file: !153, line: 470, column: 6)
!5843 = !DILocation(line: 470, column: 11, scope: !5842)
!5844 = !DILocation(line: 470, column: 6, scope: !5743)
!5845 = !DILocation(line: 470, column: 26, scope: !5842)
!5846 = !DILocation(line: 471, column: 6, scope: !5847)
!5847 = distinct !DILexicalBlock(scope: !5743, file: !153, line: 471, column: 6)
!5848 = !DILocation(line: 471, column: 11, scope: !5847)
!5849 = !DILocation(line: 471, column: 6, scope: !5743)
!5850 = !DILocation(line: 471, column: 26, scope: !5847)
!5851 = !DILocation(line: 472, column: 6, scope: !5852)
!5852 = distinct !DILexicalBlock(scope: !5743, file: !153, line: 472, column: 6)
!5853 = !DILocation(line: 472, column: 11, scope: !5852)
!5854 = !DILocation(line: 472, column: 6, scope: !5743)
!5855 = !DILocation(line: 472, column: 26, scope: !5852)
!5856 = !DILocation(line: 473, column: 6, scope: !5857)
!5857 = distinct !DILexicalBlock(scope: !5743, file: !153, line: 473, column: 6)
!5858 = !DILocation(line: 473, column: 11, scope: !5857)
!5859 = !DILocation(line: 473, column: 6, scope: !5743)
!5860 = !DILocation(line: 473, column: 26, scope: !5857)
!5861 = !DILocation(line: 474, column: 6, scope: !5862)
!5862 = distinct !DILexicalBlock(scope: !5743, file: !153, line: 474, column: 6)
!5863 = !DILocation(line: 474, column: 11, scope: !5862)
!5864 = !DILocation(line: 474, column: 6, scope: !5743)
!5865 = !DILocation(line: 474, column: 27, scope: !5862)
!5866 = !DILocation(line: 475, column: 6, scope: !5867)
!5867 = distinct !DILexicalBlock(scope: !5743, file: !153, line: 475, column: 6)
!5868 = !DILocation(line: 475, column: 11, scope: !5867)
!5869 = !DILocation(line: 475, column: 6, scope: !5743)
!5870 = !DILocation(line: 475, column: 32, scope: !5867)
!5871 = !DILocation(line: 477, column: 50, scope: !5872)
!5872 = distinct !DILexicalBlock(scope: !5743, file: !153, line: 477, column: 6)
!5873 = !{i8 0, i8 2}
!5874 = !DILocation(line: 477, column: 6, scope: !5743)
!5875 = !DILocation(line: 478, column: 3, scope: !5872)
!5876 = !DILocation(line: 478, column: 3, scope: !5877)
!5877 = distinct !DILexicalBlock(scope: !5878, file: !153, line: 478, column: 3)
!5878 = distinct !DILexicalBlock(scope: !5872, file: !153, line: 478, column: 3)
!5879 = !{i32 -2142482894}
!5880 = !DILocation(line: 478, column: 3, scope: !5878)
!5881 = !DILocation(line: 480, column: 3, scope: !5872)
!5882 = !DILocation(line: 480, column: 3, scope: !5883)
!5883 = distinct !DILexicalBlock(scope: !5872, file: !153, line: 480, column: 3)
!5884 = !DILocation(line: 480, column: 3, scope: !5885)
!5885 = distinct !DILexicalBlock(scope: !5883, file: !153, line: 480, column: 3)
!5886 = !DILocation(line: 480, column: 3, scope: !5887)
!5887 = distinct !DILexicalBlock(scope: !5883, file: !153, line: 480, column: 3)
!5888 = !{i64 2152484605, i64 2152484634, i64 2152484680, i64 2152484738, i64 2152484792, i64 2152484846, i64 2152484901, i64 2152484932}
!5889 = !DILocation(line: 483, column: 2, scope: !5743)
!5890 = !DILocation(line: 484, column: 1, scope: !5743)
!5891 = !DISubprogram(name: "kmalloc_trace", scope: !153, file: !153, line: 525, type: !5892, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5892 = !DISubroutineType(types: !5893)
!5893 = !{!163, !5894, !1094, !316}
!5894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5895, size: 64)
!5895 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !5896, line: 11, flags: DIFlagFwdDecl)
!5896 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!5897 = distinct !DISubprogram(name: "kmalloc_type", scope: !153, file: !153, line: 401, type: !5898, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5900)
!5898 = !DISubroutineType(types: !5899)
!5899 = !{!152, !1094, !319}
!5900 = !{!5901, !5902}
!5901 = !DILocalVariable(name: "flags", arg: 1, scope: !5897, file: !153, line: 401, type: !1094)
!5902 = !DILocalVariable(name: "caller", arg: 2, scope: !5897, file: !153, line: 401, type: !319)
!5903 = !DILocation(line: 401, column: 67, scope: !5897)
!5904 = !DILocation(line: 401, column: 88, scope: !5897)
!5905 = !DILocation(line: 407, column: 6, scope: !5906)
!5906 = distinct !DILexicalBlock(scope: !5897, file: !153, line: 407, column: 6)
!5907 = !DILocation(line: 407, column: 6, scope: !5897)
!5908 = !DILocation(line: 413, column: 3, scope: !5906)
!5909 = !DILocation(line: 423, column: 38, scope: !5910)
!5910 = distinct !DILexicalBlock(scope: !5897, file: !153, line: 423, column: 6)
!5911 = !DILocation(line: 423, column: 44, scope: !5910)
!5912 = !DILocation(line: 423, column: 6, scope: !5897)
!5913 = !DILocation(line: 424, column: 3, scope: !5910)
!5914 = !DILocation(line: 426, column: 3, scope: !5915)
!5915 = distinct !DILexicalBlock(scope: !5897, file: !153, line: 425, column: 6)
!5916 = !DILocation(line: 429, column: 1, scope: !5897)
!5917 = !DISubprogram(name: "__kmalloc", scope: !153, file: !153, line: 488, type: !5654, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5918 = !DISubprogram(name: "__compiletime_assert_197", scope: !153, file: !153, line: 478, type: !3540, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5919 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !5920, file: !5920, line: 80, type: !5921, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5926)
!5920 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5921 = !DISubroutineType(types: !5922)
!5922 = !{null, !5923, !316}
!5923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5924, size: 64)
!5924 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5925)
!5925 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5926 = !{!5927, !5928}
!5927 = !DILocalVariable(name: "v", arg: 1, scope: !5919, file: !5920, line: 80, type: !5923)
!5928 = !DILocalVariable(name: "size", arg: 2, scope: !5919, file: !5920, line: 80, type: !316)
!5929 = !DILocation(line: 80, column: 74, scope: !5919)
!5930 = !DILocation(line: 80, column: 84, scope: !5919)
!5931 = !DILocation(line: 82, column: 20, scope: !5919)
!5932 = !DILocation(line: 82, column: 23, scope: !5919)
!5933 = !DILocation(line: 82, column: 2, scope: !5919)
!5934 = !DILocation(line: 83, column: 2, scope: !5919)
!5935 = !DILocation(line: 84, column: 1, scope: !5919)
!5936 = distinct !DISubprogram(name: "arch_set_bit", scope: !5937, file: !5937, line: 52, type: !5684, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5938)
!5937 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!5938 = !{!5939, !5940}
!5939 = !DILocalVariable(name: "nr", arg: 1, scope: !5936, file: !5937, line: 52, type: !305)
!5940 = !DILocalVariable(name: "addr", arg: 2, scope: !5936, file: !5937, line: 52, type: !5686)
!5941 = !DILocation(line: 52, column: 19, scope: !5936)
!5942 = !DILocation(line: 52, column: 47, scope: !5936)
!5943 = !DILocation(line: 54, column: 27, scope: !5944)
!5944 = distinct !DILexicalBlock(scope: !5936, file: !5937, line: 54, column: 6)
!5945 = !DILocation(line: 54, column: 6, scope: !5944)
!5946 = !DILocation(line: 54, column: 6, scope: !5936)
!5947 = !DILocation(line: 56, column: 6, scope: !5948)
!5948 = distinct !DILexicalBlock(scope: !5944, file: !5937, line: 54, column: 32)
!5949 = !DILocation(line: 57, column: 12, scope: !5948)
!5950 = !DILocation(line: 55, column: 3, scope: !5948)
!5951 = !{i64 2147925548, i64 2147925587, i64 2147925608, i64 2147925645, i64 2147925668, i64 2147925538}
!5952 = !DILocation(line: 59, column: 2, scope: !5948)
!5953 = !DILocation(line: 61, column: 8, scope: !5954)
!5954 = distinct !DILexicalBlock(scope: !5944, file: !5937, line: 59, column: 9)
!5955 = !DILocation(line: 61, column: 32, scope: !5954)
!5956 = !DILocation(line: 60, column: 3, scope: !5954)
!5957 = !{i64 2147925833, i64 2147925872, i64 2147925893, i64 2147925930, i64 2147925953, i64 2147925823}
!5958 = !DILocation(line: 63, column: 1, scope: !5936)
!5959 = distinct !DISubprogram(name: "kasan_check_write", scope: !5960, file: !5960, line: 44, type: !5961, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5963)
!5960 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5961 = !DISubroutineType(types: !5962)
!5962 = !{!881, !5923, !7}
!5963 = !{!5964, !5965}
!5964 = !DILocalVariable(name: "p", arg: 1, scope: !5959, file: !5960, line: 44, type: !5923)
!5965 = !DILocalVariable(name: "size", arg: 2, scope: !5959, file: !5960, line: 44, type: !7)
!5966 = !DILocation(line: 44, column: 59, scope: !5959)
!5967 = !DILocation(line: 44, column: 75, scope: !5959)
!5968 = !DILocation(line: 46, column: 2, scope: !5959)
!5969 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5970, file: !5970, line: 229, type: !5971, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5973)
!5970 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5971 = !DISubroutineType(types: !5972)
!5972 = !{null, !5923, !316, !109}
!5973 = !{!5974, !5975, !5976}
!5974 = !DILocalVariable(name: "ptr", arg: 1, scope: !5969, file: !5970, line: 229, type: !5923)
!5975 = !DILocalVariable(name: "size", arg: 2, scope: !5969, file: !5970, line: 229, type: !316)
!5976 = !DILocalVariable(name: "type", arg: 3, scope: !5969, file: !5970, line: 230, type: !109)
!5977 = !DILocation(line: 229, column: 60, scope: !5969)
!5978 = !DILocation(line: 229, column: 72, scope: !5969)
!5979 = !DILocation(line: 230, column: 15, scope: !5969)
!5980 = !DILocation(line: 230, column: 23, scope: !5969)
!5981 = !DISubprogram(name: "kfree", scope: !153, file: !153, line: 227, type: !5982, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5982 = !DISubroutineType(types: !5983)
!5983 = !{null, !1268}
!5984 = distinct !DISubprogram(name: "test_and_set_bit", scope: !5683, file: !5683, line: 68, type: !5985, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5987)
!5985 = !DISubroutineType(types: !5986)
!5986 = !{!881, !305, !5686}
!5987 = !{!5988, !5989}
!5988 = !DILocalVariable(name: "nr", arg: 1, scope: !5984, file: !5683, line: 68, type: !305)
!5989 = !DILocalVariable(name: "addr", arg: 2, scope: !5984, file: !5683, line: 68, type: !5686)
!5990 = !DILocation(line: 68, column: 51, scope: !5984)
!5991 = !DILocation(line: 68, column: 79, scope: !5984)
!5992 = !DILocation(line: 70, column: 2, scope: !5984)
!5993 = !DILocation(line: 70, column: 2, scope: !5994)
!5994 = distinct !DILexicalBlock(scope: !5984, file: !5683, line: 70, column: 2)
!5995 = !DILocation(line: 71, column: 31, scope: !5984)
!5996 = !DILocation(line: 71, column: 38, scope: !5984)
!5997 = !DILocation(line: 71, column: 36, scope: !5984)
!5998 = !DILocation(line: 71, column: 2, scope: !5984)
!5999 = !DILocation(line: 72, column: 31, scope: !5984)
!6000 = !DILocation(line: 72, column: 35, scope: !5984)
!6001 = !DILocation(line: 72, column: 9, scope: !5984)
!6002 = !DILocation(line: 72, column: 2, scope: !5984)
!6003 = !DISubprogram(name: "strscpy", scope: !6004, file: !6004, line: 72, type: !6005, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6004 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!6005 = !DISubroutineType(types: !6006)
!6006 = !{!301, !269, !188, !316}
!6007 = !DISubprogram(name: "snprintf", scope: !6008, file: !6008, line: 12, type: !6009, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6008 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!6009 = !DISubroutineType(types: !6010)
!6010 = !{!109, !269, !316, !188, null}
!6011 = !DISubprogram(name: "tty_name", scope: !2521, file: !2521, line: 353, type: !6012, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6012 = !DISubroutineType(types: !6013)
!6013 = !{!188, !6014}
!6014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6015, size: 64)
!6015 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2520)
!6016 = distinct !DISubprogram(name: "serport_serio_write", scope: !3, file: !3, line: 44, type: !5133, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6017)
!6017 = !{!6018, !6019, !6020}
!6018 = !DILocalVariable(name: "serio", arg: 1, scope: !6016, file: !3, line: 44, type: !5114)
!6019 = !DILocalVariable(name: "data", arg: 2, scope: !6016, file: !3, line: 44, type: !231)
!6020 = !DILocalVariable(name: "serport", scope: !6016, file: !3, line: 46, type: !5108)
!6021 = !DILocation(line: 44, column: 46, scope: !6016)
!6022 = !DILocation(line: 44, column: 67, scope: !6016)
!6023 = !DILocation(line: 46, column: 2, scope: !6016)
!6024 = !DILocation(line: 46, column: 18, scope: !6016)
!6025 = !DILocation(line: 46, column: 28, scope: !6016)
!6026 = !DILocation(line: 46, column: 35, scope: !6016)
!6027 = !DILocation(line: 47, column: 11, scope: !6016)
!6028 = !DILocation(line: 47, column: 20, scope: !6016)
!6029 = !DILocation(line: 47, column: 25, scope: !6016)
!6030 = !DILocation(line: 47, column: 30, scope: !6016)
!6031 = !DILocation(line: 47, column: 36, scope: !6016)
!6032 = !DILocation(line: 47, column: 45, scope: !6016)
!6033 = !DILocation(line: 47, column: 60, scope: !6016)
!6034 = !DILocation(line: 47, column: 9, scope: !6016)
!6035 = !DILocation(line: 48, column: 1, scope: !6016)
!6036 = !DILocation(line: 47, column: 2, scope: !6016)
!6037 = distinct !DISubprogram(name: "serport_serio_open", scope: !3, file: !3, line: 50, type: !5137, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6038)
!6038 = !{!6039, !6040, !6041, !6042, !6046}
!6039 = !DILocalVariable(name: "serio", arg: 1, scope: !6037, file: !3, line: 50, type: !5114)
!6040 = !DILocalVariable(name: "serport", scope: !6037, file: !3, line: 52, type: !5108)
!6041 = !DILocalVariable(name: "flags", scope: !6037, file: !3, line: 53, type: !319)
!6042 = !DILocalVariable(name: "__dummy", scope: !6043, file: !3, line: 55, type: !319)
!6043 = distinct !DILexicalBlock(scope: !6044, file: !3, line: 55, column: 2)
!6044 = distinct !DILexicalBlock(scope: !6045, file: !3, line: 55, column: 2)
!6045 = distinct !DILexicalBlock(scope: !6037, file: !3, line: 55, column: 2)
!6046 = !DILocalVariable(name: "__dummy2", scope: !6043, file: !3, line: 55, type: !319)
!6047 = !DILocation(line: 50, column: 45, scope: !6037)
!6048 = !DILocation(line: 52, column: 2, scope: !6037)
!6049 = !DILocation(line: 52, column: 18, scope: !6037)
!6050 = !DILocation(line: 52, column: 28, scope: !6037)
!6051 = !DILocation(line: 52, column: 35, scope: !6037)
!6052 = !DILocation(line: 53, column: 2, scope: !6037)
!6053 = !DILocation(line: 53, column: 16, scope: !6037)
!6054 = !DILocation(line: 55, column: 2, scope: !6037)
!6055 = !DILocation(line: 55, column: 2, scope: !6045)
!6056 = !DILocation(line: 55, column: 2, scope: !6043)
!6057 = !DILocation(line: 55, column: 2, scope: !6044)
!6058 = !DILocation(line: 56, column: 27, scope: !6037)
!6059 = !DILocation(line: 56, column: 36, scope: !6037)
!6060 = !DILocation(line: 56, column: 2, scope: !6037)
!6061 = !DILocation(line: 57, column: 26, scope: !6037)
!6062 = !DILocation(line: 57, column: 35, scope: !6037)
!6063 = !DILocation(line: 57, column: 41, scope: !6037)
!6064 = !DILocation(line: 57, column: 2, scope: !6037)
!6065 = !DILocation(line: 60, column: 1, scope: !6037)
!6066 = !DILocation(line: 59, column: 2, scope: !6037)
!6067 = distinct !DISubprogram(name: "serport_serio_close", scope: !3, file: !3, line: 63, type: !5141, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6068)
!6068 = !{!6069, !6070, !6071, !6072, !6076}
!6069 = !DILocalVariable(name: "serio", arg: 1, scope: !6067, file: !3, line: 63, type: !5114)
!6070 = !DILocalVariable(name: "serport", scope: !6067, file: !3, line: 65, type: !5108)
!6071 = !DILocalVariable(name: "flags", scope: !6067, file: !3, line: 66, type: !319)
!6072 = !DILocalVariable(name: "__dummy", scope: !6073, file: !3, line: 68, type: !319)
!6073 = distinct !DILexicalBlock(scope: !6074, file: !3, line: 68, column: 2)
!6074 = distinct !DILexicalBlock(scope: !6075, file: !3, line: 68, column: 2)
!6075 = distinct !DILexicalBlock(scope: !6067, file: !3, line: 68, column: 2)
!6076 = !DILocalVariable(name: "__dummy2", scope: !6073, file: !3, line: 68, type: !319)
!6077 = !DILocation(line: 63, column: 47, scope: !6067)
!6078 = !DILocation(line: 65, column: 2, scope: !6067)
!6079 = !DILocation(line: 65, column: 18, scope: !6067)
!6080 = !DILocation(line: 65, column: 28, scope: !6067)
!6081 = !DILocation(line: 65, column: 35, scope: !6067)
!6082 = !DILocation(line: 66, column: 2, scope: !6067)
!6083 = !DILocation(line: 66, column: 16, scope: !6067)
!6084 = !DILocation(line: 68, column: 2, scope: !6067)
!6085 = !DILocation(line: 68, column: 2, scope: !6075)
!6086 = !DILocation(line: 68, column: 2, scope: !6073)
!6087 = !DILocation(line: 68, column: 2, scope: !6074)
!6088 = !DILocation(line: 69, column: 29, scope: !6067)
!6089 = !DILocation(line: 69, column: 38, scope: !6067)
!6090 = !DILocation(line: 69, column: 2, scope: !6067)
!6091 = !DILocation(line: 70, column: 26, scope: !6067)
!6092 = !DILocation(line: 70, column: 35, scope: !6067)
!6093 = !DILocation(line: 70, column: 41, scope: !6067)
!6094 = !DILocation(line: 70, column: 2, scope: !6067)
!6095 = !DILocation(line: 71, column: 1, scope: !6067)
!6096 = !DISubprogram(name: "__serio_register_port", scope: !5116, file: !5116, line: 92, type: !6097, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6097 = !DISubroutineType(types: !6098)
!6098 = !{null, !5114, !164}
!6099 = !DISubprogram(name: "_printk", scope: !6100, file: !6100, line: 153, type: !6101, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6100 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!6101 = !DISubroutineType(types: !6102)
!6102 = !{!109, !188, null}
!6103 = !DILocation(line: 112, column: 2, scope: !6104)
!6104 = distinct !DILexicalBlock(scope: !5206, file: !5207, line: 112, column: 2)
!6105 = !DILocation(line: 112, column: 2, scope: !5206)
!6106 = !DILocation(line: 113, column: 1, scope: !5206)
!6107 = distinct !DISubprogram(name: "const_test_bit", scope: !6108, file: !6108, line: 166, type: !6109, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6113)
!6108 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!6109 = !DISubroutineType(types: !6110)
!6110 = !{!881, !319, !6111}
!6111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6112, size: 64)
!6112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5687)
!6113 = !{!6114, !6115, !6116, !6117, !6118}
!6114 = !DILocalVariable(name: "nr", arg: 1, scope: !6107, file: !6108, line: 166, type: !319)
!6115 = !DILocalVariable(name: "addr", arg: 2, scope: !6107, file: !6108, line: 166, type: !6111)
!6116 = !DILocalVariable(name: "p", scope: !6107, file: !6108, line: 168, type: !5070)
!6117 = !DILocalVariable(name: "mask", scope: !6107, file: !6108, line: 169, type: !319)
!6118 = !DILocalVariable(name: "val", scope: !6107, file: !6108, line: 170, type: !319)
!6119 = !DILocation(line: 166, column: 30, scope: !6107)
!6120 = !DILocation(line: 166, column: 64, scope: !6107)
!6121 = !DILocation(line: 168, column: 2, scope: !6107)
!6122 = !DILocation(line: 168, column: 23, scope: !6107)
!6123 = !DILocation(line: 168, column: 50, scope: !6107)
!6124 = !DILocation(line: 168, column: 57, scope: !6107)
!6125 = !DILocation(line: 168, column: 55, scope: !6107)
!6126 = !DILocation(line: 169, column: 2, scope: !6107)
!6127 = !DILocation(line: 169, column: 16, scope: !6107)
!6128 = !DILocation(line: 169, column: 23, scope: !6107)
!6129 = !DILocation(line: 170, column: 2, scope: !6107)
!6130 = !DILocation(line: 170, column: 16, scope: !6107)
!6131 = !DILocation(line: 170, column: 23, scope: !6107)
!6132 = !DILocation(line: 170, column: 22, scope: !6107)
!6133 = !DILocation(line: 172, column: 12, scope: !6107)
!6134 = !DILocation(line: 172, column: 18, scope: !6107)
!6135 = !DILocation(line: 172, column: 16, scope: !6107)
!6136 = !DILocation(line: 172, column: 10, scope: !6107)
!6137 = !DILocation(line: 172, column: 9, scope: !6107)
!6138 = !DILocation(line: 173, column: 1, scope: !6107)
!6139 = !DILocation(line: 172, column: 2, scope: !6107)
!6140 = distinct !DISubprogram(name: "_test_bit", scope: !6141, file: !6141, line: 139, type: !6109, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6142)
!6141 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!6142 = !{!6143, !6144}
!6143 = !DILocalVariable(name: "nr", arg: 1, scope: !6140, file: !6141, line: 139, type: !319)
!6144 = !DILocalVariable(name: "addr", arg: 2, scope: !6140, file: !6141, line: 139, type: !6111)
!6145 = !DILocation(line: 139, column: 25, scope: !6140)
!6146 = !DILocation(line: 139, column: 59, scope: !6140)
!6147 = !DILocation(line: 141, column: 25, scope: !6140)
!6148 = !DILocation(line: 141, column: 32, scope: !6140)
!6149 = !DILocation(line: 141, column: 30, scope: !6140)
!6150 = !DILocation(line: 141, column: 2, scope: !6140)
!6151 = !DILocation(line: 142, column: 23, scope: !6140)
!6152 = !DILocation(line: 142, column: 27, scope: !6140)
!6153 = !DILocation(line: 142, column: 9, scope: !6140)
!6154 = !DILocation(line: 142, column: 2, scope: !6140)
!6155 = !DISubprogram(name: "init_wait_entry", scope: !751, file: !751, line: 290, type: !6156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6156 = !DISubroutineType(types: !6157)
!6157 = !{null, !5323, !109}
!6158 = !DISubprogram(name: "prepare_to_wait_event", scope: !751, file: !751, line: 1199, type: !6159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6159 = !DISubroutineType(types: !6160)
!6160 = !{!305, !5680, !5323, !109}
!6161 = !DISubprogram(name: "schedule", scope: !1587, file: !1587, line: 303, type: !3540, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6162 = !DISubprogram(name: "finish_wait", scope: !751, file: !751, line: 1200, type: !6163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6163 = !DISubroutineType(types: !6164)
!6164 = !{null, !5680, !5323}
!6165 = !DISubprogram(name: "serio_unregister_port", scope: !5116, file: !5116, line: 98, type: !5141, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6166 = distinct !DISubprogram(name: "clear_bit", scope: !5683, file: !5683, line: 39, type: !5684, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6167)
!6167 = !{!6168, !6169}
!6168 = !DILocalVariable(name: "nr", arg: 1, scope: !6166, file: !5683, line: 39, type: !305)
!6169 = !DILocalVariable(name: "addr", arg: 2, scope: !6166, file: !5683, line: 39, type: !5686)
!6170 = !DILocation(line: 39, column: 44, scope: !6166)
!6171 = !DILocation(line: 39, column: 72, scope: !6166)
!6172 = !DILocation(line: 41, column: 26, scope: !6166)
!6173 = !DILocation(line: 41, column: 33, scope: !6166)
!6174 = !DILocation(line: 41, column: 31, scope: !6166)
!6175 = !DILocation(line: 41, column: 2, scope: !6166)
!6176 = !DILocation(line: 42, column: 17, scope: !6166)
!6177 = !DILocation(line: 42, column: 21, scope: !6166)
!6178 = !DILocation(line: 42, column: 2, scope: !6166)
!6179 = !DILocation(line: 43, column: 1, scope: !6166)
!6180 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !5920, file: !5920, line: 94, type: !5921, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6181)
!6181 = !{!6182, !6183}
!6182 = !DILocalVariable(name: "v", arg: 1, scope: !6180, file: !5920, line: 94, type: !5923)
!6183 = !DILocalVariable(name: "size", arg: 2, scope: !6180, file: !5920, line: 94, type: !316)
!6184 = !DILocation(line: 94, column: 79, scope: !6180)
!6185 = !DILocation(line: 94, column: 89, scope: !6180)
!6186 = !DILocation(line: 96, column: 20, scope: !6180)
!6187 = !DILocation(line: 96, column: 23, scope: !6180)
!6188 = !DILocation(line: 96, column: 2, scope: !6180)
!6189 = !DILocation(line: 97, column: 2, scope: !6180)
!6190 = !DILocation(line: 98, column: 1, scope: !6180)
!6191 = distinct !DISubprogram(name: "arch_test_and_set_bit", scope: !5937, file: !5937, line: 136, type: !5985, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6192)
!6192 = !{!6193, !6194, !6195}
!6193 = !DILocalVariable(name: "nr", arg: 1, scope: !6191, file: !5937, line: 136, type: !305)
!6194 = !DILocalVariable(name: "addr", arg: 2, scope: !6191, file: !5937, line: 136, type: !5686)
!6195 = !DILocalVariable(name: "c", scope: !6196, file: !5937, line: 138, type: !881)
!6196 = distinct !DILexicalBlock(scope: !6191, file: !5937, line: 138, column: 9)
!6197 = !DILocation(line: 136, column: 28, scope: !6191)
!6198 = !DILocation(line: 136, column: 56, scope: !6191)
!6199 = !DILocation(line: 138, column: 9, scope: !6196)
!6200 = !{i64 2147931999, i64 2147932038, i64 2147932059, i64 2147932096, i64 2147932119, i64 2147932128, i64 2147932231}
!6201 = !DILocation(line: 138, column: 9, scope: !6191)
!6202 = !DILocation(line: 138, column: 2, scope: !6191)
!6203 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !6204, file: !6204, line: 32, type: !6205, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6204 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!6205 = !DISubroutineType(types: !6206)
!6206 = !{!319, !5670}
!6207 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !5667, file: !5667, line: 404, type: !6208, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6210)
!6208 = !DISubroutineType(types: !6209)
!6209 = !{null, !1556, !319}
!6210 = !{!6211, !6212, !6213, !6216}
!6211 = !DILocalVariable(name: "lock", arg: 1, scope: !6207, file: !5667, line: 404, type: !1556)
!6212 = !DILocalVariable(name: "flags", arg: 2, scope: !6207, file: !5667, line: 404, type: !319)
!6213 = !DILocalVariable(name: "__dummy", scope: !6214, file: !5667, line: 406, type: !319)
!6214 = distinct !DILexicalBlock(scope: !6215, file: !5667, line: 406, column: 2)
!6215 = distinct !DILexicalBlock(scope: !6207, file: !5667, line: 406, column: 2)
!6216 = !DILocalVariable(name: "__dummy2", scope: !6214, file: !5667, line: 406, type: !319)
!6217 = !DILocation(line: 404, column: 64, scope: !6207)
!6218 = !DILocation(line: 404, column: 84, scope: !6207)
!6219 = !DILocation(line: 406, column: 2, scope: !6207)
!6220 = !DILocation(line: 406, column: 2, scope: !6214)
!6221 = !DILocation(line: 406, column: 2, scope: !6215)
!6222 = !DILocation(line: 407, column: 1, scope: !6207)
!6223 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !6204, file: !6204, line: 43, type: !6224, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6224 = !DISubroutineType(types: !6225)
!6225 = !{null, !5670, !319}
!6226 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5920, file: !5920, line: 66, type: !5921, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6227)
!6227 = !{!6228, !6229}
!6228 = !DILocalVariable(name: "v", arg: 1, scope: !6226, file: !5920, line: 66, type: !5923)
!6229 = !DILocalVariable(name: "size", arg: 2, scope: !6226, file: !5920, line: 66, type: !316)
!6230 = !DILocation(line: 66, column: 73, scope: !6226)
!6231 = !DILocation(line: 66, column: 83, scope: !6226)
!6232 = !DILocation(line: 68, column: 19, scope: !6226)
!6233 = !DILocation(line: 68, column: 22, scope: !6226)
!6234 = !DILocation(line: 68, column: 2, scope: !6226)
!6235 = !DILocation(line: 69, column: 2, scope: !6226)
!6236 = !DILocation(line: 70, column: 1, scope: !6226)
!6237 = distinct !DISubprogram(name: "arch_test_bit", scope: !5937, file: !5937, line: 237, type: !6109, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6238)
!6238 = !{!6239, !6240}
!6239 = !DILocalVariable(name: "nr", arg: 1, scope: !6237, file: !5937, line: 237, type: !319)
!6240 = !DILocalVariable(name: "addr", arg: 2, scope: !6237, file: !5937, line: 237, type: !6111)
!6241 = !DILocation(line: 237, column: 29, scope: !6237)
!6242 = !DILocation(line: 237, column: 63, scope: !6237)
!6243 = !DILocation(line: 239, column: 30, scope: !6237)
!6244 = !DILocation(line: 239, column: 9, scope: !6237)
!6245 = !DILocation(line: 239, column: 54, scope: !6237)
!6246 = !DILocation(line: 239, column: 58, scope: !6237)
!6247 = !DILocation(line: 239, column: 36, scope: !6237)
!6248 = !DILocation(line: 240, column: 26, scope: !6237)
!6249 = !DILocation(line: 240, column: 30, scope: !6237)
!6250 = !DILocation(line: 240, column: 8, scope: !6237)
!6251 = !DILocation(line: 239, column: 2, scope: !6237)
!6252 = distinct !DISubprogram(name: "kasan_check_read", scope: !5960, file: !5960, line: 40, type: !5961, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6253)
!6253 = !{!6254, !6255}
!6254 = !DILocalVariable(name: "p", arg: 1, scope: !6252, file: !5960, line: 40, type: !5923)
!6255 = !DILocalVariable(name: "size", arg: 2, scope: !6252, file: !5960, line: 40, type: !7)
!6256 = !DILocation(line: 40, column: 58, scope: !6252)
!6257 = !DILocation(line: 40, column: 74, scope: !6252)
!6258 = !DILocation(line: 42, column: 2, scope: !6252)
!6259 = distinct !DISubprogram(name: "constant_test_bit", scope: !5937, file: !5937, line: 204, type: !6260, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6262)
!6260 = !DISubroutineType(types: !6261)
!6261 = !{!881, !305, !6111}
!6262 = !{!6263, !6264}
!6263 = !DILocalVariable(name: "nr", arg: 1, scope: !6259, file: !5937, line: 204, type: !305)
!6264 = !DILocalVariable(name: "addr", arg: 2, scope: !6259, file: !5937, line: 204, type: !6111)
!6265 = !DILocation(line: 204, column: 52, scope: !6259)
!6266 = !DILocation(line: 204, column: 86, scope: !6259)
!6267 = !DILocation(line: 206, column: 19, scope: !6259)
!6268 = !DILocation(line: 206, column: 22, scope: !6259)
!6269 = !DILocation(line: 206, column: 15, scope: !6259)
!6270 = !DILocation(line: 207, column: 4, scope: !6259)
!6271 = !DILocation(line: 207, column: 9, scope: !6259)
!6272 = !DILocation(line: 207, column: 12, scope: !6259)
!6273 = !DILocation(line: 206, column: 44, scope: !6259)
!6274 = !DILocation(line: 207, column: 37, scope: !6259)
!6275 = !DILocation(line: 206, column: 2, scope: !6259)
!6276 = distinct !DISubprogram(name: "variable_test_bit", scope: !5937, file: !5937, line: 224, type: !6260, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6277)
!6277 = !{!6278, !6279, !6280}
!6278 = !DILocalVariable(name: "nr", arg: 1, scope: !6276, file: !5937, line: 224, type: !305)
!6279 = !DILocalVariable(name: "addr", arg: 2, scope: !6276, file: !5937, line: 224, type: !6111)
!6280 = !DILocalVariable(name: "oldbit", scope: !6276, file: !5937, line: 226, type: !881)
!6281 = !DILocation(line: 224, column: 52, scope: !6276)
!6282 = !DILocation(line: 224, column: 86, scope: !6276)
!6283 = !DILocation(line: 226, column: 2, scope: !6276)
!6284 = !DILocation(line: 226, column: 7, scope: !6276)
!6285 = !DILocation(line: 231, column: 33, scope: !6276)
!6286 = !DILocation(line: 231, column: 46, scope: !6276)
!6287 = !DILocation(line: 228, column: 2, scope: !6276)
!6288 = !{i64 2147939160, i64 2147939234}
!6289 = !DILocation(line: 233, column: 9, scope: !6276)
!6290 = !DILocation(line: 234, column: 1, scope: !6276)
!6291 = !DILocation(line: 233, column: 2, scope: !6276)
!6292 = distinct !DISubprogram(name: "arch_clear_bit", scope: !5937, file: !5937, line: 72, type: !5684, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6293)
!6293 = !{!6294, !6295}
!6294 = !DILocalVariable(name: "nr", arg: 1, scope: !6292, file: !5937, line: 72, type: !305)
!6295 = !DILocalVariable(name: "addr", arg: 2, scope: !6292, file: !5937, line: 72, type: !5686)
!6296 = !DILocation(line: 72, column: 21, scope: !6292)
!6297 = !DILocation(line: 72, column: 49, scope: !6292)
!6298 = !DILocation(line: 74, column: 27, scope: !6299)
!6299 = distinct !DILexicalBlock(scope: !6292, file: !5937, line: 74, column: 6)
!6300 = !DILocation(line: 74, column: 6, scope: !6299)
!6301 = !DILocation(line: 74, column: 6, scope: !6292)
!6302 = !DILocation(line: 76, column: 6, scope: !6303)
!6303 = distinct !DILexicalBlock(scope: !6299, file: !5937, line: 74, column: 32)
!6304 = !DILocation(line: 77, column: 13, scope: !6303)
!6305 = !DILocation(line: 77, column: 12, scope: !6303)
!6306 = !DILocation(line: 75, column: 3, scope: !6303)
!6307 = !{i64 2147926836, i64 2147926875, i64 2147926896, i64 2147926933, i64 2147926956, i64 2147926826}
!6308 = !DILocation(line: 78, column: 2, scope: !6303)
!6309 = !DILocation(line: 80, column: 8, scope: !6310)
!6310 = distinct !DILexicalBlock(scope: !6299, file: !5937, line: 78, column: 9)
!6311 = !DILocation(line: 80, column: 32, scope: !6310)
!6312 = !DILocation(line: 79, column: 3, scope: !6310)
!6313 = !{i64 2147927121, i64 2147927160, i64 2147927181, i64 2147927218, i64 2147927241, i64 2147927111}
!6314 = !DILocation(line: 82, column: 1, scope: !6292)
!6315 = distinct !DISubprogram(name: "might_fault", scope: !5207, file: !5207, line: 202, type: !3540, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6316 = !DILocation(line: 202, column: 40, scope: !6315)
!6317 = distinct !DISubprogram(name: "kmsan_unpoison_memory", scope: !6318, file: !6318, line: 70, type: !6319, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6321)
!6318 = !DIFile(filename: "./include/linux/kmsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cfeb6fcb47441b7815b086def457771")
!6319 = !DISubroutineType(types: !6320)
!6320 = !{null, !1268, !316}
!6321 = !{!6322, !6323}
!6322 = !DILocalVariable(name: "address", arg: 1, scope: !6317, file: !6318, line: 70, type: !1268)
!6323 = !DILocalVariable(name: "size", arg: 2, scope: !6317, file: !6318, line: 70, type: !316)
!6324 = !DILocation(line: 70, column: 54, scope: !6317)
!6325 = !DILocation(line: 70, column: 70, scope: !6317)
!6326 = !DILocation(line: 72, column: 1, scope: !6317)
!6327 = distinct !DISubprogram(name: "serport_set_type", scope: !3, file: !3, line: 197, type: !6328, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6330)
!6328 = !DISubroutineType(types: !6329)
!6329 = !{null, !2519, !319}
!6330 = !{!6331, !6332, !6333}
!6331 = !DILocalVariable(name: "tty", arg: 1, scope: !6327, file: !3, line: 197, type: !2519)
!6332 = !DILocalVariable(name: "type", arg: 2, scope: !6327, file: !3, line: 197, type: !319)
!6333 = !DILocalVariable(name: "serport", scope: !6327, file: !3, line: 199, type: !5108)
!6334 = !DILocation(line: 197, column: 49, scope: !6327)
!6335 = !DILocation(line: 197, column: 68, scope: !6327)
!6336 = !DILocation(line: 199, column: 2, scope: !6327)
!6337 = !DILocation(line: 199, column: 18, scope: !6327)
!6338 = !DILocation(line: 199, column: 28, scope: !6327)
!6339 = !DILocation(line: 199, column: 33, scope: !6327)
!6340 = !DILocation(line: 201, column: 22, scope: !6327)
!6341 = !DILocation(line: 201, column: 27, scope: !6327)
!6342 = !DILocation(line: 201, column: 2, scope: !6327)
!6343 = !DILocation(line: 201, column: 11, scope: !6327)
!6344 = !DILocation(line: 201, column: 14, scope: !6327)
!6345 = !DILocation(line: 201, column: 20, scope: !6327)
!6346 = !DILocation(line: 202, column: 23, scope: !6327)
!6347 = !DILocation(line: 202, column: 28, scope: !6327)
!6348 = !DILocation(line: 202, column: 42, scope: !6327)
!6349 = !DILocation(line: 202, column: 22, scope: !6327)
!6350 = !DILocation(line: 202, column: 2, scope: !6327)
!6351 = !DILocation(line: 202, column: 11, scope: !6327)
!6352 = !DILocation(line: 202, column: 14, scope: !6327)
!6353 = !DILocation(line: 202, column: 20, scope: !6327)
!6354 = !DILocation(line: 203, column: 23, scope: !6327)
!6355 = !DILocation(line: 203, column: 28, scope: !6327)
!6356 = !DILocation(line: 203, column: 42, scope: !6327)
!6357 = !DILocation(line: 203, column: 22, scope: !6327)
!6358 = !DILocation(line: 203, column: 2, scope: !6327)
!6359 = !DILocation(line: 203, column: 11, scope: !6327)
!6360 = !DILocation(line: 203, column: 14, scope: !6327)
!6361 = !DILocation(line: 203, column: 20, scope: !6327)
!6362 = !DILocation(line: 204, column: 1, scope: !6327)
!6363 = distinct !DISubprogram(name: "compat_ptr", scope: !3718, file: !3718, line: 977, type: !6364, scopeLine: 978, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6366)
!6364 = !DISubroutineType(types: !6365)
!6365 = !{!163, !3724}
!6366 = !{!6367}
!6367 = !DILocalVariable(name: "uptr", arg: 1, scope: !6363, file: !3718, line: 977, type: !3724)
!6368 = !DILocation(line: 977, column: 53, scope: !6363)
!6369 = !DILocation(line: 979, column: 39, scope: !6363)
!6370 = !DILocation(line: 979, column: 24, scope: !6363)
!6371 = !DILocation(line: 979, column: 9, scope: !6363)
!6372 = !DILocation(line: 979, column: 2, scope: !6363)
!6373 = !DISubprogram(name: "__wake_up", scope: !751, file: !751, line: 212, type: !6374, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6374 = !DISubroutineType(types: !6375)
!6375 = !{!109, !5680, !7, !109, !163}
!6376 = !DISubprogram(name: "serio_interrupt", scope: !5116, file: !5116, line: 90, type: !5161, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6377 = distinct !DISubprogram(name: "serio_drv_write_wakeup", scope: !5116, file: !5116, line: 131, type: !5141, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6378)
!6378 = !{!6379}
!6379 = !DILocalVariable(name: "serio", arg: 1, scope: !6377, file: !5116, line: 131, type: !5114)
!6380 = !DILocation(line: 131, column: 57, scope: !6377)
!6381 = !DILocation(line: 133, column: 6, scope: !6382)
!6382 = distinct !DILexicalBlock(scope: !6377, file: !5116, line: 133, column: 6)
!6383 = !DILocation(line: 133, column: 13, scope: !6382)
!6384 = !DILocation(line: 133, column: 17, scope: !6382)
!6385 = !DILocation(line: 133, column: 20, scope: !6382)
!6386 = !DILocation(line: 133, column: 27, scope: !6382)
!6387 = !DILocation(line: 133, column: 32, scope: !6382)
!6388 = !DILocation(line: 133, column: 6, scope: !6377)
!6389 = !DILocation(line: 134, column: 3, scope: !6382)
!6390 = !DILocation(line: 134, column: 10, scope: !6382)
!6391 = !DILocation(line: 134, column: 15, scope: !6382)
!6392 = !DILocation(line: 134, column: 28, scope: !6382)
!6393 = !DILocation(line: 135, column: 1, scope: !6377)
!6394 = !DISubprogram(name: "tty_register_ldisc", scope: !3339, file: !3339, line: 285, type: !6395, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6395 = !DISubroutineType(types: !6396)
!6396 = !{!109, !3342}
